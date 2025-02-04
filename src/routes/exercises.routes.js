import { Router } from "express";
import { getAllEquipment, getAllExercises, getAllMuscularGroups, getAllWorkoutTypes, getExerciseByID, updateExercise } from "../controllers/exercises.controller.js"

const router = Router();
router.get('/exercises', getAllExercises);
router.get("/exercises/:id", getExerciseByID);
router.put('/:id', updateExercise);
router.get('/musculargroups', getAllMuscularGroups);
router.get('/equipments', getAllEquipment);
router.get('/workouttypes', getAllWorkoutTypes);

export default router;