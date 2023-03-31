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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    nje integer NOT NULL,
    "numeric" numeric,
    text text,
    poajo boolean NOT NULL,
    joapo boolean NOT NULL,
    moon_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    nje integer NOT NULL,
    dy integer NOT NULL,
    "numeric" numeric NOT NULL,
    text text,
    poajo boolean NOT NULL,
    joapo boolean NOT NULL
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
    name character varying(255) NOT NULL,
    nje integer NOT NULL,
    "numeric" numeric,
    text text,
    poajo boolean NOT NULL,
    joapo boolean NOT NULL,
    planet_id integer
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
    name character varying(255) NOT NULL,
    nje integer NOT NULL,
    "numeric" numeric,
    text text,
    poajo boolean NOT NULL,
    joapo boolean NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    nje integer NOT NULL,
    "numeric" numeric,
    text text,
    poajo boolean NOT NULL,
    joapo boolean NOT NULL,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'bjer', 1, 3.14, NULL, true, false, NULL);
INSERT INTO public.asteroid VALUES (2, 'Ceres', 2, 3.14, NULL, true, false, NULL);
INSERT INTO public.asteroid VALUES (3, 'Vesta', 1, 3.14, NULL, true, false, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Rrugaq', 1, 2, 3.14, NULL, true, false);
INSERT INTO public.galaxy VALUES (3, 'Idk', 1, 2, 3.14, NULL, true, false);
INSERT INTO public.galaxy VALUES (4, 'sedi', 1, 2, 3.14, NULL, true, false);
INSERT INTO public.galaxy VALUES (5, 'Rrugaqi', 11, 22, 13.14, NULL, true, false);
INSERT INTO public.galaxy VALUES (6, 'aIdk', 21, 32, 113.14, NULL, true, false);
INSERT INTO public.galaxy VALUES (7, 'sssedi', 41, 22, 53.14, NULL, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Hena', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (2, 'ksena', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (3, 'ena', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (4, 'bena', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (5, 'xena', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (6, 'xya', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (7, 'xyz', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (8, 'xqc', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (9, 'nle', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (10, 'yb', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (11, 'von', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (12, 'em', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (13, 'ICE SPICE', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (14, 'ORANGE HAIR', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (15, 'bad b ICE SPICE', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (16, 'ajs  SPICE', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (17, 'ajs spajs', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (18, 'munch', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (19, 'boys liar', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (20, 'spongebob', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (21, 'in hamood', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (22, 'pink', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (23, 'inthemirrordoinmydance', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.moon VALUES (24, 'inapartyijustwannarock', 1, 3.14, 'a', true, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'toka', 1, 3.14, 'L', true, false, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 2, 3.14, 'w', true, false, NULL);
INSERT INTO public.planet VALUES (3, 'Uranus', 4, 3.14, 'L', true, false, NULL);
INSERT INTO public.planet VALUES (4, 'stoka', 1, 3.14, 'LL', true, false, NULL);
INSERT INTO public.planet VALUES (5, 'Marz', 2, 3.14, 'w', true, false, NULL);
INSERT INTO public.planet VALUES (6, 'anusijot', 4, 3.14, 'L', true, false, NULL);
INSERT INTO public.planet VALUES (7, 'Merkuri', 1, 3.14, 'W', true, false, NULL);
INSERT INTO public.planet VALUES (8, 'Aferdita', 2, 3.14, 'W', true, false, NULL);
INSERT INTO public.planet VALUES (9, 'Saturni', 4, 3.14, 'w', true, false, NULL);
INSERT INTO public.planet VALUES (10, 'zhiva', 1, 3.14, 'W', true, false, NULL);
INSERT INTO public.planet VALUES (11, 'ape', 2, 3.14, 'W', true, false, NULL);
INSERT INTO public.planet VALUES (12, 'Gorilla', 4, 3.14, 'w', true, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rrugaq', 1, 3.14, 'a', true, false, NULL);
INSERT INTO public.star VALUES (2, 'Idk', 1, 3.14, 'b', true, false, NULL);
INSERT INTO public.star VALUES (3, 'sedi', 1, 3.14, 'as', true, false, NULL);
INSERT INTO public.star VALUES (4, 'Rrugaqa', 11, 3.14, 'sssssa', true, false, NULL);
INSERT INTO public.star VALUES (5, 'Issdk', 1, 3.114, 'aaaaab', true, false, NULL);
INSERT INTO public.star VALUES (6, 'shedi', 1, 3.414, 'bas', true, false, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

