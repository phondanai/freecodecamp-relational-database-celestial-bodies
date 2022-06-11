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
    name character varying(80) NOT NULL,
    mass integer,
    distance integer,
    radius numeric,
    short_description text,
    spin boolean,
    expand boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: interstellar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.interstellar (
    interstellar_id integer NOT NULL,
    name character varying(80),
    total_stars integer NOT NULL
);


ALTER TABLE public.interstellar OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(80) NOT NULL,
    mass integer,
    distance integer,
    radius numeric,
    short_description text,
    spin boolean,
    expand boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(80) NOT NULL,
    mass integer,
    distance integer,
    radius numeric,
    short_description text,
    spin boolean,
    expand boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(80) NOT NULL,
    mass integer,
    distance integer,
    radius numeric,
    short_description text,
    spin boolean,
    expand boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, 1, 1, 'Andromeda gets its name from the area of the sky.', false, true);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 2, 2, 2, 'Appearance is similar to an insects antennae', false, true);
INSERT INTO public.galaxy VALUES (3, 'Backward', 3, 3, 3, 'It appears to rotate backwards.', false, true);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 4, 4, 4, 'The Milky Way is the galaxy that includes our Solar System', true, true);
INSERT INTO public.galaxy VALUES (5, 'Butterfly Galaxies', 5, 5, 5, 'They were both discovered by William Herschel in 1784', false, true);
INSERT INTO public.galaxy VALUES (6, 'Medusa Merger', 6, 6, 6, 'A pair of interacting galaxies in the constellation Ursa Major', false, true);


--
-- Data for Name: interstellar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.interstellar VALUES (1, 'Miller', 1);
INSERT INTO public.interstellar VALUES (2, 'Brant', 2);
INSERT INTO public.interstellar VALUES (3, 'Cooper', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 1, 1, 1, 'The greatest moon', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Charon', 2, 2, 2, 'super far moon', true, false, 2);
INSERT INTO public.moon VALUES (3, 'Nereid', 3, 3, 3, 'Neptune moon like', true, false, 3);
INSERT INTO public.moon VALUES (4, 'Metis', 4, 4, 4, 'Innermost', true, false, 9);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, 5, 5, 'Discovered by Voyager 2 camera', true, false, 9);
INSERT INTO public.moon VALUES (6, 'Amalthea', 6, 6, 6, 'Jupiter V', true, false, 9);
INSERT INTO public.moon VALUES (7, 'Thebe', 7, 7, 7, 'Discovered by Voyager 1 image.', true, false, 9);
INSERT INTO public.moon VALUES (8, 'Io', 8, 8, 8, 'Fourth-largest in solar system.', true, false, 9);
INSERT INTO public.moon VALUES (9, 'Europa', 9, 9, 9, 'Discovered in 1610.', true, false, 9);
INSERT INTO public.moon VALUES (10, 'Ganymede', 10, 10, 10, 'Largest moon in the solar system.', true, false, 9);
INSERT INTO public.moon VALUES (11, 'Phobos', 11, 11, 11, 'Inner most', true, false, 8);
INSERT INTO public.moon VALUES (12, 'Deimos', 12, 12, 12, 'Outer most', true, false, 8);
INSERT INTO public.moon VALUES (13, 'Naiad', 13, 13, 13, 'Inner most', true, false, 12);
INSERT INTO public.moon VALUES (14, 'Thalassa', 14, 14, 14, 'Named from the sea god.', true, false, 12);
INSERT INTO public.moon VALUES (15, 'Despina', 15, 15, 15, 'A nymph greek name.', true, false, 12);
INSERT INTO public.moon VALUES (16, 'Galatea', 16, 16, 16, 'Neptune VI.', true, false, 12);
INSERT INTO public.moon VALUES (17, 'Larissa', 17, 17, 17, 'Neptune VII.', true, false, 12);
INSERT INTO public.moon VALUES (18, 'Hippocamp', 18, 18, 18, 'Neptune XIV.', true, false, 12);
INSERT INTO public.moon VALUES (19, 'Proteus', 19, 19, 19, 'Neptune VIII.', true, false, 12);
INSERT INTO public.moon VALUES (20, 'Triton', 20, 20, 20, 'Largest moon.', true, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PA-99-N2', 1, 1, 1, 'one of the Andromeda planet', true, false, 1);
INSERT INTO public.planet VALUES (2, 'PA-88-N3', 2, 2, 2, 'another planet of the Andromeda', true, false, 2);
INSERT INTO public.planet VALUES (3, 'PB-11-N1', 3, 3, 3, 'yet another planet of the Andromeda', true, false, 3);
INSERT INTO public.planet VALUES (4, 'Sun', 4, 4, 4, 'G-type main-sequence star.', true, false, 4);
INSERT INTO public.planet VALUES (5, 'Mercury', 5, 5, 5, 'Smallest planet in the Solar System.', true, false, 4);
INSERT INTO public.planet VALUES (6, 'Mercury', 6, 6, 6, 'Second planet from the Sun.', true, false, 4);
INSERT INTO public.planet VALUES (7, 'Earth', 7, 7, 7, 'Our home.', true, false, 4);
INSERT INTO public.planet VALUES (8, 'Mars', 8, 8, 8, 'The red planet.', true, false, 4);
INSERT INTO public.planet VALUES (9, 'Jupiter', 9, 9, 9, 'The largest planet in the Solar System.', true, false, 4);
INSERT INTO public.planet VALUES (10, 'Saturn', 10, 10, 10, 'The only planet that have rings.', true, false, 4);
INSERT INTO public.planet VALUES (11, 'Uranus', 11, 11, 11, 'The greek god name planet.', true, false, 4);
INSERT INTO public.planet VALUES (12, 'Neptune', 12, 12, 12, 'The farthest planet.', true, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Adhil', 1, 1, 1, 'The name comes from the Arabic ao-oay!, meaning the train of a garment', true, false, 1);
INSERT INTO public.star VALUES (2, 'Almach', 2, 2, 2, 'Almach is the star traditional name.', true, false, 1);
INSERT INTO public.star VALUES (3, 'Alpheratz', 3, 3, 3, 'The name comes from the Arabic phrase surrat al-faras, meaning the novel of the mare.', true, false, 1);
INSERT INTO public.star VALUES (4, 'Milky Star', 4, 4, 4, 'The Milky Star is the star that includes our Solar System', true, true, 4);
INSERT INTO public.star VALUES (5, 'Butterfly Star', 5, 5, 5, 'They were both discovered by William Herschel in 1784', false, true, 5);
INSERT INTO public.star VALUES (6, 'Medusa Merger Star', 6, 6, 6, 'A pair of interacting galaxies in the constellation Ursa Major', false, true, 6);


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
-- Name: interstellar interstellar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.interstellar
    ADD CONSTRAINT interstellar_name_key UNIQUE (name);


--
-- Name: interstellar interstellar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.interstellar
    ADD CONSTRAINT interstellar_pkey PRIMARY KEY (interstellar_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
