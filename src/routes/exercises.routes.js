import { Router } from "express";
import { getAllExercises, getExerciseByID } from "../controllers/exercises.controller.js"

const router = Router();
router.get('/exercises', getAllExercises);
router.get("/exercises/:id", getExerciseByID);
export default router;