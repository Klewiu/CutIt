--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."auth_group" (
    "id" integer NOT NULL,
    "name" character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO bddjwfkizcvuxh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."auth_group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "public"."auth_group"."id";


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."auth_group_permissions" (
    "id" bigint NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO bddjwfkizcvuxh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "public"."auth_group_permissions"."id";


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO bddjwfkizcvuxh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."auth_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "public"."auth_permission"."id";


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" "text",
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" "text" NOT NULL,
    "content_type_id" integer,
    "user_id" bigint NOT NULL,
    CONSTRAINT "django_admin_log_action_flag_check" CHECK (("action_flag" >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO bddjwfkizcvuxh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."django_admin_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "public"."django_admin_log"."id";


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO bddjwfkizcvuxh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."django_content_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "public"."django_content_type"."id";


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."django_migrations" (
    "id" bigint NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO bddjwfkizcvuxh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."django_migrations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "public"."django_migrations"."id";


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO bddjwfkizcvuxh;

--
-- Name: orders_item; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."orders_item" (
    "id" bigint NOT NULL,
    "itemMaterial" character varying(200) NOT NULL,
    "itemQuantity" integer NOT NULL,
    "itemDimmension1" double precision NOT NULL,
    "itemBander" character varying(200) NOT NULL,
    "itemDimmension2" double precision NOT NULL,
    "itemName" character varying(200) NOT NULL,
    "itemOrder_id" bigint NOT NULL,
    "itemBander2" character varying(200) NOT NULL,
    "isDone" boolean NOT NULL
);


ALTER TABLE public.orders_item OWNER TO bddjwfkizcvuxh;

--
-- Name: orders_item_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."orders_item_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_item_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: orders_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."orders_item_id_seq" OWNED BY "public"."orders_item"."id";


--
-- Name: orders_order; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."orders_order" (
    "id" bigint NOT NULL,
    "orderName" character varying(30) NOT NULL,
    "orderQuantity" integer NOT NULL,
    "orderManager_id" bigint NOT NULL,
    "orderDate" timestamp with time zone NOT NULL,
    "orderNotes" character varying(30) NOT NULL,
    "orderNumber" character varying(30) NOT NULL,
    "isDone" boolean NOT NULL,
    "finishedBy" character varying(30) NOT NULL,
    "finishedDate" timestamp with time zone NOT NULL
);


ALTER TABLE public.orders_order OWNER TO bddjwfkizcvuxh;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."orders_order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."orders_order_id_seq" OWNED BY "public"."orders_order"."id";


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."users_user" (
    "id" bigint NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamp with time zone,
    "is_superuser" boolean NOT NULL,
    "username" character varying(150) NOT NULL,
    "first_name" character varying(150) NOT NULL,
    "last_name" character varying(150) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL,
    "is_admin" boolean NOT NULL,
    "is_manager" boolean NOT NULL,
    "is_operator" boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO bddjwfkizcvuxh;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."users_user_groups" (
    "id" bigint NOT NULL,
    "user_id" bigint NOT NULL,
    "group_id" integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO bddjwfkizcvuxh;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."users_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."users_user_groups_id_seq" OWNED BY "public"."users_user_groups"."id";


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."users_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."users_user_id_seq" OWNED BY "public"."users_user"."id";


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE TABLE "public"."users_user_user_permissions" (
    "id" bigint NOT NULL,
    "user_id" bigint NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO bddjwfkizcvuxh;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE SEQUENCE "public"."users_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO bddjwfkizcvuxh;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER SEQUENCE "public"."users_user_user_permissions_id_seq" OWNED BY "public"."users_user_user_permissions"."id";


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_id_seq"'::"regclass");


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_permissions_id_seq"'::"regclass");


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_permission" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_permission_id_seq"'::"regclass");


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_admin_log" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_admin_log_id_seq"'::"regclass");


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_content_type" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_content_type_id_seq"'::"regclass");


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_migrations_id_seq"'::"regclass");


--
-- Name: orders_item id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_item" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."orders_item_id_seq"'::"regclass");


--
-- Name: orders_order id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_order" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."orders_order_id_seq"'::"regclass");


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_user_id_seq"'::"regclass");


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_user_groups_id_seq"'::"regclass");


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_user_user_permissions_id_seq"'::"regclass");


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."auth_group" ("id", "name") FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."auth_group_permissions" ("id", "group_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."auth_permission" ("id", "name", "content_type_id", "codename") FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Zlecenie	6	add_order
22	Can change Zlecenie	6	change_order
23	Can delete Zlecenie	6	delete_order
24	Can view Zlecenie	6	view_order
25	Can add Element do cięcia	7	add_item
26	Can change Element do cięcia	7	change_item
27	Can delete Element do cięcia	7	delete_item
28	Can view Element do cięcia	7	view_item
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") FROM stdin;
1	2022-06-28 10:20:59.495628+00	1	IT_User	2	[{"changed": {"fields": ["Email address"]}}]	8	1
2	2022-06-28 10:22:42.192279+00	1	IT_User	2	[{"changed": {"fields": ["Email address"]}}]	8	1
3	2022-06-29 09:07:35.813214+00	3	tester	2	[{"changed": {"fields": ["Email address"]}}]	8	1
4	2022-06-29 09:35:53.654241+00	11	Zlecenie 140zxc  Tratwa	3		6	1
5	2022-06-29 09:35:53.660341+00	8	Zlecenie 1923118  Pepsi Multirack	3		6	1
6	2022-06-29 09:35:53.66575+00	7	Zlecenie 123123  Hejka 2	3		6	1
7	2022-06-29 09:35:53.668483+00	6	Zlecenie 1321  Hejka	3		6	1
8	2022-06-29 09:35:53.670814+00	5	Zlecenie WZP/1234567  Test	3		6	1
9	2022-06-29 09:35:53.673024+00	4	Zlecenie WZP/123456  Paleciak CC	3		6	1
10	2022-07-11 13:20:53.322374+00	8	tester_manager	2	[{"changed": {"fields": ["Email address"]}}]	8	1
11	2022-07-19 08:28:07.697206+00	1	IT_User	2	[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."django_content_type" ("id", "app_label", "model") FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	orders	order
7	orders	item
8	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."django_migrations" ("id", "app", "name", "applied") FROM stdin;
1	contenttypes	0001_initial	2022-06-22 21:03:02.829726+00
2	contenttypes	0002_remove_content_type_name	2022-06-22 21:03:02.843904+00
3	auth	0001_initial	2022-06-22 21:03:02.929226+00
4	auth	0002_alter_permission_name_max_length	2022-06-22 21:03:02.937319+00
5	auth	0003_alter_user_email_max_length	2022-06-22 21:03:02.944679+00
6	auth	0004_alter_user_username_opts	2022-06-22 21:03:02.952272+00
7	auth	0005_alter_user_last_login_null	2022-06-22 21:03:02.959932+00
8	auth	0006_require_contenttypes_0002	2022-06-22 21:03:02.964659+00
9	auth	0007_alter_validators_add_error_messages	2022-06-22 21:03:02.97296+00
10	auth	0008_alter_user_username_max_length	2022-06-22 21:03:02.982078+00
11	auth	0009_alter_user_last_name_max_length	2022-06-22 21:03:02.991246+00
12	auth	0010_alter_group_name_max_length	2022-06-22 21:03:03.002667+00
13	auth	0011_update_proxy_permissions	2022-06-22 21:03:03.014177+00
14	auth	0012_alter_user_first_name_max_length	2022-06-22 21:03:03.022718+00
15	users	0001_initial	2022-06-22 21:03:03.10099+00
16	admin	0001_initial	2022-06-22 21:03:03.152389+00
17	admin	0002_logentry_remove_auto_add	2022-06-22 21:03:03.165752+00
18	admin	0003_logentry_add_action_flag_choices	2022-06-22 21:03:03.176253+00
19	orders	0001_initial	2022-06-22 21:03:03.1917+00
20	orders	0002_alter_order_orderdate_alter_order_orderstaus	2022-06-22 21:03:03.200967+00
21	orders	0003_remove_order_orderstaus_order_orderstatus	2022-06-22 21:03:03.211545+00
22	orders	0004_alter_order_orderdate_alter_order_ordermanager_and_more	2022-06-22 21:03:03.223052+00
23	orders	0005_item	2022-06-22 21:03:03.246672+00
24	orders	0006_order_ordernumber	2022-06-22 21:03:03.25608+00
25	orders	0007_alter_order_ordernumber	2022-06-22 21:03:03.263765+00
26	orders	0008_remove_order_orderstatus_order_isdone	2022-06-22 21:03:03.276338+00
27	orders	0009_alter_item_options_alter_order_options_and_more	2022-06-22 21:03:03.320868+00
28	orders	0010_remove_item_itembander2_alter_item_itembander	2022-06-22 21:03:03.343324+00
29	orders	0011_item_itembander2_alter_item_itembander	2022-06-22 21:03:03.3549+00
30	orders	0012_alter_item_itembander_alter_item_itembander2	2022-06-22 21:03:03.363469+00
31	orders	0013_alter_order_ordermanager	2022-06-22 21:03:03.389581+00
32	orders	0014_alter_order_ordermanager	2022-06-22 21:03:03.449309+00
33	orders	0015_alter_item_itemdimmension1_and_more	2022-06-22 21:03:03.504937+00
34	orders	0016_alter_item_itemdimmension1_and_more	2022-06-22 21:03:03.565806+00
35	orders	0017_alter_item_itemmaterial	2022-06-22 21:03:03.582995+00
36	orders	0018_alter_item_itemmaterial	2022-06-22 21:03:03.592248+00
37	orders	0019_alter_order_ordernumber	2022-06-22 21:03:03.612298+00
38	orders	0019_alter_order_ordermanager	2022-06-22 21:03:03.62593+00
39	orders	0020_merge_20220401_2041	2022-06-22 21:03:03.63041+00
40	orders	0021_item_isdone	2022-06-22 21:03:03.696352+00
41	orders	0022_order_finishedby_order_finisheddate	2022-06-22 21:03:03.725225+00
42	orders	0023_alter_item_itemdimmension1_and_more	2022-06-22 21:03:03.741759+00
43	sessions	0001_initial	2022-06-22 21:03:03.769261+00
44	users	0002_rename_is_customer_user_is_manager_and_more	2022-06-22 21:03:03.791778+00
45	users	0003_alter_user_is_manager_alter_user_is_operator	2022-06-22 21:03:03.812154+00
46	users	0004_alter_user_is_admin_alter_user_is_manager_and_more	2022-06-22 21:03:03.833965+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."django_session" ("session_key", "session_data", "expire_date") FROM stdin;
hcwj6gaegs9urterkz4wdg96hrexmiru	.eJxVjDEOwjAMRe-SGUVJIDFmZO8ZKjt2SAG1UtNOiLtDpQ6w_vfef5me1qX2a9O5H8RcjE_m8Dsy5YeOG5E7jbfJ5mlc5oHtptidNttNos_r7v4dVGr1WyuplhAdaokgmeMRHXgHnFNkjHBiCaTZEVCA4pGTP7PPUoqgRwTz_gAsEzjV:1oAtxx:3TAFn7MRBFB5Bb5MN-dn_5su1wj_rGfheelF5CzkNtI	2022-07-25 14:00:49.023525+00
3ymlfsw8m86a0bknbtuxs86mr011jvc3	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oIaFY:aecjBivl2GqNGnGMx0oJPqSwLmhEdVKY6XAhRp2sY5s	2022-08-01 19:34:44.826088+00
g95l1vynizq7ma6zthpvl2w264slwlx5	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o48Vh:n5Fmi3ssWlU1Dv9Ap9dW2LqY8txSCcJcGP_6Ic9kF_k	2022-07-06 22:07:41.689797+00
8gwkqmaqw74r2661ghgjojq7z369s5nt	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oAuUX:-7jjTE1_avFV2zvPQUMLPegaGf9azpwIk-QkW1FbExk	2022-07-25 14:34:29.452751+00
0m1zhdo2a8werkfp1qlph840atvhjgmc	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o4IoU:V8nZhf0fIm13BdlgyF7Q8RLxMKTrubzqrbhWbvqHE38	2022-07-07 09:07:46.365641+00
mcruvk5jb8ibj6iy9n209ohstxbzvdhb	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oG2m7:DouFsf256V_tweYTS3PasBWLQxR7O0xMJQgXgVHkMR8	2022-08-08 18:25:51.038828+00
7dcfl0g0tide2p6fzdktxwvaqb2k060l	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oIjBr:un9ALUjW4gPQlAqLnIf6EtbJYW_qoAmLRSNWY4aedY8	2022-08-02 05:07:31.301156+00
av9urjmhor97qqqjd4ynvgzytq6f25wz	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o66J2:ICjiZ7CpbZFCwB1AW8ah7JNAdz_GoIUL06Z-UJIGjTM	2022-07-12 08:10:44.781072+00
z7ymi8hlyagyn4a3tr78k01k3anbkmgy	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oDOnj:FoUNRqmbntIZq81SaQ1kfIBDm3ZLaj35t-brO5L6qxc	2022-08-01 11:20:35.078309+00
044qs0jtpwmpusagon8h5vlivdpyrpyu	.eJxVjEsOgzAMBe-SdRWR8IndZfecAdmOKbRVIhFYVb17QWLRbt_MvLcZaFunYSu6DHM0V-Mac_kdmeSp6SDxQemereS0LjPbQ7EnLbbPUV-30_07mKhMew2K0fMoVeNCp20t4gKCA5TgAaTBtqo7JuA4ekavAdUJ7lULHMih-XwBAHo31g:1oDSMA:oiJl3z_hBqSH1c94k9ufrPF14Eo_-H5KKc-BJV1kz1U	2022-08-01 15:08:22.471899+00
6b0p6w16g2lq9276qh3bdwexrixc7ag1	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oGpUf:XVlUw9LG9U2S_fryK-AFkakQFAu35Fo_vq1AenEvvC0	2022-08-10 22:27:05.417017+00
iyv9j0i0171r37t6eflk14lkjfruwiev	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o6H2O:ZTB21HqGVrU_fykGd70JJICgyD7zBMGw26p_5lcht20	2022-07-12 19:38:16.549189+00
zdtkt5s2syaequmlvsdndt397pru0n98	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o6H6E:HIflH1YfGUdY7hbdJq1uilsbcm-Kd9W_2q6VstK_XAo	2022-07-12 19:42:14.069992+00
fliyjjpqctc4st45gkgo13vs7g99m3u1	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o6HSx:y-j5GSZGrUTl47KhkuN5y6ZpQc8IEY74x7Svsp2A2gs	2022-07-12 20:05:43.511272+00
liws1rqm6j2zc7wpnadm0uzy7otvujfp	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oH21F:u2jJ7MKX_az0kWwer1QYf9UKxRoyEpOaXCtqNu758Fs	2022-08-11 11:49:33.502184+00
wlic8x38gvznksy32b9ruoo992bo8icz	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o6TjF:syS8sZ3BI-tYoehXFl7tToRS0-GVz07ZxZ0ubxutKVg	2022-07-13 09:11:21.342517+00
9drfqq8mmoyyxehprlm5p5e4vhtu1kn8	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o6Tlc:vf0t23IdEsJnWyorsfF21HTQ06NKlyRtP6g4EDlz0sQ	2022-07-13 09:13:48.241293+00
222ln1l2825rr5f79c892i7rhqepxm9b	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1o84u3:EkrX26ixhsDfYYtx06wCYe3NweBMkwmuWBVA-PkKcqM	2022-07-17 19:05:07.736599+00
qhif11xjibnpk0pulyu4vd8jwf8a0urh	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oHu5H:y12KqWiz8ceYQJtlzW6fXWXsCyi1tpPTNZlWVWsBkcE	2022-07-30 22:33:19.298822+00
uhxpgijk21omqprgf0i3p8c3z52kthmp	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oAD3a:nyzGjrQZPyajYpBgZnYDTPjclCOHSWdQSNIfnE2fnCk	2022-07-23 16:11:46.885411+00
hbp0dv56po4nwgt58q7apkncepx1s385	.eJxVjDsOwyAQRO9CHSHMz5Ayvc-AWHYJTiKQjF1FuXtsyUVSzrw382YhbmsJW6clzMiubBDs8ltCTE-qB8FHrPfGU6vrMgM_FH7SzqeG9Lqd7t9Bib3sa_ICpcckUHlwAJK8Ho3EEa11RvuBtFJZeANoEmVjk80i2z0SanCOfb4NYziD:1oApeF:1VNriJra99Frh3LcJRnr-eB_JII-fg3PBuc4H_4Wo2w	2022-07-25 09:24:11.592445+00
mhgbap34tgflvpq2hgnvs8ytmfwnsnxv	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oApxJ:n0kh4XPm22owAXHTnBfXy7zxZ2w_kO1Quab43mCMUYw	2022-07-25 09:43:53.674866+00
mlqrfetw8jkhjuewhpy2cspjwv6sh1qw	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oAq3m:bl7W2QYR8QdvbhvzDVkPH70JkSsve28YGMX6BUhZC74	2022-07-25 09:50:34.46244+00
rcdfmfkzohqdyp1h1059bmxzv5psw4k0	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oAsI1:fVRLQpM3AIVdFqVN4wD5MYmt5vXF7hnllWifqGkL8KA	2022-07-25 12:13:25.43414+00
l7c30ie7vrhgf9hccjeg55pq1zzrcoda	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oAsIF:xUMqMsbqyoTIMCX1QkIrvtxmMrwTd35YlkRgnGmqZbI	2022-07-25 12:13:39.917805+00
k2dmuu47r0ot40hp0b36p5ar9395qobd	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oOAoU:6KzF8-RezQcGuj4UQ9VWPOxDF_ZfWHQ7v8WnCGBeKFc	2022-08-17 05:37:54.295935+00
fbhb6q7jex7ibtm9g94ezbjxpy55dts4	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oIl5o:kWifyCvZ-FAPOiJeDUPRN5TTjYeQKAXacC8XU7vq4oA	2022-08-02 07:09:24.003682+00
y9hw0nlfxc41ydkf5pftu961bfpe7rqv	.eJxVjEsOgzAMBe-SdRWR8IndZfecAdmOKbRVIhFYVb17QWLRbt_MvLcZaFunYSu6DHM0V-Mac_kdmeSp6SDxQemereS0LjPbQ7EnLbbPUV-30_07mKhMew2K0fMoVeNCp20t4gKCA5TgAaTBtqo7JuA4ekavAdUJ7lULHMih-XwBAHo31g:1oOKio:IhO50yWa7n2Pb2BmtvMdxDdnOX1SiH9Gfyg2aKY-Wr4	2022-08-17 16:12:42.732782+00
7az0sud6bx5yfvxin6tdx95gulsr5ygw	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oP3Ye:Se1o5WRny3S2omt8QEwz7Lv7bto7rvxIIrmhcUlf31c	2022-08-19 16:05:12.902053+00
xzjt579tlncbb4wb5wcavqqnzx40kbnt	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oIsi6:IQiWtD_cBzm-0nU-NpXvsm3U07nu4h-Bdx3eDsQLfnQ	2022-08-02 15:17:26.321867+00
juoso6e1kvrpfldnswsiypiyjjjjkev2	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oNun7:iP_xSMIHA9tFZr_GCit_IXOQLFKPLxXJrHd2jZCUSnA	2022-08-16 12:31:25.100708+00
xzsltk51ip63ff7fssux36rsv092972s	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oQSxA:pb3vcBxtZ67gT8LCz4U4q6y1auw4XJMS7s8rInjIBog	2022-08-23 13:24:20.523364+00
thhun9ipi1a5pnntiljy32qffxrezx39	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oRYm9:npGUXaFyCpYM80L6LAigzTWIdcvOFwEjyWhAcTr8Wmo	2022-08-26 13:49:29.053222+00
g23pn3vgr0lbv6hm09lvw7ket66hmg8c	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oSaVp:JsGugyjamR5f3HemhutuN5p4PAkoz9Ft_31QXpbAepg	2022-08-29 09:52:53.233116+00
indulw4hnhq0t2qukhvf78ra9rhkfqxe	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oSdxM:_4Z76RAb0BGBrv47M4gEyMMdxldMerLJyUvLqsypuIE	2022-08-29 13:33:32.16471+00
t1favffqj50gmhmj0ry1g0fi7m6evcny	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oT2GT:ze0WStupr5rSf3Db6RKDhoLcqqD1TMvvAqGvDpJSfgo	2022-08-30 15:30:53.996234+00
9f9a2lg9sazwz9mks07oij4d8zgjh2q6	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oTQ6o:MV-w70feQUiHo9UzsogqsJTtiM4VsMkt5l5gJK539l8	2022-08-31 16:58:30.687021+00
heqzb6r0f8ulsedf2a1f5ezh97ok2gl8	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oTgoy:7z11kqsRa1qgRwXUREiD_fvW0Fd6_SLG6YLvkEquHgU	2022-09-01 10:49:12.515539+00
faqwub84tcn8332a216jpgz4jj6xnzyb	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oTxrc:81wsjxKjVMTAsRj_9qEnoifMUynwZCPVl6q8D8hOU-g	2022-09-02 05:01:04.580452+00
u7qf9cx0dg0iccuu2h416en2494qe2d9	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oU5e7:hfVC67VPIwRS1ZT4EpDpUOibFTWPv_CNCKY573jhup0	2022-09-02 13:19:39.401813+00
17rtz1rc34okqaa8iutcnhnh7r8kv7nu	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oWJQM:21tEs8Yh_oHgdmfLu_YSXS5BBgGQ4vKJTdwDVGYzu-A	2022-09-08 16:26:38.504814+00
0tevy0lslvolrs2bg8okxwoqzryxv80q	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oVPuX:Jbsi1pHPin2IdlTZN3Nr3o0uPty7FTzpfGCJ9YgsrvU	2022-09-06 05:10:05.530657+00
3wbh4wh55u97l66zs8gzk903z68r3ea8	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oVwQC:Q4WKLxTg4ZMO-hn6AFEkUKc1R5xBAvmcZpMMrzMmJMY	2022-09-07 15:52:56.350775+00
8aku9lvedrj2gvftz5fy58jetgxdorb4	.eJxVjEsOwjAMBe-SNYrsuF-W7DlD5NgxLaBWatoV4u5QqQvYvpl5Lxd5W4e4lbzEUd3ZBXCn3zGxPPK0E73zdJu9zNO6jMnvij9o8ddZ8_NyuH8HA5fhW1vDChUIJaUKrDNpUIMZEgcJfdcnDB2BgSFy2ypKTRoSIdYAJMm9Pw6ON9M:1oYtCe:7JKC20wW3X7v5RuVXKX9IvMbD5Y8kM0BdlfO0fTzx-U	2022-09-15 19:03:08.76266+00
eerwb97fjkuv0nnglt6sqyt3w8t0k117	.eJxVjDsOwyAQRO9CHSHMz5Ayvc-AWHYJTiKQjF1FuXtsyUVSzrw382YhbmsJW6clzMiubBDs8ltCTE-qB8FHrPfGU6vrMgM_FH7SzqeG9Lqd7t9Bib3sa_ICpcckUHlwAJK8Ho3EEa11RvuBtFJZeANoEmVjk80i2z0SanCOfb4NYziD:1oVwWj:Lc4_yeu_EHQAGewIsziAe26PO20jLMacOE4Z37H1kB0	2022-09-07 15:59:41.939511+00
5nkwml7xrhiw2rde3vy7btndyaimy7q3	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oXfJm:CN8K7hOqqrcBwSmxi7FjC8N0DE7SXJTXqAiNsCT6JPI	2022-09-12 10:01:26.881282+00
97zgcktj6dma19ir5fcn8j5sodh9do5x	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oYKgW:4yBx6SOMsCh0nhlymV-F4US7uNsIQ5Ebno_Bb4xtxog	2022-09-14 06:11:40.866438+00
h6nmlwokvjyjv46ne9x354b09ubg8rub	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oYTah:F0DtE86-YNoNDaQ1Akcip-LYnb5pSksH5W4zkcCFIe4	2022-09-14 15:42:15.317974+00
xueo1uw95bxlx0j4qa3td324b022nt0g	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oYg65:jr0riOAomRkJ0T9L00fuP-iV1sEaOxNRh-N8fJ39-e8	2022-09-15 05:03:29.938259+00
wp08o4dld3vjd2f5es8n0d58niclly4a	.eJxVjEsOwjAMBe-SNYrsuF-W7DlD5NgxLaBWatoV4u5QqQvYvpl5Lxd5W4e4lbzEUd3ZBXCn3zGxPPK0E73zdJu9zNO6jMnvij9o8ddZ8_NyuH8HA5fhW1vDChUIJaUKrDNpUIMZEgcJfdcnDB2BgSFy2ypKTRoSIdYAJMm9Pw6ON9M:1oZExY:Rrn5pS1cblqO3GIwxgZgBu7zvd8IyxP0iepT-H02OHw	2022-09-16 18:17:00.517177+00
dio6rpglyiooqidbhn33pgd9u12u471d	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oadhR:ODAl7fpXkZOWaQyIrI3uUF6qSu81U9XOlzsMj9eDMHM	2022-09-20 14:54:09.166261+00
6rsqyia7ka3nfqgsd35zis40ni7s828r	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oInJK:9ZkoTDpGvwhtLQMss6RF3gwTt3M7YDKbatyo8erhLvs	2022-08-02 09:31:30.222041+00
5cg70po59hu6uj9zum76z7rlu6psd858	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oIwE6:NfIAjCXzhivuX00jmUDNGjlJl65Ru11eOHIjYAOM6vY	2022-08-02 19:02:42.120804+00
xgkinfj4d3j4m4u78av0swjin67wiicx	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oJS8i:i8FNipExTmiyKBaTe2-YVQ_gtiZkGcARAztIxgel0HY	2022-08-04 05:07:16.712616+00
i1uxk1s68sy3kpkgz0zeca8c39r3r0mi	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oOFHQ:AB7POfsNeT6bu2hXe9XZiZsUQ463Pw3lJQDiBHMCNmU	2022-08-17 10:24:04.881504+00
8d2nhupbd5r8o0fb1hh3iqmjdd98p7nd	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oOa3z:Z9dA_nfZuWGyfwQHMBAdsJAlcb1v3L0o4-RoC6YtE-c	2022-08-18 08:35:35.99232+00
12hrnidrqce5jood71sdn6o7sos3hfrc	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oOtHg:4RmhbPEZCipllVQOINRn0zpqs8vBY0RDBJ3ru8nq-L4	2022-08-19 05:07:00.321258+00
sfikzsy486px9zwe4x96twxn7860wt7k	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oPFnr:t8MNB_JP0uLsMSaKuxPnxtHuzkcoZlKx-fHVRVDEOB4	2022-08-20 05:09:43.577874+00
6fwe4o2bk0wqw25nk11hzz665qe4jr5y	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oPyvw:cqaUc7pf8Vzj4Skxf5RpoBUEqk1M0j_ztNNZ_f1tFJc	2022-08-22 05:21:04.091459+00
ia1y30dpppcr53lv0tef1ciatxa3f0l2	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oQ4WM:kusY14shjaTrawgUOYZGF9egciATgTM_HDA0iOejPFQ	2022-08-22 11:19:02.499019+00
jpcdu5bgun4pnu4frgo3w21juyvu209q	.eJxVjEEOwiAQRe_C2pAhAwVcuvcMBIZBqgaS0q6Md9cmXej2v_f-S4S4rTVsg5cwZ3EWyovT75giPbjtJN9ju3VJva3LnOSuyIMOee2Zn5fD_TuocdRv7bzKTNlazYQTOFO0QwdswFmIqBQaAMcYEfxkyZPPRRvSBlJRgEq8P-h0Nuo:1oKyg6:598R-pUZzfWoTu0QVGDlRnQlCMTRhAfTJuOGQba75o0	2022-08-08 10:04:02.080644+00
mb8lt54a31sikmlm9ldpl0y1wgxrg59e	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQ4d0:fCCO2pZeK_Cb-CKbEJQfgWCzmURePGYHfFxeHiWAGqw	2022-08-22 11:25:54.257563+00
k8jix74iioh1uiqvcu07f2u2zqcx0npi	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oLLUT:mFmixX9sW4y91q6vbsBr1hK-DPwDkbeqU_rnqpXdudM	2022-08-09 10:25:33.431831+00
wj54zw4oohohv4n7vkaz9to2xzuhx46u	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oLfQg:WZBfjTnmDj6txTYeAn7Qo83TbHKRL-xBVdiviqVcmH8	2022-08-10 07:42:58.906793+00
uuiq60wf6w15sdv9ujujvztd92phei7j	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQ64q:weJtJxQtIKRn0OPbnGyZdViL1JRzmm_vWK9phR0QcQI	2022-08-22 12:58:44.670519+00
3agyqvwsaderu7b27w3m5al2pqrxbpi7	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oM4ik:tFg_GJlh332_Ukp7k6abmC-j1el1oeV8Y3oSNHaVuWM	2022-08-11 10:43:18.085601+00
oclyyyrwkoijxes17oxqicidtspah04b	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oMTe3:JeR-eqI9F9R06KlokaRHT236WSAAvjKFwSkwTSiZmiA	2022-08-12 13:20:07.888248+00
v6kd0hewne09ycz9n04xcwbs11kjjy1o	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oQLAY:cYXEuc6KoS1j00yL6PUZxAN8O8umH9eacyrDsj01TQY	2022-08-23 05:05:38.484561+00
ko7l4ximqz3dn3ip75pfkx35nvzmvf6g	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oN9hc:5Zmd2BXhetBHPKR9JLi7aH8nyPZRagKQ8ZRGpsL2iDc	2022-08-14 10:14:36.498552+00
w4g58hcpv0o3yk2mocnh9bolifqml1k2	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oNVGy:Obb2XEk-KNp3W-01U7LRbk7QLeBqx-nC5xXFD3mnWbw	2022-08-15 09:16:32.43428+00
q7ksi8tojgglcmzwo8go7mkx7ky1u3q1	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQUM3:sFG_nHUuvmUaClnaLPGDRJqC22yNPQqobRlrqGMXgxk	2022-08-23 14:54:07.46131+00
7phum7wajrh5wf6dws36aumphzq7ibd2	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oNoJl:o7qkfASv74IQiIJYfQ7DoAc1mZftPAuTEfI8uFyOjSI	2022-08-16 05:36:41.484502+00
dhzm6f3i1paj57enjjazweyfetzuo8f2	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oO2w1:nlRRbNSQGXU-Ny9WS0aepbDcBpLOFCv26uBunFm4eP0	2022-08-16 21:13:09.838566+00
75zjmre4teeye5vlz5mk6ybcfq9092s4	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oQot3:Nk7Fuglxe_5W-0qCr0xcMuuqkh79y2dWY4Bs0YLyeug	2022-08-24 12:49:33.341566+00
s8gcaslz6cwxeuvirzmuc9w05teh4iju	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQrk2:ph2R26DepSeykcnJqYI-3zwfShW2AH_UxEvyy8Dwlok	2022-08-24 15:52:26.201719+00
kw4rcp0jjqkdi0zxnwbe6juptzi3xuem	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oR57e:oWCvmX6KLY6p6g7Ji_gRqiHIG9LHraAzxIo3YM29zks	2022-08-25 06:09:42.20558+00
mo7couunwtxiwb94b8o8uj2ggu9tcrdr	.eJxVjDsOwyAQRO9CHSHMz5Ayvc-AWHYJTiKQjF1FuXtsyUVSzrw382YhbmsJW6clzMiubBDs8ltCTE-qB8FHrPfGU6vrMgM_FH7SzqeG9Lqd7t9Bib3sa_ICpcckUHlwAJK8Ho3EEa11RvuBtFJZeANoEmVjk80i2z0SanCOfb4NYziD:1oHK46:usN9YnCJyGCu2cvWWfF1JiGvQk1X6YJ3yqqKooIRohI	2022-08-12 07:05:42.392745+00
siddn3amsf5wxhkqbax7c1g7ja1hou2g	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oTyvD:eclXXFaaxnjRS_Z7FejB7NxIhuP8-0UnICioOA15gNM	2022-09-02 06:08:51.813727+00
uj9c4epw9k6k1u3kaaf62riag7nar8ik	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oJUjM:skiD5OwD5zre4lER2nsgYctlzKRfNIKq5DArl6kQK6g	2022-08-04 07:53:16.6572+00
waodr86la9tmnkjqjjtx318lasn5egn3	.eJxVjEsOgzAMBe-SdRWR8IndZfecAdmOKbRVIhFYVb17QWLRbt_MvLcZaFunYSu6DHM0V-Mac_kdmeSp6SDxQemereS0LjPbQ7EnLbbPUV-30_07mKhMew2K0fMoVeNCp20t4gKCA5TgAaTBtqo7JuA4ekavAdUJ7lULHMih-XwBAHo31g:1oOGAR:mKBgiTdTIQBb8Qj4kaH2K7icTuE_r7BNW_AdqMAJeT8	2022-08-17 11:20:55.263303+00
37542qc0xty0cejx12qslsajne95vvly	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oU8ak:H8dlUbq8PHLUJmnG5VO4kQPFnq5hLz0gcpa2-X2fuTU	2022-09-02 16:28:22.633956+00
oizq5dxxkisy0m3rx56jorw2q7iy13rm	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oOfpE:IsbVP985ao22tqFqZQd8z9hVv73ik-cvaz17T7xTBEA	2022-08-18 14:44:44.110386+00
7fvgfzdn0nedgfbfzzyn0axnvtl94msr	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oLkAG:yUcDOe_0nuczagOWI1Y9xAuIFJ89m9mtkcsgDy9Z8cU	2022-08-10 12:46:20.765666+00
76w66rdcjhl4cjpkkfmd9psa38wxh6lm	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oWWDo:FlkihPwtwA23qTSngpH8adAmiOISO7Y2RH5oB0GBjZc	2022-09-09 06:06:32.674241+00
7z5cv8e4r3npip9b801r88corc1m695a	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oMX0r:uYV_D7pOYW637VxD-vyEZLi3zxJ3ivlxl5caSaYfJS0	2022-08-12 16:55:53.744674+00
v21ebs41qrod7yd8ewmnppu5ozpsleby	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oOuBF:62WvkrbWzUsCclohEGUmJUOKqn_OOV-jrP4FBR3ZjPM	2022-08-19 06:04:25.890698+00
qf77ls6s6hjegi1etu520kygogkm72wr	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oNJ7O:wZCljBsLev9QhKJ_M2cwNTbHFvW_I1Q3hFsJnJun6Vg	2022-08-14 20:17:50.102751+00
ub7ilurbbom83w3yvvet7y80erepy89z	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oZ8Tr:uiHvYNomb6SnUH3ltECmf8amAxg_dr3rI5_wVEsRoOg	2022-09-16 11:21:55.82617+00
08tteucjihw3o7fom4s4pp2we80arpht	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oNoTs:BAF0pkSXf2YdsRjUjf4xkt0WxtKNYNyT7_OC3G2Sd6g	2022-08-16 05:47:08.688596+00
bttd22kmvnhx9x12d8o2m6f68jonamyi	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oPzTB:4D9_iJqBpJ0tmWWYArKVbYD5kgkPGN4EJya6k4r4Bps	2022-08-22 05:55:25.85086+00
muxoo3vzqmohghmcmlczv84czcmbjse2	.eJxVjEEOwiAQRe_C2pAhAwVcuvcMBIZBqgaS0q6Md9cmXej2v_f-S4S4rTVsg5cwZ3EWyovT75giPbjtJN9ju3VJva3LnOSuyIMOee2Zn5fD_TuocdRv7bzKTNlazYQTOFO0QwdswFmIqBQaAMcYEfxkyZPPRRvSBlJRgEq8P-h0Nuo:1oV77E:rn8o3c1gwuDhJevkQyqXI8pzidPgS7vLIxayWNQpgKA	2022-09-05 09:05:56.841153+00
6eeemz5j7tz66hrtkyh8mz3w5cjsbfmt	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oQ714:ZPfABaAqb9D41QP57U8HbZiKLqEYfnOMHoDqn0xMzeI	2022-08-22 13:58:54.237359+00
yjdx1u8ajtb62th35f9z5arv33ntq7fy	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oVBKx:lN7cP3-80AKyvQyL0ogo5V_7fLJ_wbFITbYIAWgu7Eg	2022-09-05 13:36:23.501199+00
7xtac9crdkyldpisklgp0c4hd6m8mbo0	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oQN0Y:8ypaNUXu27e0n_vx9iI5VmGn_pl-s8sRF-zfy92_2m8	2022-08-23 07:03:26.608871+00
5zb6sdfxddy2dado915fdzcajul1yg3k	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oVwme:z19aOVhbtSLDhOzG4N3ZXYvjSI9uYmZPdBWuNSFccII	2022-09-07 16:16:08.008624+00
0d9gkke1tuaqi296cu3zs9jgz36z2p4o	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oQUfi:4eUYf3ZGlaxAeWvyRQyOFoqDpF2eI5JlDDc80oyTEak	2022-08-23 15:14:26.112226+00
ex95y5gvhzdniekvkqfbk3w48a2tum5n	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oaEZr:HhKwzFzPudBQV8xxPNgnmXXrVMa624QK4YGUBPtjQYo	2022-09-19 12:04:39.680624+00
ahpbe5thcb04byml0urvdrjwci9m2q7a	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQp6s:61dVk-zvaz83VK2Dtbkg8NkvJnD_BYOilPt6O2YW6CI	2022-08-24 13:03:50.464465+00
ekh4wu8qwx61stgh07wa47y7hdixqn4j	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oRCuI:jb-R_ey0lGSEBwoJgz1svvw1Hc8OtSHJdx0UOIey-PQ	2022-08-25 14:28:26.86979+00
94yxk31mika3ig5df72zc95ns6p4c9x9	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oRQgT:sBIO3mtOjImWH6vNd0XOczqxa5rOdisaWjcIoPS0L5s	2022-08-26 05:11:05.57803+00
5ybpdh86wcwm82nbiuie2rfcadmg45uz	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oSf5e:abNh5TexomgUYp6mampWHvYIKaaiWRJ2A_D_nCDTQeY	2022-08-29 14:46:10.395969+00
4yf91kdysvhxukxqeli99qxyui03thoi	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oTjby:IJ4I08ChtRnSLScJAWiI5kDeyMQ12q5jRGoa9odFmrM	2022-09-01 13:47:58.21843+00
qc0x9uqhsm5jdpwb7tbp2z89e3qwruuo	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oIrgj:xed8Q-XyutrfLRlGq-VbVk5b0ZIBvqRiGNw_f3RnlKQ	2022-08-02 14:11:57.59312+00
1wztypjxhtp3vjeninemw8hipu1plhgo	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oOHi0:HDBP_Uy9TADD1bGZhw-5N-11HowpIdXUitzY8ug9lzk	2022-08-17 12:59:40.507669+00
cv4cfxk3oy27ycopq1sg8aaviax6upzt	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oJbrf:wzIPqxeJQXBMxPUeAlPY-l2YpuaUxtE7uzk_xyJY2rQ	2022-08-04 15:30:19.122944+00
xzlqg6jkae8c4jqjlzd7qhweif3q5mrr	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oU01B:AJeQ72ZIm4mjVuaqaOXVSQv4jr0qJA8GOrAMfTKIJDk	2022-09-02 07:19:05.641967+00
jayjg8m0d122az993wittv9z9yjr45ub	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oNstD:lDD1YrU51n-VnoOnXWVqzu_Txg8cdOCLh7BU5bOExbw	2022-08-16 10:29:35.207226+00
adn9krfagtca9mqr0t9ux7zffwefv3e6	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oOfuS:hESooNSap65pxqy3Tt8Q-NhFIJg1uARN_o8Sc8pDo4c	2022-08-18 14:50:08.385257+00
ssxjjwn7yw5xscvya8nuu4t6pwe06cug	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oWg7d:QH_DxRfKLjabBl_LVk2eL_CJtECdcGmowA1_8bZ8Lrw	2022-09-09 16:40:49.970426+00
4gked24ylajyhvjll4lo3zvrat5kz94u	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oOzHh:chpRQ2U05IVStkB_ysCcNNpFtY_0N4AzJGhga5IVsPw	2022-08-19 11:31:25.878294+00
9z67ig3g2typ0x09j9eh4130tqhvbh3p	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oULSV:9FOSlO1DW9jaqNMvgfbGzNzN1CkteuAkjXr88wUkhbc	2022-09-03 06:12:43.457947+00
s85g5kgrzka8ce1pe03uaxk0sqlid48q	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQ2bE:wq2iomL9q-n0jmRd88n9ODJFy8uwjdnD04rsqtI3Ufg	2022-08-22 09:15:56.625668+00
h3lflchnc32lvzpo93ntjg67c1o6nbbw	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oQ8Hn:zpfku-HAVNsABxg1KDoNdvs9_qzfVWTBb52EAeFHvHs	2022-08-22 15:20:15.220071+00
97ut5x0xh152rfiuao288du47m80iuza	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oUajZ:Q27zlOJXTl5eqzWwEIEiYvrsyx3Dc6Fbjov4HOBhVsY	2022-09-03 22:31:21.956929+00
0lupd11bpvc00pau4iwe6cy3o3md171m	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oQQG3:F8viU1NakZsPw0kZ8cdryNrRpXo0-RIl3Q38-xZJZKo	2022-08-23 10:31:39.397224+00
6m08v2803kbypiomjz3g1qpkwsqvgozp	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oREtx:VIu2VezOZ0cFH_3xjqYwrOX7fknPSme6zmYAyWb5IpE	2022-08-25 16:36:13.472081+00
qec2gsjjvv1vsawkukywff5fzhr1a1r1	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oV3nU:ZiVCJmKqwnjKnJEs5BOPoP7U5dkyWtl-JWVArMSonkw	2022-09-05 05:33:20.545261+00
h3voplagtwrh0b4n70dyewce8wijpau3	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oRV2R:F5QBP4IT-vLKf97c_uw3VIQFZ69X9PYZcHSCl7VgPdg	2022-08-26 09:50:03.311901+00
xipt9f03ogcnhofxw3vmmsuzqseunpr5	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oSWYO:OWI7sghTXF5vusK6T2SeD_Kd_owaNERR-QMBjFpO8YU	2022-08-29 05:39:16.507163+00
21zgai4kfjb7tnyqce6uwrlgojoyh6jj	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oSdJH:BuZ-BY2JLM3CVg1J2Iw0KwBjzTsT6ZfMeHoBWEJOUXg	2022-08-29 12:52:07.238134+00
ggvab2e6yffgf9u81os9nl90rlxez1n2	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oSfDk:qeHX9VI71BBzWy7otxkWWycBalL5U9jXC6JJxJ1Jezk	2022-08-29 14:54:32.046279+00
i84y2s8l5423bhni4ts6ro0mteg0kz6b	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oVC9l:baPbZTfIfY8ImnpE30iHyd8mb2NsdkQjQ6D2Y2cuR7I	2022-09-05 14:28:53.745604+00
g2p2w5gp29kbrb2vcwi3vn4hnnonvc27	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oTLLg:GUKDB8lCjSoaplbDm0qCXoLFufy3jEMCzJ2e0fpbb38	2022-08-31 11:53:32.738784+00
m82g6r6lf5xw1yu5zc34xwylr9jz5n2s	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oTLTS:yiTP3CGM8yGWtCFnhIibJbQSd7wP_ZPy4H8z_LQMI8E	2022-08-31 12:01:34.902292+00
hpm5tkhma8c2yubsoutb8euoijc80vot	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oVfU7:FWC-BWyy_Qg_7Q2hJgBuQ-288Y1cNczkZG9dzrJOqIY	2022-09-06 21:47:51.842666+00
s8jhoa4pgyvnpldikxltzn02yrin44od	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oTbUI:G0Un4XUFc7YFgyfrT-InhlyiYW1TBChvu87QhYW0EOY	2022-09-01 05:07:30.749727+00
u4vk9bwb8r6b1z5r89lo6lgv07dmegyg	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oTjkn:cbnbuDyI32R7ce4qF5fObeSPSyDICpHuAQL0cI5epy8	2022-09-01 13:57:05.751841+00
unjp4eg5m0d0hf2j9je1i4enn0p2ei23	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oVmLn:VeuWa_8MhY7HbqOvXNvi-jP9G_og4iiJZI08IykcUU0	2022-09-07 05:07:43.561853+00
s7tv2ehtyfyqesyst95jbvzr2319j2ob	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oJcrn:E6rOSMALDsAPsVf4Z2oPw1_mdvOzo5W3O8_ANuv_LK4	2022-08-04 16:34:31.755938+00
kbnzqt7qof4hc8nz4cmf9aqw40z0desq	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oOJt3:jGZ_j0ZdzyPrCM8CfG_mhEX6SKVCZm73LXxVl7CPc00	2022-08-17 15:19:13.871865+00
7hzhq2ibda08990aw9ydv9s80d6bdtmi	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oHvIt:nSZD8TyeHUvR1r3irk26YUm_Z_nxjW-5Y9UdCzClGzU	2022-07-30 23:51:27.742294+00
e852s83smllq2e7whmts65psb7ycuhr0	.eJxVjEEOwiAQRe_C2pAhAwVcuvcMBIZBqgaS0q6Md9cmXej2v_f-S4S4rTVsg5cwZ3EWyovT75giPbjtJN9ju3VJva3LnOSuyIMOee2Zn5fD_TuocdRv7bzKTNlazYQTOFO0QwdswFmIqBQaAMcYEfxkyZPPRRvSBlJRgEq8P-h0Nuo:1oNt4H:jsTK7BOeJdkEKMy7MhdeSzKzeOrMb-3Zu_z6jx0DhgU	2022-08-16 10:41:01.370467+00
1uspwxbthdf990auj2k9438tc089vr06	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oI45v:vNqtj2JTub92DszRNGKDnTsg2BjpC9qS4-RyeFYhLLs	2022-07-31 09:14:39.620587+00
8pw4fkngthzxjyx6qcv0p3bdgh0sudbx	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oU2Bo:7RUx0GXFPuoCXlxmLyVLoOAzDoEWrIhhkYsVtx6WrzE	2022-09-02 09:38:12.71109+00
hdwrs5zhvbxs87cn4a9k6zj1pnnf8ija	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oI5BH:UmUKJLxl2TrJZht31eKZRtwQaXW4Nm9PSjTTnZHA96w	2022-07-31 10:24:15.386703+00
tlicqqtb04fpg9bi5chvpz307h5c61jg	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oP0Pl:bQrsP9787EqPL-HbPvoOVx5rYEMrPp8ye-bwL0Ylqrg	2022-08-19 12:43:49.051941+00
29zwb9216d9pdzvc1v6k0jfuzzy2kady	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oUQfU:dJ-bX_GaWTYIaU4eTsLkl8qGasCPCPWhjtsU93eVieo	2022-09-03 11:46:28.431216+00
9g1z9yhhdyfe9nhnft1y320g4nkd649y	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oI7pn:l6R1AdpALY0FqWjixnzF56tyYyLoUIvDMeacv00K_tA	2022-07-31 13:14:15.640809+00
s9l7ptbhnfactysfrom18b1wehd0d5d9	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oI9sA:irIiXBnHkRr4b9sAZLFtzSpGIW4IwwoUXGTVDDJdyxU	2022-07-31 15:24:50.178841+00
vn0ov494orc1fvsw4rsqlzv29z4k08aj	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oQQvW:pI7xm3EnWy6lI8RmN08BfE457Tkx3UzHenMg35fyJgs	2022-08-23 11:14:30.243653+00
4htjesmihsmv6uiqvcft1fdiz63icilp	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oIMkr:EBKadggrsCU3fdYrJWbpl4md8szPmvSMsfmR5XTfbr0	2022-08-01 05:10:09.937785+00
a47nnx6smkvq2b7q678xun8ovqfs2o9z	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oV6f2:ZpBDRZdOIWi0I-XChi8_OEHi_3kTS9qVEfhiiCcwnqk	2022-09-05 08:36:48.759649+00
stc5s52x0kc6c8nqwxa5yg80qdz24klu	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oRFAg:A-C5RrlQi8UtxX_HyaNtec3imHzxYQIvRFNj1sZi3Ts	2022-08-25 16:53:30.278178+00
3c6v3af9g3thimm266ttprtf1mujne4w	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oRW2O:Vgrxs4RAD5A9lhVHThbPhTDvHQRse53PYvn7M9hxgQc	2022-08-26 10:54:04.132222+00
3uaowifovqz3o2an9peulv1s1dwvwinw	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oV9fO:GYq81FhkwYZnIQFMbKgm2tamGhKodZI03Mi56_khLfY	2022-09-05 11:49:22.628878+00
ak4mdy4pzn7890645tn7lohpfpxa9o2c	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oSYVo:XEwDSiQsmOZPBotHZ5_Zp4PyVi0bDLtWQJDZpy2N6-o	2022-08-29 07:44:44.266313+00
6fweyz5zfp3l3ca9eskorioj90nrdw7z	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oYPYZ:hhL9pbqNI2wK-ne4bmwgUBBVflGp4UOonlEwS4UGD4c	2022-09-14 11:23:47.321646+00
fjytzzcprz5p3y18vlq40zrd3a9vjgxk	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oSdSM:DF3_nIfX8mU99a2viCKz5YeXtzQ91I7iO3LqX_KkUS0	2022-08-29 13:01:30.492582+00
ytidnh84cyjg2nb7t4c4vtc2po3kbwnf	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oSu1F:UmDS-uHnXVYblwW_EdHw6CneaWRNrHcv9TMvdOuxp0Y	2022-08-30 06:42:37.243693+00
3pp4w8dgcckhy8i1lfgwszg2is5c9syh	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oVD6u:NqEpbaAC_wOQgxCDDlpHGVALtMOQ-9g23g6wmRQcc_c	2022-09-05 15:30:00.550648+00
3jfoljt1uykvkw54z4vxk82zskpxynzq	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oTO4W:3w2A1Dy3b5l_XOBJ_U_F4pqGPvFr2XKCG-8yCdpbbJ0	2022-08-31 14:48:00.721857+00
e2dj15m8bghx8vz79d53p93ovat35oha	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oTetx:wdWWbbPJSgtRIt67P_pHsmA2r4ckgjmOX1WhE_S2L6E	2022-09-01 08:46:13.310368+00
dhalfri99fg7klm2vcd9suvpurne09aa	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oVvLG:or7bMV3U0ulBScxtRbLEDJy3d6wWtRGH0SjtH8ZgUV8	2022-09-07 14:43:46.196885+00
y6zldvgl0bkh1h3xijvwva3apv8gk6v9	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1oTkDv:_nknjC7ozfJpp6b0o12CmEpExAu_A8xjtnUyBLYpZ_w	2022-09-01 14:27:11.336184+00
7txcwj6k35yfs6tx9hu07zair5iprmgk	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oaHQT:5GWZ64wr1jn0xBxodXHaFB-QucGhti-5O2XZoegBFpc	2022-09-19 15:07:09.814335+00
fbzcfc6nxja1phjqq9hbo4u89kvkyaf7	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oaNKT:X8YnMkw2z6G89kBBP3Xz9XP1-K40gRGRVjI88tO8x8Y	2022-09-19 21:25:21.749828+00
ljp6r4mmiqfj1ol48k1t1bnduin64kd4	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oc3HG:hPgyekJYSJJQkz0Jeavx0bsT2RYvVOuY2NFJ2koKll8	2022-09-24 12:24:58.754178+00
3v67k4mcymivczisfzb3rjvlo7gsl5o9	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1ocfPw:3yvfLuLzG5R4ewbQQM-JPTIpdP43cnaspeAMsT3iYk4	2022-09-26 05:08:28.732042+00
miy4pi7f2emjap2qvwixsi0sja4ltc4h	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1od6FU:koTCAIQFA8ewriGJTvuPyq5gcXHvMoUN6uLcxCG_BnM	2022-09-27 09:47:28.79737+00
zu9nzcjh4tgrkgxlfo361c3yx2hogl3k	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1od6JX:G802Eu7iq_U5K3BF0Cy6xtz1chVW3A7kARSPpd_1gBI	2022-09-27 09:51:39.802642+00
1gg5lizc1ba2gyrmxkp8r61jkkptj6pg	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1odOeE:jHH6EfXDESLfg5ipRLBsuwsKYO-Brr3vL1iAe0jGe1k	2022-09-28 05:26:14.151686+00
n9e8mvqiyntpl48l74opk4tdxt1opf4g	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1odkyd:DemMCn_dpDpega8E0FZm2zxhBvcwCPK2SfkqPupstM0	2022-09-29 05:16:47.965539+00
kwbht9oc2zcx9kzsl3flw464gy6xauw1	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1odl6X:71WiQFwTWvovrYGIAOOdZwtfb0qvY_1HGQrZDzFNJrg	2022-09-29 05:24:57.960094+00
an7b47a5iy50j3hhrtz1ntnopa4mnuef	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oe7aq:9qnJ1_mGjQ6e8w7ZORZl2DMouWGIIMUg0YkC61cIhAs	2022-09-30 05:25:44.249232+00
h796qnkq41zf7r8uns4tidmcavk30yqg	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1ofcIV:FJ9Yp7lMjPdd-N1R3_EXOPNdoSugAw8XcUJRYhCgzmQ	2022-10-04 08:24:59.985184+00
tp3jzrt93b57lvvdedt2okh15sik5034	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1ofvrC:w74EJwaOAYQdiJfbCpHpzwHO-jV63t5_BVdms8Zrt9E	2022-10-05 05:18:06.831621+00
y8hu6dib6ulqjcwgr5wf90oifms9cd25	.eJxVjEEOwiAQRe_C2hBoA0NduvcMZIYZpGpoUtpV491tky50-997f1MR16XEtckcR1ZXZUFdfkfC9JJ6EH5ifUw6TXWZR9KHok_a9H1ied9O9--gYCt73Wc3ONOJBxLM2SZACMGzNSImGRdQchoMIu2WC4Y5eKLO9p5EAEB9vh3MOJc:1ogLZm:otJCrCiO6ysOUiL5EWE4eEBnRKKFKfOUmshvW80Lr0U	2022-10-06 08:45:50.419428+00
9ofh0fcq9b8hyaqyphmryp5dmxvkyw9v	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1oacJg:SqKkfTUyqulNZJnJaQ-Zh2XlNeomBgT6esPUJFthWkY	2022-09-20 13:25:32.403177+00
cp1ffi9cl0a0uultxzwn3p5ahqq9wh6g	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1ocfb3:8hX58UqVkLeQXQ-c4Sx_6l_3os6rtHgEGEi8whx8U2g	2022-09-26 05:19:57.916048+00
bwachg58dki5r81jy48z4l5gne2o39ql	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1od7nt:iJD4Hi6aZ0JKNX9BBtawuvYryhmNtXBujq717noP8oM	2022-09-27 11:27:05.590918+00
u27cuqca9h8ua1tk29316qxlb0jqreom	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1odmFL:rB4vMgMfevmN9srqWMGCFmIGwIVRZlJDMV5TPw0J6zg	2022-09-29 06:38:07.655847+00
ah9vsccgiiru1n398r99a3tvuewzkep5	.eJxVjEsOwjAMBe-SNYrsuF-W7DlD5NgxLaBWatoV4u5QqQvYvpl5Lxd5W4e4lbzEUd3ZBXCn3zGxPPK0E73zdJu9zNO6jMnvij9o8ddZ8_NyuH8HA5fhW1vDChUIJaUKrDNpUIMZEgcJfdcnDB2BgSFy2ypKTRoSIdYAJMm9Pw6ON9M:1oe8hc:SkFv3EHUZN1LOWWXoWG5i5Y9NVcAAb9c836cIiyrhWw	2022-09-30 06:36:48.164508+00
qh0n4tmmsmg6pcpmrry96x205hy7bt0j	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1ofGpZ:kI8DrzN234K1jKTTann8nwOIaCLR0J4vpz-UOuR23oM	2022-10-03 09:29:41.803036+00
h1ekrtwcpdkifk7wopsrv5x35axvc0ns	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1ofclr:oTnhLJEOKkPrw3H_n4WXDBzc1f9GVSYiiKAJGZ7wVHE	2022-10-04 08:55:19.917897+00
b90g76r9as9zllbw2hltbxiq13ldjydw	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1ofzV8:fwkgp8IxRSThZ1xiHQAeQkTY0Ti6Blo5nPReaoD-Z30	2022-10-05 09:11:34.83313+00
kupiw08rlunfd93tsh5t9tshvzi8egbg	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1ogMTh:LcZ4Q1TQkhII2S0P0mKGz5Nc8V8X5KWpr1Qh4lk0jds	2022-10-06 09:43:37.082109+00
x9c0iz2pf19gtcrhz8hu78jmbpgimssf	.eJxVjEEOwiAQRe_C2pAhAwVcuvcMBIZBqgaS0q6Md9cmXej2v_f-S4S4rTVsg5cwZ3EWyovT75giPbjtJN9ju3VJva3LnOSuyIMOee2Zn5fD_TuocdRv7bzKTNlazYQTOFO0QwdswFmIqBQaAMcYEfxkyZPPRRvSBlJRgEq8P-h0Nuo:1ogfYr:9EN80hkOlQqodCz49v67Y9C9Lsby5wBHfOEnxvRW1Dw	2022-10-07 06:06:13.698477+00
a6jm8lvoplymbry0pmadvsig3zxrxg3l	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1oaced:HqIL3RkiAc1B2_63AtV_IQ7OITIvKagd1FaeWuyroVw	2022-09-20 13:47:11.202313+00
6rozat0tlnu80tsqlgunv8725kawtmge	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1ochXr:9T6NQwmi7WBBk4GXJnql_zGOGBvcq8CBUsXkqUZclfI	2022-09-26 07:24:47.580741+00
w1q8cdcdmxkvquejdzaunsvnqg124uqq	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1odW0E:YN-DVA25Qiroq5yCli1Ky4QYKy-lquaeaJufJ6oXI7c	2022-09-28 13:17:26.463761+00
f2ebf680ei312zubf3hf7xq9v4clabjn	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1odpOF:JtH977eZqSW4SJq_mAMc8EYM4rJ3y9hQFpRHWGL_0qg	2022-09-29 09:59:31.943292+00
ctkbs7w9hak4ptt3qg40w8z7z7j83y4j	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oeGBJ:-JckJlwf_kCYLWL_PvbUIje5OF2G9Wk8AT37ICv60Ac	2022-09-30 14:35:57.54408+00
272b5qruu92orafhso0e3mdggs2vrtqb	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1ofeab:3anCfzKJxd2MLZYzIzVIn2_f-Voa02IKAewx3Pr59sA	2022-10-04 10:51:49.110492+00
pv0fge33fy66fug316kchchzbsndtadp	.eJxVjEsOgzAMBe-SdRWR8IndZfecAdmOKbRVIhFYVb17QWLRbt_MvLcZaFunYSu6DHM0V-Mac_kdmeSp6SDxQemereS0LjPbQ7EnLbbPUV-30_07mKhMew2K0fMoVeNCp20t4gKCA5TgAaTBtqo7JuA4ekavAdUJ7lULHMih-XwBAHo31g:1og5Ys:amoxuNJWmVSSbGBgoU70gw4hNN98vREUynEQWiJHlkM	2022-10-05 15:39:50.999708+00
1xgkixl9vqmfh2aeya41fzuc0bs4ohnw	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oarkm:AH6h918izmdZqHC0lRAV2BSuz_yrPSrLdGNt2p6yLMQ	2022-09-21 05:54:32.079454+00
15dh9nfcq0jq7e70h9pv4xcenk8gecsm	.eJxVjEEOwiAQRe_C2pAhAwVcuvcMBIZBqgaS0q6Md9cmXej2v_f-S4S4rTVsg5cwZ3EWyovT75giPbjtJN9ju3VJva3LnOSuyIMOee2Zn5fD_TuocdRv7bzKTNlazYQTOFO0QwdswFmIqBQaAMcYEfxkyZPPRRvSBlJRgEq8P-h0Nuo:1ochxJ:ir33wKviwBQkhJPwlsjYvsjIiKwtT_1ZBDk2CzdU3RU	2022-09-26 07:51:05.554182+00
3wfjbtfvb2spxcdzj3ssb66k785uzm9t	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1odZS6:MILOgkZNmt0Fo5IPrn20xPvUkhk7OS_c01OjQut8x78	2022-09-28 16:58:26.164849+00
ezjt7k6u171rbya2tspjiebo8wvimns7	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1oeHDR:usOtM_CLuBXmNzSJNmjn7HvwxwAFLqmFDQCgJB65vaM	2022-09-30 15:42:13.22554+00
gwyd0uctmngy34rtxpr4tiemftn7db7h	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1ofkFb:mFAc2trOG_Vjr6iEj2KrXssuvhq7lriC3n1P_XxpCe8	2022-10-04 16:54:31.193601+00
s8aljgex45owbk4v0a1ablsz3c8p75uz	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1oaz0L:tbUNFDDeyEnmCf2exmaJ6Z-l2I4_0k9ojW404Q3IDVo	2022-09-21 13:39:05.189874+00
w5ha0pbsrdnoo346hiuv16o6wnvna9dp	.eJxVjDsOwyAQRO9CHaFl-QhSps8Z0MLi4CTCkrErK3ePLblIypn3ZjYRaV1qXHuZ48jiKpQSl98yUX6VdhB-UntMMk9tmcckD0WetMv7xOV9O92_g0q97usAlpLzhNp6TEGR5kEFa_bsBhNQOQTDaCFxDgzFk2EghBJQUwYtPl_dsTcl:1ocicb:GJz7PyBqdhbmtQvzZxXT3nkM9FrGsuPoAwKB5oc_xQ4	2022-09-26 08:33:45.692891+00
r3xcd7o9gmtsy16v1j8pfdhpakhuzh0z	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1oeM3G:HyG2sgWGJmjGMHqrGwZnXUSNdCpwsTy-vZHvXiTzrx4	2022-09-30 20:52:02.973864+00
xku05h7l2sba8si4r1hngtvrc3sbbc7a	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1ob1L6:WNBLiZDXnmSNGQo1jaIWfgPSpVn3qswjk4RqbePesg4	2022-09-21 16:08:40.869692+00
8ow95009qljwl2samd1zwrplrvrbiif0	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1ocjDL:5yyKOXkUjn1hUxWN8vhduSeRkSqTEQWhc-ofIzVOJdU	2022-09-26 09:11:43.312881+00
kyv4oolknjvlz8shwqtz9einsdf9l2j8	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1obHCb:_76-dHlQ8XEKP3_VjtlPZntH4hodetXrOGvBhfDNzlM	2022-09-22 09:04:57.918662+00
niatww4vcpe1caxoj134psdn2owk7hkr	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oclpz:5fBSXyKwFOdluAj3TLZszRYScoSdnWyk0ZW9RfTzTSA	2022-09-26 11:59:47.07783+00
b7tcjm5euyof766w8mqipp99bggza5g6	.eJxVjDsOwjAQBe_iGllZ7PWHkp4zWOvP4gBypDipEHdHllJA-2bmvUWgfath72UNcxYXAShOv2Ok9CxtkPygdl9kWtq2zlEORR60y9uSy-t6uH8HlXodtbMQC6QUo_PsLIMiRK9AMTj2doIzFWONRkOgEJGxMEykdWL2rMXnCwc_N-k:1obHEO:Gu0eZzWVBhQ831hEaN9jgo6mK13tCJx0iR5REdsqTO0	2022-09-22 09:06:48.80183+00
ckx5nyw0sd87763zvf3m6pixhv4otxmo	.eJxVjMEOgjAQRP-lZ9Ms3ZaqR-98A9nubgU1JaFwMv67kHDQ48x7M2_T07oM_Vp17kcxV9M4c_otE_FTy07kQeU-WZ7KMo_J7oo9aLXdJPq6He7fwUB12NaoLSKDV4pnH1gCuJgBwFFgzD5sibUhgdC07FpOiilHEFECxouYzxf9aDhx:1oclpz:5fBSXyKwFOdluAj3TLZszRYScoSdnWyk0ZW9RfTzTSA	2022-09-26 11:59:47.219516+00
5m87acmcm5d851zfxyitdfvkdl3amo1p	.eJxVjDsOwjAQRO_iGlnx36akzxmsXa-NA8iR4qRC3J1ESgHlzHszbxZhW2vcel7iROzKhGeX3xIhPXM7CD2g3Wee5rYuE_JD4SftfJwpv26n-3dQodd97dPghNLSZF2CNgn2TAKCU1kG612xRls1kMBgHQhfQkoOJSpLRWaU7PMF7Fo3uA:1obMD8:L09kAigVakouAf_qM_EwLTVdGNrZDk0uENQzgo0Dewo	2022-09-22 14:25:50.846065+00
qu0bslnyll4a6t80s159fjwemca6c84o	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1obN3b:XAIJxUVoW4vMMA2kjl4LTfg1rlBc2e_4y7XcB2UPiI0	2022-09-22 15:20:03.902887+00
6ri5wpz39hos7v56hpjxcvojcio1aeky	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1obd94:ZfiKOfSo3_kPKf5R5Ufb3rLHsXXkProQ6dDtNfZibdg	2022-09-23 08:30:46.572539+00
fyhr9qpdbxlv6tvf9tz2pqnbzu79xvag	.eJxVjDsOwyAQRO9CHSHMz5Ayvc-AWHYJTiKQjF1FuXtsyUVSzrw382YhbmsJW6clzMiubBDs8ltCTE-qB8FHrPfGU6vrMgM_FH7SzqeG9Lqd7t9Bib3sa_ICpcckUHlwAJK8Ho3EEa11RvuBtFJZeANoEmVjk80i2z0SanCOfb4NYziD:1obeJR:sBFBtdrFxCSQA5mbvMpPvpWOwnozCGgh0H_jDkBnPDw	2022-09-23 09:45:33.097119+00
ks66oceks2h7p347pgj3nwyya3fqdd05	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1obh52:QmKUxUrIWA_dnlUXnjgsfKbVx0qWjUa_3i31J432Xzg	2022-09-23 12:42:52.241655+00
pkdqa5pcufqkgvponqdqxu0kon7724q1	.eJxVjDsOwjAQBe_iGlnejb-U9DmDtV47JIBiKU4qxN2RpRTQvpl5bxHp2Od4tLLFJYurgEFcfsdE_CxrJ_lB671Kruu-LUl2RZ60ybHm8rqd7t_BTG3udQHyDCZoJO_AYZgIIfvsEJVlSFNwxMVQ8UNQpKxFQA-aA6esjBafL_1qN5o:1obh52:QmKUxUrIWA_dnlUXnjgsfKbVx0qWjUa_3i31J432Xzg	2022-09-23 12:42:52.242392+00
5l2mpjam6304ozmi3fcjkfkdaxise9py	.eJxVjDsOwyAQRO9CHSHMz5Ayvc-AWHYJTiKQjF1FuXtsyUVSzrw382YhbmsJW6clzMiubBDs8ltCTE-qB8FHrPfGU6vrMgM_FH7SzqeG9Lqd7t9Bib3sa_ICpcckUHlwAJK8Ho3EEa11RvuBtFJZeANoEmVjk80i2z0SanCOfb4NYziD:1obhxm:Bh4gnFIdTRCLAAumvpFcKmI_sWgR3ZfFYvb1rg4Bo6k	2022-09-23 13:39:26.763323+00
3sv6hvqrrllkueroislgsobqglxj87b4	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1objUV:Loiych_Qu7nkswHjWL2XAXw_qrInttO6wfxF_KpGmV8	2022-09-23 15:17:19.739278+00
8orur3y0k1pupjbuqmxy90eifu8c9vkj	.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMBDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rq3QiXfTknbCFIgBpmZy32cg4oUsEyhZAoUzUKNBng9Zm0iKCLADs_QHdXzfC:1obkd0:RaxQTnJQW5HyTqiiOTb9KZJhHJdLBcb0T72ZXOlKWEE	2022-09-23 16:30:10.107618+00
\.


--
-- Data for Name: orders_item; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."orders_item" ("id", "itemMaterial", "itemQuantity", "itemDimmension1", "itemBander", "itemDimmension2", "itemName", "itemOrder_id", "itemBander2", "isDone") FROM stdin;
36	Sklejka #8 FSC	400	805	BEZ OKLEJANIA	70	Listwa bok	17	BEZ OKLEJANIA	t
37	Sklejka #8 FSC	400	236	BEZ OKLEJANIA	70	Listwa front	17	BEZ OKLEJANIA	t
26	Sklejka #8 FSC	150	690	BEZ OKLEJANIA	80	Listwa frontowa	15	BEZ OKLEJANIA	t
96	Płyta wiórowa #18 czerwony U17005	6	800	OKLEJANIE 2 STR	580	SZ+MŚ - Boki	26	BEZ OKLEJANIA	t
114	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	15	1062	BEZ OKLEJANIA	638	Footer półka	27	BEZ OKLEJANIA	t
112	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	30	1098	OKLEJANIE 1 STR	810	Footer bok	27	OKLEJANIE 2 STR	t
113	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	30	638	OKLEJANIE 1 STR	810	Footer bok krótki	27	BEZ OKLEJANIA	t
73	sklejka #12	150	996	BEZ OKLEJANIA	410	Spód	24	BEZ OKLEJANIA	t
91	Płyta wiórowa #18 czerwony U17005	4	205	OKLEJANIE 1 STR	1055	MB - Bok L	26	OKLEJANIE 2 STR	t
66	płyta biała arktyczna 18 mm może być odpad	80	220	BEZ OKLEJANIA	220	wypełnienie	23	BEZ OKLEJANIA	t
104	Płyta wiórowa #18 czerwony U17005	2	928	OKLEJANIE 2 STR	79	MŚ - wieniec D	26	BEZ OKLEJANIA	t
105	Płyta wiórowa #18 czerwony U17005	1	928	BEZ OKLEJANIA	1014	MŚ - Plecy	26	BEZ OKLEJANIA	t
65	płyta biała arktyczna 18 mm	320	365	OKLEJANIE 1 STR	365	płyta - header	23	OKLEJANIE 1 STR	t
90	Płyta wiórowa #18 czerwony U17005	4	1500	OKLEJANIE 2 STR	200	MB - Blat górny	26	OKLEJANIE 2 STR	t
92	Płyta wiórowa #18 czerwony U17005	4	199	OKLEJANIE 2 STR	1050	MB - Bok P	26	OKLEJANIE 1 STR	t
97	Płyta wiórowa #18 czerwony U17005	2	1462	OKLEJANIE 2 STR	580	SZ - Wieniec D	26	OKLEJANIE 2 STR	t
95	Płyta wiórowa #18 czerwony U17005	4	1462	OKLEJANIE 2 STR	600	SZ - blat	26	OKLEJANIE 2 STR	t
107	Płyta wiórowa #18 czerwony U17005	2	1000	OKLEJANIE 2 STR	600	SZ2 - Blat	26	OKLEJANIE 2 STR	t
100	Płyta wiórowa #18 czerwony U17005	2	1425	OKLEJANIE 2 STR	560	SZ-Półka	26	OKLEJANIE 2 STR	t
111	Płyta wiórowa #18 czerwony U17005	2	100	OKLEJANIE 2 STR	800	SZ2 - cokół F	26	OKLEJANIE 2 STR	t
102	Płyta wiórowa #18 czerwony U17005	2	1002	OKLEJANIE 2 STR	200	MŚ - Blat	26	OKLEJANIE 2 STR	t
103	Płyta wiórowa #18 czerwony U17005	4	205	OKLEJANIE 1 STR	1055	MŚ - Bok	26	OKLEJANIE 2 STR	t
108	Płyta wiórowa #18 czerwony U17005	1	1000	OKLEJANIE 2 STR	580	SZ2 - Wieniec D	26	OKLEJANIE 2 STR	t
76	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	3	1040	BEZ OKLEJANIA	744	Bar ściana frontowa duża	25	OKLEJANIE 2 STR	t
68	płyta biała arktyczna 18 mm może być odpad	80	170.5	BEZ OKLEJANIA	117	podpora footera mniejsza -1	23	BEZ OKLEJANIA	t
69	płyta biała arktyczna 18 mm może być odpad	80	166.5	BEZ OKLEJANIA	117	podpora footera mniejsza -2	23	BEZ OKLEJANIA	t
72	płyta biała arktyczna 18 mm	320	106	BEZ OKLEJANIA	270	podpora polki mniejsza	23	OKLEJANIE 1 STR	t
115	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	15	549	BEZ OKLEJANIA	592	Headr środek	27	BEZ OKLEJANIA	t
25	Sklejka #8 FSC	600	270	BEZ OKLEJANIA	100	Skrzynka mała bok	14	BEZ OKLEJANIA	t
32	Sklejka #8 FSC	150	659	BEZ OKLEJANIA	304	Skrzynka duża dno	14	BEZ OKLEJANIA	t
31	Sklejka #8 FSC	300	675	BEZ OKLEJANIA	100	Skrzynka duża front/tył	14	BEZ OKLEJANIA	t
28	Sklejka #8 FSC	600	152	BEZ OKLEJANIA	100	Skrzynka mała front/tył	14	BEZ OKLEJANIA	t
29	Sklejka #8 FSC	300	270	BEZ OKLEJANIA	136	Skrzynka mała dno	14	BEZ OKLEJANIA	t
116	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	30	592	OKLEJANIE 2 STR	100	Header bok	27	BEZ OKLEJANIA	t
118	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	30	621	OKLEJANIE 1 STR	265	Podest bok	27	OKLEJANIE 2 STR	t
119	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	30	240	OKLEJANIE 1 STR	265	Podest bok krótki	27	BEZ OKLEJANIA	t
30	Sklejka #8 FSC	300	304	BEZ OKLEJANIA	100	Skrzynka duża bok	14	BEZ OKLEJANIA	t
109	Płyta wiórowa #18 czerwony U17005	1	963	OKLEJANIE 2 STR	253	SZ2 - Plecy	26	BEZ OKLEJANIA	t
110	Płyta wiórowa #18 czerwony U17005	1	963	OKLEJANIE 2 STR	560	SZ2 - półka	26	OKLEJANIE 2 STR	t
197	Fornir kamienny	2	799	BEZ OKLEJANIA	412	Regał śr - fornir kamienny 2	34	BEZ OKLEJANIA	t
199	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm (Pfleiderer)	2	1004	OKLEJANIE 2 STR	394	podstawa GC3 - do frezowania	36	OKLEJANIE 2 STR	t
190	Płyta wiórowa #18 Czerń aksamitna	2	2080	OKLEJANIE 2 STR	337	Regał śr - bok L+P	34	OKLEJANIE 2 STR	t
191	Płyta wiórowa #18 Czerń aksamitna	1	800	OKLEJANIE 2 STR	90	Regał śr - listwa górna	34	BEZ OKLEJANIA	t
178	Płyta wiórowa #18 Czerń aksamitna	2	679	OKLEJANIE 2 STR	810	Regał L + P - Front	34	OKLEJANIE 2 STR	t
204	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	17	805	OKLEJANIE 2 STR	775	płyta frontowa [ wym. pod frezowanie]	37	OKLEJANIE 1 STR	t
250	Sklejka #8mm	200	354	BEZ OKLEJANIA	90	plecy dół, plecy środek	41	BEZ OKLEJANIA	t
34	Sklejka #8 FSC	528	559	BEZ OKLEJANIA	132	podstawa bok dłuższy	16	BEZ OKLEJANIA	t
33	Sklejka #8 FSC	528	329	BEZ OKLEJANIA	140	podstawa bok krótszy,wycięcie na górze	16	BEZ OKLEJANIA	t
35	Sklejka #8 FSC	264	559	BEZ OKLEJANIA	329	podstawa - dno	16	BEZ OKLEJANIA	t
38	Sklejka #8 FSC	1584	559	BEZ OKLEJANIA	75	skrzynka-ranty	16	BEZ OKLEJANIA	t
39	Sklejka #8 FSC	2376	559	BEZ OKLEJANIA	100	skrzynka-listwy górne	16	BEZ OKLEJANIA	t
40	Sklejka #8 FSC	4752	329	BEZ OKLEJANIA	134	skrzynka-listwy boczne [góra,dół z wybraniami]	16	BEZ OKLEJANIA	t
44	Sklejka #8 FSC	264	559	BEZ OKLEJANIA	329	nadstawka-podstawa	16	BEZ OKLEJANIA	t
93	Płyta wiórowa #18 czerwony U17005	4	1426	OKLEJANIE 2 STR	79	MB - wieniec D	26	BEZ OKLEJANIA	t
67	płyta biała arktyczna 18 mm	80	365	BEZ OKLEJANIA	365	półka bez obrzeza	23	BEZ OKLEJANIA	t
94	Płyta wiórowa #18 czerwony U17005	2	1426	BEZ OKLEJANIA	1014	MB - plecy	26	BEZ OKLEJANIA	t
98	Płyta wiórowa #18 czerwony U17005	2	1425	OKLEJANIE 2 STR	253	SZ - Plecy	26	BEZ OKLEJANIA	t
99	Płyta wiórowa #18 czerwony U17005	6	100	OKLEJANIE 2 STR	490	SZ+MŚ - Cokół B	26	OKLEJANIE 1 STR	t
43	Sklejka #8 FSC	528	559	BEZ OKLEJANIA	95	nadstawka-bok dłuższy	16	BEZ OKLEJANIA	t
101	Płyta wiórowa #18 czerwony U17005	4	1300	OKLEJANIE 2 STR	100	SZ - Cokół F	26	OKLEJANIE 2 STR	t
337	Sklejka #12	30	180	BEZ OKLEJANIA	180	Półka	50	BEZ OKLEJANIA	t
42	Sklejka #8 FSC	528	329	BEZ OKLEJANIA	95	nadstawka-bok krótszy	16	BEZ OKLEJANIA	t
41	Sklejka #8 FSC	792	559	BEZ OKLEJANIA	329	skrzynka-podstawa	16	BEZ OKLEJANIA	t
61	Sklejka #8 FSC	150	304	BEZ OKLEJANIA	92	Przegroda skrzynka duża	14	BEZ OKLEJANIA	t
192	Płyta wiórowa #18 Czerń aksamitna	1	800	OKLEJANIE 2 STR	318	Regał śr - wieniec górny	34	BEZ OKLEJANIA	t
52	Sklejka #12 melaminowana transparenta	10	415	BEZ OKLEJANIA	212.9	korpus dach2 (1szt/kpl)	20	BEZ OKLEJANIA	t
62	Sklejka #12, 2str biały	20	555	BEZ OKLEJANIA	240	Korpus front / Korpus tył	22	BEZ OKLEJANIA	t
64	Sklejka #12, 2str biały	5	129	BEZ OKLEJANIA	525	Listwa bok ( do frezowania i rozcięcia na 2 szt)	22	BEZ OKLEJANIA	t
47	Sklejka #8	10	415	BEZ OKLEJANIA	278	korpus podłoga (1szt/kpl)	20	BEZ OKLEJANIA	t
51	Sklejka #12 melaminowana transparenta	10	415	BEZ OKLEJANIA	229.9	korpus dach1 (1szt/kpl)	20	BEZ OKLEJANIA	t
50	Sklejka #12 melaminowana transparenta	20	415	BEZ OKLEJANIA	191	korpus bok (2szt/kpl)	20	BEZ OKLEJANIA	t
49	Sklejka #15	10	331	BEZ OKLEJANIA	275	korpus tył wew (1szt/kpl)  (formatki powiększone po 5mm/wymiar na CNC)	20	BEZ OKLEJANIA	t
48	Sklejka #15	10	296	BEZ OKLEJANIA	275	korpus front wew (1szt/kpl) (formatki powiększone po 5mm/wymiar na CNC)	20	BEZ OKLEJANIA	t
53	Sklejka #12, 2str laminowana jasnoszary	20	386.9	BEZ OKLEJANIA	329	korpus front zew + korpus tył zew (1+1szt/kpl)  (formatki powiększone po 5mm/wymiar na CNC)	20	BEZ OKLEJANIA	t
58	Sklejka #15	10	296	BEZ OKLEJANIA	275	korpus front wew (1szt/kpl) (formatki powiększone po 5mm/wymiar na CNC)	21	BEZ OKLEJANIA	t
55	Sklejka #12 melaminowana transparenta	20	415	BEZ OKLEJANIA	191	korpus bok (2szt/kpl)	21	BEZ OKLEJANIA	t
59	Sklejka #15	10	331	BEZ OKLEJANIA	275	korpus tył wew (1szt/kpl) (formatki powiększone po 5mm/wymiar na CNC)	21	BEZ OKLEJANIA	t
57	Sklejka #12 melaminowana transparenta	10	415	BEZ OKLEJANIA	212.9	korpus dach2 (1szt/kpl)	21	BEZ OKLEJANIA	t
54	Sklejka #8	10	415	BEZ OKLEJANIA	278	korpus podłoga (1szt/kpl)	21	BEZ OKLEJANIA	t
56	Sklejka #12 melaminowana transparenta	10	415	BEZ OKLEJANIA	229.9	korpus dach1 (1szt/kpl)	21	BEZ OKLEJANIA	t
60	Sklejka #12, 2str laminowana biała	20	386.9	BEZ OKLEJANIA	329	korpus front zew + korpus tył zew (1+1szt/kpl) (formatki powiększone po 5mm/wymiarna CNC)	21	BEZ OKLEJANIA	t
70	płyta biała arktyczna 18 mm może być odpad	40	359	BEZ OKLEJANIA	117	podpora footera wieksza	23	BEZ OKLEJANIA	t
71	płyta biała arktyczna 18 mm	160	230	BEZ OKLEJANIA	270	podpora polki wieksza	23	OKLEJANIE 2 STR	t
203	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	34	800	OKLEJANIE 1 STR	475	bok z dyfuzorem [wymiar pod frezowanie]	37	OKLEJANIE 2 STR	t
200	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm (Pfleiderer)	2	1004	OKLEJANIE 2 STR	284	podstawa GC5 - do frezowania	36	OKLEJANIE 2 STR	t
202	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	68	465	OKLEJANIE 1 STR	381	pólka środkowa [wymiar pod frezowanie]	37	OKLEJANIE 1 STR	t
205	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	17	655	OKLEJANIE 2 STR	655	podstawa części górnej [ wym pod frezowanie]	37	OKLEJANIE 2 STR	t
193	Płyta wiórowa #18 Czerń aksamitna	1	800	OKLEJANIE 2 STR	300	Regał śr - przegroda pozioma	34	BEZ OKLEJANIA	t
194	Płyta wiórowa #18 Czerń aksamitna	1	800	OKLEJANIE 2 STR	318	Regał śr - wieniec dolny	34	BEZ OKLEJANIA	t
195	Płyta wiórowa #18 Czerń aksamitna	1	800	OKLEJANIE 2 STR	307	Regał śr - półka	34	BEZ OKLEJANIA	t
196	Fornir kamienny	2	799	BEZ OKLEJANIA	368	Regał śr - fornir kamienny 1	34	BEZ OKLEJANIA	t
251	Sklejka #8mm	100	354	BEZ OKLEJANIA	188	Podłoga góra	41	BEZ OKLEJANIA	t
121	Sklejka #12	2	161	BEZ OKLEJANIA	154	Półka	28	BEZ OKLEJANIA	t
122	Sklejka #12	4	180	BEZ OKLEJANIA	30	Listwa	28	BEZ OKLEJANIA	t
123	Sklejka #6	2	180	BEZ OKLEJANIA	180	Plecy	28	BEZ OKLEJANIA	t
124	Sklejka #4	2	128	BEZ OKLEJANIA	180	Bok	28	BEZ OKLEJANIA	t
74	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	6	744	OKLEJANIE 2 STR	615	Bar ściana boczna duża	25	BEZ OKLEJANIA	t
81	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	6	1105	BEZ OKLEJANIA	315	Blat mały	25	BEZ OKLEJANIA	t
80	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	12	1105	BEZ OKLEJANIA	605	Blat duży/wieniec górny/wieniec dolny	25	BEZ OKLEJANIA	t
82	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	6	855	BEZ OKLEJANIA	615	Backbar ścian boczna	25	OKLEJANIE 2 STR	t
89	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	1	1465	OKLEJANIE 2 STR	1450	Plecy środek	25	OKLEJANIE 2 STR	t
75	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	6	314	OKLEJANIE 2 STR	300	Bar ścian boczna mała	25	BEZ OKLEJANIA	t
77	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	3	1040	BEZ OKLEJANIA	314	Bar ścian frontowa mała	25	OKLEJANIE 2 STR	t
78	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	6	1105	BEZ OKLEJANIA	605	Podłogowa	25	BEZ OKLEJANIA	t
79	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	6	1049	BEZ OKLEJANIA	315	Półka środkowa	25	BEZ OKLEJANIA	t
83	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	3	1040	BEZ OKLEJANIA	855	Backbar ścian frontowa	25	OKLEJANIE 2 STR	t
84	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	2	1505	BEZ OKLEJANIA	1100	Plecy LEWE +PRAWE	25	OKLEJANIE 2 STR	t
85	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	2	1510	BEZ OKLEJANIA	1105	Front LEWY + PRAWA	25	BEZ OKLEJANIA	t
86	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	4	1469	BEZ OKLEJANIA	214	Ścian pionowa	25	BEZ OKLEJANIA	t
87	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	2	830	BEZ OKLEJANIA	214	Półka górna	25	OKLEJANIE 2 STR	t
88	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	2	1100	BEZ OKLEJANIA	214	Półka dolna	25	OKLEJANIE 2 STR	t
127	sklejka 15 mm lisciasta	2	240	BEZ OKLEJANIA	1110	bok blatu	29	BEZ OKLEJANIA	t
141	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	2	220	BEZ OKLEJANIA	400	bok wystawa modul sr	29	OKLEJANIE 1 STR	t
126	Blat drewniany 60 x 2,7 x 300 cm dąb	8	180	BEZ OKLEJANIA	85	podpora blatu	29	BEZ OKLEJANIA	t
129	sklejka 12 mm lisciasta  ( na długości dodalem 15 mm większy- bo będzie pod katem]	22	947	BEZ OKLEJANIA	100.5	listewka frontowa	29	BEZ OKLEJANIA	t
117	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	15	585	OKLEJANIE 2 STR	100	Header góra	27	OKLEJANIE 2 STR	t
125	Blat drewniany 60 x 2,7 x 300 cm dąb	4	1005	BEZ OKLEJANIA	265	blat modulu	29	BEZ OKLEJANIA	t
128	sklejka 15 mm lisciasta	2	212.5	BEZ OKLEJANIA	1110	bok blatu lewz	29	BEZ OKLEJANIA	t
130	sklejka 15 mm lisciasta	2	798	BEZ OKLEJANIA	150	dno baru roboczego	29	BEZ OKLEJANIA	t
131	Blat drewniany 60 x 2,7 x 300 cm dąb	2	927	BEZ OKLEJANIA	600	blat modulu roboczego	29	BEZ OKLEJANIA	t
132	sklejka 15 mm lisciasta	2	798	BEZ OKLEJANIA	350	pólka blatu roboczego	29	BEZ OKLEJANIA	t
133	Blat drewniany 60 x 2,7 x 300 cm dą	2	180	BEZ OKLEJANIA	1323	front modul centralny	29	BEZ OKLEJANIA	t
134	Blat drewniany 60 x 2,7 x 300 cm dąb	2	206	BEZ OKLEJANIA	1323	bok modul centralny	29	BEZ OKLEJANIA	t
135	Blat drewniany 60 x 2,7 x 300 cm dą	1	180	BEZ OKLEJANIA	260	góra modul centralny	29	BEZ OKLEJANIA	t
136	Blat drewniany 60 x 2,7 x 300 cm dąb	1	126	BEZ OKLEJANIA	206	dól modul centralny	29	BEZ OKLEJANIA	t
137	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	3	1144	OKLEJANIE 1 STR	382	wiecniec górny	29	BEZ OKLEJANIA	t
138	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	3	1144	OKLEJANIE 1 STR	382	wiecniec dolny	29	BEZ OKLEJANIA	t
139	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	3	1180	OKLEJANIE 2 STR	2100	front korpusu	29	OKLEJANIE 2 STR	t
142	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	3	1144	OKLEJANIE 1 STR	220	dno modul	29	BEZ OKLEJANIA	t
143	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	1	416	OKLEJANIE 1 STR	220	gora wystawa modul sr	29	OKLEJANIE 2 STR	t
140	Płyta wiórowa, czarna,  Czerń aksamitna U899 ST9 #18 mm  2800x2070 mm (Egger)	6	2100	OKLEJANIE 1 STR	382	bok	29	OKLEJANIE 2 STR	t
198	Sklejka #12	200	904	BEZ OKLEJANIA	494	Skrzydło	35	BEZ OKLEJANIA	t
181	Płyta wiórowa #18 Czerń aksamitna	2	743	OKLEJANIE 2 STR	336	Wieniec górny	34	BEZ OKLEJANIA	t
184	Płyta wiórowa #18 Czerń aksamitna	2	2042	BEZ OKLEJANIA	743	Plecy	34	BEZ OKLEJANIA	t
253	Sklejka #8mm	100	354	BEZ OKLEJANIA	88	Podłoga dół	41	BEZ OKLEJANIA	t
120	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	15	585	BEZ OKLEJANIA	240	Podest półka	27	BEZ OKLEJANIA	t
266	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	2	595	BEZ OKLEJANIA	395	blat B (2szt/kpl)	43	BEZ OKLEJANIA	t
144	sklejka 15 mm lisciasta [ dodane 5 mm]	2	1005	BEZ OKLEJANIA	265	dno modulu	29	BEZ OKLEJANIA	t
145	sklejka 12 mm lisciasta [dodalem 5 mm bo fi]	4	115	BEZ OKLEJANIA	115	krazek fi 110	29	BEZ OKLEJANIA	t
154	Płyta biel arktyczna #18mm	2	734	OKLEJANIE 2 STR	534	Blat_1 / Blat_2 (do frezowania)	32	OKLEJANIE 2 STR	t
148	Płyta wiórowa #18 czerwony U17005	2	993	OKLEJANIE 2 STR	628	Segment bok Footer dół	26	BEZ OKLEJANIA	t
149	Płyta wiórowa #18 czerwony U17005	4	993	OKLEJANIE 1 STR	360	Segment Footer bok góra (2 płyty 18)	26	OKLEJANIE 2 STR	t
150	Płyta wiórowa #18 Dąb Lancelot R20027	4	900	OKLEJANIE 1 STR	234	Bok lewy i prawa	26	OKLEJANIE 2 STR	t
151	Płyta wiórowa #18 Dąb Lancelot R20027	4	918	OKLEJANIE 1 STR	234	Półka	26	BEZ OKLEJANIA	t
152	Płyta wiórowa #18 Dąb Lancelot R20027	4	918	OKLEJANIE 1 STR	234	Półka górna	26	BEZ OKLEJANIA	t
153	Płyta wiórowa #18 Dąb Lancelot R20027	8	918	OKLEJANIE 1 STR	100	Plecy półki	26	BEZ OKLEJANIA	t
166	Płyta czarny grafit #18 mm	2	790	OKLEJANIE 2 STR	330	Bok_1_dół	33	BEZ OKLEJANIA	t
167	Płyta czarny grafit #18 mm	1	790	BEZ OKLEJANIA	434	Plecy dół	33	OKLEJANIE 1 STR	t
165	Płyta biel arktyczna #18 mm	1	584	OKLEJANIE 2 STR	384	Blat_1 (do frezowania)	33	OKLEJANIE 2 STR	t
168	Płyta biel arktyczna #18 mm	2	434	OKLEJANIE 1 STR	310	Półka dół	33	BEZ OKLEJANIA	t
169	Płyta czarny grafit #18 mm	1	411	OKLEJANIE 1 STR	232	Półka wysuwana dno	33	OKLEJANIE 2 STR	t
170	Płyta czarny grafit #18 mm	1	412	OKLEJANIE 2 STR	40	Półka wysuwana front	33	OKLEJANIE 2 STR	t
171	Płyta czarny grafit #18 mm	2	434	OKLEJANIE 1 STR	310	Wieniec	33	BEZ OKLEJANIA	t
172	Płyta czarny grafit #18 mm	1	434	OKLEJANIE 1 STR	80	Wieniec listwa	33	BEZ OKLEJANIA	t
173	Płyta biel arktyczna #18 mm	1	707.5	BEZ OKLEJANIA	394	Plecy góra	33	BEZ OKLEJANIA	t
174	Płyta czarny grafit #18 mm	2	707.5	OKLEJANIE 2 STR	105	BOK_2 PLECY	33	OKLEJANIE 1 STR	t
175	Płyta czarny grafit #18 mm	2	329	OKLEJANIE 2 STR	188	Header bok	33	OKLEJANIE 2 STR	t
176	Płyta czarny grafit #18 mm	1	394	OKLEJANIE 1 STR	169	Header front	33	BEZ OKLEJANIA	t
177	Płyta czarny grafit #18 mm	1	394	BEZ OKLEJANIA	243	Header podstawa	33	BEZ OKLEJANIA	t
155	Płyta czarny grafit #18mm	2	772	OKLEJANIE 2 STR	466	Bok_1 dół	32	BEZ OKLEJANIA	t
156	Płyta czarny grafit #18mm	1	772	BEZ OKLEJANIA	570	Plecy dół	32	BEZ OKLEJANIA	t
157	Płyta biel arktyczna #18mm	1	570	OKLEJANIE 1 STR	438	Półka dół	32	BEZ OKLEJANIA	t
158	Płyta czarny grafit #18mm	1	547	OKLEJANIE 1 STR	362	Półka wysuwana dno	32	OKLEJANIE 2 STR	t
159	Płyta czarny grafit #18mm	1	548	OKLEJANIE 2 STR	40	Półka wysuwana front	32	OKLEJANIE 2 STR	t
160	Płyta biel arktyczna #18mm	1	707.5	BEZ OKLEJANIA	570	Plecy góra	32	BEZ OKLEJANIA	t
161	Płyta czarny grafit #18mm	2	707.5	OKLEJANIE 2 STR	105	Bok_2 plecy	32	OKLEJANIE 1 STR	t
162	Płyta czarny grafit #18mm	1	570	OKLEJANIE 1 STR	169	Header front	32	BEZ OKLEJANIA	t
163	Płyta czarny grafit #18mm	2	528	OKLEJANIE 2 STR	188	Header bok	32	OKLEJANIE 2 STR	t
164	Płyta biel arktyczna #18mm	1	570	BEZ OKLEJANIA	444	Header podstawa	32	BEZ OKLEJANIA	t
187	Płyta wiórowa #18 Czerń aksamitna	6	674	BEZ OKLEJANIA	168	Doniczka - podłoga	34	BEZ OKLEJANIA	t
189	Płyta wiórowa #18 Czerń aksamitna	1	800	OKLEJANIE 2 STR	500	Regał śr - front	34	BEZ OKLEJANIA	t
186	Płyta wiórowa #18 Czerń aksamitna	12	168	OKLEJANIE 2 STR	172	Doniczka - bok	34	BEZ OKLEJANIA	t
201	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	68	315	OKLEJANIE 1 STR	315	półka górna [wym pod frezowanie]	37	OKLEJANIE 1 STR	t
182	Płyta wiórowa #18 Czerń aksamitna	2	743	OKLEJANIE 2 STR	318	Przegroda pozioma	34	BEZ OKLEJANIA	t
183	Płyta wiórowa #18 Czerń aksamitna	2	743	OKLEJANIE 2 STR	336	Wieniec dolny	34	BEZ OKLEJANIA	t
188	Fornir kamienny	4	742	BEZ OKLEJANIA	610	Regał L i P - Fornir kamienny	34	BEZ OKLEJANIA	t
185	Płyta wiórowa #18 Czerń aksamitna	12	711	OKLEJANIE 2 STR	172	Doniczka - front	34	OKLEJANIE 2 STR	t
207	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	17	476	OKLEJANIE 1 STR	669	front footer	37	BEZ OKLEJANIA	t
208	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	17	476	OKLEJANIE 1 STR	409	tyl górna cześć jedna strona 45 st	37	BEZ OKLEJANIA	t
209	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	17	476	OKLEJANIE 1 STR	282.5	tył dolna cześć	37	BEZ OKLEJANIA	t
261	sklejka 12 mm, liściasta	50	598	BEZ OKLEJANIA	50	listwa podtrzymująca skrzynke	42	BEZ OKLEJANIA	t
146	Płyta wiórowa, czarny grafit U12007MP #18 [mm] 2800x2100 mm (Pfleiderer)	2	2005	OKLEJANIE 2 STR	1220	Płyta	30	OKLEJANIE 2 STR	t
212	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	690	BEZ OKLEJANIA	370	pl wiór 2	38	BEZ OKLEJANIA	t
210	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	17	476	BEZ OKLEJANIA	358	góra footer	37	BEZ OKLEJANIA	t
339	Płyta MDF czarny połysk akryl #18 mm, 2800x1220	1	353	OKLEJANIE 2 STR	140	podstawa [dodane na frez]	52	OKLEJANIE 2 STR	f
236	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm, moze być odpad	1	575	BEZ OKLEJANIA	134	podpora footer wieksza	40	BEZ OKLEJANIA	t
179	Płyta wiórowa #18 Czerń aksamitna	4	1401	OKLEJANIE 2 STR	49	Listwa boczna	34	OKLEJANIE 1 STR	t
180	Płyta wiórowa #18 Czerń aksamitna	4	2080	OKLEJANIE 2 STR	337	Bok P i L	34	OKLEJANIE 2 STR	t
227	Płyta wiórowa, czarny grafit U12007MP #18 (Pfleiderer)	2	734	BEZ OKLEJANIA	534	podstawa blat	39	BEZ OKLEJANIA	t
228	Płyta wiórowa, czarny grafit U12007MP #18 (Pfleiderer)	1	572.5	BEZ OKLEJANIA	323	polka pozioma blat	39	BEZ OKLEJANIA	t
211	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	690	BEZ OKLEJANIA	177	pł wiórowa 1	38	BEZ OKLEJANIA	t
213	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	690	BEZ OKLEJANIA	415.5	pl wiór 3	38	BEZ OKLEJANIA	t
214	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	10	1184	OKLEJANIE 2 STR	365	pl wiór 4	38	OKLEJANIE 1 STR	t
215	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	10	986	OKLEJANIE 2 STR	275	pl wiór 5 [ do wymiaru dodane na frezowanie	38	OKLEJANIE 1 STR	t
216	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	690	BEZ OKLEJANIA	158	pł wiorowa 6	38	BEZ OKLEJANIA	t
217	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	690	OKLEJANIE 2 STR	270	pł wiorowa 7	38	BEZ OKLEJANIA	t
218	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	10	213	OKLEJANIE 1 STR	200	pl wór 9 [ dodanie na frezowanie]	38	OKLEJANIE 1 STR	t
219	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	1187	OKLEJANIE 1 STR	695	pl wiór 10 [ dodane na frezowanie]	38	OKLEJANIE 2 STR	t
220	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	1209	OKLEJANIE 1 STR	695	pł wiór 1 [ dodane na frezowanie]	38	OKLEJANIE 2 STR	t
221	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	685	OKLEJANIE 1 STR	218	pl wiór 12 [ dodane na frezowanie]	38	OKLEJANIE 2 STR	t
222	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	10	384	OKLEJANIE 1 STR	205	pl wiórowa 13	38	BEZ OKLEJANIA	t
223	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	10	370	OKLEJANIE 1 STR	313.5	pl wirowa 14	38	BEZ OKLEJANIA	t
224	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	10	370	BEZ OKLEJANIA	313.5	pl wior 8	38	BEZ OKLEJANIA	t
225	sklejka 6 mm	20	328	BEZ OKLEJANIA	328	sklejka pod kola [ dodane na frezowanie]	38	BEZ OKLEJANIA	t
226	Płyta wiórowa, czerwona U17005 MP #18mm, karminowy (Pfleiderer)	5	690	BEZ OKLEJANIA	275	pl wiórowa 15	38	BEZ OKLEJANIA	t
206	Płyta wiórowa, czerwona U17005 SD #18mm, karminowy (Pfleiderer)	34	727	OKLEJANIE 2 STR	646	boki footer [wym pod frez]	37	OKLEJANIE 2 STR	t
230	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	1	439	BEZ OKLEJANIA	439	polka header [ dodane na frezowanie]	40	BEZ OKLEJANIA	t
231	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	1	255	BEZ OKLEJANIA	255	polka header gora [dodane na frezowanie]	40	BEZ OKLEJANIA	t
232	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	1	221	BEZ OKLEJANIA	221	polka header wytloczka [dodane na frezowanie]	40	BEZ OKLEJANIA	t
233	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	1	582	OKLEJANIE 2 STR	582	polka footer gora	40	OKLEJANIE 2 STR	t
234	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	1	582	OKLEJANIE 2 STR	582	polka footer dol	40	OKLEJANIE 2 STR	t
235	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm, moze byc odpad	2	278.5	BEZ OKLEJANIA	134	podpora footer mniejsza	40	BEZ OKLEJANIA	t
237	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	283	BEZ OKLEJANIA	285	podpora polka 1 wieksza [dodane na frezownaie]	40	OKLEJANIE 2 STR	t
238	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	281	BEZ OKLEJANIA	285	podporka polka 1 mniejsza	40	OKLEJANIE 2 STR	t
239	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	243	BEZ OKLEJANIA	280	podporka polka 2 wieksza	40	OKLEJANIE 2 STR	t
240	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	280	OKLEJANIE 2 STR	241	podporka polka 2 mniejsza	40	BEZ OKLEJANIA	t
242	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	285	OKLEJANIE 2 STR	276	pofporka polka 3 mniejsza	40	BEZ OKLEJANIA	t
243	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	285	OKLEJANIE 2 STR	238	podporka polka 4 wieksza [plus frez]	40	BEZ OKLEJANIA	t
255	Sklejka #8mm	400	88	BEZ OKLEJANIA	55	Przegroda dół	41	BEZ OKLEJANIA	t
244	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	285	OKLEJANIE 2 STR	236	podporka polka 4 mniejsza [ plus frez]	40	BEZ OKLEJANIA	t
249	Sklejka #8mm	300	370	BEZ OKLEJANIA	90	front środek, front góra, plecy góra	41	BEZ OKLEJANIA	t
252	Sklejka #8mm	100	354	BEZ OKLEJANIA	82	Podłoga środek	41	BEZ OKLEJANIA	t
254	Sklejka #8mm	200	82	BEZ OKLEJANIA	82	Przegroda środek	41	BEZ OKLEJANIA	t
260	sklejka 12 mm, liściasta	50	565	BEZ OKLEJANIA	285	header [ dodane na frez]	42	BEZ OKLEJANIA	t
256	sklejka 12 mm liściasta	50	1500	BEZ OKLEJANIA	600	plecy	42	BEZ OKLEJANIA	t
258	sklejka 12 mm, liściasta	50	600	BEZ OKLEJANIA	115	footer front	42	BEZ OKLEJANIA	t
262	sklejka 8 mm, liściasta	50	582	BEZ OKLEJANIA	282	podłoga skrzynki	42	BEZ OKLEJANIA	t
263	sklejka 8 mm, liściasta	300	282	BEZ OKLEJANIA	50	krótszy bok skrzynki	42	BEZ OKLEJANIA	t
264	sklejka 8 mm, liściasta	300	598	BEZ OKLEJANIA	50	listwa dłuższy bok skrzynka	42	BEZ OKLEJANIA	t
277	Biel arktyczna	4	960.3	OKLEJANIE 2 STR	707	Bok_4	44	OKLEJANIE 2 STR	t
268	Biel arktyczna	4	1964	OKLEJANIE 2 STR	1180	Plecy_1	44	OKLEJANIE 1 STR	t
275	Biel arktyczna	8	685.5	OKLEJANIE 2 STR	280	Dystans_1	44	OKLEJANIE 2 STR	t
279	Biel arktyczna	4	728	BEZ OKLEJANIA	707	Bok_5	44	OKLEJANIE 1 STR	t
280	Biel arktyczna	4	707	BEZ OKLEJANIA	396	Bok_6	44	BEZ OKLEJANIA	t
283	Biel arktyczna	4	125	BEZ OKLEJANIA	196	Podpora - do frezowania	44	BEZ OKLEJANIA	t
286	Biel arktyczna	4	573	OKLEJANIE 1 STR	36	Podpora podłogi_b	44	OKLEJANIE 1 STR	t
287	Sklejka #12	4	994	BEZ OKLEJANIA	568	Sklejka_1	44	BEZ OKLEJANIA	t
289	Biel arktyczna	4	994	OKLEJANIE 2 STR	150	Header front	44	BEZ OKLEJANIA	t
290	Biel arktyczna	4	596	OKLEJANIE 2 STR	95	Listwa pod żarówki	44	OKLEJANIE 2 STR	t
292	Sklejka #12	12	710	BEZ OKLEJANIA	440	Sklejka_2	44	BEZ OKLEJANIA	t
294	Sklejka #6	24	590	BEZ OKLEJANIA	60	Sklejka_2 listwa_b	44	BEZ OKLEJANIA	t
296	Sklejka #6	8	345	BEZ OKLEJANIA	60	Sklejka_3 listwa_a	44	BEZ OKLEJANIA	t
331	Płyta wiórowa, czarny grafit U12007MP #18 [mm]	1	1500	OKLEJANIE 2 STR	250	listwa logo	48	OKLEJANIE 2 STR	t
329	Płyta fornirowana Dąb półflader A/B #19 mm	4	1096	BEZ OKLEJANIA	175	korpus cokol front	48	OKLEJANIE 2 STR	t
330	Płyta fornirowana Dąb półflader A/B #19 mm	8	373	BEZ OKLEJANIA	175	korpus cokol bok	48	OKLEJANIE 1 STR	t
265	Płyta wiórowa, czarny grafit U12007MP #18 [mm] (Pfleiderer)	5	395	BEZ OKLEJANIA	395	blat AC (5szt/kpl)	43	BEZ OKLEJANIA	t
340	Płyta MDF czarny połysk akryl #18 mm, 2800x1220	1	353	BEZ OKLEJANIA	301	plecy [dodane na frez]	52	OKLEJANIE 2 STR	f
341	Płyta MDF czarny połysk akryl #18 mm, 2800x1220	1	353	BEZ OKLEJANIA	138	pł górna [dodanie na frez]	52	OKLEJANIE 2 STR	f
343	Płyta wiórowa, Brzoza Mazurska R35003 VV #18 [mm]	600	563	OKLEJANIE 2 STR	65	Listwa krótka - oklejać w pasach	53	OKLEJANIE 2 STR	t
377	sklejka 8 mm lisciasta	400	243	BEZ OKLEJANIA	379	dno kuweta	87	BEZ OKLEJANIA	t
297	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	1000	490	OKLEJANIE 2 STR	378	Półki Stand	45	BEZ OKLEJANIA	t
298	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	500	490	OKLEJANIE 1 STR	50	Półka dolna listwa	45	BEZ OKLEJANIA	t
301	sklejka #6mm	1000	480	BEZ OKLEJANIA	30	header listwa gora / dol	45	BEZ OKLEJANIA	t
303	sklejka #6mm	250	540	BEZ OKLEJANIA	325	header plecy	45	BEZ OKLEJANIA	t
317	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	100	735	OKLEJANIE 2 STR	470	Półka środkowa HPD	47	OKLEJANIE 2 STR	t
306	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	152	1130	BEZ OKLEJANIA	930	Bok PD - do frezowania	46	BEZ OKLEJANIA	t
307	Płyta wiórowa, czarny grafit U12007MP #18	76	1125	OKLEJANIE 2 STR	680	Półka dolna PD	46	OKLEJANIE 2 STR	t
310	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	304	430	OKLEJANIE 2 STR	100	Wspornik pod polkę listwa A	46	BEZ OKLEJANIA	t
315	Sklejka #6mm	76	615	BEZ OKLEJANIA	375	header plecy PD	46	BEZ OKLEJANIA	t
335	Płyta wiórowa, Dąb Lancelot R20027 (R4262) (Pfleiderer)	150	280	OKLEJANIE 2 STR	55	polka rant	49	BEZ OKLEJANIA	t
336	Płyta wiórowa, Dąb Lancelot R20027 (R4262) (Pfleiderer)	50	280	OKLEJANIE 2 STR	222	footer rant	49	BEZ OKLEJANIA	t
379	sklejka lisciasta 8 mm	100	548	BEZ OKLEJANIA	379	kuweta dolna	87	BEZ OKLEJANIA	t
229	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	3	545	OKLEJANIE 2 STR	545	pólka środek [ dodane na frezowanie]	40	OKLEJANIE 2 STR	t
241	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	285	OKLEJANIE 2 STR	278	podporka polka 3 wieksza [dodane na frez]	40	BEZ OKLEJANIA	t
245	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm, moze byc odpad	1	535	BEZ OKLEJANIA	429	podporka header wieksza [plus frez]	40	BEZ OKLEJANIA	t
246	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm, moze byc odpad	2	535	BEZ OKLEJANIA	208	podporka header mniejsza	40	BEZ OKLEJANIA	t
247	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	1	249	OKLEJANIE 1 STR	85	podporka wytloczki wieksza [plus frez]	40	BEZ OKLEJANIA	t
248	Płyta wiórowa, błękit królewski U18059 MP #18mm, (Pfleiderer), 2800x2100mm	2	118	OKLEJANIE 1 STR	85	podporka wytloczki mniesza [plus frez]	40	BEZ OKLEJANIA	t
257	sklejka 12 mm, liściasta	100	605	BEZ OKLEJANIA	149	bok [ dodałem na frezowanie]	42	BEZ OKLEJANIA	t
259	sklejka 12 mm, liściasta	100	294	BEZ OKLEJANIA	115	footer bok	42	BEZ OKLEJANIA	t
284	Biel arktyczna	4	593.5	OKLEJANIE 1 STR	226.3	Blat_2 (jedna strona cięte pod kątem)	44	OKLEJANIE 2 STR	t
332	Płyta wiórowa, Dąb Lancelot R20027 (R4262) (Pfleiderer)	50	1597	OKLEJANIE 2 STR	280	PLECY	49	OKLEJANIE 2 STR	t
309	Płyta wiórowa, czarny grafit U12007MP #18	228	1125	BEZ OKLEJANIA	80	Listwa pod półkę dół	46	OKLEJANIE 2 STR	t
267	Biel arktyczna	8	1180	OKLEJANIE 2 STR	744	podstawa_1 / podstawa_2	44	OKLEJANIE 2 STR	t
269	Biel arktyczna	4	1814	OKLEJANIE 2 STR	820	Plecy_2	44	BEZ OKLEJANIA	t
270	Biel arktyczna	8	1814	BEZ OKLEJANIA	114	Bok_1	44	OKLEJANIE 1 STR	t
271	Biel arktyczna	8	707	BEZ OKLEJANIA	272	Bok_3	44	BEZ OKLEJANIA	t
272	Biel arktyczna	4	360	BEZ OKLEJANIA	272	Bok front_1	44	BEZ OKLEJANIA	t
273	Biel arktyczna	4	725.5	OKLEJANIE 2 STR	360	Blat_1	44	BEZ OKLEJANIA	t
274	Biel arktyczna	8	707	OKLEJANIE 1 STR	341	Wieniec_1, wieniec_2	44	BEZ OKLEJANIA	t
276	Biel arktyczna	4	1643	BEZ OKLEJANIA	360	Bok front_2 - do frezowania	44	BEZ OKLEJANIA	t
278	Biel arktyczna	12	707	OKLEJANIE 1 STR	309	Półka_1	44	BEZ OKLEJANIA	t
281	Biel arktyczna	4	707	BEZ OKLEJANIA	49	Wysłona prawy bok	44	BEZ OKLEJANIA	t
282	Biel arktyczna	4	707	OKLEJANIE 2 STR	332.5	Header prawy	44	BEZ OKLEJANIA	t
285	Biel arktyczna	24	781.5	BEZ OKLEJANIA	60	Podpora podłogi_a	44	BEZ OKLEJANIA	t
288	Biel arktyczna	8	586	OKLEJANIE 2 STR	150	Header bok	44	BEZ OKLEJANIA	t
291	Sklejka #12	4	800	BEZ OKLEJANIA	573.5	Sklejka_4	44	BEZ OKLEJANIA	t
293	Sklejka #6	24	440	BEZ OKLEJANIA	60	Sklejka_2 listawa_a	44	BEZ OKLEJANIA	t
295	Sklejka #12	4	667	BEZ OKLEJANIA	345	Sklejka_3	44	BEZ OKLEJANIA	t
299	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	750	490	OKLEJANIE 1 STR	80	polka posrednia listwa tyl	45	BEZ OKLEJANIA	t
300	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	1500	300	OKLEJANIE 2 STR	178	rama bok listwa bok A	45	BEZ OKLEJANIA	t
302	sklejka #6mm	1000	325	BEZ OKLEJANIA	30	header listwa pion	45	BEZ OKLEJANIA	t
316	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	100	735	OKLEJANIE 2 STR	560	Blat HPD	47	OKLEJANIE 2 STR	t
313	Sklejka #6mm	304	375	BEZ OKLEJANIA	30	header listwa pion PD	46	BEZ OKLEJANIA	t
304	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	76	1125	OKLEJANIE 2 STR	770	Blat PD	46	OKLEJANIE 2 STR	t
305	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	76	1125	OKLEJANIE 2 STR	680	Półka środkowa PD	46	OKLEJANIE 2 STR	t
308	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	152	680	OKLEJANIE 1 STR	80	Listwa pod blat PD	46	BEZ OKLEJANIA	t
311	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	304	430	OKLEJANIE 1 STR	80	Listwa pod polke B	46	BEZ OKLEJANIA	t
312	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	152	440	OKLEJANIE 2 STR	170	Krzesło tył oparcie PD	46	BEZ OKLEJANIA	t
314	Sklejka #6mm	304	555	BEZ OKLEJANIA	30	header listwa dol / poziom PD	46	BEZ OKLEJANIA	t
334	Płyta wiórowa, Dąb Lancelot R20027 (R4262) (Pfleiderer)	200	280	BEZ OKLEJANIA	362	polka	49	BEZ OKLEJANIA	t
338	Sklejka #12mm liściasta	11	396	BEZ OKLEJANIA	330	podstawa spod (1szt/kpl)	51	BEZ OKLEJANIA	t
344	Sklejka #12 mm	3	604	BEZ OKLEJANIA	604	Warstwa_0, Warstwa_1, Warstwa_2 - do frezowania	54	BEZ OKLEJANIA	t
333	Płyta wiórowa, Dąb Lancelot R20027 (R4262) (Pfleiderer)	100	1236	OKLEJANIE 2 STR	400	bok	49	OKLEJANIE 2 STR	t
398	Płyta wiórowa, czarny grafit U12007MP #18 [mm]	2	1855	OKLEJANIE 2 STR	1220	Plecy	89	OKLEJANIE 2 STR	t
319	Płyta wiórowa, czarny grafit U12007MP #18 [mm]	100	735	OKLEJANIE 2 STR	470	Półka dolna HPD	47	OKLEJANIE 2 STR	t
320	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	200	470	OKLEJANIE 1 STR	80	Listwa pod blat HPD	47	BEZ OKLEJANIA	t
325	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	200	280	OKLEJANIE 2 STR	170	Krzesło tył oparcie HPD	47	BEZ OKLEJANIA	t
327	Sklejka #6mm	400	555	BEZ OKLEJANIA	30	Header listwa dół / poziom	47	BEZ OKLEJANIA	t
328	Sklejka #6mm	100	615	BEZ OKLEJANIA	375	Header plecy	47	BEZ OKLEJANIA	t
318	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	200	740	BEZ OKLEJANIA	930	Bok HPD - do frezowania	47	BEZ OKLEJANIA	t
321	Płyta wiórowa, czarny grafit U12007MP #18 [mm	200	735	OKLEJANIE 1 STR	80	Listwa pod półkę dół HPD_boczne	47	OKLEJANIE 2 STR	t
322	Płyta wiórowa, czarny grafit U12007MP #18 [mm	100	735	BEZ OKLEJANIA	80	Listwa pod półkę dół HPD - środek	47	OKLEJANIE 2 STR	t
323	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	200	430	OKLEJANIE 2 STR	50	Wspornik pod półkę listwa A HPD	47	BEZ OKLEJANIA	t
324	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	200	430	OKLEJANIE 1 STR	50	Wspornik pod półkę listwa B HPD	47	BEZ OKLEJANIA	t
326	Sklejka #6mm	400	375	BEZ OKLEJANIA	30	Header listwa pion	47	BEZ OKLEJANIA	t
380	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	2	2380	BEZ OKLEJANIA	2050	scianka sciana tyl + front - 1+1szt/kpl	88	BEZ OKLEJANIA	t
381	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	2	274	BEZ OKLEJANIA	2050	scianka sciana bok - 2szt/kpl	88	BEZ OKLEJANIA	t
382	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	1	1250	BEZ OKLEJANIA	922	scianka sciana wew pionA - 1szt/kpl	88	BEZ OKLEJANIA	t
383	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	2	274	BEZ OKLEJANIA	940	scianki sciana wew pionB i B2 - 1+1szt/kpl	88	BEZ OKLEJANIA	t
384	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	1	1250	BEZ OKLEJANIA	274	scianka sciana wew poziomA - 1szt/kpl	88	BEZ OKLEJANIA	t
385	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	1	2344	BEZ OKLEJANIA	274	scianka sciana wew poziomB - 1szt/kpl	88	BEZ OKLEJANIA	t
399	Płyta wiórowa, czarny grafit U12007MP #18 [mm]	300	430	BEZ OKLEJANIA	350	Dno półki	90	BEZ OKLEJANIA	t
400	Płyta wiórowa, Brzoza Mazurska R35003 VV #18 [mm]	600	350	OKLEJANIE 2 STR	65	BOK krótki	90	BEZ OKLEJANIA	t
401	Płyta wiórowa, Brzoza Mazurska R35003 VV #18 [mm]	600	466	OKLEJANIE 2 STR	65	BOK długi	90	OKLEJANIE 2 STR	t
386	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	4	680	BEZ OKLEJANIA	1900	prezentN scianaA - 4szt/kpl	88	BEZ OKLEJANIA	t
387	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	4	184	BEZ OKLEJANIA	1900	prezentN scianaB - 4szt/kpl	88	BEZ OKLEJANIA	t
388	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	4	644	BEZ OKLEJANIA	184	prezentN wieniecC + prezentN wieniecD - po 2szt/kpl	88	BEZ OKLEJANIA	t
389	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	2	1990	BEZ OKLEJANIA	420	podest sciana front - 2szt/kpl	88	BEZ OKLEJANIA	t
390	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	3	569	BEZ OKLEJANIA	402	podest sciana bok - 2szt/kpl + podest sciana wew - 1szt/kpl	88	BEZ OKLEJANIA	t
391	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	1	1990	BEZ OKLEJANIA	569	podest wieniec top - 1szt/kpl	88	BEZ OKLEJANIA	t
392	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	6	500	BEZ OKLEJANIA	500	prezent scianaA - 6szt/kpl	88	BEZ OKLEJANIA	t
393	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	6	464	BEZ OKLEJANIA	500	prezent scianaB - 6szt/kpl	88	BEZ OKLEJANIA	t
394	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	6	464	BEZ OKLEJANIA	464	prezent scianaC - 6szt/kpl	88	BEZ OKLEJANIA	t
395	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	6	400	BEZ OKLEJANIA	400	prezentM scianaA - 6szt/kpl	88	BEZ OKLEJANIA	t
396	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	6	364	BEZ OKLEJANIA	400	prezentM scianaB - 6szt/kpl	88	BEZ OKLEJANIA	t
397	Płyta wiórowa, biel arktyczna U11027SM #18mm (Pfleiderer)	6	364	BEZ OKLEJANIA	364	prezentM scianaC - 6szt/kpl	88	BEZ OKLEJANIA	t
405	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	835	BEZ OKLEJANIA	579	korpus plecyB - 1szt/kpl	93	BEZ OKLEJANIA	t
406	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	640	BEZ OKLEJANIA	615	korpus wieniec gora - 1szt/kpl	93	BEZ OKLEJANIA	t
413	Sklejka #8mm iglasta	1	835	BEZ OKLEJANIA	498	korpus frontAwew - 1szt/kpl	93	BEZ OKLEJANIA	t
435	Płyta Brzoza mazurska	1	860	BEZ OKLEJANIA	262	Plecy dostawka	96	OKLEJANIE 1 STR	t
403	Plaster miodu	400	550	BEZ OKLEJANIA	80	dystans	92	BEZ OKLEJANIA	t
402	Plaster miodu	304	600	BEZ OKLEJANIA	80	dystans do pakowania PD	91	BEZ OKLEJANIA	t
407	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	835	BEZ OKLEJANIA	495	korpus frontA - 1szt/kpl	93	BEZ OKLEJANIA	t
408	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	835	BEZ OKLEJANIA	480	korpus frontB - 1szt/kpl	93	BEZ OKLEJANIA	t
409	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	428	BEZ OKLEJANIA	355	korpus frontA dystans - 1szt/kpl	93	BEZ OKLEJANIA	t
410	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	640	BEZ OKLEJANIA	615	korpus wieniec dol (cp) - 1szt/kpl	93	BEZ OKLEJANIA	t
411	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	600	BEZ OKLEJANIA	575	korpus cokol - 1szt/kpl	93	BEZ OKLEJANIA	t
412	Sklejka #12mm iglasta	1	575	BEZ OKLEJANIA	566	korpus polka - 1szt/kpl	93	BEZ OKLEJANIA	t
414	Sklejka #8mm iglasta	1	578	BEZ OKLEJANIA	355	korpus frontAwew2 - 1szt/kpl	93	BEZ OKLEJANIA	t
415	Sklejka #4mm iglasta	1	853	BEZ OKLEJANIA	604	korpus plecyAwew - 1szt/kpl	93	BEZ OKLEJANIA	t
416	Sklejka #4mm iglasta	1	835	BEZ OKLEJANIA	575	korpus plecyBwew - 1szt/kpl	93	BEZ OKLEJANIA	t
417	Płyta Biel arktyczna #10mm	1	1488	OKLEJANIE 2 STR	1380	Plecy grafika wersja szeroka	94	OKLEJANIE 2 STR	t
418	Płyta czarny grafit	1	1172	OKLEJANIE 2 STR	700	Podłoga	95	OKLEJANIE 1 STR	t
419	Płyta Brzoza mazurska	1	878	OKLEJANIE 2 STR	701	Bok lewy	95	OKLEJANIE 1 STR	t
420	Płyta Brzoza mazurska	1	860	OKLEJANIE 1 STR	1171.5	Plecy	95	OKLEJANIE 1 STR	t
421	Płyta Czarny grafit	1	841.5	OKLEJANIE 1 STR	681	Przegroda pion	95	BEZ OKLEJANIA	t
422	Płyta Brzoza mazurska	1	860	OKLEJANIE 2 STR	120	Wspornik drzwi	95	OKLEJANIE 1 STR	t
423	Płyta czarny grafit	1	233.5	OKLEJANIE 2 STR	119	Wspornik wieńca	95	BEZ OKLEJANIA	t
424	Płyta czarny grafit	1	1153.5	OKLEJANIE 1 STR	681	Wieniec_cop	95	OKLEJANIE 1 STR	t
425	Płyta czarny grafit	2	841.5	OKLEJANIE 2 STR	90	Listwa dystansująca pólki	95	BEZ OKLEJANIA	t
426	Płyta czarny grafit	2	874	OKLEJANIE 2 STR	591	Drzwi front (czarne)	95	OKLEJANIE 2 STR	t
427	Płyta czerwony karminowy	2	874	OKLEJANIE 2 STR	591	Drzwi front	95	OKLEJANIE 2 STR	t
428	Płyta Brzoza mazurska	1	855	OKLEJANIE 2 STR	557	Drzwi bok	95	OKLEJANIE 2 STR	t
429	Płyta czarny grafit	2	901	OKLEJANIE 2 STR	520	Półka	95	BEZ OKLEJANIA	t
430	Sklejka wodoodporna liściasta #15mm	1	1194	BEZ OKLEJANIA	761	Blat - do frezowania	95	BEZ OKLEJANIA	t
431	Sklejka wodoodporna liściasta #15mm	1	1492	BEZ OKLEJANIA	761	Blat wersja szeroka - do frezowania	95	BEZ OKLEJANIA	t
432	Płyta Biel arktyczna #10 mm	1	1380	OKLEJANIE 2 STR	1190	Plecy grafika	95	OKLEJANIE 2 STR	t
433	Płyta czarny grafit	1	700	BEZ OKLEJANIA	262	Podłoga dostawka	96	OKLEJANIE 2 STR	t
436	Płyta Czarny grafit	1	681.5	BEZ OKLEJANIA	262	Wieniec_cop dostawka	96	OKLEJANIE 1 STR	t
438	Sklejka wodoodporna liściasta#15 mm	1	761	BEZ OKLEJANIA	302	Blat dostawka - do frezowania	96	BEZ OKLEJANIA	t
458	Płyta biel arktyczna #18mm	1	570	OKLEJANIE 2 STR	320	Podstawa	100	OKLEJANIE 2 STR	t
439	Płyta wiórowa, błękit królewski U18059 MP #18mm (Pfleiderer)	2	305	BEZ OKLEJANIA	305	korpus blat + korpus sufit - po 1szt/kpl (UWAGA: wymiary powiększone po ~5mm/wymiar)	97	BEZ OKLEJANIA	t
440	Płyta wiórowa, błękit królewski U18059 MP #18mm (Pfleiderer)	1	280	OKLEJANIE 1 STR	245	korpus sciana KR - 1szt/kpl	97	BEZ OKLEJANIA	t
441	Płyta wiórowa, błękit królewski U18059 MP #18mm (Pfleiderer)	1	280	OKLEJANIE 2 STR	263	korpus sciana KR	97	BEZ OKLEJANIA	t
342	Płyta wiórowa, czarny grafit U12007MP #18 [mm]	300	750	OKLEJANIE 2 STR	562	Podłoga półki	53	BEZ OKLEJANIA	t
442	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	470	375	OKLEJANIE 2 STR	303	Półka dolna blat	98	OKLEJANIE 2 STR	f
443	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	940	375	OKLEJANIE 1 STR	50	Półka dolna listwa	98	BEZ OKLEJANIA	f
444	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	1410	375	OKLEJANIE 2 STR	303	Półka pośrednia / półka górna	98	BEZ OKLEJANIA	f
445	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	1410	375	OKLEJANIE 1 STR	80	Półka pośrednia listwa tył	98	BEZ OKLEJANIA	f
446	Płyta wiórowa, Buk Scandic Jasny R24030 LN #18mm	2820	225	OKLEJANIE 2 STR	178	Rama bok listwa bok A	98	BEZ OKLEJANIA	f
447	Sklejka #6mm	1880	370	BEZ OKLEJANIA	30	Header listwa góra / dół (część listew rozcinać po frezowaniu)	98	BEZ OKLEJANIA	f
448	sklejka #6 mm	1880	325	BEZ OKLEJANIA	30	Header listwa pion	98	BEZ OKLEJANIA	f
449	sklejka #6mm	470	430	BEZ OKLEJANIA	325	Header plecy	98	BEZ OKLEJANIA	f
147	Sklejka #8mm, suchotrwała liściasta kl. 2/2 , 1525x1525 mm, certyfikat FSC	120	395	BEZ OKLEJANIA	395	front [dodałem 5 mm na frazowanie docelowo wymir fi 390 mm]	31	BEZ OKLEJANIA	f
404	Płyta wiórowa, Szary jasny U708 ST9 #18mm	1	835	BEZ OKLEJANIA	623	korpus plecyA - 1szt/kpl	93	BEZ OKLEJANIA	t
434	Płyta Brzoza mazurska	2	878	OKLEJANIE 2 STR	701	Bok lewy / prawydostawka	96	OKLEJANIE 1 STR	t
437	Płyta Czarny grafit	1	874	OKLEJANIE 2 STR	294	Drzwi front dostawka	96	OKLEJANIE 2 STR	t
378	sklejka lisciasta 8 mm	200	268	BEZ OKLEJANIA	379	kuweta 2	87	BEZ OKLEJANIA	t
459	Płyta biel arktyczna #18mm	1	1589	BEZ OKLEJANIA	495	Plecy	100	BEZ OKLEJANIA	t
462	Buk Scandic Jasny R24030 LN #18mm	1	1004	OKLEJANIE 2 STR	374	Podstawa - do frezowania	101	OKLEJANIE 2 STR	f
450	Sklejka #12	2	734	BEZ OKLEJANIA	410	Front rzazy	99	BEZ OKLEJANIA	t
451	Sklejka #4	4	410	BEZ OKLEJANIA	40	Listwa front	99	BEZ OKLEJANIA	t
452	Sklejka #15	2	735	BEZ OKLEJANIA	587	Bok doł rzazy	99	BEZ OKLEJANIA	t
453	Sklejka #15	2	155.5	BEZ OKLEJANIA	965	Bok góra	99	BEZ OKLEJANIA	t
454	Sklejka #12	2	734	BEZ OKLEJANIA	259	Połka dolna	99	BEZ OKLEJANIA	t
455	Sklejka #12	2	723	BEZ OKLEJANIA	252	półka 500	99	BEZ OKLEJANIA	t
456	Sklejka #12	2	723	BEZ OKLEJANIA	202	Półka 400	99	BEZ OKLEJANIA	t
457	Sklejka #12	2	723	BEZ OKLEJANIA	167	Półka 330	99	BEZ OKLEJANIA	t
460	Płyta biel arktyczna #18mm	1	532	OKLEJANIE 2 STR	90	Listwa górna	100	OKLEJANIE 2 STR	t
461	Płyta biel arktyczna #18mm	2	1593	BEZ OKLEJANIA	199	Bok - elementy do frezowania	100	BEZ OKLEJANIA	t
\.


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."orders_order" ("id", "orderName", "orderQuantity", "orderManager_id", "orderDate", "orderNotes", "orderNumber", "isDone", "finishedBy", "finishedDate") FROM stdin;
26	Strefa Bearface	1	18	2022-08-16 04:52:00.283942+00	Brak	WZP/4684745	t	Marcin	2022-08-16 04:52:00.28395+00
33	Hans Just - 1/4 palety	1	11	2022-08-16 11:31:25.268785+00	Brak	WZP-4352283-MW	t	Marcin	2022-08-16 11:31:25.26879+00
24	Calex - Ceiling Shelf POS	150	11	2022-07-28 08:04:17.525036+00	Brak	WZP-7197603-MW	t	Łukasz_P	2022-07-28 08:04:17.525041+00
32	Hans Just - Shake-it multibran	1	11	2022-08-16 11:31:33.544782+00	Brak	WZP-7803695-MW	t	Marcin	2022-08-16 11:31:33.544787+00
16	Rack Core 077	264	11	2022-07-13 13:32:25.383664+00	Brak	WZP/7668165	t	Marcin	2022-07-13 13:32:25.383668+00
17	Rack Core 076	100	10	2022-07-13 17:02:23.233158+00	Brak	WZP/8294244	t	Marcin	2022-07-13 17:02:23.233164+00
15	Rack Core 074	150	11	2022-07-14 13:41:17.49368+00	Brak	WZP/3077677	t	Marcin	2022-07-14 13:41:17.493686+00
35	Potykacz Premium Wood 2022	100	14	2022-08-19 04:07:38.574944+00	Brak	WZP/6035345/BB	t	Marcin	2022-08-19 04:07:38.574949+00
14	Rack Core 055	150	10	2022-07-20 06:49:08.629722+00	Brak	WZP/9631281	t	IT_User	2022-07-20 06:49:08.629729+00
22	Narożny drapak biały	10	18	2022-07-20 12:05:32.77647+00	Brak	WZP/3925708	t	Łukasz_P	2022-07-20 12:05:32.776477+00
20	My dogs cabin grey-natural S	10	12	2022-07-22 08:58:20.079787+00	Najpierw first of do akceptu	WZP/2512477	t	Łukasz_P	2022-07-22 08:58:20.079793+00
21	My dogs cabin white-natural S	10	12	2022-07-22 08:58:24.240216+00	Najpierw first of do akceptu	WZP/4778069	t	Łukasz_P	2022-07-22 08:58:24.240221+00
36	Philips GC3, GC5	1	11	2022-08-22 04:22:30.418737+00	Brak	WZP-8592188-AK	t	Marcin	2022-08-22 04:22:30.418741+00
28	Nescafe Cube	1	18	2022-08-02 04:08:19.403482+00	Wyciąć  01-08-2022	ZDW/2333791/JK	t	Marcin	2022-08-02 04:08:19.403487+00
25	United Beverages - Bushmils	1	10	2022-08-02 04:08:52.710492+00	Brak	WZP/9487989/MW	t	Marcin	2022-08-02 04:08:52.710497+00
23	Slim Stand Lipikar-Cerave + zm	40	15	2022-08-02 04:27:11.007174+00	Brak	WZP/4384278/PW	t	Marcin	2022-08-02 04:27:11.007181+00
27	Multibrendowa ekspozycja palet	15	10	2022-08-04 04:08:09.558345+00	Brak	WZP/3939626/MW	t	Marcin	2022-08-04 04:08:09.55835+00
93	C&P Legowisko pies+kot sklejka	1	12	2022-10-04 07:26:11.335706+00	wszystkie formatki +5mm/wymiar	WZP7272152KN	t	Marcin	2022-10-04 07:26:11.335713+00
29	United Beverages - Bar Kraken	1	15	2022-08-08 13:55:12.001403+00	Brak	WZP/9042471/MW	t	Łukasz_P	2022-08-08 13:55:12.001409+00
30	Kaufland Silesia Katowice	2	10	2022-08-23 06:04:01.602765+00	Brak	WZP-8693858-MW	t	Marcin	2022-08-23 06:04:01.60277+00
34	Highland Park	1	18	2022-08-25 15:36:27.297886+00	NIE CIĄĆ FORNIRU KAMIENNEGO	WZP/3861015	t	Marcin	2022-08-25 15:36:27.297891+00
39	Ryobi Modular pallet display	1	12	2022-08-26 08:50:08.219748+00	Brak	WZP3833508MW	t	Marcin	2022-08-26 08:50:08.219757+00
38	Mini Chupa Chups Truck ES	5	15	2022-08-26 08:50:11.916021+00	Brak	WZP/1321981/EF	t	Marcin	2022-08-26 08:50:11.916025+00
37	FIFA Ball 2022	17	15	2022-08-26 08:50:14.836917+00	Brak	WZP/6700977/EF	t	Marcin	2022-08-26 08:50:14.836921+00
40	1664 BLANC bottle shape displa	1	15	2022-08-29 13:16:23.66228+00	Brak	WZP/2285364/BB	t	Marcin	2022-08-29 13:16:23.662286+00
41	Costa Coffee Consumable Holder	100	11	2022-08-31 15:59:47.718281+00	Brak	WZP-9021239-EF	t	Marcin	2022-08-31 15:59:47.718289+00
42	Orkla Finland- Anyday Nuts Woo	50	15	2022-09-01 04:09:24.588575+00	Brak	WZP/3409708/MW	t	Marcin	2022-09-01 04:09:24.588579+00
49	FeverTree Wooden FSDU	50	15	2022-09-27 08:48:47.46785+00	UWAGA: ROBIMY FIRST OFFA	WZP/8816374/BB	t	Marcin	2022-09-27 08:48:47.467856+00
44	Calex - Shop-in-Shop Display	4	11	2022-09-03 10:48:02.573502+00	Brak	WZP-6538752-MW	t	Marcin	2022-09-03 10:48:02.573507+00
48	Bar Macallan Festiwal Whisky o	1	12	2022-09-07 04:12:17.981555+00	Brak	WZP5990780MW	t	Marcin	2022-09-07 04:12:17.981562+00
43	Standard Modular Rack AdareGER	1	12	2022-09-07 04:12:43.585131+00	Wymiar skonfr. z konst. metal	WZP5696098AK	t	Marcin	2022-09-07 04:12:43.585137+00
50	Calex - shelf with metal holde	30	18	2022-09-09 05:29:55.88259+00	PILNE PILNE PILNE	WZP/7421724	t	Kuba	2022-09-09 05:29:55.882596+00
52	Highland Park - Ekspozytor 3 b	20	15	2022-09-14 14:43:21.275496+00	Wykonujemy pierwsza sztukę	WZP/6769967/MW	f	Brak	2022-09-14 14:43:21.27556+00
51	Philips Display Ovi Smart	11	12	2022-09-21 04:55:05.234036+00	Brak	WZP/9921201PW	t	Marcin	2022-09-21 04:55:05.234062+00
54	PET Podium M bianco	1	11	2022-09-21 04:55:21.352169+00	Brak	WZP-2515575-KN	t	Marcin	2022-09-21 04:55:21.352174+00
45	Stand CC	250	11	2022-09-24 11:25:07.335373+00	Laczyc z innymi produkcjami	WZP-6560998-EF	t	Marcin	2022-09-24 11:25:07.335381+00
47	Half Pallet Display	100	11	2022-09-24 11:25:15.393498+00	Laczyc z innymi produkcjami	WZP/1278993-EF	t	Marcin	2022-09-24 11:25:15.393505+00
46	Pallet Display	76	11	2022-09-24 11:25:24.258942+00	Laczyc z innymi produkcjami	WZP-3841771-EF	t	Marcin	2022-09-24 11:25:24.258949+00
88	Bacardi Martini PL Strefa Swia	1	12	2022-09-24 11:28:24.690721+00	Brak	WZP5297972JR	t	Marcin	2022-09-24 11:28:24.690726+00
53	KS14 HPD CIRCLE	100	11	2022-09-29 09:00:28.838043+00	Brak	WZP-2016544-PW	t	Marcin	2022-09-29 09:00:28.83805+00
89	Kauflad Silesia Katowice II	1	10	2022-09-29 04:19:29.905838+00	Brak	WZP-463326-NW	t	Marcin	2022-09-29 04:19:29.905843+00
97	Mockup polki 1664 BLANC bottle	1	12	2022-09-29 08:59:56.242497+00		ZDW8137962RS	t	Marcin	2022-09-29 08:59:56.242502+00
92	Plaster miodu - HPD	100	11	2022-09-29 09:00:11.153507+00	Brak	1278993-EF	t	Marcin	2022-09-29 09:00:11.153511+00
91	Plaster miodu - PD	76	11	2022-09-29 09:00:17.829368+00	Brak	3841771-EF	t	Marcin	2022-09-29 09:00:17.829375+00
90	KR1 Stand Universal CIRCLE	100	10	2022-09-29 09:00:50.131065+00	Brak	WZP-3513228-EF	t	Marcin	2022-09-29 09:00:50.131069+00
98	My Coke Permanent Stand MM	470	11	2022-09-30 14:44:33.288895+00	Wykonać first ofa do akceptu	WZP-1581264-EF	f	Brak	2022-09-30 14:44:33.288918+00
94	Extended version - back panel	1	11	2022-10-04 07:26:25.64286+00	Brak	WZP-5894466-PW	t	Marcin	2022-10-04 07:26:25.642866+00
31	Costa Coffee Wall Mounted Sign	120	15	2022-10-03 08:30:46.235231+00	Brak	WZP/2332213/EF	f	Łukasz_P	2022-10-03 08:30:46.235239+00
95	Standard Unit - printed door	1	11	2022-10-04 07:26:46.075207+00	Brak	WZP-6374713-PW	t	Marcin	2022-10-04 07:26:46.075213+00
96	Drainage module	1	11	2022-10-04 07:27:06.149436+00	Brak	WZP-5758577-PW	t	Marcin	2022-10-04 07:27:06.149444+00
87	Ramazzotti Display - Event #14	100	15	2022-10-04 07:28:12.617015+00	Brak	WZP/7973795/MW	t	Marcin	2022-10-04 07:28:12.61702+00
101	Polkowy ekspozytor GC3 - Neone	1	11	2022-10-07 09:15:35.911102+00	Brak	WZP-1992070-PW	f	Brak	2022-10-07 09:15:35.911123+00
99	Ferrero - Nutella Stragan 1/2	1	14	2022-10-07 13:56:59.04115+00	Brak	WZP/4520361/MW	t	Łukasz_P	2022-10-07 13:56:59.041154+00
100	Ekspozytor reklamowy na rozdzi	1	11	2022-10-07 13:57:13.993061+00	Brak	WZP-8122037-EF	t	Łukasz_P	2022-10-07 13:57:13.993065+00
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."users_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined", "is_admin", "is_manager", "is_operator") FROM stdin;
13	pbkdf2_sha256$320000$HF0YU6SPQUt614uz6XT70q$XALiAmxja6aIafQH5C0sE4dv/w9GbPWBHESgJSPEUzw=	2022-10-05 04:18:06.827119+00	f	Marcin			stolarnia@atsdisplay.com	f	t	2022-07-11 08:51:11.527624+00	f	f	t
18	pbkdf2_sha256$320000$bYn6igX9GqAcS3LYivhbwV$sXWV3hlqEgz0OQCCgeJTWA4hYqd7ZxUp7PlEGeM8b50=	2022-10-05 08:11:34.830712+00	f	Kuba			j.klewicki@atsdisplay.com	f	t	2022-07-19 08:26:36.496036+00	t	f	f
14	pbkdf2_sha256$320000$mgIsgvVm2MHpyA7OxKGbF0$SOLg/yCWqucXaFg9qTpQzJy9Ngzn7yPABa9mSh+7ImM=	2022-10-05 14:39:50.996966+00	f	Łukasz			l.choma@atsdisplay.com	f	t	2022-07-11 08:51:47.96058+00	t	f	f
12	pbkdf2_sha256$320000$CwHqTG3a4V2tIngr5VNWrb$jqJIiqvHsH3yruj6ixPi0/egj/LGbdKG2j+t8ORl2Ds=	2022-09-28 12:17:26.461048+00	f	Rafał			r.skrabon@atsdisplay.com	f	t	2022-07-11 08:49:57.009626+00	f	t	f
16	pbkdf2_sha256$320000$S4VDSsc2MbX8jwBZ4nPpLs$MU5xgBtM1lggQ2CAf1VyO36Evir6PTuo6aVxJQCLcOQ=	2022-07-11 14:00:49.019614+00	f	Tomasz			t.stankiewicz@atsdisplay.com	f	t	2022-07-11 13:10:47.665837+00	t	f	f
17	pbkdf2_sha256$320000$EIkewAz4bp4b6Jk5fDoPe5$5GGckE0nBB4RXsLptP5b+8u7MHbf/7kzQLF7iTsmXy8=	2022-10-06 07:45:50.415107+00	f	Tomasz_P			t.pietka@atsdisplay.com	f	t	2022-07-18 08:35:21.99303+00	t	f	f
10	pbkdf2_sha256$320000$2Dlo1Qska9b9z31M3LyMTj$zk95fwxgYP9pEqP6/eXkvC1u94T3JAp3oLOuU57lr+4=	2022-09-23 12:39:26.760284+00	f	Karol			k.lapinski@atsdisplay.com	f	t	2022-07-11 08:48:02.14913+00	f	t	f
20	pbkdf2_sha256$320000$J9GFsZRTws4NivqQbSWYVb$GzrUJH68TbYy+wy5h6293gNjDuuEzyIAPIR8NZGG42E=	2022-10-07 06:00:22.532723+00	f	Mariusz			stolarnia@atsdisplay.com	f	t	2022-08-08 14:44:29.98652+00	f	f	t
11	pbkdf2_sha256$320000$BcCF6PjW2WNTlo0ergF1Dr$vwd0KMK61GHP0MF4qmIjHMVw0cUhyAiRCMUiXSVySZw=	2022-10-07 09:14:54.050491+00	f	Damian			d.zoladek@atsdisplay.com	f	t	2022-07-11 08:49:17.237912+00	f	t	f
19	pbkdf2_sha256$320000$7ukRqdCIbOGxaFwLs9dDLe$G22LoNEffFRec0uYoHZDX/KuQxQFzAwjN1G9+dbbsQk=	2022-10-07 13:57:50.442583+00	f	Łukasz_P			stolarnia@atsdisplay.com	f	t	2022-07-20 07:42:05.97797+00	f	f	t
1	pbkdf2_sha256$320000$DleFA5R7JLl1yi0GADQCwL$30EGjD59ZILSDRGmI9IDD7hXPAzYo62isPpclHBAYEI=	2022-10-07 19:57:35.222146+00	t	IT_User	Jakub	Klewicki	kuba.klewicki@gmail.com	t	t	2022-06-22 21:04:07+00	f	f	f
15	pbkdf2_sha256$320000$fyTGzDyNVjJ6Hbjl240FZF$ZYXL+xbK/d/BtqITMSi3Lvohm+FvCSk9OmxRfOTEKE4=	2022-10-03 08:29:41.799932+00	f	Zbyszek			z.koziel@atsdisplay.com	f	t	2022-07-11 09:13:27.678002+00	f	t	f
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."users_user_groups" ("id", "user_id", "group_id") FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bddjwfkizcvuxh
--

COPY "public"."users_user_user_permissions" ("id", "user_id", "permission_id") FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."auth_group_id_seq"', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."auth_group_permissions_id_seq"', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."auth_permission_id_seq"', 32, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."django_admin_log_id_seq"', 11, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."django_content_type_id_seq"', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."django_migrations_id_seq"', 46, true);


--
-- Name: orders_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."orders_item_id_seq"', 462, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."orders_order_id_seq"', 101, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."users_user_groups_id_seq"', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."users_user_id_seq"', 20, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bddjwfkizcvuxh
--

SELECT pg_catalog.setval('"public"."users_user_user_permissions_id_seq"', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");


--
-- Name: orders_item orders_item_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_item"
    ADD CONSTRAINT "orders_item_pkey" PRIMARY KEY ("id");


--
-- Name: orders_order orders_order_orderNumber_4e8c2637_uniq; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_order"
    ADD CONSTRAINT "orders_order_orderNumber_4e8c2637_uniq" UNIQUE ("orderNumber");


--
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_order"
    ADD CONSTRAINT "orders_order_pkey" PRIMARY KEY ("id");


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_groups"
    ADD CONSTRAINT "users_user_groups_pkey" PRIMARY KEY ("id");


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_groups"
    ADD CONSTRAINT "users_user_groups_user_id_group_id_b88eab82_uniq" UNIQUE ("user_id", "group_id");


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user"
    ADD CONSTRAINT "users_user_pkey" PRIMARY KEY ("id");


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_user_permissions"
    ADD CONSTRAINT "users_user_user_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_user_permissions"
    ADD CONSTRAINT "users_user_user_permissions_user_id_permission_id_43338c45_uniq" UNIQUE ("user_id", "permission_id");


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user"
    ADD CONSTRAINT "users_user_username_key" UNIQUE ("username");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING "btree" ("name" "varchar_pattern_ops");


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING "btree" ("group_id");


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING "btree" ("permission_id");


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING "btree" ("content_type_id");


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING "btree" ("content_type_id");


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING "btree" ("user_id");


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING "btree" ("expire_date");


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING "btree" ("session_key" "varchar_pattern_ops");


--
-- Name: orders_item_itemOrder_id_991d3f3a; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "orders_item_itemOrder_id_991d3f3a" ON "public"."orders_item" USING "btree" ("itemOrder_id");


--
-- Name: orders_order_orderManager_id_8792f4d7; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "orders_order_orderManager_id_8792f4d7" ON "public"."orders_order" USING "btree" ("orderManager_id");


--
-- Name: orders_order_orderNumber_4e8c2637_like; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "orders_order_orderNumber_4e8c2637_like" ON "public"."orders_order" USING "btree" ("orderNumber" "varchar_pattern_ops");


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "users_user_groups_group_id_9afc8d0e" ON "public"."users_user_groups" USING "btree" ("group_id");


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "users_user_groups_user_id_5f6f5a90" ON "public"."users_user_groups" USING "btree" ("user_id");


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "users_user_user_permissions_permission_id_0b93982e" ON "public"."users_user_user_permissions" USING "btree" ("permission_id");


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "users_user_user_permissions_user_id_20aca447" ON "public"."users_user_user_permissions" USING "btree" ("user_id");


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: bddjwfkizcvuxh
--

CREATE INDEX "users_user_username_06e46fe6_like" ON "public"."users_user" USING "btree" ("username" "varchar_pattern_ops");


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_item orders_item_itemOrder_id_991d3f3a_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_item"
    ADD CONSTRAINT "orders_item_itemOrder_id_991d3f3a_fk_orders_order_id" FOREIGN KEY ("itemOrder_id") REFERENCES "public"."orders_order"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_orderManager_id_8792f4d7_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."orders_order"
    ADD CONSTRAINT "orders_order_orderManager_id_8792f4d7_fk_users_user_id" FOREIGN KEY ("orderManager_id") REFERENCES "public"."users_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_groups"
    ADD CONSTRAINT "users_user_groups_group_id_9afc8d0e_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_groups"
    ADD CONSTRAINT "users_user_groups_user_id_5f6f5a90_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_user_permissions"
    ADD CONSTRAINT "users_user_user_perm_permission_id_0b93982e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bddjwfkizcvuxh
--

ALTER TABLE ONLY "public"."users_user_user_permissions"
    ADD CONSTRAINT "users_user_user_permissions_user_id_20aca447_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

