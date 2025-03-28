import { Router } from "express";
import {
    getAllBodyparts
} from "../controllers/exercises.controller.js"

const router = Router();

router.get('/bodyparts', getAllBodyparts)

export default router;