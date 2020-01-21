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
-- Name: aircraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aircraft (
    aid integer NOT NULL,
    aname character varying NOT NULL,
    cruisingrange integer NOT NULL
);


ALTER TABLE public.aircraft OWNER TO postgres;

--
-- Name: certified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certified (
    eid integer,
    aid integer
);


ALTER TABLE public.certified OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    eid integer NOT NULL,
    ename character varying NOT NULL,
    salary integer NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    flno integer NOT NULL,
    "from" character varying NOT NULL,
    "to" character varying NOT NULL,
    distance integer NOT NULL,
    departs time without time zone NOT NULL,
    arrives time without time zone NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- Data for Name: aircraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aircraft (aid, aname, cruisingrange) FROM stdin;
50001	GoAir	5000
50002	IndiGo	10000
50003	SpiceJet	20000
50004	Vistara	15000
50005	Star Air	15000
50006	TruJet	12000
50007	Zoom AIr	5000
50008	Pawan Hans	500
50009	Deccan Charters	900
\.


--
-- Data for Name: certified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certified (eid, aid) FROM stdin;
101	50001
101	50002
101	50003
101	50004
101	50005
101	50006
101	50007
101	50003
102	50003
103	50003
104	50003
105	50003
106	50003
107	50003
108	50003
109	50003
1010	50003
1011	50003
1012	50003
1013	50003
1010	50002
108	50002
108	50006
108	50005
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (eid, ename, salary) FROM stdin;
101	Pankaj	100000
102	Pavan	10000
103	Chhavi	80000
104	Saurabh	70000
105	Ashutosh	65000
106	Aman	95000
107	Moti	55000
108	Ramesh	80000
109	Bharti	40000
1010	Naveen	80000
1011	Praveen	80000
1012	Sager	85000
1013	Raju	56000
1014	Ashutosh	65000
1015	Ashu	36000
1016	Manish	75000
1017	Aders	45000
\.


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (flno, "from", "to", distance, departs, arrives, price) FROM stdin;
20001	Delhi	Mumbai	1700	01:10:00	02:50:00	5000
20002	Delhi	Patna	1000	05:10:00	05:55:00	3000
20003	Patna	Banglore	3000	09:30:00	12:00:00	7000
20004	Patna	Chandigarh	1200	06:30:00	08:00:00	2500
20005	Delhi	Chandigarh	300	01:30:00	02:00:00	2000
20006	Delhi	London	30000	01:30:00	12:00:00	75000
20007	Delhi	New Yark	30000	01:30:00	12:00:00	75000
20008	London	New Yark	30000	01:30:00	12:00:00	75000
\.


--
-- Name: aircraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (aid);


--
-- Name: employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (eid);


--
-- Name: flights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (flno);


--
-- Name: certified_aid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_aid_fkey FOREIGN KEY (aid) REFERENCES public.aircraft(aid);


--
-- Name: certified_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_eid_fkey FOREIGN KEY (eid) REFERENCES public.employees(eid);


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

