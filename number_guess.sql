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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: player_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.player_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_user_id_seq OWNER TO freecodecamp;

--
-- Name: player_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.player_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.player_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 91, 90);
INSERT INTO public.games VALUES (2, 4, 630, 629);
INSERT INTO public.games VALUES (3, 5, 166, 165);
INSERT INTO public.games VALUES (4, 5, 782, 781);
INSERT INTO public.games VALUES (5, 4, 269, 266);
INSERT INTO public.games VALUES (6, 4, 175, 173);
INSERT INTO public.games VALUES (7, 4, 146, 145);
INSERT INTO public.games VALUES (8, 6, 931, 930);
INSERT INTO public.games VALUES (9, 6, 584, 583);
INSERT INTO public.games VALUES (10, 7, 837, 836);
INSERT INTO public.games VALUES (11, 7, 70, 69);
INSERT INTO public.games VALUES (12, 6, 356, 353);
INSERT INTO public.games VALUES (13, 6, 1001, 999);
INSERT INTO public.games VALUES (14, 6, 362, 361);
INSERT INTO public.games VALUES (15, 8, 487, 486);
INSERT INTO public.games VALUES (16, 8, 525, 524);
INSERT INTO public.games VALUES (17, 9, 649, 648);
INSERT INTO public.games VALUES (18, 9, 866, 865);
INSERT INTO public.games VALUES (19, 8, 667, 664);
INSERT INTO public.games VALUES (20, 8, 827, 825);
INSERT INTO public.games VALUES (21, 8, 379, 378);
INSERT INTO public.games VALUES (22, 10, 974, 973);
INSERT INTO public.games VALUES (23, 10, 188, 187);
INSERT INTO public.games VALUES (24, 11, 556, 555);
INSERT INTO public.games VALUES (25, 11, 819, 818);
INSERT INTO public.games VALUES (26, 10, 454, 451);
INSERT INTO public.games VALUES (27, 10, 113, 111);
INSERT INTO public.games VALUES (28, 10, 518, 517);
INSERT INTO public.games VALUES (29, 12, 5, 1);
INSERT INTO public.games VALUES (30, 12, 1, 1);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1723751385051');
INSERT INTO public.players VALUES (2, 'user_1723751385050');
INSERT INTO public.players VALUES (3, 'Wiley');
INSERT INTO public.players VALUES (4, 'user_1723751609008');
INSERT INTO public.players VALUES (5, 'user_1723751609007');
INSERT INTO public.players VALUES (6, 'user_1723751669619');
INSERT INTO public.players VALUES (7, 'user_1723751669618');
INSERT INTO public.players VALUES (8, 'user_1723751904043');
INSERT INTO public.players VALUES (9, 'user_1723751904042');
INSERT INTO public.players VALUES (10, 'user_1723752074560');
INSERT INTO public.players VALUES (11, 'user_1723752074559');
INSERT INTO public.players VALUES (12, 't');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: player_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.player_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players player_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT player_pkey PRIMARY KEY (user_id);


--
-- Name: players player_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT player_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

