import { Router } from "express";
import { getAllExercises } from "../controllers/exercises.controller.js"

const router = Router();
router.get('/exercises', getAllExercises);

export default router;