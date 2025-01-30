import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';

import exercisesRoutes from "./routes/exercises.routes.js";

dotenv.config();

const app = express();

app.use(express.json());
app.use(cors());
app.use(exercisesRoutes)

export default app