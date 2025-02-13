import { Router } from "express";
import { getAllExercises, getExerciseByName, uploadBulkExercises } from "../controllers/exercises.controller.js"

const router = Router();

router.get('/exercises', getAllExercises)
router.get('/exercise/:name', getExerciseByName)
router.post('/uploadBulkExercises', uploadBulkExercises);

export default router;