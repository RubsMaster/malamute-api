import db from "../config/db.js";
export const getAllExercises = async (req, res) => {
  try {
    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 20;
    const search = req.query.search || "";
    const offset = (page - 1) * limit;

    const dataQuery = `
  SELECT 
    e.*,
    bp.name AS bodypart_name,
    eq.name AS equipment_name,
    wt.name AS type_name
  FROM exercises e
  LEFT JOIN musculargroup bp ON e.bodypart = bp.id
  LEFT JOIN equipment eq ON e.equipment = eq.id
  LEFT JOIN workouttype wt ON e.type = wt.id
  WHERE e.name ILIKE $3
  ORDER BY e.id
  LIMIT $1 OFFSET $2
`;

const countQuery = `
SELECT COUNT(*) 
FROM exercises e
WHERE e.name ILIKE $1
`;

    const searchTerm = `%${search}%`;

    const [dataResult, countResult] = await Promise.all([
      db.query(dataQuery, [limit, offset, searchTerm]),
      db.query(countQuery, [searchTerm]),
    ]);

    const total = parseInt(countResult.rows[0].count);
    const totalPages = Math.ceil(total / limit);

    res.status(200).json({
      data: dataResult.rows,
      pagination: { page, limit, total, totalPages },
    });
  } catch (error) {
    console.error("Error fetching exercises:", error);
    res.status(500).send("Internal Server Error");
  }
};

export const getExerciseByID = async (req, res) => {
  const { id } = req.params;
  try {
    
    const exercise = await db.query(`
      SELECT * 
      FROM exercises e
      e.*,
      bp.name AS bodypart_name,
      eq.name AS equipment_name,
      wt.name AS type_name
      LEFT JOIN musculargroup bp ON e.bodypart = bp.id
      LEFT JOIN equipment eq ON e.equipment = eq.id
      LEFT JOIN workouttype wt ON e.type = wt.id
      WHERE id = $1`, [id]);
    res.status(200).json(exercise.rows[0]);
  } catch (error) {
    res.status(500).json({ error: "Error fetching exercise" });
  }
}
export const updateExercise = async (req, res) => {
  try {
    const { id } = req.params;
    const { name, description, bodypart, equipment, level } = req.body;
    
    const query = `
      UPDATE exercises 
      SET name = $1, description = $2, bodypart = $3, equipment = $4, level = $5
      WHERE id = $6
      RETURNING *
    `;
    
    const values = [name, description, bodypart, equipment, level, id];
    const result = await db.query(query, values);
    
    res.status(200).json(result.rows[0]);
  } catch (error) {
    console.error("Error updating exercise:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};