const express = require("express");
const router = express.Router();

const pool = require("../database/db");

router.get("/", async (req, res) => {

  try {

    const result =
      await pool.query(
        "SELECT * FROM tags ORDER BY id"
      );

    res.json(result.rows);

  } catch (error) {

    console.error(error);

    res.status(500).json({
      error: "Erro ao buscar tags"
    });

  }

});

module.exports = router;