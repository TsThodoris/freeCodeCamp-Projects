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
    asteroid_id character varying(30) NOT NULL,
    size integer NOT NULL,
    weight integer NOT NULL,
    sds2 integer,
    name character varying(30)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    col3 integer,
    col4 integer,
    col5 integer,
    sds2 integer,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(30) NOT NULL,
    distance_from_earth_in_au numeric(10,3) NOT NULL,
    mass integer NOT NULL,
    earth1 integer,
    earth2 integer,
    earth3 integer,
    sds2 integer,
    name character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    size integer NOT NULL,
    tem5 integer,
    tem45 integer,
    sds2 integer,
    name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(30) NOT NULL,
    type text NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    hor3 integer,
    hor4 integer,
    hor5 integer,
    sds2 integer,
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('a1', 233, 23, NULL, NULL);
INSERT INTO public.asteroid VALUES ('a2', 2675, 34350, NULL, NULL);
INSERT INTO public.asteroid VALUES ('a3', 645, 56534, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('a centauri', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal3', 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal4', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal5', 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal6', 7, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 2.300, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m2', 2.300, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m3', 2.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m4', 5.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m5', 3345.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m6', 335.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m7', 4335.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m8', 4335.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m9', 135.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m10', 185.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m11', 885.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m12', 6.223, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m13', 6.223, 123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m14', 6.223, 1563, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m15', 6.223, 763, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m16', 6.223, 563, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m17', 6.223, 5873, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m18', 6.223, 6873, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m19', 6.223, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('m20', 6.223, 6, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('milky way', 23, 453, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('
a centauri', 234, 5656, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal3', 23, 23, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal4', 45, 6464, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal5', 3535, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal6', 34, 123, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal7', 22222, 11111, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal8', 22222, 23232, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal9', 22222, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal10', 22222, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal11', 22222, 551, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('gal12', 22222, 552, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('milky way', 'f23', true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a centauri', 'f434', true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('gal3', 'f421', true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('gal4', 'f21', true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('gal5', 'f67', true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('gal6', 'f4367', false, true, NULL, NULL, NULL, NULL, NULL);


--
-- Name: asteroid asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_id PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_sds2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_sds2_key UNIQUE (sds2);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_sds2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sds2_key UNIQUE (sds2);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_sds2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_sds2_key UNIQUE (sds2);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_sds2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sds2_key UNIQUE (sds2);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_sds2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sds2_key UNIQUE (sds2);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- PostgreSQL database dump complete
--

