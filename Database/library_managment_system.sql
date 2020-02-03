--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.5.19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    category_id integer NOT NULL,
    name character varying NOT NULL,
    author character varying NOT NULL,
    publisher character varying NOT NULL,
    rental_price money NOT NULL,
    available boolean DEFAULT true
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying NOT NULL,
    salary money NOT NULL,
    address character varying NOT NULL,
    contact bigint NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: issue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue (
    id integer NOT NULL,
    student_id integer NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.issue OWNER TO postgres;

--
-- Name: issue_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue_books (
    id integer NOT NULL,
    issue_id integer NOT NULL,
    book_id integer NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.issue_books OWNER TO postgres;

--
-- Name: issue_books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.issue_books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_books_id_seq OWNER TO postgres;

--
-- Name: issue_books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.issue_books_id_seq OWNED BY public.issue_books.id;


--
-- Name: issue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.issue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_id_seq OWNER TO postgres;

--
-- Name: issue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.issue_id_seq OWNED BY public.issue.id;


--
-- Name: return; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.return (
    id integer NOT NULL,
    student_id integer NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.return OWNER TO postgres;

--
-- Name: return_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.return_books (
    id integer NOT NULL,
    return_id integer NOT NULL,
    book_id integer NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.return_books OWNER TO postgres;

--
-- Name: return_books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.return_books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.return_books_id_seq OWNER TO postgres;

--
-- Name: return_books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.return_books_id_seq OWNED BY public.return_books.id;


--
-- Name: return_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.return_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.return_id_seq OWNER TO postgres;

--
-- Name: return_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.return_id_seq OWNED BY public.return.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying NOT NULL,
    address character varying NOT NULL,
    registration_date date NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue ALTER COLUMN id SET DEFAULT nextval('public.issue_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_books ALTER COLUMN id SET DEFAULT nextval('public.issue_books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return ALTER COLUMN id SET DEFAULT nextval('public.return_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_books ALTER COLUMN id SET DEFAULT nextval('public.return_books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, category_id, name, author, publisher, rental_price, available) FROM stdin;
2	6	Printing	H.L	P.R	₹120.00	t
3	6	Building	H.G.L	I.R	₹240.00	t
4	6	Animation	J.K.H	S.E	₹500.00	t
5	6	Blogging	J.H	L.K	₹300.00	f
6	6	Coloring	H.M	L.K.D	₹200.00	f
7	5	Let Us C	E.R.U	A.S.D	₹330.00	f
8	5	Data Structures	P.U.T	A.S.D	₹330.00	f
9	5	Python	P.T	A.S	₹500.00	t
10	5	Java	C.P	O.P	₹400.00	t
11	5	Perl	P.M.N	O.G	₹250.00	t
12	10	Goddess of Light	N.K	G.P	₹135.00	t
13	10	Nights at the Cuzco	J.N.K	G.H.Y	₹145.00	t
14	2	An Animal Dance Book	R.T	P.K	₹145.00	t
15	3	Indian Cooking	D.S	S.K	₹145.00	t
16	3	American Cooking	H.D.S	S.S	₹245.00	t
17	8	The Source of Social Power	J.K.S	G.S.S	₹278.00	t
18	8	Plagues and Peoples	J.S	G.S	₹200.00	t
19	8	The Contours of American	U.S	L.S	₹200.00	t
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 19, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
2	Art & Music
3	Cooking
4	Kids
5	Computers
6	Hobbies
7	Health
8	History
9	Medical
10	Entertainment
11	Religion
12	Sports
13	Romance
14	Travel
15	Social Sciences
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 15, true);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, name, salary, address, contact) FROM stdin;
1	Pankaj	₹50,000.00	Delhi	7009147259
2	Pankaj	₹50,000.00	Delhi	7009147259
3	Pavan	₹15,000.00	Patna	1489657423
4	Naveen	₹35,000.00	Pune	5698741256
5	Praveen	₹35,000.00	Chandighar	9857444452
6	Sonu	₹25,000.00	Haidrabad	9857444452
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 6, true);


--
-- Data for Name: issue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue (id, student_id, date) FROM stdin;
1	2	2020-01-20
2	2	2020-01-22
3	5	2020-01-21
4	5	2020-02-01
5	10	2020-02-02
6	11	2020-02-03
7	9	2020-02-03
\.


--
-- Data for Name: issue_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue_books (id, issue_id, book_id, employee_id) FROM stdin;
2	1	5	5
3	1	6	5
4	1	10	1
5	1	17	6
6	3	17	6
7	3	10	6
9	3	14	1
\.


--
-- Name: issue_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.issue_books_id_seq', 9, true);


--
-- Name: issue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.issue_id_seq', 7, true);


--
-- Data for Name: return; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.return (id, student_id, date) FROM stdin;
\.


--
-- Data for Name: return_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.return_books (id, return_id, book_id, employee_id) FROM stdin;
\.


--
-- Name: return_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.return_books_id_seq', 1, false);


--
-- Name: return_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.return_id_seq', 1, false);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name, address, registration_date) FROM stdin;
1	Chhavi	Merath	2018-11-18
2	Saurabh	Delhi	2017-05-28
3	Ashutosh	Patna	2019-07-29
4	Amandeep	Patiala	2020-01-01
5	Aman	Patna	2015-08-17
6	Aman	Agra	2015-08-17
7	Gaurabh	Haridwar	2012-12-12
8	Avdhesh	Gagiabad	2013-02-12
9	Abhishek	Pune	2012-12-12
10	Sandeep	Faridabad	2018-11-22
11	Sandeep	Faridabad	2018-11-22
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 11, true);


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: issue_books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_books
    ADD CONSTRAINT issue_books_pkey PRIMARY KEY (id);


--
-- Name: issue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_pkey PRIMARY KEY (id);


--
-- Name: return_books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_books
    ADD CONSTRAINT return_books_pkey PRIMARY KEY (id);


--
-- Name: return_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return
    ADD CONSTRAINT return_pkey PRIMARY KEY (id);


--
-- Name: students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: books_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: issue_books_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_books
    ADD CONSTRAINT issue_books_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- Name: issue_books_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_books
    ADD CONSTRAINT issue_books_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- Name: issue_books_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_books
    ADD CONSTRAINT issue_books_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issue(id);


--
-- Name: issue_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: return_books_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_books
    ADD CONSTRAINT return_books_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- Name: return_books_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_books
    ADD CONSTRAINT return_books_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- Name: return_books_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_books
    ADD CONSTRAINT return_books_return_id_fkey FOREIGN KEY (return_id) REFERENCES public.issue(id);


--
-- Name: return_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return
    ADD CONSTRAINT return_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

