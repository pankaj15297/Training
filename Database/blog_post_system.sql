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


--
-- Name: mood; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.mood AS ENUM (
    'sad',
    'ok',
    'happy'
);


ALTER TYPE public.mood OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    enable boolean DEFAULT true,
    content character varying DEFAULT 'Empty'::character varying
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying NOT NULL,
    content character varying NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    address character varying NOT NULL,
    paid boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: count_views; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.count_views AS
 SELECT count(p.id) AS post_count
   FROM ((public.users u
     LEFT JOIN public.posts p ON ((u.id = p.user_id)))
     LEFT JOIN public.categories c ON ((c.id = p.category_id)))
  WHERE ((c.name)::text = 'Foods'::text)
  GROUP BY u.id;


ALTER TABLE public.count_views OWNER TO postgres;

--
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    name text,
    current_mood public.mood
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: pk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pk (
    id integer NOT NULL,
    roll integer
);


ALTER TABLE public.pk OWNER TO postgres;

--
-- Name: pk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pk_id_seq OWNER TO postgres;

--
-- Name: pk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pk_id_seq OWNED BY public.pk.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pk ALTER COLUMN id SET DEFAULT nextval('public.pk_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	Goods
3	Foods
2	Fruits
4	Woods
5	Books
6	Health
7	Medicines
8	Cloths
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, user_id, post_id, enable, content) FROM stdin;
1	1	1	t	Empty
2	1	3	f	This mangoes are not sweet
3	3	5	t	This goods are light
4	12	15	t	foods are good
5	12	14	f	cloths are old
6	12	11	t	foods are not good
7	12	5	t	mangoes are not good
8	4	6	t	good foods
9	4	12	t	good wood
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes (id, user_id, post_id) FROM stdin;
1	1	1
2	1	2
3	2	1
4	2	5
5	2	6
7	4	6
8	4	12
9	14	12
10	14	11
11	11	11
6	4	7
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (name, current_mood) FROM stdin;
Pankaj	happy
Pankaj	ok
\.


--
-- Data for Name: pk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pk (id, roll) FROM stdin;
13	10
14	11
15	12
100	\N
101	\N
16	5
17	5
18	5
19	\N
20	6
6	\N
\.


--
-- Name: pk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pk_id_seq', 20, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, user_id, title, content, category_id) FROM stdin;
5	10	a goods	Goods are heavy.	1
1	5	a mango	Mangoes are sweets.	2
2	5	a banana	Bananas are sweets and yellow.	2
3	10	a banana	Bananas are sweets and yellow.	2
4	10	a book	Books are good.	5
6	1	a food	foods are heavy.	3
7	3	a food	foods are light.	3
8	14	a food	foods are light.	3
9	14	the goods	goods are light.	1
10	14	a food	foods are good.	3
11	14	a cloth	cloths are red.	8
12	14	a wood	woods are heavy.	4
13	7	a food	foods are light.	3
14	7	a cloth	cloths are red.	8
15	7	a food	foods are heavy.	3
16	7	a goods	Goods are heavy.	1
17	7	a goods	Goods are heavy.	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, address, paid) FROM stdin;
1	Pankaj	Patna	f
2	Pankaj	Patna	t
3	Saurabh	Delhi	t
4	Mohit	Delhi	f
5	Rohit	Hariyana	f
6	Gundeep	Patiala	t
7	Manjeet	Patiala	t
8	Motilal	Chhapra	f
9	Bittu	Chhapra	f
10	Bittu	Patna	t
11	Pavan	Patna	t
12	Pavan	Chhapra	t
13	Naveen	Chhapra	t
14	Naveen	Patiala	t
15	Praveen	Chhapra	f
16	John	Goa	f
17	Doe	Goa	t
\.


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: pk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pk
    ADD CONSTRAINT pk_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: comments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: likes_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: likes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: posts_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


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

