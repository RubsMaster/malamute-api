import { Router } from "express";
import { getAllExercises, getExerciseByName, uploadBulkExercises, getAllBodyparts, getAllExercisesByBodypart } from "../controllers/exercises.controller.js"

const router = Router();

router.get('/exercises', getAllExercises)
router.get('/exercise/:name', getExerciseByName)
router.get('/exercises/bodypart/:name', getAllExercisesByBodypart)
router.get('/bodyparts', getAllBodyparts)
router.get('/bodyparts/:name', getAllBodyparts)
router.post('/uploadBulkExercises', uploadBulkExercises);

export default router;