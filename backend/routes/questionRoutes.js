const express = require("express");
const router = express.Router();
const pool = require("../db");

// Buscar todas as perguntas com opções
router.get("/", async (req, res) => {

  try {

    const result = await pool.query(`
      SELECT 
        q.id AS question_id,
        q.question_text,
        o.id AS option_id,
        o.option_text
      FROM questions q
      JOIN options o
        ON q.id = o.question_id
      ORDER BY q.id, o.id
    `);

    res.json(result.rows);

  } catch (error) {

    console.error(error);
    res.status(500).json({
      error: "Erro ao buscar perguntas"
    });

  }

});

module.exports = router;
