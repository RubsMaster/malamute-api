import mongoose from 'mongoose';

const exerciseSchema = new mongoose.Schema({
  Title: {
    type: String,
    required: [true, 'El título es obligatorio'],
    unique: true,
    trim: true,
    minlength: [2, 'El título debe tener al menos 2 caracteres'],
    maxlength: [100, 'El título no puede exceder 100 caracteres'],
    index: {
      unique: true,
      collation: {
        locale: 'en',
        strength: 2
      }
    }
  },
  Desc: {
    type: String,
    default: ''
  },
  Type: {
    type: String,
    required: true,
    enum: {
      values: ["Strength", "Cardio", "Plyometrics", "Stretching", "Powerlifting", "Strongman", "Olympic Weightlifting"],
      message: '{VALUE} no es un tipo de ejercicio válido'
    }
  },
  BodyPart: {
    type: String,
    required: true,
    enum: {
      values: ["Abdominals", "Abductors", "Adductors", "Biceps", "Calves", "Chest", "Forearms", "Glutes", "Hamstrings", "Lats", "Lower Back", "Middle Back", "Traps", "Neck", "Quadriceps", "Shoulders", "Triceps"],
      message: '{VALUE} no es una parte del cuerpo válida'
    }
  },
  Equipment: {
    type: String,
    required: true,
    enum: {
      values: ["Bands", "Barbell", "Kettlebells", "Dumbbell", "Other", "Cable", "Machine", "Body Only", "Medicine Ball", "None", "Exercise Ball", "Foam Roll", "E-Z Curl Bar"],
      message: '{VALUE} no es un equipo válido'
    }
  },
  Level: {
    type: String,
    required: true,
    enum: {
      values: ["Beginner", "Intermediate", "Expert"],
      message: '{VALUE} no es un nivel válido'
    }
  },
  Rating: {
    type: Number,
    min: [0, 'El rating mínimo es 0'],
    max: [10, 'El rating máximo es 10'],
    default: null,
    validate: {
      validator: Number.isInteger,
      message: 'El rating debe ser un número entero'
    }
  }
});

export default mongoose.model("Exercise", exerciseSchema);