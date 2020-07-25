--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13
-- Dumped by pg_dump version 10.13

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: secdepartamento; Type: SEQUENCE; Schema: public; Owner: Suma
--

CREATE SEQUENCE public.secdepartamento
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secdepartamento OWNER TO "Suma";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: Suma
--

CREATE TABLE public.departamentos (
    id_dep integer DEFAULT nextval('public.secdepartamento'::regclass) NOT NULL,
    departamento_dep character varying(128) NOT NULL,
    fechacreacion_dep timestamp without time zone NOT NULL,
    fechaactualizacion timestamp without time zone NOT NULL,
    fechaeliminacion timestamp without time zone NOT NULL
);


ALTER TABLE public.departamentos OWNER TO "Suma";

--
-- Name: estados; Type: TABLE; Schema: public; Owner: Suma
--

CREATE TABLE public.estados (
    id_est integer NOT NULL,
    estado_est character varying(128) NOT NULL,
    descripcion_est character varying(300),
    fechacreacion_est timestamp(0) without time zone NOT NULL,
    fechaactualizacion_est timestamp(0) without time zone NOT NULL,
    fechaeliminacion_est timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.estados OWNER TO "Suma";

--
-- Name: generos; Type: TABLE; Schema: public; Owner: Suma
--

CREATE TABLE public.generos (
    id_gen integer NOT NULL,
    genero_gen character varying(128) NOT NULL,
    descripcion_gen character varying(300),
    fechacreacion_gen timestamp(0) without time zone NOT NULL,
    fechaactualizacion_gen timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.generos OWNER TO "Suma";

--
-- Name: secpersonal; Type: SEQUENCE; Schema: public; Owner: Suma
--

CREATE SEQUENCE public.secpersonal
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secpersonal OWNER TO "Suma";

--
-- Name: personal; Type: TABLE; Schema: public; Owner: Suma
--

CREATE TABLE public.personal (
    id_per integer DEFAULT nextval('public.secpersonal'::regclass) NOT NULL,
    id_usu integer NOT NULL,
    ci_per character varying(128) NOT NULL,
    iddep_per integer NOT NULL,
    nombres_per character varying(300) NOT NULL,
    apellidos_per character varying(300) NOT NULL,
    idgen_per integer NOT NULL,
    imagen_per character varying(1024),
    fechanacimiento_per date NOT NULL,
    celtel_per character varying(128) NOT NULL,
    mail_per character varying(128) NOT NULL,
    idest_per integer NOT NULL,
    id_gru integer NOT NULL
);


ALTER TABLE public.personal OWNER TO "Suma";

--
-- Name: secusuario; Type: SEQUENCE; Schema: public; Owner: Suma
--

CREATE SEQUENCE public.secusuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secusuario OWNER TO "Suma";

--
-- Name: user; Type: TABLE; Schema: public; Owner: Suma
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    nombres character varying(255) DEFAULT NULL::character varying,
    apellidos character varying(255) DEFAULT NULL::character varying,
    usuario character varying(255),
    password text,
    fecha_registro character varying(255)
);


ALTER TABLE public."user" OWNER TO "Suma";

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: Suma
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO "Suma";

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Suma
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: Suma
--

COPY public.departamentos (id_dep, departamento_dep, fechacreacion_dep, fechaactualizacion, fechaeliminacion) FROM stdin;
1	Beni	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
2	Chuquisaca	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
3	Cochabamba	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
4	La Paz	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
5	Oruro	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
6	Pando	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
7	Potosi	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
8	Santa Cruz	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
9	Tarija	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
\.


--
-- Data for Name: estados; Type: TABLE DATA; Schema: public; Owner: Suma
--

COPY public.estados (id_est, estado_est, descripcion_est, fechacreacion_est, fechaactualizacion_est, fechaeliminacion_est) FROM stdin;
1	Activado	Para estados que estan activos, activados o iniciados	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
2	Desactivado	Para estados que estan desactivados, para aquellos que estan eliminados, o para quitar	2020-07-24 12:07:01	2020-07-24 12:07:01	2020-07-24 12:07:01
\.


--
-- Data for Name: generos; Type: TABLE DATA; Schema: public; Owner: Suma
--

COPY public.generos (id_gen, genero_gen, descripcion_gen, fechacreacion_gen, fechaactualizacion_gen) FROM stdin;
1	Femenino		2020-07-24 12:07:01	2020-07-24 12:07:01
2	Masculino		2020-07-24 12:07:01	2020-07-24 12:07:01
\.


--
-- Data for Name: personal; Type: TABLE DATA; Schema: public; Owner: Suma
--

COPY public.personal (id_per, id_usu, ci_per, iddep_per, nombres_per, apellidos_per, idgen_per, imagen_per, fechanacimiento_per, celtel_per, mail_per, idest_per, id_gru) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: Suma
--

COPY public."user" (id, nombres, apellidos, usuario, password, fecha_registro) FROM stdin;
1	Lani	Blair	Tortor Nunc Limited	iaculis	16/03/2020
2	Pearl	Spencer	Rutrum Company	eu	03/10/2020
3	Odette	Nolan	Nunc LLP	lacus	22/10/2020
4	Tara	Frank	Morbi Non Sapien Incorporated	egestas.	07/01/2020
5	Kellie	Koch	Duis A Consulting	sit	28/10/2019
6	Alana	Stephenson	Quis Corporation	eget	02/08/2019
7	Trevor	Townsend	Lacinia Vitae Sodales Ltd	sed	30/01/2020
8	Alexander	Watkins	Imperdiet Ullamcorper Duis LLC	Morbi	18/10/2020
9	Amal	Quinn	Proin Dolor Nulla Incorporated	nulla.	05/11/2019
10	Zahir	Landry	Libero Dui Incorporated	vel,	24/11/2019
11	Clark	Blankenship	Mauris Erat Company	Phasellus	31/07/2019
12	Rooney	Rivers	Duis Ltd	sit	10/07/2020
13	Caesar	Conway	Mi Pede Nonummy PC	iaculis	06/01/2020
14	Grace	Goodwin	Faucibus Lectus A Consulting	Vestibulum	24/11/2019
15	Erich	Gill	Neque Nullam Nisl Foundation	aliquam	07/12/2020
16	Dale	Solomon	Justo Eu Arcu LLC	Etiam	20/11/2020
17	Natalie	Kirk	Velit Eget Limited	a	26/10/2019
18	Carter	Christian	Dolor Quam Elementum Company	risus.	19/04/2021
19	Simone	Whitaker	Nulla Associates	sociis	26/12/2020
20	Isaiah	Schneider	Dolor Vitae Company	Fusce	22/04/2020
21	Regan	Shelton	Ligula Industries	quis	13/11/2020
22	Anika	Nolan	Lectus Industries	Donec	18/06/2020
23	Palmer	Carey	Mus Proin Vel Limited	interdum.	31/12/2019
24	Ivory	Ingram	Metus Aliquam Inc.	amet	27/05/2021
25	Sylvia	David	Duis Corporation	sem,	19/06/2020
26	Lewis	Gregory	Vulputate Posuere Vulputate PC	tellus.	03/02/2021
27	Martin	Finley	Augue Sed Industries	eget	16/05/2021
28	Phoebe	Pitts	Leo Cras Corp.	enim	19/04/2021
29	Myra	Stafford	Posuere Institute	sapien	07/12/2020
30	Noah	Chen	Pede Praesent Eu Consulting	sed	22/04/2020
31	Haviva	Diaz	Eget Associates	libero	15/10/2019
32	Macey	Johnston	Duis Risus Foundation	ac	12/03/2021
33	Cadman	Horne	Massa Rutrum Company	justo.	04/12/2020
34	Phillip	Franklin	Mollis Associates	orci	16/01/2021
35	Brynn	Perkins	Lectus Pede Ultrices Company	vel,	19/09/2019
36	Sloane	Sanford	Placerat Incorporated	enim.	19/10/2020
37	Amethyst	Blackwell	Commodo Tincidunt LLP	Nullam	07/01/2020
38	Rosalyn	Lee	Gravida Industries	metus	02/12/2020
39	Gillian	Beach	Porttitor Scelerisque Foundation	sapien.	01/11/2020
40	Tara	Dean	Sagittis Semper Nam Industries	tincidunt.	05/02/2021
41	Darius	Cook	Lectus Rutrum Consulting	dapibus	27/02/2020
42	Hanae	Jimenez	Dolor Sit Amet Company	cursus	26/08/2019
43	Hamish	Stein	Commodo Hendrerit Corporation	faucibus	10/12/2019
44	Emerald	Carney	Varius Ultrices Mauris Institute	id,	05/04/2020
45	Armando	Velasquez	Ligula LLP	ante	19/05/2021
46	Alma	Pope	Cursus Et Eros Limited	lorem	18/06/2021
47	Barrett	Dickson	Semper Et Lacinia Corp.	pellentesque.	04/09/2020
48	Yardley	Hodge	A Magna Lorem Limited	ornare.	22/01/2020
49	Zeus	Ellis	Pharetra Corp.	Donec	06/12/2020
50	Rhiannon	Todd	Maecenas Libero Est Corporation	Nam	08/11/2019
51	Colt	Evans	Semper Pretium Neque Industries	Quisque	13/02/2020
52	Hillary	Mcgee	Id Blandit Associates	dui.	22/04/2021
53	Ralph	Terrell	Mollis Nec Cursus Ltd	faucibus	26/05/2021
54	Olga	Garcia	Dapibus Ligula Aliquam Corp.	tincidunt,	21/04/2020
55	Isaiah	Lynch	Nibh Corp.	rutrum.	18/11/2020
56	Sybil	Calderon	Dis Parturient Foundation	malesuada.	03/06/2020
57	Hashim	Floyd	Penatibus Et Associates	Cras	22/04/2020
58	Desiree	Roman	Vivamus Rhoncus Donec LLC	dui.	13/08/2020
59	Regina	Hansen	Iaculis Aliquet Diam Consulting	lorem	20/05/2021
60	Grant	Joyner	Lorem Ipsum Consulting	iaculis	06/11/2020
61	Chava	Blair	Libero Est Congue Foundation	nulla	01/08/2020
62	Whilemina	Bauer	Ac LLC	sociis	08/04/2020
63	Hayes	Mayer	Vivamus Rhoncus Company	Quisque	10/12/2020
64	Darrel	Hays	Erat Etiam Corporation	senectus	18/03/2021
65	Hayden	Page	Ut PC	natoque	16/06/2021
66	Kevin	Ingram	Est Nunc Industries	nulla	29/05/2021
67	Hashim	Parrish	Suspendisse Sed Dolor Company	odio	28/02/2021
68	Sylvia	Benjamin	Urna Corporation	consectetuer	18/06/2020
69	Lane	Nunez	Dolor Tempus PC	hendrerit	10/10/2020
70	Grace	Cabrera	A Facilisis Inc.	et,	05/01/2020
71	Salvador	Harmon	Fusce Fermentum Fermentum PC	ridiculus	26/07/2019
72	Bruce	Gould	Tellus Nunc Company	ac	16/09/2020
73	Hadassah	Hampton	Quisque LLP	eu	12/04/2021
74	Keaton	Mccoy	Nascetur LLP	lectus	08/09/2020
75	Wynter	Ortega	Tellus Faucibus Company	Cras	19/12/2019
76	Rhea	Delaney	Quisque Company	mattis	12/08/2019
77	Madeline	Rollins	Mollis Vitae Posuere Corporation	luctus,	21/03/2021
78	Shellie	Irwin	Leo Elementum LLP	vestibulum,	10/02/2020
79	Gail	Singleton	Facilisis Incorporated	Duis	07/08/2020
80	Vera	Dyer	Dapibus Incorporated	tellus	18/03/2020
81	Allistair	Morales	Mi Lorem Vehicula Industries	scelerisque	28/04/2020
82	Dominic	Nichols	Auctor Consulting	egestas.	12/04/2021
83	Cally	Hicks	Convallis Est Vitae Foundation	dapibus	04/11/2020
84	Neve	Orr	Tellus Faucibus Leo Foundation	Duis	04/08/2020
85	Linus	Hull	Montes Nascetur Ridiculus Foundation	amet	14/10/2019
86	Cooper	George	Urna Nec Luctus Associates	ultrices.	27/06/2021
87	Henry	Campos	Nisi A Odio PC	consectetuer	17/01/2020
88	August	Bray	Vitae Sodales Company	eget	10/06/2021
89	Ursa	Bennett	Lobortis Augue Scelerisque Corporation	nisi	06/07/2021
90	Lillith	Farrell	Nibh Lacinia Orci PC	orci.	01/08/2020
91	Deborah	Odonnell	Fusce Aliquam Consulting	non,	05/06/2021
92	Teegan	Boone	Ipsum Foundation	convallis	01/11/2019
93	Winifred	Sanford	Suspendisse Commodo Tincidunt Company	sem	05/02/2020
94	Alyssa	Russo	Montes LLC	nisi	19/11/2020
95	Angelica	Casey	Neque Et Corp.	dui,	08/02/2020
96	Michael	Ayers	Consequat Limited	varius	10/04/2020
97	Vance	Whitehead	Natoque Incorporated	a,	27/09/2020
98	Bradley	Warner	Adipiscing Enim Mi Limited	ornare	09/12/2020
99	Kyle	Diaz	Ligula Donec Limited	sodales	17/02/2020
100	Alana	Hurst	Quis Tristique Ac Ltd	amet	16/02/2021
\.


--
-- Name: secdepartamento; Type: SEQUENCE SET; Schema: public; Owner: Suma
--

SELECT pg_catalog.setval('public.secdepartamento', 9, true);


--
-- Name: secpersonal; Type: SEQUENCE SET; Schema: public; Owner: Suma
--

SELECT pg_catalog.setval('public.secpersonal', 15, true);


--
-- Name: secusuario; Type: SEQUENCE SET; Schema: public; Owner: Suma
--

SELECT pg_catalog.setval('public.secusuario', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Suma
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- Name: estados estados_id_est_key; Type: CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_id_est_key UNIQUE (id_est);


--
-- Name: departamentos pkid_dep; Type: CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT pkid_dep PRIMARY KEY (id_dep);


--
-- Name: generos pkid_gen; Type: CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT pkid_gen PRIMARY KEY (id_gen);


--
-- Name: personal pkid_per; Type: CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT pkid_per PRIMARY KEY (id_per);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: personal fkid_gen; Type: FK CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT fkid_gen FOREIGN KEY (idgen_per) REFERENCES public.generos(id_gen);


--
-- Name: personal fkidest_per; Type: FK CONSTRAINT; Schema: public; Owner: Suma
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT fkidest_per FOREIGN KEY (idest_per) REFERENCES public.estados(id_est);


--
-- PostgreSQL database dump complete
--

