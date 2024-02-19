--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    diameter numeric NOT NULL,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    galaxy_types text NOT NULL,
    stars_quant integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    distance_from_earth integer NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_types text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL,
    diameter integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Vesta', 525, 2);
INSERT INTO public.asteroid VALUES (2, 'Ceres', 940, 3);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512, 2);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 431, 2);
INSERT INTO public.asteroid VALUES (5, 'Eros', 16, 1);
INSERT INTO public.asteroid VALUES (6, 'Gaspra', 11, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 200);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to Milky Way', 'Spiral', 1000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy near Andromeda', 'Spiral', 50);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Giant elliptical galaxy in Virgo Cluster', 'Elliptical', 150);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Interacting spiral galaxy in Canes Venatici', 'Spiral', 75);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral galaxy in Virgo Cluster with a prominent dust lane', 'Spiral', 80);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9376, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, true, 2);
INSERT INTO public.moon VALUES (4, 'Titan', 1221870, true, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1070400, true, 4);
INSERT INTO public.moon VALUES (6, 'Europa', 671100, true, 4);
INSERT INTO public.moon VALUES (7, 'Enceladus', 238040, true, 4);
INSERT INTO public.moon VALUES (8, 'Mimas', 185404, true, 4);
INSERT INTO public.moon VALUES (9, 'Ceres', 413767, true, 5);
INSERT INTO public.moon VALUES (10, 'Charon', 19591, true, 5);
INSERT INTO public.moon VALUES (11, 'Triton', 354800, true, 5);
INSERT INTO public.moon VALUES (12, 'Larissa', 73580, true, 5);
INSERT INTO public.moon VALUES (13, 'Pandora', 141700, true, 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', 12952000, true, 6);
INSERT INTO public.moon VALUES (15, 'Nix', 48710, true, 6);
INSERT INTO public.moon VALUES (16, 'Hydra', 64638, true, 6);
INSERT INTO public.moon VALUES (17, 'Eros', 21800, true, 7);
INSERT INTO public.moon VALUES (18, 'Gaspra', 11700, true, 7);
INSERT INTO public.moon VALUES (19, 'Ida', 16000, true, 7);
INSERT INTO public.moon VALUES (20, 'Amalthea', 181366, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Tatooine', 'Terrestrial', false, 2);
INSERT INTO public.planet VALUES (7, 'Naboo', 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (8, 'Alderaan', 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (9, 'Endor', 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (10, 'Hoth', 'Terrestrial', false, 2);
INSERT INTO public.planet VALUES (11, 'Dagobah', 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (12, 'Coruscant', 'Terrestrial', true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, 1, 1392684);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 6000, 1, 1448284);
INSERT INTO public.star VALUES (3, 'Sirius', 250, 1, 1989104);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 8000, 1, 1459972);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 6000, 2, 231706);
INSERT INTO public.star VALUES (6, 'Polaris', 50000, 2, 587288);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

