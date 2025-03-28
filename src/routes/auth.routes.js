import { Router } from "express";
import {
    login,
    register
} from "../controllers/auth.controller.js"

const router = Router();

router.get('/auth/register', register)
router.post('/auth/login', login)

export default router;