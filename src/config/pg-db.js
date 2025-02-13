import pg from 'pg'
const { Pool } = pg
 
const config = {
    host: 'localhost',
    port: '5432',
    user: 'postgres',
    password: 'GSMunlock1.',
    database: 'malamute'
}

const pool = new Pool(config);

const query = async (text, params) => {
  try {
    const result = await pool.query(text, params);
    return result;
  } catch (err) {
    console.error("Error ejecutando la consulta", err);
    const errorObj = {
      ok: false,
      code: err.code || null,
      detail: err.detail || err.routine
    }
    return errorObj  
  }
};

const testConnection = async () => {
    try {
      const result = await pool.query("SELECT NOW()");
      console.log("Conexión exitosa a la base de datos:", result.rows[0].now);
    } catch (err) {
      console.error("Error conectando a la base de datos:", err);
    }
  };
  
  testConnection();

export default {
  query,
};
