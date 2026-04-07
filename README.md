📚 Projeto Quiz de Recomendação de Leitura
Objetivo

Este projeto tem como objetivo recomendar livros juvenis com base no perfil de leitura do usuário, utilizando perguntas e correspondência por tags.

Tecnologias utilizadas:

React (Frontend)
Node.js + Express (Backend)
PostgreSQL (Banco de Dados)
🧰 Requisitos

Antes de iniciar, instalar:

Node.js
https://nodejs.org
PostgreSQL
https://www.postgresql.org/download/
Visual Studio Code
https://code.visualstudio.com
🗄️ Configuração do Banco de Dados

Abrir o PostgreSQL e criar o banco:

CREATE DATABASE leitura_db;

Depois executar os scripts SQL fornecidos:

create_tables.sql
insert_tags.sql
insert_questions.sql
insert_books.sql
⚙️ Configurar Backend

Entrar na pasta:

cd backend

Instalar dependências:

npm install

Editar arquivo:

db.js

Colocar sua senha do PostgreSQL:

password: "SUA_SENHA"

Rodar servidor:

npm run dev

Servidor rodará em:

http://localhost:3001
🎨 Configurar Frontend

Abrir novo terminal:

cd frontend

Instalar dependências:

npm install

Rodar aplicação:

npm start

Abrirá em:

http://localhost:3000
