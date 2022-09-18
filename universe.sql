--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    color text,
    distance numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    planet_id integer,
    year_discover numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    has_life boolean,
    how_many_moon integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: program; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.program (
    program_id integer NOT NULL,
    name character varying(30) NOT NULL,
    country character varying(30) NOT NULL,
    location character varying(30),
    active boolean
);


ALTER TABLE public.program OWNER TO freecodecamp;

--
-- Name: program_program_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.program_program_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.program_program_id_seq OWNER TO freecodecamp;

--
-- Name: program_program_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.program_program_id_seq OWNED BY public.program.program_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_earth_distance numeric,
    color text,
    galaxy_id integer,
    temp_k numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: program program_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.program ALTER COLUMN program_id SET DEFAULT nextval('public.program_program_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'eliptical', 'pink', 100);
INSERT INTO public.galaxy VALUES (2, 'antennae', 'spiral', 'blue', 150);
INSERT INTO public.galaxy VALUES (3, 'backward', 'spiral', 'yellow', 200);
INSERT INTO public.galaxy VALUES (4, 'black eye', 'eliptical', 'red', 250);
INSERT INTO public.galaxy VALUES (5, 'Bode', 'spiral', 'yellow', 300);
INSERT INTO public.galaxy VALUES (6, 'butterfly', 'irregular', 'blue', 400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1738, 3, 1600);
INSERT INTO public.moon VALUES (2, 'phobos', 11267, 4, 1877);
INSERT INTO public.moon VALUES (3, 'deimos', 6200, 4, 1877);
INSERT INTO public.moon VALUES (4, 'lo', 1829, 5, 1610);
INSERT INTO public.moon VALUES (5, 'europa', 1540, 5, 1610);
INSERT INTO public.moon VALUES (6, 'ganymede', 2634, 5, 1610);
INSERT INTO public.moon VALUES (7, 'callisto', 2410, 5, 1610);
INSERT INTO public.moon VALUES (8, 'himalia', 69.8, 5, 1904);
INSERT INTO public.moon VALUES (9, 'mimas', 198, 6, 1789);
INSERT INTO public.moon VALUES (10, 'dione', 561, 6, 1684);
INSERT INTO public.moon VALUES (11, 'rhea', 763, 6, 1672);
INSERT INTO public.moon VALUES (12, 'titan', 2574, 6, 1655);
INSERT INTO public.moon VALUES (13, 'janus', 89.5, 6, 1966);
INSERT INTO public.moon VALUES (14, 'calypso', 10.7, 6, 1980);
INSERT INTO public.moon VALUES (15, 'atlas', 15.2, 6, 1980);
INSERT INTO public.moon VALUES (16, 'ariel', 578, 7, 1851);
INSERT INTO public.moon VALUES (17, 'titania', 789, 7, 1787);
INSERT INTO public.moon VALUES (18, 'miranda', 235, 7, 1948);
INSERT INTO public.moon VALUES (19, 'bianca', 25.7, 7, 1986);
INSERT INTO public.moon VALUES (20, 'triton', 1353, 8, 1846);
INSERT INTO public.moon VALUES (21, 'larissa', 97, 8, 1981);
INSERT INTO public.moon VALUES (22, 'sao', 22, 8, 2002);
INSERT INTO public.moon VALUES (23, 'neso', 30, 8, 2002);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 4878, false, 0, 1);
INSERT INTO public.planet VALUES (2, 'venus', 12100, false, 0, 1);
INSERT INTO public.planet VALUES (3, 'earth', 12760, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'mars', 6878, false, 2, 2);
INSERT INTO public.planet VALUES (5, 'jupiter', 139882, false, 79, 2);
INSERT INTO public.planet VALUES (6, 'saturn', 120500, false, 62, 3);
INSERT INTO public.planet VALUES (7, 'uranus', 51120, false, 27, 3);
INSERT INTO public.planet VALUES (8, 'neptune', 49500, false, 14, 4);
INSERT INTO public.planet VALUES (9, 'ceres', 950, false, 0, 4);
INSERT INTO public.planet VALUES (10, 'pluto', 2370, false, 5, 5);
INSERT INTO public.planet VALUES (11, 'haumea', 1630, false, 2, 5);
INSERT INTO public.planet VALUES (12, 'makemake', 1430, false, 1, 6);
INSERT INTO public.planet VALUES (13, 'eris', 2320, false, 1, 6);


--
-- Data for Name: program; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.program VALUES (1, 'nasa', 'usa', 'texas', true);
INSERT INTO public.program VALUES (2, 'cnsa', 'china', 'beijing', true);
INSERT INTO public.program VALUES (3, 'cccp', 'russia', 'moscow', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alpha centauri', 4.37, 'orange', 1, 5790);
INSERT INTO public.star VALUES (2, 'bernard', 5.9, 'red', 1, 3100);
INSERT INTO public.star VALUES (3, 'wolf', 7.8, 'yellow', 2, 2700);
INSERT INTO public.star VALUES (4, 'lalande', 8.3, 'red', 2, 3500);
INSERT INTO public.star VALUES (5, 'sirius', 8.8, 'blue', 3, 9900);
INSERT INTO public.star VALUES (6, 'luyten', 8.7, 'orange', 3, 2650);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: program_program_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.program_program_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: program program_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.program
    ADD CONSTRAINT program_name_key UNIQUE (name);


--
-- Name: program program_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.program
    ADD CONSTRAINT program_name_key1 UNIQUE (name);


--
-- Name: program program_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.program
    ADD CONSTRAINT program_pkey PRIMARY KEY (program_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

