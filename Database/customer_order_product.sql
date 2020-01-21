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
-- Name: comp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comp (
    name character varying,
    id integer
);


ALTER TABLE public.comp OWNER TO postgres;

--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id integer NOT NULL,
    name character varying,
    salary integer[],
    task integer[]
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customerid integer NOT NULL,
    fname character varying(20) NOT NULL,
    lname character varying(20) DEFAULT 'N/A'::character varying,
    dob date NOT NULL,
    address character varying(50) NOT NULL,
    city character varying(20) NOT NULL,
    state character varying(20) NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: orderproducts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orderproducts (
    orderid integer,
    productid integer,
    qty integer NOT NULL,
    orderproductscomments character varying(100) NOT NULL
);


ALTER TABLE public.orderproducts OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customerid integer,
    date date NOT NULL,
    ordercomments text NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    productid integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(100) NOT NULL,
    size character varying(10) NOT NULL,
    unit integer NOT NULL,
    productcomments character varying NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);


--
-- Data for Name: comp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comp (name, id) FROM stdin;
Pankaj	3
Pankaj	\N
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (id, name, salary, task) FROM stdin;
1	Pankaj	\N	\N
2	Pavan	\N	\N
3	Praveen	\N	\N
4	Naveen	\N	\N
5	Bharti	\N	\N
6	Sivam	{100,500,800,200}	{1,5,8,2}
\.


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_seq', 6, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customerid, fname, lname, dob, address, city, state) FROM stdin;
1	Pankaj	Kumar	1997-02-15	Baniyapur	Chhapra	Bihar
2	Pavan	Kumar	2007-02-23	Baniyapur	Chhapra	Bihar
3	Praveen	Kumar	2012-02-23	Baniyapur	Chhapra	Bihar
4	Naveen	Kumar	2015-02-23	Baniyapur	Chhapra	Bihar
5	Naveen	Kumar	1995-12-13	Patiala	Patiala	Punjab
6	Bharti	Kumari	1995-12-13	Patiala	Patiala	Punjab
7	Mohit	Sharma	1993-08-15	Okhla	Delhi	Delhi
8	Ramesh	Misra	1973-08-15	New Ashok Nager	South Delhi	Delhi
9	Chhavi	N/A	1973-08-15	Merath	Merath	UP
10	Sager	Kumar	2012-02-23	Chhapra	Chhapra	Bihar
11	Ujwal	Kumar	2015-02-23	Chhapra	Chhapra	Bihar
\.


--
-- Data for Name: orderproducts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orderproducts (orderid, productid, qty, orderproductscomments) FROM stdin;
1	4	1	Delevered Tomorrow
1	1	2	Delevered on Sunday
2	3	1	Delevered on SAT
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (orderid, customerid, date, ordercomments) FROM stdin;
1	2	2020-01-15	I have ordered a Phone
2	2	2020-01-15	I have ordered a Laptop
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (productid, name, description, size, unit, productcomments) FROM stdin;
1	Mobile	High battery backup	5-INCH	2	This is Samsung phone
2	Laptop	1 TB Storage	15-INCH	2	This is HP laptop
3	Laptop	1 TB Storage and Full HD	15-INCH	5	This is Dell laptop
4	Mobile	48 MP Camera	5.5-INCH	10	This is Apple phone
5	shoe	Plastic shoe	7-INCH	10	This is Xparks Shoe
6	shoe	Lather	4-INCH	15	This is Lakhani Shoe
7	shoe	Lather	4-INCH	20	This is Woodland Shoe
8	Pen	Link is gold	4-MITER	2	This is Link Pen
\.


--
-- Name: company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);


--
-- Name: comp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comp
    ADD CONSTRAINT comp_id_fkey FOREIGN KEY (id) REFERENCES public.company(id);


--
-- Name: orderproducts_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderproducts
    ADD CONSTRAINT orderproducts_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);


--
-- Name: orderproducts_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderproducts
    ADD CONSTRAINT orderproducts_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);


--
-- Name: orders_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);


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

