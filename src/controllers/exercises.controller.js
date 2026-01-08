import fs from 'fs';
import escapeStringRegexp from "escape-string-regexp";
import Exercise from "../models/exercise.schema.js";

export const getAllExercisesWithImages = async (req, res) => {
  try {
    const page = Math.max(1, parseInt(req.query.page) || 1);
    const limit = Math.min(100, Math.max(1, parseInt(req.query.limit) || 20));
    const skip = (page - 1) * limit;

    const aggregationPipeline = [
      { $match: { Title: { $exists: true, $ne: "" } } },
      {
        $lookup: {
          from: 'images',
          let: { 
            normalizedTitle: { 
              $trim: { input: { $toLower: "$Title" } } 
            } 
          },
          pipeline: [
            { 
              $match: { 
                $expr: { 
                  $eq: [
                    { $trim: { input: { $toLower: "$Title" } } },
                    "$$normalizedTitle"
                  ]
                }
              } 
            }
          ],
          as: 'images'
        }
      },
      {
        $project: {
          _id: 1,
          Title: 1,
          Type: 1,
          BodyPart: 1,
          Equipment: 1,
          Level: 1,
          Rating: 1,
          hasImages: { $gt: [{ $size: "$images" }, 0] },
          images: {
            $map: {
              input: "$images",
              as: "img",
              in: {
                Title: "$$img.Title",
                Src: "$$img.Src",
                _id: "$$img._id"
              }
            }
          }
        }
      },
      { 
        $sort: { 
          hasImages: -1, 
          Title: 1 
        } 
      },
      { $skip: skip },
      { $limit: limit }
    ];

    const [exercises, total] = await Promise.all([
      Exercise.aggregate(aggregationPipeline),
      Exercise.countDocuments({ Title: { $exists: true, $ne: "" } })
    ]);

    const totalPages = Math.ceil(total / limit);
    const hasMore = page < totalPages;

    res.json({
      success: true,
      count: exercises.length,
      totalExercises: total,
      pagination: {
        currentPage: page,
        resultsPerPage: limit,
        totalPages,
        hasMore
      },
      data: exercises.map(exercise => ({
        ...exercise,
        Title: exercise.Title?.trim() || ""
      }))
    });

  } catch (error) {
    console.error('Error:', error);
    res.status(500).json({
      success: false,
      error: 'Error al obtener ejercicios',
      ...(process.env.NODE_ENV === 'development' && {
        details: {
          message: error.message,
          stack: error.stack,
          query: req.query
        }
      })
    });
  }
};
export const getExerciseByName = async (req, res) => {
  try {
    const searchTerm = req.params.name?.trim();
    if (!searchTerm || searchTerm.length < 2) {
      return res.status(400).json({
        success: false,
        error: 'El término de búsqueda debe tener al menos 2 caracteres',
      });
    }

    const sanitizedTerm = escapeStringRegexp(searchTerm);
    const nameRegex = new RegExp(`^${sanitizedTerm}`, 'i');

    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 10;
    const skip = (page - 1) * limit;

    const [exercises, total] = await Promise.all([
      Exercise.find({ Title: nameRegex })
        .sort({ Title: 1 })
        .skip(skip)
        .limit(limit)
        .lean(),
      Exercise.countDocuments({ Title: nameRegex })
    ]);

    const totalPages = Math.ceil(total / limit);
    const hasMore = page < totalPages;

    const response = {
      success: true,
      pagination: {
        totalResults: total,
        currentPage: page,
        resultsPerPage: limit,
        totalPages,
        hasMore
      },
      count: exercises.length,
      data: exercises
    };

    if (exercises.length === 0) {
      return res.status(404).json({
        ...response,
        success: false,
        message: 'No se encontraron ejercicios con ese nombre'
      });
    }

    res.json(response);
  } catch (err) {
    console.error('Error en getExerciseByName:', err);
    res.status(500).json({
      success: false,
      error: 'Error interno del servidor',
      details: process.env.NODE_ENV === 'development' ? err.message : undefined
    });
  }
};
export const getAllBodyparts =  async ( req, res) => {
const response = await Exercise.distinct("BodyPart")
const formattedBodyparts = response.map((bp) => ({ name: bp }));
res.json(formattedBodyparts);
};
export const getAllExercisesByBodypart = async (req, res) => {
  const searchTerm = req.params.name?.trim();
    if (!searchTerm || searchTerm.length < 2) {
      return res.status(400).json({
        success: false,
        error: 'El término de búsqueda debe tener al menos 2 caracteres'
      });
    }

    const sanitizedTerm = escapeStringRegexp(searchTerm);
    const nameRegex = new RegExp(`^${sanitizedTerm}`, 'i');

    const exercises = await Exercise.find({ BodyPart: nameRegex }).sort({ Title: 1 })

    const response = {
      success: true,
      count: exercises.length,
      data: exercises
    };

    res.json(response)
};
export const getExerciseByID = async (req, res) => {
  const _id = req.params._id?.trim();
    if (!_id || _id.length <= 0) {
      return res.status(400).json({
        success: false,
        error: 'ID invalid'
      });
    }
    const exercises = await Exercise.find({ _id: _id }).sort({ Title: 1 })

    const response = {
      success: true,
      count: exercises.length,
      data: exercises
    };
res.send(response)
};

export const uploadBulkExercises = async (req, res) => {
  try {
    // 1. Leer el archivo de ejercicios únicos
    const rawData = fs.readFileSync('unique_exercises.json');
    const uniqueExercises = JSON.parse(rawData);


    // 3. Insertar los documentos validando duplicados
    const results = [];
    let insertedCount = 0;
    let duplicateCount = 0;

    for (const exercise of uniqueExercises) {
      try {
        // Crear documento con validación de esquema
        const newExercise = new Exercise(exercise);
        
        // Guardar con manejo de error de duplicado
        const savedExercise = await newExercise.save();
        results.push({
          success: true,
          id: savedExercise._id,
          title: savedExercise.Title
        });
        insertedCount++;
      } catch (error) {
        if (error.code === 11000) { // Error de duplicado
          duplicateCount++;
          results.push({
            success: false,
            title: exercise.Title,
            error: `Título duplicado: ${exercise.Title}`
          });
        } else { // Error de validación
          results.push({
            success: false,
            title: exercise.Title,
            error: error.message
          });
        }
      }
    }

    // 4. Generar reporte
    const report = {
      totalReceived: uniqueExercises.length,
      insertedCount,
      duplicateCount,
      validationErrors: results.filter(r => !r.success && !r.error.includes('duplicado')).length,
      details: results
    };

    // 5. Opcional: Guardar reporte en archivo
    fs.writeFileSync('upload_report.json', JSON.stringify(report, null, 2));

    res.status(200).json({
      message: 'Carga completada',
      report
    });
  } catch (error) {
    console.error('Error general:', error);
    res.status(500).json({
      message: 'Error en el proceso de carga',
      error: error.message
    });
  }
};