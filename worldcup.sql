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

INSERT INTO public.games VALUES (240, 2018, 'Final', 374, 375, 4, 2);
INSERT INTO public.games VALUES (241, 2018, 'Third Place', 376, 377, 2, 0);
INSERT INTO public.games VALUES (242, 2018, 'Semi-Final', 375, 377, 2, 1);
INSERT INTO public.games VALUES (243, 2018, 'Semi-Final', 374, 376, 1, 0);
INSERT INTO public.games VALUES (244, 2018, 'Quarter-Final', 375, 378, 3, 2);
INSERT INTO public.games VALUES (245, 2018, 'Quarter-Final', 377, 379, 2, 0);
INSERT INTO public.games VALUES (246, 2018, 'Quarter-Final', 376, 380, 2, 1);
INSERT INTO public.games VALUES (247, 2018, 'Quarter-Final', 374, 381, 2, 0);
INSERT INTO public.games VALUES (248, 2018, 'Eighth-Final', 377, 382, 2, 1);
INSERT INTO public.games VALUES (249, 2018, 'Eighth-Final', 379, 383, 1, 0);
INSERT INTO public.games VALUES (250, 2018, 'Eighth-Final', 376, 384, 3, 2);
INSERT INTO public.games VALUES (251, 2018, 'Eighth-Final', 380, 385, 2, 0);
INSERT INTO public.games VALUES (252, 2018, 'Eighth-Final', 375, 386, 2, 1);
INSERT INTO public.games VALUES (253, 2018, 'Eighth-Final', 378, 387, 2, 1);
INSERT INTO public.games VALUES (254, 2018, 'Eighth-Final', 381, 388, 2, 1);
INSERT INTO public.games VALUES (255, 2018, 'Eighth-Final', 374, 389, 4, 3);
INSERT INTO public.games VALUES (256, 2014, 'Final', 390, 389, 1, 0);
INSERT INTO public.games VALUES (257, 2014, 'Third Place', 391, 380, 3, 0);
INSERT INTO public.games VALUES (258, 2014, 'Semi-Final', 389, 391, 1, 0);
INSERT INTO public.games VALUES (259, 2014, 'Semi-Final', 390, 380, 7, 1);
INSERT INTO public.games VALUES (260, 2014, 'Quarter-Final', 391, 392, 1, 0);
INSERT INTO public.games VALUES (261, 2014, 'Quarter-Final', 389, 376, 1, 0);
INSERT INTO public.games VALUES (262, 2014, 'Quarter-Final', 380, 382, 2, 1);
INSERT INTO public.games VALUES (263, 2014, 'Quarter-Final', 390, 374, 1, 0);
INSERT INTO public.games VALUES (264, 2014, 'Eighth-Final', 380, 393, 2, 1);
INSERT INTO public.games VALUES (265, 2014, 'Eighth-Final', 382, 381, 2, 0);
INSERT INTO public.games VALUES (266, 2014, 'Eighth-Final', 374, 394, 2, 0);
INSERT INTO public.games VALUES (267, 2014, 'Eighth-Final', 390, 395, 2, 1);
INSERT INTO public.games VALUES (268, 2014, 'Eighth-Final', 391, 385, 2, 1);
INSERT INTO public.games VALUES (269, 2014, 'Eighth-Final', 392, 396, 2, 1);
INSERT INTO public.games VALUES (270, 2014, 'Eighth-Final', 389, 383, 1, 0);
INSERT INTO public.games VALUES (271, 2014, 'Eighth-Final', 376, 397, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (374, 'France');
INSERT INTO public.teams VALUES (375, 'Croatia');
INSERT INTO public.teams VALUES (376, 'Belgium');
INSERT INTO public.teams VALUES (377, 'England');
INSERT INTO public.teams VALUES (378, 'Russia');
INSERT INTO public.teams VALUES (379, 'Sweden');
INSERT INTO public.teams VALUES (380, 'Brazil');
INSERT INTO public.teams VALUES (381, 'Uruguay');
INSERT INTO public.teams VALUES (382, 'Colombia');
INSERT INTO public.teams VALUES (383, 'Switzerland');
INSERT INTO public.teams VALUES (384, 'Japan');
INSERT INTO public.teams VALUES (385, 'Mexico');
INSERT INTO public.teams VALUES (386, 'Denmark');
INSERT INTO public.teams VALUES (387, 'Spain');
INSERT INTO public.teams VALUES (388, 'Portugal');
INSERT INTO public.teams VALUES (389, 'Argentina');
INSERT INTO public.teams VALUES (390, 'Germany');
INSERT INTO public.teams VALUES (391, 'Netherlands');
INSERT INTO public.teams VALUES (392, 'Costa Rica');
INSERT INTO public.teams VALUES (393, 'Chile');
INSERT INTO public.teams VALUES (394, 'Nigeria');
INSERT INTO public.teams VALUES (395, 'Algeria');
INSERT INTO public.teams VALUES (396, 'Greece');
INSERT INTO public.teams VALUES (397, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 271, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 397, true);


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
