import { Router } from "express";
import { getAllExercises, getExerciseByID, updateExercise } from "../controllers/exercises.controller.js"

const router = Router();
router.get('/exercises', getAllExercises);
router.get("/exercises/:id", getExerciseByID);
router.put('/:id', updateExercise);
export default router;