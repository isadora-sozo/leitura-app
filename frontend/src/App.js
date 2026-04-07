import React, { useEffect, useState } from "react";
import axios from "axios";

function App() {

  const [questions, setQuestions] = useState([]);
  const [answers, setAnswers] = useState({});
  const [recommendations, setRecommendations] = useState([]);

  // Buscar perguntas
  useEffect(() => {

    axios
      .get("http://localhost:3001/questions")
      .then((res) => {

        const grouped = {};

        res.data.forEach((item) => {

          if (!grouped[item.question_id]) {

            grouped[item.question_id] = {
              id: item.question_id,
              question_text: item.question_text,
              options: []
            };

          }

          grouped[item.question_id].options.push({
            option_id: item.option_id,
            option_text: item.option_text
          });

        });

        setQuestions(Object.values(grouped));

      })
      .catch((error) => {

        console.error("Erro ao buscar perguntas:", error);

      });

  }, []);

  // Selecionar resposta
  const handleAnswer = (question_id, option_id) => {

    setAnswers((prev) => ({

      ...prev,
      [question_id]: option_id

    }));

  };

  // Enviar respostas
  const submitQuiz = () => {

    const answerArray = Object.values(answers);

    axios
      .post(
        "http://localhost:3001/quiz/submit",
        {
          answers: answerArray
        }
      )
      .then((res) => {

        setRecommendations(
          res.data.recommended_books
        );

      })
      .catch((error) => {

        console.error("Erro ao enviar respostas:", error);

      });

  };

  return (

    <div style={{ padding: "20px" }}>

      <h1>Quiz de Leitura 📚</h1>

      {questions.map((q) => (

        <div key={q.id}>

          <h3>
            {q.question_text}
          </h3>

          {q.options.map((opt) => (

            <button
              key={opt.option_id}
              onClick={() =>
                handleAnswer(
                  q.id,
                  opt.option_id
                )
              }
              style={{
                display: "block",
                margin: "5px"
              }}
            >

              {opt.option_text}

            </button>

          ))}

        </div>

      ))}

      <button
        onClick={submitQuiz}
        style={{
          marginTop: "20px"
        }}
      >

        Ver recomendações

      </button>

      <h2>Recomendações:</h2>

      {recommendations.map((book) => (

        <div key={book.id}>

          <h3>
            {book.title}
          </h3>

          <p>
            {book.author}
          </p>

          <p>
            {book.description}
          </p>

        </div>

      ))}

    </div>

  );

}

export default App;