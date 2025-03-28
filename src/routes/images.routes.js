import { Router } from "express";
import {
    getExercisesImagesByBodypart
} from "../controllers/exercises.controller.js"

const router = Router();

router.get('/images/:name', getExercisesImagesByBodypart);


export default router;