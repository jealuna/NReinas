--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 11.3

-- Started on 2019-10-20 16:10:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 16404)
-- Name: resultados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resultados (
    id integer NOT NULL,
    numero_reinas integer NOT NULL,
    resultado text,
    fecha_ejecucion timestamp with time zone DEFAULT now() NOT NULL,
    numero_resultados bigint
);


ALTER TABLE public.resultados OWNER TO postgres;

--
-- TOC entry 2814 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE resultados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.resultados IS 'Almacena los resultados de las ejecuciones';


--
-- TOC entry 198 (class 1259 OID 16402)
-- Name: resultados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resultados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultados_id_seq OWNER TO postgres;

--
-- TOC entry 2815 (class 0 OID 0)
-- Dependencies: 198
-- Name: resultados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resultados_id_seq OWNED BY public.resultados.id;


--
-- TOC entry 197 (class 1259 OID 16396)
-- Name: soluciones_conocidas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soluciones_conocidas (
    id integer NOT NULL,
    numero_reinas integer NOT NULL,
    soluciones bigint NOT NULL
);


ALTER TABLE public.soluciones_conocidas OWNER TO postgres;

--
-- TOC entry 2816 (class 0 OID 0)
-- Dependencies: 197
-- Name: TABLE soluciones_conocidas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.soluciones_conocidas IS 'Almacena las soluciones conocidas al problema';


--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: soluciones_conocidas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.soluciones_conocidas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.soluciones_conocidas_id_seq OWNER TO postgres;

--
-- TOC entry 2817 (class 0 OID 0)
-- Dependencies: 196
-- Name: soluciones_conocidas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.soluciones_conocidas_id_seq OWNED BY public.soluciones_conocidas.id;


--
-- TOC entry 2678 (class 2604 OID 16407)
-- Name: resultados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados ALTER COLUMN id SET DEFAULT nextval('public.resultados_id_seq'::regclass);


--
-- TOC entry 2677 (class 2604 OID 16399)
-- Name: soluciones_conocidas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soluciones_conocidas ALTER COLUMN id SET DEFAULT nextval('public.soluciones_conocidas_id_seq'::regclass);


--
-- TOC entry 2808 (class 0 OID 16404)
-- Dependencies: 199
-- Data for Name: resultados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2806 (class 0 OID 16396)
-- Dependencies: 197
-- Data for Name: soluciones_conocidas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (1, 1, 1);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (2, 2, 0);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (3, 3, 0);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (4, 4, 2);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (5, 5, 10);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (6, 6, 4);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (7, 7, 40);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (8, 8, 92);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (9, 9, 352);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (10, 10, 724);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (11, 11, 2680);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (12, 12, 14200);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (13, 13, 73712);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (14, 14, 365596);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (15, 15, 2279184);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (16, 16, 14772512);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (17, 17, 95815104);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (18, 18, 666090624);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (19, 19, 4968057848);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (20, 20, 39029188884);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (21, 21, 314666222712);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (22, 22, 336376244042);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (23, 23, 3029242658210);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (24, 24, 227514171973736);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (26, 26, 22317699616364044);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (27, 27, 234907967154122528);
INSERT INTO public.soluciones_conocidas (id, numero_reinas, soluciones) VALUES (25, 25, 2207893435808352);


--
-- TOC entry 2818 (class 0 OID 0)
-- Dependencies: 198
-- Name: resultados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultados_id_seq', 1, true);


--
-- TOC entry 2819 (class 0 OID 0)
-- Dependencies: 196
-- Name: soluciones_conocidas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.soluciones_conocidas_id_seq', 27, true);


--
-- TOC entry 2683 (class 2606 OID 16413)
-- Name: resultados resultados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id);


--
-- TOC entry 2681 (class 2606 OID 16401)
-- Name: soluciones_conocidas soluciones_conocidas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soluciones_conocidas
    ADD CONSTRAINT soluciones_conocidas_pkey PRIMARY KEY (id);


-- Completed on 2019-10-20 16:10:26

--
-- PostgreSQL database dump complete
--

