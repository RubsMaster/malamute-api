import db from "../config/db.js";
export const getAllExercises = async (req, res) => {
  try {
    const query = `
        SELECT *
        FROM exercises
      `;
    const result = await db.query(query);
    console.log("consultado")    
    res.status(200).json(result.rows);
  } catch (error) {
    console.error("Error fetching restaurants:", error);
    res.status(500).send("Internal Server Error");
  }
 }