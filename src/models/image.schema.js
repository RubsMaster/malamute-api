import mongoose from "mongoose";
const imageSchema = new mongoose.Schema({
  Title: {
    type: String,
    required: [true, 'El título es requerido'],
    trim: true,
    maxlength: [255, 'El título no puede exceder 100 caracteres']
  },
  Src: {
    type: String,
    required: [true, 'La URL es requerida']
  }
});
export default mongoose.model("Image", imageSchema);// imageModel.js