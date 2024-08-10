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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (88, 88, 398);
INSERT INTO public.games VALUES (89, 88, 247);
INSERT INTO public.games VALUES (90, 89, 234);
INSERT INTO public.games VALUES (91, 89, 438);
INSERT INTO public.games VALUES (92, 88, 696);
INSERT INTO public.games VALUES (93, 88, 722);
INSERT INTO public.games VALUES (94, 88, 723);
INSERT INTO public.games VALUES (95, 88, 979);
INSERT INTO public.games VALUES (96, 90, 38);
INSERT INTO public.games VALUES (97, 90, 164);
INSERT INTO public.games VALUES (98, 91, 172);
INSERT INTO public.games VALUES (99, 91, 488);
INSERT INTO public.games VALUES (100, 90, 846);
INSERT INTO public.games VALUES (101, 90, 788);
INSERT INTO public.games VALUES (102, 90, 789);
INSERT INTO public.games VALUES (103, 90, 260);
INSERT INTO public.games VALUES (104, 92, 11);
INSERT INTO public.games VALUES (105, 93, 20);
INSERT INTO public.games VALUES (106, 93, 185);
INSERT INTO public.games VALUES (107, 94, 831);
INSERT INTO public.games VALUES (108, 94, 559);
INSERT INTO public.games VALUES (109, 93, 960);
INSERT INTO public.games VALUES (110, 93, 530);
INSERT INTO public.games VALUES (111, 93, 531);
INSERT INTO public.games VALUES (112, 93, 107);
INSERT INTO public.games VALUES (113, 92, 7);
INSERT INTO public.games VALUES (114, 95, 882);
INSERT INTO public.games VALUES (115, 95, 802);
INSERT INTO public.games VALUES (116, 96, 588);
INSERT INTO public.games VALUES (117, 96, 387);
INSERT INTO public.games VALUES (118, 95, 373);
INSERT INTO public.games VALUES (119, 95, 829);
INSERT INTO public.games VALUES (120, 95, 830);
INSERT INTO public.games VALUES (121, 95, 664);
INSERT INTO public.games VALUES (122, 97, 797);
INSERT INTO public.games VALUES (123, 97, 897);
INSERT INTO public.games VALUES (124, 98, 202);
INSERT INTO public.games VALUES (125, 98, 52);
INSERT INTO public.games VALUES (126, 97, 870);
INSERT INTO public.games VALUES (127, 97, 463);
INSERT INTO public.games VALUES (128, 97, 464);
INSERT INTO public.games VALUES (129, 97, 589);
INSERT INTO public.games VALUES (130, 99, 614);
INSERT INTO public.games VALUES (131, 99, 66);
INSERT INTO public.games VALUES (132, 100, 107);
INSERT INTO public.games VALUES (133, 100, 103);
INSERT INTO public.games VALUES (134, 99, 342);
INSERT INTO public.games VALUES (135, 99, 200);
INSERT INTO public.games VALUES (136, 99, 201);
INSERT INTO public.games VALUES (137, 99, 83);
INSERT INTO public.games VALUES (138, 101, 282);
INSERT INTO public.games VALUES (139, 101, 191);
INSERT INTO public.games VALUES (140, 102, 531);
INSERT INTO public.games VALUES (141, 102, 478);
INSERT INTO public.games VALUES (142, 101, 307);
INSERT INTO public.games VALUES (143, 101, 92);
INSERT INTO public.games VALUES (144, 101, 93);
INSERT INTO public.games VALUES (145, 101, 25);
INSERT INTO public.games VALUES (146, 114, 244);
INSERT INTO public.games VALUES (147, 114, 858);
INSERT INTO public.games VALUES (148, 115, 42);
INSERT INTO public.games VALUES (149, 115, 596);
INSERT INTO public.games VALUES (150, 114, 686);
INSERT INTO public.games VALUES (151, 114, 149);
INSERT INTO public.games VALUES (152, 114, 984);
INSERT INTO public.games VALUES (153, 116, 111);
INSERT INTO public.games VALUES (154, 116, 674);
INSERT INTO public.games VALUES (155, 117, 554);
INSERT INTO public.games VALUES (156, 117, 869);
INSERT INTO public.games VALUES (157, 116, 623);
INSERT INTO public.games VALUES (158, 116, 46);
INSERT INTO public.games VALUES (159, 116, 784);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1723311701572', 88);
INSERT INTO public.users VALUES ('user_1723311701571', 89);
INSERT INTO public.users VALUES ('user_1723311802714', 90);
INSERT INTO public.users VALUES ('user_1723311802713', 91);
INSERT INTO public.users VALUES ('asd', 92);
INSERT INTO public.users VALUES ('user_1723312455309', 93);
INSERT INTO public.users VALUES ('user_1723312455308', 94);
INSERT INTO public.users VALUES ('user_1723313916569', 95);
INSERT INTO public.users VALUES ('user_1723313916568', 96);
INSERT INTO public.users VALUES ('user_1723313933249', 97);
INSERT INTO public.users VALUES ('user_1723313933248', 98);
INSERT INTO public.users VALUES ('user_1723313961897', 99);
INSERT INTO public.users VALUES ('user_1723313961896', 100);
INSERT INTO public.users VALUES ('user_1723314015273', 101);
INSERT INTO public.users VALUES ('user_1723314015272', 102);
INSERT INTO public.users VALUES ('asdf', 103);
INSERT INTO public.users VALUES ('user_1723314173688', 104);
INSERT INTO public.users VALUES ('user_1723314173687', 105);
INSERT INTO public.users VALUES ('user_1723314657092', 106);
INSERT INTO public.users VALUES ('user_1723314657091', 107);
INSERT INTO public.users VALUES ('user_1723314734488', 108);
INSERT INTO public.users VALUES ('user_1723314734487', 109);
INSERT INTO public.users VALUES ('user_1723314817647', 110);
INSERT INTO public.users VALUES ('user_1723314817646', 111);
INSERT INTO public.users VALUES ('user_1723314900937', 112);
INSERT INTO public.users VALUES ('user_1723314900936', 113);
INSERT INTO public.users VALUES ('user_1723314976418', 114);
INSERT INTO public.users VALUES ('user_1723314976417', 115);
INSERT INTO public.users VALUES ('user_1723315032356', 116);
INSERT INTO public.users VALUES ('user_1723315032355', 117);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 159, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 117, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

