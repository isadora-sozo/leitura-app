const express = require("express");
const cors = require("cors");
const pool = require("./database/db");

const app = express();

app.use(cors());
app.use(express.json());

/* ============================
   BUSCAR PERGUNTAS DO BANCO
============================ */

app.get("/questions", async (req, res) => {

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


/* ============================
   RECEBER RESPOSTAS
============================ */

app.post("/quiz/submit", async (req, res) => {

  try {

    const { answers } = req.body;

    console.log("Respostas recebidas:", answers);

     /* ============================
       1 - Buscar TAGS das respostas
    ============================ */

    const optionTagsResult = await pool.query(`
      SELECT tag_id
      FROM option_tags
      WHERE option_id = ANY($1)
    `, [answers]);

    const tagIds = optionTagsResult.rows.map(
      row => row.tag_id
    );

    if (tagIds.length === 0) {

      return res.json({
        recommended_books: []
      });

    }

    /* ============================
       2 - Comparar com livros
    ============================ */

    const booksResult = await pool.query(`
      SELECT 
        b.id,
        b.title,
        b.author,
        b.description,
        COUNT(bt.tag_id) AS score
      FROM books b
      JOIN book_tags bt
        ON b.id = bt.book_id
      WHERE bt.tag_id = ANY($1)
      GROUP BY b.id
      ORDER BY score DESC
      LIMIT 5
    `, [tagIds]);

    res.json({
      recommended_books: booksResult.rows
    });

  } catch (error) {

    console.error(error);

    res.status(500).json({
      error: "Erro ao gerar recomendações"
    });

  }

});

/* ============================
   SERVIDOR
============================ */

app.listen(3001, () => {

  console.log("Servidor rodando na porta 3001");

});