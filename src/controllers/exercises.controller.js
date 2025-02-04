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
  LEFT JOIN musculargroup bp ON e.bodypart::INTEGER = bp.id
  LEFT JOIN equipment eq ON e.equipment::INTEGER = eq.id
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
    const exercise = await db.query("SELECT * FROM exercises WHERE id = $1", [id]);
    res.status(200).json(exercise.rows[0]);
  } catch (error) {
    res.status(500).json({ error: "Error fetching exercise" });
  }
}