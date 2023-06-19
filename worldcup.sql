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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 328, 329, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 330, 331, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 329, 331, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 328, 330, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 329, 332, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 331, 333, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 330, 334, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 328, 335, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 331, 336, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 333, 337, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 330, 338, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 334, 339, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 329, 340, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 332, 341, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 335, 342, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 328, 343, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 344, 343, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 345, 334, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 343, 345, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 344, 334, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 345, 346, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 343, 330, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 334, 336, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 344, 328, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 334, 347, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 336, 335, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 328, 348, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 344, 349, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 345, 339, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 346, 350, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 343, 337, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 330, 351, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (328, 'France');
INSERT INTO public.teams VALUES (329, 'Croatia');
INSERT INTO public.teams VALUES (330, 'Belgium');
INSERT INTO public.teams VALUES (331, 'England');
INSERT INTO public.teams VALUES (332, 'Russia');
INSERT INTO public.teams VALUES (333, 'Sweden');
INSERT INTO public.teams VALUES (334, 'Brazil');
INSERT INTO public.teams VALUES (335, 'Uruguay');
INSERT INTO public.teams VALUES (336, 'Colombia');
INSERT INTO public.teams VALUES (337, 'Switzerland');
INSERT INTO public.teams VALUES (338, 'Japan');
INSERT INTO public.teams VALUES (339, 'Mexico');
INSERT INTO public.teams VALUES (340, 'Denmark');
INSERT INTO public.teams VALUES (341, 'Spain');
INSERT INTO public.teams VALUES (342, 'Portugal');
INSERT INTO public.teams VALUES (343, 'Argentina');
INSERT INTO public.teams VALUES (344, 'Germany');
INSERT INTO public.teams VALUES (345, 'Netherlands');
INSERT INTO public.teams VALUES (346, 'Costa Rica');
INSERT INTO public.teams VALUES (347, 'Chile');
INSERT INTO public.teams VALUES (348, 'Nigeria');
INSERT INTO public.teams VALUES (349, 'Algeria');
INSERT INTO public.teams VALUES (350, 'Greece');
INSERT INTO public.teams VALUES (351, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 351, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

