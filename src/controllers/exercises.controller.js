import escapeStringRegexp from "escape-string-regexp";
import Exercise from "../models/exercise.schema.js";

export const uploadBulkExercises = async (req, res) => {
  try {
    if (!Array.isArray(req.body)) {
      return res.status(400).json({
        success: false,
        error: "Format invalid. Must be an exercise array",
      });
    }

    const incomingTitles = req.body.map((ex) => ex.Title.trim());

    const existingExercises = await Exercise.find({
      Title: { $in: incomingTitles },
    });

    if (existingExercises.length > 0) {
      const duplicateTitles = existingExercises.map((ex) => ex.Title);
      const uniqueDuplicates = [...new Set(duplicateTitles)];

      return res.status(409).json({
        success: false,
        error: "Duplicated titles",
        duplicates: uniqueDuplicates,
        message: "Rename exercises before upload",
      });
    }

    const result = await Exercise.insertMany(req.body);

    res.status(201).json({
      success: true,
      insertedCount: result.length,
      message: `${result.length} exercises inserted`,
    });

  } catch (err) {
    if (err.code === 11000) {
      const duplicatedTitle = err.keyValue?.Title || "Unknown";
      return res.status(409).json({
        success: false,
        error: "Exercise title conflict",
        message: `The exercise '${duplicatedTitle}' is already registered`,
      });
    }

    if (err.name === "ValidationError") {
      const errors = Object.values(err.errors).map((e) => e.message);
      return res.status(400).json({
        success: false,
        error: "Error de validación",
        details: errors,
      });
    }

    console.error("Error en uploadBulkExercises:", err);
    res.status(500).json({
      success: false,
      error: "Error interno del servidor",
    });
  }
};

export const getAllExercises = async (req, res) => {
  try{
    const result = await Exercise.find();
    res.send(result)
  } catch (e) {
    res.send(e);
  }
}


export const getExerciseByName = async (req, res) => {
  try {
    // 1. Validar parámetro de búsqueda
    const searchTerm = req.params.name?.trim();
    if (!searchTerm || searchTerm.length < 2) {
      return res.status(400).json({
        success: false,
        error: 'El término de búsqueda debe tener al menos 2 caracteres'
      });
    }

    // 2. Sanitizar y crear expresión regular
    const sanitizedTerm = escapeStringRegexp(searchTerm);
    const nameRegex = new RegExp(`^${sanitizedTerm}`, 'i');

    // 3. Configurar paginación
    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 10;
    const skip = (page - 1) * limit;

    // 4. Buscar en la base de datos con paginación
    const [exercises, total] = await Promise.all([
      Exercise.find({ Title: nameRegex })
        .sort({ Title: 1 })
        .skip(skip)
        .limit(limit)
        .lean(),
      Exercise.countDocuments({ Title: nameRegex })
    ]);

    // 5. Calcular metadatos de paginación
    const totalPages = Math.ceil(total / limit);
    const hasMore = page < totalPages;

    // 6. Formatear respuesta
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

    // 7. Manejar caso sin resultados
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