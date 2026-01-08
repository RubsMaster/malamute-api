import { Router } from "express";
import { 
    getAllExercisesWithImages,
    getExerciseByName,
    getAllExercisesByBodypart,
    getExerciseByID,
    uploadBulkExercises
} from "../controllers/exercises.controller.js"

const router = Router();

router.get('/exercises', getAllExercisesWithImages)
router.get('/exercise/name/:name', getExerciseByName)
router.get('/exercise/_id/:_id', getExerciseByID)
router.get('/exercises/bodypart/:name', getAllExercisesByBodypart)
router.post('/bulkUpload', uploadBulkExercises);

export default router;