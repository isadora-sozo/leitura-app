--
-- PostgreSQL database dump
--
-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2026-04-07 17:27:51

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 24605)
-- Name: book_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_tags (
    book_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.book_tags OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24582)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title text NOT NULL,
    author text,
    description text,
    page_count integer,
    cover_url text
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24581)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.books_id_seq OWNER TO postgres;

--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 219
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 228 (class 1259 OID 24649)
-- Name: option_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.option_tags (
    option_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.option_tags OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24634)
-- Name: options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.options (
    id integer NOT NULL,
    question_id integer,
    option_text text NOT NULL
);


ALTER TABLE public.options OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24633)
-- Name: options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.options_id_seq OWNER TO postgres;

--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 226
-- Name: options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.options_id_seq OWNED BY public.options.id;


--
-- TOC entry 225 (class 1259 OID 24623)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    question_text text NOT NULL
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24622)
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_id_seq OWNER TO postgres;

--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 224
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- TOC entry 222 (class 1259 OID 24593)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24592)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_id_seq OWNER TO postgres;

--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 221
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 4778 (class 2604 OID 24585)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 4781 (class 2604 OID 24637)
-- Name: options id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options ALTER COLUMN id SET DEFAULT nextval('public.options_id_seq'::regclass);


--
-- TOC entry 4780 (class 2604 OID 24626)
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- TOC entry 4779 (class 2604 OID 24596)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 4952 (class 0 OID 24605)
-- Dependencies: 223
-- Data for Name: book_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book_tags (book_id, tag_id) VALUES
(1,1),
(1,4),
(1,30),
(1,31),
(2,1),
(2,4),
(2,30),
(2,33),
(3,10),
(3,4),
(3,32),
(4,42),
(4,44),
(4,50),
(5,9),
(5,17),
(5,11),
(6,2),
(6,8),
(6,10),
(7,8),
(7,27),
(7,25),
(8,10),
(8,4),
(8,32),
(9,5),
(9,3),
(9,44),
(10,1),
(10,4),
(10,30),
(11,2),
(11,25),
(11,4),
(12,2),
(12,8),
(12,25),
(13,1),
(13,4),
(13,19),
(14,8),
(14,7),
(14,42),
(15,3),
(15,4),
(15,25),
(16,40),
(16,9),
(16,11),
(17,47),
(17,4),
(17,25),
(18,3),
(18,5),
(18,42),
(19,1),
(19,4),
(19,25),
(20,7),
(20,8),
(20,42);



--
-- TOC entry 4949 (class 0 OID 24582)
-- Dependencies: 220
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books (id, title, author, description, page_count, cover_url) VALUES
(1, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Um garoto descobre que é um bruxo e começa sua jornada em Hogwarts.', 223, 'https://covers.openlibrary.org/b/id/7984916-L.jpg'),
(2, 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Um garoto descobre que é filho de um deus grego.', 377, 'https://covers.openlibrary.org/b/id/8228691-L.jpg'),
(3, 'Jogos Vorazes', 'Suzanne Collins', 'Uma jovem luta pela sobrevivência em uma competição mortal.', 374, 'https://covers.openlibrary.org/b/id/8319256-L.jpg'),
(4, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Uma história filosófica sobre amizade e imaginação.', 96, 'https://covers.openlibrary.org/b/id/8225261-L.jpg'),
(5, 'Diário de um Banana', 'Jeff Kinney', 'Um garoto registra suas aventuras engraçadas no colégio.', 224, 'https://covers.openlibrary.org/b/id/8079256-L.jpg'),
(6, 'A Seleção', 'Kiera Cass', 'Uma jovem participa de um concurso para se tornar princesa.', 368, 'https://covers.openlibrary.org/b/id/7262161-L.jpg'),
(7, 'Extraordinário', 'R.J. Palacio', 'Um garoto com aparência diferente enfrenta desafios escolares.', 320, 'https://covers.openlibrary.org/b/id/8231856-L.jpg'),
(8, 'Maze Runner', 'James Dashner', 'Um grupo de jovens tenta escapar de um labirinto mortal.', 375, 'https://covers.openlibrary.org/b/id/8091016-L.jpg'),
(9, 'Coraline', 'Neil Gaiman', 'Uma garota descobre um mundo assustador por trás de uma porta.', 192, 'https://covers.openlibrary.org/b/id/8231991-L.jpg'),
(10, 'As Crônicas de Nárnia', 'C.S. Lewis', 'Crianças entram em um mundo mágico cheio de aventuras.', 767, 'https://covers.openlibrary.org/b/id/8235081-L.jpg'),
(11, 'Cidade de Papel', 'John Green', 'Um jovem embarca em uma jornada para encontrar uma garota misteriosa.', 305, 'https://covers.openlibrary.org/b/id/8235116-L.jpg'),
(12, 'A Culpa é das Estrelas', 'John Green', 'Dois jovens se apaixonam enquanto enfrentam doenças.', 313, 'https://covers.openlibrary.org/b/id/8235261-L.jpg'),
(13, 'O Hobbit', 'J.R.R. Tolkien', 'Um hobbit embarca em uma aventura épica.', 310, 'https://covers.openlibrary.org/b/id/6979861-L.jpg'),
(14, 'A Menina que Roubava Livros', 'Markus Zusak', 'Uma jovem descobre o poder das palavras durante a guerra.', 552, 'https://covers.openlibrary.org/b/id/8235401-L.jpg'),
(15, 'Os Karas', 'Pedro Bandeira', 'Um grupo de jovens resolve mistérios intrigantes.', 180, 'https://covers.openlibrary.org/b/id/8235456-L.jpg'),
(16, 'Turma da Mônica Jovem', 'Mauricio de Sousa', 'Histórias divertidas em estilo mangá.', 120, 'https://covers.openlibrary.org/b/id/8235551-L.jpg'),
(17, 'Naruto', 'Masashi Kishimoto', 'Um jovem ninja busca reconhecimento e amizade.', 200, 'https://covers.openlibrary.org/b/id/8235601-L.jpg'),
(18, 'Death Note', 'Tsugumi Ohba', 'Um estudante encontra um caderno capaz de matar pessoas.', 200, 'https://covers.openlibrary.org/b/id/8235651-L.jpg'),
(19, 'O Ladrão de Raios', 'Rick Riordan', 'Primeira aventura de Percy Jackson.', 377, 'https://covers.openlibrary.org/b/id/8228691-L.jpg'),
(20, 'Dom Casmurro (adaptação juvenil)', 'Machado de Assis', 'Uma versão adaptada do clássico brasileiro.', 220, 'https://covers.openlibrary.org/b/id/8235701-L.jpg');


--
-- TOC entry 4957 (class 0 OID 24649)
-- Dependencies: 228
-- Data for Name: option_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.option_tags (option_id, tag_id) VALUES
(1,11),
(2,14),
(3,15),
(4,16),
(5,20),
(6,21),
(7,22),
(8,17),
(9,18),
(10,19),
(11,1),
(12,2),
(13,3),
(14,4),
(15,5),
(16,6),
(17,1),
(18,7),
(19,6),
(20,3),
(21,4),
(22,2),
(23,5),
(24,4),
(25,2),
(26,3),
(27,1),
(28,1),
(29,6),
(30,7),
(31,25),
(32,26),
(33,9),
(34,8),
(35,4),
(36,7),
(37,1),
(38,23),
(39,24),
(40,46),
(41,47),
(42,2),
(43,11),
(44,5),
(45,9),
(46,42),
(47,11),
(48,13);



--
-- TOC entry 4956 (class 0 OID 24634)
-- Dependencies: 227
-- Data for Name: options; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.options (id, question_id, option_text) VALUES
(1, 1, 'Nunca li um livro completo'),
(2, 1, 'Leio raramente'),
(3, 1, 'Leio às vezes'),
(4, 1, 'Leio com frequência'),
(5, 2, 'Menos de 10 minutos'),
(6, 2, 'Entre 10 e 20 minutos'),
(7, 2, 'Mais de 30 minutos'),
(8, 3, 'Poucas páginas'),
(9, 3, 'Médio'),
(10, 3, 'Muitas páginas'),
(11, 4, 'Fantasia'),
(12, 4, 'Romance'),
(13, 4, 'Mistério'),
(14, 4, 'Aventura'),
(15, 4, 'Terror'),
(16, 4, 'Ficção científica'),
(17, 5, 'Em mundos mágicos'),
(18, 5, 'No mundo real'),
(19, 5, 'No futuro'),
(20, 6, 'Um detetive resolvendo um crime'),
(21, 6, 'Uma jornada perigosa'),
(22, 6, 'Um amor inesperado'),
(23, 6, 'Um segredo assustador'),
(24, 7, 'Ação'),
(25, 7, 'Romance'),
(26, 7, 'Suspense'),
(27, 7, 'Fantasia'),
(28, 8, 'Dragões ou magia'),
(29, 8, 'Robôs ou tecnologia'),
(30, 8, 'Pessoas comuns'),
(31, 9, 'Jovens como você'),
(32, 9, 'Adultos'),
(33, 10, 'Engraçadas'),
(34, 10, 'Emocionantes'),
(35, 10, 'Cheias de ação'),
(36, 11, 'Fatos reais'),
(37, 11, 'Imaginação'),
(38, 12, 'Histórias rápidas'),
(39, 12, 'Histórias detalhadas'),
(40, 13, 'HQ ou quadrinhos'),
(41, 13, 'Mangá'),
(42, 13, 'Romance'),
(43, 13, 'Nunca li'),
(44, 14, 'Dão medo'),
(45, 14, 'Fazem rir'),
(46, 14, 'Fazem pensar'),
(47, 15, 'Fácil'),
(48, 15, 'Desafiadora');


--
-- TOC entry 4954 (class 0 OID 24623)
-- Dependencies: 225
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.questions (id, question_text) VALUES
(1, 'Com que frequência você lê livros?'),
(2, 'Quanto tempo você costuma ter para ler por dia?'),
(3, 'Você prefere histórias com muitas páginas ou poucas?'),
(4, 'Que tipo de história você mais gosta?'),
(5, 'Você prefere histórias que acontecem:'),
(6, 'Qual dessas histórias parece mais interessante?'),
(7, 'Qual tipo de filme você mais gosta?'),
(8, 'Você gosta de histórias com:'),
(9, 'Você prefere personagens:'),
(10, 'Você prefere histórias:'),
(11, 'Você gosta de histórias baseadas em:'),
(12, 'Você prefere ler:'),
(13, 'Você já leu algum desses tipos de livro?'),
(14, 'Você gosta de histórias que:'),
(15, 'Você gostaria que sua próxima leitura fosse:');



--
-- TOC entry 4951 (class 0 OID 24593)
-- Dependencies: 222
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tags (id, name) VALUES
(1, 'fantasia'),
(2, 'romance'),
(3, 'misterio'),
(4, 'aventura'),
(5, 'terror'),
(6, 'ficcao_cientifica'),
(7, 'realista'),
(8, 'drama'),
(9, 'humor'),
(10, 'distopia'),
(11, 'iniciante'),
(12, 'intermediario'),
(13, 'avancado'),
(14, 'leitor_ocasional'),
(15, 'leitor_regular'),
(16, 'leitor_frequente'),
(17, 'livro_curto'),
(18, 'livro_medio'),
(19, 'livro_longo'),
(20, 'leitura_curta'),
(21, 'leitura_media'),
(22, 'leitura_longa'),
(23, 'leitura_rapida'),
(24, 'leitura_detalhada'),
(25, 'protagonista_jovem'),
(26, 'protagonista_adulto'),
(27, 'amizade'),
(28, 'familia'),
(29, 'romance_adolescente'),
(30, 'magia'),
(31, 'escola'),
(32, 'sobrevivencia'),
(33, 'jornada'),
(34, 'segredo'),
(35, 'crime'),
(36, 'investigacao'),
(37, 'tecnologia'),
(38, 'futuro'),
(39, 'passado'),
(40, 'emocionante'),
(41, 'reflexivo'),
(42, 'leve'),
(43, 'sombrio'),
(44, 'suspense'),
(45, 'acao'),
(46, 'hq'),
(47, 'manga'),
(48, 'conto'),
(49, 'serie'),
(50, 'volume_unico');



--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 219
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 20, true);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 226
-- Name: options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.options_id_seq', 48, true);


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 224
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 15, true);


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 221
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 50, true);


--
-- TOC entry 4789 (class 2606 OID 24611)
-- Name: book_tags book_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_tags
    ADD CONSTRAINT book_tags_pkey PRIMARY KEY (book_id, tag_id);


--
-- TOC entry 4783 (class 2606 OID 24591)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 4795 (class 2606 OID 24655)
-- Name: option_tags option_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option_tags
    ADD CONSTRAINT option_tags_pkey PRIMARY KEY (option_id, tag_id);


--
-- TOC entry 4793 (class 2606 OID 24643)
-- Name: options options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (id);


--
-- TOC entry 4791 (class 2606 OID 24632)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 4785 (class 2606 OID 24604)
-- Name: tags tags_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);


--
-- TOC entry 4787 (class 2606 OID 24602)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 4796 (class 2606 OID 24612)
-- Name: book_tags book_tags_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_tags
    ADD CONSTRAINT book_tags_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- TOC entry 4797 (class 2606 OID 24617)
-- Name: book_tags book_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_tags
    ADD CONSTRAINT book_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- TOC entry 4799 (class 2606 OID 24656)
-- Name: option_tags option_tags_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option_tags
    ADD CONSTRAINT option_tags_option_id_fkey FOREIGN KEY (option_id) REFERENCES public.options(id);


--
-- TOC entry 4800 (class 2606 OID 24661)
-- Name: option_tags option_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option_tags
    ADD CONSTRAINT option_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- TOC entry 4798 (class 2606 OID 24644)
-- Name: options options_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id);


-- Completed on 2026-04-07 17:27:52

--
-- PostgreSQL database dump complete
--


