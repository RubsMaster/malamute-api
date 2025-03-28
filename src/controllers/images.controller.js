import Image from "../models/image.schema.js";

export const getExercisesImagesByBodypart = async (req, res) => {
    const searchTerm = req.params.name?.trim();
    
    if (!searchTerm || searchTerm.length < 2) {
      return res.status(400).json({
        success: false,
        error: 'El término de búsqueda debe tener al menos 2 caracteres'
      });
    }
  
    try {
      const sanitizedTerm = escapeStringRegexp(searchTerm);
      const bodypartRegex = new RegExp(`^${sanitizedTerm}`, 'i');
  
      const exercises = await Exercise.find({ 
        BodyPart: bodypartRegex 
      }).select('Title -_id');
  
      if (exercises.length === 0) {
        return res.json({
          success: true,
          count: 0,
          data: []
        });
      }
  
      const exerciseTitles = [...new Set(exercises.map(e => e.Title))];
  
      const images = await Image.find({
        Title: { $in: exerciseTitles }
      }).select('Title Src -_id');
  
      const response = {
        success: true,
        count: images.length,
        data: images.map(img => ({
          exercise: img.Title,
          imageUrl: img.Src
        }))
      };
  
      res.json(response);
  
    } catch (error) {
      res.status(500).json({
        success: false,
        error: 'Error en la búsqueda: ' + error.message
      });
    }
  };