const express = require("express");
const router = express.Router();

const pool = require("../database/db");

// Rota para enviar respostas do quiz
router.post("/submit", async (req, res) => {

  try {

    const answers = req.body?.answers;;

    if (!answers || answers.length === 0) {
      return res.status(400).json({
        error: "Nenhuma resposta enviada"
      });
    }

    // 1️⃣ Buscar tags das opções escolhidas
    const tagResult = await pool.query(`
      SELECT tag_id
      FROM option_tags
      WHERE option_id = ANY($1)
    `, [answers]);

    const tagIds =
      tagResult.rows.map(row => row.tag_id);

    // 2️⃣ Buscar livros que possuem essas tags
    const booksResult = await pool.query(`

      SELECT 
        b.id,
        b.title,
        b.author,
        b.description,
        b.cover_url,
        COUNT(bt.tag_id) AS match_count

      FROM books b

      JOIN book_tags bt
      ON b.id = bt.book_id

      WHERE bt.tag_id = ANY($1)

      GROUP BY b.id

      ORDER BY match_count DESC

      LIMIT 5

    `, [tagIds]);

    res.json({
      recommended_books:
        booksResult.rows
    });

  } catch (error) {

    console.error(error);

    res.status(500).json({
      error: "Erro ao gerar recomendações"
    });

  }

});

module.exports = router;