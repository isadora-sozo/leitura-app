📚 Projeto Quiz de Recomendação de Leitura

Este projeto tem como objetivo recomendar livros juvenis com base no perfil de leitura do usuário, utilizando perguntas e correspondência por tags.

Tecnologias utilizadas:

React (Frontend)
Node.js + Express (Backend)
PostgreSQL (Banco de Dados)
🧰 Requisitos

Antes de iniciar, instalar:

Node.js
https://nodejs.org
PdAdmin (PostgreSQL)
Visual Studio Code
https://code.visualstudio.com

PASSO 1 - Configuração do Banco de Dados (Criação)

Abrir o PgAdmin:
-com o botão direito clique em database
-create->database

<img width="699" height="554" alt="image" src="https://github.com/user-attachments/assets/b64a6d60-1b1f-4e20-a3b4-3122d26b22a1" />

-nome do banco de dados: leitura_db

PASSO 2 - Criar as tabelas:
-clique com o botão direio no leitura_db
-clique em Query Tool
-clique no icone de arquivo

<img width="99" height="100" alt="image" src="https://github.com/user-attachments/assets/e42e8c09-3684-4ffe-9dc0-f0dff36f214e" />

-Abrir: database/create_tables.sql
-Execute
PASSO 3 - Testado DB
-clique com botão direito em leitura_db
-clique em Query Tool
-Escreva: SELECT COUNT(*) FROM books    (tem que aparecer 20)
          SELECT COUNT(*) FROM questions  (tem que aparecer 15)

PASSO 4 - Rodar o Backend:
-Abrir o Visual Studio Code
-git clone desse repositório do git hub
-abra o terminal e escreva cd leitura-app
-escreva cd backend
-escreva npm install
-escreva node app.js  (se não der certo: npm run dev)

PASSO 5 - Rodar o FrontEnd
-no visual studio ir nos três pontinhos na barra de cima e clicar em terminal
-abrir outro terminal
-escreva cd frontend
-escreva code . (precisar abrir outra janela para editar)
-escreva npm install
-escreva npm start

*Editar arquivo:
-no arquivo backend/database/db.js
-mude a parte que está o password:"sozo"; para a senha que foi coloca no pgAdmin (nos computadores do senai ela é: senai)

Obs: Servidor vai rodar em:
http://localhost:3001
O frontend vai rodar em:
http://localhost:3000

Próximas Coisas (o que não foi feito nessa base)
Adicionar capas dos livros
Melhorar layout visual
Criar barra de progresso?
Adicionar novos livros
Criar versão pro totem

ESPERO TER AJUDADO MENINAS💗
