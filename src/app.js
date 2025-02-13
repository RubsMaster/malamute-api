import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import {connectDB} from "./config/mongo-db.js";

import exercisesRoutes from "./routes/exercises.routes.js";

dotenv.config();

const app = express();

app.use(express.json());
connectDB();
app.use(cors());
app.use(exercisesRoutes)

export default app