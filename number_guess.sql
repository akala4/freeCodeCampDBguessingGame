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
    score integer NOT NULL
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
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 5);
INSERT INTO public.games VALUES (2, 1, 4);
INSERT INTO public.games VALUES (3, 11, 827);
INSERT INTO public.games VALUES (4, 11, 546);
INSERT INTO public.games VALUES (5, 12, 254);
INSERT INTO public.games VALUES (6, 12, 976);
INSERT INTO public.games VALUES (7, 11, 169);
INSERT INTO public.games VALUES (8, 11, 602);
INSERT INTO public.games VALUES (9, 11, 332);
INSERT INTO public.games VALUES (10, 1, 8);
INSERT INTO public.games VALUES (11, 13, 908);
INSERT INTO public.games VALUES (12, 13, 929);
INSERT INTO public.games VALUES (13, 14, 878);
INSERT INTO public.games VALUES (14, 14, 668);
INSERT INTO public.games VALUES (15, 13, 154);
INSERT INTO public.games VALUES (16, 13, 983);
INSERT INTO public.games VALUES (17, 13, 306);
INSERT INTO public.games VALUES (19, 16, 2);
INSERT INTO public.games VALUES (20, 18, 855);
INSERT INTO public.games VALUES (21, 18, 886);
INSERT INTO public.games VALUES (22, 20, 123);
INSERT INTO public.games VALUES (23, 20, 90);
INSERT INTO public.games VALUES (24, 18, 164);
INSERT INTO public.games VALUES (25, 18, 88);
INSERT INTO public.games VALUES (26, 18, 125);
INSERT INTO public.games VALUES (27, 25, 702);
INSERT INTO public.games VALUES (28, 25, 229);
INSERT INTO public.games VALUES (29, 27, 50);
INSERT INTO public.games VALUES (30, 27, 296);
INSERT INTO public.games VALUES (31, 25, 44);
INSERT INTO public.games VALUES (32, 25, 348);
INSERT INTO public.games VALUES (33, 25, 791);
INSERT INTO public.games VALUES (34, 1, 8);
INSERT INTO public.games VALUES (35, 32, 660);
INSERT INTO public.games VALUES (36, 32, 51);
INSERT INTO public.games VALUES (37, 33, 783);
INSERT INTO public.games VALUES (38, 33, 911);
INSERT INTO public.games VALUES (39, 32, 266);
INSERT INTO public.games VALUES (40, 32, 440);
INSERT INTO public.games VALUES (41, 32, 417);
INSERT INTO public.games VALUES (42, 34, 622);
INSERT INTO public.games VALUES (43, 34, 568);
INSERT INTO public.games VALUES (44, 35, 902);
INSERT INTO public.games VALUES (45, 35, 823);
INSERT INTO public.games VALUES (46, 34, 714);
INSERT INTO public.games VALUES (47, 34, 509);
INSERT INTO public.games VALUES (48, 34, 122);
INSERT INTO public.games VALUES (49, 1, 6);
INSERT INTO public.games VALUES (50, 36, 688);
INSERT INTO public.games VALUES (51, 36, 798);
INSERT INTO public.games VALUES (52, 37, 993);
INSERT INTO public.games VALUES (53, 37, 634);
INSERT INTO public.games VALUES (54, 36, 444);
INSERT INTO public.games VALUES (55, 36, 966);
INSERT INTO public.games VALUES (56, 36, 273);
INSERT INTO public.games VALUES (57, 38, 6);
INSERT INTO public.games VALUES (58, 39, 569);
INSERT INTO public.games VALUES (59, 39, 193);
INSERT INTO public.games VALUES (60, 40, 406);
INSERT INTO public.games VALUES (61, 40, 462);
INSERT INTO public.games VALUES (62, 39, 440);
INSERT INTO public.games VALUES (63, 39, 234);
INSERT INTO public.games VALUES (64, 39, 904);
INSERT INTO public.games VALUES (65, 41, 859);
INSERT INTO public.games VALUES (66, 41, 416);
INSERT INTO public.games VALUES (67, 42, 272);
INSERT INTO public.games VALUES (68, 42, 532);
INSERT INTO public.games VALUES (69, 41, 622);
INSERT INTO public.games VALUES (70, 41, 820);
INSERT INTO public.games VALUES (71, 41, 772);
INSERT INTO public.games VALUES (72, 43, 144);
INSERT INTO public.games VALUES (73, 43, 491);
INSERT INTO public.games VALUES (74, 44, 807);
INSERT INTO public.games VALUES (75, 44, 755);
INSERT INTO public.games VALUES (76, 43, 217);
INSERT INTO public.games VALUES (77, 43, 823);
INSERT INTO public.games VALUES (78, 43, 630);
INSERT INTO public.games VALUES (79, 45, 417);
INSERT INTO public.games VALUES (80, 45, 365);
INSERT INTO public.games VALUES (81, 46, 41);
INSERT INTO public.games VALUES (82, 46, 980);
INSERT INTO public.games VALUES (83, 45, 440);
INSERT INTO public.games VALUES (84, 45, 532);
INSERT INTO public.games VALUES (85, 45, 65);
INSERT INTO public.games VALUES (86, 47, 495);
INSERT INTO public.games VALUES (87, 47, 349);
INSERT INTO public.games VALUES (88, 48, 915);
INSERT INTO public.games VALUES (89, 48, 338);
INSERT INTO public.games VALUES (90, 47, 17);
INSERT INTO public.games VALUES (91, 47, 989);
INSERT INTO public.games VALUES (92, 47, 315);
INSERT INTO public.games VALUES (93, 1, 5);
INSERT INTO public.games VALUES (94, 49, 27);
INSERT INTO public.games VALUES (95, 49, 2);
INSERT INTO public.games VALUES (96, 50, 525);
INSERT INTO public.games VALUES (97, 50, 226);
INSERT INTO public.games VALUES (98, 49, 263);
INSERT INTO public.games VALUES (99, 49, 765);
INSERT INTO public.games VALUES (100, 49, 804);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'test');
INSERT INTO public.users VALUES (3, 'your_mom');
INSERT INTO public.users VALUES (4, 'user_1667279707868');
INSERT INTO public.users VALUES (6, 'user_1667279707867');
INSERT INTO public.users VALUES (11, 'user_1667280339732');
INSERT INTO public.users VALUES (12, 'user_1667280339731');
INSERT INTO public.users VALUES (13, 'user_1667280420551');
INSERT INTO public.users VALUES (14, 'user_1667280420550');
INSERT INTO public.users VALUES (15, 'mario');
INSERT INTO public.users VALUES (16, 'еуые');
INSERT INTO public.users VALUES (18, 'user_1667280924365');
INSERT INTO public.users VALUES (20, 'user_1667280924364');
INSERT INTO public.users VALUES (25, 'user_1667280948935');
INSERT INTO public.users VALUES (27, 'user_1667280948934');
INSERT INTO public.users VALUES (32, 'user_1667281136084');
INSERT INTO public.users VALUES (33, 'user_1667281136083');
INSERT INTO public.users VALUES (34, 'user_1667281153345');
INSERT INTO public.users VALUES (35, 'user_1667281153344');
INSERT INTO public.users VALUES (36, 'user_1667281233453');
INSERT INTO public.users VALUES (37, 'user_1667281233452');
INSERT INTO public.users VALUES (38, 'test2');
INSERT INTO public.users VALUES (39, 'user_1667281261728');
INSERT INTO public.users VALUES (40, 'user_1667281261727');
INSERT INTO public.users VALUES (41, 'user_1667281298443');
INSERT INTO public.users VALUES (42, 'user_1667281298442');
INSERT INTO public.users VALUES (43, 'user_1667281414837');
INSERT INTO public.users VALUES (44, 'user_1667281414836');
INSERT INTO public.users VALUES (45, 'user_1667281481155');
INSERT INTO public.users VALUES (46, 'user_1667281481154');
INSERT INTO public.users VALUES (47, 'user_1667281488697');
INSERT INTO public.users VALUES (48, 'user_1667281488696');
INSERT INTO public.users VALUES (49, 'user_1667281525803');
INSERT INTO public.users VALUES (50, 'user_1667281525802');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 100, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 50, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

