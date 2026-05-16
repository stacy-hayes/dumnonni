--
-- PostgreSQL database dump
--

\restrict WGMDylDEHshm4ao5bIu6DACUru6hNZ594oBxVNscmZH8uo2mefID91iI3zaWWKK

-- Dumped from database version 18.3 (Ubuntu 18.3-1)
-- Dumped by pg_dump version 18.3 (Ubuntu 18.3-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO stacy;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_attachments_id_seq OWNER TO stacy;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO stacy;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_blobs_id_seq OWNER TO stacy;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO stacy;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNER TO stacy;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: alchemy_attachments; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_attachments (
    id bigint NOT NULL,
    name character varying,
    file_name character varying,
    file_mime_type character varying,
    file_size integer,
    creator_id integer,
    updater_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    file_uid character varying
);


ALTER TABLE public.alchemy_attachments OWNER TO stacy;

--
-- Name: alchemy_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_attachments_id_seq OWNER TO stacy;

--
-- Name: alchemy_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_attachments_id_seq OWNED BY public.alchemy_attachments.id;


--
-- Name: alchemy_elements; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_elements (
    id bigint NOT NULL,
    name character varying,
    "position" integer,
    public boolean DEFAULT true NOT NULL,
    folded boolean DEFAULT false NOT NULL,
    "unique" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    creator_id integer,
    updater_id integer,
    parent_element_id integer,
    fixed boolean DEFAULT false NOT NULL,
    page_version_id bigint NOT NULL,
    public_on timestamp(6) without time zone,
    public_until timestamp(6) without time zone
);


ALTER TABLE public.alchemy_elements OWNER TO stacy;

--
-- Name: alchemy_elements_alchemy_pages; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_elements_alchemy_pages (
    element_id integer,
    page_id integer
);


ALTER TABLE public.alchemy_elements_alchemy_pages OWNER TO stacy;

--
-- Name: alchemy_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_elements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_elements_id_seq OWNER TO stacy;

--
-- Name: alchemy_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_elements_id_seq OWNED BY public.alchemy_elements.id;


--
-- Name: alchemy_folded_pages; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_folded_pages (
    id bigint NOT NULL,
    page_id integer NOT NULL,
    user_id integer NOT NULL,
    folded boolean DEFAULT false NOT NULL
);


ALTER TABLE public.alchemy_folded_pages OWNER TO stacy;

--
-- Name: alchemy_folded_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_folded_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_folded_pages_id_seq OWNER TO stacy;

--
-- Name: alchemy_folded_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_folded_pages_id_seq OWNED BY public.alchemy_folded_pages.id;


--
-- Name: alchemy_ingredients; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_ingredients (
    id bigint NOT NULL,
    element_id bigint NOT NULL,
    type character varying NOT NULL,
    role character varying NOT NULL,
    value text,
    data jsonb DEFAULT '{}'::jsonb,
    related_object_type character varying,
    related_object_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.alchemy_ingredients OWNER TO stacy;

--
-- Name: alchemy_ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_ingredients_id_seq OWNER TO stacy;

--
-- Name: alchemy_ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_ingredients_id_seq OWNED BY public.alchemy_ingredients.id;


--
-- Name: alchemy_languages; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_languages (
    id bigint NOT NULL,
    name character varying,
    language_code character varying,
    frontpage_name character varying,
    page_layout character varying DEFAULT 'intro'::character varying,
    public boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    creator_id integer,
    updater_id integer,
    "default" boolean DEFAULT false NOT NULL,
    country_code character varying DEFAULT ''::character varying NOT NULL,
    site_id bigint NOT NULL,
    locale character varying
);


ALTER TABLE public.alchemy_languages OWNER TO stacy;

--
-- Name: alchemy_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_languages_id_seq OWNER TO stacy;

--
-- Name: alchemy_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_languages_id_seq OWNED BY public.alchemy_languages.id;


--
-- Name: alchemy_legacy_page_urls; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_legacy_page_urls (
    id bigint NOT NULL,
    urlname character varying NOT NULL,
    page_id integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.alchemy_legacy_page_urls OWNER TO stacy;

--
-- Name: alchemy_legacy_page_urls_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_legacy_page_urls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_legacy_page_urls_id_seq OWNER TO stacy;

--
-- Name: alchemy_legacy_page_urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_legacy_page_urls_id_seq OWNED BY public.alchemy_legacy_page_urls.id;


--
-- Name: alchemy_nodes; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_nodes (
    id bigint NOT NULL,
    name character varying,
    title character varying,
    url character varying,
    nofollow boolean DEFAULT false NOT NULL,
    external boolean DEFAULT false NOT NULL,
    folded boolean DEFAULT false NOT NULL,
    parent_id integer,
    lft integer NOT NULL,
    rgt integer NOT NULL,
    depth integer DEFAULT 0 NOT NULL,
    page_id bigint,
    language_id bigint NOT NULL,
    creator_id integer,
    updater_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    menu_type character varying NOT NULL
);


ALTER TABLE public.alchemy_nodes OWNER TO stacy;

--
-- Name: alchemy_nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_nodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_nodes_id_seq OWNER TO stacy;

--
-- Name: alchemy_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_nodes_id_seq OWNED BY public.alchemy_nodes.id;


--
-- Name: alchemy_page_mutexes; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_page_mutexes (
    id bigint NOT NULL,
    page_id bigint NOT NULL,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.alchemy_page_mutexes OWNER TO stacy;

--
-- Name: alchemy_page_mutexes_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_page_mutexes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_page_mutexes_id_seq OWNER TO stacy;

--
-- Name: alchemy_page_mutexes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_page_mutexes_id_seq OWNED BY public.alchemy_page_mutexes.id;


--
-- Name: alchemy_page_versions; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_page_versions (
    id bigint NOT NULL,
    page_id bigint NOT NULL,
    public_on timestamp without time zone,
    public_until timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    title character varying,
    meta_description text,
    meta_keywords text
);


ALTER TABLE public.alchemy_page_versions OWNER TO stacy;

--
-- Name: alchemy_page_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_page_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_page_versions_id_seq OWNER TO stacy;

--
-- Name: alchemy_page_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_page_versions_id_seq OWNED BY public.alchemy_page_versions.id;


--
-- Name: alchemy_pages; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_pages (
    id bigint NOT NULL,
    name character varying,
    urlname character varying,
    title character varying,
    language_code character varying,
    language_root boolean DEFAULT false NOT NULL,
    page_layout character varying,
    meta_keywords text,
    meta_description text,
    lft integer,
    rgt integer,
    parent_id integer,
    depth integer,
    locked_by integer,
    restricted boolean DEFAULT false NOT NULL,
    robot_index boolean DEFAULT true NOT NULL,
    robot_follow boolean DEFAULT true NOT NULL,
    sitemap boolean DEFAULT true NOT NULL,
    layoutpage boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    creator_id integer,
    updater_id integer,
    language_id bigint NOT NULL,
    published_at timestamp without time zone,
    locked_at timestamp without time zone,
    searchable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.alchemy_pages OWNER TO stacy;

--
-- Name: alchemy_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_pages_id_seq OWNER TO stacy;

--
-- Name: alchemy_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_pages_id_seq OWNED BY public.alchemy_pages.id;


--
-- Name: alchemy_picture_descriptions; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_picture_descriptions (
    id bigint NOT NULL,
    picture_id bigint NOT NULL,
    language_id bigint NOT NULL,
    text text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.alchemy_picture_descriptions OWNER TO stacy;

--
-- Name: alchemy_picture_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_picture_descriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_picture_descriptions_id_seq OWNER TO stacy;

--
-- Name: alchemy_picture_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_picture_descriptions_id_seq OWNED BY public.alchemy_picture_descriptions.id;


--
-- Name: alchemy_picture_thumbs; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_picture_thumbs (
    id bigint NOT NULL,
    picture_id bigint NOT NULL,
    signature character varying NOT NULL,
    uid text NOT NULL
);


ALTER TABLE public.alchemy_picture_thumbs OWNER TO stacy;

--
-- Name: alchemy_picture_thumbs_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_picture_thumbs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_picture_thumbs_id_seq OWNER TO stacy;

--
-- Name: alchemy_picture_thumbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_picture_thumbs_id_seq OWNED BY public.alchemy_picture_thumbs.id;


--
-- Name: alchemy_pictures; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_pictures (
    id bigint NOT NULL,
    name character varying,
    image_file_name character varying,
    image_file_width integer,
    image_file_height integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    creator_id integer,
    updater_id integer,
    upload_hash character varying,
    image_file_uid character varying,
    image_file_size integer,
    image_file_format character varying
);


ALTER TABLE public.alchemy_pictures OWNER TO stacy;

--
-- Name: alchemy_pictures_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_pictures_id_seq OWNER TO stacy;

--
-- Name: alchemy_pictures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_pictures_id_seq OWNED BY public.alchemy_pictures.id;


--
-- Name: alchemy_sites; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_sites (
    id bigint NOT NULL,
    host character varying,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    public boolean DEFAULT false NOT NULL,
    aliases text,
    redirect_to_primary_host boolean DEFAULT false NOT NULL
);


ALTER TABLE public.alchemy_sites OWNER TO stacy;

--
-- Name: alchemy_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_sites_id_seq OWNER TO stacy;

--
-- Name: alchemy_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_sites_id_seq OWNED BY public.alchemy_sites.id;


--
-- Name: alchemy_users; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.alchemy_users (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    login character varying,
    email character varying,
    language character varying,
    encrypted_password character varying(128) DEFAULT ''::character varying NOT NULL,
    password_salt character varying(128) DEFAULT ''::character varying NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    failed_attempts integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    creator_id integer,
    updater_id integer,
    cached_tag_list text,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    alchemy_roles character varying DEFAULT 'member'::character varying,
    remember_created_at timestamp(6) without time zone,
    timezone character varying
);


ALTER TABLE public.alchemy_users OWNER TO stacy;

--
-- Name: COLUMN alchemy_users.timezone; Type: COMMENT; Schema: public; Owner: stacy
--

COMMENT ON COLUMN public.alchemy_users.timezone IS 'The timezone of the user, used for displaying dates in the user''s timezone';


--
-- Name: alchemy_users_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.alchemy_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alchemy_users_id_seq OWNER TO stacy;

--
-- Name: alchemy_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.alchemy_users_id_seq OWNED BY public.alchemy_users.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO stacy;

--
-- Name: gutentag_taggings; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.gutentag_taggings (
    id integer NOT NULL,
    tag_id integer NOT NULL,
    taggable_id integer NOT NULL,
    taggable_type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.gutentag_taggings OWNER TO stacy;

--
-- Name: gutentag_taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.gutentag_taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gutentag_taggings_id_seq OWNER TO stacy;

--
-- Name: gutentag_taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.gutentag_taggings_id_seq OWNED BY public.gutentag_taggings.id;


--
-- Name: gutentag_tags; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.gutentag_tags (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    taggings_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.gutentag_tags OWNER TO stacy;

--
-- Name: gutentag_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: stacy
--

CREATE SEQUENCE public.gutentag_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gutentag_tags_id_seq OWNER TO stacy;

--
-- Name: gutentag_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stacy
--

ALTER SEQUENCE public.gutentag_tags_id_seq OWNED BY public.gutentag_tags.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: stacy
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO stacy;

--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: alchemy_attachments id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_attachments ALTER COLUMN id SET DEFAULT nextval('public.alchemy_attachments_id_seq'::regclass);


--
-- Name: alchemy_elements id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_elements ALTER COLUMN id SET DEFAULT nextval('public.alchemy_elements_id_seq'::regclass);


--
-- Name: alchemy_folded_pages id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_folded_pages ALTER COLUMN id SET DEFAULT nextval('public.alchemy_folded_pages_id_seq'::regclass);


--
-- Name: alchemy_ingredients id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_ingredients ALTER COLUMN id SET DEFAULT nextval('public.alchemy_ingredients_id_seq'::regclass);


--
-- Name: alchemy_languages id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_languages ALTER COLUMN id SET DEFAULT nextval('public.alchemy_languages_id_seq'::regclass);


--
-- Name: alchemy_legacy_page_urls id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_legacy_page_urls ALTER COLUMN id SET DEFAULT nextval('public.alchemy_legacy_page_urls_id_seq'::regclass);


--
-- Name: alchemy_nodes id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_nodes ALTER COLUMN id SET DEFAULT nextval('public.alchemy_nodes_id_seq'::regclass);


--
-- Name: alchemy_page_mutexes id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_page_mutexes ALTER COLUMN id SET DEFAULT nextval('public.alchemy_page_mutexes_id_seq'::regclass);


--
-- Name: alchemy_page_versions id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_page_versions ALTER COLUMN id SET DEFAULT nextval('public.alchemy_page_versions_id_seq'::regclass);


--
-- Name: alchemy_pages id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_pages ALTER COLUMN id SET DEFAULT nextval('public.alchemy_pages_id_seq'::regclass);


--
-- Name: alchemy_picture_descriptions id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_descriptions ALTER COLUMN id SET DEFAULT nextval('public.alchemy_picture_descriptions_id_seq'::regclass);


--
-- Name: alchemy_picture_thumbs id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_thumbs ALTER COLUMN id SET DEFAULT nextval('public.alchemy_picture_thumbs_id_seq'::regclass);


--
-- Name: alchemy_pictures id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_pictures ALTER COLUMN id SET DEFAULT nextval('public.alchemy_pictures_id_seq'::regclass);


--
-- Name: alchemy_sites id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_sites ALTER COLUMN id SET DEFAULT nextval('public.alchemy_sites_id_seq'::regclass);


--
-- Name: alchemy_users id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_users ALTER COLUMN id SET DEFAULT nextval('public.alchemy_users_id_seq'::regclass);


--
-- Name: gutentag_taggings id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.gutentag_taggings ALTER COLUMN id SET DEFAULT nextval('public.gutentag_taggings_id_seq'::regclass);


--
-- Name: gutentag_tags id; Type: DEFAULT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.gutentag_tags ALTER COLUMN id SET DEFAULT nextval('public.gutentag_tags_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	image_file	Alchemy::Picture	1	1	2026-05-14 18:25:50.746498
2	image	ActiveStorage::VariantRecord	1	2	2026-05-14 18:32:01.111253
3	image	ActiveStorage::VariantRecord	2	3	2026-05-14 18:36:49.131907
4	image_file	Alchemy::Picture	2	4	2026-05-14 21:25:21.264552
5	image	ActiveStorage::VariantRecord	3	5	2026-05-14 21:25:22.600056
6	image	ActiveStorage::VariantRecord	4	6	2026-05-14 21:25:23.625393
7	image	ActiveStorage::VariantRecord	5	7	2026-05-14 21:25:34.539748
8	image_file	Alchemy::Picture	3	8	2026-05-16 09:53:22.452888
9	image	ActiveStorage::VariantRecord	6	9	2026-05-16 09:53:23.101547
10	image	ActiveStorage::VariantRecord	7	10	2026-05-16 09:53:23.853843
11	image	ActiveStorage::VariantRecord	8	11	2026-05-16 09:53:28.497043
12	image_file	Alchemy::Picture	4	12	2026-05-16 09:58:43.084611
13	image	ActiveStorage::VariantRecord	9	13	2026-05-16 09:58:43.51646
14	image	ActiveStorage::VariantRecord	10	14	2026-05-16 09:58:44.311383
15	image	ActiveStorage::VariantRecord	11	15	2026-05-16 10:00:26.379754
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	8g9fcwh5obdumk2a1t7v3m4zjlo6	war_white_of_the_mists.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	327370	gM7xGIXZgLxrdeG6UuJi7w==	2026-05-14 18:25:50.736009
2	c4q0gp3sasazzkoh6iv3pkyg9vzg	war_white_of_the_mists.jpg	image/jpeg	{"identified":true,"width":160,"height":107,"analyzed":true}	local	7709	ubQxQEillwylTbkFJw7N2w==	2026-05-14 18:32:01.101293
3	zo8fcmmifkppi2ahlhmc1f55ayz7	war_white_of_the_mists.jpg	image/jpeg	{"identified":true,"width":1080,"height":720,"analyzed":true}	local	279704	4VEqSAAkr549oNmyfQK+3g==	2026-05-14 18:36:49.116583
4	lalirmsf26t90c2uuyq7wf8i906h	people.jpg	image/jpeg	{"identified":true,"width":1990,"height":1249,"analyzed":true}	local	1138241	W2LO/99o2T483kHHj9VIAA==	2026-05-14 21:25:21.229493
5	t9ta7lkyh3smg15f9gvi0tyu22tk	people.jpg	image/jpeg	{"identified":true,"width":240,"height":151,"analyzed":true}	local	44183	k7ej86/H3zTwbu/Knq26Aw==	2026-05-14 21:25:22.568728
6	uhkbs82sfrldvxtw0y5ycbfo42ze	people.jpg	image/jpeg	{"identified":true,"width":160,"height":100,"analyzed":true}	local	35819	3PL1+eaQQvY4o12fqVSJdw==	2026-05-14 21:25:23.611973
7	tsv31qie7n5bptq53tqfdck1kiay	people.jpg	image/jpeg	{"identified":true,"width":1990,"height":1249,"analyzed":true}	local	951390	Pa3LTBHweN3fgH4mFrTlgg==	2026-05-14 21:25:34.523779
8	mg7nka5e32l9l0aewhfvawreq8sq	booking-mila.jpg	image/jpeg	{"identified":true,"width":2048,"height":1431,"analyzed":true}	local	2349082	8GSwGhbjJmKDBC0vRCIlNg==	2026-05-16 09:53:22.442609
9	izmbd7p2yk6colz9kzgpj6ea9f1j	booking-mila.jpg	image/jpeg	{"identified":true,"width":240,"height":168,"analyzed":true}	local	71382	ZFhHKfAkfAq4EVmhqhkoQA==	2026-05-16 09:53:23.094524
10	5a5zlqyaywri3hx4baqsymf4gm2n	booking-mila.jpg	image/jpeg	{"identified":true,"width":160,"height":112,"analyzed":true}	local	63812	N32IHpuz1XsnGEHwGjB4mA==	2026-05-16 09:53:23.847251
11	ze16iua8cqi62ujr57vyg0wwc45w	booking-mila.jpg	image/jpeg	{"identified":true,"width":2048,"height":1431,"analyzed":true}	local	641085	w9ixCZLzUa6zbPsqBluK+w==	2026-05-16 09:53:28.490926
12	36dxpvof2agili9c7wpmekv2z5ta	FOK-crew_019.jpg	image/jpeg	{"identified":true,"width":1600,"height":1067,"analyzed":true}	local	511428	R7C85WqUyXz0whngzRT7EA==	2026-05-16 09:58:43.076371
13	nq2ujrm8wpqoy874ugcw7pwuwc1s	FOK-crew_019.jpg	image/jpeg	{"identified":true,"width":240,"height":160,"analyzed":true}	local	72034	6L7j7immMIARLyEEQk8QkQ==	2026-05-16 09:58:43.509685
14	6s3j3cxne5sku3eeye7ieuboxpis	FOK-crew_019.jpg	image/jpeg	{"identified":true,"width":160,"height":107,"analyzed":true}	local	63548	OhnFRglw+0C3qO/uZPdQLQ==	2026-05-16 09:58:44.304299
15	4gaqftldz6yvxvv9e456tvy5ohy9	FOK-crew_019.jpg	image/jpeg	{"identified":true,"width":1600,"height":1067,"analyzed":true}	local	531464	zWmiIUsL56m5SMttAU3BpQ==	2026-05-16 10:00:26.373205
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	1	ha2VGXYYlsHaB4NynZRXqT1jQJI=
2	1	0uDgzYtqL1keU9yXWoSPkQBmpwM=
3	4	oHtmvIyerZGlC5ZQI75jQhKxKsE=
4	4	ha2VGXYYlsHaB4NynZRXqT1jQJI=
5	4	0uDgzYtqL1keU9yXWoSPkQBmpwM=
6	8	oHtmvIyerZGlC5ZQI75jQhKxKsE=
7	8	ha2VGXYYlsHaB4NynZRXqT1jQJI=
8	8	0uDgzYtqL1keU9yXWoSPkQBmpwM=
9	12	oHtmvIyerZGlC5ZQI75jQhKxKsE=
10	12	ha2VGXYYlsHaB4NynZRXqT1jQJI=
11	12	0uDgzYtqL1keU9yXWoSPkQBmpwM=
\.


--
-- Data for Name: alchemy_attachments; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_attachments (id, name, file_name, file_mime_type, file_size, creator_id, updater_id, created_at, updated_at, file_uid) FROM stdin;
\.


--
-- Data for Name: alchemy_elements; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_elements (id, name, "position", public, folded, "unique", created_at, updated_at, creator_id, updater_id, parent_element_id, fixed, page_version_id, public_on, public_until) FROM stdin;
9	hero	1	t	f	f	2026-05-14 18:16:31.694623	2026-05-14 18:26:03.956173	1	1	\N	f	6	2026-05-14 18:16:31.679221	\N
11	rich_text	2	t	f	f	2026-05-14 20:16:35.808369	2026-05-14 20:16:55.437012	1	1	\N	f	6	2026-05-14 20:16:35.785945	\N
14	cta	3	t	f	f	2026-05-14 20:21:08.287191	2026-05-14 20:21:43.170234	1	1	\N	f	6	2026-05-14 20:21:08.244657	\N
15	hero	1	t	f	f	2026-05-14 20:22:25.024592	2026-05-14 20:22:25.024592	\N	\N	\N	f	7	2026-05-14 18:16:31.679221	\N
16	rich_text	2	t	f	f	2026-05-14 20:22:25.156165	2026-05-14 20:22:25.156165	\N	\N	\N	f	7	2026-05-14 20:16:35.785945	\N
17	cta	3	t	f	f	2026-05-14 20:22:25.295116	2026-05-14 20:22:25.295116	\N	\N	\N	f	7	2026-05-14 20:21:08.244657	\N
18	hero	1	t	f	f	2026-05-14 21:24:33.892987	2026-05-14 21:25:33.039971	1	1	\N	f	8	2026-05-14 21:24:33.877488	\N
19	cta	2	t	f	f	2026-05-14 21:26:00.8758	2026-05-14 21:27:54.779287	1	1	\N	f	8	2026-05-14 21:26:00.858246	\N
20	hero	1	t	f	f	2026-05-16 09:50:46.505734	2026-05-16 09:53:50.364203	\N	\N	\N	f	10	2026-05-16 09:50:46.488269	\N
21	hero	1	t	f	f	2026-05-16 09:53:52.259761	2026-05-16 09:53:52.259761	\N	\N	\N	f	11	2026-05-16 09:50:46.488269	\N
22	hero	1	t	f	f	2026-05-16 09:56:08.075371	2026-05-16 10:00:25.801344	\N	\N	\N	f	15	2026-05-16 09:56:08.066902	\N
23	hero	1	t	f	f	2026-05-16 10:00:30.39246	2026-05-16 10:00:30.39246	\N	\N	\N	f	16	2026-05-16 09:56:08.066902	\N
24	hero	1	t	f	f	2026-05-16 10:01:42.57736	2026-05-16 10:01:42.57736	\N	\N	\N	f	9	2026-05-14 21:24:33.877488	\N
25	cta	2	t	f	f	2026-05-16 10:01:42.673927	2026-05-16 10:01:42.673927	\N	\N	\N	f	9	2026-05-14 21:26:00.858246	\N
\.


--
-- Data for Name: alchemy_elements_alchemy_pages; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_elements_alchemy_pages (element_id, page_id) FROM stdin;
7	4
9	4
10	4
11	4
12	4
13	4
14	4
15	4
16	4
17	4
18	5
19	5
20	6
21	6
22	9
23	9
24	5
25	5
\.


--
-- Data for Name: alchemy_folded_pages; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_folded_pages (id, page_id, user_id, folded) FROM stdin;
\.


--
-- Data for Name: alchemy_ingredients; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_ingredients (id, element_id, type, role, value, data, related_object_type, related_object_id, created_at, updated_at) FROM stdin;
66	22	Alchemy::Ingredients::Text	headline	Rules	{}	\N	\N	2026-05-16 09:56:08.108926	2026-05-16 10:00:25.744006
67	22	Alchemy::Ingredients::Richtext	subheadline		{"stripped_body": "", "sanitized_body": ""}	\N	\N	2026-05-16 09:56:08.120812	2026-05-16 10:00:25.76694
68	22	Alchemy::Ingredients::Text	button_text	Our Conduct Policy	{}	\N	\N	2026-05-16 09:56:08.128936	2026-05-16 10:00:25.777035
69	22	Alchemy::Ingredients::Text	button_link	rules/conduct-policy	{}	\N	\N	2026-05-16 09:56:08.137065	2026-05-16 10:00:25.785039
70	22	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	4	2026-05-16 09:56:08.143464	2026-05-16 10:00:25.793919
76	24	Alchemy::Ingredients::Text	headline	About	{}	\N	\N	2026-05-16 10:01:42.585675	2026-05-16 10:01:42.585675
77	24	Alchemy::Ingredients::Richtext	subheadline	<p>Some text goes here i guess</p>	{"stripped_body": "Some text goes here i guess", "sanitized_body": "<p>Some text goes here i guess</p>"}	\N	\N	2026-05-16 10:01:42.593698	2026-05-16 10:01:42.593698
71	23	Alchemy::Ingredients::Text	headline	Rules	{}	\N	\N	2026-05-16 10:00:30.401673	2026-05-16 10:00:30.401673
72	23	Alchemy::Ingredients::Richtext	subheadline		{"stripped_body": "", "sanitized_body": ""}	\N	\N	2026-05-16 10:00:30.411039	2026-05-16 10:00:30.411039
73	23	Alchemy::Ingredients::Text	button_text	Our Conduct Policy	{}	\N	\N	2026-05-16 10:00:30.420656	2026-05-16 10:00:30.420656
74	23	Alchemy::Ingredients::Text	button_link	rules/conduct-policy	{}	\N	\N	2026-05-16 10:00:30.429115	2026-05-16 10:00:30.429115
75	23	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	4	2026-05-16 10:00:30.44079	2026-05-16 10:00:30.44079
78	24	Alchemy::Ingredients::Text	button_text		{}	\N	\N	2026-05-16 10:01:42.59997	2026-05-16 10:01:42.59997
79	24	Alchemy::Ingredients::Text	button_link		{}	\N	\N	2026-05-16 10:01:42.608413	2026-05-16 10:01:42.608413
80	24	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	2	2026-05-16 10:01:42.614183	2026-05-16 10:01:42.614183
81	25	Alchemy::Ingredients::Text	headline	Lore	{}	\N	\N	2026-05-16 10:01:42.681262	2026-05-16 10:01:42.681262
82	25	Alchemy::Ingredients::Text	button_text	This tells you 30+ years of history, good luck!	{}	\N	\N	2026-05-16 10:01:42.687617	2026-05-16 10:01:42.687617
83	25	Alchemy::Ingredients::Text	button_link	/lore	{}	\N	\N	2026-05-16 10:01:42.693854	2026-05-16 10:01:42.693854
21	9	Alchemy::Ingredients::Text	button_text	Discover DC	{}	\N	\N	2026-05-14 18:16:31.831537	2026-05-14 18:26:03.933295
19	9	Alchemy::Ingredients::Text	headline	Dumnonni Chronicles	{}	\N	\N	2026-05-14 18:16:31.799504	2026-05-14 18:26:03.880188
20	9	Alchemy::Ingredients::Richtext	subheadline	<p>Live action roleplay inspired by Celtic mythology, dark age Britain,<br>and heroic storytelling.</p>\n<p>Step into a world of oath-bound heroes, ancient powers, feasting halls,<br>battle, mystery, and myth.</p>	{"stripped_body": "Live action roleplay inspired by Celtic mythology, dark age Britain,and heroic storytelling.\\nStep into a world of oath-bound heroes, ancient powers, feasting halls,battle, mystery, and myth.", "sanitized_body": "<p>Live action roleplay inspired by Celtic mythology, dark age Britain,<br>and heroic storytelling.</p>\\n<p>Step into a world of oath-bound heroes, ancient powers, feasting halls,<br>battle, mystery, and myth.</p>"}	\N	\N	2026-05-14 18:16:31.819096	2026-05-14 18:26:03.92323
22	9	Alchemy::Ingredients::Text	button_link	/about	{}	\N	\N	2026-05-14 18:16:31.841541	2026-05-14 18:26:03.940635
23	9	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	1	2026-05-14 18:16:31.85308	2026-05-14 18:26:03.948545
29	11	Alchemy::Ingredients::Richtext	content	<p>The crew guide wants to be shiny and friendly <br><br><strong>PLEASE!</strong></p>	{"stripped_body": "The crew guide wants to be shiny and friendly PLEASE!", "sanitized_body": "<p>The crew guide wants to be shiny and friendly <br><br><strong>PLEASE!</strong></p>"}	\N	\N	2026-05-14 20:16:35.892963	2026-05-14 20:16:55.421256
36	14	Alchemy::Ingredients::Text	headline	Come Crew!	{}	\N	\N	2026-05-14 20:21:08.401752	2026-05-14 20:21:43.098014
37	14	Alchemy::Ingredients::Text	button_text	Crewing info here!	{}	\N	\N	2026-05-14 20:21:08.430203	2026-05-14 20:21:43.151472
38	14	Alchemy::Ingredients::Text	button_link	/about	{}	\N	\N	2026-05-14 20:21:08.622792	2026-05-14 20:21:43.162434
39	15	Alchemy::Ingredients::Text	headline	Dumnonni Chronicles	{}	\N	\N	2026-05-14 20:22:25.038424	2026-05-14 20:22:25.038424
40	15	Alchemy::Ingredients::Richtext	subheadline	<p>Live action roleplay inspired by Celtic mythology, dark age Britain,<br>and heroic storytelling.</p>\n<p>Step into a world of oath-bound heroes, ancient powers, feasting halls,<br>battle, mystery, and myth.</p>	{"stripped_body": "Live action roleplay inspired by Celtic mythology, dark age Britain,and heroic storytelling.\\nStep into a world of oath-bound heroes, ancient powers, feasting halls,battle, mystery, and myth.", "sanitized_body": "<p>Live action roleplay inspired by Celtic mythology, dark age Britain,<br>and heroic storytelling.</p>\\n<p>Step into a world of oath-bound heroes, ancient powers, feasting halls,<br>battle, mystery, and myth.</p>"}	\N	\N	2026-05-14 20:22:25.055461	2026-05-14 20:22:25.055461
41	15	Alchemy::Ingredients::Text	button_text	Discover DC	{}	\N	\N	2026-05-14 20:22:25.067779	2026-05-14 20:22:25.067779
42	15	Alchemy::Ingredients::Text	button_link	/about	{}	\N	\N	2026-05-14 20:22:25.079369	2026-05-14 20:22:25.079369
43	15	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	1	2026-05-14 20:22:25.102816	2026-05-14 20:22:25.102816
44	16	Alchemy::Ingredients::Richtext	content	<p>The crew guide wants to be shiny and friendly <br><br><strong>PLEASE!</strong></p>	{"stripped_body": "The crew guide wants to be shiny and friendly PLEASE!", "sanitized_body": "<p>The crew guide wants to be shiny and friendly <br><br><strong>PLEASE!</strong></p>"}	\N	\N	2026-05-14 20:22:25.172132	2026-05-14 20:22:25.172132
45	17	Alchemy::Ingredients::Text	headline	Come Crew!	{}	\N	\N	2026-05-14 20:22:25.306336	2026-05-14 20:22:25.306336
46	17	Alchemy::Ingredients::Text	button_text	Crewing info here!	{}	\N	\N	2026-05-14 20:22:25.315596	2026-05-14 20:22:25.315596
47	17	Alchemy::Ingredients::Text	button_link	/about	{}	\N	\N	2026-05-14 20:22:25.336185	2026-05-14 20:22:25.336185
48	18	Alchemy::Ingredients::Text	headline	About	{}	\N	\N	2026-05-14 21:24:33.990099	2026-05-14 21:25:32.794843
49	18	Alchemy::Ingredients::Richtext	subheadline	<p>Some text goes here i guess</p>	{"stripped_body": "Some text goes here i guess", "sanitized_body": "<p>Some text goes here i guess</p>"}	\N	\N	2026-05-14 21:24:34.02427	2026-05-14 21:25:32.898454
50	18	Alchemy::Ingredients::Text	button_text		{}	\N	\N	2026-05-14 21:24:34.04069	2026-05-14 21:25:32.925131
51	18	Alchemy::Ingredients::Text	button_link		{}	\N	\N	2026-05-14 21:24:34.056262	2026-05-14 21:25:32.954044
52	18	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	2	2026-05-14 21:24:34.074584	2026-05-14 21:25:33.021531
53	19	Alchemy::Ingredients::Text	headline	Lore	{}	\N	\N	2026-05-14 21:26:00.952672	2026-05-14 21:27:54.703012
54	19	Alchemy::Ingredients::Text	button_text	This tells you 30+ years of history, good luck!	{}	\N	\N	2026-05-14 21:26:00.970723	2026-05-14 21:27:54.747911
55	19	Alchemy::Ingredients::Text	button_link	/lore	{}	\N	\N	2026-05-14 21:26:00.99769	2026-05-14 21:27:54.765959
56	20	Alchemy::Ingredients::Text	headline	Booking	{}	\N	\N	2026-05-16 09:50:46.574841	2026-05-16 09:53:27.700907
61	21	Alchemy::Ingredients::Text	headline	Booking	{}	\N	\N	2026-05-16 09:53:52.269876	2026-05-16 09:53:52.269876
58	20	Alchemy::Ingredients::Text	button_text	Find out about playing	{}	\N	\N	2026-05-16 09:50:46.608941	2026-05-16 09:53:27.741227
59	20	Alchemy::Ingredients::Text	button_link	/booking/new-player	{}	\N	\N	2026-05-16 09:50:46.624174	2026-05-16 09:53:27.750606
60	20	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	3	2026-05-16 09:50:46.63662	2026-05-16 09:53:27.759381
57	20	Alchemy::Ingredients::Richtext	subheadline	<p>DC usually runs 3 events a year, run from our Okehampton site.</p>\n<p>These have limited player spaces and unlimited crew</p>	{"stripped_body": "DC usually runs 3 events a year, run from our Okehampton site.\\nThese have limited player spaces and unlimited crew", "sanitized_body": "<p>DC usually runs 3 events a year, run from our Okehampton site.</p>\\n<p>These have limited player spaces and unlimited crew</p>"}	\N	\N	2026-05-16 09:50:46.596777	2026-05-16 09:53:50.357274
62	21	Alchemy::Ingredients::Text	button_text	Find out about playing	{}	\N	\N	2026-05-16 09:53:52.279552	2026-05-16 09:53:52.279552
63	21	Alchemy::Ingredients::Text	button_link	/booking/new-player	{}	\N	\N	2026-05-16 09:53:52.288575	2026-05-16 09:53:52.288575
64	21	Alchemy::Ingredients::Picture	background_image	\N	{"link": "", "crop_from": "", "crop_size": "", "link_title": "", "link_target": "", "link_class_name": ""}	Alchemy::Picture	3	2026-05-16 09:53:52.297736	2026-05-16 09:53:52.297736
65	21	Alchemy::Ingredients::Richtext	subheadline	<p>DC usually runs 3 events a year, run from our Okehampton site.</p>\n<p>These have limited player spaces and unlimited crew</p>	{"stripped_body": "DC usually runs 3 events a year, run from our Okehampton site.\\nThese have limited player spaces and unlimited crew", "sanitized_body": "<p>DC usually runs 3 events a year, run from our Okehampton site.</p>\\n<p>These have limited player spaces and unlimited crew</p>"}	\N	\N	2026-05-16 09:53:52.316128	2026-05-16 09:53:52.316128
\.


--
-- Data for Name: alchemy_languages; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_languages (id, name, language_code, frontpage_name, page_layout, public, created_at, updated_at, creator_id, updater_id, "default", country_code, site_id, locale) FROM stdin;
1	English	en	Index	index	t	2026-05-08 21:03:02.118175	2026-05-08 21:03:02.118175	\N	\N	t		1	en
\.


--
-- Data for Name: alchemy_legacy_page_urls; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_legacy_page_urls (id, urlname, page_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: alchemy_nodes; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_nodes (id, name, title, url, nofollow, external, folded, parent_id, lft, rgt, depth, page_id, language_id, creator_id, updater_id, created_at, updated_at, menu_type) FROM stdin;
\.


--
-- Data for Name: alchemy_page_mutexes; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_page_mutexes (id, page_id, created_at) FROM stdin;
\.


--
-- Data for Name: alchemy_page_versions; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_page_versions (id, page_id, public_on, public_until, created_at, updated_at, title, meta_description, meta_keywords) FROM stdin;
6	4	\N	\N	2026-05-08 21:22:51.537594	2026-05-14 20:21:43.190509	Home	\N	\N
7	4	2026-05-08 21:28:31.883457	\N	2026-05-08 21:28:32.094342	2026-05-14 20:22:24.088243	Home	\N	\N
8	5	\N	\N	2026-05-14 21:22:58.079091	2026-05-14 21:27:54.81135	About	\N	\N
12	7	\N	\N	2026-05-16 09:41:21.716659	2026-05-16 09:41:21.716659	Gallery	\N	\N
13	7	2026-05-16 09:41:24.58097	\N	2026-05-16 09:41:24.701346	2026-05-16 09:41:24.58097	Gallery	\N	\N
10	6	\N	\N	2026-05-16 09:40:56.487997	2026-05-16 09:53:50.390148	Booking	\N	\N
11	6	2026-05-16 09:41:02.525484	\N	2026-05-16 09:41:02.91111	2026-05-16 09:53:51.892796	Booking	\N	\N
15	9	\N	\N	2026-05-16 09:56:00.15129	2026-05-16 10:00:25.817161	Rules	\N	\N
16	9	2026-05-16 10:00:30.118873	\N	2026-05-16 10:00:30.280155	2026-05-16 10:00:30.118873	Rules	\N	\N
17	10	\N	\N	2026-05-16 10:01:19.058579	2026-05-16 10:01:19.058579	Contact	\N	\N
18	10	2026-05-16 10:01:22.142885	\N	2026-05-16 10:01:22.265675	2026-05-16 10:01:22.142885	Contact	\N	\N
9	5	2026-05-14 21:24:23.155809	\N	2026-05-14 21:24:23.408463	2026-05-16 10:01:42.326789	About	\N	\N
\.


--
-- Data for Name: alchemy_pages; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_pages (id, name, urlname, title, language_code, language_root, page_layout, meta_keywords, meta_description, lft, rgt, parent_id, depth, locked_by, restricted, robot_index, robot_follow, sitemap, layoutpage, created_at, updated_at, creator_id, updater_id, language_id, published_at, locked_at, searchable) FROM stdin;
6	Booking	booking	\N	en	f	standard	\N	\N	4	5	4	1	1	f	t	t	t	f	2026-05-16 09:40:56.408322	2026-05-16 09:53:52.332551	1	1	1	2026-05-16 09:53:51.892796	2026-05-16 09:40:57.290078	t
9	Rules	rules	\N	en	f	standard	\N	\N	8	9	4	1	1	f	t	t	t	f	2026-05-16 09:56:00.108932	2026-05-16 10:00:30.459453	\N	\N	1	2026-05-16 10:00:30.118873	2026-05-16 09:56:00.556726	t
4	Home	home	\N	en	t	homepage	\N	\N	1	12	\N	0	1	f	t	t	t	f	2026-05-08 21:22:51.498573	2026-05-16 10:01:19.09047	\N	\N	1	2026-05-14 20:22:24.088243	2026-05-08 21:22:51.781052	t
10	Contact	contact	\N	en	f	standard	\N	\N	10	11	4	1	1	f	t	t	t	f	2026-05-16 10:01:19.037134	2026-05-16 10:01:22.301331	\N	\N	1	2026-05-16 10:01:22.142885	2026-05-16 10:01:19.486015	t
5	About	about	\N	en	f	standard	\N	\N	2	3	4	1	1	f	t	t	t	f	2026-05-14 21:22:57.973232	2026-05-16 10:01:42.711395	1	1	1	2026-05-16 10:01:42.326789	2026-05-14 21:22:58.823521	t
7	Gallery	gallery	\N	en	f	standard	\N	\N	6	7	4	1	1	f	t	t	t	f	2026-05-16 09:41:21.690649	2026-05-16 09:41:24.731809	1	1	1	2026-05-16 09:41:24.58097	2026-05-16 09:41:22.08727	t
\.


--
-- Data for Name: alchemy_picture_descriptions; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_picture_descriptions (id, picture_id, language_id, text, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: alchemy_picture_thumbs; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_picture_thumbs (id, picture_id, signature, uid) FROM stdin;
\.


--
-- Data for Name: alchemy_pictures; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_pictures (id, name, image_file_name, image_file_width, image_file_height, created_at, updated_at, creator_id, updater_id, upload_hash, image_file_uid, image_file_size, image_file_format) FROM stdin;
1	War white of the mists	\N	\N	\N	2026-05-14 18:25:50.684921	2026-05-14 18:25:50.921414	1	1	-1157231349715865195	\N	\N	\N
2	People	\N	\N	\N	2026-05-14 21:25:21.103817	2026-05-14 21:25:22.316138	1	1	-3008767928187908862	\N	\N	\N
3	Booking-mila	\N	\N	\N	2026-05-16 09:53:22.398254	2026-05-16 09:53:22.88825	\N	\N	987174810699820660	\N	\N	\N
4	Fok-crew 019	\N	\N	\N	2026-05-16 09:58:43.048585	2026-05-16 09:58:43.292742	\N	\N	1280137111995581234	\N	\N	\N
\.


--
-- Data for Name: alchemy_sites; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_sites (id, host, name, created_at, updated_at, public, aliases, redirect_to_primary_host) FROM stdin;
1	*	Dumnonni	2026-05-08 21:02:35.515511	2026-05-08 21:02:35.515511	t		f
\.


--
-- Data for Name: alchemy_users; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.alchemy_users (id, firstname, lastname, login, email, language, encrypted_password, password_salt, sign_in_count, failed_attempts, last_request_at, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, creator_id, updater_id, cached_tag_list, reset_password_token, reset_password_sent_at, alchemy_roles, remember_created_at, timezone) FROM stdin;
1	Stacy	Hayes	stacy.oswald@outlook.com	stacy.oswald@outlook.com	\N	$2a$12$q2cu5IxvKJoUNyfxBLZpquIQQGtEAVu/fyS5ecrTjObFhuXC4J/J2		7	0	2026-05-16 10:27:34.37336	2026-05-16 09:37:25.238798	2026-05-16 09:36:53.363408	::1	::1	2026-05-08 21:01:20.873316	2026-05-16 09:37:25.246182	\N	\N	\N	\N	\N	admin	2026-05-08 21:12:48.884934	London
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2026-05-08 20:57:21.117595	2026-05-08 20:57:21.117602
\.


--
-- Data for Name: gutentag_taggings; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.gutentag_taggings (id, tag_id, taggable_id, taggable_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: gutentag_tags; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.gutentag_tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: stacy
--

COPY public.schema_migrations (version) FROM stdin;
20260508205713
20260508205714
20260508205715
20260508205718
20260508205719
20260508205720
20260508205721
20260508205722
20260508205723
20260508205724
20260508205725
20260508205726
20260508205727
20260508205728
20260508210029
20260508210030
20260508210031
20260508210032
20260508210033
20260514182438
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 15, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 15, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 11, true);


--
-- Name: alchemy_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_attachments_id_seq', 1, false);


--
-- Name: alchemy_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_elements_id_seq', 25, true);


--
-- Name: alchemy_folded_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_folded_pages_id_seq', 1, false);


--
-- Name: alchemy_ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_ingredients_id_seq', 83, true);


--
-- Name: alchemy_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_languages_id_seq', 1, true);


--
-- Name: alchemy_legacy_page_urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_legacy_page_urls_id_seq', 1, false);


--
-- Name: alchemy_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_nodes_id_seq', 1, false);


--
-- Name: alchemy_page_mutexes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_page_mutexes_id_seq', 13, true);


--
-- Name: alchemy_page_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_page_versions_id_seq', 18, true);


--
-- Name: alchemy_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_pages_id_seq', 10, true);


--
-- Name: alchemy_picture_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_picture_descriptions_id_seq', 1, false);


--
-- Name: alchemy_picture_thumbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_picture_thumbs_id_seq', 1, false);


--
-- Name: alchemy_pictures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_pictures_id_seq', 4, true);


--
-- Name: alchemy_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_sites_id_seq', 1, true);


--
-- Name: alchemy_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.alchemy_users_id_seq', 1, true);


--
-- Name: gutentag_taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.gutentag_taggings_id_seq', 1, false);


--
-- Name: gutentag_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stacy
--

SELECT pg_catalog.setval('public.gutentag_tags_id_seq', 1, false);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: alchemy_attachments alchemy_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_attachments
    ADD CONSTRAINT alchemy_attachments_pkey PRIMARY KEY (id);


--
-- Name: alchemy_elements alchemy_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_elements
    ADD CONSTRAINT alchemy_elements_pkey PRIMARY KEY (id);


--
-- Name: alchemy_folded_pages alchemy_folded_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_folded_pages
    ADD CONSTRAINT alchemy_folded_pages_pkey PRIMARY KEY (id);


--
-- Name: alchemy_ingredients alchemy_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_ingredients
    ADD CONSTRAINT alchemy_ingredients_pkey PRIMARY KEY (id);


--
-- Name: alchemy_languages alchemy_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_languages
    ADD CONSTRAINT alchemy_languages_pkey PRIMARY KEY (id);


--
-- Name: alchemy_legacy_page_urls alchemy_legacy_page_urls_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_legacy_page_urls
    ADD CONSTRAINT alchemy_legacy_page_urls_pkey PRIMARY KEY (id);


--
-- Name: alchemy_nodes alchemy_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_nodes
    ADD CONSTRAINT alchemy_nodes_pkey PRIMARY KEY (id);


--
-- Name: alchemy_page_mutexes alchemy_page_mutexes_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_page_mutexes
    ADD CONSTRAINT alchemy_page_mutexes_pkey PRIMARY KEY (id);


--
-- Name: alchemy_page_versions alchemy_page_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_page_versions
    ADD CONSTRAINT alchemy_page_versions_pkey PRIMARY KEY (id);


--
-- Name: alchemy_pages alchemy_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_pages
    ADD CONSTRAINT alchemy_pages_pkey PRIMARY KEY (id);


--
-- Name: alchemy_picture_descriptions alchemy_picture_descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_descriptions
    ADD CONSTRAINT alchemy_picture_descriptions_pkey PRIMARY KEY (id);


--
-- Name: alchemy_picture_thumbs alchemy_picture_thumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_thumbs
    ADD CONSTRAINT alchemy_picture_thumbs_pkey PRIMARY KEY (id);


--
-- Name: alchemy_pictures alchemy_pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_pictures
    ADD CONSTRAINT alchemy_pictures_pkey PRIMARY KEY (id);


--
-- Name: alchemy_sites alchemy_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_sites
    ADD CONSTRAINT alchemy_sites_pkey PRIMARY KEY (id);


--
-- Name: alchemy_users alchemy_users_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_users
    ADD CONSTRAINT alchemy_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: gutentag_taggings gutentag_taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.gutentag_taggings
    ADD CONSTRAINT gutentag_taggings_pkey PRIMARY KEY (id);


--
-- Name: gutentag_tags gutentag_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.gutentag_tags
    ADD CONSTRAINT gutentag_tags_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: alchemy_picture_descriptions_on_picture_id_and_language_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX alchemy_picture_descriptions_on_picture_id_and_language_id ON public.alchemy_picture_descriptions USING btree (picture_id, language_id);


--
-- Name: alchemy_sites_public_hosts_idx; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX alchemy_sites_public_hosts_idx ON public.alchemy_sites USING btree (host, public);


--
-- Name: idx_alchemy_elements_on_page_version_id_and_parent_element_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX idx_alchemy_elements_on_page_version_id_and_parent_element_id ON public.alchemy_elements USING btree (page_version_id, parent_element_id);


--
-- Name: idx_alchemy_elements_on_page_version_id_and_position; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX idx_alchemy_elements_on_page_version_id_and_position ON public.alchemy_elements USING btree (page_version_id, "position");


--
-- Name: idx_alchemy_ingredient_relation; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX idx_alchemy_ingredient_relation ON public.alchemy_ingredients USING btree (related_object_id, related_object_type);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_alchemy_attachments_on_created_at; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_attachments_on_created_at ON public.alchemy_attachments USING btree (created_at);


--
-- Name: index_alchemy_attachments_on_creator_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_attachments_on_creator_id ON public.alchemy_attachments USING btree (creator_id);


--
-- Name: index_alchemy_attachments_on_file_uid; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_attachments_on_file_uid ON public.alchemy_attachments USING btree (file_uid);


--
-- Name: index_alchemy_attachments_on_updater_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_attachments_on_updater_id ON public.alchemy_attachments USING btree (updater_id);


--
-- Name: index_alchemy_elements_alchemy_pages_on_element_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_alchemy_pages_on_element_id ON public.alchemy_elements_alchemy_pages USING btree (element_id);


--
-- Name: index_alchemy_elements_alchemy_pages_on_page_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_alchemy_pages_on_page_id ON public.alchemy_elements_alchemy_pages USING btree (page_id);


--
-- Name: index_alchemy_elements_on_creator_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_on_creator_id ON public.alchemy_elements USING btree (creator_id);


--
-- Name: index_alchemy_elements_on_fixed; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_on_fixed ON public.alchemy_elements USING btree (fixed);


--
-- Name: index_alchemy_elements_on_page_version_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_on_page_version_id ON public.alchemy_elements USING btree (page_version_id);


--
-- Name: index_alchemy_elements_on_public_on_and_public_until; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_on_public_on_and_public_until ON public.alchemy_elements USING btree (public_on, public_until);


--
-- Name: index_alchemy_elements_on_updater_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_elements_on_updater_id ON public.alchemy_elements USING btree (updater_id);


--
-- Name: index_alchemy_folded_pages_on_page_id_and_user_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_folded_pages_on_page_id_and_user_id ON public.alchemy_folded_pages USING btree (page_id, user_id);


--
-- Name: index_alchemy_ingredients_on_element_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_ingredients_on_element_id ON public.alchemy_ingredients USING btree (element_id);


--
-- Name: index_alchemy_ingredients_on_element_id_and_role; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_ingredients_on_element_id_and_role ON public.alchemy_ingredients USING btree (element_id, role);


--
-- Name: index_alchemy_ingredients_on_type; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_ingredients_on_type ON public.alchemy_ingredients USING btree (type);


--
-- Name: index_alchemy_languages_on_creator_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_languages_on_creator_id ON public.alchemy_languages USING btree (creator_id);


--
-- Name: index_alchemy_languages_on_language_code; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_languages_on_language_code ON public.alchemy_languages USING btree (language_code);


--
-- Name: index_alchemy_languages_on_language_code_and_country_code; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_languages_on_language_code_and_country_code ON public.alchemy_languages USING btree (language_code, country_code);


--
-- Name: index_alchemy_languages_on_site_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_languages_on_site_id ON public.alchemy_languages USING btree (site_id);


--
-- Name: index_alchemy_languages_on_updater_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_languages_on_updater_id ON public.alchemy_languages USING btree (updater_id);


--
-- Name: index_alchemy_legacy_page_urls_on_page_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_legacy_page_urls_on_page_id ON public.alchemy_legacy_page_urls USING btree (page_id);


--
-- Name: index_alchemy_legacy_page_urls_on_urlname; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_legacy_page_urls_on_urlname ON public.alchemy_legacy_page_urls USING btree (urlname);


--
-- Name: index_alchemy_nodes_on_creator_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_creator_id ON public.alchemy_nodes USING btree (creator_id);


--
-- Name: index_alchemy_nodes_on_language_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_language_id ON public.alchemy_nodes USING btree (language_id);


--
-- Name: index_alchemy_nodes_on_lft; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_lft ON public.alchemy_nodes USING btree (lft);


--
-- Name: index_alchemy_nodes_on_page_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_page_id ON public.alchemy_nodes USING btree (page_id);


--
-- Name: index_alchemy_nodes_on_parent_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_parent_id ON public.alchemy_nodes USING btree (parent_id);


--
-- Name: index_alchemy_nodes_on_rgt; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_rgt ON public.alchemy_nodes USING btree (rgt);


--
-- Name: index_alchemy_nodes_on_updater_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_nodes_on_updater_id ON public.alchemy_nodes USING btree (updater_id);


--
-- Name: index_alchemy_page_mutexes_on_page_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_page_mutexes_on_page_id ON public.alchemy_page_mutexes USING btree (page_id);


--
-- Name: index_alchemy_page_versions_on_page_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_page_versions_on_page_id ON public.alchemy_page_versions USING btree (page_id);


--
-- Name: index_alchemy_page_versions_on_public_on_and_public_until; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_page_versions_on_public_on_and_public_until ON public.alchemy_page_versions USING btree (public_on, public_until);


--
-- Name: index_alchemy_pages_on_creator_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pages_on_creator_id ON public.alchemy_pages USING btree (creator_id);


--
-- Name: index_alchemy_pages_on_language_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pages_on_language_id ON public.alchemy_pages USING btree (language_id);


--
-- Name: index_alchemy_pages_on_locked_at_and_locked_by; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pages_on_locked_at_and_locked_by ON public.alchemy_pages USING btree (locked_at, locked_by);


--
-- Name: index_alchemy_pages_on_rgt; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pages_on_rgt ON public.alchemy_pages USING btree (rgt);


--
-- Name: index_alchemy_pages_on_updater_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pages_on_updater_id ON public.alchemy_pages USING btree (updater_id);


--
-- Name: index_alchemy_picture_descriptions_on_language_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_picture_descriptions_on_language_id ON public.alchemy_picture_descriptions USING btree (language_id);


--
-- Name: index_alchemy_picture_descriptions_on_picture_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_picture_descriptions_on_picture_id ON public.alchemy_picture_descriptions USING btree (picture_id);


--
-- Name: index_alchemy_picture_thumbs_on_picture_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_picture_thumbs_on_picture_id ON public.alchemy_picture_thumbs USING btree (picture_id);


--
-- Name: index_alchemy_picture_thumbs_on_signature; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_picture_thumbs_on_signature ON public.alchemy_picture_thumbs USING btree (signature);


--
-- Name: index_alchemy_pictures_on_created_at; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pictures_on_created_at ON public.alchemy_pictures USING btree (created_at);


--
-- Name: index_alchemy_pictures_on_creator_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pictures_on_creator_id ON public.alchemy_pictures USING btree (creator_id);


--
-- Name: index_alchemy_pictures_on_image_file_name; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pictures_on_image_file_name ON public.alchemy_pictures USING btree (image_file_name);


--
-- Name: index_alchemy_pictures_on_name; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pictures_on_name ON public.alchemy_pictures USING btree (name);


--
-- Name: index_alchemy_pictures_on_updater_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_pictures_on_updater_id ON public.alchemy_pictures USING btree (updater_id);


--
-- Name: index_alchemy_sites_on_host; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_sites_on_host ON public.alchemy_sites USING btree (host);


--
-- Name: index_alchemy_users_on_alchemy_roles; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_users_on_alchemy_roles ON public.alchemy_users USING btree (alchemy_roles);


--
-- Name: index_alchemy_users_on_email; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_users_on_email ON public.alchemy_users USING btree (email);


--
-- Name: index_alchemy_users_on_firstname; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_users_on_firstname ON public.alchemy_users USING btree (firstname);


--
-- Name: index_alchemy_users_on_lastname; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_alchemy_users_on_lastname ON public.alchemy_users USING btree (lastname);


--
-- Name: index_alchemy_users_on_login; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_users_on_login ON public.alchemy_users USING btree (login);


--
-- Name: index_alchemy_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_alchemy_users_on_reset_password_token ON public.alchemy_users USING btree (reset_password_token);


--
-- Name: index_gutentag_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_gutentag_taggings_on_tag_id ON public.gutentag_taggings USING btree (tag_id);


--
-- Name: index_gutentag_taggings_on_taggable_type_and_taggable_id; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_gutentag_taggings_on_taggable_type_and_taggable_id ON public.gutentag_taggings USING btree (taggable_type, taggable_id);


--
-- Name: index_gutentag_tags_on_name; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX index_gutentag_tags_on_name ON public.gutentag_tags USING btree (name);


--
-- Name: index_gutentag_tags_on_taggings_count; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_gutentag_tags_on_taggings_count ON public.gutentag_tags USING btree (taggings_count);


--
-- Name: index_pages_on_parent_id_and_lft; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_pages_on_parent_id_and_lft ON public.alchemy_pages USING btree (parent_id, lft);


--
-- Name: index_pages_on_urlname; Type: INDEX; Schema: public; Owner: stacy
--

CREATE INDEX index_pages_on_urlname ON public.alchemy_pages USING btree (urlname);


--
-- Name: unique_taggings; Type: INDEX; Schema: public; Owner: stacy
--

CREATE UNIQUE INDEX unique_taggings ON public.gutentag_taggings USING btree (taggable_type, taggable_id, tag_id);


--
-- Name: alchemy_page_mutexes fk_rails_09d8fed4e4; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_page_mutexes
    ADD CONSTRAINT fk_rails_09d8fed4e4 FOREIGN KEY (page_id) REFERENCES public.alchemy_pages(id);


--
-- Name: alchemy_picture_thumbs fk_rails_1b57933328; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_thumbs
    ADD CONSTRAINT fk_rails_1b57933328 FOREIGN KEY (picture_id) REFERENCES public.alchemy_pictures(id);


--
-- Name: alchemy_pages fk_rails_3489ece4a8; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_pages
    ADD CONSTRAINT fk_rails_3489ece4a8 FOREIGN KEY (language_id) REFERENCES public.alchemy_languages(id);


--
-- Name: alchemy_ingredients fk_rails_405dee6718; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_ingredients
    ADD CONSTRAINT fk_rails_405dee6718 FOREIGN KEY (element_id) REFERENCES public.alchemy_elements(id) ON DELETE CASCADE;


--
-- Name: alchemy_languages fk_rails_4dbfeab690; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_languages
    ADD CONSTRAINT fk_rails_4dbfeab690 FOREIGN KEY (site_id) REFERENCES public.alchemy_sites(id);


--
-- Name: alchemy_nodes fk_rails_4fa807d465; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_nodes
    ADD CONSTRAINT fk_rails_4fa807d465 FOREIGN KEY (page_id) REFERENCES public.alchemy_pages(id) ON DELETE RESTRICT;


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: alchemy_page_versions fk_rails_b6ce7410af; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_page_versions
    ADD CONSTRAINT fk_rails_b6ce7410af FOREIGN KEY (page_id) REFERENCES public.alchemy_pages(id) ON DELETE CASCADE;


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: alchemy_picture_descriptions fk_rails_c68c19b5d1; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_descriptions
    ADD CONSTRAINT fk_rails_c68c19b5d1 FOREIGN KEY (language_id) REFERENCES public.alchemy_languages(id);


--
-- Name: alchemy_picture_descriptions fk_rails_d019c5bb9e; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_picture_descriptions
    ADD CONSTRAINT fk_rails_d019c5bb9e FOREIGN KEY (picture_id) REFERENCES public.alchemy_pictures(id);


--
-- Name: alchemy_elements fk_rails_d11a3cb7b1; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_elements
    ADD CONSTRAINT fk_rails_d11a3cb7b1 FOREIGN KEY (page_version_id) REFERENCES public.alchemy_page_versions(id) ON DELETE CASCADE;


--
-- Name: alchemy_nodes fk_rails_fb39f67b4b; Type: FK CONSTRAINT; Schema: public; Owner: stacy
--

ALTER TABLE ONLY public.alchemy_nodes
    ADD CONSTRAINT fk_rails_fb39f67b4b FOREIGN KEY (language_id) REFERENCES public.alchemy_languages(id);


--
-- PostgreSQL database dump complete
--

\unrestrict WGMDylDEHshm4ao5bIu6DACUru6hNZ594oBxVNscmZH8uo2mefID91iI3zaWWKK

