import { Router } from "express";
import { getAllExercises, getExerciseByName, uploadBulkExercises, getAllBodyparts, getAllExercisesByBodypart, getExerciseByID, uploadImages, getExercisesImagesByBodypart } from "../controllers/exercises.controller.js"

const router = Router();

router.get('/exercises', getAllExercises)
router.get('/exercise/name/:name', getExerciseByName)
router.get('/exercise/_id/:_id', getExerciseByID)
router.get('/exercises/bodypart/:name', getAllExercisesByBodypart)
router.get('/bodyparts', getAllBodyparts)
router.get('/:name', getExercisesImagesByBodypart);
router.post('/uploadBulkExercises', uploadBulkExercises);
router.post('/uploadBulkImages', uploadImages)

export default router;