// models/Exercise.js
import mongoose from "mongoose";

const exerciseSchema = new mongoose.Schema({
  Title: {
    type: String,
    required: true,
    trim: true,
    unique: true
  },
  Desc: {
    type: String
  },
  Type: {
    type: String,
    required: true,
    enum: ["Strength", "Cardio", "Plyometrics", "Stretching", "Powerlifting", "Strongman", "Olympic Weightlifting"],
  },
  BodyPart: {
    type: String,
    required: true,
    enum: ["Abdominals", "Abductors", "Adductors", "Biceps", "Calves", "Chest", "Forearms", "Glutes", "Hamstrings", "Lats", "Lower Back", "Middle Back", "Traps", "Neck", "Quadriceps", "Shoulders", "Triceps"], 
  },
  Equipment: {
    type: String,
    required: true,
    enum: ["Bands", "Barbell", "Kettlebells", "Dumbbell", "Other", "Cable", "Machine", "Body Only", "Medicine Ball", "None", "Exercise Ball", "Foam Roll", "E-Z Curl Bar"],
  },
  Level: {
    type: String,
    required: true,
    enum: ["Beginner", "Intermediate", "Expert"],
  },
  Rating: {
    type: Number,
    min: 0,
    max: 10,
    default: null,
  },
});

export default mongoose.model("Exercise", exerciseSchema);