import mongoose from 'mongoose';

const imageSchema = new mongoose.Schema({
  Title: {
    type: String,
    required: [true, 'El título es requerido'],
    trim: true,
    maxlength: [100, 'El título no puede exceder 100 caracteres']
  },
  Src: {
    type: String,
    required: [true, 'La URL es requerida'],
    validate: {
      validator: (v) => {
        return /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/.test(v);
      },
      message: props => `${props.value} no es una URL válida`
    }
  },
  exercise: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Exercise',
    required: [true, 'La referencia al ejercicio es obligatoria'],
    index: true
  }
});

imageSchema.pre('save', function(next) {
  this.Title = this.Title
    .split(' ')
    .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
    .join(' ');
  next();
});
export default mongoose.model("Image", imageSchema);