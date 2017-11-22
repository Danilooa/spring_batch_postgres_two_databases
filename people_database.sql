--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.15
-- Dumped by pg_dump version 9.4.15
-- Started on 2017-11-22 14:10:12 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11895)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 174 (class 1259 OID 5535009)
-- Name: id_person_seq; Type: SEQUENCE; Schema: public; Owner: channel
--

CREATE SEQUENCE id_person_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_person_seq OWNER TO channel;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 5535002)
-- Name: people; Type: TABLE; Schema: public; Owner: channel; Tablespace: 
--

CREATE TABLE people (
    id_person integer DEFAULT nextval('id_person_seq'::regclass),
    first_name character varying(50),
    last_name character varying(50)
);


ALTER TABLE people OWNER TO channel;

--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 174
-- Name: id_person_seq; Type: SEQUENCE SET; Schema: public; Owner: channel
--

SELECT pg_catalog.setval('id_person_seq', 43, true);


--
-- TOC entry 2030 (class 0 OID 5535002)
-- Dependencies: 173
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: channel
--

COPY people (id_person, first_name, last_name) FROM stdin;
1	\N	\N
2	\N	\N
3	JILL	DOE
4	JILL	DOE
5	JOE	DOE
6	JUSTIN	DOE
7	JANE	DOE
8	JOHN	DOE
9	JILL	DOE
10	JOE	DOE
11	JUSTIN	DOE
12	JANE	DOE
13	JOHN	DOE
14	JILL	DOE
15	JOE	DOE
16	JUSTIN	DOE
17	JANE	DOE
18	JOHN	DOE
19	JILL	DOE
20	JOE	DOE
21	JUSTIN	DOE
22	JANE	DOE
23	JOHN	DOE
24	JILL	DOE
25	JOE	DOE
26	JUSTIN	DOE
27	JANE	DOE
28	JOHN	DOE
29	JILL	DOE
30	JOE	DOE
31	JUSTIN	DOE
32	JANE	DOE
33	JOHN	DOE
34	JILL	DOE
35	JOE	DOE
36	JUSTIN	DOE
37	JANE	DOE
38	JOHN	DOE
39	JILL	DOE
40	JOE	DOE
41	JUSTIN	DOE
42	JANE	DOE
43	JOHN	DOE
\.


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-11-22 14:10:12 BRST

--
-- PostgreSQL database dump complete
--

