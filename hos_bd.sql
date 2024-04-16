--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-16 11:41:47

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16653)
-- Name: answers_biology; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers_biology (
    id integer NOT NULL,
    id_questions integer,
    answer character varying(100),
    right_answer integer
);


ALTER TABLE public.answers_biology OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16669)
-- Name: answers_geography; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers_geography (
    id integer NOT NULL,
    id_questions integer NOT NULL,
    answer character(500) NOT NULL,
    right_answer integer
);


ALTER TABLE public.answers_geography OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16668)
-- Name: answers_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_geography_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.answers_geography_id_seq OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 219
-- Name: answers_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_geography_id_seq OWNED BY public.answers_geography.id;


--
-- TOC entry 215 (class 1259 OID 16652)
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.answers_id_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 215
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers_biology.id;


--
-- TOC entry 223 (class 1259 OID 16689)
-- Name: answers_physics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers_physics (
    id integer NOT NULL,
    id_questions integer NOT NULL,
    answer character(500) NOT NULL,
    right_answer integer NOT NULL
);


ALTER TABLE public.answers_physics OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16692)
-- Name: answers_physics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_physics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.answers_physics_id_seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 224
-- Name: answers_physics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_physics_id_seq OWNED BY public.answers_physics.id;


--
-- TOC entry 232 (class 1259 OID 16777)
-- Name: currency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency (
    short_name character varying(3),
    full_name character varying(50)
);


ALTER TABLE public.currency OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16774)
-- Name: currency_courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency_courses (
    date date,
    currency_from character varying(10),
    currency_to character varying(10),
    currency_close numeric(19,2),
    currency_previous_close numeric(19,2)
);


ALTER TABLE public.currency_courses OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16764)
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16769)
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16788)
-- Name: limits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.limits (
    id integer NOT NULL,
    user_account character varying(10),
    account_limit numeric(19,2),
    balance numeric(19,2),
    category character varying(255),
    setting_date date
);


ALTER TABLE public.limits OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16787)
-- Name: limits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.limits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.limits_id_seq OWNER TO postgres;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 235
-- Name: limits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.limits_id_seq OWNED BY public.limits.id;


--
-- TOC entry 225 (class 1259 OID 16702)
-- Name: questions_physics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions_physics (
    id integer NOT NULL,
    question character(500) NOT NULL,
    explanation character(500) NOT NULL
);


ALTER TABLE public.questions_physics OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16705)
-- Name: question_physics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_physics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_physics_id_seq OWNER TO postgres;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 226
-- Name: question_physics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_physics_id_seq OWNED BY public.questions_physics.id;


--
-- TOC entry 218 (class 1259 OID 16660)
-- Name: questions_biology; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions_biology (
    id integer NOT NULL,
    question character varying(100),
    explanation character varying(500)
);


ALTER TABLE public.questions_biology OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16679)
-- Name: questions_geography; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions_geography (
    id integer NOT NULL,
    question character(500) NOT NULL,
    explanation character(500) NOT NULL
);


ALTER TABLE public.questions_geography OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16678)
-- Name: questions_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_geography_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_geography_id_seq OWNER TO postgres;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 221
-- Name: questions_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_geography_id_seq OWNED BY public.questions_geography.id;


--
-- TOC entry 217 (class 1259 OID 16659)
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
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 217
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions_biology.id;


--
-- TOC entry 228 (class 1259 OID 16716)
-- Name: register; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register (
    id integer NOT NULL,
    description character(1100) NOT NULL,
    picture character(500),
    title character(500) NOT NULL
);


ALTER TABLE public.register OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16715)
-- Name: repository_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.repository_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.repository_id_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 227
-- Name: repository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.repository_id_seq OWNED BY public.register.id;


--
-- TOC entry 234 (class 1259 OID 16781)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    account_from character varying(10),
    account_to character varying(10),
    currency_short_name character varying(3),
    datetime timestamp without time zone,
    expense_category character varying(255),
    limit_exceeded boolean,
    sum numeric(19,2)
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16780)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_id_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 233
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 4744 (class 2604 OID 16794)
-- Name: answers_biology id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers_biology ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- TOC entry 4746 (class 2604 OID 16795)
-- Name: answers_geography id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers_geography ALTER COLUMN id SET DEFAULT nextval('public.answers_geography_id_seq'::regclass);


--
-- TOC entry 4748 (class 2604 OID 16796)
-- Name: answers_physics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers_physics ALTER COLUMN id SET DEFAULT nextval('public.answers_physics_id_seq'::regclass);


--
-- TOC entry 4752 (class 2604 OID 16797)
-- Name: limits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limits ALTER COLUMN id SET DEFAULT nextval('public.limits_id_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 16798)
-- Name: questions_biology id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions_biology ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 16799)
-- Name: questions_geography id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions_geography ALTER COLUMN id SET DEFAULT nextval('public.questions_geography_id_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 16800)
-- Name: questions_physics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions_physics ALTER COLUMN id SET DEFAULT nextval('public.question_physics_id_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 16801)
-- Name: register id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register ALTER COLUMN id SET DEFAULT nextval('public.repository_id_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 16802)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 4922 (class 0 OID 16653)
-- Dependencies: 216
-- Data for Name: answers_biology; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (1, 1, 'атмосфера земли излучает голубой свет при взаимодействии с излучением солнца', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (2, 1, 'мы видим суммарный свет огромного количества голубых звёзд', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (3, 1, 'в атмосфере земли синяя составляющая спектра солнечного света рассеивается больше чем остальные сост', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (4, 1, 'синий самый красивый цвет', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (5, 2, 'солнце имеет циклическое суточное изменение интенсивности света и цвета', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (6, 2, 'свет, идущий от солнца, претерпевает рассеяние и поглощение в атмосфере земли
', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (7, 2, 'глаза воспринимают по-разному спектр света разной интенсивности
', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (8, 2, 'зависит от плотности облаков', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (9, 3, 'Лев', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (10, 3, 'Тигр', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (11, 4, 'От одиночества', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (12, 4, 'От голода', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (13, 4, 'От скуки', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (14, 4, 'Предупреждая остальных волков', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (15, 5, 'Акулы', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (16, 5, 'Динозавры', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (17, 6, 'Танцует от страха', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (18, 6, 'Танцует, только если нравится музыка', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (19, 6, 'Кобра не слышит музыку', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (20, 6, 'Не танцует, если не хочет', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (21, 7, 'Паутина крепче', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (22, 7, 'Сталь крепче', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (23, 7, 'Зависит от температуры в комнате', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (24, 7, 'Зависит от настроения паука', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (25, 8, 'Глотает по частям', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (26, 8, 'Может проглатить человека целиком', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (27, 8, 'Акула питается только планктоном', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (28, 8, 'Акула ест только сладости', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (29, 9, 'Каждые 5 месяцев', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (30, 9, 'Каждый год', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (31, 9, 'Каждые 8-10 дней', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (32, 9, 'Один раз за всю жизнь', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (33, 10, 'Лазают по деревьям', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (34, 10, 'Летают от скуки', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (35, 10, 'Едят камни', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (36, 10, 'Поют песни', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (37, 11, 'Муравьед', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (38, 11, 'Козёл', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (39, 11, 'Жираф', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (40, 11, 'Панда', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (41, 12, 'Муравей', 1);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (42, 12, 'Сороконожка', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (43, 12, 'Червяк', 0);
INSERT INTO public.answers_biology (id, id_questions, answer, right_answer) VALUES (44, 12, 'Кузнечик', 0);


--
-- TOC entry 4926 (class 0 OID 16669)
-- Dependencies: 220
-- Data for Name: answers_geography; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (1, 1, 'Можно                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (2, 1, 'Нельзя                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (3, 2, 'Вулкан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (4, 2, 'Медведи                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (5, 2, 'Ученики                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (6, 2, 'Кошки                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (7, 3, 'Антарктида                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (8, 3, 'Атлантида                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (9, 3, 'Канада                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (10, 3, 'Чехия                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (11, 4, 'Кошки                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (12, 4, 'Мышки                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (13, 4, 'Пташки                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (14, 4, 'Букашки                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (15, 5, 'Старый Карапуз                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (16, 5, 'Большой Лапух                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (17, 5, 'Гигантский Жмых                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (18, 5, 'Великий Нытик                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (19, 6, 'Гренландия                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (20, 6, 'Новая Гвинея                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (21, 6, 'Калимантан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (22, 6, 'Мадагаскар                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (23, 7, 'Австралия                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (24, 7, 'Антарктида                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (25, 7, 'Евразия                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (26, 7, 'Африка                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (27, 8, 'Эверест                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (28, 8, 'Чогори                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (29, 8, 'Канченджанга                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (30, 8, 'Лхоцзе                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (31, 9, 'Тихий океан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (32, 9, 'Индийский океан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (33, 9, 'Атлантический океан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (34, 9, 'Северный Ледовитый океан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (35, 10, 'Арктика                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (36, 10, 'Антарктика                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (37, 10, 'Африка                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (38, 10, 'Троицк                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (39, 11, 'Санкт-Петербург                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (40, 11, 'Тамбов                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (41, 11, 'Екатеринбург                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (42, 11, 'Москва                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (43, 12, 'Китай                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (44, 12, 'Узбекистан                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (45, 12, 'Россия                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (46, 12, 'Нетландия                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (47, 13, 'Капитан Кук                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (48, 13, 'Юрий Гагарин                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (49, 13, 'Филеас Фогг                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (50, 13, 'Христофор Колумб                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (51, 14, 'Атлантический                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (52, 14, 'Млечный                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (53, 14, 'Индийский                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (54, 14, 'Платонический                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (55, 15, 'Индийский                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (56, 15, 'Атлантический                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (57, 15, 'Южный                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 0);
INSERT INTO public.answers_geography (id, id_questions, answer, right_answer) VALUES (58, 15, 'Северный Ледовитый                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', 0);


--
-- TOC entry 4929 (class 0 OID 16689)
-- Dependencies: 223
-- Data for Name: answers_physics; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (1, 1, 'Процесс круговорота воды                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (2, 1, 'Из-за способности воды утолять жажду                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (3, 1, 'Из-за колличества рук и морей в мире                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (4, 1, 'Вода просто вкусная                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (5, 2, 'Из-за температуры испаряющейся жидкости                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (6, 2, 'Из-за температуры белья                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (7, 2, 'Зависит от влажности                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (8, 2, 'Зависит от балкона                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (9, 3, 'Холодный пар превращается в воду                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (10, 3, 'Лишняя вода выделяется из растений                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (11, 3, 'Образуется после дождя                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (12, 3, 'Кто-то за ночь поливает кустарники                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (13, 4, 'С поверхности идёт испарение                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (14, 4, 'Моря слишком глубокие                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (15, 4, 'Берега у моря увеличиваются со временем                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (16, 4, 'Лишнюю воду постоянно откачивают                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (18, 5, 'Грунтовые воды не нагреваются солнцем                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (19, 5, 'Температура Земли холодная                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (20, 5, 'Грунтовые воды текут с гор                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (21, 5, 'Внутри колодцев устанавливают холодильные установки                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (22, 6, 'Берега замедляют течение воды                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (23, 6, 'Испарение замедляет скорость течения воды                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (24, 6, 'Мешают волнорезы                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (25, 6, 'В середине реки рыбы разгоняют скорость течения                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (26, 7, 'Различий нет - это одно и тоже                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (27, 7, 'Сходств нет - облако и туман ничем не похожи                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (28, 7, 'Только в том, что туман стелится по земеле,а облако в небе                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (29, 7, 'В облаке происходят грозовые процессы                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (30, 8, 'Для выхода лишнего пара                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 1);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (31, 8, 'Для красоты                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (32, 8, 'Для того, чтобы был свист                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 0);
INSERT INTO public.answers_physics (id, id_questions, answer, right_answer) VALUES (33, 8, 'Чтобы крышка оставалась на месте                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', 0);


--
-- TOC entry 4938 (class 0 OID 16777)
-- Dependencies: 232
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4937 (class 0 OID 16774)
-- Dependencies: 231
-- Data for Name: currency_courses; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4935 (class 0 OID 16764)
-- Dependencies: 229
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('raw', 'includeAll', 'db/changelog/db.changelog-1.0.sql', '2024-04-05 15:46:02.213483', 1, 'EXECUTED', '9:6d5521f74c10f09a2011f81b83193d0f', 'sql', '', NULL, '4.27.0', NULL, NULL, '2321162171');
INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('raw', 'includeAll', 'db/changelog/db.changelog-1.0.sql', '2024-04-05 15:46:02.213483', 1, 'EXECUTED', '9:6d5521f74c10f09a2011f81b83193d0f', 'sql', '', NULL, '4.27.0', NULL, NULL, '2321162171');


--
-- TOC entry 4936 (class 0 OID 16769)
-- Dependencies: 230
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.databasechangeloglock (id, locked, lockgranted, lockedby) VALUES (1, false, NULL, NULL);


--
-- TOC entry 4942 (class 0 OID 16788)
-- Dependencies: 236
-- Data for Name: limits; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4924 (class 0 OID 16660)
-- Dependencies: 218
-- Data for Name: questions_biology; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.questions_biology (id, question, explanation) VALUES (1, 'Почему небо голубое?', 'Оптический диапазон человеческого глаза может достигнуть лишь синего спектра волны света. Свет с короткой длиной волны рассеивается в большей степени. А самая короткая длина волны для глаза — это синяя, поэтому синий свет заполняет все небо и мы видим его голубым.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (2, 'Почему солнце на горизонте и в зените имеет разный цвет?', 'Солнечный свет состоит из волн, которые соответствуют  разным цветам (спектр света). Когда солнце находится возле горизонта, то свет,  претерпевая поглощение и рассеяние, проходит больший путь в атмосфере земли. При этом волны соответствующие  синему цвету поглощаются и рассеиваются больше чем волны соответствующие красному цвету. Поэтому до наблюдателя доходит в основном красная составляющая спектра и солнце кажется красным.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (8, 'Китовая акула проглатывает человека целиком?', 'Китовая акула питается только планктоном');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (3, 'Кто сильнее : лев или тигр?', 'В дикой природе хищники встречаются друг с другом редко. Сосуществуют они только в Индии, в Гирском лесу. Однако, у обеих кошек есть свои преимущества. Тигр большую часть своей жизни охотится в одиночку и имеет большую мышечную массу. Он больше и тяжелее по весу. Кроме того, у них более острые и длинные клыки и когти. Львы, с другой стороны, более жизнерадостны и храбры. Львы также имеют опыт борьбы с другими львами в дикой природе, чтобы защитить свой прайд, чего не хватает тиграм.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (4, 'Почему волки воют на луну?', 'Воющие по ночам волки предупреждают волков из других стай, чтобы те покинули чужую территорию.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (5, 'Кто старше акулы или динозавры?', 'Палеонтологи пришли к выводу, что первые акулоподобные организмы возникли примерно 400 – 450 миллионов лет назад. А эпоха динозавров началась вместе с мезозойской эрой, а именно, с первым из ее трех периодов — триасовым. Он длился на Земле примерно 248−213 млн. лет назад.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (6, 'Кобра действительно танцует под звуки дудочки факира?', 'Кобра не способна слышать музыку. Когда с корзины со змеей факир снимает крышку, кобра приподнимается, готовясь к защите, а затем следует за движениями дудочки, готовясь к атаке.)');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (7, 'Насколько крепкая паутина по сравнению со сталью?', 'Предельное напряжение на разрыв каркасной нити паука Araneus diadematus составляет 1,1—2,7 ГПа. Для сравнения: предел прочности стали 0,4—1,5 ГПа, человеческого волоса — 0,25 ГПа.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (9, 'Как часто у акулы отрастают новые зубы?', 'Острые, как бритва зубы акул вырастают всего за 10 дней! Люди могут сменить зубы только один раз в своей жизни, но акулы могут заменить любой из их зубов бесконечное количество раз. Считается, что они изменяют приблизительно 30.000 зубов за весь период своей жизни');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (10, 'Какой необычный талант есть у крокодилов?', 'Молодые крокодилы хорошо лазают по деревьям и часто отдыхают на ветвях');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (11, 'У какого животного самый длинный язык?', 'Абсолютный рекорд, согласно книге Гиннеса, принадлежит гигантскому муравьеду: есть свидетельства, как обитатель южноамериканских саванн «показывал» язык длиной 61 см.');
INSERT INTO public.questions_biology (id, question, explanation) VALUES (12, 'Какое насекомое может поднять груз в 10 раз превышающий его собственный вес?', 'Муравьи давно известны как выдающиеся тяжелоатлеты животного мира. Способности у разных видов могут отличаться, однако некоторые могут поднимать груз, масса которого от 10 до 50 раз превышает массу тела');


--
-- TOC entry 4928 (class 0 OID 16679)
-- Dependencies: 222
-- Data for Name: questions_geography; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.questions_geography (id, question, explanation) VALUES (1, 'Можно ли в Европейской части России встретить «Кобру» длиной 324 
километра?                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 'Кобра - это река, правый приток реки Вятки.                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (2, '... они бывают «спящими», действующими и недействующими, а у Карла 
Брюллова есть картина о том, как один из них проснулся. О чем идет речь?                                                                                                                                                                                                                                                                                                                                                                        ', 'Вулкан — это гора, имеющая жерло, которое уходит глубоко вниз к бассейну с магмой. Магма — это расплавленная масса горных пород, находящаяся под земной корой.

При повышении давления происходит извержение. Камни, газ, пепел и магма выходят из жерла вулкана.

Большинство вулканов находятся возле краёв тектонических плит, там магме легче вырваться наружу.                                                                                                                                                 ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (3, 'В этом географическом объекте нет рек, так как там никогда не идут 
дожди, нет там (и никогда не было) топонимов.                                                                                                                                                                                                                                                                                                                                                                                                   ', 'Антаркти́да — континент, расположенный на самом юге Земли. Центр Антарктиды примерно совпадает с Южным географическим полюсом. Топонимы - это собственные имена рек, озер, болот, населенных пунктов, улиц, отдельных частей рельефа, или иначе географические названия.                                                                                                                                                                                                                                            ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (4, 'Какого города в Самарской области боятся мыши?                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', 'Кошки                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (5, 'Какая река в Новосибирской области жалуется на свою величину и возраст?                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 'Старый Карапуз                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (7, 'Самый маленький материк?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 'Австралия - государство в Южном полушарии, занимающее одноимённый материк, остров Тасмания и несколько других островов Индийского и Тихого океанов. является шестым государством по площади в мире.                                                                                                                                                                                                                                                                                                                 ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (8, 'Самые высокие горы на Земле?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 'Горная система Гималаев, в которую входит Эверест, на стыке Центральной и Южной Азии имеет свыше 2900 км в длину и около 350 км в ширину. Площадь составляет приблизительно 650 тыс. км²                                                                                                                                                                                                                                                                                                                            ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (9, 'Самый большой океан?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 'Ти́хий океа́н — самый большой по площади и глубине океан на Земле. Расположен между материками Евразией и Австралией на западе, Северной и Южной Америкой на востоке, Антарктидой на юге.                                                                                                                                                                                                                                                                                                                           ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (13, 'Кто и когда совершил кругосветное путешествие за 108 минут?                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', '12 апреля 1961 года Юрий Гагарин стал первым человеком в мировой истории, совершившим полёт в космическое пространство. Ракета-носитель «Восток» с кораблём «Восток-1», на борту которого находился Гагарин, была запущена с космодрома Байконур, расположенного в Кызылординской области Казахской ССР. После 108 минут полёта Гагарин успешно приземлился в Саратовской области, неподалёку от Энгельса. 12 апреля 1961 года, день полёта Юрия Гагарина в космос, был объявлен праздником — Днём космонавтики.    ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (14, 'Какой океан назван в честь героя греческой мифологии?                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 'Атлантический океан.  Атла́нт — в древнегреческой мифологии могучий титан, держащий на плечах небесный свод. Истории об этом персонаже в произведениях античной литературы противоречивы и содержат взаимоисключающие утверждения. По наиболее распространённой версии, участвовал в битве титанов с олимпийскими богами. После поражения Зевс низвергнул титанов в Тартар, а Атланту положил на плечи небесный свод.                                                                                               ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (11, 'В каком городе был открыт первый музей в России- Кунсткамера?                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', 'Санкт-Петербург — второй по численности населения город России. Основан 16 мая 1703 года царём Петром I. В 1714—1728 и 1732—1918 годах — столица Российского государства. Назван в честь святого Петра — небесного покровителя царя-основателя, но со временем стал всё больше ассоциироваться с именем самого Петра I.                                                                                                                                                                                             ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (16, 'Самый теплый океан носит название страны, которую омывает.                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 'Индийский океан.Индия- независимое государство в Южной Азии. Занимает первое место в мире по численности населения и седьмое по территории. Наравне с Египтом и Китаем является родиной одной из древнейших цивилизаций в истории человечества. В прошлом — одна из важнейших колониальных провинций Британской империи.                                                                                                                                                                                            ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (6, 'Самый крупный остров?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 'Гренландия — крупнейший на Земле остров. Расположен на северо-востоке Северной Америки                                                                                                                                                                                                                                                                                                                                                                                                                              ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (10, 'Где живут белые медведи?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 'Арктика — единый физико-географический район Земли, примыкающий к Северному полюсу и включающий окраины материков Евразии и Северной Америки, почти весь Северный Ледовитый океан с островами (кроме прибрежных островов Норвегии), а также прилегающие части Атлантического и Тихого океанов.                                                                                                                                                                                                                      ');
INSERT INTO public.questions_geography (id, question, explanation) VALUES (12, 'В каком государстве изобрели компас?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 'Китай, официальное название — Кита́йская Наро́дная Респу́блика (сокр. КНР) — государство в Восточной Азии. Занимает 4-е место в мире по территории среди государств (9 598 962 км2), уступая России, Канаде и США, а по численности населения — 1 411 750 000 жителей (без Тайваня, Гонконга и Макао) — второе после Индии. Большинство населения — этнические китайцы.                                                                                                                                             ');


--
-- TOC entry 4931 (class 0 OID 16702)
-- Dependencies: 225
-- Data for Name: questions_physics; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.questions_physics (id, question, explanation) VALUES (1, 'Почему воду называют «вечной страницей» или «неутомимая путешественница»?                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 'Круговорот воды происходит под влиянием солнечной радиации и сил тяжести. Солнце нагревает воду в океанах и морях, и она испаряется, преобразуясь в водяной пар. Параллельный процесс происходит и на суше: вода испаряется с нагретой Солнцем поверхности Земли или испаряется растениями в результате транспирации.                                                                                                                                                                                               ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (2, 'Почему сырое белье, развешенное на балконе, в теплую погоду сохнет
быстрее, чем в холодную?                                                                                                                                                                                                                                                                                                                                                                                                                         ', 'Чем теплее испаряющаяся жидкость, тем быстрее
происходит процесс испарения                                                                                                                                                                                                                                                                                                                                                                                                                                          ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (3, 'Почему летом по утрам часто можно на листьях кустарников и на траве появляется роса?                                                                                                                                                                                                                                                                                                                                                                                                                                ', 'Ночью воздух охлаждается и водяной пар, содержащийся в нём, превращается в воду                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (4, 'Много рек течет со всех сторон в моря. Почему же море не переполняется и не заливает сушу?                                                                                                                                                                                                                                                                                                                                                                                                                          ', 'Море не переполняется от впадающих в него ручьев и рек потому, что с его поверхности идет постоянное испарение. Если наступает засушливая жаркая погода, испарение становится выше, море уменьшает свою площадь, уменьшая тем самым количество испаряемой воды. При наступлении влажного периода количество впадающей жидкости увеличивается, море выходит из берегов, площадь его увеличивается, повышая количество испаряемой влаги. Таким образом приход и расход воды в море всегда находится в равновесии.     ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (5, 'Почему вода в глубоких колодцах и ключах всегда холодная?                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 'Грунтовые воды не нагреваются солнцем                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (6, 'Почему вода в реках у берегов течет медленнее, чем в середине?                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', 'Течение воды у берегов медленнее из-за трения о берега, что уменьшает скорость её движения                                                                                                                                                                                                                                                                                                                                                                                                                          ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (7, 'В чем сходство и в чем различие между туманом и облаком?                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 'И туман, и облако состоят из мельчайших капелек воды. Различие заключается в том, что туман стелется по земле, а облако образуется высоко над землей                                                                                                                                                                                                                                                                                                                                                                ');
INSERT INTO public.questions_physics (id, question, explanation) VALUES (8, 'Зачем в крышке чайника делают небольшое отверстие?                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', 'Для выхода лишнего пара, а также вода, превращаясь в пар увеличивается в объеме                                                                                                                                                                                                                                                                                                                                                                                                                                     ');


--
-- TOC entry 4934 (class 0 OID 16716)
-- Dependencies: 228
-- Data for Name: register; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.register (id, description, picture, title) VALUES (2, 'назван по имени немецкого физика Антона Обербека. Маятник представляет собой маховик, насаженный по центру на вал, к которому прикреплена нить, на втором конце которой закреплен груз. Вы вращаете маховик, нить наматывается на вал, происходит поднятие груза. При отпускании маховика груз начинает опускаться под действием силы тяжести, раскручивая вал и насаженный на нем маховик. Раскрученный маховик, вращаясь по инерции, начинает наматывать нить на ось и поднимает груз вверх. В верхней точке груз и маховик останавливаются и все начинается сначала.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', NULL, 'МАЯТНИК ОБЕРБЕКА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (3, 'представляет собой физический маятник, т.е. груз, закрепленный на нижнем конце стержня. Верхний конец закреплен на вращающемся валу. На него же насажен маховик.
Если качнуть маятник и наблюдать за ним, мы увидим как колебания постепенно затухают.
Если же качнуть маятник и одновременно раскрутить маховик, затем постоянно поддерживая его вращение, можно наблюдать незатухающие колебания маятника.
Угловая скорость вала такова, что она в любой момент времени превосходит угловую скорость маятника. Когда угловые скорости маятника и оси совпадают по направлению, то сила трения между ними, в некотором интервале скоростей выше, чем в противном случае. Т.е. сила, действующая со стороны оси и подталкивающая маятник, больше, чем сила, тормозящая его.
Таким образом. Вращающаяся ось. Передает часть своей энергии маятнику, компенсируя потери, и тем самым поддерживает незатухающие колебания, или автоколебания.                                                                                                                                                                                                  ', NULL, 'МАЯТНИК ФРУДА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ');
INSERT INTO public.register (id, description, picture, title) VALUES (4, 'При повороте маховика вокруг своей оси, изменяется угол наклона нитей, на которых он висит. Маховик поднимается вверх, совершая работу против сил гравитации. Энергия движения превращается в потенциальную энергию.
Отпущенный маховик начинает раскручиваться, превращая потенциальную энергию в кинетическую. Раскрученный маховик, вращаясь по инерции, закручивает нити подвеса и поднимается вверх.
В верхней точке маховик останавливается, и все начинается сначала.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', NULL, 'МАЯТНИК С ТРИФФИЛЯРНЫМ ПОДВЕСОМ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.register (id, description, picture, title) VALUES (5, 'Демонстрирует неупорядоченное хаотическое движение объекта. Состоит из двух обычных маятников, имеющих одну общую ось вращения. Хаотическим маятник называется потому, что стоит сместить один из грузов хотя бы на один миллиметр перед запуском и траектория движения будет отличаться от предыдущей. Экспонат изготовлен в виде подставки с установленным на нем маятником, на который подвешен горизонтальный стержень, с двух сторон которого подвешены еще два маятника.  Все вместе – это сочетание трех маятников, груз верхнего из которых является точкой подвеса для двух других.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', NULL, 'МАЯТНИК ХАОТИЧЕСКИЙ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ');
INSERT INTO public.register (id, description, picture, title) VALUES (6, 'собой массивный диск, насаженный на горизонтальный стержень и скрепленный пружиной с этим стержнем. Поворачивая маховик, вы сжимаете пружину, совершая работу против сил упругости пружины. Эта работа превращается в потенциальную (запасенную) энергию закрученной пружины.  Отпущенный маховик под действием упругих сил сжатой пружины начинает вращаться. Пружина раскручивается, теряя запасенную энергию, а маховик вращается со все увеличивающейся скоростью, увеличивая свою кинетическую энергию (энергию движения).
Когда пружина раскручена, маховик по инерции продолжает вращение, теперь уже раскручивая пружину и увеличивая ее потенциальную энергию, пока не остановится. Далее весь процесс повторяется в обратном порядке.                                                                                                                                                                                                                                                                                                                                                                                             ', NULL, 'МАЯТНИК БАЛАНСИР                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (8, 'представляет собой физический маятник т.е. груз, закрепленный на конце стержня. С двух сторон от груза расположены магниты. Расстояние между ними регулируется.
При максимально разведенных магнитах маятник будет иметь определенный период колебаний. Сближая магниты, заметим, что период колебаний маятника увеличивается.
На маятник помимо силы гравитации теперь действует горизонтальная сила магнитного притяжения, которая тормозит движение маятника.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, 'МАГНИТНЫЙ МАЯТНИК                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ');
INSERT INTO public.register (id, description, picture, title) VALUES (16, 'Маятник Максвелла представляет собой массивный диск, насаженный на стержень и подвешенный с помощью нитей к горизонтальной опоре.
Вращая маховик, подними его до верхней точки. Следите за равномерным наматыванием нити на вал. Поднимая маховик, вы совершаете работу против сил тяжести. Эта работа превращается в потенциальную (запасенную) энергию поднятого маховика.  Отпущенный маховик под действием силы тяжести начинает раскручиваться и опускаться вниз, превращая потенциальную энергию, в кинетическую энергию (энергию движения).
Раскрученный маятник, вращаясь по инерции, начинает сам наматывать нити на ось и подниматься вверх. При этом потенциальная энергия вновь превращается в кинетическую. Далее весь процесс повторяется в обратном порядке.                                                                                                                                                                                                                                                                                                                                                                 ', NULL, 'МАЯТНИК МАКСВЕЛЛА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ');
INSERT INTO public.register (id, description, picture, title) VALUES (17, 'представляет собой 2 физических маятника, т.е. груза, закрепленных на горизонтальном стержне и связанным между собой пружиной.
После выведения одного из маятников из положения равновесия, наблюдаем его колебания. Через некоторое время замечаем постепенный переход колебательной энергии от одного маятника к другому и обратно. В такой системе связанных маятников складываются свободное колебание каждого из маятников, а также колебание под влиянием жесткости связывающей их пружины.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', NULL, 'МАЯТНИК С УПРУГОЙ СВЯЗЬЮ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ');
INSERT INTO public.register (id, description, picture, title) VALUES (18, 'Маятник Фуко – это маятник для экспериментальной демонстрации суточного вращения Земли.
Французский физик и астрономом Жан Фуко во время эксперимента взял груз весом 28 килограммов и подвесил его к вершине купола Пантеона в Париже на проволоке длиной 67 метров. На конце груза учёный закрепил металлическое остриё. Маятник совершал колебания над круглым ограждением, по краю которого был насыпан песок. При каждом качании маятника острый стержень снизу груза, сбрасывал песок приблизительно в трёх миллиметрах от предыдущего места. За час плоскость колебаний повернулась более чем на 11 градусов, а примерно за 32 часа совершила полный оборот и вернулась в прежнее положение. Фуко таким образом доказал, что Земля вращается, т.к  плоскость колебаний маятника изменяется.
Кстати, на вращение плоскости колебаний маятника влияет как географическая широта места, где он установлен, так и длина подвеса.  Например, маятник, установленный на Северном или Южном полюсе, будет делать оборот за 24 часа.                                                                                                         ', NULL, 'МАКЕТ МАЯТНИКА ФУКО.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ');
INSERT INTO public.register (id, description, picture, title) VALUES (7, 'Пружинным маятником называется система, состоящая из груза массы m, подвешенного на пружине и совершающий гармонические колебания под действием упругой силы.
Оттягивая груз маятника вниз, вы растягиваете пружину, совершая работу против сил упругости пружины. Эта работа превращается в потенциальную (запасенную) энергию растянутой пружины.  Отпущенный груз под действием упругих сил растянутой пружины начинает подниматься вверх. Пружина сжимается, теряя запасенную энергию, а груз поднимается со все увеличивающейся скоростью, увеличивая свою кинетическую энергию (энергию движения).
Когда пружина сжата, груз по инерции продолжает подниматься, теперь уже сжимая пружину и увеличивая ее потенциальную энергию, пока не остановится. Далее весь процесс повторяется в обратном порядке.                                                                                                                                                                                                                                                                                                                              ', NULL, 'ПРУЖИННЫЙ МАЯТНИК                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ');
INSERT INTO public.register (id, description, picture, title) VALUES (20, 'Экспонат представляет собой восемь бокалов двух разных видов (разной формы) закрепленных в два ряда на специальной подставке. Бокалы сделаны из тонкого стекла. Если достаточно быстро водить влажным пальцем по краю бокала, появляется звук, источником которого являются возникающие в результате этого колебания бокалов. Высота звука зависит от формы бокала и от толщины стекла: чем тоньше стекло, тем выше звук.
Также высота звука зависит и от наполненности бокала. Это просто проверить на практике, проводя пальцем по краю одного и того же бокала, заполненного разным количеством воды. Пустой бокал даст наиболее высокое звучание тогда, как полный до краев — самое низкое. Проводя эксперимент с полным бокалом, на поверхности воды можно видеть волны и даже брызги, что наглядно демонстрирует природу происхождения получаемых звуков.                                                                                                                                                                                                                                                                             ', NULL, 'ПОЮЩИЕ БОКАЛЫ.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.register (id, description, picture, title) VALUES (21, 'Экспонат представляет собой специальную конструкцию, имитирующую звук паровозного гудка. При нажатии кнопки поток воздуха с большой скоростью нагнетается в пространство между двумя соосными полыми цилиндром, находящимся внутри усеченного конуса и самим усеченным конусом, доходя до резиновой мембраны, которая закрывает с одной стороны основания этих тел, и вызывает колебания этой мембраны. Колебания мембраны передаются окружающей среде, т.е. воздуху. В том числе они распространяются и внутрь цилиндра, в который для усиления звука в качестве резонатора вставлена водопроводная труба и мы слышим звук, очень похожий на рев.  Ударяя ладонью по мембране, можно изменять тембр и амплитуду звучащего гудка.                                                                                                                                                                                                                                                                                                                                                                                                           ', NULL, 'ПАРОВОЗНЫЙ ГУДОК                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (22, 'Экспонат представляет собой сложную систему водопроводных труб различной длины с различными отверстиями, мембран, воздуходува (компрессора), переключателей направления движения воздуха, движущихся внутри труб цилиндров, которая имитирует устройство органа и с помощью которой можно даже изобразить простую мелодию.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', NULL, 'ОРГАН НА «ВОДОПРОВОДНЫХ» ТРУБАХ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.register (id, description, picture, title) VALUES (23, 'Экспонат представляет собой стальную конструкцию, выполненную в форме изогнутой поверхности с формой поперечного сечения параболы, с небольшим отверстием в центре, т.е. своего рода параболический отражатель (параболоид) звуковых волн. Плоские волны, падающие на такой отражатель с направления, параллельного оси параболоида, преобразовываются в сферическую волну и фокусируются в точке, где находится фокус параболоида. Звук, направляемый на отражатель издалека, в этом случае можно считать звуковые волны плоскими и направленными параллельно оси параболоида, после отражения собирается в фокусе параболоида, многократно усиливаясь. Человек, находящийся в фокусе параболоида хорошо расслышит слова, сказанные негромко и на достаточном расстоянии от отражателя.                                                                                                                                                                                                                                                                                                                                                    ', NULL, 'АКУСТИЧЕСКОЕ МЕГАУХО                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ');
INSERT INTO public.register (id, description, picture, title) VALUES (19, 'Экспонат представляет собой семь стальных цилиндрических трубок разной длины, подвешенных в ряд в вертикальном положении на металлической раме. Веревка, на которой подвешена каждая трубка продета в два отверстия, проделанные в боковой поверхности трубки, причем положение отверстий является местом узла стоячей волны собственных поперечных колебаний данной трубки. При этом на середине трубки находится точка максимальной амплитуды стоячей волны. Так как длины трубок разные, собственные частоты у них различаются и при колебании трубки издают звуки разной высоты, соответствующие семи нотам.
Если ударить по трубке деревянным молоточком, раздается звук. Его источником являются поперечные упругие колебания трубки, которые образуют стоячую волну. Если звучащую трубку взять двумя пальцами в месте узла стоячей волны, звук не прекратится, так как в узле стоячей волны колебания отсутствуют и следовательно звук в этом месте не генерируется. А если взять трубку в месте максимума амплитуды колебаний, то звук сразу прекратится, потому что именно в этом месте генерируются звуковые волны.              ', NULL, 'МУЗЫКАЛЬНЫЕ ТРУБКИ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ');
INSERT INTO public.register (id, description, picture, title) VALUES (27, 'Экспонат представляет собой полый цилиндр, одно основание которого закрывает резиновая мембрана. В другом основании цилиндра имеется отверстие, через которое видно, что внутри цилиндра находится небольшой источник лазерного излучения с направлением луча в сторону мембраны. В центре мембраны расположено небольшое зеркало. Если поставить этот экспонат на достаточно большом расстоянии от экрана, роль которого исполняет параболический отражатель, направив лазер в сторону, противоположную экрану, то при включении лазера его луч отражается от зеркала и проходя через отверстие второго основания цилиндра оставит на экране небольшое световое пятно зеленого цвета.
Если, приблизившись вплотную к цилиндру со стороны мембраны, начать что-нибудь говорить, неподвижное пятно на экране начинает двигаться и рисовать различные узоры. Происходит как бы проекция речи на экран, звук трансформируется в зрительные образы.                                                                                                                                                                                             ', NULL, 'ПРОЕКТОР ГОЛОСА (ЛАЗЕРНЫЙ ВИЗУАЛИЗАТОР ГОЛОСА)                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.register (id, description, picture, title) VALUES (28, 'Сильфоны представляют собой осесимметричную трубчатую гофрированную оболочку.  Если запустить внутрь сильфона струю воздуха из пылесоса, можно услышать довольно мелодичное звучание. Придвигая и отодвигая насадку пылесоса, можно изменять тембр, высоту и громкость звучания.
Эффект объясняется тем, что внутренняя поверхность сильфона не гладкая, а за счет гофрирования площадь поперечного сечения трубчатой оболочки периодически изменяется в зависимости от расстояния до конца (начала) сильфона. Воздух, проходя внутри сильфона с постоянной скоростью в местах, где сечение меньше, уплотняется, а в местах, где сечение больше – разрежается, т.е. образуются продольные волны, состоящие из сжатий и разрежений, что и является источником звука.                                                                                                                                                                                                                                                                                                                                                                         ', NULL, 'ПОЮЩИЕ СИЛЬФОНЫ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.register (id, description, picture, title) VALUES (29, 'Экспонат представляет собой горизонтально расположенную металлическую пластину квадратной формы. Если на пластину насыпать по всей плоскости какой-нибудь порошок, отличающийся по цвету от цвета пластины, а потом поводить смычком по краю пластины, можно наблюдать, как порошок на поверхности пластины приходит в движение и образует некоторый узор, который и называется фигурами Хланди по имени немецкого физика Эрнста Хладни.
Эффект объясняется тем, что при помощи смычка в пластине возбуждаются поперечные колебания, которые распространяются во все стороны. В результате наложения этих волн и волн, отраженных от краев пластины, образуются стоячие волны с неподвижными точками и точками максимальной амплитуды колебаний. Так как пластина имеет два измерения, узлы стоячих волн образуют не точки, как при одномерной волне, а узловые линии, вдоль которых мембрана неподвижна. Порошок, находящийся на поверхности пластины, при ее колебаниях как бы ссыпается в эти узловые линии, при этом очень хорошо видно движение частиц порошка, которые подбрасываются вверх колеблющимися частями пластины.           ', NULL, 'ФИГУРЫ ХЛАДНИ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ');
INSERT INTO public.register (id, description, picture, title) VALUES (30, 'Шар, встроенный в кольцо с фотоэлементами, вращается под светом электрической лампы. Он напоминает планету Сатурн с системой колец.  Энергия света лампы поглощается световыми фотоэлементами, преобразуется в электрическую, а та, в свою очередь, в механическую.
Видно, что голубая планета вращается в сторону, противоположную вращению колец.
Здесь работает закон сохранения импульса, закон сохранения энергии, а также фотоэлектрический эффект т.е.- преобразование света в электричество. Кстати кольца Сатурна на самом деле, не сплошные, как на нашем экспонате, а состоят из частичек льда и космической пыли. Есть версия, что они образовались потому, что один из спутников Сатурна распался на такие мелкие обломки после удара астероида или кометы.                                                                                                                                                                                                                                                                                                                                                                    ', NULL, 'САТУРН                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ');
INSERT INTO public.register (id, description, picture, title) VALUES (31, 'На стенде человечки держат в руках пластины, которые вращаются, но не пересекаются (визуально должно возникать ощущение двух пересекающихся дисков у них в руках).
Вместо солнца здесь свет лампы. Он поглощается световыми фотоэлементами, преобразуется в электрическую энергию, а та, в свою очередь, -в энергию движения - механическую. Электричество запускает электромоторчик, который вращает пластины.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', NULL, 'СРАЖАЮЩИЕСЯ ЧЕЛОВЕЧКИ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ');
INSERT INTO public.register (id, description, picture, title) VALUES (32, 'На различных экспонатах стендов 1 и 2 показано, как энергия света (правда, вместо солнца простая лампочка) заставляет двигаться, вращаться разные объекты. Энергия света преобразуется в солнечных батареях (фотоэлементах) в электрическую. Она запускает моторчик, который вращает объект.
Энергия солнца экологически чистая. С ее помощью человек защитит окружающую среду и будет экономить полезные ископаемые.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', NULL, 'ВИТРИНА 1 «ДЕВОЧКА», «ДИСК1», «НЕЧТО»                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ');
INSERT INTO public.register (id, description, picture, title) VALUES (49, 'Магнитный диск берут в руки и размещают над подставкой, аккуратно центрируя. Диск парит в воздухе на магнитной подушке. В подставке находится 4 катушки с током, которые создают результирующее магнитное поле.
На диск действует сила тяжести, которая тянет его вниз. Чтобы диск мог висеть в воздухе, необходимо, чтобы на него действовала сила, направленная против силы тяжести - вверх. Это сила отталкивания между магнитным полем парящего магнита и магнитным полем подставки. Эти две силы уравновешивают друг друга и диск «парит» в воздухе.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', NULL, 'ЛЕВИТРОН ПАРЯЩИЙ МАГНИТ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ');
INSERT INTO public.register (id, description, picture, title) VALUES (33, 'Легко заметить, что у всех экспонатов витрин имеются тонкие пластинки радужного оттенка - фотоэлементы. Они-то и поглощают энергию света, преобразуя ее в электричество. Электрический ток и запускает моторчики, приводящие объекты в движение.
Каждый фотоэлемент сделан из вещества, содержащего кремний. Как выглядит монокристалл кремния, из которого сделаны фотоэлементы, вы увидите на экспонате № 46, который находится в тех же витринах.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, 'ВИТРИНА 2 «БАБОЧКА», «ДИСК2»                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ');
INSERT INTO public.register (id, description, picture, title) VALUES (34, 'К крыльям самолета с нижней стороны прикреплены солнечные батареи. На них направляется снизу свет лампы, отраженный большим зеркалом. Энергия света преобразуется в электрическую. Она запускает электромотор, который заставляет самолет лететь.
Пилот лишь должен направлять отраженный от зеркала свет лампы на крылья самолета.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, 'СОЛНЕЧНЫЙ САМОЛЕТ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ');
INSERT INTO public.register (id, description, picture, title) VALUES (35, 'Это стеклянная колба, наполненная гелием. В ней на игле находится легкая крыльчатка. Зажжем лампу или даже спичку рядом колбой. Свет падает на крылья и нагревает их. Но крылья с одной стороны зачернены, а с другой – блестящие, отражают свет. Зачерненное крыло лучше поглощает свет, а, значит, нагревается больше, чем блестящее крыло. Атомы гелия, сталкиваясь с черным крылом, отражаются от него с большей скоростью, чем те, которые отражаются от блестящей стороны. Отскакивая от крыла, он передаст крылу больший импульс, чем тот, который отразится от блестящей стороны. Создается вращательный момент, который и вращает крыльчатку.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 'РАДИОМЕТР КРУКСА не имеет отношения к солнечным батареям                                                                                                                                                                                                                                                                                                                                                                                                                                                            ');
INSERT INTO public.register (id, description, picture, title) VALUES (36, 'Этому занимательному опыту около трехсот лет. Его приписывают французскому ученому Рене Декарту. Опыт был так популярен, что на его основе создали игрушку, которую и назвали «Картезианский водолаз».
Прибор представляет собой стеклянный цилиндр, наполненный водой. На поверхности плавает стеклянный стакан, наполненный воздухом, установленный на горизонтальной круглой площадке с отверстиями. Стакан частично погружен в воду. При нагнетании воздуха в верхнюю часть цилиндра (мы зажимаем синюю дырочку, через которую воздух шел наружу), увеличивается его давление, которое передается жидкости. По закону Паскаля давление, производимое на жидкость или газ, передается в любую точку без изменений во всех направлениях. За счет этого давления вода через отверстия начинает проникать в стакан, сжимая находящийся там воздух, вес его увеличивается, и он начинает опускаться. При сбросе воздуха наружу, давление сжатого воздуха под стаканом оказывается больше давления в верхней части цилиндра. За счет этого давления вода вытесняется из стакана, он становится легче и всплывает.                             ', NULL, 'КАРТЕЗИАНСКИЙ ВОДОЛАЗ.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ');
INSERT INTO public.register (id, description, picture, title) VALUES (37, 'Сиденье стула плотно утыкано гвоздями и кажется абсолютно непригодным для того, чтобы на нем сидеть. Однако, если сесть на него аккуратно (важно постараться сесть как можно ровнее сразу на всю площадь стула), то оказывается, что это не вызывает никаких неприятных или болезненных ощущений.
Когда мы садимся на стул, сила с которой мы давим на него, равна весу нашего тела. Если сесть на один гвоздь, то весь ваш вес придется на поверхность острия гвоздя. И по третьему закону Ньютона (сила действия равна силе противодействия) гвоздь с такой же силой будет действовать на площадь тела, равную площади острия гвоздя, и это будет очень болезненно.
В случае с нашим стулом сила, равная весу вашего тела, распределяется на много гвоздей и на каждый гвоздь будет приходиться совсем небольшая нагрузка. Сила противодействия каждого гвоздя на тело будет небольшой и никаких неприятных ощущений вы испытывать не будете.                                                                                                                                                                                             ', NULL, 'СТУЛ ДЛЯ ЙОГА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ');
INSERT INTO public.register (id, description, picture, title) VALUES (42, 'На деревянной панели закреплены обычные лампочки в три ряда. Лампочки сделаны из тонкого хрупкого стекла. Кроме того, из них откачан воздух, и они наполнены инертным газом под давлением меньше атмосферного. Тем удивительнее, что по этой дорожке из лампочек может пройти даже взрослый человек.
Первая и основная причина этого заключается в форме лампочки. Электрическая лампочка имеет сферическую форму. Такая форма обеспечивает прочность лампочки, т.к. усилие распространяется по касательной к поверхности лампочки. Вторая причина заключается в том, что лампочки находятся в опорном «гнезде» площадки и сила, действующая на лампочку, распределяется на площадь поверхности опорного «гнезда» лампочки, и, следовательно,  давление на лампочку гораздо меньшее.
Именно поэтому птичьи яйца имеют форму, близкую к форме шара и раздавить яйцо между ладонями, напирая на его концы, не так-то легко. Теперь понятно, почему наседке не стоит опасаться сломать скорлупу яиц тяжестью своего тела. И в то же время, слабый птенчик, желая выйти наружу, без труда пробивает клювиком скорлупу изнутри.                  ', NULL, 'ДОРОЖКА ИЗ ЛАМПОЧЕК                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ');
INSERT INTO public.register (id, description, picture, title) VALUES (43, 'Экспонат «Воздушная пушка» является разновидностью классической аэродинамической демонстрации Вуда и предназначена для образования вихрей. Ударяя по мембране, мы сообщаем некоторую скорость прилегающему к ней слою воздуха. Придя в движение, этот слой вызывает уплотнение соседнего слоя, тот- следующего и так далее. Когда уплотнение доходит до отверстия, дым вырывается из него, приводит в движение ранее покоившийся воздух комнаты и, благодаря силам вязкого трения, сам закручивается в вихревое кольцо в виде тора. Это происходит из-за того, что периферийные слои движущейся порции дыма тормозятся окружающим неподвижным воздухом, а центральная часть струи движется быстрее. При резком и сильном ударе по мембране воздушной «пушки» с противоположной стороны выходит ударная «волна» в виде тороидального «бублика», который распространяется в заданном направлении и создает ощутимый воздушный удар.                                                                                                                                                                                                           ', NULL, 'ВОЗДУШНАЯ ПУШКА ВУДА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ');
INSERT INTO public.register (id, description, picture, title) VALUES (44, 'Экспонат представляет собой вентилятор, закрепленный в подставке и воздушный шарик. При включении вентилятора из подставки вверх идет сильный поток воздуха. Воздушный шарик, попадая в этот поток, поднимается вверх и зависает на одном месте, при этом воздух не сдувает его, а если не очень сильно толкнуть шарик вбок, выталкивая его из потока, то он возвращается обратно.
Когда шарик попадает в поток, движущийся воздух толкает шарик вверх, а сила тяжести тянет вниз, в итоге он висит в потоке воздуха на одном и том же месте. Если шарик толкнуть вбок, то он вернется. Это происходит в соответствии с принципом Бернулли, который гласит: в струе воздуха или воды давление велико, если скорость мала, и, наоборот, давление мало, если скорость велика.
Давление в потоке воздуха меньше, чем давление вне потока, так как скорость в потоке больше. За счет разности скоростей, на шарик будет действовать сила, возвращающая шарик на место. Понятно, что если толкнуть его очень сильно, то он выпадет из потока и упадет на пол.                                                                                    ', NULL, 'ПАРЯЩИЙ ШАРИК                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ');
INSERT INTO public.register (id, description, picture, title) VALUES (45, 'В 1800 году итальянский ученый Алессандро Вольта опустил в банку с кислотой две пластинки, цинковую и медную и соединил их проволокой, в результате чего в цепи потек ток. Таким образом, был создан гальванический элемент,названного по имени итальянского ученого Луиджи Гальвани.
Экспонат представляет собой две металлические пластинки, одна из цинка, другая из меди, соединенные между собой прибором, измеряющим ток (амперметром). В обычном состоянии ток не идет – амперметр показывает ноль. Но если человек приложит к пластинам свои ладони, то прибор покажет наличие тока в цепи. Получился источник тока. Этот экспонат аналог первого в мире гальванического элемента, прообраза современных батареек.
Пот на ладонях человека и жидкость тела человека выполняют роль кислоты в опыте Вольта, так как проводят электрический ток, т.е. являются электролитами. Сила тока зависит от количества электропроводящей жидкости, а также от плотности контакта ладоней с пластинами.                                                                                                                                         ', NULL, 'ЧЕЛОВЕК- БАТАРЕЙКА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ');
INSERT INTO public.register (id, description, picture, title) VALUES (46, 'Явление электромагнитной индукции определяется возникновением электрического тока в замкнутом электропроводящем контуре при пересечении магнитным потоком площади этого контура.
Основной закон Майкла Фарадея заключается в том, электродвижущая сила (ЭДС) электромагнитной индукции в контуре численно равна скорости изменения магнитного потока сквозь поверхность, ограниченную этим контуром.
Первый экспонат представляет собой соленоид, т.е. катушку, на которую намотан провод. Концы провода соединены, при этом в цепь включена электрическая лампочка. Внутрь катушки вставлен постоянный магнит, который с помощью специального приспособления можно двигать и вращать внутри катушки. При неподвижном магните ток в цепи отсутствует, и лампочка не горит. Если магнит движется внутри катушки, в цепи возникает так называемый индукционный ток. Экспонат демонстрирует явление электромагнитной индукции, когда под воздействием меняющегося магнитного поля на проводящий электрический ток контур, в последнем возникает ток.                                                                                           ', NULL, 'ГЕНЕРАТОР ЭЛЕКТРИЧЕСКОГО ТОКА1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.register (id, description, picture, title) VALUES (47, 'Второй экспонат представляет собой два диска, один из которых приводится во вращение с помощью рукоятки. По окружности этого диска приклеены пластинчатые магниты. При вращении диска меняющееся магнитное поле от прикрепленных к нему магнитов пересекает электрический контур, в цепь которого включены несколько лампочек, тем самым создавая индукционный ток в этой цепи.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', NULL, 'ГЕНЕРАТОР ЭЛЕКТРИЧЕСКОГО ТОКА 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.register (id, description, picture, title) VALUES (48, 'Все мы знаем, что магниты притягиваются противоположными полюсами, и отталкиваются одноименными. И если взять два магнита, и просто положить их на стол так, чтобы их векторы намагниченности были направлены в разные стороны (один магнит — северным полюсом в одну сторону, другой — южным полюсом ему навстречу), и попытаться сблизить магниты, то можно обнаружить, что они будут притягиваться.
Если начать отодвигать один магнит от другого, полюса с краев не дадут ему уйти далеко. А если попытаться приблизить магнит к другому вплотную, то это не получится, т.к. скраю южного полюса установлена небольшая проставка противоположной полярности, которая не позволит магнитам сблизится вплотную.                                                                                                                                                                                                                                                                                                                                                                                                                           ', NULL, 'МАГНИТНАЯ ЯМА НИКОЛАЕВА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ');
INSERT INTO public.register (id, description, picture, title) VALUES (50, 'На деревянном стержне с двух сторон закреплены 2 постоянных магнита. Под ним находятся две скрещенные опоры, на каждой из которых закреплены по 2 постоянных магнита противоположной полярности. Центрируя стержень над опорами, добиваемся уравновешивания всех сил, действующих на него и его «парения» над опорами. Сила тяжести стержня уравновешена силой отталкивания
 магнитов.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 'ЛИНЕЙНЫЙ МАГНИТНЫЙ ЛЕВИТАТОР                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ');
INSERT INTO public.register (id, description, picture, title) VALUES (51, 'Перед вами два постоянных магнита. Один в виде квадратной подставки, другой, в виде небольшого волчка, аккуратно центрируя, располагаем над подставкой. Волчок крутится и парит в воздухе.
Закон сохранения момента импульса обеспечивает сохранение вертикального положения. Сила тяжести уравновешена силой отталкивания между одноименными полюсами магнитов                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', NULL, 'ЛЕВИТРОН НА ПОСТОЯННЫХ МАГНИТАХ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.register (id, description, picture, title) VALUES (52, 'Экспонат представляет собой медную трубку, закрепленную в вертикальном положении. Если в трубку бросать металлические, но не намагниченные предметы, они под действием силы тяжести падают достаточно быстро. Если же в трубку бросить небольшой магнит, то он будет таинственным образом тормозиться, а время его падения будет в разы больше. Он как будто парит внутри трубки (это хорошо видно, если посмотреть внутрь трубки сверху). Это экспонат, демонстрирующий явление электромагнитной индукции. Двигающийся магнит создает в медной трубке, которая по сути является соленоидом, круговые токи. Медная трубка при этом становится электромагнитом, т.е. создает магнитное поле, силовые линии которого внутри трубки направлены против силовых линий падающего магнита, препятствуя падению магнита, замедляя его. Тем самым создается эффект «парения».                                                                                                                                                                                                                                                                        ', NULL, 'ТРУБКА ФУКО                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ');
INSERT INTO public.register (id, description, picture, title) VALUES (53, 'В стволе пушки находятся несколько шариков из нержавеющей стали, по 3 штуки в каждом отсеке. Между отсеками расположены 3 постоянных разгоняющих магнита.
Отталкиваем крайний правый (если смотреть на пушку, как на фото) шарик первого отсека от стенки в сторону второго отсека. Шарик ускоряется, толкая перед собой еще два шарика. Крайний левый шарик из первого отсека ударяет крайний правый шарик второго отсека, передавая ему свою энергию, и так далее. В последнем отсеке последний шарик выстреливает с большой скоростью, вобрав энергию всех разгоняющих магнитов.
Действие закона сохранения энергии, импульса.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', NULL, 'ПУШКА С ШАРИКАМИ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (58, 'представляет собой коромысло с двумя вертикально расположенными дисками. В дисках расположены магниты, к которым «прилипли» два металлических стержня. Диски крутятся, и стержни движутся по ним, как «рельсы наоборот» - то есть колеса все время остаются на месте, а стержни по ним перемещаются. Порядок движения дисков задается электронным устройством и является хаотическим, при этом стержни скользят по поверхности дисков за счет магнитных сил и силы собственной тяжести. Из-за хаотического вращения дисков невозможно предсказать в какую сторону стержни будут двигаться в следующий момент.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', NULL, 'ХАОТИЧЕСКИЙ МАЯТНИК КОРОМЫСЛО (СОЛНЦЕВА)                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ');
INSERT INTO public.register (id, description, picture, title) VALUES (54, 'То же вы видите здесь под колпаком. Над постоянным магнитом зависла маленькая круглая пластиночка. Можно пронести под ней тонкий лист бумаги, чтобы убедиться, что она «парит». Пластинка тоже из магнитного вещества, который называется диамагнетиком.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', NULL, 'ПОСТОЯННЫЙ МАГНИТ С ПАРЯЩИМ ДИАМАГНЕТИКОМ                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ');
INSERT INTO public.register (id, description, picture, title) VALUES (55, 'Феррофлюид представляет собой жидкость, содержащую очень маленькие ферромагнитные частички. Это, как правило, частички магнетита размером около 10 нанометров (10 -9 метра или 0,00001 мм). За счет этого жидкость подвержена влиянию магнитных полей и демонстрирует причудливое поведение внутри магнитного поля.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, 'СЕЙФ МАГНИТНАЯ ЖИДКОСТЬ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ');
INSERT INTO public.register (id, description, picture, title) VALUES (56, 'Экспонат представляет собой две тонкие, спаянные между собой в виде меча пластины разных металлов, которые имеют разные коэффициенты теплового расширения. При нагревании меча электрофеном, пластина, сделанная из металла, имеющего больший коэффициент расширения, расширяется быстрее, что приводит к искривлению меча.
На этом явлении основаны так называемые тепловые размыкатели, которые используются в автоматических выключателях разных электроприборов с целью предотвратить перегрузку электрической цепи. Биметаллическая пластина, которая включена в цепь электроприбора, при перегрузках нагревается за счет увеличенного тока и искривляясь размыкает цепь.                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', NULL, 'БИМЕТАЛЛИЧЕСКИЙ МЕЧ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ');
INSERT INTO public.register (id, description, picture, title) VALUES (57, 'Перед вами маятник, из магнитного вещества, который мы заставим колебаться. Медленно подводя под маятник пластину из меди,  мы видим, что колебания маятника тормозятся.
В пластине благодаря движению магнита над ней, возникают циркулярные токи Фуко, которые создавая магнитное поле, направленное против поля магнита, тормозят движения маятника.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', NULL, 'МАЯТНИК С БЛОКИРОВКОЙ КОЛЕБАНИЙ ТОКАМИ ФУКО                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ');
INSERT INTO public.register (id, description, picture, title) VALUES (59, 'На стержне справа закреплен постоянный магнит. На левой опоре на проволоке подвешено плоское железное кольцо. Если приблизить кольцо к магниту, то можно наблюдать как оно «повиснет» в воздухе.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, 'ПАРЯЩЕЕ КОЛЬЦО                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.register (id, description, picture, title) VALUES (60, 'На коромысле закреплены два медных диска, один сплошной, другой полосатый (на нем нарезаны параллельные бороздки). Если начать приближать постоянный магнит к сплошному диску, то коромысло начнет вращение. В сплошном диске  возникают циркулярные токи Фуко, которые, в свою очередь, создают магнитное поле. Его силовые линии направлены навстречу силовым линиям постоянного магнита. Диски отталкиваются, и магнит на коромысле начинает движение.
На полосатом диске образование циркулярных токов затруднено, поэтому эффекта вращения коромысла не наблюдается.
Здесь демонстрируется принцип электромагнитной индукции.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', NULL, 'МАГНИТНЫЕ ДИСКИ ФУКО                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ');
INSERT INTO public.register (id, description, picture, title) VALUES (61, 'Искусственного происхождения, в природе их не существует. Кремний содержится в обычном песке. Из монокристалла нарезаются тончайшие пластины, обрабатываются и далее из них изготавливаются фотоэлементы. Фотоэлементы собираются в блоки, те – в солнечные панели. Из панелей собирается солнечная ферма, или электростанция.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', NULL, 'МОНОКРИСТАЛЛЫ КРЕМНИЯ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ');
INSERT INTO public.register (id, description, picture, title) VALUES (62, 'Двое людей садятся с двух сторон от полупрозрачного зеркала. Их лица освещаются лампочками. Полупрозрачное зеркало в действительности представляет собой стекло, покрытое тонким слоем металла – так, что часть падающего на поверхность стекла света отражается, а часть проходит насквозь. При этом насквозь свет проходит в обоих направлениях.
Когда за стеклом находится ярко освещенный объект,  лучи, отраженные и рассеянные от него, проходят сквозь стекло к нам, и мы видим объект – лицо человека. Как через обычное стекло. Если убавить свет по ту сторону стекла и ярко осветить себя, то оно сработает как зеркало, и мы увидим собственное отражение. А если подобрать такое соотношение света с одной и с другой стороны, что два световых потока сравняются, то мы увидим необычное явление – два лица сольются в одно. При этом у мальчика могут неожиданно появиться косички, а у женщины – усы, если по ту сторону зеркала сидит усатый мужчина. При подборе яркости светильника в зеркале можно увидеть, как лица совмещаются, образуя причудливые изображения.                                                      ', NULL, 'ПОРТРЕТ НА ДВОИХ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (63, 'Стробоскопом назывался прибор для демонстрации движущихся рисунков, изобретённый в 1832 году учёным Жозефом Плато. Это диск с отверстиями, который может вращаться с разной скоростью, изменяя интервал между вспышками.
При изменении интервала между включениями вспышек света можно наблюдать изменение направления движения капель снизу вверх и даже зависание их на месте. Это оптическая иллюзия.
Циркуляция движения воды обеспечивается электрическим насосом и механическим вентилем.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', NULL, 'СТРОБОСКОП ПАДЕНИЕ КАПЕЛЬ ВОДЫ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.register (id, description, picture, title) VALUES (64, 'Объект моделирует процесс оптических иллюзий, возникающих у человека при просмотре быстро меняющегося изображения (кино). Прапрадедушка современного кинооборудования. В основе лежит стробоскопический эффект, зрительные иллюзии возникают из-за изменения частоты освещенности объекта.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', NULL, 'ТАУМАТРОП                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ');
INSERT INTO public.register (id, description, picture, title) VALUES (65, 'Знаем, что такое магнит. Это образец, который притягивает или отталкивает металлические предметы. Визуализируем магнитное поле
Этот экран позволяет увидеть как располагаются линии магнитного поля.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, 'МАГНИТ К ЭКРАНУ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ');
INSERT INTO public.register (id, description, picture, title) VALUES (66, 'Теплови́зор —это устройство для наблюдения за распределением температуры исследуемой поверхности. Распределение температуры отображается на дисплее как цветная картинка, где разным температурам соответствуют разные цвета. Изучение тепловых изображений называется термографией.
Тепловизор отличается от ПНВ (прибора ночного видения) принципом работы, он и источник и приемник света. Если прибор ночного видения усиливает зрение человека за счёт отражения испускаемого им инфракрасного света от слабых источников излучения, то тепловизор – это приемник, он реагирует на температуру и позволяет различить, в первую очередь, живые тела, движущиеся в темноте.                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', NULL, 'ТЕПЛОВИЗОР                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ');
INSERT INTO public.register (id, description, picture, title) VALUES (67, 'Простейший вид устройства, позволяющий получать оптическое изображение объектов. Представляет собой светонепроницаемый ящик с отверстием в одной из стенок и экраном (матовым стеклом или тонкой белой бумагой. Лучи света, проходя сквозь малое отверстие, создают перевернутое изображение на экране.
Прапрадедушка фотоаппарата – шатер с дырочкой в стене 10-й век, без линзы. Изображение получается на пластине.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 'КАМЕРА – ОБСКУРА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (68, 'Исаак Ньютон открыл, что белый цвет состоит из всех цветов радуги и получается их наложением друг на друга. Радуга - это и есть разложение белого цвета на его составляющие после преломления света в капельках дождя.
Здесь также имеет место инерционность зрительного восприятия. При большой скорости вращения наш мозг не успевает реагировать на смену цветов, передаваемую зрительным аппаратом глаза. Они сливаются в один – белый.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', NULL, 'ЦВЕТНОЙ ДИСК НЬЮТОНА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ');
INSERT INTO public.register (id, description, picture, title) VALUES (69, 'представляет собой контейнер из прозрачного стекла, заполненный смесью различных благородных газов, с высоковольтным электродом в центре контейнера. При подаче напряжения внутри контейнера образуется плазма. Плазменные нити тянутся от внутреннего электрода к внешнему стеклянному изолятору, создавая видимость множества постоянных пучков цветного света, похожих на молнии.
Плазменная лампа — изобретение Николы Теслы(1894 год).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', NULL, 'ПЛАЗМЕННЫЙ ШАР ИЛИ ПЛАЗМЕННАЯ ЛАМПА ТЕСЛА                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ');
INSERT INTO public.register (id, description, picture, title) VALUES (70, 'Поляроид представляет собой тонкую (0,1мм) пленку кристаллов герапатита, нанесенную на целлулоид или стеклянную пластинку. Полимерные пленки преобразуют естественный (неполяризованнный) свет в линейно поляризованный, т.к пропускают свет только одного направления поляризации.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, 'ПОЛЯРОИДНАЯ ПЛЕНКА                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ');
INSERT INTO public.register (id, description, picture, title) VALUES (71, 'На столике расположен лазер, из него выходит луч, который отражается по очереди в трех зеркалах, а после проецируется на экран, зеркала располагаются на моторчиках, частоту вращения которых можно регулировать ручками управления. В итоге можно подобрать такие скорости вращения моторчиков, что луч будет рисовать на экране неподвижные фигуры (фигуры Лиссажу)
Фигурами Лиссажу называются траектории, прочерчиваемые точкой, совершающей одновременно два гармонических колебания в двух взаимно перпендикулярных направлениях.
Зеркала наклеены на моторчики на строго перпендикулярно оси вращения, а под небольшим углом. Луч отклоняется от своей траектории. Эти смещения накапливаются от зеркала к зеркалу, и луч начинает описывать на экране замысловатую картинку. Однако, если моторчики будут вращаться с одинаковой скоростью, то смещения луча по горизонтали и вертикали будут происходить с одинаковой частотой или кратной, т.е. на одно движение вверх- вниз придется несколько движений вправо-влево. Луч будет перемещаться по одному и тому же пути. В этом случае фигура, зафиксируется и будет неподвижной.  ', NULL, 'ФИГУРЫ ЛИССАЖУ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ');
INSERT INTO public.register (id, description, picture, title) VALUES (72, 'Лазерный луч проходит через воду, и, преломляясь на границе раздела, выходит наружу. Изменяя угол падения луча на границу раздела, а именно, увеличивая его мы приходим к моменту, когда, луч начинает отражаться назад в воду и не выходит наружу. Для воды и воздуха этот угол (угол Брюстера) равен 48,5 градуса. Sin α =1/n, где n – показатель преломления среды.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 'ПОЛНОЕ ВНУТРЕННЕЕ ОТРАЖЕНИЕ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ');
INSERT INTO public.register (id, description, picture, title) VALUES (73, 'Закон полного внутреннего отражения используется в современных оптоволоконных кабелях, с помощью которых работает интернет. Сигнал здесь передается не по проводам, а с помощью света, который распространяется по световоду. Скорость передачи сигнала, а значит информации, гораздо больше.
Оптоволокно состоит из сердцевины и оболочки, изготовленных из кварца и стекла. Свет распространяется по сердцевине и отражается от оболочки.
С помощью оптоволокна вы можете провести свет снаружи внутрь погреба или бункера, находящегося глубоко под землей. Без всякого электричества.
Можно передавать звук по оптоволокну. Для этого необходимо промодулировать лазерный сигнал звуком, на выходе поставить усилитель звука, получим звук голоса или музыки.                                                                                                                                                                                                                                                                                                                                                                           ', NULL, 'НАБОР СВЕТОВОДОВ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ');
INSERT INTO public.register (id, description, picture, title) VALUES (74, 'Микроскоп включает основание, штатив, который перемещается вверх-вниз. На штативе крепится револьвер с объективами и предметный столик. На столике находится предметное стекло, на который кладется препарат. Над револьвером – тубус с окуляром.
Настраивая объектив и окуляр можно добиться четкого увеличенного изображения лапы мухи, луковой кожуры или человеческого волоса.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', NULL, 'МИКРОСКОП С ЛАПОЙ МУХИ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ');
INSERT INTO public.register (id, description, picture, title) VALUES (75, 'Траектория – результирующее колебание от сложения (суперпозиции) колебаний происходящих в трех разных плоскостях и с разными частотами. Лазер, находящийся на конце маятника, рисует причудливые фигуры. Их нельзя стереть, но со временем они исчезают.
Свет лазера падает на подложку, сделанную из специального материала- люминофора, и поглощается в ней. А затем начинает переизлучаться назад, вызывая свечение подложки. Это явление называется фотолюминесценцией.
На основе веществ – фотолюминофоров делают циферблаты часов, компасы, которые светятся в темноте, а также светящиеся яркие краски.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', NULL, 'ФИГУРЫ ЛИССАЖУ МАЯТНИК НА ПОДВИЖНОЙ ОПОРЕ                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ');
INSERT INTO public.register (id, description, picture, title) VALUES (1, 'Физическим маятником называют твердое тело, способное совершать повторяющиеся колебания вокруг положения равновесия.
Основные характеристики маятника:
Амплитуда колебаний – это максимальное отклонение от положения равновесия
Частота колебаний –число колебаний в единицу времени.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 'ФИЗИЧЕСКИЙ МАЯТНИК                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ');


--
-- TOC entry 4940 (class 0 OID 16781)
-- Dependencies: 234
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 219
-- Name: answers_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_geography_id_seq', 58, true);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 215
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_id_seq', 44, true);


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 224
-- Name: answers_physics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_physics_id_seq', 33, true);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 235
-- Name: limits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.limits_id_seq', 1, false);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 226
-- Name: question_physics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_physics_id_seq', 8, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 221
-- Name: questions_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_geography_id_seq', 16, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 217
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 12, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 227
-- Name: repository_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.repository_id_seq', 75, true);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 233
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);


--
-- TOC entry 4759 (class 2606 OID 16676)
-- Name: answers_geography answers_geography_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers_geography
    ADD CONSTRAINT answers_geography_pk PRIMARY KEY (id);


--
-- TOC entry 4765 (class 2606 OID 16701)
-- Name: answers_physics answers_physics_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers_physics
    ADD CONSTRAINT answers_physics_pk PRIMARY KEY (id);


--
-- TOC entry 4754 (class 2606 OID 16658)
-- Name: answers_biology answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers_biology
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 16773)
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 4777 (class 2606 OID 16793)
-- Name: limits limits_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limits
    ADD CONSTRAINT limits_pk PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 16714)
-- Name: questions_physics question_physics_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions_physics
    ADD CONSTRAINT question_physics_pk PRIMARY KEY (id);


--
-- TOC entry 4762 (class 2606 OID 16686)
-- Name: questions_geography questions_geography_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions_geography
    ADD CONSTRAINT questions_geography_pk PRIMARY KEY (id);


--
-- TOC entry 4756 (class 2606 OID 16665)
-- Name: questions_biology questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions_biology
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 4771 (class 2606 OID 16723)
-- Name: register repository_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register
    ADD CONSTRAINT repository_pk PRIMARY KEY (id);


--
-- TOC entry 4775 (class 2606 OID 16786)
-- Name: transactions transactions_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pk PRIMARY KEY (id);


--
-- TOC entry 4757 (class 1259 OID 16677)
-- Name: answers_geography_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX answers_geography_id_uindex ON public.answers_geography USING btree (id);


--
-- TOC entry 4763 (class 1259 OID 16699)
-- Name: answers_physics_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX answers_physics_id_uindex ON public.answers_physics USING btree (id);


--
-- TOC entry 4766 (class 1259 OID 16712)
-- Name: question_physics_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX question_physics_id_uindex ON public.questions_physics USING btree (id);


--
-- TOC entry 4760 (class 1259 OID 16687)
-- Name: questions_geography_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX questions_geography_id_uindex ON public.questions_geography USING btree (id);


--
-- TOC entry 4769 (class 1259 OID 16724)
-- Name: repository_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX repository_id_uindex ON public.register USING btree (id);


-- Completed on 2024-04-16 11:41:47

--
-- PostgreSQL database dump complete
--

