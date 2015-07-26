--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.twitter_tweet DROP CONSTRAINT twitter_tweet_query_id_5de4bfd6dfe46065_fk_twitter_query_id;
ALTER TABLE ONLY public.pages_richtextpage DROP CONSTRAINT pages_richtextpag_page_ptr_id_303aa0962fe9608b_fk_pages_page_id;
ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_site_id_22239f4327580ae9_fk_django_site_id;
ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_parent_id_7bf3217d99139bb8_fk_pages_page_id;
ALTER TABLE ONLY public.pages_link DROP CONSTRAINT pages_link_page_ptr_id_560afe0956838fd3_fk_pages_page_id;
ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_t_comment_ptr_id_7ce6b4612f86bbc6_fk_django_comments_id;
ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_user_id_323dfdffa0c13bac_fk_auth_user_id;
ALTER TABLE ONLY public.generic_keyword DROP CONSTRAINT generic_keyword_site_id_7727e5473a304097_fk_django_site_id;
ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assig_keyword_id_61d6fae39a09e150_fk_generic_keyword_id;
ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT gene_content_type_id_340baca94a5341cc_fk_django_content_type_id;
ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT gene_content_type_id_28e2096071be2a4f_fk_django_content_type_id;
ALTER TABLE ONLY public.galleries_gallery DROP CONSTRAINT galleries_gallery_page_ptr_id_6cf84f17bef39d64_fk_pages_page_id;
ALTER TABLE ONLY public.galleries_galleryimage DROP CONSTRAINT ga_gallery_id_5f743e845a8d8b01_fk_galleries_gallery_page_ptr_id;
ALTER TABLE ONLY public.forms_formentry DROP CONSTRAINT forms_formen_form_id_5fca4521fe2d9b9b_fk_forms_form_page_ptr_id;
ALTER TABLE ONLY public.forms_form DROP CONSTRAINT forms_form_page_ptr_id_2363a7422cd85950_fk_pages_page_id;
ALTER TABLE ONLY public.forms_fieldentry DROP CONSTRAINT forms_fieldentr_entry_id_7b83c1acf66a9d67_fk_forms_formentry_id;
ALTER TABLE ONLY public.forms_field DROP CONSTRAINT forms_field_form_id_3660963e8b17a175_fk_forms_form_page_ptr_id;
ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_site_id_121a4403f653e524_fk_django_site_id;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_user_id_20e3794dfd3a7b1e_fk_auth_user_id;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_site_id_48b7896f6ea83216_fk_django_site_id;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_1442753a03512f4c_fk_auth_user_id;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_comment_id_26f904a7f2b4c55_fk_django_comments_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT djan_content_type_id_39798e235626a505_fk_django_content_type_id;
ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission__site_id_6dd5fffb45435677_fk_django_site_id;
ALTER TABLE ONLY public.conf_setting DROP CONSTRAINT conf_setting_site_id_3971204fedfdfec8_fk_django_site_id;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT co_sitepermission_id_64c924a870a6a554_fk_core_sitepermission_id;
ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_user_id_3d08a741310d8f6f_fk_auth_user_id;
ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_site_id_3cd2a8869a3bc877_fk_django_site_id;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost__blogpost_id_11545014277324dc_fk_blog_blogpost_id;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpo_to_blogpost_id_48f773544ff96fa5_fk_blog_blogpost_id;
ALTER TABLE ONLY public.blog_blogcategory DROP CONSTRAINT blog_blogcategory_site_id_1565b70d240d75b_fk_django_site_id;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blog_from_blogpost_id_161efba073ba4d90_fk_blog_blogpost_id;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_b_blogcategory_id_5c987a15b9426892_fk_blog_blogcategory_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT "D8e54ed6535e17a5f07b3f5887fe55ff";
DROP INDEX public.twitter_tweet_0bbeda9c;
DROP INDEX public.pages_page_publish_date_4b581dded15f4cdf_uniq;
DROP INDEX public.pages_page_9365d6e7;
DROP INDEX public.pages_page_6be37982;
DROP INDEX public.generic_threadedcomment_21ce1e68;
DROP INDEX public.generic_rating_e8701ad4;
DROP INDEX public.generic_rating_417f1b1c;
DROP INDEX public.generic_keyword_9365d6e7;
DROP INDEX public.generic_assignedkeyword_5c003bba;
DROP INDEX public.generic_assignedkeyword_417f1b1c;
DROP INDEX public.galleries_galleryimage_6d994cdb;
DROP INDEX public.forms_formentry_d6cba1ad;
DROP INDEX public.forms_fieldentry_b64a62ea;
DROP INDEX public.forms_field_d6cba1ad;
DROP INDEX public.django_session_session_key_461cfeaa630ca218_like;
DROP INDEX public.django_session_de54fa62;
DROP INDEX public.django_redirect_old_path_9db3e423470cdaf_like;
DROP INDEX public.django_redirect_9365d6e7;
DROP INDEX public.django_redirect_91a0b591;
DROP INDEX public.django_comments_e8701ad4;
DROP INDEX public.django_comments_9365d6e7;
DROP INDEX public.django_comments_417f1b1c;
DROP INDEX public.django_comment_flags_flag_686b7398bb858e56_like;
DROP INDEX public.django_comment_flags_e8701ad4;
DROP INDEX public.django_comment_flags_69b97d17;
DROP INDEX public.django_comment_flags_327a6c43;
DROP INDEX public.django_admin_log_e8701ad4;
DROP INDEX public.django_admin_log_417f1b1c;
DROP INDEX public.core_sitepermission_sites_f6687ce4;
DROP INDEX public.core_sitepermission_sites_9365d6e7;
DROP INDEX public.conf_setting_9365d6e7;
DROP INDEX public.blog_blogpost_related_posts_71f16e58;
DROP INDEX public.blog_blogpost_related_posts_191c4981;
DROP INDEX public.blog_blogpost_publish_date_1015da2554a8e97f_uniq;
DROP INDEX public.blog_blogpost_e8701ad4;
DROP INDEX public.blog_blogpost_categories_efb54956;
DROP INDEX public.blog_blogpost_categories_53a0aca2;
DROP INDEX public.blog_blogpost_9365d6e7;
DROP INDEX public.blog_blogcategory_9365d6e7;
DROP INDEX public.auth_user_username_51b3b110094b8aae_like;
DROP INDEX public.auth_user_user_permissions_e8701ad4;
DROP INDEX public.auth_user_user_permissions_8373b171;
DROP INDEX public.auth_user_groups_e8701ad4;
DROP INDEX public.auth_user_groups_0e939a4f;
DROP INDEX public.auth_permission_417f1b1c;
DROP INDEX public.auth_group_permissions_8373b171;
DROP INDEX public.auth_group_permissions_0e939a4f;
DROP INDEX public.auth_group_name_253ae2a6331666e8_like;
ALTER TABLE ONLY public.twitter_tweet DROP CONSTRAINT twitter_tweet_pkey;
ALTER TABLE ONLY public.twitter_query DROP CONSTRAINT twitter_query_pkey;
ALTER TABLE ONLY public.pages_richtextpage DROP CONSTRAINT pages_richtextpage_pkey;
ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_pkey;
ALTER TABLE ONLY public.pages_link DROP CONSTRAINT pages_link_pkey;
ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_threadedcomment_pkey;
ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_pkey;
ALTER TABLE ONLY public.generic_keyword DROP CONSTRAINT generic_keyword_pkey;
ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assignedkeyword_pkey;
ALTER TABLE ONLY public.galleries_galleryimage DROP CONSTRAINT galleries_galleryimage_pkey;
ALTER TABLE ONLY public.galleries_gallery DROP CONSTRAINT galleries_gallery_pkey;
ALTER TABLE ONLY public.forms_formentry DROP CONSTRAINT forms_formentry_pkey;
ALTER TABLE ONLY public.forms_form DROP CONSTRAINT forms_form_pkey;
ALTER TABLE ONLY public.forms_fieldentry DROP CONSTRAINT forms_fieldentry_pkey;
ALTER TABLE ONLY public.forms_field DROP CONSTRAINT forms_field_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_site_id_old_path_key;
ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_pkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_c7a132a641f11c1_uniq;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_pkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_user_id_key;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_sitepermission_id_site_id_key;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_pkey;
ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_pkey;
ALTER TABLE ONLY public.conf_setting DROP CONSTRAINT conf_setting_pkey;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_related_posts_pkey;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_related_posts_from_blogpost_id_to_blogpost_id_key;
ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_pkey;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categories_pkey;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categories_blogpost_id_blogcategory_id_key;
ALTER TABLE ONLY public.blog_blogcategory DROP CONSTRAINT blog_blogcategory_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.twitter_tweet ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.twitter_query ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.pages_page ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.generic_rating ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.generic_keyword ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.generic_assignedkeyword ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.galleries_galleryimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.forms_formentry ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.forms_fieldentry ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.forms_field ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_redirect ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comment_flags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.core_sitepermission_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.core_sitepermission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.conf_setting ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogpost_related_posts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogpost_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogpost ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogcategory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.twitter_tweet_id_seq;
DROP TABLE public.twitter_tweet;
DROP SEQUENCE public.twitter_query_id_seq;
DROP TABLE public.twitter_query;
DROP TABLE public.pages_richtextpage;
DROP SEQUENCE public.pages_page_id_seq;
DROP TABLE public.pages_page;
DROP TABLE public.pages_link;
DROP TABLE public.generic_threadedcomment;
DROP SEQUENCE public.generic_rating_id_seq;
DROP TABLE public.generic_rating;
DROP SEQUENCE public.generic_keyword_id_seq;
DROP TABLE public.generic_keyword;
DROP SEQUENCE public.generic_assignedkeyword_id_seq;
DROP TABLE public.generic_assignedkeyword;
DROP SEQUENCE public.galleries_galleryimage_id_seq;
DROP TABLE public.galleries_galleryimage;
DROP TABLE public.galleries_gallery;
DROP SEQUENCE public.forms_formentry_id_seq;
DROP TABLE public.forms_formentry;
DROP TABLE public.forms_form;
DROP SEQUENCE public.forms_fieldentry_id_seq;
DROP TABLE public.forms_fieldentry;
DROP SEQUENCE public.forms_field_id_seq;
DROP TABLE public.forms_field;
DROP SEQUENCE public.django_site_id_seq;
DROP TABLE public.django_site;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_redirect_id_seq;
DROP TABLE public.django_redirect;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_comments_id_seq;
DROP TABLE public.django_comments;
DROP SEQUENCE public.django_comment_flags_id_seq;
DROP TABLE public.django_comment_flags;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.core_sitepermission_sites_id_seq;
DROP TABLE public.core_sitepermission_sites;
DROP SEQUENCE public.core_sitepermission_id_seq;
DROP TABLE public.core_sitepermission;
DROP SEQUENCE public.conf_setting_id_seq;
DROP TABLE public.conf_setting;
DROP SEQUENCE public.blog_blogpost_related_posts_id_seq;
DROP TABLE public.blog_blogpost_related_posts;
DROP SEQUENCE public.blog_blogpost_id_seq;
DROP SEQUENCE public.blog_blogpost_categories_id_seq;
DROP TABLE public.blog_blogpost_categories;
DROP TABLE public.blog_blogpost;
DROP SEQUENCE public.blog_blogcategory_id_seq;
DROP TABLE public.blog_blogcategory;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogcategory (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    site_id integer NOT NULL
);


ALTER TABLE public.blog_blogcategory OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogcategory_id_seq OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogcategory_id_seq OWNED BY blog_blogcategory.id;


--
-- Name: blog_blogpost; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost (
    id integer NOT NULL,
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    content text NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255),
    site_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost OWNER TO postgres;

--
-- Name: blog_blogpost_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_categories OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_categories_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_categories_id_seq OWNED BY blog_blogpost_categories.id;


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;


--
-- Name: blog_blogpost_related_posts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_related_posts OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_related_posts_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_related_posts_id_seq OWNED BY blog_blogpost_related_posts.id;


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE conf_setting (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    value character varying(2000) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.conf_setting OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conf_setting_id_seq OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE conf_setting_id_seq OWNED BY conf_setting.id;


--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_sitepermission_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_id_seq OWNED BY core_sitepermission.id;


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission_sites OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_sitepermission_sites_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_sites_id_seq OWNED BY core_sitepermission_sites.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.django_comment_flags OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_comment_flags_id_seq OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    object_pk text NOT NULL,
    user_name character varying(50) NOT NULL,
    user_email character varying(254) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL,
    content_type_id integer NOT NULL,
    site_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.django_comments OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_comments_id_seq OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE public.django_redirect OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_redirect_id_seq OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_redirect_id_seq OWNED BY django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: forms_field; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_field (
    id integer NOT NULL,
    _order integer,
    label character varying(200) NOT NULL,
    field_type integer NOT NULL,
    required boolean NOT NULL,
    visible boolean NOT NULL,
    choices character varying(1000) NOT NULL,
    "default" character varying(2000) NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    help_text character varying(100) NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE public.forms_field OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_field_id_seq OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_field_id_seq OWNED BY forms_field.id;


--
-- Name: forms_fieldentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_fieldentry (
    id integer NOT NULL,
    field_id integer NOT NULL,
    value character varying(2000),
    entry_id integer NOT NULL
);


ALTER TABLE public.forms_fieldentry OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_fieldentry_id_seq OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_fieldentry_id_seq OWNED BY forms_fieldentry.id;


--
-- Name: forms_form; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_form (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    send_email boolean NOT NULL,
    email_from character varying(254) NOT NULL,
    email_copies character varying(200) NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_message text NOT NULL
);


ALTER TABLE public.forms_form OWNER TO postgres;

--
-- Name: forms_formentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_formentry (
    id integer NOT NULL,
    entry_time timestamp with time zone NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE public.forms_formentry OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_formentry_id_seq OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_formentry_id_seq OWNED BY forms_formentry.id;


--
-- Name: galleries_gallery; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);


ALTER TABLE public.galleries_gallery OWNER TO postgres;

--
-- Name: galleries_galleryimage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL,
    gallery_id integer NOT NULL
);


ALTER TABLE public.galleries_galleryimage OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galleries_galleryimage_id_seq OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE galleries_galleryimage_id_seq OWNED BY galleries_galleryimage.id;


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_assignedkeyword (
    id integer NOT NULL,
    _order integer,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    keyword_id integer NOT NULL
);


ALTER TABLE public.generic_assignedkeyword OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generic_assignedkeyword_id_seq OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_assignedkeyword_id_seq OWNED BY generic_assignedkeyword.id;


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_keyword (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    site_id integer NOT NULL
);


ALTER TABLE public.generic_keyword OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generic_keyword_id_seq OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_keyword_id_seq OWNED BY generic_keyword.id;


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_rating (
    id integer NOT NULL,
    value integer NOT NULL,
    rating_date timestamp with time zone,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.generic_rating OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generic_rating_id_seq OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_rating_id_seq OWNED BY generic_rating.id;


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_threadedcomment (
    comment_ptr_id integer NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    by_author boolean NOT NULL,
    replied_to_id integer
);


ALTER TABLE public.generic_threadedcomment OWNER TO postgres;

--
-- Name: pages_link; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_link (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.pages_link OWNER TO postgres;

--
-- Name: pages_page; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_page (
    id integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    _order integer,
    in_menus character varying(100),
    titles character varying(1000),
    content_model character varying(50),
    login_required boolean NOT NULL,
    parent_id integer,
    site_id integer NOT NULL
);


ALTER TABLE public.pages_page OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_page_id_seq OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pages_page_id_seq OWNED BY pages_page.id;


--
-- Name: pages_richtextpage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_richtextpage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.pages_richtextpage OWNER TO postgres;

--
-- Name: twitter_query; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_query (
    id integer NOT NULL,
    type character varying(10) NOT NULL,
    value character varying(140) NOT NULL,
    interested boolean NOT NULL
);


ALTER TABLE public.twitter_query OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twitter_query_id_seq OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_query_id_seq OWNED BY twitter_query.id;


--
-- Name: twitter_tweet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_tweet (
    id integer NOT NULL,
    remote_id character varying(50) NOT NULL,
    created_at timestamp with time zone,
    text text,
    profile_image_url character varying(200),
    user_name character varying(100),
    full_name character varying(100),
    retweeter_profile_image_url character varying(200),
    retweeter_user_name character varying(100),
    retweeter_full_name character varying(100),
    query_id integer NOT NULL
);


ALTER TABLE public.twitter_tweet OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twitter_tweet_id_seq OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_tweet_id_seq OWNED BY twitter_tweet.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('blog_blogcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_related_posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting ALTER COLUMN id SET DEFAULT nextval('conf_setting_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect ALTER COLUMN id SET DEFAULT nextval('django_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field ALTER COLUMN id SET DEFAULT nextval('forms_field_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('forms_fieldentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry ALTER COLUMN id SET DEFAULT nextval('forms_formentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('galleries_galleryimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('generic_assignedkeyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword ALTER COLUMN id SET DEFAULT nextval('generic_keyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating ALTER COLUMN id SET DEFAULT nextval('generic_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page ALTER COLUMN id SET DEFAULT nextval('pages_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_query ALTER COLUMN id SET DEFAULT nextval('twitter_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet ALTER COLUMN id SET DEFAULT nextval('twitter_tweet_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add redirect	5	add_redirect
14	Can change redirect	5	change_redirect
15	Can delete redirect	5	delete_redirect
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add Setting	8	add_setting
23	Can change Setting	8	change_setting
24	Can delete Setting	8	delete_setting
25	Can add Site permission	9	add_sitepermission
26	Can change Site permission	9	change_sitepermission
27	Can delete Site permission	9	delete_sitepermission
28	Can add Comment	10	add_threadedcomment
29	Can change Comment	10	change_threadedcomment
30	Can delete Comment	10	delete_threadedcomment
31	Can add Keyword	11	add_keyword
32	Can change Keyword	11	change_keyword
33	Can delete Keyword	11	delete_keyword
34	Can add assigned keyword	12	add_assignedkeyword
35	Can change assigned keyword	12	change_assignedkeyword
36	Can delete assigned keyword	12	delete_assignedkeyword
37	Can add Rating	13	add_rating
38	Can change Rating	13	change_rating
39	Can delete Rating	13	delete_rating
40	Can add Page	14	add_page
41	Can change Page	14	change_page
42	Can delete Page	14	delete_page
43	Can add Rich text page	15	add_richtextpage
44	Can change Rich text page	15	change_richtextpage
45	Can delete Rich text page	15	delete_richtextpage
46	Can add Link	16	add_link
47	Can change Link	16	change_link
48	Can delete Link	16	delete_link
49	Can add Blog post	17	add_blogpost
50	Can change Blog post	17	change_blogpost
51	Can delete Blog post	17	delete_blogpost
52	Can add Blog Category	18	add_blogcategory
53	Can change Blog Category	18	change_blogcategory
54	Can delete Blog Category	18	delete_blogcategory
55	Can add Form	19	add_form
56	Can change Form	19	change_form
57	Can delete Form	19	delete_form
58	Can add Field	20	add_field
59	Can change Field	20	change_field
60	Can delete Field	20	delete_field
61	Can add Form entry	21	add_formentry
62	Can change Form entry	21	change_formentry
63	Can delete Form entry	21	delete_formentry
64	Can add Form field entry	22	add_fieldentry
65	Can change Form field entry	22	change_fieldentry
66	Can delete Form field entry	22	delete_fieldentry
67	Can add Gallery	23	add_gallery
68	Can change Gallery	23	change_gallery
69	Can delete Gallery	23	delete_gallery
70	Can add Image	24	add_galleryimage
71	Can change Image	24	change_galleryimage
72	Can delete Image	24	delete_galleryimage
73	Can add Twitter query	25	add_query
74	Can change Twitter query	25	change_query
75	Can delete Twitter query	25	delete_query
76	Can add Tweet	26	add_tweet
77	Can change Tweet	26	change_tweet
78	Can delete Tweet	26	delete_tweet
79	Can add log entry	27	add_logentry
80	Can change log entry	27	change_logentry
81	Can delete log entry	27	delete_logentry
82	Can add comment	28	add_comment
83	Can change comment	28	change_comment
84	Can delete comment	28	delete_comment
85	Can moderate comments	28	can_moderate
86	Can add comment flag	29	add_commentflag
87	Can change comment flag	29	change_commentflag
88	Can delete comment flag	29	delete_commentflag
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 88, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$15000$8qsPbpcgZBHn$5opUPrVEZc9E3J5SjWB9LMlrsfO+lU3unGCklGxC7aM=	2015-07-19 21:37:12.746506-04	t	rob			ayon.rab@gmail.com	t	t	2015-07-19 20:48:59.420754-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: blog_blogcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogcategory (id, title, slug, site_id) FROM stdin;
\.


--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogcategory_id_seq', 1, false);


--
-- Data for Name: blog_blogpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost (id, comments_count, keywords_string, rating_count, rating_sum, rating_average, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, content, allow_comments, featured_image, site_id, user_id) FROM stdin;
\.


--
-- Data for Name: blog_blogpost_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_categories (id, blogpost_id, blogcategory_id) FROM stdin;
\.


--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_categories_id_seq', 1, false);


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_id_seq', 1, false);


--
-- Data for Name: blog_blogpost_related_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_related_posts (id, from_blogpost_id, to_blogpost_id) FROM stdin;
\.


--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_related_posts_id_seq', 1, false);


--
-- Data for Name: conf_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY conf_setting (id, name, value, site_id) FROM stdin;
1	GOOGLE_ANALYTICS_ID		1
2	ADMIN_MENU_COLLAPSED	False	1
3	SEARCH_PER_PAGE	10	1
4	COMMENTS_NUM_LATEST	5	1
5	RICHTEXT_FILTER_LEVEL	1	1
6	TWITTER_CONSUMER_SECRET		1
7	COMMENTS_UNAPPROVED_VISIBLE	True	1
8	SITE_TAGLINE	Dhaka University Alumni Forum, Inc	1
9	TWITTER_DEFAULT_QUERY_TYPE	search	1
10	COMMENTS_REMOVED_VISIBLE	True	1
11	TWITTER_DEFAULT_NUM_TWEETS	3	1
12	BITLY_ACCESS_TOKEN		1
13	SSL_ENABLED	False	1
14	AKISMET_API_KEY		1
15	COMMENTS_DEFAULT_APPROVED	True	1
16	TWITTER_ACCESS_TOKEN_KEY		1
17	TWITTER_DEFAULT_QUERY	from:stephen_mcd mezzanine	1
18	SITE_TITLE	DUAFI	1
19	BLOG_POST_PER_PAGE	5	1
20	COMMENTS_NOTIFICATION_EMAILS		1
21	COMMENTS_DISQUS_API_PUBLIC_KEY		1
22	COMMENTS_DISQUS_API_SECRET_KEY		1
23	TWITTER_CONSUMER_KEY		1
24	COMMENTS_ACCOUNT_REQUIRED	False	1
25	MAX_PAGING_LINKS	10	1
26	TWITTER_ACCESS_TOKEN_SECRET		1
27	TAG_CLOUD_SIZES	4	1
28	COMMENTS_DISQUS_SHORTNAME		1
29	SSL_FORCE_HOST		1
30	RATINGS_ACCOUNT_REQUIRED	False	1
\.


--
-- Name: conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('conf_setting_id_seq', 30, true);


--
-- Data for Name: core_sitepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission (id, user_id) FROM stdin;
\.


--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_id_seq', 1, false);


--
-- Data for Name: core_sitepermission_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
\.


--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_sites_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-07-19 20:54:42.785066-04	1	Event	1		15	1
2	2015-07-19 20:56:49.088382-04	1	Event	2	Changed content and keywords.	15	1
3	2015-07-19 20:57:54.067068-04	1	Event	2	Changed content, description and keywords.	15	1
4	2015-07-19 20:59:34.678382-04	1	Event	2	Changed content, description and keywords.	15	1
5	2015-07-19 21:02:08.170725-04	2	Membership	1		15	1
6	2015-07-19 21:02:57.577796-04	3	Membership / Become A Member	1		19	1
7	2015-07-19 21:06:42.907476-04	4	Membership / Current Members	1		15	1
8	2015-07-19 21:09:03.314816-04	5	Blog	1		15	1
9	2015-07-19 21:09:45.541245-04	6	Event / Past Events	1		15	1
10	2015-07-19 21:10:15.287947-04	7	Event / Past Events / Galary	1		23	1
11	2015-07-19 21:10:22.097683-04	7	Event / Past Events / Galary	3		14	1
12	2015-07-19 21:11:14.874831-04	8	Event / Galary	1		23	1
13	2015-07-19 21:39:31.393094-04	9	Contact	1		19	1
14	2015-07-19 21:40:24.152074-04	10	Event / Current Events	1		15	1
15	2015-07-19 21:41:00.80194-04	11	About	1		15	1
16	2015-07-19 21:44:58.101159-04	12	About / Articles of Incorporation	1		15	1
17	2015-07-19 21:46:49.842609-04	13	About / Articles of Incorporation / Board of Directors	1		15	1
18	2015-07-19 21:47:07.185352-04	13	About / Articles of Incorporation / Board of Directors	3		14	1
19	2015-07-19 21:47:31.019749-04	14	About / Board of Directors	1		15	1
20	2015-07-19 21:50:24.714186-04	9	Contact	3		14	1
21	2015-07-19 21:52:13.441013-04	15	About / Contact	1		19	1
22	2015-07-19 21:53:42.485937-04	16	Give	1		15	1
23	2015-07-19 21:55:02.912114-04	17	Give / Give to Scholarship	1		15	1
24	2015-07-19 21:55:39.434693-04	18	Give / Give to DUAFI	1		15	1
25	2015-07-19 21:58:37.215283-04	5	Blog	2	Changed content and keywords.	15	1
26	2015-07-19 22:12:30.657465-04	3	Membership / Become A Member	2	Changed content and keywords. Added Field "Type". Added Field "Title". Added Field "Name". Added Field "Date". Added Field "Address". Added Field "Dhaka University Related Information".	19	1
27	2015-07-19 22:16:33.070777-04	11	About	2	Changed content and keywords.	15	1
28	2015-07-19 22:17:49.859617-04	3	Membership / Become A Member	2	Changed content and keywords. Changed help_text for Field "Dhaka University Related Information".	19	1
29	2015-07-20 08:41:05.967299-04	19	Blog / Comment	1		19	1
30	2015-07-20 08:44:50.742318-04	19	Blog / Comment	2	Changed keywords. Added Field "User".	19	1
31	2015-07-20 08:45:51.300287-04	19	Blog / Comment	2	Changed keywords. Changed label for Field "Comment". Deleted Field "Comment".	19	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 31, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comment_flags (id, flag, flag_date, comment_id, user_id) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comments (id, object_pk, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed, content_type_id, site_id, user_id) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	redirect	redirects	redirect
6	session	sessions	session
7	site	sites	site
8	Setting	conf	setting
9	Site permission	core	sitepermission
10	Comment	generic	threadedcomment
11	Keyword	generic	keyword
12	assigned keyword	generic	assignedkeyword
13	Rating	generic	rating
14	Page	pages	page
15	Rich text page	pages	richtextpage
16	Link	pages	link
17	Blog post	blog	blogpost
18	Blog Category	blog	blogcategory
19	Form	forms	form
20	Field	forms	field
21	Form entry	forms	formentry
22	Form field entry	forms	fieldentry
23	Gallery	galleries	gallery
24	Image	galleries	galleryimage
25	Twitter query	twitter	query
26	Tweet	twitter	tweet
27	log entry	admin	logentry
28	comment	django_comments	comment
29	comment flag	django_comments	commentflag
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 29, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-07-19 11:07:04.764011-04
2	auth	0001_initial	2015-07-19 11:07:05.902615-04
3	admin	0001_initial	2015-07-19 11:07:06.201993-04
4	sites	0001_initial	2015-07-19 11:07:06.302177-04
5	blog	0001_initial	2015-07-19 11:07:07.150222-04
6	blog	0002_auto_20150527_1555	2015-07-19 11:07:07.364272-04
7	conf	0001_initial	2015-07-19 11:07:07.576561-04
8	core	0001_initial	2015-07-19 11:07:07.973756-04
9	core	0002_auto_20150414_2140	2015-07-19 11:07:08.161263-04
10	django_comments	0001_initial	2015-07-19 11:07:08.899225-04
11	django_comments	0002_update_user_email_field_length	2015-07-19 11:07:09.056607-04
12	pages	0001_initial	2015-07-19 11:07:09.500322-04
13	forms	0001_initial	2015-07-19 11:07:10.280839-04
14	forms	0002_auto_20141227_0224	2015-07-19 11:07:10.41485-04
15	forms	0003_emailfield	2015-07-19 11:07:10.590254-04
16	forms	0004_auto_20150517_0510	2015-07-19 11:07:10.778538-04
17	galleries	0001_initial	2015-07-19 11:07:11.137416-04
18	galleries	0002_auto_20141227_0224	2015-07-19 11:07:11.248326-04
19	generic	0001_initial	2015-07-19 11:07:12.133104-04
20	generic	0002_auto_20141227_0224	2015-07-19 11:07:12.342386-04
21	pages	0002_auto_20141227_0224	2015-07-19 11:07:12.491622-04
22	pages	0003_auto_20150527_1555	2015-07-19 11:07:12.652088-04
23	redirects	0001_initial	2015-07-19 11:07:12.960432-04
24	sessions	0001_initial	2015-07-19 11:07:13.196335-04
25	twitter	0001_initial	2015-07-19 11:07:13.47267-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 25, true);


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_redirect_id_seq', 1, false);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
ghjt9hn9fct52thubkst1q45hd4dpdnu	YmIzNjJlOWQ3YzgxNTRjYzM5YjdmZDk1ZWMyY2U4YmI0YmZkYTljODp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4MjQ0ZmRiZjA0M2E2MzYzODNmNDgzMTIxN2UwNjg1ZjljMzM0OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxfQ==	2015-08-02 20:49:44.451355-04
ioeu74opge9t54dxlzgomaplcjrf739j	YmIzNjJlOWQ3YzgxNTRjYzM5YjdmZDk1ZWMyY2U4YmI0YmZkYTljODp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4MjQ0ZmRiZjA0M2E2MzYzODNmNDgzMTIxN2UwNjg1ZjljMzM0OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxfQ==	2015-08-02 21:37:12.758029-04
gcphui73i3pwy3fj6u3userki2995l8f	NTBmYWM2M2UwZDJjZjBmNTk0NDYxZDJmNTdlMjdkNWIyMWQ0N2I0NDp7fQ==	2015-08-04 20:17:01.142513-04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: forms_field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_field (id, _order, label, field_type, required, visible, choices, "default", placeholder_text, help_text, form_id) FROM stdin;
5	0	Name	1	t	t					15
6	1	Email	3	t	t					15
7	2	Subject	1	t	t					15
8	3	Message	2	t	t					15
9	0	Type	8	t	t	New, Renewal				3
10	1	Title	5	t	t	Dr, Mr, Mrs, Ms				3
11	2	Name	1	t	t					3
12	3	Date	10	t	t					3
13	4	Address	2	t	t					3
14	5	Dhaka University Related Information	2	t	t				Please include department name, degree and year of graduation	3
16	1	Comment	2	t	t					19
\.


--
-- Name: forms_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_field_id_seq', 16, true);


--
-- Data for Name: forms_fieldentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_fieldentry (id, field_id, value, entry_id) FROM stdin;
1	15	forms/0d849c39-fa39-456e-95ab-17921c99469b/text_0.txt	1
2	16	csdcsd sdfsad sadfasdfasd	2
\.


--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_fieldentry_id_seq', 2, true);


--
-- Data for Name: forms_form; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_form (page_ptr_id, content, button_text, response, send_email, email_from, email_copies, email_subject, email_message) FROM stdin;
15	<p>Fill in the form below to get in touch with us.</p>			t				
3	<p class="western"><span lang="en">$25 membership fee is requested for the year 2015 (Jan 01, 2015 - Dec 31, 2015)</span></p>\n<p class="western"><span lang="en">Please make your check </span><span lang="en"><strong>payable to DUAFI </strong></span><span lang="en">and</span> <span lang="en">send your completed membership form and check to any one of the following address: </span></p>\n<p class="western"><span lang="en"><strong>Mizanur Rahman</strong></span><span lang="en"> (President, DUAFI), Phone (240)750-4906, Address</span><span lang="en">: 7 Stonecutter Ct, North Potomac, MD 20878; </span><span lang="en">Email: </span><u><a href="mailto:mizan71@yahoo.com"><span lang="en">mizan71@yahoo.com</span></a></u></p>\n<p class="western"><span lang="en"><strong>Raihan Elahi</strong></span><span lang="en"> (GS, DUAFI), Phone (202) 344 6620, Address: 6504 ElNido Drive, McLean VA 22101 Email: </span><u><a href="mailto:raihan.elahi@gmail.com"><span lang="en">raihan.elahi@gmail.com</span></a></u></p>			t				
19	<p>Comment</p>			t				
\.


--
-- Data for Name: forms_formentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_formentry (id, entry_time, form_id) FROM stdin;
1	2015-07-20 08:42:06.773113-04	19
2	2015-07-20 08:46:07.014387-04	19
\.


--
-- Name: forms_formentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_formentry_id_seq', 2, true);


--
-- Data for Name: galleries_gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_gallery (page_ptr_id, content, zip_import) FROM stdin;
8	<p>Galary</p>	
\.


--
-- Data for Name: galleries_galleryimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_galleryimage (id, _order, file, description, gallery_id) FROM stdin;
\.


--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('galleries_galleryimage_id_seq', 1, false);


--
-- Data for Name: generic_assignedkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_assignedkeyword (id, _order, object_pk, content_type_id, keyword_id) FROM stdin;
\.


--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_assignedkeyword_id_seq', 1, false);


--
-- Data for Name: generic_keyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_keyword (id, title, slug, site_id) FROM stdin;
\.


--
-- Name: generic_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_keyword_id_seq', 1, false);


--
-- Data for Name: generic_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_rating (id, value, rating_date, object_pk, content_type_id, user_id) FROM stdin;
\.


--
-- Name: generic_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_rating_id_seq', 1, false);


--
-- Data for Name: generic_threadedcomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_threadedcomment (comment_ptr_id, rating_count, rating_sum, rating_average, by_author, replied_to_id) FROM stdin;
\.


--
-- Data for Name: pages_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_link (page_ptr_id) FROM stdin;
\.


--
-- Data for Name: pages_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_page (id, keywords_string, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, _order, in_menus, titles, content_model, login_required, parent_id, site_id) FROM stdin;
1		Event	event	Events	Upcoming Events:\n 	t	2015-07-19 20:54:42.762962-04	2015-07-19 20:59:34.657351-04	2	2015-07-19 20:54:42-04	\N	\N	t	0	1,2,3	Event	richtextpage	f	\N	1
2		Membership	membership		Current Members	t	2015-07-19 21:02:08.147649-04	2015-07-19 21:02:08.147649-04	2	2015-07-19 21:02:08.13904-04	\N	\N	t	1	1,2,3	Membership	richtextpage	f	\N	1
4		Current Members	membership/current-members		Current Members	t	2015-07-19 21:06:42.87826-04	2015-07-19 21:06:42.887518-04	2	2015-07-19 21:06:42.821561-04	\N	\N	t	1	1,2,3	Membership / Current Members	richtextpage	f	2	1
16		Give	give		Give to DUAFI	t	2015-07-19 21:53:42.4679-04	2015-07-19 21:53:42.4679-04	2	2015-07-19 21:53:42.463469-04	\N	\N	t	2	1,2,3	Give	richtextpage	f	\N	1
17		Give to Scholarship	give/give-to-scholarship		Give to Scholarship	t	2015-07-19 21:55:02.884398-04	2015-07-19 21:55:02.891395-04	2	2015-07-19 21:55:02.879793-04	\N	\N	t	0	1,2,3	Give / Give to Scholarship	richtextpage	f	16	1
10		Current Events	event/current-events		Current Events	t	2015-07-19 21:40:24.120931-04	2015-07-19 21:40:24.128727-04	2	2015-07-19 21:40:24.11501-04	\N	\N	t	0	1,2,3	Event / Current Events	richtextpage	f	1	1
6		Past Events	event/past-events		Past Events	t	2015-07-19 21:09:45.505928-04	2015-07-19 21:09:45.513993-04	2	2015-07-19 21:09:45.499255-04	\N	\N	t	1	1,2,3	Event / Past Events	richtextpage	f	1	1
8		Galary	event/galary		Galary	t	2015-07-19 21:11:14.840318-04	2015-07-19 21:11:14.847741-04	2	2015-07-19 21:11:14.835959-04	\N	\N	t	2	1,2,3	Event / Galary	gallery	f	1	1
12		Articles of Incorporation	about/articles-of-incorporation		DHAKA UNIVERSITY ALUMNI FORUM, INC. (DUAFI)	t	2015-07-19 21:44:58.043856-04	2015-07-19 21:44:58.076303-04	2	2015-07-19 21:44:58.037501-04	\N	\N	t	0	1,2,3	About / Articles of Incorporation	richtextpage	f	11	1
18		Give to DUAFI	give/give-to-duafi		Give to DUAFI	t	2015-07-19 21:55:39.409707-04	2015-07-19 21:55:39.416217-04	2	2015-07-19 21:55:39.405339-04	\N	\N	t	1	1,2,3	Give / Give to DUAFI	richtextpage	f	16	1
14		Board of Directors	about/board-of-directors		Board of Directors	t	2015-07-19 21:47:30.992825-04	2015-07-19 21:47:30.998968-04	2	2015-07-19 21:47:30.987125-04	\N	\N	t	1	1,2,3	About / Board of Directors	richtextpage	f	11	1
5		Blog	blog		DUAFI Quarterly Report	t	2015-07-19 21:09:03.294545-04	2015-07-19 21:58:37.191333-04	2	2015-07-19 21:09:03-04	\N	\N	t	3	1,2,3	Blog	richtextpage	f	\N	1
15		Contact	about/contact		Fill in the form below to get in touch with us.	t	2015-07-19 21:52:13.396631-04	2015-07-19 21:52:13.405213-04	2	2015-07-19 21:52:13.391474-04	\N	\N	t	2	1,2,3	About / Contact	form	f	11	1
11		About	about		DUAFI is a voluntary, nonprofit and nonpolitical forum organized exclusively for cultural, educational, and charitable purposes. 	t	2015-07-19 21:41:00.782393-04	2015-07-19 22:16:33.050006-04	2	2015-07-19 21:41:00-04	\N	\N	t	4	1,2,3	About	richtextpage	f	\N	1
3		Become A Member	membership/become-a-member		$25 membership fee is requested for the year 2015 (Jan 01, 2015 - Dec 31, 2015)	t	2015-07-19 21:02:57.542335-04	2015-07-19 22:17:49.82628-04	2	2015-07-19 21:02:57-04	\N	\N	t	0	1,2,3	Membership / Become A Member	form	f	2	1
19		Comment	blog/comment		Comment	t	2015-07-20 08:41:05.930911-04	2015-07-20 08:45:51.265019-04	2	2015-07-20 08:41:05-04	\N	\N	t	0	1,2,3	Blog / Comment	form	t	5	1
\.


--
-- Name: pages_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pages_page_id_seq', 19, true);


--
-- Data for Name: pages_richtextpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_richtextpage (page_ptr_id, content) FROM stdin;
1	<h1 align="justify"><strong>Upcoming Events:</strong></h1>\n<p align="justify"> </p>\n<h4 align="justify"><code>DUAFI is planning to host a number of events this year </code></h4>\n<h4 align="justify"><code>with a goal of keeping alumni connected to each other. </code></h4>\n<h4 align="justify"><code>Please mark your calendar for the two dates.</code></h4>\n<p align="justify"> </p>\n<p align="justify"><strong>1. August 02, 2015:</strong> We are arranging a CULTURAL PROGRAM where the talented alumni would perform.</p>\n<p align="justify"> </p>\n<p align="justify"><strong>2. October 03, 2015:</strong> PICNIC and General Meeting…a fun-filled day with friends and family of alumni.</p>
2	<p>Current Members</p>
4	<p>Current Members</p>\n<p> </p>\n<p><img alt="" height="416" src="/static/media/uploads/gallery/York, England.jpg" width="615"></p>
6	<p>Past Events</p>
10	<p>Current Events</p>
12	<p align="center"><span style=""><span style=""><span style=""><strong>DHAKA UNIVERSITY ALUMNI FORUM, INC. (DUAFI)</strong></span></span></span></p>\n<p align="center"><span style=""><span style=""><span style=""><u><strong>Articles of Incorporation (AOI) of DUAFI </strong></u></span></span></span></p>\n<p align="center"> </p>\n<p><span style=""><span style=""><span style=""><span style=""><em>Provision: AOI gives the right to the registrants of the organization to pick up another name from the list of approved names prior to the registration in the event the selected name is not available for registration. The approved names are in order of preference. </em></span></span></span></span></p>\n<p> </p>\n<p><span style=""><span style=""><span style=""><span style=""><em>SOCIETY OF DHAKA UNIVERSITY GRADUATES (SDUG) </em></span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style=""><em>SOCIETY OF DHAKA UNIVERSITY ALUMNI (SDUA) </em></span></span></span></span></p>\n<p> </p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE I: </strong></span><span style=""><em><u><strong>NAME AND LOCATION </strong></u></em></span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The association shall be named as “</span><span style=""><strong>DHAKA UNIVERSITY ALUMNI FORUM, INC</strong></span><span style="">” also inscribed as DUAFI in abbreviated form. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2</strong></em></span><span style=""><em>: </em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">DUAFI shall be located in Greater Washington D.C. Metro area (Maryland, Virginia and Washington D.C.) of the United States of America. </span></span></span></span></p>\n<p><br><br></p>\n<p><a name="_GoBack"></a> <span style=""><span style=""><span style=""><span style=""><strong>ARTICLE II: </strong></span><span style=""><em><u><strong>OBJECTIVES</strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">DUAFI is a voluntary, nonprofit and nonpolitical forum organized exclusively for cultural, educational, and charitable purposes. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1</strong></em></span><span style=""><em>: </em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The overall objectives of DUAFI are: </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">A. To work for the improvement of fellowship among the graduates of Dhaka University campus graduates living in Greater Washington DC metro area. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">B. To organize cultural programs, reunion programs for the graduates and immediate family members of Dhaka University campus graduates. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">C. To conduct seminars, workshops and educational programs independently and/or in conjunction with national and international organizations. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">D. To extend assistance to Dhaka University students in their academic endeavors either through financial help or material support. </span></span></span></span></p>\n<p> </p>\n<p><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2</strong></em></span><span style=""><em>: </em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">A. No part of the net earnings or assets of DUAFI shall be used to the benefit of or be distributable to its members, officers, or other private persons, except that the organization shall be authorized and empowered to pay reasonable compensation for services rendered, and to make payment and distribution for the purpose set forth in Article II hereof. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">B. DUAFI shall not carry on any activities not permitted (a) by the corporation exempt from Federal Income Tax under section 501 (c) (3) of the Internal Revenue Code of 1954, or the corresponding provision of any future U.S. or Internal Revenue Law, or (b) by a corporation, contribution to which are deductible under section 170 (c) (3) of Internal Revenue Code of 11954, or the corresponding provision of any future U.S. Revenue Laws. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE III: </strong></span><span style=""><em><u><strong>MEMBERSHIP ELIGIBILITY </strong></u></em></span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span><span style=""><strong>MEMBER</strong></span><span style="">: </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">A. An eligible member of DUAFI is he/she, who is a graduate (who holds Bachelor/Post-graduate degree) of the Dhaka University campuses, was affiliated with one of the residential halls of the Dhaka University and currently living in Greater Washington DC Metro area. M.Phil and/or Ph.D. graduates from Dhaka University are also eligible for membership even if they do not have any hall affiliation. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">B. A graduate shall provide his/her Dhaka University related information, such as department name, year of graduation, degree(s) obtained and affiliated hall for membership except for M.Phil and Ph.D. graduates as mentioned in article 3 section 1(a). A member should also provide his/her current residential address (and phone number if available). Since e-mail will be the major way of communication, all members are advised to provide their e-mail addresses. DUAFI Board of Directors shall have the right to ask for additional documents or inquire about the information by other means to ensure the authenticity of the provided information. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">C. Members must abide by the Articles of Incorporation (AOI) and By-Laws of DUAFI to obtain and retain membership. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">D. A graduate shall pay an annual membership fee as determined by the Board of Directors to maintain membership in good standing. Dues shall be payable yearly at a time and manner as decided by the Board of Directors from time to time. </span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE IV: </strong></span><span style=""><em><u><strong>ADMINISTRATION AND OFFICES </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The general management of DUAFI shall be managed by the Board of Directors. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The Board of Directors shall consist of 5 members, comprising President, Vice-President, General Secretary, Joint Secretary and Treasurer. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 3: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The term for the Board of Directors shall be for two (2) years, starting from January 1 to December 31 of the following year (Exception: First board). </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 4: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">Any temporary vacancy in the office of the President and General Secretary shall be filled in by the Vice-President and Joint Secretary respectively. Any temporary vacancies of Vice-President, Joint Secretary or Treasurer shall be filled in by any good standing members with the consent of the Board of Directors. The Board of Directors shall maintain a current list of good standing members. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE V: </strong></span><span style=""><em><u><strong>DUTIES AND RESPONSIBILITY</strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The duties and responsibilities of the members of the Board of Directors shall be as follows: </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>A. The President </strong></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(i) The President shall be the Chief Executive Officer of the DUAFI, shall be responsible for carrying out the objectives of the DUAFI and shall perform all duties pertinent to the office of the President and such other duties as may be designated by the Board of Directors. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(ii) The President shall preside over all meetings of the DUAFI and of the Board of Directors. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iii) The President may sign all applicable documents which the Board of Directors has authorized to be executed. </span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style="">(iv) The President shall seek approval of the board of director before making any decision pertinent to DUAFI activities. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(v) The President may represent DUAFI to other organizations provided he/she informs Board of Directors beforehand. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(vi) The President, with due authorization of the Board of Directors, shall designate all office delegate(s) and representative(s) to other organizations. </span></span></span></span></p>\n<p align="justify"><br><br></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>B. The Vice-President </strong></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(i) The Vice President shall assist the President in discharge of his/her functions. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(ii) The Vice President shall perform such other duties and functions as assigned by the Board of Directors.(iii) In the absence of the President, Vice President shall perform all the duties and responsibilities of the President as mentioned in article V clause A. </span></span></span></span></p>\n<p align="justify"><br><br></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>C. The General Secretary </strong></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(i) The General Secretary shall perform all duties with regard to the office of the Secretary. He/she, with the advice of the President shall convene meetings, make correspondence and furnish annual reports. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(ii) The General Secretary shall keep the minutes of the meetings of the organization and perform all duties assigned to him/her by the President or Board of Directors. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iii) The General Secretary shall maintain the DUAFI database. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iv) The General Secretary shall maintain cyber network communication via e-mail, group mails, newsgroup, or web site to conduct meetings, group discussions, etc., in consultation with President. </span></span></span></span></p>\n<p align="justify"><br><br></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>D. The Joint Secretary </strong></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(i) The Joint Secretary shall assist the General Secretary in discharge of his/her functions. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(ii) The Joint Secretary shall perform such other duties and functions as assigned by the Board of Directors. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iii) In the absence of the General Secretary, Joint Secretary shall perform all the duties and responsibilities of the General Secretary as mentioned in article V clause C. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>E. The Treasurer </strong></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(i) The Treasurer shall be responsible for collection of all types of funds of the DUAFI including the membership fee, and shall be the custodian of the funds of the DUAFI. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(ii) The Treasurer shall make a financial report at the end of every major event (reunion program, picnic) of the DUAFI and e-mail it to the general members. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iii) The Treasurer shall prepare a complete report of all financial activities at the end of his/her two (2) years term and make it available to all general members. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iv) The Treasurer and the President shall jointly operate the DUAFI’s bank account in any US based bank, located in the USA. Either of these two office bearers shall have the authority to sign bank checks and perform other financial activities of the DUAFI in consultation with each other. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE VI: </strong></span><span style=""><em><u><strong>MEETINGS OF THE GENERAL BODY </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">There shall be at least one general meeting per term of the board. Time and date of such meetings shall be determined by the Board of Directors and e-mailed to all members at least two (2) weeks prior to the meeting with set agenda. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2</strong></em></span><span style=""><strong>: </strong></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">A quorum shall be satisfied when twenty five percent (25%) of the good standing members are physically present at a general body meeting. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 3: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">A special meeting shall be called by the Board of Directors. One-third (1/3</span><sup><span style="">rd</span></sup><span style="">) of the good standing members may call a special meeting if the Board of Directors fails to call such meetings after two consecutive written request by the same number of good standing members . A quorum for this type of special meeting is 1/3</span><sup><span style="">rd </span></sup><span style="">of the good standing members. </span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style=""><em><strong>Section 4</strong></em></span><span style=""><strong>: </strong></span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style="">A simple majority of the good standing members in all general/special meetings shall satisfy to make a decision. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE VII: </strong></span><span style=""><em><u><strong>MEETING OF THE BOARD OF DIRECTORS </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The Board of Directors shall communicate as often as needed to conduct business but shall meet at least twice every year. The Secretary shall inform Board of Directors about the meeting and agenda of the meeting at least 7 days in advance. The President shall honor the request of majority of the Board of Directors to convene a special meeting. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">Quorum shall be considered by the presence of three (3) out of five (5) Board of Directors (60%). Any decision has to be approved by at least three (3) Board of Directors irrespective of quorum requirement. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 3: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The Board of Directors is not authorized to terminate any elected officials and to execute other activities not permitted by these Articles of Incorporation. </span></span></span></span></p>\n<p><br><br></p>\n<p><br><br></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE VIII: </strong></span><span style=""><em><u><strong>SUBCOMMITTEES </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The Board of Directors shall form subcommittee(s) whenever necessity arises. The Board of Directors is encouraged to form committees to involve more graduates in DUAFI activities. The Board of Directors may dissolve any such subcommittee when it decides that the purpose of that subcommittee has been served. </span></span></span></span></p>\n<p align="justify"><br><br></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE IX: </strong></span><span style=""><em><u><strong>ELECTIONS </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The election to President, Vice-president, General Secretary, Joint Secretary and Treasure positions shall be held every two (2) years. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">Only members of DUAFI who have paid their dues for the current year at least eight (8) weeks prior to the election shall be eligible to vote. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 3: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">Good standing members (Exception: first election) shall elect Board of Directors using a secret ballot paper. A simple majority should decide all elections. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 4: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">A member may serve as President for not more than Two TERMs. However two terms shall not be in consecutive order. Vice-president, General Secretary, Joint Secretary and Treasure shall have no term limitation. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 5: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">Good standing members are eligible to be nominated for any position in the Board of Directors. Exception: First election. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 6: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The election shall be held at least 4 (four) weeks before the expiry of the current committee. The Board of Directors shall decide the date of election and appoint, from amongst the good standing members of DUAFI, but other than the members of the Board of Directors, a three member Election Commission, comprising of a Chief Election Commissioner and two Commissioners. The members of Election Commission shall not be candidates for election but they will be able to cast their votes. All these rules will be exempted for the first election for DUAFI's Board of Directors EXCEPT that the Election Commissioners shall not be candidates for the election they are conducting. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 7: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The Election Commission, in consultation with the Board of Directors, shall make procedures and regulations for conducting the election. In discharging this function, the Election Commission shall be independent and autonomous, but shall be bound by the Articles of Incorporation and By-Laws of DUAFI. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 8: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">In case of any controversy or objection, the decision of the Election Commission shall be </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">final. </span></span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 9: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The outgoing Board of Directors shall transfer all related documents of DUAFI to the newly </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">elected Board of Directors within 30 days of the new fiscal year. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE X: </strong></span><span style=""><em><u><strong>FUNDING </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 1: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The primary source of fund shall be yearly membership fees and donations from the DUAFI members. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 2: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The Board of Directors may accept any unconditional contribution or gifts from individuals or organizations (exception: political, religious, discriminatory) on behalf of DUAFI. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><em><strong>Section 3: </strong></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">Fiscal year of the DUAFI shall be from January 1 to December 31. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE XI: </strong></span><span style=""><em><u><strong>BY-LAWS </strong></u></em></span></span></span></span></p>\n<p><span style=""><span style=""><span style=""><span style="">Subject to the provisions of this AOI, by-laws may be made, if and when required by the Board of Directors of DUAFI, none of which should be contradictory to the Articles and Sections of this AOI. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE XII: </strong></span><span style=""><em><u><strong>TERMINATION OF MEMBERSHIP </strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">The failure of a member to comply with the Articles of Incorporation or By-laws as they may be in effect from time to time shall disqualify such member from membership. A member may be censored, suspended or expelled from DUAFI for participation or involvement in any activity detrimental to the interest of DUAFI. The board of directors may suspend or expel a member for this kind of activities after an appropriate hearing and approval in a general meeting. </span></span></span></span></p>\n<p><br><br></p>\n<p><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE XIII: </strong></span><span style=""><em><u><strong>AMENDMENTS</strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(i) Any proposed amendment shall be submitted to the Board of Directors in writing by at least five (5) good standing members or Board of Directors can initiate amendment(s). </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(ii) A proposed amendment to the AOI can be made by the consent of eighty percent (80%) members of the Board of Directors. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iii) The Board of Directors shall place the proposed amendment(s) to the general members within two months of the Board of Directors meeting for consent via e-mail. </span></span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><span style="">(iv) The proposed amendment(s) shall be considered adopted if the amendments are approved by the 2/3</span><sup><span style="">rd </span></sup><span style="">of the member present in general or special meeting. </span></span></span></span></p>\n<p> </p>\n<p align="justify"><span style=""><span style=""><span style=""><span style=""><strong>ARTICLE XIV: </strong></span><span style=""><em><u><strong>DISSOLUTION</strong></u></em></span></span></span></span></p>\n<p align="justify"><span style=""><span style="">The decision of DUAFI dissolution can be made in a special meeting called in for that purpose by the physical presence and approval of two-third of the general members only in good standing. Upon the dissolution of DUAFI, the elected officials shall, after paying or making provisions for the payment of all the liabilities of DUAFI, dispose of all the assets exclusively for the purpose of DUAFI in such a manner, or to such organizations organized exclusively for charitable, cultural or scientific purposes as shall at the time qualify as an exempt organization or organizations under section 501 (c) (3) of the Internal Revenue Code 1954 or the corresponding provision of any future U.S. Internal Revenue Law, as the elected officials decide. Any such assets not so disposed of shall be disposed of by the court of appropriate jurisdiction of the country in which the principal office of DUAFI is then located, exclusively for such purposes or to such organization or organizations as the said court determine to be organized and operated exclusively for such purposes.</span></span></p>
14	<p>Board of Directors</p>
16	<p>Give to DUAFI</p>\n<p>Give to Scholarship</p>\n<p> </p>
17	<p>Give to Scholarship</p>
18	<p>Give to DUAFI</p>
5	<p align="center"><span style=""><span style=""><span style=""><strong>DUAFI Quarterly Report</strong></span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>Dear Graduates,</strong></span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><a name="_GoBack"></a> <span style=""><span style=""><span style="">The harsh winter is over and the spring is here. It’s time again for the bright colors to blossom and the earth to celebrate the return of the season. DUAFI board welcomes the spring and thanks you in advance for your rejuvenated participation in our upcoming programs. The best way to network and make new friends to share DU experiences with is by attending DUAFI events. </span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style="">Since the inception of DUAFI BOD (2015-2016) in January 2015, the DUAFI Board has been working diligently with your relentless support, vibrant participation and encouragement. We herein would like to apprise you our programs and activities.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>Completed Activities:</strong></span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style="">1. Inauguration ceremony of newly elected Board of Directors, Jan 24, 2015.</span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style="">2. Successfully organized Ekushey February program in collaboration with other organization in February 28, 2015. </span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style="">DUAFI BOD would like to take this opportunity to thank you for your encouraging participation and help. </span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style="">Despite our sincere efforts we could not managed to host our </span></span></span><span style=""><span style=""><span style=""><strong>Boshanto Utshab</strong></span></span></span><span style=""><span style=""><span style="">. We simply couldn’t find an open date during this spring/summer season as almost all of the weekends were taken by other community associations. We apologize for our unintentional failure to arrange this popular event. However, we will try to compensate this loss in our upcoming events. </span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>Upcoming Events:</strong></span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style="">DUAFI is planning to host a number of events this year with a goal of keeping alumni connected to each other. Please mark your calendar for the two dates. </span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>1. August 02, 2015:</strong></span></span></span><span style=""><span style=""><span style=""> We are arranging a CULTURAL PROGRAM where the talented alumni would perform. </span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>2. October 03, 2015:</strong></span></span></span><span style=""><span style=""><span style=""> PICNIC and General Meeting…a fun-filled day with friends and family of alumni. </span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>Ongoing Activities:</strong></span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>DUAFI Directory:</strong></span></span></span><span style=""><span style=""><span style=""> DUAFI has taken an initiative to update your information. Please help us update the DUAFI directory, which will keep you informed about your classmates, faculty and alumni activities throughout the region.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>DUAFI Scholarship:</strong></span></span></span><span style=""><span style=""><span style=""> DUAFI is exploring the possibility of annually awarding scholarships to DU students and or to the less fortunate students in Bangladesh. We will come back to you for your kind support in near future.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>DUAFI Publications:</strong></span></span></span><span style=""><span style=""><span style=""> DUAFI is interested in publishing a thematic periodical. We are in the process of forming an editorial board comprising a group of enthusiastic DU graduates. In near future we will reach out to you, so that you can enrich the publication with your writings.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>DUAFI Non-profit status and Website:</strong></span></span></span><span style=""><span style=""><span style=""> We are also working in converting DUAFI into a non-profit organization and creating a DUAFI web site.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>DUAFI Membership drive:</strong></span></span></span><span style=""><span style=""><span style=""> We are kindly requesting you to be a paid member of DUAFI. Your membership fee helps us significantly to organize various events. Please fill out the attached form and send us with a check payable to DUAFI. By supporting the DUAFI, you help the growth of programming that connects hundreds of alumni and family members in this area. We are counting on your support.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style=""><strong>Finally, your feedback is very important for us. We highly encourage you to please write us few words. We sincerely look forward to hearing from you</strong></span></span></span><span style=""><span style=""><span style="">.</span></span></span></p>\n<p align="justify"> </p>\n<p align="justify"><span style=""><span style=""><span style="">With best regards,</span></span></span></p>\n<p align="justify"><span style=""><span style=""><span style="">Board of Directors, DUAFI </span></span></span></p>\n<p align="justify"><span style="">April 15, 2015</span></p>\n<p><br><br></p>
11	<p>DUAFI is a voluntary, nonprofit and nonpolitical forum organized exclusively for cultural, educational, and charitable purposes. </p>\n<p>To know more about DUAFI, click on the following links:</p>\n<p><a href="/about/articles-of-incorporation/" title="Articles of Incorporation">Page: About / Articles of Incorporation</a></p>\n<p><a href="/about/board-of-directors/" title=" Board of Directors">Page: About / Board of Directors</a></p>\n<p> </p>
\.


--
-- Data for Name: twitter_query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_query (id, type, value, interested) FROM stdin;
1	search	from:stephen_mcd mezzanine	t
\.


--
-- Name: twitter_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_query_id_seq', 1, true);


--
-- Data for Name: twitter_tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_tweet (id, remote_id, created_at, text, profile_image_url, user_name, full_name, retweeter_profile_image_url, retweeter_user_name, retweeter_full_name, query_id) FROM stdin;
1	622582737451417600	2015-07-18 21:43:46-04	Core developer <a href="http://twitter.com/joshcartme">@joshcartme</a> has written a comprehensive guide on upgrading to Mezzanine 4.0, check it out: <a href="http://t.co/uTHklmi5HR">http://t.co/uTHklmi5HR</a> <a href="http://twitter.com/search?q=%23django">#django</a>	http://pbs.twimg.com/profile_images/378800000713704684/233cd1f364b2e3cf2423e71cde3be9d4_normal.png	MezzanineCMS	Mezzanine	http://pbs.twimg.com/profile_images/591915345264283648/nxrtn_Up_normal.jpg	stephen_mcd	Stephen McDonald	1
\.


--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_tweet_id_seq', 1, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_categories_blogpost_id_blogcategory_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_blogcategory_id_key UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blog_blogpost_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id_to_blogpost_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_from_blogpost_id_to_blogpost_id_key UNIQUE (from_blogpost_id, to_blogpost_id);


--
-- Name: blog_blogpost_related_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);


--
-- Name: conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_sitepermission_id_site_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_sitepermission_id_site_id_key UNIQUE (sitepermission_id, site_id);


--
-- Name: core_sitepermission_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_c7a132a641f11c1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_c7a132a641f11c1_uniq UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_site_id_old_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_key UNIQUE (site_id, old_path);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: forms_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);


--
-- Name: forms_fieldentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);


--
-- Name: forms_form_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: forms_formentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);


--
-- Name: galleries_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: galleries_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: pages_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);


--
-- Name: pages_richtextpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: twitter_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);


--
-- Name: twitter_tweet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogcategory_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogcategory_9365d6e7 ON blog_blogcategory USING btree (site_id);


--
-- Name: blog_blogpost_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_9365d6e7 ON blog_blogpost USING btree (site_id);


--
-- Name: blog_blogpost_categories_53a0aca2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_53a0aca2 ON blog_blogpost_categories USING btree (blogpost_id);


--
-- Name: blog_blogpost_categories_efb54956; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_efb54956 ON blog_blogpost_categories USING btree (blogcategory_id);


--
-- Name: blog_blogpost_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_e8701ad4 ON blog_blogpost USING btree (user_id);


--
-- Name: blog_blogpost_publish_date_1015da2554a8e97f_uniq; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_publish_date_1015da2554a8e97f_uniq ON blog_blogpost USING btree (publish_date);


--
-- Name: blog_blogpost_related_posts_191c4981; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_191c4981 ON blog_blogpost_related_posts USING btree (from_blogpost_id);


--
-- Name: blog_blogpost_related_posts_71f16e58; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_71f16e58 ON blog_blogpost_related_posts USING btree (to_blogpost_id);


--
-- Name: conf_setting_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX conf_setting_9365d6e7 ON conf_setting USING btree (site_id);


--
-- Name: core_sitepermission_sites_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_9365d6e7 ON core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_f6687ce4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_f6687ce4 ON core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_327a6c43; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_327a6c43 ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_69b97d17; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_69b97d17 ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_e8701ad4 ON django_comment_flags USING btree (user_id);


--
-- Name: django_comment_flags_flag_686b7398bb858e56_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_686b7398bb858e56_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comments_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_417f1b1c ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_9365d6e7 ON django_comments USING btree (site_id);


--
-- Name: django_comments_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_e8701ad4 ON django_comments USING btree (user_id);


--
-- Name: django_redirect_91a0b591; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_91a0b591 ON django_redirect USING btree (old_path);


--
-- Name: django_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_9365d6e7 ON django_redirect USING btree (site_id);


--
-- Name: django_redirect_old_path_9db3e423470cdaf_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_old_path_9db3e423470cdaf_like ON django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: forms_field_d6cba1ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_field_d6cba1ad ON forms_field USING btree (form_id);


--
-- Name: forms_fieldentry_b64a62ea; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_fieldentry_b64a62ea ON forms_fieldentry USING btree (entry_id);


--
-- Name: forms_formentry_d6cba1ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_formentry_d6cba1ad ON forms_formentry USING btree (form_id);


--
-- Name: galleries_galleryimage_6d994cdb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX galleries_galleryimage_6d994cdb ON galleries_galleryimage USING btree (gallery_id);


--
-- Name: generic_assignedkeyword_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_417f1b1c ON generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_5c003bba; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_5c003bba ON generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_keyword_9365d6e7 ON generic_keyword USING btree (site_id);


--
-- Name: generic_rating_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_rating_417f1b1c ON generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_rating_e8701ad4 ON generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_21ce1e68; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_threadedcomment_21ce1e68 ON generic_threadedcomment USING btree (replied_to_id);


--
-- Name: pages_page_6be37982; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_6be37982 ON pages_page USING btree (parent_id);


--
-- Name: pages_page_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_9365d6e7 ON pages_page USING btree (site_id);


--
-- Name: pages_page_publish_date_4b581dded15f4cdf_uniq; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_publish_date_4b581dded15f4cdf_uniq ON pages_page USING btree (publish_date);


--
-- Name: twitter_tweet_0bbeda9c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX twitter_tweet_0bbeda9c ON twitter_tweet USING btree (query_id);


--
-- Name: D8e54ed6535e17a5f07b3f5887fe55ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT "D8e54ed6535e17a5f07b3f5887fe55ff" FOREIGN KEY (replied_to_id) REFERENCES generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_b_blogcategory_id_5c987a15b9426892_fk_blog_blogcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_b_blogcategory_id_5c987a15b9426892_fk_blog_blogcategory_id FOREIGN KEY (blogcategory_id) REFERENCES blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_from_blogpost_id_161efba073ba4d90_fk_blog_blogpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blog_from_blogpost_id_161efba073ba4d90_fk_blog_blogpost_id FOREIGN KEY (from_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcategory_site_id_1565b70d240d75b_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_site_id_1565b70d240d75b_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpo_to_blogpost_id_48f773544ff96fa5_fk_blog_blogpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpo_to_blogpost_id_48f773544ff96fa5_fk_blog_blogpost_id FOREIGN KEY (to_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost__blogpost_id_11545014277324dc_fk_blog_blogpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost__blogpost_id_11545014277324dc_fk_blog_blogpost_id FOREIGN KEY (blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_site_id_3cd2a8869a3bc877_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_site_id_3cd2a8869a3bc877_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_user_id_3d08a741310d8f6f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_user_id_3d08a741310d8f6f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: co_sitepermission_id_64c924a870a6a554_fk_core_sitepermission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT co_sitepermission_id_64c924a870a6a554_fk_core_sitepermission_id FOREIGN KEY (sitepermission_id) REFERENCES core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conf_setting_site_id_3971204fedfdfec8_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_site_id_3971204fedfdfec8_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission__site_id_6dd5fffb45435677_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission__site_id_6dd5fffb45435677_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_39798e235626a505_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT djan_content_type_id_39798e235626a505_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_comment_id_26f904a7f2b4c55_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_comment_id_26f904a7f2b4c55_fk_django_comments_id FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_1442753a03512f4c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_1442753a03512f4c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_48b7896f6ea83216_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_48b7896f6ea83216_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_20e3794dfd3a7b1e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_20e3794dfd3a7b1e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect_site_id_121a4403f653e524_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_121a4403f653e524_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_field_form_id_3660963e8b17a175_fk_forms_form_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_form_id_3660963e8b17a175_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_fieldentr_entry_id_7b83c1acf66a9d67_fk_forms_formentry_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentr_entry_id_7b83c1acf66a9d67_fk_forms_formentry_id FOREIGN KEY (entry_id) REFERENCES forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_form_page_ptr_id_2363a7422cd85950_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_page_ptr_id_2363a7422cd85950_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_formen_form_id_5fca4521fe2d9b9b_fk_forms_form_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formen_form_id_5fca4521fe2d9b9b_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ga_gallery_id_5f743e845a8d8b01_fk_galleries_gallery_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT ga_gallery_id_5f743e845a8d8b01_fk_galleries_gallery_page_ptr_id FOREIGN KEY (gallery_id) REFERENCES galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_gallery_page_ptr_id_6cf84f17bef39d64_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_page_ptr_id_6cf84f17bef39d64_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gene_content_type_id_28e2096071be2a4f_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT gene_content_type_id_28e2096071be2a4f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gene_content_type_id_340baca94a5341cc_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT gene_content_type_id_340baca94a5341cc_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assig_keyword_id_61d6fae39a09e150_fk_generic_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assig_keyword_id_61d6fae39a09e150_fk_generic_keyword_id FOREIGN KEY (keyword_id) REFERENCES generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_keyword_site_id_7727e5473a304097_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_site_id_7727e5473a304097_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating_user_id_323dfdffa0c13bac_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_user_id_323dfdffa0c13bac_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_t_comment_ptr_id_7ce6b4612f86bbc6_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_t_comment_ptr_id_7ce6b4612f86bbc6_fk_django_comments_id FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_link_page_ptr_id_560afe0956838fd3_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_page_ptr_id_560afe0956838fd3_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page_parent_id_7bf3217d99139bb8_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_parent_id_7bf3217d99139bb8_fk_pages_page_id FOREIGN KEY (parent_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page_site_id_22239f4327580ae9_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_site_id_22239f4327580ae9_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_richtextpag_page_ptr_id_303aa0962fe9608b_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpag_page_ptr_id_303aa0962fe9608b_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: twitter_tweet_query_id_5de4bfd6dfe46065_fk_twitter_query_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_query_id_5de4bfd6dfe46065_fk_twitter_query_id FOREIGN KEY (query_id) REFERENCES twitter_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

