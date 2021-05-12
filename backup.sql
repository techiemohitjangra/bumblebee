--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-1.pgdg20.04+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO mohit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO mohit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO mohit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO mohit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO mohit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO mohit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO mohit;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO mohit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO mohit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO mohit;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO mohit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO mohit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO mohit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO mohit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO mohit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO mohit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO mohit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO mohit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO mohit;

--
-- Name: speaker_contact; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.speaker_contact (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    full_name character varying(32) NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.speaker_contact OWNER TO mohit;

--
-- Name: speaker_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.speaker_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.speaker_contact_id_seq OWNER TO mohit;

--
-- Name: speaker_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.speaker_contact_id_seq OWNED BY public.speaker_contact.id;


--
-- Name: speaker_phrases; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.speaker_phrases (
    id integer NOT NULL,
    phrase character varying(150) NOT NULL,
    words integer NOT NULL,
    song character varying(50) NOT NULL,
    start_time character varying(12) NOT NULL,
    end_time character varying(12) NOT NULL,
    audio character varying(150) NOT NULL
);


ALTER TABLE public.speaker_phrases OWNER TO mohit;

--
-- Name: speaker_phrases_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.speaker_phrases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.speaker_phrases_id_seq OWNER TO mohit;

--
-- Name: speaker_phrases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.speaker_phrases_id_seq OWNED BY public.speaker_phrases.id;


--
-- Name: speaker_songs; Type: TABLE; Schema: public; Owner: mohit
--

CREATE TABLE public.speaker_songs (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    artist character varying(30) NOT NULL,
    file_name character varying(250) NOT NULL
);


ALTER TABLE public.speaker_songs OWNER TO mohit;

--
-- Name: speaker_songs_id_seq; Type: SEQUENCE; Schema: public; Owner: mohit
--

CREATE SEQUENCE public.speaker_songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.speaker_songs_id_seq OWNER TO mohit;

--
-- Name: speaker_songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mohit
--

ALTER SEQUENCE public.speaker_songs_id_seq OWNED BY public.speaker_songs.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: speaker_contact id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.speaker_contact ALTER COLUMN id SET DEFAULT nextval('public.speaker_contact_id_seq'::regclass);


--
-- Name: speaker_phrases id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.speaker_phrases ALTER COLUMN id SET DEFAULT nextval('public.speaker_phrases_id_seq'::regclass);


--
-- Name: speaker_songs id; Type: DEFAULT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.speaker_songs ALTER COLUMN id SET DEFAULT nextval('public.speaker_songs_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add phrases	1	add_phrases
2	Can change phrases	1	change_phrases
3	Can delete phrases	1	delete_phrases
4	Can view phrases	1	view_phrases
5	Can add songs	2	add_songs
6	Can change songs	2	change_songs
7	Can delete songs	2	delete_songs
8	Can view songs	2	view_songs
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
33	Can add contact	9	add_contact
34	Can change contact	9	change_contact
35	Can delete contact	9	delete_contact
36	Can view contact	9	view_contact
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	speaker	phrases
2	speaker	songs
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
9	speaker	contact
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-03 17:52:35.776978+05:30
2	auth	0001_initial	2021-05-03 17:52:35.917645+05:30
3	admin	0001_initial	2021-05-03 17:52:35.949429+05:30
4	admin	0002_logentry_remove_auto_add	2021-05-03 17:52:35.960507+05:30
5	admin	0003_logentry_add_action_flag_choices	2021-05-03 17:52:35.971696+05:30
6	contenttypes	0002_remove_content_type_name	2021-05-03 17:52:35.991358+05:30
7	auth	0002_alter_permission_name_max_length	2021-05-03 17:52:36.000142+05:30
8	auth	0003_alter_user_email_max_length	2021-05-03 17:52:36.007209+05:30
9	auth	0004_alter_user_username_opts	2021-05-03 17:52:36.01302+05:30
10	auth	0005_alter_user_last_login_null	2021-05-03 17:52:36.019285+05:30
11	auth	0006_require_contenttypes_0002	2021-05-03 17:52:36.021222+05:30
12	auth	0007_alter_validators_add_error_messages	2021-05-03 17:52:36.027412+05:30
13	auth	0008_alter_user_username_max_length	2021-05-03 17:52:36.038355+05:30
14	auth	0009_alter_user_last_name_max_length	2021-05-03 17:52:36.044699+05:30
15	auth	0010_alter_group_name_max_length	2021-05-03 17:52:36.051404+05:30
16	auth	0011_update_proxy_permissions	2021-05-03 17:52:36.058602+05:30
17	auth	0012_alter_user_first_name_max_length	2021-05-03 17:52:36.064645+05:30
18	sessions	0001_initial	2021-05-03 17:52:36.083122+05:30
19	speaker	0001_initial	2021-05-03 17:52:36.094839+05:30
20	speaker	0002_auto_20210503_1320	2021-05-03 18:50:51.846517+05:30
21	speaker	0003_alter_phrases_audio	2021-05-04 03:52:40.515841+05:30
22	speaker	0004_auto_20210506_1517	2021-05-06 20:47:24.941483+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: speaker_contact; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.speaker_contact (id, email, full_name, message) FROM stdin;
2	False	Mohit Jangra	Hi this is a test emial
3	False	Mohit Jangra	Hi this is a test emial
4	False	Mohit Jangra	Hi this is a test emial
5	mohitjangra12@gmail.com	mohit	this is another test email
6			
7			
8			
9			
10			
11			
12			
13			
14			
15			
16			
17			
18			
19			
20			
21			
22			
\.


--
-- Data for Name: speaker_phrases; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.speaker_phrases (id, phrase, words, song, start_time, end_time, audio) FROM stdin;
5282	guided by a beating heart	5	Wake Me Up	00:00:12.100	00:00:15.600	2.mp3
5283	i can't tell where the journey will end	8	Wake Me Up	00:00:15.800	00:00:20.000	3.mp3
5284	but i know where it starts	6	Wake Me Up	00:00:20.200	00:00:23.500	4.mp3
5285	they tell me i'm too young to understand	8	Wake Me Up	00:00:23.700	00:00:27.400	5.mp3
5286	they say i'm caught up in a dream	8	Wake Me Up	00:00:27.600	00:00:31.200	6.mp3
5287	well life will pass me by if i don't open up my eyes	13	Wake Me Up	00:00:31.400	00:00:35.500	7.mp3
5288	well that's fine by me	5	Wake Me Up	00:00:35.700	00:00:37.800	8.mp3
5289	so wake me up when it's all over	8	Wake Me Up	00:00:38.000	00:00:41.700	9.mp3
5290	when i'm wiser and i'm older	6	Wake Me Up	00:00:41.900	00:00:45.800	10.mp3
5291	all this time i was finding myself	7	Wake Me Up	00:00:46.000	00:00:49.100	11.mp3
5292	and i didn't know i was lost	7	Wake Me Up	00:00:49.300	00:00:53.300	12.mp3
5293	so wake me up when it's all over	8	Wake Me Up	00:00:53.500	00:00:57.300	13.mp3
5294	when i'm wiser and i'm older	6	Wake Me Up	00:00:57.500	00:01:01.500	14.mp3
5295	all this time i was finding myself	7	Wake Me Up	00:01:01.700	00:01:04.400	15.mp3
5296	and i didn't know i was lost	7	Wake Me Up	00:01:04.600	00:01:12.600	16.mp3
5297	they don't like us	4	Wake Me Up	00:01:13.600	00:01:15.100	17.mp3
5298	yeah i know	3	Wake Me Up	00:01:15.300	00:01:16.900	18.mp3
5299	why	1	Wake Me Up	00:01:17.100	00:01:25.100	19.mp3
5300	i tried carrying the weight of the world	8	Wake Me Up	00:02:00.500	00:02:04.100	21.mp3
5301	but i only have two hands	6	Wake Me Up	00:02:04.300	00:02:08.100	22.mp3
5302	i hope i get the chance to travel the world	10	Wake Me Up	00:02:08.300	00:02:12.000	23.mp3
5303	and i don't have any plans	6	Wake Me Up	00:02:12.200	00:02:15.700	24.mp3
5304	i wish that i could stay forever this young	9	Wake Me Up	00:02:15.900	00:02:19.600	25.mp3
5305	not afraid to close my eyes	6	Wake Me Up	00:02:19.800	00:02:23.400	26.mp3
5306	life's a game made for everyone	6	Wake Me Up	00:02:23.600	00:02:27.800	27.mp3
5307	and love is a prize	5	Wake Me Up	00:02:28.000	00:02:30.100	28.mp3
5308	so wake me up when it's allover	7	Wake Me Up	00:02:30.300	00:02:34.300	29.mp3
5309	when i'm wiser and i'm older	6	Wake Me Up	00:02:34.500	00:02:38.100	30.mp3
5310	all this time i was finding myself	7	Wake Me Up	00:02:38.300	00:02:41.600	31.mp3
5311	and i didn't know i was lost	7	Wake Me Up	00:02:41.800	00:02:45.600	32.mp3
5312	so wake me up when it's all over	8	Wake Me Up	00:02:45.800	00:02:49.400	33.mp3
5313	when i'm wiser and i'm older	6	Wake Me Up	00:02:49.600	00:02:53.500	34.mp3
5314	all this time i was finding myself	7	Wake Me Up	00:02:53.700	00:02:56.700	35.mp3
5315	and i didn't know i was lost	7	Wake Me Up	00:02:56.900	00:03:02.200	36.mp3
5316	i didn't know i was lost	6	Wake Me Up	00:03:02.400	00:03:06.000	37.mp3
5317	i didn't know i was lost	6	Wake Me Up	00:03:06.200	00:03:09.900	38.mp3
5318	i didn't know i was lost	6	Wake Me Up	00:03:10.100	00:03:13.900	39.mp3
5319	i didn't know i was lost	6	Wake Me Up	00:03:14.100	00:03:20.900	40.mp3
5320	get up, pack your things	5	Wake Me Up	00:03:21.100	00:03:23.800	41.mp3
5321	where we going	3	Wake Me Up	00:03:24.000	00:03:25.600	42.mp3
5322	somewhere we belong	3	Wake Me Up	00:03:25.800	00:03:30.800	43.mp3
5323	this ain't for the best	5	Delicate	00:00:03.585	00:00:05.587	1.mp3
5324	my reputation's never been worse so	6	Delicate	00:00:05.588	00:00:08.757	2.mp3
5325	you must like me for me	6	Delicate	00:00:08.757	00:00:12.469	3.mp3
5326	we can't make any promises	5	Delicate	00:00:14.054	00:00:16.640	4.mp3
5327	now can we babe	4	Delicate	00:00:16.640	00:00:18.851	5.mp3
5328	but you can make me a drink	7	Delicate	00:00:18.852	00:00:22.856	6.mp3
5329	dive bar on the east side	6	Delicate	00:00:23.356	00:00:24.983	7.mp3
5330	where you at?	3	Delicate	00:00:24.983	00:00:26.025	8.mp3
5331	phone lights up my nightstand	5	Delicate	00:00:26.024	00:00:27.526	9.mp3
5332	in the black	3	Delicate	00:00:27.527	00:00:28.486	10.mp3
5333	come here, you can meet me	6	Delicate	00:00:28.486	00:00:30.071	11.mp3
5334	in the back	3	Delicate	00:00:30.071	00:00:31.364	12.mp3
5335	dark jeans and your nikes	5	Delicate	00:00:33.490	00:00:35.118	13.mp3
5336	look at you	3	Delicate	00:00:35.118	00:00:36.243	14.mp3
5337	oh damn, never seen that color blue	7	Delicate	00:00:36.243	00:00:38.371	15.mp3
5338	just think of the fun things we could do...	9	Delicate	00:00:38.371	00:00:41.166	16.mp3
5339	'cause i like you...	4	Delicate	00:00:42.625	00:00:44.335	17.mp3
5340	this ain't for the best	5	Delicate	00:00:44.335	00:00:46.128	18.mp3
5341	my reputation's never been worse so	6	Delicate	00:00:46.128	00:00:49.339	19.mp3
5342	you must like me for me	6	Delicate	00:00:49.340	00:00:52.093	20.mp3
5343	yeah i want you...	4	Delicate	00:00:52.676	00:00:54.595	21.mp3
5344	we can't make any promises	5	Delicate	00:00:54.595	00:00:57.097	22.mp3
5345	now can we babe	4	Delicate	00:00:57.097	00:00:59.225	23.mp3
5346	but you can make me a drink	7	Delicate	00:00:59.225	00:01:02.728	24.mp3
5347	is it cool that i said all that?	8	Delicate	00:01:03.521	00:01:06.024	25.mp3
5348	is it chill that you're in my head?	8	Delicate	00:01:06.024	00:01:08.525	26.mp3
5349	'cause i know that it's delicate	6	Delicate	00:01:08.525	00:01:11.528	27.mp3
5350	is it cool that i said all that?	8	Delicate	00:01:13.614	00:01:16.200	28.mp3
5351	is it too soon to do this yet?	8	Delicate	00:01:16.200	00:01:18.660	29.mp3
5352	'cause i know that it's delicate	6	Delicate	00:01:18.661	00:01:21.664	30.mp3
5353	isn't it, isn't it, isn't it?	6	Delicate	00:01:22.748	00:01:25.167	31.mp3
5354	isn't it?	2	Delicate	00:01:25.918	00:01:27.837	32.mp3
5355	isn't it, isn't it, isn't it?	6	Delicate	00:01:27.837	00:01:30.924	33.mp3
5356	isn't it...	2	Delicate	00:01:30.924	00:01:32.300	34.mp3
5357	delicate	1	Delicate	00:01:32.299	00:01:33.884	35.mp3
5358	third floor on the west side	6	Delicate	00:01:34.135	00:01:35.844	36.mp3
5359	me and you	3	Delicate	00:01:35.844	00:01:37.096	37.mp3
5360	handsome, you're a mansion with a view	7	Delicate	00:01:37.096	00:01:38.847	38.mp3
5361	do the girls back home touch you	7	Delicate	00:01:38.847	00:01:40.808	39.mp3
5362	like i do?	3	Delicate	00:01:40.808	00:01:42.185	40.mp3
5363	long night with your hands	5	Delicate	00:01:44.186	00:01:45.605	41.mp3
5364	up in my hair	4	Delicate	00:01:45.605	00:01:46.814	42.mp3
5365	echoes of your footsteps on the stairs	7	Delicate	00:01:46.814	00:01:49.274	43.mp3
5366	stay here, honey	3	Delicate	00:01:49.275	00:01:50.318	44.mp3
5367	i don't want to share	5	Delicate	00:01:50.317	00:01:52.402	45.mp3
5368	'cause i like you...	4	Delicate	00:01:53.362	00:01:55.114	46.mp3
5369	this ain't for the best	5	Delicate	00:01:55.114	00:01:56.825	47.mp3
5370	my reputation's never been worse so	6	Delicate	00:01:56.825	00:02:00.118	48.mp3
5371	you must like me for me	6	Delicate	00:02:00.118	00:02:02.831	49.mp3
5372	yeah i want you...	4	Delicate	00:02:03.540	00:02:05.333	50.mp3
5373	we can't make any promises	5	Delicate	00:02:05.332	00:02:07.918	51.mp3
5374	now can we babe	4	Delicate	00:02:07.918	00:02:10.003	52.mp3
5375	but you can make me a drink	7	Delicate	00:02:10.003	00:02:12.757	53.mp3
5376	is it cool that i said all that?	8	Delicate	00:02:14.300	00:02:16.802	54.mp3
5377	is it chill that you're in my head?	8	Delicate	00:02:16.802	00:02:19.305	55.mp3
5378	'cause i know that it's delicate	6	Delicate	00:02:19.305	00:02:22.307	56.mp3
5379	is it cool that i said all that?	8	Delicate	00:02:24.394	00:02:27.021	57.mp3
5380	is it too soon to do this yet?	8	Delicate	00:02:27.020	00:02:29.481	58.mp3
5381	'cause i know that it's delicate	6	Delicate	00:02:29.481	00:02:32.485	59.mp3
5382	isn't it, isn't it, isn't it?	6	Delicate	00:02:33.569	00:02:35.989	60.mp3
5383	isn't it?	2	Delicate	00:02:36.739	00:02:38.658	61.mp3
5384	isn't it, isn't it, isn't it?	6	Delicate	00:02:38.657	00:02:41.743	62.mp3
5385	isn't it...	2	Delicate	00:02:41.743	00:02:43.121	63.mp3
5386	delicate	1	Delicate	00:02:43.121	00:02:44.706	64.mp3
5387	sometimes i wonder	3	Delicate	00:02:45.122	00:02:47.625	65.mp3
5388	when you sleep	3	Delicate	00:02:47.625	00:02:50.002	66.mp3
5389	are you ever dreaming of me?	6	Delicate	00:02:50.336	00:02:54.757	67.mp3
5390	sometimes when i look into your eyes	7	Delicate	00:02:55.258	00:03:00.430	68.mp3
5391	i pretend you're mine	4	Delicate	00:03:00.430	00:03:02.932	69.mp3
5392	all the damn time	4	Delicate	00:03:02.931	00:03:05.643	70.mp3
5393	'cause i like you	4	Delicate	00:03:06.728	00:03:07.770	71.mp3
5394	is it cool that i said all that?	8	Delicate	00:03:07.770	00:03:09.939	72.mp3
5395	is it chill that you're in my head?	8	Delicate	00:03:09.938	00:03:12.442	73.mp3
5396	'cause i know that it's delicate	6	Delicate	00:03:12.442	00:03:15.444	74.mp3
5397	(yeah i want you...)	4	Delicate	00:03:16.028	00:03:17.530	75.mp3
5398	is it cool that i said all that?	8	Delicate	00:03:17.530	00:03:20.116	76.mp3
5399	is it too soon to do this yet?	8	Delicate	00:03:20.116	00:03:22.577	77.mp3
5400	'cause i know that it's delicate	6	Delicate	00:03:22.576	00:03:24.787	78.mp3
5401	'cause i like you	4	Delicate	00:03:26.997	00:03:28.040	79.mp3
5402	is it cool that i said all that?	8	Delicate	00:03:28.040	00:03:29.834	80.mp3
5403	isn't it...	2	Delicate	00:03:29.834	00:03:31.002	81.mp3
5404	is it chill that you're in my head?	8	Delicate	00:03:31.002	00:03:31.794	82.mp3
5405	isn't it, isn't it,	4	Delicate	00:03:31.794	00:03:32.921	83.mp3
5406	'cause i know that it's delicate	6	Delicate	00:03:32.920	00:03:34.881	84.mp3
5407	isn't it...	2	Delicate	00:03:34.881	00:03:35.673	85.mp3
5408	(yeah i want you...)	4	Delicate	00:03:36.799	00:03:37.842	86.mp3
5409	is it cool that i said all that?	8	Delicate	00:03:37.842	00:03:39.969	87.mp3
5410	isn't it...	2	Delicate	00:03:39.968	00:03:41.012	88.mp3
5411	is it too soon to do this yet?	8	Delicate	00:03:41.012	00:03:41.971	89.mp3
5412	isn't it, isn't it,	4	Delicate	00:03:41.971	00:03:43.097	90.mp3
5413	'cause i know that it's delicate	6	Delicate	00:03:43.097	00:03:45.058	91.mp3
5414	isn't it...	2	Delicate	00:03:45.057	00:03:46.224	92.mp3
5415	i wanna be your end game	6	End Game	00:00:03.000	00:00:04.766	1.mp3
5416	i wanna be your first string	6	End Game	00:00:06.000	00:00:08.000	2.mp3
5417	i wanna be your a team	6	End Game	00:00:09.032	00:00:11.032	3.mp3
5418	i wanna be your end game end game	8	End Game	00:00:12.000	00:00:15.532	4.mp3
5419	big reputation big reputation	4	End Game	00:00:15.766	00:00:18.666	5.mp3
5420	ooh you and me we got big reputations	8	End Game	00:00:18.699	00:00:21.500	6.mp3
5421	ah and you heard about me	6	End Game	00:00:21.533	00:00:24.500	7.mp3
5422	ooh i got some big enemies	6	End Game	00:00:24.533	00:00:28.000	8.mp3
5423	big reputation big reputation	4	End Game	00:00:28.033	00:00:30.600	9.mp3
5424	ooh you and me would be a big conversation	9	End Game	00:00:30.632	00:00:33.566	10.mp3
5425	ah and i heard about you	6	End Game	00:00:33.600	00:00:36.633	11.mp3
5426	ooh you like the bad ones too	7	End Game	00:00:36.665	00:00:39.599	12.mp3
5427	you so dope don't overdose	5	End Game	00:00:39.633	00:00:41.033	13.mp3
5428	i'm so stoked i need a toast	7	End Game	00:00:41.066	00:00:42.600	14.mp3
5429	we do the most	4	End Game	00:00:42.633	00:00:44.033	15.mp3
5430	i'm in the ghost like i'm whipping a boat	9	End Game	00:00:44.066	00:00:45.600	16.mp3
5431	i got a reputation girl that don't precede me	9	End Game	00:00:45.633	00:00:48.666	17.mp3
5432	i'm one call away whenever you need me	8	End Game	00:00:48.700	00:00:51.633	18.mp3
5433	i'm in a g5	4	End Game	00:00:51.665	00:00:53.199	19.mp3
5434	come to the a-side	4	End Game	00:00:53.232	00:00:54.632	20.mp3
5435	i gotta bad boy persona it's what they like	9	End Game	00:00:54.665	00:00:57.500	21.mp3
5436	you love it, i love it too 'cause you're my type	11	End Game	00:00:57.533	00:01:00.600	22.mp3
5437	you hold me down and i protect you with my life	11	End Game	00:01:00.633	00:01:03.500	23.mp3
5438	i don't wanna touch you	5	End Game	00:01:03.533	00:01:05.033	24.mp3
5439	i don't wanna be	4	End Game	00:01:05.066	00:01:06.266	25.mp3
5440	just another ex love	4	End Game	00:01:06.299	00:01:08.033	26.mp3
5441	you don't wanna see	4	End Game	00:01:08.066	00:01:09.533	27.mp3
5442	i don't wanna miss you	5	End Game	00:01:09.566	00:01:12.466	28.mp3
5443	like the other girls do	5	End Game	00:01:12.500	00:01:14.766	29.mp3
5444	i don't wanna hurt you i just wanna be	9	End Game	00:01:15.533	00:01:18.533	30.mp3
5445	drinking on the beach with you all over me	9	End Game	00:01:18.566	00:01:21.566	31.mp3
5446	i know what they all say	6	End Game	00:01:21.599	00:01:24.232	32.mp3
5447	but i ain't trying to play	6	End Game	00:01:24.266	00:01:27.533	33.mp3
5448	i wanna be your end game	6	End Game	00:01:27.566	00:01:30.500	34.mp3
5449	i wanna be your first string	6	End Game	00:01:30.533	00:01:33.500	35.mp3
5450	i wanna be your a team	6	End Game	00:01:33.533	00:01:36.500	36.mp3
5451	i wanna be your end game end game	8	End Game	00:01:36.533	00:01:39.533	37.mp3
5452	knew her when i was young	6	End Game	00:01:39.566	00:01:40.766	38.mp3
5453	reconnected when we were little bit older	7	End Game	00:01:41.000	00:01:43.033	39.mp3
5454	both sprung, i got issues and chips on	8	End Game	00:01:43.066	00:01:45.033	40.mp3
5455	both of my shoulders	4	End Game	00:01:45.066	00:01:46.100	41.mp3
5456	reputation precedes me	3	End Game	00:01:46.132	00:01:47.699	42.mp3
5457	in rumours i'm knee deep	5	End Game	00:01:47.733	00:01:49.233	43.mp3
5458	the truth it its easier to ignore it believe me	10	End Game	00:01:49.266	00:01:52.233	44.mp3
5459	even when we'd argue we'd not do it for long	10	End Game	00:01:52.266	00:01:54.766	45.mp3
5460	and you understand the good and bad end up in a song	12	End Game	00:01:55.000	00:01:57.766	46.mp3
5461	for all your beautiful traits,	5	End Game	00:01:58.000	00:01:59.533	47.mp3
5462	and the way you do it with ease	8	End Game	00:01:59.566	00:02:01.066	48.mp3
5463	for all my flaws, paranoia, and insecurities	7	End Game	00:02:01.099	00:02:04.032	49.mp3
5464	i've made mistakes and made some choices	7	End Game	00:02:04.066	00:02:05.733	50.mp3
5465	that's hard to deny	4	End Game	00:02:05.766	00:02:07.066	51.mp3
5466	but after the storm, something was	6	End Game	00:02:07.099	00:02:08.532	52.mp3
5467	born on the 4th of july	6	End Game	00:02:08.566	00:02:10.133	53.mp3
5468	our past days were the fun, this end game is the one	12	End Game	00:02:10.165	00:02:13.032	54.mp3
5469	with 4 words on the tip of my tongue, i'll never say	12	End Game	00:02:13.066	00:02:16.066	55.mp3
5470	i don't wanna touch you	5	End Game	00:02:16.099	00:02:17.299	56.mp3
5471	i don't wanna be	4	End Game	00:02:17.332	00:02:18.733	57.mp3
5472	just another ex love	4	End Game	00:02:18.765	00:02:20.332	58.mp3
5473	you don't wanna see	4	End Game	00:02:20.366	00:02:22.033	59.mp3
5474	i don't wanna miss you	5	End Game	00:02:22.066	00:02:25.000	60.mp3
5475	like the other girls do	5	End Game	00:02:25.032	00:02:27.032	61.mp3
5476	i don't wanna hurt you	5	End Game	00:02:28.066	00:02:29.332	62.mp3
5477	i just wanna be	4	End Game	00:02:29.366	00:02:31.066	63.mp3
5478	drinking on the beach with you all over me	9	End Game	00:02:31.099	00:02:34.099	64.mp3
5479	i know what they all say	6	End Game	00:02:34.133	00:02:36.733	65.mp3
5480	but i ain't trying to play	6	End Game	00:02:36.765	00:02:40.000	66.mp3
5481	i wanna be your end game	6	End Game	00:02:40.032	00:02:43.000	67.mp3
5482	i wanna be your first string	6	End Game	00:02:43.032	00:02:45.732	68.mp3
5483	i wanna be your a team	6	End Game	00:02:45.765	00:02:48.765	69.mp3
5484	i wanna be your end game end game	8	End Game	00:02:49.000	00:02:52.332	70.mp3
5485	big reputation big reputation	4	End Game	00:02:53.000	00:02:55.633	71.mp3
5486	ooh you and me we got big reputations	8	End Game	00:02:55.665	00:02:58.599	72.mp3
5487	ah and you heard about me	6	End Game	00:02:58.633	00:03:01.366	73.mp3
5488	ooh i got some big enemies	6	End Game	00:03:01.400	00:03:04.766	74.mp3
5489	big reputation big reputation	4	End Game	00:03:05.000	00:03:07.665	75.mp3
5490	ooh you and me would be a big conversation	9	End Game	00:03:07.699	00:03:10.599	76.mp3
5491	ah and i heard about you	6	End Game	00:03:10.633	00:03:13.633	77.mp3
5492	ooh you like the bad ones too	7	End Game	00:03:13.665	00:03:16.099	78.mp3
5493	i hit you like bang	5	End Game	00:03:16.133	00:03:17.633	79.mp3
5494	we tried to forget it but we just couldn't	9	End Game	00:03:17.665	00:03:19.665	80.mp3
5495	and i bury hatchets but i keep maps	8	End Game	00:03:19.699	00:03:21.699	81.mp3
5496	of where i put 'em	5	End Game	00:03:21.733	00:03:22.665	82.mp3
5497	reputation precedes me	3	End Game	00:03:22.699	00:03:24.299	83.mp3
5498	they told you i'm crazy	5	End Game	00:03:24.332	00:03:26.000	84.mp3
5499	i swear i don't love the drama	7	End Game	00:03:26.032	00:03:27.399	85.mp3
5500	it loves me	3	End Game	00:03:27.432	00:03:28.599	86.mp3
5501	and i can't let you go	6	End Game	00:03:28.633	00:03:30.200	87.mp3
5502	your hand prints on my soul	6	End Game	00:03:30.233	00:03:31.633	88.mp3
5503	it's like your eyes are liquor	6	End Game	00:03:31.665	00:03:33.165	89.mp3
5504	it's like your body is gold	6	End Game	00:03:33.199	00:03:34.732	90.mp3
5505	you've been calling my bluff	5	End Game	00:03:34.765	00:03:36.099	91.mp3
5506	on all my usual tricks	5	End Game	00:03:36.133	00:03:37.633	92.mp3
5507	so here's the truth from my red lips	8	End Game	00:03:37.665	00:03:40.165	93.mp3
5508	i wanna be your end game	6	End Game	00:03:40.199	00:03:43.232	94.mp3
5509	i wanna be your first string	6	End Game	00:03:43.265	00:03:46.365	95.mp3
5510	i wanna be your a team	6	End Game	00:03:46.400	00:03:49.332	96.mp3
5511	i wanna be your end game end game	8	End Game	00:03:49.366	00:03:52.366	97.mp3
5512	i wanna be your end game	6	End Game	00:03:52.400	00:03:55.300	98.mp3
5513	i wanna be your first string	6	End Game	00:03:55.332	00:03:58.365	99.mp3
5514	i wanna be your a team	6	End Game	00:03:58.400	00:04:01.300	100.mp3
5515	i wanna be your end game end game	8	End Game	00:04:01.332	00:04:05.000	101.mp3
5516	the world can be a nasty place	7	Kill Em With Kindness	00:00:19.602	00:00:23.356	3.mp3
5517	you know it, i know it, ya	7	Kill Em With Kindness	00:00:23.356	00:00:27.736	4.mp3
5518	we don't have to fall from grace	7	Kill Em With Kindness	00:00:27.736	00:00:32.782	5.mp3
5519	put down the weapons you fight with	7	Kill Em With Kindness	00:00:32.781	00:00:35.868	6.mp3
5520	kill em with kindness	4	Kill Em With Kindness	00:00:35.868	00:00:37.911	7.mp3
5521	kill em with kindness kill em, kill em	8	Kill Em With Kindness	00:00:37.911	00:00:41.832	8.mp3
5522	kill em with kindness kill em with kindness	8	Kill Em With Kindness	00:00:41.832	00:00:45.795	9.mp3
5523	kill em with kindness	4	Kill Em With Kindness	00:00:45.795	00:00:47.588	10.mp3
5524	go head, go head, go head now	7	Kill Em With Kindness	00:00:47.588	00:00:50.884	11.mp3
5525	we're running out of time	5	Kill Em With Kindness	00:01:07.900	00:01:10.027	14.mp3
5526	chasing our lies,	3	Kill Em With Kindness	00:01:10.028	00:01:11.905	15.mp3
5527	every day a small piece of you dies	8	Kill Em With Kindness	00:01:11.905	00:01:15.825	16.mp3
5528	always somebody,	2	Kill Em With Kindness	00:01:15.825	00:01:17.701	17.mp3
5529	you're willing to fight to be right	7	Kill Em With Kindness	00:01:17.701	00:01:23.540	18.mp3
5530	your lies are bullets,	4	Kill Em With Kindness	00:01:23.540	00:01:25.584	19.mp3
5531	your mouth's a gun	4	Kill Em With Kindness	00:01:25.584	00:01:27.628	20.mp3
5532	no war in angry was ever won	7	Kill Em With Kindness	00:01:27.629	00:01:31.591	21.mp3
5533	put out the fire, before igniting	6	Kill Em With Kindness	00:01:31.590	00:01:36.720	22.mp3
5534	next time you're fighting	4	Kill Em With Kindness	00:01:36.721	00:01:39.808	23.mp3
5535	kill em with kindness	4	Kill Em With Kindness	00:01:39.808	00:01:41.810	24.mp3
5536	kill em with kindness kill em, kill	7	Kill Em With Kindness	00:01:41.810	00:01:45.814	25.mp3
5537	kill em with kindness kill em with	7	Kill Em With Kindness	00:01:45.813	00:01:49.858	26.mp3
5538	kill em with kindness	4	Kill Em With Kindness	00:01:49.858	00:01:51.610	27.mp3
5539	go head, go head, go head now	7	Kill Em With Kindness	00:01:51.611	00:01:54.906	28.mp3
5540	go head, go head now	5	Kill Em With Kindness	00:02:08.586	00:02:10.880	30.mp3
5541	go head, go head now	5	Kill Em With Kindness	00:02:16.510	00:02:18.888	32.mp3
5542	your lies are bullets,	4	Kill Em With Kindness	00:02:27.729	00:02:29.649	34.mp3
5543	your mouth's a gun	4	Kill Em With Kindness	00:02:29.649	00:02:31.651	35.mp3
5544	no war in angry was ever won	7	Kill Em With Kindness	00:02:31.651	00:02:35.612	36.mp3
5545	put out the fire, before igniting	6	Kill Em With Kindness	00:02:35.612	00:02:40.659	37.mp3
5546	ramans	1	We Don't Talk Anymore	00:00:00.500	00:00:03.000	﻿1.mp3
5547	we don't talk anymore	4	We Don't Talk Anymore	00:00:04.100	00:00:05.300	2.mp3
5548	we don't talk anymore	4	We Don't Talk Anymore	00:00:06.400	00:00:08.000	3.mp3
5549	we don't talk anymore	4	We Don't Talk Anymore	00:00:08.700	00:00:10.100	4.mp3
5550	like we used to do	5	We Don't Talk Anymore	00:00:10.400	00:00:13.000	5.mp3
5551	we don't love anymore	4	We Don't Talk Anymore	00:00:13.600	00:00:15.000	6.mp3
5552	what was all of it for	6	We Don't Talk Anymore	00:00:15.900	00:00:17.800	7.mp3
5553	oh, we don't talk anymore	5	We Don't Talk Anymore	00:00:18.300	00:00:19.700	8.mp3
5554	like we used to do	5	We Don't Talk Anymore	00:00:19.900	00:00:22.800	9.mp3
5555	i just heard you found	5	We Don't Talk Anymore	00:00:23.200	00:00:24.600	10.mp3
5556	you've been looking for	4	We Don't Talk Anymore	00:00:24.800	00:00:29.100	11.mp3
5557	i wish i would have known	6	We Don't Talk Anymore	00:00:29.400	00:00:31.000	12.mp3
5558	that wasn't me	3	We Don't Talk Anymore	00:00:31.200	00:00:32.500	13.mp3
5559	cause even after all this time	6	We Don't Talk Anymore	00:00:32.700	00:00:34.900	14.mp3
5560	i still wonder	3	We Don't Talk Anymore	00:00:35.100	00:00:36.400	15.mp3
5561	why i can't move on	5	We Don't Talk Anymore	00:00:36.600	00:00:38.600	16.mp3
5562	just the way you did so easily	7	We Don't Talk Anymore	00:00:38.800	00:00:42.300	17.mp3
5563	don't wanna know	3	We Don't Talk Anymore	00:00:42.700	00:00:44.100	18.mp3
5564	what kind of dress	4	We Don't Talk Anymore	00:00:44.300	00:00:45.000	19.mp3
5565	you're wearing tonight	3	We Don't Talk Anymore	00:00:45.200	00:00:46.700	20.mp3
5566	if he's holding onto you so tight	7	We Don't Talk Anymore	00:00:46.900	00:00:49.400	21.mp3
5567	the way i did before	5	We Don't Talk Anymore	00:00:49.600	00:00:51.800	22.mp3
5636	ripped jeans	2	Call Me Maybe	00:00:21.900	00:00:22.900	10.mp3
5568	i overdosed	2	We Don't Talk Anymore	00:00:52.400	00:00:53.900	23.mp3
5569	should've known your love was a game	7	We Don't Talk Anymore	00:00:54.100	00:00:56.500	24.mp3
5570	now i can't get you out of my brain	9	We Don't Talk Anymore	00:00:56.700	00:00:58.900	25.mp3
5571	oh, it's such a shame	5	We Don't Talk Anymore	00:00:59.100	00:01:01.300	26.mp3
5572	that we don't talk anymore	5	We Don't Talk Anymore	00:01:01.600	00:01:03.700	27.mp3
5573	we don't talk anymore	4	We Don't Talk Anymore	00:01:04.200	00:01:06.000	28.mp3
5574	we don't talk anymore	4	We Don't Talk Anymore	00:01:06.500	00:01:07.900	29.mp3
5575	like we used to do	5	We Don't Talk Anymore	00:01:08.100	00:01:10.900	30.mp3
5576	we don't love anymore	4	We Don't Talk Anymore	00:01:11.300	00:01:13.200	31.mp3
5577	what was all of it for	6	We Don't Talk Anymore	00:01:13.600	00:01:15.100	32.mp3
5578	oh, we don't talk anymore	5	We Don't Talk Anymore	00:01:16.000	00:01:17.500	33.mp3
5579	like we used to do	5	We Don't Talk Anymore	00:01:17.700	00:01:20.000	34.mp3
5580	i just hope	3	We Don't Talk Anymore	00:01:20.700	00:01:21.700	35.mp3
5581	you're lying next to somebody	5	We Don't Talk Anymore	00:01:21.900	00:01:24.100	36.mp3
5582	who knows how to love you like me	8	We Don't Talk Anymore	00:01:24.300	00:01:26.400	37.mp3
5583	there must be a good reason	6	We Don't Talk Anymore	00:01:26.900	00:01:28.600	38.mp3
5584	that you're gone	3	We Don't Talk Anymore	00:01:28.800	00:01:30.200	39.mp3
5585	every now and then i think	6	We Don't Talk Anymore	00:01:30.400	00:01:32.300	40.mp3
5586	you might want me	4	We Don't Talk Anymore	00:01:32.500	00:01:33.700	41.mp3
5587	to come show up at your door	7	We Don't Talk Anymore	00:01:33.900	00:01:36.000	42.mp3
5588	but i'm just too afraid	5	We Don't Talk Anymore	00:01:36.300	00:01:37.800	43.mp3
5589	that i'll be wrong	4	We Don't Talk Anymore	00:01:38.000	00:01:39.300	44.mp3
5590	don't wanna know	3	We Don't Talk Anymore	00:01:40.500	00:01:41.800	45.mp3
5591	if you're looking into her eyes	6	We Don't Talk Anymore	00:01:42.000	00:01:44.200	46.mp3
5592	if she's holding onto you so tight	7	We Don't Talk Anymore	00:01:44.400	00:01:46.600	47.mp3
5593	the way i did before	5	We Don't Talk Anymore	00:01:46.800	00:01:49.300	48.mp3
5594	i overdosed	2	We Don't Talk Anymore	00:01:49.900	00:01:51.500	49.mp3
5595	should've known your love was a game	7	We Don't Talk Anymore	00:01:51.700	00:01:53.800	50.mp3
5596	now i can't get you out of my brain	9	We Don't Talk Anymore	00:01:54.000	00:01:56.600	51.mp3
5597	oh, it's such a shame	5	We Don't Talk Anymore	00:01:56.800	00:01:59.000	52.mp3
5598	that we don't talk anymore	5	We Don't Talk Anymore	00:01:59.200	00:02:01.000	53.mp3
5599	we don't talk anymore	4	We Don't Talk Anymore	00:02:01.700	00:02:03.800	54.mp3
5600	we don't talk anymore	4	We Don't Talk Anymore	00:02:04.000	00:02:05.400	55.mp3
5601	like we used to do	5	We Don't Talk Anymore	00:02:05.600	00:02:08.700	56.mp3
5602	we don't love anymore	4	We Don't Talk Anymore	00:02:08.900	00:02:11.000	57.mp3
5603	what was all of it for	6	We Don't Talk Anymore	00:02:11.200	00:02:13.400	58.mp3
5604	oh, we don't talk anymore	5	We Don't Talk Anymore	00:02:13.600	00:02:15.000	59.mp3
5605	like we used to do	5	We Don't Talk Anymore	00:02:15.200	00:02:18.000	60.mp3
5606	support us and become vip member to remove all ads from www.opensubtitles.org	12	We Don't Talk Anymore	00:02:20.000	00:02:26.074	61.mp3
5607	like we used to do	5	We Don't Talk Anymore	00:02:27.300	00:02:30.000	62.mp3
5608	don't wanna know	3	We Don't Talk Anymore	00:02:38.100	00:02:39.500	63.mp3
5609	what kind of dress	4	We Don't Talk Anymore	00:02:39.700	00:02:40.300	64.mp3
5610	you're wearing tonigh	3	We Don't Talk Anymore	00:02:40.500	00:02:41.800	65.mp3
5611	if he's giving it to you just right	8	We Don't Talk Anymore	00:02:42.000	00:02:44.700	66.mp3
5612	the way i did before	5	We Don't Talk Anymore	00:02:44.900	00:02:46.800	67.mp3
5613	i overdosed	2	We Don't Talk Anymore	00:02:47.500	00:02:49.200	68.mp3
5614	should've known your love was a game	7	We Don't Talk Anymore	00:02:49.400	00:02:51.500	69.mp3
5615	now i can't get you out of my brain	9	We Don't Talk Anymore	00:02:51.700	00:02:54.100	70.mp3
5616	oh, it's such a shame	5	We Don't Talk Anymore	00:02:54.300	00:02:56.700	71.mp3
5617	that we don't talk anymore	5	We Don't Talk Anymore	00:02:56.900	00:02:59.000	72.mp3
5618	we don't talk anymore	4	We Don't Talk Anymore	00:02:59.200	00:03:01.500	73.mp3
5619	we don't talk anymore	4	We Don't Talk Anymore	00:03:01.700	00:03:03.100	74.mp3
5620	like we used to do	5	We Don't Talk Anymore	00:03:03.300	00:03:06.300	75.mp3
5621	we don't love anymore	4	We Don't Talk Anymore	00:03:06.500	00:03:08.800	76.mp3
5622	what was all of it for	6	We Don't Talk Anymore	00:03:09.000	00:03:10.500	77.mp3
5623	oh, we don't talk anymore	5	We Don't Talk Anymore	00:03:10.700	00:03:12.700	78.mp3
5624	like we used to do	5	We Don't Talk Anymore	00:03:12.900	00:03:15.700	79.mp3
5625	we don't talk anymore	4	We Don't Talk Anymore	00:03:15.900	00:03:19.300	80.mp3
5626	that we don't talk anymore	5	We Don't Talk Anymore	00:03:35.300	00:03:38.000	81.mp3
5627	i threw a wish in the well	7	Call Me Maybe	00:00:04.400	00:00:05.800	1.mp3
5628	don't ask me i'll  never tell	6	Call Me Maybe	00:00:06.000	00:00:07.800	2.mp3
5629	i looked at you as it fell	7	Call Me Maybe	00:00:08.000	00:00:09.700	3.mp3
5630	and now you're in my way	6	Call Me Maybe	00:00:09.900	00:00:12.100	4.mp3
5631	i trade my soul for a wish	7	Call Me Maybe	00:00:12.300	00:00:13.900	5.mp3
5632	pennies and dimes for a kiss	6	Call Me Maybe	00:00:14.100	00:00:15.900	6.mp3
5633	i wasn't looking for this	5	Call Me Maybe	00:00:16.100	00:00:17.900	7.mp3
5634	but now you're in my way	6	Call Me Maybe	00:00:18.100	00:00:20.100	8.mp3
5635	your stare was holding	4	Call Me Maybe	00:00:20.300	00:00:21.700	9.mp3
5637	skin was showing	3	Call Me Maybe	00:00:22.800	00:00:23.800	11.mp3
5638	hot night	2	Call Me Maybe	00:00:24.000	00:00:25.000	12.mp3
5639	wind was blowing	3	Call Me Maybe	00:00:24.800	00:00:25.800	13.mp3
5640	where you think you're going baby	6	Call Me Maybe	00:00:25.900	00:00:28.400	14.mp3
5641	hey i just met you	5	Call Me Maybe	00:00:28.600	00:00:30.600	15.mp3
5642	and this is crazy	4	Call Me Maybe	00:00:30.800	00:00:32.500	16.mp3
5643	but here's my number	4	Call Me Maybe	00:00:32.700	00:00:34.600	17.mp3
5644	so call me maybe	4	Call Me Maybe	00:00:34.800	00:00:36.100	18.mp3
5645	it's hard to look right at you baby	8	Call Me Maybe	00:00:36.300	00:00:40.600	19.mp3
5646	but here's my number	4	Call Me Maybe	00:00:40.800	00:00:42.500	20.mp3
5647	so call me maybe	4	Call Me Maybe	00:00:42.700	00:00:44.500	21.mp3
5648	hey i just met you	5	Call Me Maybe	00:00:44.700	00:00:46.400	22.mp3
5649	and this is crazy	4	Call Me Maybe	00:00:46.600	00:00:48.400	23.mp3
5650	but here's my number	4	Call Me Maybe	00:00:48.600	00:00:50.500	24.mp3
5651	so call me maybe	4	Call Me Maybe	00:00:50.700	00:00:52.500	25.mp3
5652	and all the other boys	5	Call Me Maybe	00:00:52.700	00:00:54.600	26.mp3
5653	try to chase me	4	Call Me Maybe	00:00:54.800	00:00:56.500	27.mp3
5654	but here's my number	4	Call Me Maybe	00:00:56.700	00:00:58.600	28.mp3
5655	so call me maybe	4	Call Me Maybe	00:00:58.800	00:01:03.900	29.mp3
5656	you took your time with the call	7	Call Me Maybe	00:01:04.100	00:01:05.900	30.mp3
5657	i took no time with the fall	7	Call Me Maybe	00:01:06.100	00:01:07.800	31.mp3
5658	you gave me nothing at all	6	Call Me Maybe	00:01:08.000	00:01:09.900	32.mp3
5659	but still you're in my way	6	Call Me Maybe	00:01:10.100	00:01:12.000	33.mp3
5660	i beg and borrow and steal	6	Call Me Maybe	00:01:12.200	00:01:13.900	34.mp3
5661	at first sight and it's real	6	Call Me Maybe	00:01:14.100	00:01:15.900	35.mp3
5662	i didn't know i would feel it	7	Call Me Maybe	00:01:16.100	00:01:18.300	36.mp3
5663	but it's in my way	5	Call Me Maybe	00:01:18.500	00:01:20.100	37.mp3
5664	your stare was holding	4	Call Me Maybe	00:01:20.300	00:01:21.700	38.mp3
5665	ripped jeans	2	Call Me Maybe	00:01:21.900	00:01:22.900	39.mp3
5666	skin was showing	3	Call Me Maybe	00:01:22.800	00:01:23.800	40.mp3
5667	hot night	2	Call Me Maybe	00:01:23.900	00:01:24.900	41.mp3
5668	wind was blowing	3	Call Me Maybe	00:01:24.800	00:01:25.900	42.mp3
5669	where you think you're going baby	6	Call Me Maybe	00:01:26.100	00:01:28.200	43.mp3
5670	hey i just met you	5	Call Me Maybe	00:01:28.400	00:01:30.500	44.mp3
5671	and this is crazy	4	Call Me Maybe	00:01:30.700	00:01:32.500	45.mp3
5672	but here's my number	4	Call Me Maybe	00:01:32.700	00:01:34.500	46.mp3
5673	so call me maybe	4	Call Me Maybe	00:01:34.700	00:01:36.400	47.mp3
5674	it's hard to look right at you baby	8	Call Me Maybe	00:01:36.600	00:01:40.500	48.mp3
5675	but here's my number	4	Call Me Maybe	00:01:40.700	00:01:42.600	49.mp3
5676	so call me maybe	4	Call Me Maybe	00:01:42.800	00:01:44.200	50.mp3
5677	hey i just met you	5	Call Me Maybe	00:01:44.400	00:01:46.500	51.mp3
5678	and this is crazy	4	Call Me Maybe	00:01:46.700	00:01:48.400	52.mp3
5679	but here's my number	4	Call Me Maybe	00:01:48.600	00:01:50.500	53.mp3
5680	so call me maybe	4	Call Me Maybe	00:01:50.700	00:01:52.500	54.mp3
5681	and all the other boys	5	Call Me Maybe	00:01:52.700	00:01:54.500	55.mp3
5682	try to chase me	4	Call Me Maybe	00:01:54.700	00:01:56.400	56.mp3
5683	but here's my number	4	Call Me Maybe	00:01:56.600	00:01:58.500	57.mp3
5684	so call me maybe	4	Call Me Maybe	00:01:58.700	00:02:00.600	58.mp3
5685	before you came into my life	6	Call Me Maybe	00:02:00.800	00:02:02.500	59.mp3
5686	i missed you so bad	5	Call Me Maybe	00:02:02.700	00:02:03.800	60.mp3
5687	i missed you so bad	5	Call Me Maybe	00:02:04.000	00:02:06.100	61.mp3
5688	i missed you so so bad	6	Call Me Maybe	00:02:06.300	00:02:08.100	62.mp3
5689	before you came into my life	6	Call Me Maybe	00:02:08.300	00:02:09.800	63.mp3
5690	i missed you so bad	5	Call Me Maybe	00:02:10.000	00:02:12.200	64.mp3
5691	and you should know that	5	Call Me Maybe	00:02:12.400	00:02:20.400	65.mp3
5692	it's hard to look right at you baby	8	Call Me Maybe	00:02:24.700	00:02:28.600	66.mp3
5693	but here's my number	4	Call Me Maybe	00:02:28.800	00:02:30.600	67.mp3
5694	so call me maybe	4	Call Me Maybe	00:02:30.800	00:02:32.400	68.mp3
5695	hey i just met you	5	Call Me Maybe	00:02:32.600	00:02:34.400	69.mp3
5696	and this is crazy	4	Call Me Maybe	00:02:34.600	00:02:36.400	70.mp3
5697	but here's my number	4	Call Me Maybe	00:02:36.600	00:02:38.500	71.mp3
5698	so call me maybe	4	Call Me Maybe	00:02:38.700	00:02:40.300	72.mp3
5699	and all the other boys	5	Call Me Maybe	00:02:40.500	00:02:42.400	73.mp3
5700	try to chase me	4	Call Me Maybe	00:02:42.600	00:02:44.300	74.mp3
5701	but here's my number	4	Call Me Maybe	00:02:44.500	00:02:46.400	75.mp3
5702	so call me maybe	4	Call Me Maybe	00:02:46.600	00:02:48.400	76.mp3
5703	before you came into my life	6	Call Me Maybe	00:02:48.600	00:02:50.500	77.mp3
5704	i missed you so bad	5	Call Me Maybe	00:02:50.700	00:02:51.900	78.mp3
5705	i missed you so bad	5	Call Me Maybe	00:02:52.100	00:02:54.000	79.mp3
5706	i missed you so so bad	6	Call Me Maybe	00:02:54.200	00:02:56.100	80.mp3
5707	before you came into my life	6	Call Me Maybe	00:02:56.300	00:02:58.400	81.mp3
5708	i missed you so bad	5	Call Me Maybe	00:02:58.600	00:02:59.900	82.mp3
5709	and you should know that	5	Call Me Maybe	00:03:00.100	00:03:02.300	83.mp3
5710	so call me, may be	5	Call Me Maybe	00:03:02.500	00:03:07.500	84.mp3
5711	send my love (to your new lover)	7	Send My Love	00:00:00.000	00:00:00.000	﻿1.mp3
5712	just the guitar, okay cool	5	Send My Love	00:00:00.000	00:00:01.600	2.mp3
5713	-==[ www.opensubtitles.com ]==-	3	Send My Love	00:00:03.000	00:00:09.074	3.mp3
5714	this was all you, none of it me	8	Send My Love	00:00:13.000	00:00:16.400	4.mp3
5715	you put your hands on, on my body and told me	11	Send My Love	00:00:16.400	00:00:21.480	5.mp3
5716	mmm	1	Send My Love	00:00:21.480	00:00:23.600	6.mp3
5717	you told me you were ready	6	Send My Love	00:00:23.600	00:00:25.280	7.mp3
5718	for the big one, for the big jump	8	Send My Love	00:00:25.280	00:00:27.240	8.mp3
5719	i'd be your last love everlasting you and me	9	Send My Love	00:00:27.240	00:00:32.920	9.mp3
5720	mmm	1	Send My Love	00:00:32.920	00:00:34.920	10.mp3
5721	that was what you told me	6	Send My Love	00:00:34.920	00:00:36.970	11.mp3
5722	i'm giving you up	4	Send My Love	00:00:36.970	00:00:39.520	12.mp3
5723	i've forgiven it all	4	Send My Love	00:00:39.520	00:00:42.900	13.mp3
5724	you set me free-ee	4	Send My Love	00:00:42.900	00:00:46.520	14.mp3
5725	send my love to your new lover	7	Send My Love	00:00:46.520	00:00:51.560	15.mp3
5726	treat her better	3	Send My Love	00:00:51.560	00:00:54.000	16.mp3
5727	we've gotta let go of all of our ghosts treat her better	12	Send My Love	00:00:54.000	00:00:54.620	17.mp3
5728	we've gotta let go of all of our ghosts	9	Send My Love	00:00:54.620	00:00:56.520	18.mp3
5729	we both know we ain't kids no more we've gotta let go of all of our ghosts	17	Send My Love	00:00:56.520	00:00:57.320	19.mp3
5730	we both know we ain't kids no more	8	Send My Love	00:00:57.320	00:00:58.620	20.mp3
5731	send my love to your new lover we both know we ain't kids no more	15	Send My Love	00:00:58.620	00:00:58.700	21.mp3
5732	send my love to your new lover	7	Send My Love	00:00:58.700	00:01:03.160	22.mp3
5733	treat her better send my love to your new lover	10	Send My Love	00:01:03.160	00:01:03.360	23.mp3
5734	treat her better	3	Send My Love	00:01:03.360	00:01:06.180	24.mp3
5735	we gotta let go of all of our ghosts	9	Send My Love	00:01:06.180	00:01:09.040	25.mp3
5736	we both know we ain't kids no more	8	Send My Love	00:01:09.040	00:01:12.000	26.mp3
5737	i was too strong you were trembling	7	Send My Love	00:01:17.500	00:01:20.000	27.mp3
5738	you couldn't handle the hot heat rising i was too strong you were trembling	14	Send My Love	00:01:20.000	00:01:20.960	28.mp3
5739	you couldn't handle the hot heat rising	7	Send My Love	00:01:20.960	00:01:26.360	29.mp3
5740	mmm	1	Send My Love	00:01:26.360	00:01:27.960	30.mp3
5741	baby i'm still rising	4	Send My Love	00:01:27.960	00:01:29.640	31.mp3
5742	i was running, you were walking	6	Send My Love	00:01:29.640	00:01:32.520	32.mp3
5743	you couldn't keep up, you were falling down (down)	9	Send My Love	00:01:32.520	00:01:38.120	33.mp3
5744	mmm	1	Send My Love	00:01:38.120	00:01:39.120	34.mp3
5745	mmm there's only one way down	6	Send My Love	00:01:39.120	00:01:41.120	35.mp3
5746	i'm giving you up	4	Send My Love	00:01:41.120	00:01:44.560	36.mp3
5747	i've forgiven it all	4	Send My Love	00:01:44.560	00:01:47.760	37.mp3
5748	you set me free-ee, oh	5	Send My Love	00:01:47.760	00:01:52.920	38.mp3
5749	send my love to your new lover	7	Send My Love	00:01:52.920	00:01:55.760	39.mp3
5750	treat her better	3	Send My Love	00:01:55.760	00:01:58.600	40.mp3
5751	we gotta let go of all of our ghosts	9	Send My Love	00:01:58.600	00:02:02.000	41.mp3
5752	we both know we ain't kids no more	8	Send My Love	00:02:02.000	00:02:04.000	42.mp3
5753	send my love to your new lover	7	Send My Love	00:02:04.000	00:02:07.760	43.mp3
5754	treat her better	3	Send My Love	00:02:07.760	00:02:10.400	44.mp3
5755	we've gotta let go of all of our ghosts	9	Send My Love	00:02:10.400	00:02:13.480	45.mp3
5756	we both know we ain't kids no more	8	Send My Love	00:02:13.480	00:02:15.840	46.mp3
5757	if you're ready, if you're ready	6	Send My Love	00:02:15.840	00:02:18.520	47.mp3
5758	if you're ready, i am ready	6	Send My Love	00:02:18.520	00:02:22.200	48.mp3
5759	if you're ready, if you're ready	6	Send My Love	00:02:22.200	00:02:25.280	49.mp3
5760	we both know we ain't kids no more	8	Send My Love	00:02:25.280	00:02:28.240	50.mp3
5761	i found a love for me	6	Perfect	00:00:20.150	00:00:26.106	2.mp3
5762	darling, just dive right in and follow my lead	9	Perfect	00:00:27.416	00:00:33.515	3.mp3
5763	well, i found a girl, beautiful and sweet	8	Perfect	00:00:35.000	00:00:41.516	4.mp3
5764	oh, i never knew you were the someone waiting for me	11	Perfect	00:00:42.506	00:00:49.100	5.mp3
5765	'cause we were just kids when we fell in love	10	Perfect	00:00:49.215	00:00:53.814	6.mp3
5766	not knowing what it was	5	Perfect	00:00:54.000	00:00:57.799	7.mp3
5767	i will not give you up this time	8	Perfect	00:00:58.000	00:01:04.999	8.mp3
5768	but darling, just kiss me slow, your heart is all i own	12	Perfect	00:01:05.106	00:01:12.655	9.mp3
5769	and in your eyes you're holding mine	7	Perfect	00:01:13.000	00:01:19.206	10.mp3
5770	baby, i'm dancing in the dark with you between my arms	11	Perfect	00:01:20.000	00:01:30.711	11.mp3
5771	barefoot on the grass, listening to our favourite song	9	Perfect	00:01:31.000	00:01:37.904	12.mp3
5772	when you said you looked a mess, i whispered underneath my breath	12	Perfect	00:01:38.310	00:01:44.999	13.mp3
5773	but you heard it, darling, you look perfect tonight	9	Perfect	00:01:45.403	00:01:52.402	14.mp3
5774	well i found a woman, stronger than anyone i know	10	Perfect	00:01:58.714	00:02:05.513	15.mp3
5775	she shares my dreams, i hope that someday i'll share her home	12	Perfect	00:02:06.000	00:02:13.306	16.mp3
5776	i found a love, to carry more than just my secrets	11	Perfect	00:02:14.000	00:02:21.300	17.mp3
5777	to carry love, to carry children of our own	9	Perfect	00:02:21.715	00:02:27.914	18.mp3
5778	we are still kids, but we're so in love	9	Perfect	00:02:28.000	00:02:32.303	19.mp3
5779	fighting against all odds	4	Perfect	00:02:32.800	00:02:36.096	20.mp3
5780	i know we'll be alright this time	7	Perfect	00:02:36.102	00:02:43.801	21.mp3
5781	darling, just hold my hand	5	Perfect	00:02:44.000	00:02:47.502	22.mp3
5782	be my girl, i'll be your man	7	Perfect	00:02:47.604	00:02:51.203	23.mp3
5783	i see my future in your eyes	7	Perfect	00:02:51.800	00:02:57.708	24.mp3
5784	baby, i'm dancing in the dark, with you between my arms	11	Perfect	00:02:58.400	00:03:09.000	25.mp3
5785	barefoot on the grass, listening to our favourite song	9	Perfect	00:03:09.601	00:03:16.400	26.mp3
5786	when i saw you in that dress, looking so beautiful	10	Perfect	00:03:16.518	00:03:22.167	27.mp3
5787	i don't deserve this, darling, you look perfect tonight	9	Perfect	00:03:22.850	00:03:31.000	28.mp3
5788	baby, i'm dancing in the dark, with you between my arms	11	Perfect	00:03:43.716	00:03:54.515	29.mp3
5789	barefoot on the grass, listening to our favourite song	9	Perfect	00:03:55.000	00:04:01.999	30.mp3
5790	i have faith in what i see	7	Perfect	00:04:02.100	00:04:05.205	31.mp3
5791	now i know i have met an angel in person	10	Perfect	00:04:05.509	00:04:11.808	32.mp3
5792	and she looks perfect, i don't deserve this	8	Perfect	00:04:12.114	00:04:19.713	33.mp3
5793	you look perfect tonight	4	Perfect	00:04:20.000	00:04:24.208	34.mp3
5794	in your eyes there's a heavy blue	7	Wolves	00:00:18.065	00:00:21.699	1.mp3
5795	one to love and one to lose	7	Wolves	00:00:21.733	00:00:25.533	2.mp3
5796	sweet divine, a heavy truth	5	Wolves	00:00:25.565	00:00:29.166	3.mp3
5797	water or wine, don't make me choose	7	Wolves	00:00:29.199	00:00:32.432	4.mp3
5798	i wanna feel the way that we did that summer night	11	Wolves	00:00:32.466	00:00:37.600	5.mp3
5799	night	1	Wolves	00:00:38.066	00:00:40.066	6.mp3
5800	drunk on a feeling, alone with the stars in the sky	11	Wolves	00:00:40.100	00:00:45.733	7.mp3
5801	i've been running through the jungle	6	Wolves	00:00:47.165	00:00:49.099	8.mp3
5802	i've been running with the wolves	6	Wolves	00:00:49.133	00:00:50.766	9.mp3
5803	to get to you, to get to you	8	Wolves	00:00:51.000	00:00:54.466	10.mp3
5804	i've been down the darkest alleys	6	Wolves	00:00:55.000	00:00:56.765	11.mp3
5805	saw the dark side of the moon	7	Wolves	00:00:57.000	00:00:58.500	12.mp3
5806	to get to you, to get to you	8	Wolves	00:00:58.533	00:01:02.033	13.mp3
5807	i've looked for love in every stranger	7	Wolves	00:01:02.299	00:01:04.533	14.mp3
5808	took too much to ease the anger	7	Wolves	00:01:04.566	00:01:06.533	15.mp3
5809	all for you, yea all for you	7	Wolves	00:01:06.566	00:01:10.266	16.mp3
5810	i've been running through the jungle	6	Wolves	00:01:10.299	00:01:12.233	17.mp3
5811	i've been crying with the wolves	6	Wolves	00:01:12.266	00:01:14.000	18.mp3
5812	to get to you, to get to you	8	Wolves	00:01:14.033	00:01:17.533	19.mp3
5813	oh to get to you	5	Wolves	00:01:17.566	00:01:19.200	20.mp3
5814	your fingertips trace my skin	5	Wolves	00:01:34.566	00:01:38.200	21.mp3
5815	to places i have never been	6	Wolves	00:01:38.233	00:01:41.733	22.mp3
5816	blindly i am following	4	Wolves	00:01:42.233	00:01:46.066	23.mp3
5817	break down these walls and come on in	8	Wolves	00:01:46.099	00:01:49.165	24.mp3
5818	i wanna feel the way that we did that summer night	11	Wolves	00:01:49.200	00:01:54.700	25.mp3
5819	night	1	Wolves	00:01:54.733	00:01:56.766	26.mp3
5820	drunk on a feeling, alone with the stars in the sky	11	Wolves	00:01:57.000	00:02:03.233	27.mp3
5821	i've been running through the jungle	6	Wolves	00:02:04.066	00:02:06.000	28.mp3
5822	i've been running with the wolves	6	Wolves	00:02:06.033	00:02:07.632	29.mp3
5823	to get to you, to get to you	8	Wolves	00:02:07.665	00:02:11.566	30.mp3
5824	i've been down the darkest alleys	6	Wolves	00:02:11.599	00:02:13.665	31.mp3
5825	saw the dark side of the moon	7	Wolves	00:02:13.699	00:02:15.299	32.mp3
5826	to get to you, to get to you	8	Wolves	00:02:15.332	00:02:19.000	33.mp3
5827	i've looked for love in every stranger	7	Wolves	00:02:19.199	00:02:21.199	34.mp3
5828	took too much to ease the anger	7	Wolves	00:02:21.233	00:02:23.200	35.mp3
5829	all for you, yea all for you	7	Wolves	00:02:23.233	00:02:26.533	36.mp3
5830	i've been running through the jungle	6	Wolves	00:02:27.199	00:02:29.132	37.mp3
5831	i've been crying with the wolves	6	Wolves	00:02:29.165	00:02:30.699	38.mp3
5832	to get to you, to get to you	8	Wolves	00:02:30.733	00:02:34.200	39.mp3
5833	oh to get to you	5	Wolves	00:02:34.233	00:02:36.099	40.mp3
5834	i've been running through the jungle	6	Wolves	00:02:50.300	00:02:52.233	41.mp3
5835	i've been running with the wolves	6	Wolves	00:02:52.265	00:02:53.665	42.mp3
5836	to get to you, to get to you	8	Wolves	00:02:53.699	00:02:57.199	43.mp3
5837	i've been down the darkest alleys	6	Wolves	00:02:57.366	00:02:59.766	44.mp3
5838	saw the dark side of the moon	7	Wolves	00:03:00.000	00:03:01.300	45.mp3
5839	to get to you, to get to you	8	Wolves	00:03:01.332	00:03:05.032	46.mp3
5840	i've looked for love in every stranger	7	Wolves	00:03:05.265	00:03:07.299	47.mp3
5841	took too much to ease the anger	7	Wolves	00:03:07.332	00:03:09.365	48.mp3
5842	all for you, yea all for you	7	Wolves	00:03:09.400	00:03:12.733	49.mp3
5843	i've been running through the jungle	6	Wolves	00:03:13.199	00:03:15.132	50.mp3
5844	i've been crying with the wolves	6	Wolves	00:03:15.165	00:03:17.000	51.mp3
5845	to get to you, to get to you	8	Wolves	00:03:17.032	00:03:20.299	52.mp3
5846	oh to get to you	5	Wolves	00:03:20.332	00:03:23.599	53.mp3
5847	i can swear i can joke i feel my mind if	11	Pretty Girl	00:00:00.000	00:00:19.230	1.mp3
5848	i drink if i smoke i keep up with the	10	Pretty Girl	00:00:15.089	00:00:22.439	2.mp3
5849	girls and you see me holding up my	8	Pretty Girl	00:00:19.230	00:00:24.990	3.mp3
5850	middle finger to the world	5	Pretty Girl	00:00:22.439	00:00:28.579	4.mp3
5851	your heavens and your pearls girls	6	Pretty Girl	00:00:24.989	00:00:33.030	5.mp3
5852	cuz i'm not just a pretty girl i'm more	9	Pretty Girl	00:00:28.579	00:00:36.420	6.mp3
5853	than just a picture i'm a daughter and a	9	Pretty Girl	00:00:33.030	00:00:40.500	7.mp3
5854	sister sometimes it's hard for me to	7	Pretty Girl	00:00:36.420	00:00:45.239	8.mp3
5855	show that i'm more than just a rumor or	9	Pretty Girl	00:00:40.500	00:00:48.899	9.mp3
5856	a song on your computer there's more to	8	Pretty Girl	00:00:45.238	00:00:51.739	10.mp3
5857	me than people know	4	Pretty Girl	00:00:48.899	00:00:57.049	11.mp3
5858	some days i'm wrong don't make some rich	8	Pretty Girl	00:00:51.740	00:01:00.010	12.mp3
5859	zombies	1	Pretty Girl	00:00:57.049	00:01:08.219	13.mp3
5860	the sun isn't strong sundays i quit	7	Pretty Girl	00:01:00.009	00:01:08.219	14.mp3
5861	but i've been through some [ __ ] i can	10	Pretty Girl	00:01:08.969	00:01:13.939	15.mp3
5862	swear	1	Pretty Girl	00:01:11.609	00:01:13.939	16.mp3
5863	[music]	1	Pretty Girl	00:01:21.739	00:01:24.799	17.mp3
5864	giller	1	Pretty Girl	00:01:25.950	00:01:28.950	18.mp3
5865	girl more than just a number	6	Pretty Girl	00:01:32.379	00:01:38.670	19.mp3
5866	i'm a hitter	3	Pretty Girl	00:01:36.129	00:01:40.949	20.mp3
5867	sometimes	1	Pretty Girl	00:01:38.670	00:01:45.359	21.mp3
5868	me to show that i'm more than just a	9	Pretty Girl	00:01:40.950	00:01:49.228	22.mp3
5869	title or a comment going viral there's	7	Pretty Girl	00:01:45.359	00:01:55.769	23.mp3
5870	more to me than people something's wrong	7	Pretty Girl	00:01:49.228	00:01:58.379	24.mp3
5871	don't even bridge	3	Pretty Girl	00:01:55.769	00:02:01.109	25.mp3
5872	some days of nice	4	Pretty Girl	00:01:58.379	00:02:09.129	26.mp3
5873	i quit	2	Pretty Girl	00:02:01.109	00:02:10.868	27.mp3
5874	don't let it show	4	Pretty Girl	00:02:09.129	00:02:15.209	28.mp3
5875	some [ __ ] i can swear	7	Pretty Girl	00:02:10.868	00:02:15.209	29.mp3
5876	yes	1	Pretty Girl	00:02:21.810	00:02:24.199	30.mp3
5877	thank you	2	Pretty Girl	00:02:27.009	00:02:33.069	31.mp3
5878	[music]	1	Pretty Girl	00:02:30.009	00:02:33.069	32.mp3
5879	[music]	1	Pretty Girl	00:02:37.669	00:02:40.750	33.mp3
5880	[clock ticking]	2	Dusk Till Dawn	00:00:00.233	00:00:03.233	1.mp3
5881	[sfx: tires squealing, gun shots, glass breaking]	7	Dusk Till Dawn	00:00:03.233	00:00:08.233	2.mp3
5882	not tryna be indie	4	Dusk Till Dawn	00:00:22.899	00:00:25.532	3.mp3
5883	not tryna be cool	4	Dusk Till Dawn	00:00:25.533	00:00:27.932	4.mp3
5884	just tryna be in this	5	Dusk Till Dawn	00:00:27.932	00:00:30.600	5.mp3
5885	tell me are you too?	5	Dusk Till Dawn	00:00:30.600	00:00:33.466	6.mp3
5886	can you feel where the wind is?	7	Dusk Till Dawn	00:00:33.466	00:00:36.000	7.mp3
5887	can you feel it through	5	Dusk Till Dawn	00:00:36.000	00:00:38.765	8.mp3
5888	all of the windows	4	Dusk Till Dawn	00:00:38.765	00:00:41.365	9.mp3
5889	inside this room?	3	Dusk Till Dawn	00:00:41.365	00:00:43.365	10.mp3
5890	cause i wanna touch you baby	6	Dusk Till Dawn	00:00:44.865	00:00:47.600	11.mp3
5891	and i wanna feel you too	6	Dusk Till Dawn	00:00:47.600	00:00:50.265	12.mp3
5892	i wanna see the sun rise	6	Dusk Till Dawn	00:00:50.265	00:00:52.799	13.mp3
5893	on your sins just me and you	7	Dusk Till Dawn	00:00:52.799	00:00:55.699	14.mp3
5894	light it up	3	Dusk Till Dawn	00:00:55.700	00:00:58.432	15.mp3
5895	on the run	3	Dusk Till Dawn	00:00:58.432	00:01:00.932	16.mp3
5896	let's make love tonight	4	Dusk Till Dawn	00:01:00.932	00:01:06.400	17.mp3
5897	make it up	3	Dusk Till Dawn	00:01:06.400	00:01:09.100	18.mp3
5898	fall in love	3	Dusk Till Dawn	00:01:09.099	00:01:11.699	19.mp3
5899	try	1	Dusk Till Dawn	00:01:11.700	00:01:14.033	20.mp3
5900	baby i'm right here	4	Dusk Till Dawn	00:01:14.033	00:01:16.033	21.mp3
5901	but you'll never be alone	5	Dusk Till Dawn	00:01:18.200	00:01:20.900	22.mp3
5902	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:01:20.900	00:01:22.900	23.mp3
5903	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:01:23.500	00:01:26.233	24.mp3
5904	baby i'm right here	4	Dusk Till Dawn	00:01:26.233	00:01:28.933	25.mp3
5905	i'll hold you when things go wrong	7	Dusk Till Dawn	00:01:28.933	00:01:31.500	26.mp3
5906	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:01:31.500	00:01:33.500	27.mp3
5907	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:01:34.066	00:01:37.000	28.mp3
5908	baby i'm right here~	4	Dusk Till Dawn	00:01:37.000	00:01:44.533	29.mp3
5909	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:01:44.533	00:01:47.566	30.mp3
5910	baby i'm right here~	4	Dusk Till Dawn	00:01:47.566	00:01:55.500	31.mp3
5911	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:01:55.500	00:01:58.266	32.mp3
5912	baby i'm right here	4	Dusk Till Dawn	00:01:58.266	00:02:00.266	33.mp3
5913	your life in the daytime is over.	7	Dusk Till Dawn	00:02:03.165	00:02:06.165	34.mp3
5914	there's eyes on you everywhere.	5	Dusk Till Dawn	00:02:07.233	00:02:08.765	35.mp3
5915	you know that right?	4	Dusk Till Dawn	00:02:08.765	00:02:10.199	36.mp3
5916	i'm watching you.	3	Dusk Till Dawn	00:02:10.199	00:02:12.165	37.mp3
5917	my crews watching you.	4	Dusk Till Dawn	00:02:12.165	00:02:14.633	38.mp3
5918	you know your little homies?	5	Dusk Till Dawn	00:02:14.633	00:02:16.866	39.mp3
5919	they pissed off.	3	Dusk Till Dawn	00:02:16.866	00:02:18.366	40.mp3
5920	they mad at you bro.	5	Dusk Till Dawn	00:02:20.032	00:02:21.799	41.mp3
5921	your name is mud on the streets.	7	Dusk Till Dawn	00:02:21.800	00:02:25.766	42.mp3
5922	oh, i know who you are.	6	Dusk Till Dawn	00:02:25.765	00:02:28.099	43.mp3
5923	you don't know me.	4	Dusk Till Dawn	00:02:29.300	00:02:30.800	44.mp3
5924	we were shut like a jacket	6	Dusk Till Dawn	00:02:31.199	00:02:33.765	45.mp3
5925	so do your zip	4	Dusk Till Dawn	00:02:33.765	00:02:36.566	46.mp3
5926	we would roll down the rapids	6	Dusk Till Dawn	00:02:36.566	00:02:39.165	47.mp3
5927	to find a wave that fits	6	Dusk Till Dawn	00:02:39.165	00:02:41.765	48.mp3
5928	can you feel where the wind is?	7	Dusk Till Dawn	00:02:41.765	00:02:44.566	49.mp3
5929	can you feel it through?	5	Dusk Till Dawn	00:02:44.566	00:02:47.466	50.mp3
5930	all of the windows	4	Dusk Till Dawn	00:02:47.466	00:02:49.733	51.mp3
5931	inside this room	3	Dusk Till Dawn	00:02:49.733	00:02:51.733	52.mp3
5932	cause i wanna touch you baby	6	Dusk Till Dawn	00:02:53.300	00:02:56.066	53.mp3
5933	i wanna feel you too	5	Dusk Till Dawn	00:02:56.066	00:02:58.699	54.mp3
5934	i wanna see the sun rise	6	Dusk Till Dawn	00:02:58.699	00:03:01.299	55.mp3
5935	on your sins just me and you	7	Dusk Till Dawn	00:03:01.300	00:03:04.066	56.mp3
5936	light it up	3	Dusk Till Dawn	00:03:04.066	00:03:06.699	57.mp3
5937	on the run	3	Dusk Till Dawn	00:03:06.699	00:03:09.465	58.mp3
5938	let's make love tonight	4	Dusk Till Dawn	00:03:09.466	00:03:14.566	59.mp3
5939	make it up	3	Dusk Till Dawn	00:03:14.566	00:03:17.265	60.mp3
5940	fall in love	3	Dusk Till Dawn	00:03:17.265	00:03:19.932	61.mp3
5941	try	1	Dusk Till Dawn	00:03:19.932	00:03:22.233	62.mp3
5942	but you'll never be alone	5	Dusk Till Dawn	00:03:26.566	00:03:29.066	63.mp3
5943	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:03:29.066	00:03:31.066	64.mp3
5944	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:03:31.800	00:03:34.633	65.mp3
5945	baby i'm right here	4	Dusk Till Dawn	00:03:34.633	00:03:37.266	66.mp3
5946	i'll hold you when things go wrong	7	Dusk Till Dawn	00:03:37.265	00:03:39.965	67.mp3
5947	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:03:39.966	00:03:41.966	68.mp3
5948	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:03:42.532	00:03:45.332	69.mp3
5949	baby i'm right here~	4	Dusk Till Dawn	00:03:45.332	00:03:53.066	70.mp3
5950	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:03:53.066	00:03:56.300	71.mp3
5951	baby i'm right here~	4	Dusk Till Dawn	00:03:56.300	00:04:03.900	72.mp3
5952	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:04:03.900	00:04:06.900	73.mp3
5953	baby i'm right here	4	Dusk Till Dawn	00:04:06.900	00:04:09.066	74.mp3
5954	girl give love to your body	6	Dusk Till Dawn	00:04:09.066	00:04:11.665	75.mp3
5955	it's only you that can stop it	7	Dusk Till Dawn	00:04:11.665	00:04:14.233	76.mp3
5956	girl give love to your body	6	Dusk Till Dawn	00:04:14.233	00:04:16.932	77.mp3
5957	it's only you that can stop it	7	Dusk Till Dawn	00:04:16.932	00:04:19.632	78.mp3
5958	girl give love to your body	6	Dusk Till Dawn	00:04:19.632	00:04:22.532	79.mp3
5959	it's only you that can stop it	7	Dusk Till Dawn	00:04:22.533	00:04:25.066	80.mp3
5960	girl give love to your body	6	Dusk Till Dawn	00:04:25.065	00:04:28.065	81.mp3
5961	girl give love to your body~	6	Dusk Till Dawn	00:04:28.065	00:04:33.165	82.mp3
5962	but you'll never be alone	5	Dusk Till Dawn	00:04:33.165	00:04:35.800	83.mp3
5963	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:04:35.800	00:04:37.800	84.mp3
5964	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:04:38.500	00:04:41.365	85.mp3
5965	baby i'm right here	4	Dusk Till Dawn	00:04:41.365	00:04:43.966	86.mp3
5966	i'll hold you when things go wrong	7	Dusk Till Dawn	00:04:43.966	00:04:46.600	87.mp3
5967	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:04:46.600	00:04:48.600	88.mp3
5968	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:04:49.233	00:04:51.865	89.mp3
5969	baby i'm right here~	4	Dusk Till Dawn	00:04:51.865	00:04:59.800	90.mp3
5970	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:04:59.800	00:05:02.665	91.mp3
5971	baby i'm right here~	4	Dusk Till Dawn	00:05:02.665	00:05:10.600	92.mp3
5972	i'll be with you from dusk till dawn	8	Dusk Till Dawn	00:05:10.600	00:05:13.266	93.mp3
5973	baby i'm right here	4	Dusk Till Dawn	00:05:13.266	00:05:15.432	94.mp3
5974	[zayn harmonizing]	2	Dusk Till Dawn	00:05:15.432	00:05:19.432	95.mp3
5975	[car engine revs]	3	Dusk Till Dawn	00:05:19.932	00:05:25.932	96.mp3
5976	i was walking down the street the other day	9	Bad Liar	00:00:10.500	00:00:13.166	2.mp3
5977	trying to distract myself	4	Bad Liar	00:00:13.199	00:00:15.132	3.mp3
5978	but then i see your face	6	Bad Liar	00:00:15.166	00:00:17.065	4.mp3
5979	ooh wait that's someone else	5	Bad Liar	00:00:17.100	00:00:19.166	5.mp3
5980	trying to play it coy	5	Bad Liar	00:00:19.199	00:00:21.000	6.mp3
5981	trying to make it disappear	5	Bad Liar	00:00:21.033	00:00:23.000	7.mp3
5982	but just like the battle of troy	7	Bad Liar	00:00:23.033	00:00:25.033	8.mp3
5983	there's nothing subtle here	4	Bad Liar	00:00:25.065	00:00:26.632	9.mp3
5984	in my room there's a king size space	8	Bad Liar	00:00:26.666	00:00:29.000	10.mp3
5985	bigger than it used to be	6	Bad Liar	00:00:29.033	00:00:30.666	11.mp3
5986	if you want you can rent that place	8	Bad Liar	00:00:30.699	00:00:32.700	12.mp3
5987	call me an amenity	4	Bad Liar	00:00:32.732	00:00:36.765	13.mp3
5988	even if it's in my dreams	6	Bad Liar	00:00:37.000	00:00:42.600	14.mp3
5989	ooh you're taking up a fraction of my mind	9	Bad Liar	00:00:42.633	00:00:50.066	15.mp3
5990	ooooh every time i watch you serpentine	7	Bad Liar	00:00:50.100	00:00:57.766	16.mp3
5991	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:00:58.000	00:01:01.533	17.mp3
5992	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:01:01.633	00:01:05.566	18.mp3
5993	not to think about you	5	Bad Liar	00:01:05.599	00:01:08.632	19.mp3
5994	no no no	3	Bad Liar	00:01:08.665	00:01:10.000	20.mp3
5995	not to think about you	5	Bad Liar	00:01:10.033	00:01:12.700	21.mp3
5996	no no no	3	Bad Liar	00:01:12.733	00:01:14.433	22.mp3
5997	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:01:14.465	00:01:17.500	23.mp3
5998	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:01:17.599	00:01:21.500	24.mp3
5999	not to give in to you	6	Bad Liar	00:01:21.533	00:01:24.632	25.mp3
6000	no no no	3	Bad Liar	00:01:24.665	00:01:25.599	26.mp3
6001	not to give in to you	6	Bad Liar	00:01:25.632	00:01:29.599	27.mp3
6002	with my feelings on fire	5	Bad Liar	00:01:29.632	00:01:31.765	28.mp3
6003	guess i'm a bad liar	5	Bad Liar	00:01:32.000	00:01:34.299	29.mp3
6004	i see how your attention builds	6	Bad Liar	00:01:34.332	00:01:36.266	30.mp3
6005	it's like looking in a mirror	6	Bad Liar	00:01:36.299	00:01:38.200	31.mp3
6006	your touch like a happy pill	6	Bad Liar	00:01:38.233	00:01:40.133	32.mp3
6007	but still all we do is fear	7	Bad Liar	00:01:40.165	00:01:42.265	33.mp3
6008	what could possibly happen next	5	Bad Liar	00:01:42.299	00:01:44.265	34.mp3
6009	can we focus on the love	6	Bad Liar	00:01:44.299	00:01:46.265	35.mp3
6010	paint my kiss across your chest	6	Bad Liar	00:01:46.299	00:01:48.165	36.mp3
6011	if you're the art i'll be the brush	8	Bad Liar	00:01:48.200	00:01:50.066	37.mp3
6012	ooh you're taking up a fraction of my mind	9	Bad Liar	00:01:50.099	00:01:57.532	38.mp3
6013	ooooh every time i watch you serpentine	7	Bad Liar	00:01:57.566	00:02:05.200	39.mp3
6014	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:02:05.233	00:02:09.000	40.mp3
6015	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:02:09.099	00:02:13.066	41.mp3
6016	not to think about you	5	Bad Liar	00:02:13.099	00:02:16.032	42.mp3
6017	no no no	3	Bad Liar	00:02:16.066	00:02:17.099	43.mp3
6018	not to think about you	5	Bad Liar	00:02:17.133	00:02:20.100	44.mp3
6019	no no no	3	Bad Liar	00:02:20.133	00:02:21.633	45.mp3
6020	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:02:21.665	00:02:24.765	46.mp3
6021	oh i'm trying i'm trying i'm trying i'm trying i'm trying	11	Bad Liar	00:02:25.066	00:02:28.765	47.mp3
6022	not to give in to you	6	Bad Liar	00:02:29.000	00:02:31.566	48.mp3
6023	no no no	3	Bad Liar	00:02:31.599	00:02:33.032	49.mp3
6024	not to give in to you	6	Bad Liar	00:02:33.066	00:02:37.066	50.mp3
6025	with my feelings on fire	5	Bad Liar	00:02:37.099	00:02:39.265	51.mp3
6026	guess i'm a bad liar	5	Bad Liar	00:02:39.300	00:02:41.633	52.mp3
6027	you got that	3	M.I.L.F. $	00:00:21.353	00:00:21.980	2.mp3
6028	you got that	3	M.I.L.F. $	00:00:22.146	00:00:22.939	3.mp3
6029	you got that milk money	5	M.I.L.F. $	00:00:22.939	00:00:24.399	4.mp3
6030	i got that	3	M.I.L.F. $	00:00:24.399	00:00:24.941	5.mp3
6031	i got that	3	M.I.L.F. $	00:00:25.108	00:00:25.900	6.mp3
6032	i got that milf money	5	M.I.L.F. $	00:00:25.899	00:00:27.443	7.mp3
6033	you got that	3	M.I.L.F. $	00:00:27.443	00:00:28.026	8.mp3
6034	you got that	3	M.I.L.F. $	00:00:28.152	00:00:28.902	9.mp3
6035	you got that milk money	5	M.I.L.F. $	00:00:28.902	00:00:30.279	10.mp3
6036	i got that	3	M.I.L.F. $	00:00:30.280	00:00:30.905	11.mp3
6037	i got that	3	M.I.L.F. $	00:00:31.071	00:00:31.864	12.mp3
6038	i got that milf money	5	M.I.L.F. $	00:00:31.864	00:00:33.240	13.mp3
6039	i got that milf money	5	M.I.L.F. $	00:00:34.826	00:00:36.201	14.mp3
6040	i got that milf money	5	M.I.L.F. $	00:00:37.829	00:00:39.079	15.mp3
6041	i got that milf money	5	M.I.L.F. $	00:00:40.874	00:00:42.375	16.mp3
6042	i got that milf money	5	M.I.L.F. $	00:00:43.710	00:00:45.085	17.mp3
6043	heard you're in the mood	5	M.I.L.F. $	00:00:45.085	00:00:48.046	18.mp3
6044	welcome to the dairy	4	M.I.L.F. $	00:00:48.046	00:00:50.884	19.mp3
6045	i could whip it up fix	6	M.I.L.F. $	00:00:50.884	00:00:53.887	20.mp3
6046	c'mon in the front door	5	M.I.L.F. $	00:00:53.887	00:00:54.804	21.mp3
6047	leavin' out	2	M.I.L.F. $	00:00:54.804	00:00:55.513	22.mp3
6048	whip it flip it hay	5	M.I.L.F. $	00:00:55.512	00:00:57.015	23.mp3
6049	been workin'	2	M.I.L.F. $	00:00:57.015	00:00:59.057	24.mp3
6050	to give it to ya	5	M.I.L.F. $	00:00:59.057	00:01:00.018	25.mp3
6051	didn't mean to	3	M.I.L.F. $	00:01:00.018	00:01:02.103	26.mp3
6052	you mutha fucka	3	M.I.L.F. $	00:01:02.103	00:01:03.188	27.mp3
6053	you got that	3	M.I.L.F. $	00:01:03.188	00:01:03.730	28.mp3
6054	you got that	3	M.I.L.F. $	00:01:03.979	00:01:04.730	29.mp3
6055	you got that milk money	5	M.I.L.F. $	00:01:04.730	00:01:06.106	30.mp3
6056	i got that	3	M.I.L.F. $	00:01:06.106	00:01:06.691	31.mp3
6057	i got that	3	M.I.L.F. $	00:01:06.941	00:01:07.650	32.mp3
6058	i got that milf money	5	M.I.L.F. $	00:01:07.650	00:01:09.027	33.mp3
6059	i got that milf money	5	M.I.L.F. $	00:01:10.569	00:01:11.987	34.mp3
6060	i got that milf money	5	M.I.L.F. $	00:01:13.572	00:01:14.948	35.mp3
6061	me and the girls	4	M.I.L.F. $	00:01:14.948	00:01:15.658	36.mp3
6062	up in the club	4	M.I.L.F. $	00:01:15.658	00:01:16.326	37.mp3
6063	hatin' ass ho's but	4	M.I.L.F. $	00:01:16.325	00:01:17.868	38.mp3
6064	runnin' a muck	3	M.I.L.F. $	00:01:17.868	00:01:18.578	39.mp3
6065	ownin' the spot	3	M.I.L.F. $	00:01:18.578	00:01:19.370	40.mp3
6066	buyin' the bar like i	5	M.I.L.F. $	00:01:19.370	00:01:20.829	41.mp3
6067	i've been	2	M.I.L.F. $	00:01:20.829	00:01:21.873	42.mp3
6068	now where the	3	M.I.L.F. $	00:01:21.873	00:01:23.541	43.mp3
6069	hair and	2	M.I.L.F. $	00:01:23.540	00:01:24.959	44.mp3
6070	all my girls on fleek	5	M.I.L.F. $	00:01:24.959	00:01:26.585	45.mp3
6071	cuz we	2	M.I.L.F. $	00:01:26.585	00:01:26.920	46.mp3
6072	i-n-d-e-p-e-n-d-e-n-t	1	M.I.L.F. $	00:01:26.920	00:01:30.924	47.mp3
6073	do you know	3	M.I.L.F. $	00:01:30.924	00:01:32.383	48.mp3
6074	can't see me b-r-o-k-e	4	M.I.L.F. $	00:01:32.382	00:01:35.385	49.mp3
6075	i'm p-a-i-d	2	M.I.L.F. $	00:01:35.385	00:01:37.221	50.mp3
6076	heard about me	3	M.I.L.F. $	00:01:37.221	00:01:38.222	51.mp3
6077	i'm sayin'	2	M.I.L.F. $	00:01:38.222	00:01:39.015	52.mp3
6078	you got that	3	M.I.L.F. $	00:01:39.015	00:01:39.516	53.mp3
6079	you got that	3	M.I.L.F. $	00:01:39.766	00:01:40.391	54.mp3
6080	you got that milk money	5	M.I.L.F. $	00:01:40.391	00:01:41.893	55.mp3
6081	i got that	3	M.I.L.F. $	00:01:41.893	00:01:42.477	56.mp3
6082	i got that	3	M.I.L.F. $	00:01:42.644	00:01:43.436	57.mp3
6083	i got that milf money	5	M.I.L.F. $	00:01:43.436	00:01:44.979	58.mp3
6084	you got that	3	M.I.L.F. $	00:01:44.978	00:01:45.522	59.mp3
6085	you got that	3	M.I.L.F. $	00:01:45.772	00:01:46.439	60.mp3
6086	you got that milk money	5	M.I.L.F. $	00:01:46.438	00:01:47.898	61.mp3
6087	i got that	3	M.I.L.F. $	00:01:47.899	00:01:48.566	62.mp3
6088	i got that	3	M.I.L.F. $	00:01:48.691	00:01:49.317	63.mp3
6089	i got that milf	4	M.I.L.F. $	00:01:49.316	00:01:50.192	64.mp3
6090	i've been	2	M.I.L.F. $	00:01:50.192	00:01:51.694	65.mp3
6091	i've been	2	M.I.L.F. $	00:01:51.694	00:01:53.070	66.mp3
6092	i've been waitin' my turn	5	M.I.L.F. $	00:01:53.070	00:01:54.530	67.mp3
6093	i've been workin' so hard	5	M.I.L.F. $	00:01:54.531	00:01:56.074	68.mp3
6094	got my spirit turnt up	5	M.I.L.F. $	00:01:56.073	00:01:57.533	69.mp3
6095	and i can't stop now	5	M.I.L.F. $	00:01:57.534	00:01:58.993	70.mp3
6096	i've been runnin' so long	5	M.I.L.F. $	00:01:58.992	00:02:00.577	71.mp3
6097	i've been fighting	3	M.I.L.F. $	00:02:00.578	00:02:01.996	72.mp3
6098	i want it i need it	6	M.I.L.F. $	00:02:01.995	00:02:03.705	73.mp3
6099	i got it for real	5	M.I.L.F. $	00:02:03.706	00:02:05.332	74.mp3
6100	i love it real woman	5	M.I.L.F. $	00:02:05.332	00:02:08.211	75.mp3
6101	hey mama i did it	5	M.I.L.F. $	00:02:08.211	00:02:11.088	76.mp3
6102	been a minute	3	M.I.L.F. $	00:02:11.088	00:02:11.840	77.mp3
6103	don't forget it	3	M.I.L.F. $	00:02:11.840	00:02:14.884	78.mp3
6104	now let me see	4	M.I.L.F. $	00:02:16.301	00:02:18.513	79.mp3
6105	let me see ya milf shake	6	M.I.L.F. $	00:02:19.514	00:02:21.558	80.mp3
6106	i got that milf money	5	M.I.L.F. $	00:02:22.140	00:02:23.600	81.mp3
6107	take it or leave it	5	Fetish	00:00:40.765	00:00:42.199	1.mp3
6108	baby take it or leave it	6	Fetish	00:00:42.232	00:00:44.199	2.mp3
6109	but i know you won't leave it	7	Fetish	00:00:44.232	00:00:45.665	3.mp3
6110	cause i know that you need it	7	Fetish	00:00:45.700	00:00:48.200	4.mp3
6111	look in the mirror	4	Fetish	00:00:48.232	00:00:50.032	5.mp3
6112	when i look in the mirror	6	Fetish	00:00:50.066	00:00:52.100	6.mp3
6113	baby i see it clearer	5	Fetish	00:00:52.133	00:00:53.600	7.mp3
6114	why you wanna be nearer	5	Fetish	00:00:53.633	00:00:56.133	8.mp3
6115	i'm not surprised	3	Fetish	00:00:56.165	00:00:59.000	9.mp3
6116	i sympathize	2	Fetish	00:00:59.033	00:01:04.033	10.mp3
6117	i can't deny	3	Fetish	00:01:04.066	00:01:06.733	11.mp3
6118	your appetite	2	Fetish	00:01:06.766	00:01:10.166	12.mp3
6119	you got a fetish for my love	7	Fetish	00:01:10.200	00:01:14.165	13.mp3
6120	i push you out and you come right back	9	Fetish	00:01:14.200	00:01:17.733	14.mp3
6121	don't see a point in blaming you	7	Fetish	00:01:17.766	00:01:22.033	15.mp3
6122	if i were you i'd do me too	8	Fetish	00:01:22.066	00:01:26.033	16.mp3
6123	you got a fetish for my love	7	Fetish	00:01:26.066	00:01:29.700	17.mp3
6124	i push you out and you come right back	9	Fetish	00:01:29.733	00:01:33.665	18.mp3
6125	don't see a point in blaming you	7	Fetish	00:01:33.700	00:01:37.566	19.mp3
6126	if i were you i'd do me too	8	Fetish	00:01:37.599	00:01:41.500	20.mp3
6127	you got a fetish for my love	7	Fetish	00:01:41.533	00:01:44.066	21.mp3
6128	reaching your limit	3	Fetish	00:01:44.099	00:01:45.533	22.mp3
6129	say you're reaching your limit	5	Fetish	00:01:45.566	00:01:47.633	23.mp3
6130	going over your limit	4	Fetish	00:01:47.665	00:01:49.200	24.mp3
6131	but i know you can't quit it	7	Fetish	00:01:49.233	00:01:51.665	25.mp3
6132	something about me	3	Fetish	00:01:51.700	00:01:53.500	26.mp3
6133	got you hooked on my body	6	Fetish	00:01:53.533	00:01:55.332	27.mp3
6134	take you over and under and twisted up like origami	10	Fetish	00:01:55.365	00:01:59.700	28.mp3
6135	i'm not surprised	3	Fetish	00:01:59.733	00:02:02.300	29.mp3
6136	i sympathize	2	Fetish	00:02:02.332	00:02:07.099	30.mp3
6137	i can't deny	3	Fetish	00:02:07.132	00:02:10.165	31.mp3
6138	your appetite	2	Fetish	00:02:10.199	00:02:13.632	32.mp3
6139	you got a fetish for my love	7	Fetish	00:02:13.665	00:02:17.532	33.mp3
6140	i push you out and you come right back	9	Fetish	00:02:17.566	00:02:21.533	34.mp3
6141	don't see a point in blaming you	7	Fetish	00:02:21.566	00:02:25.233	35.mp3
6142	if i were you i'd do me too	8	Fetish	00:02:25.265	00:02:29.165	36.mp3
6143	you got a fetish for my love	7	Fetish	00:02:29.199	00:02:33.132	37.mp3
6144	i push you out and you come right back	9	Fetish	00:02:33.165	00:02:37.099	38.mp3
6145	don't see a point in blaming you	7	Fetish	00:02:37.133	00:02:40.733	39.mp3
6146	if i were you i'd do me too	8	Fetish	00:02:40.765	00:02:44.733	40.mp3
6147	you got a fetish for my love	7	Fetish	00:02:44.765	00:02:46.365	41.mp3
6148	gucci mane : the way you walk the way you talk	11	Fetish	00:02:46.400	00:02:48.033	42.mp3
6149	i blame you cause its all your fault	8	Fetish	00:02:48.066	00:02:49.665	43.mp3
6150	you play hard don't turn me off	7	Fetish	00:02:49.699	00:02:51.732	44.mp3
6151	you acting hard but i know you soft	8	Fetish	00:02:51.765	00:02:53.665	45.mp3
6152	heart beats fast	3	A Thousand Years	00:00:20.482	00:00:23.970	2.mp3
6153	colors and promises	3	A Thousand Years	00:00:24.330	00:00:29.130	3.mp3
6154	how to be brave	4	A Thousand Years	00:00:29.355	00:00:31.555	4.mp3
6155	how can i love when i’m afraid to fall	9	A Thousand Years	00:00:32.000	00:00:38.800	5.mp3
6156	but watching you stand alone	5	A Thousand Years	00:00:39.225	00:00:44.525	6.mp3
6157	all of my doubt suddenly goes away somehow	8	A Thousand Years	00:00:44.950	00:00:52.550	7.mp3
6158	one step closer	3	A Thousand Years	00:00:53.900	00:01:00.300	8.mp3
6159	i have died everyday waiting for you	7	A Thousand Years	00:01:01.666	00:01:06.863	9.mp3
6160	darling don’t be afraid i have loved you	8	A Thousand Years	00:01:06.863	00:01:11.605	10.mp3
6161	for a thousand years	4	A Thousand Years	00:01:11.605	00:01:15.555	11.mp3
6162	i love you for a thousand more	7	A Thousand Years	00:01:15.777	00:01:21.777	12.mp3
6163	time stands still	3	A Thousand Years	00:01:27.574	00:01:30.794	13.mp3
6164	beauty in all she is	5	A Thousand Years	00:01:31.333	00:01:36.132	14.mp3
6165	i will be brave	4	A Thousand Years	00:01:36.555	00:01:38.675	15.mp3
6166	i will not let anything take away	7	A Thousand Years	00:01:39.125	00:01:46.045	16.mp3
6167	what’s standing in front of me	6	A Thousand Years	00:01:46.666	00:01:51.777	17.mp3
6168	every breath	2	A Thousand Years	00:01:51.777	00:01:53.937	18.mp3
6169	every hour has come to this	6	A Thousand Years	00:01:54.323	00:01:59.843	19.mp3
6170	one step closer	3	A Thousand Years	00:02:00.700	00:02:07.000	20.mp3
6171	i have died everyday waiting for you	7	A Thousand Years	00:02:08.608	00:02:13.828	21.mp3
6172	darling don’t be afraid i have loved you	8	A Thousand Years	00:02:14.032	00:02:18.552	22.mp3
6173	for a thousand years	4	A Thousand Years	00:02:18.802	00:02:22.302	23.mp3
6174	i love you for a thousand more	7	A Thousand Years	00:02:22.752	00:02:28.652	24.mp3
6175	and all along i believed i would find you	9	A Thousand Years	00:02:29.520	00:02:34.340	25.mp3
6176	time has brought your heart to me	7	A Thousand Years	00:02:34.840	00:02:37.240	26.mp3
6177	i have loved you for a thousand years	8	A Thousand Years	00:02:37.523	00:02:43.444	27.mp3
6178	i love you for a thousand more	7	A Thousand Years	00:02:43.877	00:02:55.097	28.mp3
6179	one step closer	3	A Thousand Years	00:03:13.383	00:03:19.783	29.mp3
6180	one step closer	3	A Thousand Years	00:03:23.996	00:03:30.596	30.mp3
6181	i have died everyday waiting for you	7	A Thousand Years	00:03:31.485	00:03:36.585	31.mp3
6182	darling don’t be afraid i have loved you	8	A Thousand Years	00:03:36.775	00:03:41.675	32.mp3
6183	for a thousand years	4	A Thousand Years	00:03:41.675	00:03:45.500	33.mp3
6184	i love you for a thousand more	7	A Thousand Years	00:03:45.500	00:03:52.179	34.mp3
6185	and all along i believed i would find you	9	A Thousand Years	00:03:52.374	00:03:57.244	35.mp3
6186	time has brought your heart to me	7	A Thousand Years	00:03:57.531	00:04:00.031	36.mp3
6187	i have loved you for a thousand years	8	A Thousand Years	00:04:00.331	00:04:06.601	37.mp3
6188	i love you for a thousand more	7	A Thousand Years	00:04:06.851	00:04:13.500	38.mp3
6189	-== [ www.opensubtitles.com ] ==-	5	A Thousand Years	00:04:14.305	00:05:14.174	38.mp3
6190	ooh, yeah	2	How Long	00:00:07.650	00:00:11.091	﻿1.mp3
6191	i'll admit, i was wrong	5	How Long	00:00:13.094	00:00:15.264	2.mp3
6192	what else can i say, girl?	6	How Long	00:00:15.264	00:00:17.173	3.mp3
6193	can't you break my head and not my heart?	9	How Long	00:00:17.173	00:00:20.995	4.mp3
6194	i was drunk, i was gone, that don't make it right	11	How Long	00:00:21.802	00:00:25.331	5.mp3
6195	but i promise there were no feelings involved	8	How Long	00:00:25.355	00:00:29.440	6.mp3
6196	she said "boy, tell me honestly	6	How Long	00:00:30.348	00:00:35.201	7.mp3
6197	was it real or just for show?" yeah	8	How Long	00:00:35.201	00:00:39.018	8.mp3
6198	she said "save your apologies	5	How Long	00:00:39.018	00:00:43.882	9.mp3
6199	baby, i just gotta know"	5	How Long	00:00:43.882	00:00:46.881	10.mp3
6201	you've been creeping 'round on me	6	How Long	00:00:51.537	00:00:53.724	12.mp3
6202	while you're calling me baby	5	How Long	00:00:53.724	00:00:55.904	13.mp3
6203	how long has this been going on?	7	How Long	00:00:55.904	00:01:00.174	14.mp3
6204	you've been acting so shady	5	How Long	00:01:00.174	00:01:02.542	15.mp3
6205	i've been feeling it lately, baby	6	How Long	00:01:02.542	00:01:05.981	16.mp3
6206	advertise your product or brand here	6	How Long	00:01:07.000	00:01:13.074	17.mp3
6207	i'll admit, it's my fault	5	How Long	00:01:14.157	00:01:16.402	18.mp3
6208	but you gotta believe me	5	How Long	00:01:16.402	00:01:18.268	19.mp3
6209	when i say it only happened once	7	How Long	00:01:18.268	00:01:22.852	20.mp3
6210	i tried and i tried, but you'll never see that	10	How Long	00:01:22.852	00:01:26.949	21.mp3
6211	you're the only one i wanna love, ooh, yeah	9	How Long	00:01:26.949	00:01:31.483	22.mp3
6212	she said "boy, tell me honestly	6	How Long	00:01:31.483	00:01:36.013	23.mp3
6213	was it real or just for show?"	7	How Long	00:01:36.013	00:01:40.152	24.mp3
6214	she said "save your apologies	5	How Long	00:01:40.152	00:01:44.941	25.mp3
6215	baby, i just gotta know"	5	How Long	00:01:44.941	00:01:47.938	26.mp3
6216	how long has this been going on?	7	How Long	00:01:47.938	00:01:52.681	27.mp3
6217	you've been creeping 'round on me	6	How Long	00:01:52.681	00:01:54.822	28.mp3
6218	while you're calling me baby	5	How Long	00:01:54.822	00:01:57.081	29.mp3
6219	how long has this been going on?	7	How Long	00:01:57.105	00:02:01.360	30.mp3
6220	you've been acting so shady	5	How Long	00:02:01.360	00:02:03.668	31.mp3
6221	i've been feeling it lately, baby	6	How Long	00:02:03.668	00:02:06.929	32.mp3
6222	how long has this been going on, baby?	8	How Long	00:02:12.834	00:02:15.723	33.mp3
6223	you gotta go tell me now	6	How Long	00:02:18.066	00:02:19.482	34.mp3
6224	she said "boy, tell me honestly	6	How Long	00:02:23.809	00:02:28.638	35.mp3
6225	was it real or just for show?" yeah	8	How Long	00:02:28.638	00:02:32.515	36.mp3
6226	she said "save your apologies	5	How Long	00:02:32.515	00:02:37.403	37.mp3
6227	baby, i just gotta know"	5	How Long	00:02:37.403	00:02:40.325	38.mp3
6228	how long has this been going on?	7	How Long	00:02:40.325	00:02:47.125	39.mp3
6229	you've been creeping 'round on me	6	How Long	00:02:47.141	00:02:49.344	40.mp3
6230	while you're calling me baby	5	How Long	00:02:49.344	00:02:51.562	41.mp3
6231	how long has this been going on?	7	How Long	00:02:51.562	00:02:55.900	42.mp3
6232	you've been acting so shady	5	How Long	00:02:55.900	00:02:58.067	43.mp3
6233	i've been feeling it lately, baby	6	How Long	00:02:58.067	00:03:01.961	44.mp3
6234	how long has this been going on?	7	How Long	00:03:01.961	00:03:04.544	45.mp3
6235	you've been creeping 'round on me	6	How Long	00:03:04.544	00:03:07.282	46.mp3
6236	how long has it been going on, baby?	8	How Long	00:03:07.282	00:03:09.998	47.mp3
6237	how long has this been going on?	7	How Long	00:03:09.998	00:03:13.065	48.mp3
6238	(you gotta go tell me now)	6	How Long	00:03:13.065	00:03:13.999	49.mp3
6239	you been acting so shady	5	How Long	00:03:13.999	00:03:15.529	50.mp3
6240	i've been feeling it lately, baby	6	How Long	00:03:15.529	00:03:19.007	51.mp3
6241	don	1	How Long	00:03:21.512	00:03:25.203	52.mp3
6242	advertise your product or brand here	6	How Long	00:03:26.305	00:04:26.478	52.mp3
6243	it's been a long day without you, my friend	9	See You Again 	00:00:10.343	00:00:17.117	1.mp3
6244	and i'll tell you all about it when i see you again	12	See You Again 	00:00:17.117	00:00:23.022	2.mp3
6245	we've come a long way from where we began	9	See You Again 	00:00:23.022	00:00:28.928	3.mp3
6246	oh, i'll tell you all about it when i see you again	12	See You Again 	00:00:28.928	00:00:35.234	4.mp3
6247	when i see you again	5	See You Again 	00:00:35.234	00:00:38.170	5.mp3
6248	[ rapping ] damn, who knew all the planes we flew	11	See You Again 	00:00:39.838	00:00:43.042	6.mp3
6249	good things we been through	5	See You Again 	00:00:43.042	00:00:44.676	7.mp3
6250	that i'd be standing right here	6	See You Again 	00:00:44.676	00:00:46.445	8.mp3
6251	talking to you 'bout another path	6	See You Again 	00:00:46.445	00:00:49.114	9.mp3
6252	i know we loved to hit the road and laugh	10	See You Again 	00:00:49.115	00:00:50.884	10.mp3
6253	but something told me that it wouldn't last	8	See You Again 	00:00:50.884	00:00:53.453	11.mp3
6254	had to switch up, look at things different	8	See You Again 	00:00:53.453	00:00:55.855	12.mp3
6255	see the bigger picture	4	See You Again 	00:00:55.854	00:00:57.156	13.mp3
6256	those were the days, hard work forever pays	8	See You Again 	00:00:57.156	00:01:00.526	14.mp3
6257	now i see you in a better place	8	See You Again 	00:01:00.527	00:01:02.395	15.mp3
6258	see you in a better place	6	See You Again 	00:01:02.395	00:01:04.164	16.mp3
6259	unh	1	See You Again 	00:01:04.164	00:01:05.364	17.mp3
6260	how could we not talk about family	7	See You Again 	00:01:05.364	00:01:07.199	18.mp3
6261	when family's all that we got?	6	See You Again 	00:01:07.200	00:01:09.102	19.mp3
6262	everything i went through	4	See You Again 	00:01:09.102	00:01:10.236	20.mp3
6263	you were standing there by my side	7	See You Again 	00:01:10.236	00:01:11.938	21.mp3
6264	and now you gon' be with me for the last ride	11	See You Again 	00:01:11.938	00:01:14.207	22.mp3
6265	it's been a long day without you, my friend	9	See You Again 	00:01:14.206	00:01:20.612	23.mp3
6266	and i'll tell you all about it when i see you again	12	See You Again 	00:01:20.612	00:01:25.551	24.mp3
6267	i'll see you again.	4	See You Again 	00:01:25.552	00:01:26.786	25.mp3
6268	we've come a long way	5	See You Again 	00:01:26.786	00:01:29.189	26.mp3
6269	came a long way.	4	See You Again 	00:01:29.188	00:01:32.458	27.mp3
6270	from where we began	4	See You Again 	00:01:29.188	00:01:32.458	28.mp3
6271	oh, i'll tell you all about it when i see you again	12	See You Again 	00:01:32.459	00:01:37.764	29.mp3
6272	let me tell you.	4	See You Again 	00:01:37.763	00:01:40.833	30.mp3
6273	when i see you again	5	See You Again 	00:01:37.763	00:01:40.833	31.mp3
6274	oh, oh, oh, oh	4	See You Again 	00:01:40.834	00:01:44.137	32.mp3
6275	oh, oh, oh, oh-oh-oh-oh	4	See You Again 	00:01:44.137	00:01:47.140	33.mp3
6276	ooh-ooh-ooh-ooh, ooh-ooh	2	See You Again 	00:01:47.140	00:01:49.141	34.mp3
6277	ooh-ooh, ooh-ooh, ooh-ooh-ooh-ooh	3	See You Again 	00:01:49.141	00:01:51.009	35.mp3
6278	ooh-ooh, ooh-ooh-ooh	2	See You Again 	00:01:51.010	00:01:53.780	36.mp3
6279	[ rapping ] first, you both go out your way	10	See You Again 	00:01:56.582	00:01:58.117	37.mp3
6280	and the vibe is feeling strong	6	See You Again 	00:01:58.117	00:01:59.818	38.mp3
6281	and what's small turned to a friendship	7	See You Again 	00:01:59.819	00:02:01.320	39.mp3
6282	a friendship turned to a bond	6	See You Again 	00:02:01.320	00:02:02.655	40.mp3
6283	and that bond will never be broken	7	See You Again 	00:02:02.655	00:02:04.356	41.mp3
6284	the love will never get lost	6	See You Again 	00:02:04.356	00:02:05.724	42.mp3
6285	and the love will never get lost	7	See You Again 	00:02:05.724	00:02:08.561	43.mp3
6286	and when brotherhood come first	5	See You Again 	00:02:08.561	00:02:10.129	44.mp3
6287	then the line will never be crossed	7	See You Again 	00:02:10.129	00:02:11.798	45.mp3
6288	established it on our own	5	See You Again 	00:02:11.798	00:02:13.399	46.mp3
6289	when that line had to be drawn	7	See You Again 	00:02:13.399	00:02:14.734	47.mp3
6290	and that line is what we reached	7	See You Again 	00:02:14.734	00:02:16.201	48.mp3
6291	so remember me when i'm gone	6	See You Again 	00:02:16.201	00:02:18.003	49.mp3
6292	remember me when i'm gone	5	See You Again 	00:02:18.003	00:02:19.538	50.mp3
6293	how could we not talk about family	7	See You Again 	00:02:20.340	00:02:22.175	51.mp3
6294	when family's all that we got?	6	See You Again 	00:02:22.175	00:02:23.743	52.mp3
6295	everything i went through	4	See You Again 	00:02:23.742	00:02:25.078	53.mp3
6296	you were standing there by my side	7	See You Again 	00:02:25.078	00:02:27.045	54.mp3
6297	and now you gon' be with me for the last ride	11	See You Again 	00:02:27.045	00:02:29.382	55.mp3
6298	let the light guide your way	6	See You Again 	00:02:29.382	00:02:34.052	56.mp3
6299	yeah	1	See You Again 	00:02:35.155	00:02:36.455	57.mp3
6300	hold every memory as you go	6	See You Again 	00:02:36.455	00:02:40.159	58.mp3
6301	and every road you take	5	See You Again 	00:02:41.627	00:02:44.763	59.mp3
6302	will always lead you home	5	See You Again 	00:02:44.764	00:02:49.736	60.mp3
6303	home	1	See You Again 	00:02:49.735	00:02:53.105	61.mp3
6304	it's been a long day without you, my friend	9	See You Again 	00:02:53.105	00:02:59.512	62.mp3
6305	and i'll tell you all about it when i see you again	12	See You Again 	00:02:59.512	00:03:05.752	63.mp3
6306	we've come a long way from where we began	9	See You Again 	00:03:05.752	00:03:11.424	64.mp3
6307	oh, i'll tell you all about it when i see you again	12	See You Again 	00:03:11.424	00:03:17.197	65.mp3
6308	when i see you again	5	See You Again 	00:03:17.197	00:03:20.633	66.mp3
6309	oh, oh, oh, oh	4	See You Again 	00:03:20.633	00:03:23.469	67.mp3
6310	oh, oh, oh, oh-oh-oh-oh	4	See You Again 	00:03:23.468	00:03:26.406	68.mp3
6311	ooh-ooh-ooh-ooh, ooh-ooh	2	See You Again 	00:03:26.406	00:03:27.706	69.mp3
6312	ooh-ooh, ooh-ooh, ooh-ooh-ooh-ooh	3	See You Again 	00:03:27.706	00:03:29.608	70.mp3
6313	ooh-ooh, ooh-ooh-ooh	2	See You Again 	00:03:29.609	00:03:31.978	71.mp3
6314	when i see you again	5	See You Again 	00:03:29.609	00:03:31.978	72.mp3
6315	see you again	3	See You Again 	00:03:31.978	00:03:33.213	73.mp3
6316	oh, oh, oh, oh	4	See You Again 	00:03:33.212	00:03:35.514	74.mp3
6317	oh, oh, oh, oh-oh-oh	4	See You Again 	00:03:35.514	00:03:38.450	75.mp3
6318	ooh-ooh-ooh-ooh, ooh-ooh	2	See You Again 	00:03:38.450	00:03:39.718	76.mp3
6319	ooh-ooh, ooh-ooh, ooh-ooh-ooh-ooh	3	See You Again 	00:03:39.718	00:03:41.820	77.mp3
6320	ooh-ooh, ooh-ooh-ooh	2	See You Again 	00:03:41.820	00:03:44.424	78.mp3
6321	when i see you again	5	See You Again 	00:03:41.820	00:03:44.424	79.mp3
6322	[song: hey brother by avicii]	5	Hey Brother	00:00:00.422	00:00:02.162	﻿1.mp3
6323	hey brother	2	Hey Brother	00:00:04.179	00:00:07.367	2.mp3
6324	there's an endless road to re-discover	6	Hey Brother	00:00:07.562	00:00:12.437	3.mp3
6325	hey sister	2	Hey Brother	00:00:12.859	00:00:15.945	4.mp3
6326	know the water's sweet but blood is thicker	8	Hey Brother	00:00:16.226	00:00:20.913	5.mp3
6327	oh, if the sky comes falling down,	7	Hey Brother	00:00:21.501	00:00:26.769	6.mp3
6328	for you	2	Hey Brother	00:00:27.000	00:00:28.687	7.mp3
6329	there's nothing in this world i wouldn't do	8	Hey Brother	00:00:28.929	00:00:32.941	8.mp3
6330	hey brother	2	Hey Brother	00:00:34.916	00:00:38.094	9.mp3
6331	do you still believe in one another?	7	Hey Brother	00:00:38.346	00:00:43.065	10.mp3
6332	hey sister	2	Hey Brother	00:00:43.565	00:00:46.971	11.mp3
6333	do you still believe in love i wonder	8	Hey Brother	00:00:46.992	00:00:51.763	12.mp3
6334	if the sky comes falling down	6	Hey Brother	00:00:52.244	00:00:57.533	13.mp3
6335	for you	2	Hey Brother	00:00:57.644	00:00:59.535	14.mp3
6336	there's nothing in this world i wouldn't do	8	Hey Brother	00:00:59.636	00:01:03.595	15.mp3
6337	what if i'm far from home	6	Hey Brother	00:01:06.948	00:01:10.319	16.mp3
6338	oh brother, i will hear you call	7	Hey Brother	00:01:10.320	00:01:13.301	17.mp3
6339	what if i lose it all	6	Hey Brother	00:01:13.582	00:01:16.824	18.mp3
6340	oh sister, i will help you out	7	Hey Brother	00:01:16.953	00:01:19.188	19.mp3
6341	oh, if the sky comes	5	Hey Brother	00:01:19.189	00:01:24.407	20.mp3
6342	for you	2	Hey Brother	00:01:24.540	00:01:26.405	21.mp3
6343	there's nothing in this world i wouldn't do	8	Hey Brother	00:01:26.501	00:01:30.138	22.mp3
6344	hey brother,	2	Hey Brother	00:02:22.457	00:02:25.675	24.mp3
6345	there's an endless road to re-discover	6	Hey Brother	00:02:25.874	00:02:30.532	25.mp3
6346	hey sister,	2	Hey Brother	00:02:31.085	00:02:34.219	26.mp3
6347	do you still believe in love, i wonder	8	Hey Brother	00:02:34.499	00:02:39.280	27.mp3
6348	oh, if the sky comes falling down	7	Hey Brother	00:02:39.766	00:02:45.030	28.mp3
6349	for you	2	Hey Brother	00:02:45.241	00:02:46.922	29.mp3
6350	there's nothing in this world i wouldn't do	8	Hey Brother	00:02:46.991	00:02:50.983	30.mp3
6351	what if i'm far from home?	6	Hey Brother	00:02:54.444	00:02:57.639	31.mp3
6352	oh brother, i will hear you call	7	Hey Brother	00:02:57.695	00:03:00.529	32.mp3
6353	what if i lose it all	6	Hey Brother	00:03:01.076	00:03:04.335	33.mp3
6354	oh sister, i will help you out	7	Hey Brother	00:03:04.336	00:03:06.749	34.mp3
6355	oh, if the sky comes falling down,	7	Hey Brother	00:03:06.750	00:03:11.881	35.mp3
6356	for you	2	Hey Brother	00:03:12.088	00:03:13.851	36.mp3
6357	there's nothing in this world i wouldn't do	8	Hey Brother	00:03:14.031	00:03:17.856	37.mp3
6358	tell me another story.	4	Hey Brother	00:03:39.575	00:03:41.015	38.mp3
6359	i think it's time for you to tell me a story	11	Hey Brother	00:03:42.234	00:03:45.114	39.mp3
6360	why do you have to go, dad	7	Hey Brother	00:03:51.702	00:03:53.443	40.mp3
6361	i promise i'll be back in no time.	8	Hey Brother	00:03:53.976	00:03:56.256	41.mp3
6362	the end	2	Hey Brother	00:04:13.518	00:04:15.018	42.mp3
6363	eminem-rapgod	1	Rap God	00:00:00.000	00:00:01.000	﻿1.mp3
6364	look, i was gonna go easy on you and not to hurt your feelings	14	Rap God	00:00:01.075	00:00:04.536	2.mp3
6365	but i'm only going to get this one chance	9	Rap God	00:00:04.761	00:00:08.427	3.mp3
6366	something's wrong, i can feel it	6	Rap God	00:00:09.160	00:00:11.503	4.mp3
6367	just a feeling i've got, like something's about to happen, but i don't know what	15	Rap God	00:00:11.515	00:00:17.421	5.mp3
6368	if that means, what i think it means, we're in trouble	11	Rap God	00:00:17.592	00:00:20.181	6.mp3
6369	and if he is as bananas as you say, i'm not taking any chances	14	Rap God	00:00:21.047	00:00:24.282	7.mp3
6370	bigtrouble	1	Rap God	00:00:20.292	00:00:21.042	8.mp3
6371	you were just what the doctor ordered	7	Rap God	00:00:24.328	00:00:25.683	9.mp3
6372	i'm beginning to feel like a rap god, rap god	10	Rap God	00:00:25.728	00:00:28.972	10.mp3
6373	all my people from the front to the back nod, back nod	12	Rap God	00:00:28.977	00:00:31.972	11.mp3
6374	now who thinks their arms are long enough to slapbox, slapbox?	11	Rap God	00:00:31.983	00:00:35.302	12.mp3
6375	they said i rap like a robot, so call me rapbot	11	Rap God	00:00:35.316	00:00:37.661	13.mp3
6376	but for me to rap like a computer must be in my genes	13	Rap God	00:00:37.661	00:00:39.807	14.mp3
6377	i got a laptop in my back pocket	8	Rap God	00:00:39.816	00:00:41.588	15.mp3
6378	my pen'll go off when i half-cock it	8	Rap God	00:00:41.593	00:00:43.416	16.mp3
6379	got a fat knot from that rap profit	8	Rap God	00:00:43.421	00:00:44.833	17.mp3
6380	made a living and a killing off it	8	Rap God	00:00:44.844	00:00:46.222	18.mp3
6381	ever since bill clinton was still in office	8	Rap God	00:00:46.226	00:00:47.967	19.mp3
6382	with monica lewinsky feeling on his nut-sack	7	Rap God	00:00:47.980	00:00:49.946	20.mp3
6383	i'm an mc still as honest	6	Rap God	00:00:49.946	00:00:51.231	21.mp3
6384	but as rude and as indecent as all hell	9	Rap God	00:00:51.237	00:00:52.748	22.mp3
6385	syllables, killaholic (kill 'em all with)	6	Rap God	00:00:52.752	00:00:54.577	23.mp3
6386	this slickety, gibbedy, hibbedy hip-hop	5	Rap God	00:00:54.589	00:00:55.817	24.mp3
6387	you don't really wanna get into a pissing match with this rappidy rap	13	Rap God	00:00:55.820	00:00:57.736	25.mp3
6388	packing a mac in the back of the ac, backpack rap crap, yep, yep, yackity-yak	15	Rap God	00:00:57.737	00:01:01.257	26.mp3
6389	now at the exact same time	6	Rap God	00:01:01.261	00:01:02.387	27.mp3
6390	i attempt these lyrical acrobat stunts while i'm practicing that	10	Rap God	00:01:02.400	00:01:04.477	28.mp3
6391	i'll still be able to break a motherfuckin' table	9	Rap God	00:01:04.496	00:01:05.866	29.mp3
6392	0ver the back 0f a c0uple 0f fagg0ts and crack it in half	13	Rap God	00:01:05.871	00:01:07.646	30.mp3
6393	0nly realized it was ir0nic i was signed t0 aftermath after the fact	13	Rap God	00:01:07.661	00:01:10.976	31.mp3
6394	how could i not blow? all i do is drop f-bombs, feel my wrath of attack	16	Rap God	00:01:10.987	00:01:14.032	32.mp3
6395	rappers are having a rough time period, here's a maxipad	10	Rap God	00:01:14.039	00:01:16.598	33.mp3
6396	it's actually disastrously bad for the wack	7	Rap God	00:01:16.612	00:01:20.996	34.mp3
6397	i'm beginning to feel like a rap god, rap god	10	Rap God	00:01:21.007	00:01:24.251	35.mp3
6398	all my people from the front to the back nod, back nod	12	Rap God	00:01:24.256	00:01:27.251	36.mp3
6399	now who thinks their arms are long enough to slapbox, slapbox?	11	Rap God	00:01:27.257	00:01:30.576	37.mp3
6400	let me show you maintaining this shit ain't that hard, that hard	12	Rap God	00:01:30.581	00:01:33.752	38.mp3
6401	everybody want the key and the secret to rap immortality like i have got	14	Rap God	00:01:33.760	00:01:37.012	39.mp3
6402	well, to be truthful the blueprint's simply rage and youthful exuberance	11	Rap God	00:01:37.021	00:01:39.731	40.mp3
6403	everybody loves to root for a nuisance	7	Rap God	00:01:39.737	00:01:41.061	41.mp3
6404	hit the earth like an asteroid, did nothing but shoot for the moon since	14	Rap God	00:01:41.069	00:01:43.981	42.mp3
6405	mc's get taken to school with this music	8	Rap God	00:01:44.139	00:01:46.059	43.mp3
6406	cause i use it as a vehicle to bust a rhyme	11	Rap God	00:01:46.059	00:01:47.907	44.mp3
6407	now i lead a new school full of students	9	Rap God	00:01:47.917	00:01:49.612	45.mp3
6408	me? i'm a product of rakim, lakim shabazz, 2pac n-	10	Rap God	00:01:49.639	00:01:52.471	46.mp3
6409	-w.a, cube, hey d0c, ren, yella, eazy, thank y0u, they g0t slim	12	Rap God	00:01:52.480	00:01:55.942	47.mp3
6410	inspired enough to one day grow up, blow up and be in a position	14	Rap God	00:01:55.960	00:01:59.046	48.mp3
6411	to meet run dmc, induct them, into the motherfuckin' rock n'	11	Rap God	00:01:59.053	00:02:02.457	49.mp3
6412	even though i walk in the church and burst in a ball of flames	14	Rap God	00:02:03.222	00:02:05.797	50.mp3
6413	roll hall of fame	4	Rap God	00:02:02.470	00:02:03.221	51.mp3
6414	0nly hall 0f fame i be inducted in is the alc0h0l 0f fame	13	Rap God	00:02:05.804	00:02:08.587	52.mp3
6415	you fags think it's all a game 'til i walk a flock of flames	14	Rap God	00:02:09.687	00:02:13.281	53.mp3
6416	0n the wall 0f shame	5	Rap God	00:02:08.603	00:02:09.677	54.mp3
6417	0ff a plank, and tell me what in the fuck are y0u thinking?	13	Rap God	00:02:13.282	00:02:15.887	55.mp3
6418	so gay i can barely say it with a straight face looking boy	13	Rap God	00:02:16.908	00:02:19.240	56.mp3
6419	little gay looking boy	4	Rap God	00:02:15.892	00:02:16.902	57.mp3
6420	like you watching a church gathering take place looking boy	10	Rap God	00:02:20.325	00:02:22.955	58.mp3
6421	you witnessing a massacre	4	Rap God	00:02:19.245	00:02:20.321	59.mp3
6422	0y vey, that b0y's gay, that's all they say l00king b0y	11	Rap God	00:02:22.978	00:02:25.672	60.mp3
6423	you get a thumbs up, pat on the back	9	Rap God	00:02:25.674	00:02:27.132	61.mp3
6424	and a way to go from your label everyday looking boy	11	Rap God	00:02:27.142	00:02:29.272	62.mp3
6425	hey, looking boy, what you say looking boy?	8	Rap God	00:02:29.283	00:02:30.641	63.mp3
6426	i get a "hell yeah" from dre looking boy	9	Rap God	00:02:30.658	00:02:32.341	64.mp3
6427	i'mma work for everything i have	6	Rap God	00:02:32.344	00:02:33.536	65.mp3
6428	never ask nobody for shit, get outta my face looking boy	11	Rap God	00:02:33.548	00:02:35.572	66.mp3
6429	basically boy you're never gonna be capable	7	Rap God	00:02:35.577	00:02:37.135	67.mp3
6430	to keeping up with the same pace looking boy	9	Rap God	00:02:37.135	00:02:38.912	68.mp3
6431	i'm beginning to feel like a rap god, rap god	10	Rap God	00:02:38.920	00:02:41.954	69.mp3
6432	all my people from the front to the back nod, back nod	12	Rap God	00:02:41.964	00:02:44.949	70.mp3
6433	the way i'm racing around the track, call me nascar, nascar	11	Rap God	00:02:44.960	00:02:48.301	71.mp3
6434	dale earnhardt of the trailer park, the white trash god	10	Rap God	00:02:48.314	00:02:50.980	72.mp3
6435	kneel before general zod this planet's krypton, no asgard, asgard	10	Rap God	00:02:50.981	00:02:54.827	73.mp3
6436	so you be thor and i'll be odin,	8	Rap God	00:02:54.856	00:02:56.672	74.mp3
6437	you rodent, i'm omnipotent	4	Rap God	00:02:56.680	00:02:58.527	75.mp3
6438	let off then i'm reloading	5	Rap God	00:02:58.534	00:02:59.926	76.mp3
6439	immediately with these bombs i'm totin'	6	Rap God	00:02:59.938	00:03:01.722	77.mp3
6440	and i should not be woken	6	Rap God	00:03:01.728	00:03:03.327	78.mp3
6441	i'm the walking dead, but i'm just a talking head, a zombie floating	13	Rap God	00:03:03.332	00:03:06.596	79.mp3
6442	but i got your mom deep throating	7	Rap God	00:03:06.599	00:03:08.217	80.mp3
6443	i'm out my ramen noodle, we have nothing in common, poodle	11	Rap God	00:03:08.222	00:03:11.303	81.mp3
6444	i'm a doberman, pinch yourself in the arm and pay homage, pupil	12	Rap God	00:03:11.306	00:03:14.717	82.mp3
6445	it's me, my honesty's brutal	5	Rap God	00:03:14.732	00:03:17.217	83.mp3
6446	but it's honestly futile if i don't utilize what i do though	12	Rap God	00:03:17.222	00:03:20.393	84.mp3
6447	for good at least once in a while	8	Rap God	00:03:20.393	00:03:21.517	85.mp3
6448	so i wanna make sure somewhere in this chicken scratch i scribble and doodle	14	Rap God	00:03:21.522	00:03:24.101	86.mp3
6449	enough rhymes to maybe try to help get some people through tough times	13	Rap God	00:03:24.122	00:03:27.297	87.mp3
6450	but i gotta keep a few punchlines just in case cause even you unsigned	14	Rap God	00:03:27.303	00:03:30.267	88.mp3
6451	rappers are hungry looking at me like it's lunchtime	9	Rap God	00:03:30.288	00:03:32.872	89.mp3
6452	i know there was a time where once i	9	Rap God	00:03:32.878	00:03:34.522	90.mp3
6453	was king of the underground, but i still rap like i'm on my pharoahe monch grind	16	Rap God	00:03:34.532	00:03:37.702	91.mp3
6454	so i crunch rhymes, but sometimes when you combine	9	Rap God	00:03:37.710	00:03:40.212	92.mp3
6455	appeal with the skin color of mine	7	Rap God	00:03:40.229	00:03:41.767	93.mp3
6456	you get too big and here they come trying to	10	Rap God	00:03:41.769	00:03:43.683	94.mp3
6457	censor you, like that one line	6	Rap God	00:03:43.691	00:03:45.037	95.mp3
6458	i said on "i'm back" from the mathers lp1.	9	Rap God	00:03:45.040	00:03:47.542	96.mp3
6459	tried to say i take seven kids from columbine	9	Rap God	00:03:47.552	00:03:49.942	97.mp3
6460	put 'em all in a line, add an ak-47, a revolver and a nine	14	Rap God	00:03:49.951	00:03:53.542	98.mp3
6461	see if i get away with it now that i ain't as big as i was.	16	Rap God	00:03:53.577	00:03:56.857	99.mp3
6462	morphed into an immortal coming through the portal	8	Rap God	00:03:56.882	00:03:59.406	100.mp3
6463	you're stuck in a timewarp from 2oo4 though	8	Rap God	00:03:59.406	00:04:01.730	101.mp3
6464	and i don't know what the fuck that you rhyme for	11	Rap God	00:04:01.737	00:04:03.657	102.mp3
6465	you're pointless as rapunzel with fucking cornrows	7	Rap God	00:04:03.674	00:04:06.498	103.mp3
6466	you're like normal, fuck being normal	6	Rap God	00:04:06.504	00:04:08.331	104.mp3
6467	and i just bought a new raygun from the future	10	Rap God	00:04:08.357	00:04:10.192	105.mp3
6468	to just come and shoot ya like when fabolous made ray j mad	13	Rap God	00:04:10.196	00:04:12.797	106.mp3
6469	cause fab said he looked like a fag at mayweather’s pad	11	Rap God	00:04:12.812	00:04:14.567	107.mp3
6470	singin' to a man while they played piano	8	Rap God	00:04:14.590	00:04:16.305	108.mp3
6471	man, oh man, that was a 24/7 special on the cable channel	12	Rap God	00:04:16.319	00:04:19.447	109.mp3
6472	so ray j went straight to the radio station the very next day	13	Rap God	00:04:19.448	00:04:21.930	110.mp3
6473	''hey, fab, i'mma kill y0u''	5	Rap God	00:04:21.934	00:04:23.252	111.mp3
6474	lyrics coming at you at supersonic speed, (jj fad)	9	Rap God	00:04:23.252	00:04:25.767	112.mp3
6475	uh, sama lamaa, duma lamaa, you assuming, i'm a human	10	Rap God	00:04:25.790	00:04:27.532	113.mp3
6476	what i gotta do to get it through to you i'm superhuman	12	Rap God	00:04:27.537	00:04:29.142	114.mp3
6477	innovative and i'm made of rubber	6	Rap God	00:04:29.152	00:04:30.122	115.mp3
6478	so that anything you say is ricocheting off of me and it'll glue to you	15	Rap God	00:04:30.124	00:04:32.297	116.mp3
6479	i'm devastating, more than ever demonstrating	6	Rap God	00:04:32.308	00:04:33.542	117.mp3
6480	how to give a motherfuckin' audience a feeling like it's levitating	11	Rap God	00:04:33.547	00:04:35.522	118.mp3
6481	never fading, and i know that the haters are forever waiting	11	Rap God	00:04:35.536	00:04:37.123	119.mp3
6482	for the day that they can say i fell off, they'd be celebrating	13	Rap God	00:04:37.126	00:04:38.767	120.mp3
6483	cause i know the way to get 'em motivated	9	Rap God	00:04:38.783	00:04:39.997	121.mp3
6484	i make elevating music, you make elevator music	8	Rap God	00:04:40.002	00:04:42.247	122.mp3
6485	0h, he's t00 mainstream	4	Rap God	00:04:42.254	00:04:43.412	123.mp3
6486	well, that's what they do when they get jealous, they confuse it	12	Rap God	00:04:43.413	00:04:45.477	124.mp3
6487	it's not hip hop, it's pop, cause i found a hella way to fuse it	15	Rap God	00:04:45.481	00:04:48.837	125.mp3
6488	with rock, shock rap with doc	6	Rap God	00:04:48.849	00:04:50.422	126.mp3
6489	throw on lose yourself and make 'em lose it	9	Rap God	00:04:50.438	00:04:51.985	127.mp3
6490	i don't know how to make songs like that	9	Rap God	00:04:51.993	00:04:53.427	128.mp3
6491	i don't know what words to use	7	Rap God	00:04:53.431	00:04:55.117	129.mp3
6492	let me know when it occurs to you	8	Rap God	00:04:55.125	00:04:56.262	130.mp3
6493	while i’m ripping any one of these verses, that versus you	11	Rap God	00:04:56.268	00:04:58.062	131.mp3
6494	it’s curtains, i’m inadvertently hurtin' you	6	Rap God	00:04:58.076	00:04:59.690	132.mp3
6495	how many verses i gotta murder to	7	Rap God	00:04:59.698	00:05:01.372	133.mp3
6496	prove that if you're half as nice at songs, you can sacrifice virgins to/too (ughhh)	15	Rap God	00:05:01.376	00:05:05.143	134.mp3
6497	school flunkie, pill junky	4	Rap God	00:05:05.148	00:05:07.022	135.mp3
6498	but look at the accolades the skills brung me	9	Rap God	00:05:07.025	00:05:09.318	136.mp3
6499	full of myself, but still hungry	6	Rap God	00:05:09.320	00:05:11.532	137.mp3
6500	i bully myself cause i make me do what i put my mind to	14	Rap God	00:05:11.541	00:05:14.320	138.mp3
6501	and i'm a million leagues above you, ill when i speak in tongues	13	Rap God	00:05:14.321	00:05:17.817	139.mp3
6502	but it's still tongue in cheek, fuck you	8	Rap God	00:05:17.828	00:05:19.602	140.mp3
6503	i'm drunk so satan take the fucking wheel, i'm asleep in the front seat	14	Rap God	00:05:19.609	00:05:22.937	141.mp3
6504	bumping heavy d and the boys, still chunky, but funky	10	Rap God	00:05:22.941	00:05:25.997	142.mp3
6505	but in my head there's something i can feel tugging and struggling	12	Rap God	00:05:25.999	00:05:29.412	143.mp3
6506	angels fight with devils and here's what they want from me	11	Rap God	00:05:29.414	00:05:32.952	144.mp3
6507	they asking me to eliminate some of the women hate	10	Rap God	00:05:32.958	00:05:34.942	145.mp3
6508	but if you take into consideration the bitter hatred that i had	12	Rap God	00:05:34.948	00:05:37.022	146.mp3
6509	then you may be a little patient and more sympathetic to the situation	13	Rap God	00:05:37.022	00:05:39.758	147.mp3
6510	and understand the discrimination	4	Rap God	00:05:39.768	00:05:41.429	148.mp3
6511	but fuck it, life's handing you lemons, make lemonade then	10	Rap God	00:05:41.918	00:05:44.697	149.mp3
6512	but if i can't batter the women	7	Rap God	00:05:44.985	00:05:46.102	150.mp3
6513	how the fuck am i supposed to bake them a cake then?	12	Rap God	00:05:46.108	00:05:48.227	151.mp3
6514	don't mistake it for satan	5	Rap God	00:05:48.412	00:05:49.425	152.mp3
6515	it's a fatal mistake if you think i need to be overseas	12	Rap God	00:05:49.427	00:05:51.537	153.mp3
6516	and take a vacation to trip abroad	7	Rap God	00:05:51.540	00:05:53.702	154.mp3
6517	and make her fall on her face and don't be a retard	12	Rap God	00:05:53.727	00:05:56.348	155.mp3
6518	be a king? think not	5	Rap God	00:05:56.361	00:05:57.757	156.mp3
6519	why be a king when you can be a god	10	Rap God	00:05:57.758	00:06:00.770	157.mp3
6520	i used to bite my tongue and hold my breath scared to rock the boat and make a mess	19	Roar	00:00:19.500	00:00:24.699	1.mp3
6521	so i sat quietly, agreed politely	6	Roar	00:00:24.699	00:00:30.000	2.mp3
6522	i guess that i forgot i had a choice i let you push me past the breaking point	18	Roar	00:00:30.000	00:00:35.399	3.mp3
6523	i stood for nothing, so i fell for everything	9	Roar	00:00:35.399	00:00:40.299	4.mp3
6524	you held me down, but i got up already brushing off the dust	13	Roar	00:00:47.000	00:00:52.000	5.mp3
6525	you hear my voice, you hear that sound like thunder, gonna shake your ground	14	Roar	00:00:52.000	00:00:57.799	6.mp3
6526	you held me down, but i got up get ready cause i've had enough	14	Roar	00:00:57.799	00:01:03.000	7.mp3
6527	i see it all, i see it now	8	Roar	00:01:03.000	00:01:06.000	8.mp3
6528	i got the eye of the tiger, a fighter,	9	Roar	00:01:06.000	00:01:10.500	9.mp3
6529	dancing through the fire 'cause i am a champion	9	Roar	00:01:10.500	00:01:16.000	10.mp3
6530	and you're gonna hear me roar louder, louder than a lion	11	Roar	00:01:16.000	00:01:24.000	11.mp3
6531	cause i am a champion	5	Roar	00:01:24.000	00:01:27.000	12.mp3
6532	and you're gonna hear me roar oh oh oh oh oh oh you're gonna hear me roar	17	Roar	00:01:27.000	00:01:42.000	13.mp3
6533	now i'm floating like a butterfly stinging like a bee i earned my stripes	14	Roar	00:01:43.299	00:01:48.700	14.mp3
6534	i went from zero, to my own hero	8	Roar	00:01:48.700	00:01:53.799	15.mp3
6535	you held me down, but i got up already brushing off the dust	13	Roar	00:01:53.799	00:01:59.000	16.mp3
6536	you hear my voice, your hear that sound like thunder, gonna shake your ground	14	Roar	00:01:59.000	00:02:04.000	17.mp3
6537	you held me down, but i got up get ready 'cause i've had enough	14	Roar	00:02:04.000	00:02:09.500	18.mp3
6538	i see it all, i see it now	8	Roar	00:02:09.500	00:02:12.500	19.mp3
6539	i got the eye of the tiger, a fighter,	9	Roar	00:02:12.500	00:02:17.000	20.mp3
6540	dancing through the fire 'cause i am a champion	9	Roar	00:02:17.000	00:02:22.500	21.mp3
6541	and you're gonna hear me roar louder, louder than a lion	11	Roar	00:02:22.500	00:02:30.500	22.mp3
6542	'cause i am a champion	5	Roar	00:02:30.500	00:02:33.500	23.mp3
6543	and you're gonna hear me roar oh oh oh oh oh oh you're gonna hear me roar oh oh oh oh oh oh	23	Roar	00:02:33.500	00:02:55.000	24.mp3
6544	you're on the phone with your girlfriend, she's upset	9	You Belong With Me	00:00:07.166	00:00:11.333	1.mp3
6545	she's going off about something that you said	8	You Belong With Me	00:00:11.365	00:00:14.865	2.mp3
6546	cause she doesn't get your humor like i do	9	You Belong With Me	00:00:14.900	00:00:21.566	3.mp3
6547	i'm in the room, it's a typical tuesday night	9	You Belong With Me	00:00:21.600	00:00:25.865	4.mp3
6548	i'm listening to the kind of music she doesn't like	10	You Belong With Me	00:00:25.899	00:00:29.765	5.mp3
6549	and she'll never know your story like i do	9	You Belong With Me	00:00:29.800	00:00:35.966	6.mp3
6550	but she wears short skirts, i wear t-shirts	8	You Belong With Me	00:00:36.000	00:00:40.332	7.mp3
6551	she's cheer captain and i'm on the bleachers	8	You Belong With Me	00:00:40.365	00:00:44.033	8.mp3
6552	dreaming about the day when you wake up and find	10	You Belong With Me	00:00:44.066	00:00:47.233	9.mp3
6553	that what you're looking for has been here the whole time	11	You Belong With Me	00:00:47.265	00:00:50.765	10.mp3
6554	if you could see that i'm the one who understands you	11	You Belong With Me	00:00:50.799	00:00:55.099	11.mp3
6555	been here all along, so why can't you see?	9	You Belong With Me	00:00:55.133	00:01:00.566	12.mp3
6556	you, you belong with me, you belong with me	9	You Belong With Me	00:01:00.600	00:01:09.700	13.mp3
6557	walking the streets with you and your worn-out jeans	9	You Belong With Me	00:01:09.733	00:01:14.000	14.mp3
6558	i can't help thinking this is how it ought to be	11	You Belong With Me	00:01:14.033	00:01:17.799	15.mp3
6559	laughing on a park bench, thinking to myself	8	You Belong With Me	00:01:17.832	00:01:21.500	16.mp3
6560	hey, isn't this easy?	4	You Belong With Me	00:01:21.533	00:01:24.000	17.mp3
6561	and you've got a smile that could light up this whole town	12	You Belong With Me	00:01:24.033	00:01:28.632	18.mp3
6562	i haven't seen it in a while since she brought you down	12	You Belong With Me	00:01:28.665	00:01:32.500	19.mp3
6563	you say you're fine, i know you better than that	10	You Belong With Me	00:01:32.533	00:01:35.966	20.mp3
6564	hey, what ya doing with a girl like that?	9	You Belong With Me	00:01:36.000	00:01:39.200	21.mp3
6565	she wears high heels, i wear sneakers	7	You Belong With Me	00:01:39.233	00:01:43.200	22.mp3
6566	she's cheer captain and i'm on the bleachers	8	You Belong With Me	00:01:43.233	00:01:47.033	23.mp3
6567	dreaming about the day when you wake up and find	10	You Belong With Me	00:01:47.066	00:01:49.933	24.mp3
6568	that what you're looking for has been here the whole time	11	You Belong With Me	00:01:49.965	00:01:53.632	25.mp3
6569	if you could see that i'm the one who understands you	11	You Belong With Me	00:01:53.665	00:01:57.533	26.mp3
6570	been here all along, so why can't you see?	9	You Belong With Me	00:01:57.566	00:02:04.100	27.mp3
6571	you belong with me	4	You Belong With Me	00:02:04.132	00:02:08.532	28.mp3
6572	standing by and waiting at your back door	8	You Belong With Me	00:02:08.566	00:02:12.800	29.mp3
6573	all this time how could you not know	8	You Belong With Me	00:02:12.832	00:02:16.032	30.mp3
6574	baby, you belong with me, you belong with me	9	You Belong With Me	00:02:16.066	00:02:27.366	31.mp3
6575	oh, i remember you driving to my house in the middle of the night	14	You Belong With Me	00:02:36.199	00:02:41.500	32.mp3
6576	i'm the one who makes you laugh	7	You Belong With Me	00:02:41.532	00:02:43.332	33.mp3
6577	when you know you're 'bout to cry	7	You Belong With Me	00:02:43.366	00:02:45.600	34.mp3
6578	and i know your favorite songs you tell me 'bout your dreams	12	You Belong With Me	00:02:45.633	00:02:49.233	35.mp3
6579	think i know where you belong, think i know it's with me	12	You Belong With Me	00:02:49.265	00:02:54.799	36.mp3
6580	can't you see that i'm the one who understands you	10	You Belong With Me	00:02:54.832	00:02:58.699	37.mp3
6581	been here all along, so why can't you see?	9	You Belong With Me	00:02:58.733	00:03:04.800	38.mp3
6582	you belong with me	4	You Belong With Me	00:03:04.832	00:03:09.365	39.mp3
6583	standing by and waiting at your back door	8	You Belong With Me	00:03:09.400	00:03:13.133	40.mp3
6584	all this time how could you not know	8	You Belong With Me	00:03:13.165	00:03:16.832	41.mp3
6585	baby, you belong with me, you belong with me	9	You Belong With Me	00:03:16.866	00:03:26.666	42.mp3
6586	you belong with me	4	You Belong With Me	00:03:26.699	00:03:29.632	43.mp3
6587	have you ever thought just maybe	6	You Belong With Me	00:03:29.665	00:03:34.599	44.mp3
6588	you belong with me	4	You Belong With Me	00:03:34.633	00:03:38.033	45.mp3
6589	you belong with me	4	You Belong With Me	00:03:38.066	00:03:42.832	46.mp3
6590	katy perry - migo	4	Bon Appétit	00:00:31.000	00:00:34.000	2.mp3
6591	'cause i'm all that you want, boy	7	Bon Appétit	00:00:34.033	00:00:36.166	3.mp3
6592	all that you can have, boy	6	Bon Appétit	00:00:36.200	00:00:38.432	4.mp3
6593	got me spread like a buffet	6	Bon Appétit	00:00:38.466	00:00:40.133	5.mp3
6594	bon app, bon appetit, baby	5	Bon Appétit	00:00:40.165	00:00:43.132	6.mp3
6595	appetite for seduction	3	Bon Appétit	00:00:43.165	00:00:45.265	7.mp3
6596	fresh out the oven	4	Bon Appétit	00:00:45.299	00:00:46.665	8.mp3
6597	melt in your mouth kind of lovin'	7	Bon Appétit	00:00:46.700	00:00:49.200	9.mp3
6598	bon app, bon appetit, baby	5	Bon Appétit	00:00:49.232	00:00:51.699	10.mp3
6599	looks like you've been starving	5	Bon Appétit	00:00:53.265	00:00:55.500	11.mp3
6600	you got those hungry eyes	5	Bon Appétit	00:00:55.533	00:00:57.633	12.mp3
6601	you cold use some sugar	5	Bon Appétit	00:00:57.665	00:00:59.765	13.mp3
6602	cause ya levels ain't right	5	Bon Appétit	00:01:00.000	00:01:02.133	14.mp3
6603	i'm a 5-star michelin	4	Bon Appétit	00:01:02.165	00:01:04.265	15.mp3
6604	a kobe flown in	4	Bon Appétit	00:01:04.299	00:01:06.700	16.mp3
6605	you want what i'm cooking, boy	6	Bon Appétit	00:01:06.733	00:01:09.700	17.mp3
6606	let me take you	4	Bon Appétit	00:01:09.733	00:01:10.733	18.mp3
6607	under candle light	3	Bon Appétit	00:01:10.766	00:01:13.100	19.mp3
6608	we can wine and dine	5	Bon Appétit	00:01:13.132	00:01:15.232	20.mp3
6609	a table for two	4	Bon Appétit	00:01:15.266	00:01:18.666	21.mp3
6610	and it's okay	3	Bon Appétit	00:01:18.700	00:01:19.733	22.mp3
6611	if you take your time	5	Bon Appétit	00:01:19.766	00:01:22.033	23.mp3
6612	eat with your hands, fine	5	Bon Appétit	00:01:22.066	00:01:24.233	24.mp3
6613	i'm on the menu	4	Bon Appétit	00:01:24.266	00:01:28.233	25.mp3
6614	'cause i'm all that you want, boy	7	Bon Appétit	00:01:28.266	00:01:30.566	26.mp3
6615	all that you can have, boy	6	Bon Appétit	00:01:30.599	00:01:32.699	27.mp3
6616	got me spread like a buffet	6	Bon Appétit	00:01:32.733	00:01:34.533	28.mp3
6617	bon app, bon appetit, baby	5	Bon Appétit	00:01:34.566	00:01:37.233	29.mp3
6618	appetite for seduction	3	Bon Appétit	00:01:37.266	00:01:39.666	30.mp3
6619	fresh out the oven	4	Bon Appétit	00:01:39.700	00:01:41.233	31.mp3
6620	melt in your mouth kind of lovin'	7	Bon Appétit	00:01:41.266	00:01:43.600	32.mp3
6621	bon app, bon appetit, baby	5	Bon Appétit	00:01:43.632	00:01:46.165	33.mp3
6622	so you want some more	5	Bon Appétit	00:01:47.332	00:01:49.599	34.mp3
6623	well, i'm open 24	4	Bon Appétit	00:01:49.632	00:01:51.665	35.mp3
6624	wanna keep you satisfied	4	Bon Appétit	00:01:51.700	00:01:54.133	36.mp3
6625	customer's always right	3	Bon Appétit	00:01:54.165	00:01:56.533	37.mp3
6626	hope you got some room	5	Bon Appétit	00:01:56.566	00:01:58.600	38.mp3
6627	for the world's best cherry pie	6	Bon Appétit	00:01:58.632	00:02:00.765	39.mp3
6628	gonna hit that sweet tooth, boy	6	Bon Appétit	00:02:01.000	00:02:04.033	40.mp3
6629	let me take you	4	Bon Appétit	00:02:04.066	00:02:04.733	41.mp3
6630	under candle light	3	Bon Appétit	00:02:04.766	00:02:07.266	42.mp3
6631	we can wine and dine	5	Bon Appétit	00:02:07.299	00:02:09.566	43.mp3
6632	a table for two	4	Bon Appétit	00:02:09.599	00:02:13.000	44.mp3
6633	and it's okay	3	Bon Appétit	00:02:13.032	00:02:14.000	45.mp3
6634	if you take your time	5	Bon Appétit	00:02:14.032	00:02:16.265	46.mp3
6635	eat with your hands, fine	5	Bon Appétit	00:02:16.300	00:02:18.300	47.mp3
6636	i'm on the menu	4	Bon Appétit	00:02:18.332	00:02:22.332	48.mp3
6637	'cause i'm all that you want, boy	7	Bon Appétit	00:02:22.366	00:02:24.700	49.mp3
6638	all that you can have, boy	6	Bon Appétit	00:02:24.733	00:02:27.000	50.mp3
6639	got me spread like a buffet	6	Bon Appétit	00:02:27.032	00:02:28.699	51.mp3
6640	bon app, bon appetit, baby	5	Bon Appétit	00:02:28.733	00:02:31.765	52.mp3
6641	appetite for seduction	3	Bon Appétit	00:02:32.000	00:02:33.199	53.mp3
6642	fresh out the oven	4	Bon Appétit	00:02:34.099	00:02:35.632	54.mp3
6643	melt in your mouth kind of lovin'.	7	Bon Appétit	00:02:35.665	00:02:37.765	55.mp3
6644	bon app, bon appetit, baby	5	Bon Appétit	00:02:38.000	00:02:40.532	56.mp3
6645	'cause i'm all that you want, boy	7	Bon Appétit	00:02:40.566	00:02:43.033	57.mp3
6646	all that you can have, boy	6	Bon Appétit	00:02:43.066	00:02:45.099	58.mp3
6647	got me spread like a buffet	6	Bon Appétit	00:02:45.133	00:02:46.700	59.mp3
6648	bon app, bon appetit, baby	5	Bon Appétit	00:02:46.733	00:02:49.700	60.mp3
6649	appetite for seduction	3	Bon Appétit	00:02:49.733	00:02:52.033	61.mp3
6650	fresh out the oven	4	Bon Appétit	00:02:52.066	00:02:53.733	62.mp3
6651	melt in your mouth kind of lovin'.	7	Bon Appétit	00:02:53.765	00:02:56.066	63.mp3
6652	bon app, bon appetit, baby	5	Bon Appétit	00:02:56.099	00:02:58.765	64.mp3
6653	sweet potato pie	3	Bon Appétit	00:02:59.000	00:03:01.233	65.mp3
6654	it'll change you mind	4	Bon Appétit	00:03:01.265	00:03:03.299	66.mp3
6655	get you runnin' back for seconds	6	Bon Appétit	00:03:03.332	00:03:06.099	67.mp3
6656	every single night	3	Bon Appétit	00:03:06.133	00:03:07.766	68.mp3
6657	i'm the one they say can change your life	9	Bon Appétit	00:03:08.000	00:03:09.765	69.mp3
6658	whoa oh oh hm	4	Attention	00:00:04.601	00:00:08.800	1.mp3
6659	you've been runnin' round, runnin' round, runnin' round throwin' that dirt all on my name	15	Attention	00:00:09.614	00:00:14.313	2.mp3
6660	'cause you knew that i, knew that i, knew that i'd call you up	14	Attention	00:00:14.417	00:00:18.716	3.mp3
6661	you've been going round, going round, going round every party in la	12	Attention	00:00:19.218	00:00:23.817	4.mp3
6662	'cause you knew that i, knew that i, knew that i'd be at one	14	Attention	00:00:24.005	00:00:28.104	5.mp3
6663	i know that dress is karma, perfume regret	8	Attention	00:00:29.408	00:00:33.507	6.mp3
6664	you got me thinking 'bout when you were mine	9	Attention	00:00:33.819	00:00:37.418	7.mp3
6665	and now i'm all up on ya, what you expect	10	Attention	00:00:39.012	00:00:43.311	8.mp3
6666	but you're not coming home with me tonight	8	Attention	00:00:43.401	00:00:47.050	9.mp3
6667	you just want attention	4	Attention	00:00:47.104	00:00:49.303	10.mp3
6668	you don't want my heart	5	Attention	00:00:49.515	00:00:51.714	11.mp3
6669	maybe you just hate the thought of me with someone new	11	Attention	00:00:51.914	00:00:56.213	12.mp3
6670	yeah, you just want attention	5	Attention	00:00:56.405	00:00:58.904	13.mp3
6671	i knew from the start	5	Attention	00:00:59.004	00:01:01.303	14.mp3
6672	you're just making sure i'm never gettin' over you	9	Attention	00:01:01.407	00:01:05.806	15.mp3
6673	you've been runnin' round, runnin' round, runnin' round throwing that dirt all on my name	15	Attention	00:01:07.306	00:01:11.705	16.mp3
6674	'cause you knew that i, knew that i, knew that i'd call you up	14	Attention	00:01:12.015	00:01:15.614	17.mp3
6675	baby, now that we're, now that we're, now that we're right here standing face to face	16	Attention	00:01:16.812	00:01:21.761	18.mp3
6676	you already know, already know, already know that you won	10	Attention	00:01:21.815	00:01:25.214	19.mp3
6677	ohh	1	Attention	00:01:25.504	00:01:26.903	20.mp3
6678	i know that dress is karma, perfume regret	8	Attention	00:01:26.999	00:01:31.398	21.mp3
6679	you got me thinking 'bout when you were mine	9	Attention	00:01:31.514	00:01:33.913	22.mp3
6680	and now i'm all up on ya, what you expect	10	Attention	00:01:36.714	00:01:40.163	24.mp3
6681	oh baby	2	Attention	00:01:40.201	00:01:40.900	25.mp3
6682	but you're not coming home with me tonight	8	Attention	00:01:41.018	00:01:44.717	26.mp3
6683	you just want attention	4	Attention	00:01:44.707	00:01:47.006	27.mp3
6684	you don't want my heart	5	Attention	00:01:47.108	00:01:49.307	28.mp3
6685	maybe you just hate the thought of me with someone new	11	Attention	00:01:49.409	00:01:53.908	29.mp3
6686	yeah, you just want attention	5	Attention	00:01:54.008	00:01:56.607	30.mp3
6687	i knew from the start	5	Attention	00:01:56.703	00:01:58.902	31.mp3
6688	you're just making sure i'm never gettin' over you (oh you)	11	Attention	00:01:59.004	00:02:04.003	32.mp3
6689	ohh	1	Attention	00:02:04.105	00:02:05.504	33.mp3
6690	what are you doin' to me?	6	Attention	00:02:05.608	00:02:07.307	34.mp3
6691	what are you doin', love?	5	Attention	00:02:07.409	00:02:10.408	35.mp3
6692	what are you doin' to me?	6	Attention	00:02:10.508	00:02:12.107	36.mp3
6693	what are you doin', love?	5	Attention	00:02:12.205	00:02:15.104	37.mp3
6694	what are you doin' to me?	6	Attention	00:02:15.210	00:02:16.909	38.mp3
6695	what are you doin', love?	5	Attention	00:02:17.013	00:02:20.012	39.mp3
6696	what are you doin' to me?	6	Attention	00:02:20.112	00:02:21.711	40.mp3
6697	what are you doin', love?	5	Attention	00:02:21.809	00:02:24.408	41.mp3
6698	i know that dress is karma,	6	Attention	00:02:24.616	00:02:28.815	42.mp3
6699	you got me thinking 'bout	5	Attention	00:02:28.905	00:02:32.504	43.mp3
6700	and now i'm all up on	6	Attention	00:02:34.218	00:02:38.417	44.mp3
6701	but you're not coming	4	Attention	00:02:38.499	00:02:42.398	45.mp3
6702	you just want attention	4	Attention	00:02:44.608	00:02:46.907	46.mp3
6703	you don't want my heart	5	Attention	00:02:47.019	00:02:49.318	47.mp3
6704	maybe you just hate the thought	6	Attention	00:02:49.400	00:02:53.899	48.mp3
6705	yeah, you just want attention	5	Attention	00:02:54.005	00:02:56.604	49.mp3
6706	i knew from the start	5	Attention	00:02:56.712	00:02:58.911	50.mp3
6707	you're just making sure i'm	5	Attention	00:02:59.009	00:03:03.458	51.mp3
6708	(over you)	2	Attention	00:03:03.516	00:03:05.415	52.mp3
6709	what are you doin' to me? (heyy)	7	Attention	00:03:05.711	00:03:07.410	53.mp3
6710	what are you doin', love? (what	6	Attention	00:03:07.504	00:03:10.303	54.mp3
6711	what are you doin' to me?	6	Attention	00:03:10.419	00:03:12.118	55.mp3
6712	what are you doin', love? (yeah,	6	Attention	00:03:12.206	00:03:15.105	56.mp3
6713	what are you doin' to me?	6	Attention	00:03:15.209	00:03:17.008	57.mp3
6714	what are you doin' love?	5	Attention	00:03:17.102	00:03:18.401	58.mp3
6715	(you're just making sure i'm	5	Attention	00:03:18.515	00:03:19.914	59.mp3
6716	what are you doin' to me?	6	Attention	00:03:20.006	00:03:21.705	60.mp3
6717	what are you doin', huh?	5	Attention	00:03:21.801	00:03:25.300	61.mp3
6718	by imperialpilotcore™	2	Attention	00:03:26.310	00:03:35.309	62.mp3
6719	here's to the ones that we got	7	Memories	00:00:10.300	00:00:12.300	2.mp3
6720	cheers to the wish you were but you're not	9	Memories	00:00:13.066	00:00:15.333	3.mp3
6721	cause the drinks bring back all the memories	8	Memories	00:00:15.365	00:00:18.065	4.mp3
6722	of everything we've been through	5	Memories	00:00:18.100	00:00:20.266	5.mp3
6723	toast to the ones here today	6	Memories	00:00:21.065	00:00:22.565	6.mp3
6724	toast to the ones that we lost on the way	10	Memories	00:00:23.432	00:00:26.132	7.mp3
6725	cause the drinks bring back all the memories	8	Memories	00:00:26.166	00:00:28.432	8.mp3
6726	and the memories bring back	5	Memories	00:00:28.466	00:00:30.133	9.mp3
6727	memories bring back you	4	Memories	00:00:30.166	00:00:32.399	10.mp3
6728	there's a time that i remember	6	Memories	00:00:32.432	00:00:35.165	11.mp3
6729	when i did not know no pain	7	Memories	00:00:35.200	00:00:37.233	12.mp3
6730	when i believed in forever	5	Memories	00:00:37.533	00:00:40.332	13.mp3
6731	and everything would stay the same	6	Memories	00:00:40.365	00:00:43.100	14.mp3
6732	now my heart feel like december	6	Memories	00:00:43.133	00:00:45.500	15.mp3
6733	when somebody say your name	5	Memories	00:00:45.533	00:00:47.566	16.mp3
6734	cause i can't reach out to call you,	8	Memories	00:00:48.365	00:00:51.133	17.mp3
6735	but i know i will one day	7	Memories	00:00:51.165	00:00:53.232	18.mp3
6736	hey	1	Memories	00:00:53.265	00:00:54.199	19.mp3
6737	everybody hurts sometimes, everybody hurts someday	6	Memories	00:00:55.533	00:00:58.399	20.mp3
6738	eh eh	2	Memories	00:00:58.432	00:01:00.133	21.mp3
6739	everything will be alright, go on raise a glass and say	11	Memories	00:01:00.165	00:01:03.632	22.mp3
6740	eh	1	Memories	00:01:03.665	00:01:04.665	23.mp3
6741	here's to the ones that we got	7	Memories	00:01:04.700	00:01:07.165	24.mp3
6742	cheers to the wish you here but you're not	9	Memories	00:01:07.200	00:01:09.400	25.mp3
6743	cause the drinks bring back all the memories	8	Memories	00:01:09.433	00:01:12.100	26.mp3
6744	of everything we've been through	5	Memories	00:01:12.132	00:01:15.066	27.mp3
6745	toast to the ones here today	6	Memories	00:01:15.099	00:01:17.465	28.mp3
6746	toast to the ones that we lost on the way	10	Memories	00:01:17.500	00:01:20.066	29.mp3
6747	cause the drinks bring back all the memories	8	Memories	00:01:20.099	00:01:22.432	30.mp3
6748	and the memories bring back	5	Memories	00:01:22.465	00:01:24.232	31.mp3
6749	memories bring back you	4	Memories	00:01:24.266	00:01:26.100	32.mp3
6750	doo do do doo ...	5	Memories	00:01:26.132	00:01:33.399	33.mp3
6751	memories bring back	3	Memories	00:01:33.433	00:01:34.666	34.mp3
6752	memories bring back you	4	Memories	00:01:34.700	00:01:37.133	35.mp3
6753	there's a time that i remember	6	Memories	00:01:37.165	00:01:39.533	36.mp3
6754	when i never felt so lost	6	Memories	00:01:39.566	00:01:42.400	37.mp3
6755	when i felt that all the hatred was too powerful to stop	12	Memories	00:01:42.433	00:01:47.500	38.mp3
6756	now my heart feel like an ember	7	Memories	00:01:47.533	00:01:50.165	39.mp3
6757	and its lighting up the dark	6	Memories	00:01:50.200	00:01:52.733	40.mp3
6758	i'll carry these torches for ya	6	Memories	00:01:52.766	00:01:55.433	41.mp3
6759	that you know i'll never drop	6	Memories	00:01:55.465	00:01:57.632	42.mp3
6760	yeah	1	Memories	00:01:57.665	00:01:59.332	43.mp3
6761	everybody hurts sometimes, everybody hurts someday	6	Memories	00:01:59.365	00:02:03.132	44.mp3
6762	eh eh	2	Memories	00:02:03.165	00:02:04.533	45.mp3
6763	everything goin be alright, go on raise a glass and say	11	Memories	00:02:04.566	00:02:08.300	46.mp3
6764	eh	1	Memories	00:02:08.332	00:02:09.365	47.mp3
6765	here's to the ones that we got	7	Memories	00:02:09.400	00:02:11.500	48.mp3
6766	cheers to the wish you were here but you're not	10	Memories	00:02:11.532	00:02:14.132	49.mp3
6767	cause the drinks bring back all the memories	8	Memories	00:02:14.165	00:02:16.532	50.mp3
6768	knew he was a killer	5	Ready For It	00:00:11.260	00:00:12.761	1.mp3
6769	first time that i saw him	6	Ready For It	00:00:12.762	00:00:14.347	2.mp3
6770	wonder how many girls he had loved and left haunted	10	Ready For It	00:00:14.346	00:00:17.307	3.mp3
6771	but if he's a ghost, then	6	Ready For It	00:00:17.307	00:00:18.934	4.mp3
6772	i can be a phantom	5	Ready For It	00:00:18.934	00:00:20.352	5.mp3
6773	holdin' him for ransom, some	5	Ready For It	00:00:20.353	00:00:22.939	6.mp3
6774	some boys are tryin' too hard,	6	Ready For It	00:00:22.939	00:00:24.815	7.mp3
6775	he don't try at all though	6	Ready For It	00:00:24.815	00:00:26.358	8.mp3
6776	younger than my exes,	4	Ready For It	00:00:26.359	00:00:27.777	9.mp3
6777	but he act like such a man, so	8	Ready For It	00:00:27.777	00:00:29.446	10.mp3
6778	i see nothing better,	4	Ready For It	00:00:29.446	00:00:30.864	11.mp3
6779	i keep him forever	4	Ready For It	00:00:30.864	00:00:32.365	12.mp3
6780	like a vendetta-ta	3	Ready For It	00:00:32.365	00:00:34.908	13.mp3
6781	i, i, i see how this is gon' go	9	Ready For It	00:00:34.908	00:00:38.621	14.mp3
6782	touch me	2	Ready For It	00:00:38.621	00:00:39.581	15.mp3
6783	and you'll never be alone	5	Ready For It	00:00:39.581	00:00:41.124	16.mp3
6784	i-island breeze	2	Ready For It	00:00:41.124	00:00:42.792	17.mp3
6785	and lights down low	4	Ready For It	00:00:42.792	00:00:44.002	18.mp3
6786	no one has to know	5	Ready For It	00:00:44.002	00:00:46.170	19.mp3
6787	in the middle of the night	6	Ready For It	00:00:46.838	00:00:49.048	20.mp3
6788	in my dreams	3	Ready For It	00:00:49.048	00:00:50.800	21.mp3
6789	you should see the things we do	7	Ready For It	00:00:52.509	00:00:55.095	22.mp3
6790	baby	1	Ready For It	00:00:55.095	00:00:57.014	23.mp3
6791	in the middle of the night,	6	Ready For It	00:00:58.850	00:01:01.060	24.mp3
6792	in my dreams	3	Ready For It	00:01:01.060	00:01:02.812	25.mp3
6793	i know i'm gonna be with you	7	Ready For It	00:01:04.230	00:01:06.441	26.mp3
6794	so i take my time	5	Ready For It	00:01:06.441	00:01:10.528	27.mp3
6795	are you ready for it?	5	Ready For It	00:01:10.986	00:01:12.155	28.mp3
6796	knew i was a robber	5	Ready For It	00:01:17.576	00:01:18.911	29.mp3
6797	first time that he saw me	6	Ready For It	00:01:18.912	00:01:20.330	30.mp3
6798	stealing hearts and running off	5	Ready For It	00:01:20.329	00:01:21.873	31.mp3
6799	and never sayin' sorry	4	Ready For It	00:01:21.873	00:01:23.416	32.mp3
6800	but if i'm a thief,	5	Ready For It	00:01:23.415	00:01:24.500	33.mp3
6801	then he can join the heist, and	7	Ready For It	00:01:24.501	00:01:26.335	34.mp3
6802	we'll move to an island, and	6	Ready For It	00:01:26.335	00:01:28.962	35.mp3
6803	and he can be my jailer	6	Ready For It	00:01:28.962	00:01:31.006	36.mp3
6804	burton to this taylor	4	Ready For It	00:01:31.007	00:01:32.425	37.mp3
6805	every love i've known in comparison is a failure	9	Ready For It	00:01:32.424	00:01:35.344	38.mp3
6806	i forget their names now	5	Ready For It	00:01:35.344	00:01:36.971	39.mp3
6807	i'm so very tame now	5	Ready For It	00:01:36.971	00:01:38.515	40.mp3
6808	never be the same now, now	6	Ready For It	00:01:38.515	00:01:41.099	41.mp3
6809	i, i, i see how this is gon' go	9	Ready For It	00:01:41.099	00:01:44.521	42.mp3
6810	touch me	2	Ready For It	00:01:44.853	00:01:45.813	43.mp3
6811	and you'll never be alone	5	Ready For It	00:01:45.813	00:01:46.980	44.mp3
6812	i-island breeze	2	Ready For It	00:01:46.980	00:01:48.732	45.mp3
6813	and lights down low	4	Ready For It	00:01:48.733	00:01:50.276	46.mp3
6814	no one has to know	5	Ready For It	00:01:50.275	00:01:52.402	47.mp3
6815	in the middle of the night	6	Ready For It	00:01:53.153	00:01:55.155	48.mp3
6816	in my dreams	3	Ready For It	00:01:55.156	00:01:56.783	49.mp3
6817	you should see the things we do	7	Ready For It	00:01:58.492	00:02:01.119	50.mp3
6818	baby	1	Ready For It	00:02:01.120	00:02:02.871	51.mp3
6819	in the middle of the night	6	Ready For It	00:02:04.957	00:02:07.126	52.mp3
6820	in my dreams	3	Ready For It	00:02:07.126	00:02:08.878	53.mp3
6821	i know i'm gonna be with you	7	Ready For It	00:02:10.337	00:02:12.423	54.mp3
6822	so i take my time	5	Ready For It	00:02:12.423	00:02:16.552	55.mp3
6823	are you ready for it?	5	Ready For It	00:02:16.969	00:02:18.096	56.mp3
6824	are you ready for it?	5	Ready For It	00:02:23.058	00:02:24.269	57.mp3
6825	baby, let the games begin	5	Ready For It	00:02:24.269	00:02:26.187	58.mp3
6826	let the games begin	4	Ready For It	00:02:26.187	00:02:27.438	59.mp3
6827	let the games begin	4	Ready For It	00:02:27.771	00:02:29.439	60.mp3
6828	baby, let the games begin	5	Ready For It	00:02:30.400	00:02:32.485	61.mp3
6829	let the games begin	4	Ready For It	00:02:32.485	00:02:33.611	62.mp3
6830	let the games begin	4	Ready For It	00:02:33.902	00:02:35.028	63.mp3
6831	i, i, i see how this is gon' go	9	Ready For It	00:02:35.028	00:02:38.448	64.mp3
6832	touch me	2	Ready For It	00:02:38.824	00:02:39.783	65.mp3
6833	and you'll never be alone	5	Ready For It	00:02:39.783	00:02:41.034	66.mp3
6834	i-island breeze	2	Ready For It	00:02:41.034	00:02:42.745	67.mp3
6835	and lights down low	4	Ready For It	00:02:42.745	00:02:44.163	68.mp3
6836	no one has to know	5	Ready For It	00:02:44.163	00:02:45.999	69.mp3
6837	in the middle of the night	6	Ready For It	00:02:48.668	00:02:50.753	70.mp3
6838	in my dreams	3	Ready For It	00:02:50.752	00:02:52.087	71.mp3
6839	you should see the things we do	7	Ready For It	00:02:54.090	00:02:56.718	72.mp3
6840	baby	1	Ready For It	00:02:56.717	00:02:58.468	73.mp3
6841	in the middle of the night	6	Ready For It	00:03:00.388	00:03:02.765	74.mp3
6842	in my dreams	3	Ready For It	00:03:02.764	00:03:04.725	75.mp3
6843	i know i'm gonna be with you	7	Ready For It	00:03:06.019	00:03:08.104	76.mp3
6844	so i take my time	5	Ready For It	00:03:08.104	00:03:12.442	77.mp3
6845	in the middle of the night	6	Ready For It	00:03:12.442	00:03:13.860	78.mp3
6846	baby, let the games begin	5	Ready For It	00:03:13.860	00:03:15.820	79.mp3
6847	let the games begin	4	Ready For It	00:03:15.819	00:03:17.030	80.mp3
6848	let the games begin	4	Ready For It	00:03:17.322	00:03:18.573	81.mp3
6849	are you ready for it?	5	Ready For It	00:03:18.573	00:03:19.741	82.mp3
6850	baby, let the games begin	5	Ready For It	00:03:19.741	00:03:21.784	83.mp3
6851	let the games begin	4	Ready For It	00:03:21.783	00:03:23.368	84.mp3
6852	let the games begin	4	Ready For It	00:03:23.368	00:03:24.495	85.mp3
6853	are you ready for it?	5	Ready For It	00:03:24.495	00:03:25.788	86.mp3
6854	be my woman girl, and i'll be your man	9	Hey Mama	00:00:00.000	00:00:05.400	﻿1.mp3
6855	be my woman girl, and i'll be your man (now)	10	Hey Mama	00:00:05.400	00:00:11.140	2.mp3
6856	yes i'll be your woman, yes i'll be your baby	10	Hey Mama	00:00:13.620	00:00:16.330	3.mp3
6857	yes i'll be whatever that you tell me when you're ready	11	Hey Mama	00:00:16.400	00:00:19.190	4.mp3
6858	yes i'll be your girl, forever your lady	8	Hey Mama	00:00:19.190	00:00:21.650	5.mp3
6859	you ain't ever gotta worry, i'm down for you baby	10	Hey Mama	00:00:21.650	00:00:24.350	6.mp3
6860	best believe that, when you need that	7	Hey Mama	00:00:24.870	00:00:27.660	7.mp3
6861	i'll provide that, you will always have it	8	Hey Mama	00:00:27.660	00:00:30.440	8.mp3
6862	i'll be on deck, keep it in check	8	Hey Mama	00:00:30.440	00:00:33.210	9.mp3
6863	when you need that, i'ma let you have it	9	Hey Mama	00:00:33.360	00:00:35.920	10.mp3
6864	beating my drum like dum di-di-day	6	Hey Mama	00:00:35.920	00:00:38.770	11.mp3
6865	i like the dirty rhythm you play	7	Hey Mama	00:00:38.770	00:00:41.530	12.mp3
6866	i wanna hear you callin' my name	7	Hey Mama	00:00:41.530	00:00:43.990	13.mp3
6867	like, hey ma-ma-mama, hey ma-mama	5	Hey Mama	00:00:43.990	00:00:47.190	14.mp3
6868	banging the drum like dum di-di-day	6	Hey Mama	00:00:47.190	00:00:49.870	15.mp3
6869	i know you want it in the worst way	9	Hey Mama	00:00:49.870	00:00:52.480	16.mp3
6870	i wanna hear you callin' my name	7	Hey Mama	00:00:52.480	00:00:55.130	17.mp3
6871	like, hey ma-ma-mama, hey ma-mama	5	Hey Mama	00:00:55.130	00:00:58.550	18.mp3
6872	be my woman girl, and i'll be your man	9	Hey Mama	00:00:58.550	00:01:03.700	19.mp3
6873	be my woman girl, and i'll be your man	9	Hey Mama	00:01:04.040	00:01:08.930	20.mp3
6874	yes i do the cooking, yes i do the cleaning	10	Hey Mama	00:01:09.390	00:01:12.160	21.mp3
6875	plus i keep the na-na real sweet for your eating	10	Hey Mama	00:01:12.160	00:01:14.930	22.mp3
6876	yes you be the boss and yes i be respecting	10	Hey Mama	00:01:14.970	00:01:17.640	23.mp3
6877	whatever that you tell me cause it's game you be spitting	11	Hey Mama	00:01:17.640	00:01:20.450	24.mp3
6878	oh best believe that, when you need that	8	Hey Mama	00:01:20.450	00:01:23.470	25.mp3
6879	i'll provide that, you will always have it	8	Hey Mama	00:01:23.820	00:01:26.260	26.mp3
6880	i'll be on deck, keep it in check	8	Hey Mama	00:01:26.260	00:01:28.990	27.mp3
6881	when you need that, i'ma let you have it	9	Hey Mama	00:01:28.990	00:01:31.700	28.mp3
6882	beating my drum like dum di-di-day	6	Hey Mama	00:01:31.700	00:01:34.540	29.mp3
6883	i like the dirty rhythm you play	7	Hey Mama	00:01:34.540	00:01:37.330	30.mp3
6884	i wanna hear you callin' my name	7	Hey Mama	00:01:37.330	00:01:39.770	31.mp3
6885	like, hey ma-ma-mama, hey ma-mama	5	Hey Mama	00:01:39.770	00:01:42.940	32.mp3
6886	banging the drum like dum di-di-day	6	Hey Mama	00:01:42.940	00:01:45.760	33.mp3
6887	i know you want it in the worst way	9	Hey Mama	00:01:45.760	00:01:48.330	34.mp3
6888	i wanna hear you callin' my name	7	Hey Mama	00:01:48.330	00:01:51.000	35.mp3
6889	like, hey ma-ma-mama, hey ma-mama	5	Hey Mama	00:01:51.000	00:01:54.080	36.mp3
6890	be my woman girl, and i'll be your man	9	Hey Mama	00:01:54.350	00:01:59.670	37.mp3
6891	be my woman girl, and i'll be your man	9	Hey Mama	00:01:59.990	00:02:04.930	38.mp3
6892	whole crew got the juice, your dick came the truth	10	Hey Mama	00:02:04.930	00:02:07.740	39.mp3
6893	my screams is the proof, them other dudes get the deuce	11	Hey Mama	00:02:07.740	00:02:10.470	40.mp3
6894	when i speed in the coupe, leavin' this interview	9	Hey Mama	00:02:10.470	00:02:13.420	41.mp3
6895	it ain't nothing new, i been fucking with you	9	Hey Mama	00:02:13.420	00:02:16.020	42.mp3
6896	none of them bitches ain't taking you, just tell 'em to make a u	14	Hey Mama	00:02:16.020	00:02:18.890	43.mp3
6897	that's how it be, i come first like debut	9	Hey Mama	00:02:19.090	00:02:21.700	44.mp3
6898	so baby when you need that	6	Hey Mama	00:02:21.950	00:02:24.080	45.mp3
6899	gimme the word, i'm no good, i'll be bad for my baby	12	Hey Mama	00:02:24.260	00:02:27.630	46.mp3
6900	make sure that he's getting his share	7	Hey Mama	00:02:27.810	00:02:30.550	47.mp3
6901	make sure that his baby take care	7	Hey Mama	00:02:30.680	00:02:33.280	48.mp3
6902	make sure i'm on my toes, on my knees	9	Hey Mama	00:02:33.550	00:02:35.670	49.mp3
6903	keep him pleased, rub him down, be a lady and a freak	12	Hey Mama	00:02:35.670	00:02:38.450	50.mp3
6904	beating my drum like dum di-di-day	6	Hey Mama	00:02:38.570	00:02:41.600	51.mp3
6905	i like the dirty rhythm you play	7	Hey Mama	00:02:41.600	00:02:44.300	52.mp3
6906	i wanna hear you callin' my name	7	Hey Mama	00:02:44.300	00:02:46.780	53.mp3
6907	like, hey ma-ma-mama, hey ma-mama	5	Hey Mama	00:02:46.780	00:02:49.890	54.mp3
6908	banging the drum like dum di-di-day	6	Hey Mama	00:02:49.890	00:02:53.030	55.mp3
6909	i know you want it in the worst way	9	Hey Mama	00:02:53.030	00:02:55.430	56.mp3
6910	i wanna hear you callin' my name	7	Hey Mama	00:02:55.430	00:02:57.920	57.mp3
6911	like, hey ma-ma-mama, hey ma-mama	5	Hey Mama	00:02:57.920	00:03:01.080	58.mp3
6912	be my woman girl, and i'll be your man	9	Hey Mama	00:03:01.280	00:03:06.510	59.mp3
6913	be my woman girl, and i'll be your man	9	Hey Mama	00:03:06.820	00:03:12.380	60.mp3
6914	alidnobilem.co.id	1	Hey Mama	00:03:17.380	00:05:16.140	61.mp3
6915	can i just turn back the clock	7	Start Again	00:00:07.299	00:00:10.065	2.mp3
6916	forgive my sins	3	Start Again	00:00:10.099	00:00:12.166	3.mp3
6917	i just wanna roll my sleeves up	7	Start Again	00:00:12.199	00:00:15.032	4.mp3
6918	and start again	3	Start Again	00:00:15.066	00:00:17.100	5.mp3
6919	i don't think i messed it up	7	Start Again	00:00:17.132	00:00:19.565	6.mp3
6920	time and time again	4	Start Again	00:00:19.600	00:00:22.033	7.mp3
6921	i just wanna roll my sleeves up	7	Start Again	00:00:22.065	00:00:24.432	8.mp3
6922	and start again	3	Start Again	00:00:24.466	00:00:27.066	9.mp3
6923	i was	2	Start Again	00:00:27.100	00:00:28.266	10.mp3
6924	switching up the lane	4	Start Again	00:00:28.300	00:00:29.432	11.mp3
6925	stepping out the fame i'm in	6	Start Again	00:00:29.466	00:00:31.600	12.mp3
6926	i was	2	Start Again	00:00:31.632	00:00:33.232	13.mp3
6927	pullin on the reigns	4	Start Again	00:00:33.265	00:00:34.399	14.mp3
6928	sick of all the same happenins	6	Start Again	00:00:34.432	00:00:36.332	15.mp3
6929	i swear i was	4	Start Again	00:00:36.365	00:00:38.066	16.mp3
6930	lookin for the same disaster	5	Start Again	00:00:38.100	00:00:39.399	17.mp3
6931	mixed with a bottle of gin	6	Start Again	00:00:39.432	00:00:41.165	18.mp3
6932	and just because	3	Start Again	00:00:41.200	00:00:43.066	19.mp3
6933	i come home after	4	Start Again	00:00:43.100	00:00:44.233	20.mp3
6934	doesn't mean you take me in	6	Start Again	00:00:44.265	00:00:45.732	21.mp3
6935	you see my world is spinning like there's nothing you know	11	Start Again	00:00:45.765	00:00:50.466	22.mp3
6936	you see my world is feeling like it just might explode	11	Start Again	00:00:50.500	00:00:55.365	23.mp3
6937	and yes i know it's hard to take it backwards	10	Start Again	00:00:55.399	00:01:00.466	24.mp3
6938	for my mind	3	Start Again	00:01:00.500	00:01:02.133	25.mp3
6939	need to get it right	5	Start Again	00:01:02.165	00:01:03.500	26.mp3
6940	need to see some light come in	7	Start Again	00:01:03.533	00:01:05.365	27.mp3
6941	can i just turn back the clock	7	Start Again	00:01:05.400	00:01:08.166	28.mp3
6942	forgive my sins	3	Start Again	00:01:08.200	00:01:10.299	29.mp3
6943	i just wanna roll my sleeves up	7	Start Again	00:01:10.332	00:01:13.066	30.mp3
6944	and start again	3	Start Again	00:01:13.099	00:01:15.199	31.mp3
6945	i don't think i messed it up	7	Start Again	00:01:15.233	00:01:18.133	32.mp3
6946	time and time again	4	Start Again	00:01:18.165	00:01:20.066	33.mp3
6947	i just wanna roll my sleeves up	7	Start Again	00:01:20.099	00:01:22.532	34.mp3
6948	and start again	3	Start Again	00:01:22.566	00:01:25.100	35.mp3
6949	feelin like maybe i'm unappreciated	5	Start Again	00:01:25.665	00:01:27.700	36.mp3
6950	like my presence in your life has been alleviated	9	Start Again	00:01:27.733	00:01:30.433	37.mp3
6951	i feel like everything i've done before is different now	10	Start Again	00:01:30.465	00:01:32.665	38.mp3
6952	but i can see clearer than ever from a distance now	11	Start Again	00:01:32.700	00:01:35.299	39.mp3
6953	everyday i do it i been goin' through it	9	Start Again	00:01:35.332	00:01:37.165	40.mp3
6954	but you never knew it cuz i never showed you	10	Start Again	00:01:37.200	00:01:39.200	41.mp3
6955	you gave me the world so i feel i owed you	11	Start Again	00:01:39.233	00:01:41.533	42.mp3
6956	but i been lookin through the mirror, that's the old you	11	Start Again	00:01:41.566	00:01:44.233	43.mp3
6957	imma get it right now, don't know how	8	Start Again	00:01:44.266	00:01:46.500	44.mp3
6958	but i promise that we're gonna make it somehow	9	Start Again	00:01:46.533	00:01:49.165	45.mp3
6959	i'm all in, it's from the heart again	8	Start Again	00:01:49.200	00:01:51.365	46.mp3
6960	open up your mind and maybe we can start again	10	Start Again	00:01:51.400	00:01:53.733	47.mp3
6961	can i just turn back the clock	7	Start Again	00:01:53.766	00:01:56.500	48.mp3
6962	forgive my sins	3	Start Again	00:01:56.533	00:01:58.665	49.mp3
6963	i just wanna roll my sleeves up	7	Start Again	00:01:58.700	00:02:01.400	50.mp3
6964	and start again	3	Start Again	00:02:01.433	00:02:03.500	51.mp3
6965	dirty looks from your mother	5	Wait	00:00:13.233	00:00:15.666	2.mp3
6966	never seen you in a dress that color, no	9	Wait	00:00:17.600	00:00:21.432	3.mp3
6967	it's a special occasion	4	Wait	00:00:21.466	00:00:23.200	4.mp3
6968	not invited, but i'm glad i made it, oh	9	Wait	00:00:25.166	00:00:28.533	5.mp3
6969	let me apologize	3	Wait	00:00:28.565	00:00:32.132	6.mp3
6970	i'll make up, make up, make up make up for all those times	13	Wait	00:00:32.165	00:00:36.000	7.mp3
6971	your love, i don't wanna lose	6	Wait	00:00:36.033	00:00:39.100	8.mp3
6972	i'm beggin', beggin', beggin' beggin', i'm beggin' you	8	Wait	00:00:39.765	00:00:42.765	9.mp3
6973	wait, can you turn around, can you turn around?	9	Wait	00:00:43.633	00:00:47.066	10.mp3
6974	just wait, can we work this out, can we work this out?	12	Wait	00:00:47.100	00:00:51.066	11.mp3
6975	just wait, can you come here please?	7	Wait	00:00:51.100	00:00:53.600	12.mp3
6976	'cause i wanna be with you	6	Wait	00:00:53.633	00:00:59.000	13.mp3
6977	wait, can you turn around can you turn around?	9	Wait	00:00:59.033	00:01:02.533	14.mp3
6978	just wait, can we work this out can we work this out?	12	Wait	00:01:02.566	00:01:06.200	15.mp3
6979	just wait, could you come here please?	7	Wait	00:01:06.233	00:01:08.733	16.mp3
6980	'cause i wanna be with you	6	Wait	00:01:08.766	00:01:14.633	17.mp3
6981	can we talk for a moment?	6	Wait	00:01:14.665	00:01:18.632	18.mp3
6982	got these feelings that i'm tired of holdin' on	9	Wait	00:01:18.665	00:01:22.033	19.mp3
6983	wasn't tryna get wasted	4	Wait	00:01:22.566	00:01:24.200	20.mp3
6984	i needed more than three or four to say this, oh	11	Wait	00:01:26.233	00:01:29.600	21.mp3
6985	let me apologize, yeah	4	Wait	00:01:29.632	00:01:32.765	22.mp3
6986	i'll make up, make up, make up make up for all those times	13	Wait	00:01:33.000	00:01:37.099	23.mp3
6987	your love, i don't wanna lose	6	Wait	00:01:37.132	00:01:40.033	24.mp3
6988	i'm beggin', beggin', beggin' beggin', i'm begging you	8	Wait	00:01:40.566	00:01:43.600	25.mp3
6989	wait, can you turn around can you turn around?	9	Wait	00:01:44.632	00:01:47.765	26.mp3
6990	just wait, can we work this out can we work this out?	12	Wait	00:01:48.000	00:01:52.000	27.mp3
6991	just wait, can you come here please?	7	Wait	00:01:52.033	00:01:54.599	28.mp3
6992	'cause i wanna be with you	6	Wait	00:01:54.632	00:01:59.765	29.mp3
6993	wait, can you turn around, can you turn around?	9	Wait	00:02:00.000	00:02:03.200	30.mp3
6994	just wait, can we work this out can we work this out?	12	Wait	00:02:03.233	00:02:07.200	31.mp3
6995	just wait, could you come here please?	7	Wait	00:02:07.233	00:02:09.599	32.mp3
6996	'cause i wanna be with you	6	Wait	00:02:09.633	00:02:15.766	33.mp3
6997	you say i'm just another bad guy	7	Wait	00:02:37.633	00:02:40.633	35.mp3
6998	you say i've done a lot of things i can't undo	11	Wait	00:02:41.699	00:02:45.332	36.mp3
6200	how long has this been going on	7	How Long	00:00:46.881	00:00:51.537	11.mp3
\.


--
-- Data for Name: speaker_songs; Type: TABLE DATA; Schema: public; Owner: mohit
--

COPY public.speaker_songs (id, title, artist, file_name) FROM stdin;
1	Cups	Anna Kendrick	Anna_Kendrick_-_Cups.mp3
2	Wolves	Selena Gomez	Selena_Gomez_-_Wolves.mp3
3	Little Swing	AronChupa	AronChupa_-_Little_Swing.mp3
4	Attention	Charlie Puth	Charlie_Puth_-_Attention.mp3
5	Call Me Maybe	Carly Rae Jepsen	Carly_Rae_Jepsen_-_Call_Me_Maybe.mp3
6	Shape of You	Ed Sheeran	Ed_Sheeran_-_Shape_of_You.mp3
7	Animals	Maroon 5	Maroon_5_-_Animals.mp3
8	Ready For It	Taylor Swift	Taylor_Swift_-_Ready_For_It.mp3
9	22	Taylor Swift	Taylor_Swift_-_22.mp3
10	Hey Brother	Avicii	Avicii_-_Hey_Brother.mp3
11	Worth It	Fifth Harmony	Fifth_Harmony_-_Worth_It.mp3
12	Alive	Sia	Sia_-_Alive.mp3
13	M	Fergie	Fergie_-_M.I.L.F._$.mp3
14	Gorgeous	Taylor Swift	Taylor_Swift_-_Gorgeous.mp3
15	The Nights	Avicii	Avicii_-_The_Nights.mp3
16	Waiting For Love	Avicii	Avicii_-_Waiting_For_Love.mp3
17	IDGAF	Dua Lipa	Dua_Lipa_-_IDGAF.mp3
18	Phobia	HRVY	HRVY_-_Phobia.mp3
19	Bon Appétit	Katy Perry	Katy_Perry_-_Bon_Appétit.mp3
20	Party Rock Anthem	LMFAO	LMFAO_-_Party_Rock_Anthem.mp3
21	Wrecking Ball	Miley Cyrus	Miley_Cyrus_-_Wrecking_Ball.mp3
22	Our Song	Taylor Swift	Taylor_Swift_-_Our_Song.mp3
23	Lean On	Major Lazer	Major_Lazer_-_Lean_On.mp3
24	Galway Girl	Ed Sheeran	Ed_Sheeran_-_Galway_Girl.mp3
25	Bad Liar	Selena Gomez	Selena_Gomez_-_Bad_Liar.mp3
26	The Greatest	Sia	Sia_-_The_Greatest.mp3
27	Sorry For Party Rocking	LMFAO	LMFAO_-_Sorry_For_Party_Rocking.mp3
28	Bad Blood	Taylor Swift	Taylor_Swift_-_Bad_Blood.mp3
29	Send My Love	Adele	Adele_-_Send_My_Love.mp3
30	Cheap Thrills	Sia	Sia_-_Cheap_Thrills.mp3
31	Castle On The Hill	Ed Sheeran	Ed_Sheeran_-_Castle_On_The_Hill.mp3
32	Drag Me Down	One Direction	One_Direction_-_Drag_Me_Down.mp3
33	End Game	Taylor Swift	Taylor_Swift_-_End_Game.mp3
34	Rap God	Eminem	Eminem_-_Rap_God.mp3
35	Love You Like A Love Song	Selena Gomez	Selena_Gomez_-_Love_You_Like_A_Love_Song.mp3
36	You Make Me	Avicii	Avicii_-_You_Make_Me.mp3
37	Sugar	Maroon 5	Maroon_5_-_Sugar.mp3
38	What Makes You Beautiful	One Direction	One_Direction_-_What_Makes_You_Beautiful.mp3
39	La La La La	HRVY	HRVY_-_La_La_La_La.mp3
40	You Belong With Me	Taylor Swift	Taylor_Swift_-_You_Belong_With_Me.mp3
41	Freedom	Pharrell Williams	Pharrell_Williams_-_Freedom.mp3
42	Wait	Maroon 5	Maroon_5_-_Wait.mp3
43	Levels	Avicii	Avicii_-_Levels.mp3
44	Part Of Me	Katy Perry	Katy_Perry_-_Part_Of_Me.mp3
45	Holiday	HRVY	HRVY_-_Holiday.mp3
46	Roar	Katy Perry	Katy_Perry_-_Roar.mp3
47	Blank Space	Taylor Swift	Taylor_Swift_-_Blank_Space.mp3
48	Happy	Pharrell Williams	Pharrell_Williams_-_Happy.mp3
49	Look What You Made Me Do	Taylor Swift	Taylor_Swift_-_Look_What_You_Made_Me_Do.mp3
50	Bang Bang	Jessie J	Jessie_J_-_Bang_Bang.mp3
51	Chandelier	Sia	Sia_-_Chandelier.mp3
52	Same Old Love	Selena Gomez	Selena_Gomez_-_Same_Old_Love.mp3
53	Delicate	Taylor Swift	Taylor_Swift_-_Delicate.mp3
54	Photograph	Ed Sheeran	Ed_Sheeran_-_Photograph.mp3
55	The Heart Wants What It Wants	Selena Gomez	Selena_Gomez_-_The_Heart_Wants_What_It_Wants.mp3
56	Dusk Till Dawn	ZAYN	ZAYN_-_Dusk_Till_Dawn.mp3
57	Only You	Selena Gomez	Selena_Gomez_-_Only_You.mp3
58	How Long	Charlie Puth	Charlie_Puth_-_How_Long.mp3
59	Wake Me Up	Avicii	Avicii_-_Wake_Me_Up.mp3
60	Hey Mama	David Guetta	David_Guetta_-_Hey_Mama.mp3
61	Dear Future Husband	Meghan Trainor	Meghan_Trainor_-_Dear_Future_Husband.mp3
62	A Thousand Years	Christina Perri	Christina_Perri_-_A_Thousand_Years.mp3
63	Perfect	Ed Sheeran	Ed_Sheeran_-_Perfect.mp3
64	We Are Never Ever Getting Back Together	Taylor Swift	Taylor_Swift_-_We_Are_Never_Ever_Getting_Back_Together.mp3
65	Swish Swish	Katy Perry	Katy_Perry_-_Swish_Swish.mp3
66	Dark Horse ft	Katy Perry	Katy_Perry_-_Dark_Horse_ft._Juicy_J.mp3
67	Start Again	OneRepublic	OneRepublic_-_Start_Again.mp3
68	Addicted To You	Avicii	Avicii_-_Addicted_To_You.mp3
69	Pretty Girl	Maggie Lindemann	Maggie_Lindemann_-_Pretty_Girl.mp3
70	Fetish	Selena Gomez	Selena_Gomez_-_Fetish.mp3
71	Counting Stars	OneRepublic	OneRepublic_-_Counting_Stars.mp3
72	One More Night	Maroon 5	Maroon_5_-_One_More_Night.mp3
73	Not Afraid	Eminem	Eminem_-_Not_Afraid.mp3
74	Super Bass	Nicki Minaj	Nicki_Minaj_-_Super_Bass.mp3
75	Kill Em With Kindness	Selena Gomez	Selena_Gomez_-_Kill_Em_With_Kindness.mp3
76	New Rules	Dua Lipa	Dua_Lipa_-_New_Rules.mp3
77	Waterfall	Stargate	Stargate_-_Waterfall.mp3
78	See You Again 	Wiz Khalifa	Wiz_Khalifa_-_See_You_Again_.mp3
79	Ganjaman	Alfons	Alfons_-_Ganjaman.mp3
80	Personal	HRVY	HRVY_-_Personal.mp3
81	Hands To Myself	Selena Gomez	Selena_Gomez_-_Hands_To_Myself.mp3
82	Havana	Camila Cabello	Camila_Cabello_-_Havana.mp3
83	Closer	The Chainsmokers	The_Chainsmokers_-_Closer.mp3
84	Get Low	DJ Snake	DJ_Snake_-_Get_Low.mp3
85	Memories	Maroon 5	Maroon_5_-_Memories.mp3
86	The One That Got Away	Katy Perry	Katy_Perry_-_The_One_That_Got_Away.mp3
87	Payphone	Maroon 5	Maroon_5_-_Payphone.mp3
88	Only	Nicki Minaj	Nicki_Minaj_-_Only.mp3
89	Come Get It Bae	Pharrell Williams	Pharrell_Williams_-_Come_Get_It_Bae.mp3
90	Good For You	Selena Gomez	Selena_Gomez_-_Good_For_You.mp3
91	Marvin Gaye	Charlie Puth	Charlie_Puth_-_Marvin_Gaye.mp3
92	Last Friday Night	Katy Perry	Katy_Perry_-_Last_Friday_Night.mp3
93	Love Me Like You Do	Ellie Goulding	Ellie_Goulding_-_Love_Me_Like_You_Do.mp3
94	23	Mike WiLL Made-It	Mike_WiLL_Made-It_-_23.mp3
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: speaker_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.speaker_contact_id_seq', 22, true);


--
-- Name: speaker_phrases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.speaker_phrases_id_seq', 6998, true);


--
-- Name: speaker_songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mohit
--

SELECT pg_catalog.setval('public.speaker_songs_id_seq', 94, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: speaker_contact speaker_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.speaker_contact
    ADD CONSTRAINT speaker_contact_pkey PRIMARY KEY (id);


--
-- Name: speaker_phrases speaker_phrases_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.speaker_phrases
    ADD CONSTRAINT speaker_phrases_pkey PRIMARY KEY (id);


--
-- Name: speaker_songs speaker_songs_pkey; Type: CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.speaker_songs
    ADD CONSTRAINT speaker_songs_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: mohit
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mohit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

