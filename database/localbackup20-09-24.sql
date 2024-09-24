--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: AcademicYears; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AcademicYears" (
    id integer NOT NULL,
    value character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."AcademicYears" OWNER TO postgres;

--
-- Name: AcademicYears_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AcademicYears_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."AcademicYears_id_seq" OWNER TO postgres;

--
-- Name: AcademicYears_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AcademicYears_id_seq" OWNED BY public."AcademicYears".id;


--
-- Name: AdditionalSkills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AdditionalSkills" (
    id integer NOT NULL,
    name character varying(255),
    doc_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."AdditionalSkills" OWNER TO postgres;

--
-- Name: AdditionalSkills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNER TO postgres;

--
-- Name: AdditionalSkills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;


--
-- Name: UserBanks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserBanks" (
    id integer NOT NULL,
    name character varying(255),
    account_number numeric,
    branch character varying(255),
    ifsc_code character varying(255),
    user_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp with time zone,
    bank_address character varying(255)
);


ALTER TABLE public."UserBanks" OWNER TO postgres;

--
-- Name: Banks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Banks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Banks_id_seq" OWNER TO postgres;

--
-- Name: Banks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Banks_id_seq" OWNED BY public."UserBanks".id;


--
-- Name: BloodGroups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BloodGroups" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."BloodGroups" OWNER TO postgres;

--
-- Name: BloodGroups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."BloodGroups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."BloodGroups_id_seq" OWNER TO postgres;

--
-- Name: BloodGroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;


--
-- Name: CasteCategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CasteCategories" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CasteCategories" OWNER TO postgres;

--
-- Name: CasteCategories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CasteCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."CasteCategories_id_seq" OWNER TO postgres;

--
-- Name: CasteCategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;


--
-- Name: Talukas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Talukas" (
    id integer NOT NULL,
    name character varying(255),
    district_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Talukas" OWNER TO postgres;

--
-- Name: Cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Cities_id_seq" OWNER TO postgres;

--
-- Name: Cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Talukas".id;


--
-- Name: Classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Classes" (
    id integer NOT NULL,
    name character varying(255),
    institute_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Classes" OWNER TO postgres;

--
-- Name: Classes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Classes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Classes_id_seq" OWNER TO postgres;

--
-- Name: Classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;


--
-- Name: Companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Companies" (
    id integer NOT NULL,
    organization_type_id integer,
    user_id integer,
    name character varying(255),
    logo character varying(255),
    state_id integer,
    district_id integer,
    taluka_id integer,
    country_id integer,
    landmark character varying(255),
    street character varying(255),
    pincode character varying(255),
    phone character varying(255),
    reg_no character varying(255),
    reg_certificate character varying(255),
    email character varying(255),
    verified boolean,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    village character varying(255),
    description character varying(255),
    website character varying(255),
    owner_id integer,
    owner_type_id integer
);


ALTER TABLE public."Companies" OWNER TO postgres;

--
-- Name: Companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Companies_id_seq" OWNER TO postgres;

--
-- Name: Companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;


--
-- Name: CompanyRemarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CompanyRemarks" (
    id integer NOT NULL,
    entity_user_id integer,
    section integer,
    remarks character varying(255),
    userrole_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CompanyRemarks" OWNER TO postgres;

--
-- Name: CompanyRemarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CompanyRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNER TO postgres;

--
-- Name: CompanyRemarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNED BY public."CompanyRemarks".id;


--
-- Name: Configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Configs" (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Configs" OWNER TO postgres;

--
-- Name: Configs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Configs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Configs_id_seq" OWNER TO postgres;

--
-- Name: Configs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;


--
-- Name: Countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Countries" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    nationality character varying
);


ALTER TABLE public."Countries" OWNER TO postgres;

--
-- Name: Countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Countries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Countries_id_seq" OWNER TO postgres;

--
-- Name: Countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;


--
-- Name: Courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Courses" (
    id integer NOT NULL,
    name character varying(255),
    course_code character varying(255),
    credit character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Courses" OWNER TO postgres;

--
-- Name: Courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Courses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Courses_id_seq" OWNER TO postgres;

--
-- Name: Courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;


--
-- Name: Degrees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Degrees" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Degrees" OWNER TO postgres;

--
-- Name: Degrees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Degrees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Degrees_id_seq" OWNER TO postgres;

--
-- Name: Degrees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;


--
-- Name: Departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Departments" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Departments" OWNER TO postgres;

--
-- Name: Departments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Departments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Departments_id_seq" OWNER TO postgres;

--
-- Name: Departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;


--
-- Name: Designations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Designations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Designations" OWNER TO postgres;

--
-- Name: Designations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Designations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Designations_id_seq" OWNER TO postgres;

--
-- Name: Designations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;


--
-- Name: Districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Districts" (
    id integer NOT NULL,
    name character varying(255),
    state_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Districts" OWNER TO postgres;

--
-- Name: Districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Districts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Districts_id_seq" OWNER TO postgres;

--
-- Name: Districts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;


--
-- Name: DocumentTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DocumentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ParentId" integer
);


ALTER TABLE public."DocumentTypes" OWNER TO postgres;

--
-- Name: DocumentTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DocumentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."DocumentTypes_id_seq" OWNER TO postgres;

--
-- Name: DocumentTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;


--
-- Name: Dummies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dummies" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value integer DEFAULT 0
);


ALTER TABLE public."Dummies" OWNER TO postgres;

--
-- Name: Dummies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Dummies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Dummies_id_seq" OWNER TO postgres;

--
-- Name: Dummies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;


--
-- Name: Durations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Durations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Durations" OWNER TO postgres;

--
-- Name: Durations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Durations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Durations_id_seq" OWNER TO postgres;

--
-- Name: Durations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;


--
-- Name: EmploymentTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EmploymentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."EmploymentTypes" OWNER TO postgres;

--
-- Name: EmploymentTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EmploymentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNER TO postgres;

--
-- Name: EmploymentTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;


--
-- Name: EntityTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EntityTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."EntityTypes" OWNER TO postgres;

--
-- Name: EntityTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EntityTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EntityTypes_id_seq" OWNER TO postgres;

--
-- Name: EntityTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;


--
-- Name: EntityUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EntityUsers" (
    id integer NOT NULL,
    user_id integer,
    entity_type_id integer,
    cio_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."EntityUsers" OWNER TO postgres;

--
-- Name: EntityUsers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EntityUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EntityUsers_id_seq" OWNER TO postgres;

--
-- Name: EntityUsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;


--
-- Name: EvalTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EvalTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."EvalTypes" OWNER TO postgres;

--
-- Name: EvalTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EvalTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EvalTypes_id_seq" OWNER TO postgres;

--
-- Name: EvalTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;


--
-- Name: Experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Experiences" (
    id integer NOT NULL,
    "case" character varying(255),
    "from" integer,
    "to" integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Experiences" OWNER TO postgres;

--
-- Name: Experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Experiences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Experiences_id_seq" OWNER TO postgres;

--
-- Name: Experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;


--
-- Name: InstituteProgrammeSubjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."InstituteProgrammeSubjects" (
    id integer NOT NULL,
    programme_id integer,
    institute_id integer,
    subject_id integer,
    userdoc_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."InstituteProgrammeSubjects" OWNER TO postgres;

--
-- Name: FeeStuctures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FeeStuctures_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."FeeStuctures_id_seq" OWNER TO postgres;

--
-- Name: FeeStuctures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FeeStuctures_id_seq" OWNED BY public."InstituteProgrammeSubjects".id;


--
-- Name: Genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Genders" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Genders" OWNER TO postgres;

--
-- Name: Genders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Genders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Genders_id_seq" OWNER TO postgres;

--
-- Name: Genders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;


--
-- Name: GuardianTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GuardianTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."GuardianTypes" OWNER TO postgres;

--
-- Name: GuardianTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."GuardianTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."GuardianTypes_id_seq" OWNER TO postgres;

--
-- Name: GuardianTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;


--
-- Name: InstituteProgrammeCourseSubjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."InstituteProgrammeCourseSubjects" (
    id integer NOT NULL,
    institute_program_id integer,
    program_subject_id integer,
    program_course_id integer,
    program_semester_id integer,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public."InstituteProgrammeCourseSubjects" OWNER TO postgres;

--
-- Name: InstituteProgrammeCourseSubjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNER TO postgres;

--
-- Name: InstituteProgrammeCourseSubjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;


--
-- Name: InstituteProgrammes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."InstituteProgrammes" (
    id integer NOT NULL,
    institute_id integer,
    programme_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."InstituteProgrammes" OWNER TO postgres;

--
-- Name: InstituteProgrammes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."InstituteProgrammes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNER TO postgres;

--
-- Name: InstituteProgrammes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;


--
-- Name: InstituteStaffs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."InstituteStaffs" (
    id integer NOT NULL,
    institute_id integer,
    staff_id integer,
    role_id integer,
    institute_type_id integer,
    current_sem character varying(255),
    year character varying(255),
    from_date timestamp with time zone,
    to_date timestamp with time zone,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    department_id integer
);


ALTER TABLE public."InstituteStaffs" OWNER TO postgres;

--
-- Name: InstituteStaffs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."InstituteStaffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNER TO postgres;

--
-- Name: InstituteStaffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;


--
-- Name: InstituteTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."InstituteTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."InstituteTypes" OWNER TO postgres;

--
-- Name: InstituteTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."InstituteTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."InstituteTypes_id_seq" OWNER TO postgres;

--
-- Name: InstituteTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;


--
-- Name: Institutes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Institutes" (
    id integer NOT NULL,
    institute_type_id integer,
    code character varying(255),
    name character varying(255),
    type character varying(255),
    address character varying(255),
    taluka_id integer,
    district_id integer,
    state_id integer,
    country_id integer,
    pincode character varying(255),
    hoi_id integer,
    contact_person_name character varying(255),
    contact_person_email character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    mobile bigint
);


ALTER TABLE public."Institutes" OWNER TO postgres;

--
-- Name: Institutes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Institutes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Institutes_id_seq" OWNER TO postgres;

--
-- Name: Institutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;


--
-- Name: MenuItems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuItems" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."MenuItems" OWNER TO postgres;

--
-- Name: MenuItems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."MenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."MenuItems_id_seq" OWNER TO postgres;

--
-- Name: MenuItems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;


--
-- Name: Modes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Modes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Modes" OWNER TO postgres;

--
-- Name: Modes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Modes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Modes_id_seq" OWNER TO postgres;

--
-- Name: Modes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;


--
-- Name: Notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Notifications" (
    id integer NOT NULL,
    from_userrole integer,
    to_userrole integer,
    subject character varying(255),
    message character varying(255),
    is_read boolean,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Notifications" OWNER TO postgres;

--
-- Name: Notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Notifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Notifications_id_seq" OWNER TO postgres;

--
-- Name: Notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;


--
-- Name: OTPs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OTPs" (
    id integer NOT NULL,
    otp_type character varying(255),
    otp character varying(255),
    attempts integer,
    details character varying(255),
    is_active boolean,
    "time" timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."OTPs" OWNER TO postgres;

--
-- Name: OTPs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OTPs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OTPs_id_seq" OWNER TO postgres;

--
-- Name: OTPs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;


--
-- Name: OrganisationTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrganisationTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."OrganisationTypes" OWNER TO postgres;

--
-- Name: OrganisationTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OrganisationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNER TO postgres;

--
-- Name: OrganisationTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;


--
-- Name: StudentOtherSkills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentOtherSkills" (
    id integer NOT NULL,
    name character varying(255),
    user_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."StudentOtherSkills" OWNER TO postgres;

--
-- Name: OtherSkills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OtherSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OtherSkills_id_seq" OWNER TO postgres;

--
-- Name: OtherSkills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;


--
-- Name: OwnerTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OwnerTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."OwnerTypes" OWNER TO postgres;

--
-- Name: OwnerTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OwnerTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OwnerTypes_id_seq" OWNER TO postgres;

--
-- Name: OwnerTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;


--
-- Name: Percentages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Percentages" (
    id integer NOT NULL,
    "case" character varying(255),
    from_percentage integer,
    to_percentage integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Percentages" OWNER TO postgres;

--
-- Name: Percentages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Percentages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Percentages_id_seq" OWNER TO postgres;

--
-- Name: Percentages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;


--
-- Name: Permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Permissions" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Permissions" OWNER TO postgres;

--
-- Name: Permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Permissions_id_seq" OWNER TO postgres;

--
-- Name: Permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;


--
-- Name: ProgrammeSemesters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProgrammeSemesters" (
    id integer NOT NULL,
    program_id integer,
    semester_id integer,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public."ProgrammeSemesters" OWNER TO postgres;

--
-- Name: ProgrammeSemesters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProgrammeSemesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNER TO postgres;

--
-- Name: ProgrammeSemesters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;


--
-- Name: ProgrammeSubjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProgrammeSubjects" (
    programme_id integer NOT NULL,
    subject_id integer NOT NULL,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."ProgrammeSubjects" OWNER TO postgres;

--
-- Name: ProgrammeSubjects_delete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProgrammeSubjects_delete" (
    id integer NOT NULL,
    programme_id integer,
    subject_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."ProgrammeSubjects_delete" OWNER TO postgres;

--
-- Name: ProgrammeSubjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProgrammeSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNER TO postgres;

--
-- Name: ProgrammeSubjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects_delete".id;


--
-- Name: Programmes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Programmes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    max_sem integer,
    programme_desc character varying(255),
    type character varying(255),
    stream_id integer,
    "order" integer,
    doc_type_id integer
);


ALTER TABLE public."Programmes" OWNER TO postgres;

--
-- Name: Programmes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Programmes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Programmes_id_seq" OWNER TO postgres;

--
-- Name: Programmes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;


--
-- Name: QualificationTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."QualificationTypes" (
    id integer NOT NULL,
    title character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."QualificationTypes" OWNER TO postgres;

--
-- Name: QualificationTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."QualificationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."QualificationTypes_id_seq" OWNER TO postgres;

--
-- Name: QualificationTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."QualificationTypes_id_seq" OWNED BY public."QualificationTypes".id;


--
-- Name: Roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Roles" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    is_admin boolean DEFAULT false,
    type character varying,
    display boolean DEFAULT false
);


ALTER TABLE public."Roles" OWNER TO postgres;

--
-- Name: Roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Roles_id_seq" OWNER TO postgres;

--
-- Name: Roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;


--
-- Name: Semesters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Semesters" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Semesters" OWNER TO postgres;

--
-- Name: Semesters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Semesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Semesters_id_seq" OWNER TO postgres;

--
-- Name: Semesters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Semesters_id_seq" OWNED BY public."Semesters".id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: ServiceRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ServiceRoles" (
    id integer NOT NULL,
    role_id integer,
    service_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."ServiceRoles" OWNER TO postgres;

--
-- Name: ServiceRoles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ServiceRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ServiceRoles_id_seq" OWNER TO postgres;

--
-- Name: ServiceRoles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ServiceRoles_id_seq" OWNED BY public."ServiceRoles".id;


--
-- Name: Services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Services" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    image_url character varying
);


ALTER TABLE public."Services" OWNER TO postgres;

--
-- Name: Services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Services_id_seq" OWNER TO postgres;

--
-- Name: Services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;


--
-- Name: Skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Skills" (
    id integer NOT NULL,
    name character varying(255),
    active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying(255)
);


ALTER TABLE public."Skills" OWNER TO postgres;

--
-- Name: Skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Skills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Skills_id_seq" OWNER TO postgres;

--
-- Name: Skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Skills_id_seq" OWNED BY public."Skills".id;


--
-- Name: StaffRemarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StaffRemarks" (
    id integer NOT NULL,
    entity_user_id integer,
    section integer,
    remarks character varying(255),
    userrole_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."StaffRemarks" OWNER TO postgres;

--
-- Name: StaffRemarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StaffRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StaffRemarks_id_seq" OWNER TO postgres;

--
-- Name: StaffRemarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StaffRemarks_id_seq" OWNED BY public."StaffRemarks".id;


--
-- Name: Staffs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Staffs" (
    id integer NOT NULL,
    user_id integer,
    employment_type_id integer,
    pan_number character varying(255),
    joining_date timestamp with time zone,
    retirement_date timestamp with time zone,
    passport_no character varying(255),
    emergency_contact_no character varying(255),
    google_scholarship_id character varying(255),
    father_husband_guardian_name character varying(255),
    mother_toungue character varying(255),
    office_email character varying(255),
    employee_id character varying(255),
    is_teaching boolean,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Staffs" OWNER TO postgres;

--
-- Name: Staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Staffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Staffs_id_seq" OWNER TO postgres;

--
-- Name: Staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Staffs_id_seq" OWNED BY public."Staffs".id;


--
-- Name: States; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."States" (
    id integer NOT NULL,
    name character varying(255),
    country_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."States" OWNER TO postgres;

--
-- Name: States_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."States_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."States_id_seq" OWNER TO postgres;

--
-- Name: States_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."States_id_seq" OWNED BY public."States".id;


--
-- Name: Streams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Streams" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Streams" OWNER TO postgres;

--
-- Name: Streams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Streams_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Streams_id_seq" OWNER TO postgres;

--
-- Name: Streams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Streams_id_seq" OWNED BY public."Streams".id;


--
-- Name: StudentAdditionalSkills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentAdditionalSkills" (
    id integer NOT NULL,
    additional_skill_id integer,
    user_id integer,
    title character varying(255),
    duration_id integer,
    location character varying(255),
    mode_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_docs_id integer
);


ALTER TABLE public."StudentAdditionalSkills" OWNER TO postgres;

--
-- Name: StudentAdditionalSkills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentAdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNER TO postgres;

--
-- Name: StudentAdditionalSkills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNED BY public."StudentAdditionalSkills".id;


--
-- Name: StudentEnrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentEnrollments" (
    id integer NOT NULL,
    user_id integer,
    current_semester_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    subject_id integer,
    current_class_id integer,
    other_institute_name character varying(255),
    other_programme_name character varying(255),
    consolidated_total_marks integer,
    consolidated_marks_obtained integer,
    userdoc_id integer,
    other_subject_name character varying(255),
    board_university character varying(255),
    month_year character varying(255),
    is_active integer DEFAULT 1,
    consolidated_grade_obtained character varying(255),
    qual_type_id integer,
    academic_year_id integer,
    institute_id integer,
    programme_id integer,
    evaltype_id integer,
    stream_id integer
);


ALTER TABLE public."StudentEnrollments" OWNER TO postgres;

--
-- Name: StudentEnrollments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentEnrollments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNER TO postgres;

--
-- Name: StudentEnrollments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNED BY public."StudentEnrollments".id;


--
-- Name: StudentGuardians; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentGuardians" (
    id integer NOT NULL,
    guardian_type_id integer NOT NULL,
    relation_with_user character varying(255),
    user_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    phone character varying(255),
    email character varying(255),
    aadhar_card_no character varying(255),
    occupation character varying(255),
    designation character varying(255),
    work_address character varying(255),
    annual_income numeric,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    is_deceased boolean DEFAULT false NOT NULL,
    is_employed boolean DEFAULT false NOT NULL,
    gender integer
);


ALTER TABLE public."StudentGuardians" OWNER TO postgres;

--
-- Name: StudentGuardians_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentGuardians_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentGuardians_id_seq" OWNER TO postgres;

--
-- Name: StudentGuardians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentGuardians_id_seq" OWNED BY public."StudentGuardians".id;


--
-- Name: StudentMarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentMarks" (
    id integer NOT NULL,
    student_enrollment_id integer,
    eval_type_id integer,
    total_marks integer,
    marks_obtained integer,
    grade_obtained character varying(255),
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    month_year character varying(50),
    last_qual_year boolean DEFAULT false NOT NULL,
    userdoc_id integer,
    semester_id integer
);


ALTER TABLE public."StudentMarks" OWNER TO postgres;

--
-- Name: StudentMarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentMarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentMarks_id_seq" OWNER TO postgres;

--
-- Name: StudentMarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentMarks_id_seq" OWNED BY public."StudentMarks".id;


--
-- Name: StudentRemarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentRemarks" (
    id integer NOT NULL,
    student_enrollment_id integer,
    section integer,
    remarks character varying(255),
    user_id integer,
    role_type_id integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    is_active boolean DEFAULT false
);


ALTER TABLE public."StudentRemarks" OWNER TO postgres;

--
-- Name: StudentRemarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentRemarks_id_seq" OWNER TO postgres;

--
-- Name: StudentRemarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentRemarks_id_seq" OWNED BY public."StudentRemarks".id;


--
-- Name: StudentResults; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentResults" (
    id integer NOT NULL,
    student_enrollment_id integer,
    institute_program_id integer,
    eval_type_id integer,
    total_marks integer,
    total_marks_obtained integer,
    grade_obtained character varying(255),
    month integer,
    year integer,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public."StudentResults" OWNER TO postgres;

--
-- Name: StudentResults_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentResults_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentResults_id_seq" OWNER TO postgres;

--
-- Name: StudentResults_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentResults_id_seq" OWNED BY public."StudentResults".id;


--
-- Name: StudentSkills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentSkills" (
    id integer NOT NULL,
    user_id integer,
    skill_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."StudentSkills" OWNER TO postgres;

--
-- Name: StudentSkills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."StudentSkills_id_seq" OWNER TO postgres;

--
-- Name: StudentSkills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentSkills_id_seq" OWNED BY public."StudentSkills".id;


--
-- Name: Subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subjects" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Subjects" OWNER TO postgres;

--
-- Name: Subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Subjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Subjects_id_seq" OWNER TO postgres;

--
-- Name: Subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Subjects_id_seq" OWNED BY public."Subjects".id;


--
-- Name: UserContacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserContacts" (
    id integer NOT NULL,
    user_id integer,
    type integer,
    address character varying(255),
    country_id integer,
    state_id integer,
    district_id integer,
    taluka_id integer,
    village character varying(255),
    pincode character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."UserContacts" OWNER TO postgres;

--
-- Name: UserContacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserContacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserContacts_id_seq" OWNER TO postgres;

--
-- Name: UserContacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserContacts_id_seq" OWNED BY public."UserContacts".id;


--
-- Name: UserDesignations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserDesignations" (
    id integer NOT NULL,
    user_id integer,
    designation_id integer,
    employementtype_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."UserDesignations" OWNER TO postgres;

--
-- Name: UserDesignations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserDesignations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserDesignations_id_seq" OWNER TO postgres;

--
-- Name: UserDesignations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserDesignations_id_seq" OWNED BY public."UserDesignations".id;


--
-- Name: UserDocs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserDocs" (
    id integer NOT NULL,
    user_id integer,
    doc_type_id integer,
    filename character varying(255),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    is_active boolean DEFAULT true NOT NULL
);


ALTER TABLE public."UserDocs" OWNER TO postgres;

--
-- Name: UserDocs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserDocs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserDocs_id_seq" OWNER TO postgres;

--
-- Name: UserDocs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserDocs_id_seq" OWNED BY public."UserDocs".id;


--
-- Name: UserMenuItems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserMenuItems" (
    id integer NOT NULL,
    role_id integer,
    menuitem_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."UserMenuItems" OWNER TO postgres;

--
-- Name: UserMenuItems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserMenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserMenuItems_id_seq" OWNER TO postgres;

--
-- Name: UserMenuItems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserMenuItems_id_seq" OWNED BY public."UserMenuItems".id;


--
-- Name: UserPermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserPermissions" (
    id integer NOT NULL,
    role_id integer,
    permission_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."UserPermissions" OWNER TO postgres;

--
-- Name: UserPermissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserPermissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserPermissions_id_seq" OWNER TO postgres;

--
-- Name: UserPermissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserPermissions_id_seq" OWNED BY public."UserPermissions".id;


--
-- Name: UserPersonalDetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserPersonalDetails" (
    id integer NOT NULL,
    user_id integer,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    phone character varying(255),
    dob timestamp with time zone,
    aadhar character varying(255),
    photo character varying(255),
    physically_disabled boolean,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    castecategory_id integer,
    religion_id integer,
    gender integer,
    blood_group integer,
    nationality integer,
    reg_no character varying(255),
    phone_sec numeric(10,0)
);


ALTER TABLE public."UserPersonalDetails" OWNER TO postgres;

--
-- Name: UserPersonalDetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserPersonalDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserPersonalDetails_id_seq" OWNER TO postgres;

--
-- Name: UserPersonalDetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserPersonalDetails_id_seq" OWNED BY public."UserPersonalDetails".id;


--
-- Name: UserQualifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserQualifications" (
    id integer NOT NULL,
    user_id integer,
    qualification_type_id integer,
    year integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public."UserQualifications" OWNER TO postgres;

--
-- Name: UserQualifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserQualifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserQualifications_id_seq" OWNER TO postgres;

--
-- Name: UserQualifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserQualifications_id_seq" OWNED BY public."UserQualifications".id;


--
-- Name: UserRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserRoles" (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    preferred_role boolean DEFAULT false,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."UserRoles" OWNER TO postgres;

--
-- Name: UserRoles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserRoles_id_seq" OWNER TO postgres;

--
-- Name: UserRoles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserRoles_id_seq" OWNED BY public."UserRoles".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    uid character varying(255),
    username character varying(255),
    password character varying(255),
    phone character varying(255),
    email character varying(255),
    phone_verified boolean,
    email_verified boolean,
    is_active boolean DEFAULT true NOT NULL,
    is_verified boolean DEFAULT false NOT NULL,
    is_deleted boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying,
    is_signed boolean DEFAULT false NOT NULL,
    verified_by integer
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Users_id_seq" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: dummy_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dummy_table (
    age bigint,
    name "char"
);


ALTER TABLE public.dummy_table OWNER TO postgres;

--
-- Name: religions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.religions (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.religions OWNER TO postgres;

--
-- Name: religions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.religions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.religions_id_seq OWNER TO postgres;

--
-- Name: religions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.religions_id_seq OWNED BY public.religions.id;


--
-- Name: AcademicYears id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);


--
-- Name: AdditionalSkills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);


--
-- Name: BloodGroups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);


--
-- Name: CasteCategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);


--
-- Name: Classes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);


--
-- Name: Companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);


--
-- Name: CompanyRemarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);


--
-- Name: Configs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);


--
-- Name: Countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);


--
-- Name: Courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);


--
-- Name: Degrees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Degrees" ALTER COLUMN id SET DEFAULT nextval('public."Degrees_id_seq"'::regclass);


--
-- Name: Departments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Departments" ALTER COLUMN id SET DEFAULT nextval('public."Departments_id_seq"'::regclass);


--
-- Name: Designations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Designations" ALTER COLUMN id SET DEFAULT nextval('public."Designations_id_seq"'::regclass);


--
-- Name: Districts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Districts" ALTER COLUMN id SET DEFAULT nextval('public."Districts_id_seq"'::regclass);


--
-- Name: DocumentTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DocumentTypes" ALTER COLUMN id SET DEFAULT nextval('public."DocumentTypes_id_seq"'::regclass);


--
-- Name: Dummies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dummies" ALTER COLUMN id SET DEFAULT nextval('public."Dummies_id_seq"'::regclass);


--
-- Name: Durations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Durations" ALTER COLUMN id SET DEFAULT nextval('public."Durations_id_seq"'::regclass);


--
-- Name: EmploymentTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EmploymentTypes" ALTER COLUMN id SET DEFAULT nextval('public."EmploymentTypes_id_seq"'::regclass);


--
-- Name: EntityTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntityTypes" ALTER COLUMN id SET DEFAULT nextval('public."EntityTypes_id_seq"'::regclass);


--
-- Name: EntityUsers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntityUsers" ALTER COLUMN id SET DEFAULT nextval('public."EntityUsers_id_seq"'::regclass);


--
-- Name: EvalTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EvalTypes" ALTER COLUMN id SET DEFAULT nextval('public."EvalTypes_id_seq"'::regclass);


--
-- Name: Experiences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Experiences" ALTER COLUMN id SET DEFAULT nextval('public."Experiences_id_seq"'::regclass);


--
-- Name: Genders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders" ALTER COLUMN id SET DEFAULT nextval('public."Genders_id_seq"'::regclass);


--
-- Name: GuardianTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GuardianTypes" ALTER COLUMN id SET DEFAULT nextval('public."GuardianTypes_id_seq"'::regclass);


--
-- Name: InstituteProgrammeCourseSubjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammeCourseSubjects_id_seq"'::regclass);


--
-- Name: InstituteProgrammeSubjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);


--
-- Name: InstituteProgrammes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammes_id_seq"'::regclass);


--
-- Name: InstituteStaffs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteStaffs" ALTER COLUMN id SET DEFAULT nextval('public."InstituteStaffs_id_seq"'::regclass);


--
-- Name: InstituteTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteTypes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteTypes_id_seq"'::regclass);


--
-- Name: Institutes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes" ALTER COLUMN id SET DEFAULT nextval('public."Institutes_id_seq"'::regclass);


--
-- Name: MenuItems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems" ALTER COLUMN id SET DEFAULT nextval('public."MenuItems_id_seq"'::regclass);


--
-- Name: Modes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Modes" ALTER COLUMN id SET DEFAULT nextval('public."Modes_id_seq"'::regclass);


--
-- Name: Notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);


--
-- Name: OTPs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OTPs" ALTER COLUMN id SET DEFAULT nextval('public."OTPs_id_seq"'::regclass);


--
-- Name: OrganisationTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrganisationTypes" ALTER COLUMN id SET DEFAULT nextval('public."OrganisationTypes_id_seq"'::regclass);


--
-- Name: OwnerTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OwnerTypes" ALTER COLUMN id SET DEFAULT nextval('public."OwnerTypes_id_seq"'::regclass);


--
-- Name: Percentages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Percentages" ALTER COLUMN id SET DEFAULT nextval('public."Percentages_id_seq"'::regclass);


--
-- Name: Permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);


--
-- Name: ProgrammeSemesters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSemesters" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSemesters_id_seq"'::regclass);


--
-- Name: ProgrammeSubjects_delete id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSubjects_delete" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSubjects_id_seq"'::regclass);


--
-- Name: Programmes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Programmes" ALTER COLUMN id SET DEFAULT nextval('public."Programmes_id_seq"'::regclass);


--
-- Name: QualificationTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualificationTypes" ALTER COLUMN id SET DEFAULT nextval('public."QualificationTypes_id_seq"'::regclass);


--
-- Name: Roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);


--
-- Name: Semesters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);


--
-- Name: ServiceRoles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);


--
-- Name: Services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);


--
-- Name: Skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);


--
-- Name: StaffRemarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);


--
-- Name: Staffs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);


--
-- Name: States id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);


--
-- Name: Streams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);


--
-- Name: StudentAdditionalSkills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);


--
-- Name: StudentEnrollments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);


--
-- Name: StudentGuardians id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);


--
-- Name: StudentMarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);


--
-- Name: StudentOtherSkills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);


--
-- Name: StudentRemarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);


--
-- Name: StudentResults id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);


--
-- Name: StudentSkills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);


--
-- Name: Subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);


--
-- Name: Talukas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);


--
-- Name: UserBanks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);


--
-- Name: UserContacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);


--
-- Name: UserDesignations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);


--
-- Name: UserDocs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);


--
-- Name: UserMenuItems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);


--
-- Name: UserPermissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);


--
-- Name: UserPersonalDetails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);


--
-- Name: UserQualifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);


--
-- Name: UserRoles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Name: religions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);


--
-- Data for Name: AcademicYears; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
1	2010-2011	f	2024-08-01 10:59:57.909+05:30	2024-08-01 10:59:57.909+05:30
3	2011-2012	f	2024-08-01 11:00:45.999+05:30	2024-08-01 11:00:45.999+05:30
4	2024-2025	t	2024-08-23 12:46:11.506+05:30	2024-08-23 12:46:11.506+05:30
\.


--
-- Data for Name: AdditionalSkills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	Project	18	t	2023-06-30 16:12:05.7+05:30	2023-06-30 16:12:05.7+05:30
2	Internship	19	t	2023-06-30 16:12:05.7+05:30	2023-06-30 16:12:05.7+05:30
3	Certifications	20	t	2023-06-30 16:12:05.7+05:30	2023-06-30 16:12:05.7+05:30
4	Apprenticeship	23	t	2023-06-30 16:12:05.7+05:30	2023-06-30 16:12:05.7+05:30
\.


--
-- Data for Name: BloodGroups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	O+ve	t	2023-05-30 10:37:12.515+05:30	2023-05-30 10:37:12.515+05:30
2	A+ve	t	2023-05-30 10:37:21.653+05:30	2023-05-30 10:37:21.653+05:30
3	B+ve	t	2023-05-30 10:37:25.81+05:30	2023-05-30 10:37:25.81+05:30
4	AB+ve	t	2023-05-30 10:37:30.543+05:30	2023-05-30 10:37:30.543+05:30
5	A-ve	t	2023-05-30 10:37:38.28+05:30	2023-05-30 10:37:38.28+05:30
6	B-ve	t	2023-05-30 10:37:44.167+05:30	2023-05-30 10:37:44.167+05:30
7	AB-ve	t	2023-05-30 10:37:49.474+05:30	2023-05-30 10:37:49.474+05:30
8	Bombay	t	2023-05-30 10:37:55.569+05:30	2023-05-30 10:37:55.569+05:30
\.


--
-- Data for Name: CasteCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	General	t	2023-06-23 16:09:59.858+05:30	2023-06-23 16:09:59.858+05:30
2	OBC	t	2023-06-23 16:10:06.298+05:30	2023-06-23 16:10:06.298+05:30
3	SC	t	2023-06-23 16:10:10.425+05:30	2023-06-23 16:10:10.425+05:30
4	ST	t	2023-06-23 16:10:14.508+05:30	2023-06-23 16:10:14.508+05:30
\.


--
-- Data for Name: Classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	First Std	2	f	2023-03-23 10:15:52.604+05:30	2023-03-23 10:15:52.604+05:30
2	Second Std	2	f	2023-03-23 10:16:29.569+05:30	2023-03-23 10:16:29.569+05:30
4	Eleventh	4	f	2023-03-23 10:16:53.527+05:30	2023-03-23 10:16:53.527+05:30
5	Twelth	4	f	2023-03-23 10:16:59.86+05:30	2023-03-23 10:16:59.86+05:30
3	Third Std	2	f	2023-03-23 10:16:33.558+05:30	2023-03-23 10:16:33.558+05:30
6	First Year	5	t	2023-03-23 10:17:08.648+05:30	2023-03-23 10:17:08.648+05:30
7	Second Year	5	t	2023-03-23 10:17:14.438+05:30	2023-03-23 10:17:14.438+05:30
9	Third Year	5	t	2023-09-12 12:21:16.323+05:30	2023-09-12 12:21:16.323+05:30
10	Fourth Year	5	t	2023-09-12 12:21:38.778+05:30	2023-09-12 12:21:38.778+05:30
11	Fifth Year	5	t	2023-09-12 12:21:45.961+05:30	2023-09-12 12:21:45.961+05:30
12	Sixth Year	5	t	2023-09-12 12:21:51.044+05:30	2023-09-12 12:21:51.044+05:30
15	First Year	2	t	2024-07-08 11:33:10.722+05:30	2024-07-08 11:33:10.722+05:30
16	Second Year	2	t	2024-07-08 11:33:29.254+05:30	2024-07-08 11:33:29.254+05:30
17	Third Year	2	t	2024-07-08 11:33:38.252+05:30	2024-07-08 11:33:38.252+05:30
18	First	3	t	2024-08-01 12:42:59.52+05:30	2024-08-01 12:42:59.52+05:30
19	Second	3	t	2024-08-01 12:43:05.579+05:30	2024-08-01 12:43:05.579+05:30
20	Third	3	t	2024-08-01 12:43:10.445+05:30	2024-08-01 12:43:10.445+05:30
21	Fourth	3	t	2024-08-01 12:43:22.766+05:30	2024-08-01 12:43:22.766+05:30
22	Fifth	3	t	2024-08-01 12:43:29.443+05:30	2024-08-01 12:43:29.443+05:30
23	Sixth	3	t	2024-08-01 12:43:34.426+05:30	2024-08-01 12:43:34.426+05:30
24	Seventh	3	t	2024-08-01 12:43:39.734+05:30	2024-08-01 12:43:39.734+05:30
25	Eighth	3	t	2024-08-01 12:43:46.842+05:30	2024-08-01 12:43:46.842+05:30
26	Ninth	3	t	2024-08-01 12:43:53.893+05:30	2024-08-01 12:43:53.893+05:30
27	Tenth	3	t	2024-08-01 12:44:00.627+05:30	2024-08-01 12:44:00.627+05:30
28	Eleventh	4	t	2024-08-01 12:44:13.844+05:30	2024-08-01 12:44:13.844+05:30
29	Twelfth	4	t	2024-08-01 12:44:43.592+05:30	2024-08-01 12:44:43.592+05:30
\.


--
-- Data for Name: Companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
17	1	180	testoing	logo.jpg	1	10	11	1	landmark	street	965654	9698745630			testing123@gmail.com	f	t	2023-09-13 11:52:00.671+05:30	2023-09-13 11:55:35.6+05:30	\N	Akkem	testoing	www.companyedge.com	\N	\N
5	1	73	Edgeplus	logo_1.jpg	1	11	14	1	landmark	street	896547	8967742563	reNO12389		email@gmail.com	f	t	2023-06-20 16:18:54.117+05:30	2023-09-12 10:40:13.462+05:30	\N	village	description	https://website.com	\N	\N
7	1	111	Pixels	logo.jpg	1	10	11	1	landmark	street	3232223	9494949459	reg123		pixels.google@gmail.com	f	t	2023-07-14 11:13:08.809+05:30	2023-07-14 11:27:57.715+05:30	\N	Akkemm		www.companyedge.com	\N	\N
18	2	189	Directorate of Higher Education	\N	1	10	11	1	SCERT Building	Provorim	405303	9090909090	\N		dhe.gov@gmail.com	f	t	2023-10-13 10:45:53.391+05:30	2023-10-13 10:45:53.391+05:30	\N	Panjim	<p>Education Department</p>	www.dhe.goa.gov.in	118	2
8	1	118	YougaliTech	logo4.gif	3	2	5	1	Near DHE	18 June road	405303	8976568796	YG-111	\N	yugtech@gmail.com	t	t	2023-08-16 14:48:28.608+05:30	2023-08-16 14:48:28.608+05:30	\N	Panjim	A company, abbreviated as co., is a legal entity representing an association of people, whether natural, legal or a mixture of both, with a specific objective. Company members share a common purpose and unite to achieve specific, declared goals.	www.yougtech.com	\N	\N
3	1	70	CodeRix	logo.jpg	1	1	1	1	landmark	street	403401	9890093371	reNO123		company371@gmail.com	f	t	2023-06-19 17:00:42.643+05:30	2023-06-19 17:00:42.643+05:30	\N	\N			\N	\N
4	1	71	DHECompany	logo.jpg	1	1	1	1	landmark	street	698547	9890094378	reNO123		company341@gmail.com	f	t	2023-06-19 17:10:39.395+05:30	2023-06-19 17:10:39.395+05:30	\N	\N			\N	\N
10	1	139	Infosys	logo.jpg	3	2	4	1	near SCRT Building	Alto	403345	8767558899	\N		infosysp1@gmail.com	f	t	2023-08-25 16:54:34.846+05:30	2023-08-25 16:54:34.846+05:30	\N	Porvorim	A thread is a single sequential flow of execution of tasks of a process so it is also known as thread of execution or thread of control. There is a way of thread execution inside the process of any operating system.	www.infosys.com	118	2
1	1	57	Hectranet	logo4.gif	1	1	1	1	landmark	street	403401	9890098783	reNO123	certificate	company4544@gmail.com	f	t	2023-04-12 13:30:58.714+05:30	2023-04-12 13:30:58.714+05:30	\N	\N	\N	\N	\N	\N
2	1	67	Codeblocks	logo4.gif	1	1	1	1	landmark	street	403401	9895624523	reNO123	certificate	ysr@gmail.com	f	t	2023-04-12 13:32:49.977+05:30	2023-04-12 13:32:49.977+05:30	\N	\N	\N	\N	\N	\N
9	1	122	BMC Software	logo1.gif	3	2	3	1	near SCRT Building	Alto	403345	897656456	\N		dmc@gmail.com	f	t	2023-08-24 16:26:29.62+05:30	2023-08-24 16:26:29.62+05:30	\N	Porvorim	The sidereal month is the time it takes to make one complete orbit around Earth with respect to the fixed stars. It is about 27.32 days.	comp3@gov.in	\N	\N
11	1	142	Infosys	logo1.gif	3	2	5	1	near SCRT Building	Alto	403345	8976564577	\N		infosyslimited@gmail.com	f	t	2023-08-29 15:11:02.174+05:30	2023-08-29 15:11:02.174+05:30	\N	Porvorim	jhgjggjgjjjjjjjjjjjjjjjjjjjjjjj	www.infosys.com	118	2
12	1	143	Tech Mahindra	logo2.gif	3	2	3	1	near SCRT Building	Alto	403345	8787656456	\N		techmahindra@gmail.com	f	t	2023-08-29 17:30:56.294+05:30	2023-08-29 17:30:56.294+05:30	\N	Porvorim	<p><i><strong>Tech Mahindra</strong></i></p>	www.techmahnindra.com	118	2
14	1	145	TCS Services	logo2.gif	3	2	5	1	near SCRT Building	Housing Board Colony	403345	7767656789	\N		abc@gmail.com	f	t	2023-08-30 12:13:38.156+05:30	2023-08-30 12:13:38.156+05:30	\N	Porvorim	<ul><li>At <i>TCS</i>, we go beyond helping businesses transform through technology.&nbsp;</li><li>We help them make a meaningful difference; to their customers, and to the communities they serve.</li></ul>	www.tcs.com	118	2
6	3	103	Anonymous	logo.jpg	1	10	11	1	Near BOI	Patto Panjim 	403001	9000002598			pmg@gmail.com	f	t	2023-07-13 10:53:55.608+05:30	2023-07-13 16:41:39.259+05:30	\N	Akkem			\N	\N
15	1	157	BMC Software	logo2.gif	3	2	4	1	near SCRT Building	Alto	403345	8988888877	\N		abc11@gmail.com	f	t	2023-09-01 15:01:00.368+05:30	2023-09-01 15:01:00.368+05:30	\N	Bicholim	<p>cxcxcxc</p>	bmc.gov.in	118	2
16	1	169	Agricul Org	logo.jpg	1	10	1	1	landmark	street	403002	9869694758	\N		agriculorg@gmail.com	f	t	2023-09-12 11:40:45.2+05:30	2023-09-12 11:40:45.2+05:30	\N	Akkem	\N	https://www.agriculorg.com	\N	\N
19	2	190	Directorate of Technical Education	\N	3	2	4	1	SCERT Building	Provorim	405303	8909890989	\N		dte.gov@gmail.com	f	t	2023-10-13 11:02:24.495+05:30	2023-10-13 11:02:24.495+05:30	\N	Porvorim	<p>Directorate of Technical Education</p>	www.dte.gov.in	118	2
20	1	198	HDFC limited	\N	3	2	3	1	near SCRT Building	Alto	403345	8976786756	\N		hdfc@gmail.com	f	t	2023-10-18 12:58:40.652+05:30	2023-10-18 12:58:40.652+05:30	\N	Bicholim	<p>dfdfsfsfsf</p>	www.icici.in	118	2
21	1	199	City computer 	\N	3	2	4	1	near SCRT Building	Alto	403345	8786756455	\N		citycom@gmail.com	f	t	2023-10-18 15:56:57.968+05:30	2023-10-18 15:56:57.968+05:30	\N	Bicholim	<p>hjhgjhgjhg</p>	www.icici.in	118	2
22	1	204	weWork	logo.jpg	3	2	1	1	Near Porvorim	Porvorim	403515	8989898989	\N		sdt.gshec@gmail.com	f	t	2023-11-07 11:36:19.307+05:30	2023-11-07 11:36:19.307+05:30	\N	Porvorim	we are Database Tuning Company	http://www.wework.in	\N	\N
23	1	207	letswork	logo.jpg	3	2	1	1	Near Porvorim	Porvorim	404516	9090909065	\N		sdt1.gshec@gmail.com	f	t	2023-11-07 12:30:49.585+05:30	2023-11-07 12:30:49.585+05:30	\N	Porvorim	we are Database Tuning Company	https://www.letswork.in	\N	\N
24	1	209	Bharat Forge	logo.jpg	3	1	1	1	Near Porvorim	Porvorim	403540	6798548978	\N		mukesh@yopmail.com	f	t	2023-11-09 10:25:45.609+05:30	2023-11-09 10:25:45.609+05:30	\N	Tiska	Tech based Company	https://bharatforge.in	\N	\N
\.


--
-- Data for Name: CompanyRemarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
1	academic_year	2023-2024	t	2023-06-21 12:07:10.491+05:30	2023-06-21 12:07:10.491+05:30
\.


--
-- Data for Name: Countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
1	India	t	2023-03-15 16:59:21.831+05:30	2023-03-15 16:59:21.831+05:30	Indian
3	Australia	t	2023-03-15 16:59:48.771+05:30	2023-03-15 16:59:48.771+05:30	Australian
34	Japan	t	2023-03-21 12:04:36.505+05:30	2023-03-21 12:04:36.505+05:30	Japanese
\.


--
-- Data for Name: Courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
1	Integration	Maths-IN	50	t	2023-04-03 12:59:45.114+05:30	2023-04-03 12:59:45.114+05:30
2	Statistics	Maths-Stat	50	t	2023-04-03 13:00:29.128+05:30	2023-04-03 13:00:29.128+05:30
\.


--
-- Data for Name: Degrees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Agriculture	t	2023-04-03 13:09:04.294+05:30	2023-04-03 13:09:04.294+05:30
2	DHE	t	2023-04-03 13:09:09.846+05:30	2023-04-03 13:09:09.846+05:30
3	DTE	t	2023-04-03 13:09:16.325+05:30	2023-04-03 13:09:16.325+05:30
4	GSHEC	t	2023-04-03 13:09:22.511+05:30	2023-04-03 13:09:22.511+05:30
5	Admin Section	t	2023-07-05 11:36:33.185+05:30	2023-07-05 11:36:33.185+05:30
6	GEDC	t	2024-08-19 13:07:32.015+05:30	2024-08-19 13:07:32.015+05:30
\.


--
-- Data for Name: Designations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Assistant Professor	t	2023-04-10 14:42:41.332+05:30	2023-04-10 14:42:41.332+05:30
\.


--
-- Data for Name: Districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	South Goa	3	t	2023-03-21 12:38:57.743+05:30	2023-03-21 12:38:57.743+05:30
2	North Goa	3	t	2023-03-21 12:39:05.92+05:30	2023-03-21 12:39:05.92+05:30
3	Gascoyne	4	t	2023-03-21 12:38:57.743+05:30	2023-03-21 12:38:57.743+05:30
4	Goldfields	4	t	2023-06-30 16:09:07.778+05:30	2023-06-30 16:09:07.778+05:30
5	Peel	4	t	2023-06-30 16:09:21.771+05:30	2023-06-30 16:09:21.771+05:30
6	Kimberley	4	t	2023-06-30 16:09:34.875+05:30	2023-06-30 16:09:34.875+05:30
7	Adelaide	5	t	2023-06-30 16:09:59.166+05:30	2023-06-30 16:09:59.166+05:30
8	Barossa	5	t	2023-06-30 16:10:10.562+05:30	2023-06-30 16:10:10.562+05:30
9	Kangaroo Island	5	t	2023-06-30 16:10:24.779+05:30	2023-06-30 16:10:24.779+05:30
10	Sawantwadi	1	t	2023-06-30 16:14:04.087+05:30	2023-06-30 16:14:04.087+05:30
11	Sindhudurga	1	t	2023-06-30 16:14:11.152+05:30	2023-06-30 16:14:11.152+05:30
\.


--
-- Data for Name: DocumentTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
3	Identity	t	2023-06-05 12:03:51.026+05:30	2023-06-05 12:03:51.026+05:30	0
4	Academic	t	2023-06-05 12:04:14.453+05:30	2023-06-05 12:04:14.453+05:30	0
5	Bank	t	2023-06-05 12:06:17.382+05:30	2023-06-05 12:06:17.383+05:30	0
1	Application Picture	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
2	SSC marksheet	t	2023-06-05 10:58:31.581+05:30	2023-06-05 10:58:31.581+05:30	4
7	Company	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	0
6	Company Reg Cert	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	7
8	Company logo	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	7
9	MCOM marksheet	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
10	BA marksheet	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
11	BSC marksheet	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
12	MSC marksheet	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
13	HSSC marksheet	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
14	Diploma	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
15	FC	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
16	BVoc	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
17	Skill	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	0
18	Project	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	17
19	Internship	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	17
20	Certifications	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	17
21	Offer letter	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	7
22	Undertaking	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
23	Apprenticeship	t	2023-07-28 13:00:23.556+05:30	2023-07-28 13:00:23.556+05:30	17
25	Aadhar	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
26	Caste certificate	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
24	Family Income certificate	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
27	Guardian Income Certificate	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
30	Fee Structure	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	4
31	Father's death certificate	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
32	Mother's death certificate	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	3
33	Cancelled Cheque	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	5
34	Passbook	t	2023-06-05 10:58:10.216+05:30	2023-06-05 10:58:10.216+05:30	5
\.


--
-- Data for Name: Dummies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
2	No	t	2023-04-19 17:19:16.998+05:30	2023-04-19 17:19:16.998+05:30	0
1	Yes	t	2023-04-19 17:19:09.198+05:30	2023-04-19 17:19:09.198+05:30	1
\.


--
-- Data for Name: Durations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	0-1 month	t	2023-07-12 15:32:24.886+05:30	2023-07-12 15:32:24.886+05:30
2	1-2 months	t	2023-07-12 15:32:38.986+05:30	2023-07-12 15:32:38.986+05:30
3	2-3 months	t	2023-07-12 15:32:48.424+05:30	2023-07-12 15:32:48.424+05:30
4	3-4 months	t	2023-07-12 15:32:54.272+05:30	2023-07-12 15:32:54.272+05:30
5	4-5 months	t	2023-07-12 15:33:00.363+05:30	2023-07-12 15:33:00.363+05:30
6	5-6 months	t	2023-07-12 15:33:04.913+05:30	2023-07-12 15:33:04.913+05:30
\.


--
-- Data for Name: EmploymentTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Permanent	t	2023-03-21 12:56:30.657+05:30	2023-03-21 12:56:30.657+05:30
2	Contract basis	t	2023-03-21 12:57:04.419+05:30	2023-03-21 12:57:04.419+05:30
3	Lecture basis	t	2023-03-21 12:57:09.403+05:30	2023-03-21 12:57:09.403+05:30
\.


--
-- Data for Name: EntityTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Institute	t	2023-03-31 15:32:22.486+05:30	2023-03-31 15:32:22.486+05:30
2	Company	t	2023-03-31 15:32:47.934+05:30	2023-03-31 15:32:47.934+05:30
3	Organisation	t	2023-03-31 15:32:57.065+05:30	2023-03-31 15:32:57.065+05:30
4	Service	t	2023-04-17 15:55:05.372+05:30	2023-04-17 15:55:05.372+05:30
5	Department	t	2024-08-19 13:08:41.216+05:30	2024-08-19 13:08:41.216+05:30
\.


--
-- Data for Name: EntityUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
5	70	2	3	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
6	71	2	4	t	2023-06-19 17:10:39.41+05:30	2023-06-19 17:10:39.41+05:30
7	73	2	5	t	2023-06-20 16:18:54.175+05:30	2023-06-20 16:18:54.175+05:30
8	79	1	2	t	2023-06-23 17:38:40.208+05:30	2023-06-23 17:38:40.208+05:30
10	98	2	2	t	2023-07-06 12:09:31.5+05:30	2023-07-06 12:09:31.5+05:30
11	100	2	2	t	2023-07-06 12:10:22.66+05:30	2023-07-06 12:10:22.66+05:30
12	103	2	6	t	2023-07-13 10:53:55.721+05:30	2023-07-13 10:53:55.721+05:30
13	57	2	1	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
14	111	2	7	t	2023-07-14 11:13:08.876+05:30	2023-07-14 11:13:08.876+05:30
15	114	4	2	t	2023-07-17 11:26:40.599+05:30	2023-07-17 11:26:40.599+05:30
16	96	1	2	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
17	97	1	3	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
9	84	1	1	t	2023-06-26 11:17:14.213+05:30	2023-06-26 11:17:14.213+05:30
18	74	1	2	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
19	118	3	2	t	2023-07-18 13:22:07.266+05:30	2023-07-18 13:22:07.266+05:30
20	67	2	3	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
21	96	4	3	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
22	118	4	4	t	2023-06-19 17:00:42.73+05:30	2023-06-19 17:00:42.73+05:30
23	122	2	9	t	2023-08-24 16:26:29.662+05:30	2023-08-24 16:26:29.662+05:30
24	139	2	10	t	2023-08-25 16:54:34.883+05:30	2023-08-25 16:54:34.883+05:30
25	142	2	11	t	2023-08-29 15:11:02.179+05:30	2023-08-29 15:11:02.179+05:30
26	143	2	12	t	2023-08-29 17:30:56.34+05:30	2023-08-29 17:30:56.34+05:30
27	144	2	13	t	2023-08-30 12:09:27.235+05:30	2023-08-30 12:09:27.235+05:30
28	145	2	14	t	2023-08-30 12:13:38.185+05:30	2023-08-30 12:13:38.185+05:30
29	157	2	15	t	2023-09-01 15:01:00.393+05:30	2023-09-01 15:01:00.393+05:30
30	169	2	16	t	2023-09-12 11:40:45.204+05:30	2023-09-12 11:40:45.204+05:30
31	174	1	2	t	2023-09-13 11:03:14.962+05:30	2023-09-13 11:03:14.962+05:30
32	177	1	1	t	2023-09-13 11:10:01.598+05:30	2023-09-13 11:10:01.598+05:30
33	179	1	1	t	2023-09-13 11:13:11.164+05:30	2023-09-13 11:13:11.164+05:30
34	180	2	17	t	2023-09-13 11:52:00.713+05:30	2023-09-13 11:52:00.713+05:30
35	187	1	1	t	2023-10-12 14:10:21.853+05:30	2023-10-12 14:10:21.853+05:30
36	188	1	1	t	2023-10-12 14:14:33.098+05:30	2023-10-12 14:14:33.098+05:30
37	189	2	18	t	2023-10-13 10:45:53.437+05:30	2023-10-13 10:45:53.437+05:30
38	190	2	19	t	2023-10-13 11:02:24.506+05:30	2023-10-13 11:02:24.506+05:30
39	193	1	2	t	2023-10-13 13:25:43.692+05:30	2023-10-13 13:25:43.692+05:30
40	198	2	20	t	2023-10-18 12:58:40.846+05:30	2023-10-18 12:58:40.846+05:30
41	199	2	21	t	2023-10-18 15:56:57.998+05:30	2023-10-18 15:56:57.998+05:30
42	204	2	22	t	2023-11-07 11:36:19.445+05:30	2023-11-07 11:36:19.445+05:30
43	207	2	23	t	2023-11-07 12:30:49.589+05:30	2023-11-07 12:30:49.589+05:30
44	209	2	24	t	2023-11-09 10:25:45.664+05:30	2023-11-09 10:25:45.664+05:30
45	231	\N	\N	t	2024-08-14 15:59:33.238+05:30	2024-08-14 15:59:33.238+05:30
46	232	\N	\N	t	2024-08-14 16:03:17.012+05:30	2024-08-14 16:03:17.012+05:30
47	235	\N	\N	t	2024-08-14 16:06:08.47+05:30	2024-08-14 16:06:08.47+05:30
48	236	1	1	t	2024-08-14 16:08:00.853+05:30	2024-08-14 16:08:00.853+05:30
49	237	1	1	t	2024-08-14 16:20:56.622+05:30	2024-08-14 16:20:56.622+05:30
50	240	1	2	t	2024-08-16 12:25:00.908+05:30	2024-08-16 12:25:00.908+05:30
51	241	1	2	t	2024-08-16 17:12:25.963+05:30	2024-08-16 17:12:25.963+05:30
52	243	5	6	t	2024-08-19 13:09:50.423+05:30	2024-08-19 13:09:50.423+05:30
53	244	5	6	t	2024-08-19 13:11:35.405+05:30	2024-08-19 13:11:35.405+05:30
54	245	5	6	t	2024-08-19 13:22:19.597+05:30	2024-08-19 13:22:19.597+05:30
55	246	5	6	t	2024-08-19 13:23:00.348+05:30	2024-08-19 13:23:00.348+05:30
56	247	5	6	t	2024-08-19 13:24:20.171+05:30	2024-08-19 13:24:20.171+05:30
57	248	5	6	t	2024-08-19 15:42:31.837+05:30	2024-08-19 15:42:31.837+05:30
58	249	5	6	t	2024-08-19 15:43:08.153+05:30	2024-08-19 15:43:08.153+05:30
59	251	5	6	t	2024-08-19 16:33:33.141+05:30	2024-08-19 16:33:33.141+05:30
60	252	5	6	t	2024-08-21 10:47:48.421+05:30	2024-08-21 10:47:48.421+05:30
61	253	5	6	t	2024-08-21 11:15:58.986+05:30	2024-08-21 11:15:58.986+05:30
62	255	1	4	t	2024-08-21 11:22:39.379+05:30	2024-08-21 11:22:39.379+05:30
63	295	1	1	t	2024-08-27 14:31:26.023+05:30	2024-08-27 14:31:26.023+05:30
64	302	1	9	t	2024-08-27 16:28:39.041+05:30	2024-08-27 16:28:39.041+05:30
65	303	1	14	t	2024-08-27 16:31:28.541+05:30	2024-08-27 16:31:28.541+05:30
\.


--
-- Data for Name: EvalTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	CGPA	t	2023-05-12 14:45:31.694+05:30	2023-05-12 14:45:31.694+05:30
2	Percentage	t	2024-07-04 12:08:06.885+05:30	2024-07-04 12:08:06.885+05:30
\.


--
-- Data for Name: Experiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Male	t	2023-05-30 10:33:00.464+05:30	2023-05-30 10:33:00.464+05:30
2	Female	t	2023-05-30 10:33:06.636+05:30	2023-05-30 10:33:06.636+05:30
3	Rather not say	t	2023-05-30 10:33:12.371+05:30	2023-05-30 10:33:12.371+05:30
\.


--
-- Data for Name: GuardianTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Mother	t	2023-05-15 14:55:42.023+05:30	2023-05-15 14:55:42.023+05:30
2	Father	t	2023-05-15 14:55:42.023+05:30	2023-05-15 14:55:42.023+05:30
3	Guardian	t	2023-05-15 14:55:42.023+05:30	2023-05-15 14:55:42.023+05:30
\.


--
-- Data for Name: InstituteProgrammeCourseSubjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: InstituteProgrammeSubjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
2	1	1	1	677	t	2024-07-24 13:15:59.304+05:30	2024-07-25 10:52:09.837+05:30
8	1	4	3	714	t	2024-07-30 11:32:54.098+05:30	2024-07-30 11:37:24.425+05:30
7	2	4	1	716	t	2024-07-25 17:04:24.021+05:30	2024-07-30 11:48:04.589+05:30
9	2	4	1	716	t	2024-07-30 11:45:43.511+05:30	2024-07-30 11:48:04.589+05:30
\.


--
-- Data for Name: InstituteProgrammes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	2	2	t	2023-03-23 10:54:20.03+05:30	2023-03-23 10:54:20.03+05:30
2	1	1	t	2023-03-23 10:54:31.391+05:30	2023-03-23 10:54:31.391+05:30
3	1	2	t	2023-03-23 10:54:35.532+05:30	2023-03-23 10:54:35.532+05:30
4	1	3	t	2023-03-23 10:54:38.324+05:30	2023-03-23 10:54:38.324+05:30
5	3	2	t	2023-03-23 10:54:20.03+05:30	2023-03-23 10:54:20.03+05:30
6	2	1	t	2023-03-23 10:54:20.03+05:30	2023-03-23 10:54:20.03+05:30
7	4	5	t	2023-03-23 10:54:20.03+05:30	2023-03-23 10:54:20.03+05:30
\.


--
-- Data for Name: InstituteStaffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
10	2	9	6	5	\N	\N	\N	\N	t	2023-06-23 15:26:01.122+05:30	2023-06-23 15:26:01.122+05:30	1
8	1	1	6	1	UG SEM 2	1	2023-06-15 05:30:00+05:30	2023-06-23 05:30:00+05:30	t	2023-04-12 10:45:40.568+05:30	2023-04-12 10:45:40.568+05:30	1
9	2	8	6	5	UG SEM 2	1	2023-06-15 05:30:00+05:30	2023-06-23 05:30:00+05:30	t	2023-06-20 16:16:23.854+05:30	2023-06-21 16:21:10.278+05:30	2
11	2	10	6	5	\N	\N	\N	\N	t	2023-06-23 15:53:10.29+05:30	2023-06-23 15:53:10.29+05:30	2
12	2	11	6	5	\N	\N	\N	\N	t	2023-06-23 16:03:38.673+05:30	2023-06-23 16:03:38.673+05:30	1
13	1	12	6	5	\N	\N	\N	\N	t	2023-06-26 10:52:01.003+05:30	2023-06-26 10:52:01.003+05:30	2
14	2	13	2	5	\N	\N	\N	\N	t	2023-06-26 10:53:18.7+05:30	2023-06-26 10:53:18.7+05:30	1
16	2	15	2	5	\N	1	2023-07-06 05:30:00+05:30	2023-07-21 05:30:00+05:30	t	2023-07-05 10:38:22.719+05:30	2023-07-05 12:52:50.084+05:30	1
17	2	16	2	5	\N	1	2023-07-18 05:30:00+05:30	2023-07-27 05:30:00+05:30	t	2023-07-07 10:27:58.582+05:30	2023-07-07 10:30:00.313+05:30	\N
18	2	17	2	5	\N	1	2023-07-26 05:30:00+05:30	2023-07-26 05:30:00+05:30	t	2023-07-07 13:04:14.403+05:30	2023-07-07 13:06:35.032+05:30	\N
19	3	18	6	5	\N	\N	\N	\N	t	2023-07-13 16:56:13.091+05:30	2023-07-13 16:56:13.091+05:30	\N
15	2	14	2	5	\N	1	2023-07-12 05:30:00+05:30	2023-07-20 05:30:00+05:30	t	2023-07-03 10:18:49.563+05:30	2023-09-08 13:27:46.538+05:30	2
20	1	19	6	5	\N	\N	\N	\N	t	2023-09-12 11:29:23.111+05:30	2023-09-12 11:29:23.111+05:30	\N
21	2	20	6	5	\N	\N	\N	\N	t	2023-09-13 10:21:30.565+05:30	2023-09-13 10:21:30.565+05:30	\N
22	1	21	2	5	\N	\N	\N	\N	t	2023-09-13 10:27:22.961+05:30	2023-09-13 10:27:22.961+05:30	\N
23	2	22	6	5	\N	\N	\N	\N	t	2023-09-13 11:03:14.699+05:30	2023-09-13 11:03:14.699+05:30	\N
24	1	23	2	5	\N	\N	\N	\N	t	2023-09-13 11:10:01.471+05:30	2023-09-13 11:10:01.471+05:30	\N
25	1	24	6	5	\N	\N	\N	\N	t	2023-09-13 11:13:11.149+05:30	2023-09-13 11:13:11.149+05:30	\N
26	1	25	6	5	\N	\N	\N	\N	t	2023-10-12 14:10:21.656+05:30	2023-10-12 14:10:21.656+05:30	\N
27	1	26	2	5	\N	\N	\N	\N	t	2023-10-12 14:14:33.037+05:30	2023-10-12 14:14:33.037+05:30	\N
28	2	27	2	5	\N	\N	\N	\N	t	2023-10-13 13:25:43.328+05:30	2023-10-13 13:25:43.328+05:30	\N
29	2	28	6	5	\N	\N	\N	\N	t	2024-08-16 12:25:00.904+05:30	2024-08-16 12:25:00.904+05:30	\N
30	2	29	2	5	\N	\N	\N	\N	t	2024-08-16 17:12:25.958+05:30	2024-08-16 17:12:25.958+05:30	\N
32	9	31	2	5	\N	\N	\N	\N	t	2024-08-27 16:28:39.034+05:30	2024-08-27 16:28:39.034+05:30	\N
33	2	32	2	1	\N	1	2024-08-28 05:30:00+05:30	2024-08-27 05:30:00+05:30	t	2024-08-27 16:31:28.537+05:30	2024-08-27 16:45:01.304+05:30	\N
31	9	30	6	5	\N	1	2024-08-27 05:30:00+05:30	2024-08-31 05:30:00+05:30	t	2024-08-27 14:31:26.019+05:30	2024-08-27 16:47:04.81+05:30	\N
\.


--
-- Data for Name: InstituteTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Nursery	t	2023-03-21 12:51:40.257+05:30	2023-03-21 12:51:40.257+05:30
2	Primary school	t	2023-03-21 12:51:59.312+05:30	2023-03-21 12:51:59.312+05:30
3	School	t	2023-03-21 12:52:21.902+05:30	2023-03-21 12:52:21.902+05:30
4	Higher Secondary	t	2023-03-21 12:52:35.175+05:30	2023-03-21 12:52:35.175+05:30
5	College	t	2023-03-21 12:52:42.374+05:30	2023-03-21 12:52:42.374+05:30
6	Others	f	2023-03-21 12:51:40.257+05:30	2023-03-21 12:51:40.257+05:30
\.


--
-- Data for Name: Institutes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
3	5	COL0021	Khandola college	Autonomous	Sanquelim-Goa	1	1	3	1	403602	1	Abhishek Gudekar	abhishek@gmail.com	t	2023-07-13 16:47:41.019+05:30	2023-07-13 16:47:41.019+05:30	1245784512
5	5	COL005	National Institute of Yoga	Autonomous	Margao-Goa	1	1	3	1	403602	1	Veda Desai	vedadesai@gmail.com	t	2024-07-02 12:31:09.451+05:30	2024-07-02 12:31:09.451+05:30	7878787878
8	5	NIY	National Institute of Dance	Central	Thivim	5	1	5	1	403513	3	Abc	niy@ac.in	t	2024-07-02 12:46:54.82+05:30	2024-07-02 12:46:54.82+05:30	9087897678
9	5	NIY	National Institute of Dance	Central	Thivim	5	5	5	1	403513	3	Abc	niy@ac.in	t	2024-07-02 12:48:41.154+05:30	2024-07-02 12:48:41.154+05:30	9087897678
14	5	NIY	National Institute of Yoga	Central	Thivim	5	5	5	1	403513	3	Abc	niy@ac.in	t	2024-07-02 12:50:01.147+05:30	2024-07-02 12:50:01.147+05:30	9087897678
15	5	NIY	National Institute of Yoga	Central	Thivim	5	5	5	1	403513	3	Abc	niy@ac.in	t	2024-07-02 12:53:52.035+05:30	2024-07-02 12:53:52.035+05:30	9087897678
16	5	NIY	National Institute of Technology	Central	Cancona	5	5	5	1	403513	3	Abc	nit@ac.in	t	2024-07-02 13:10:38.238+05:30	2024-07-02 13:10:38.238+05:30	5656565656
4	5	COL008	Sanquelim HS	Autonomous	Sanquelim-Goa	5	1	3	1	403678	1	Paresh 	paresh@gmail.com	t	2024-07-02 11:09:52.767+05:30	2024-07-02 11:09:52.767+05:30	9898656598
17	3	SCH009	Samiti	Private	Ponda-Goa	5	1	3	1	403678	1	Rajasi	rajasi@gmail.com	t	2024-07-23 17:01:23.298+05:30	2024-07-23 17:01:23.298+05:30	9898656545
18	4	HSS009	Samiti HS	Private	Ponda-Goa	5	1	3	1	403678	1	RajasiHS	rajasihs@gmail.com	t	2024-07-23 17:02:06.497+05:30	2024-07-23 17:02:06.497+05:30	9898656546
19	5	NIY	GMFC	Central	dHARBANDORA	5	5	5	1	403513	3	Abc	GMFC@GMAIL.COM	t	2024-07-25 11:48:51.18+05:30	2024-07-25 11:48:51.18+05:30	8989898898
1	5	COL005	Chowgule college	Autonomous	Margao-Goa	1	1	3	1	403602	67	Veda Desai	vedadesai@gmail.com	t	2023-03-23 10:32:16.956+05:30	2023-03-23 10:32:16.956+05:30	9874569854
21	1	NULL	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-03-23 10:32:16.956+05:30	2023-03-23 10:32:16.956+05:30	\N
22	4	NULL	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-03-23 10:32:16.956+05:30	2023-03-23 10:32:16.956+05:30	\N
23	3	NULL	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-03-23 10:32:16.956+05:30	2023-03-23 10:32:16.956+05:30	\N
24	2	NULL	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-03-23 10:32:16.956+05:30	2023-03-23 10:32:16.956+05:30	\N
25	5	NULL	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-03-23 10:32:16.956+05:30	2023-03-23 10:32:16.956+05:30	\N
2	5	COL112	PES college	Aided	Ponda-Goa	3	2	3	1	403401	3	Riya Naik	riyanaik@gmail.com	t	2023-03-23 10:34:32.39+05:30	2023-03-23 10:34:32.39+05:30	7458965478
\.


--
-- Data for Name: MenuItems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
1	List Institute Users	https://localhost:3000/get/institute-users	t	2023-07-27 14:58:42.681+05:30	2023-07-27 14:58:42.681+05:30
2	List Staff	http://localhost:3000/get/staff	t	2023-07-27 15:00:33.868+05:30	2023-07-27 15:00:33.868+05:30
3	List Students	http://localhost:3000/get/students	t	2023-07-27 15:00:45.999+05:30	2023-07-27 15:00:45.999+05:30
4	Create DHE Admin	http://localhost:3000/create/dhe-admin	t	2023-07-27 15:01:05.236+05:30	2023-07-27 15:01:05.236+05:30
\.


--
-- Data for Name: Modes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Online	t	2023-07-12 15:32:24.886+05:30	2023-07-12 15:32:24.886+05:30
2	Offline	t	2023-07-12 15:32:24.886+05:30	2023-07-12 15:32:24.886+05:30
\.


--
-- Data for Name: Notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
11	49	108	Job-fair	Job fair at University. Do attend.	t	t	2023-09-05 12:42:12.086+05:30	2023-09-05 17:35:16.436+05:30
10	49	108	Verificaion	Review your Application	t	t	2023-09-05 12:41:31.322+05:30	2023-09-06 10:37:40.068+05:30
8	49	108	Registration	Your Resgistration has been created Successfully! 	t	t	2023-09-04 15:58:09.056+05:30	2023-09-06 10:37:44.752+05:30
9	49	108	Holiday	Ganesh Holidays will be from 17th	t	t	2023-09-05 12:40:25.898+05:30	2023-09-06 10:37:55.819+05:30
12	49	109	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-07 13:09:44.115+05:30	2023-09-07 13:09:44.115+05:30
13	49	110	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-11 10:12:35.05+05:30	2023-09-11 10:12:35.05+05:30
14	49	113	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-12 11:34:48.898+05:30	2023-09-12 11:34:48.898+05:30
15	49	116	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-13 10:25:24.782+05:30	2023-09-13 10:25:24.782+05:30
16	49	120	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-13 11:13:10.95+05:30	2023-09-13 11:13:10.95+05:30
17	49	123	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-14 15:21:26.166+05:30	2023-09-14 15:21:26.166+05:30
18	49	124	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-26 11:22:44.684+05:30	2023-09-26 11:22:44.684+05:30
19	49	125	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-28 12:20:15.762+05:30	2023-09-28 12:20:15.762+05:30
20	49	126	Registration	Your Resgistration has been created Successfully! 	f	t	2023-09-28 12:27:23.297+05:30	2023-09-28 12:27:23.297+05:30
21	49	127	Registration	Your Resgistration has been created Successfully! 	t	t	2023-09-29 12:40:45.54+05:30	2023-09-29 14:56:54.674+05:30
22	49	128	Registration	Your Resgistration has been created Successfully! 	t	t	2023-10-06 10:39:12.684+05:30	2023-10-06 17:22:51.545+05:30
23	49	134	Registration	Your Resgistration has been created Successfully! 	f	t	2023-10-13 13:31:13.955+05:30	2023-10-13 13:31:13.955+05:30
24	49	135	Registration	Your Resgistration has been created Successfully! 	f	t	2023-10-18 11:10:28.1+05:30	2023-10-18 11:10:28.1+05:30
25	49	136	Registration	Your Resgistration has been created Successfully! 	f	t	2023-10-18 12:58:41.17+05:30	2023-10-18 12:58:41.17+05:30
26	49	137	Registration	Your Resgistration has been created Successfully! 	f	t	2023-10-18 15:56:58.134+05:30	2023-10-18 15:56:58.134+05:30
27	49	138	Registration	Your Resgistration has been created Successfully! 	f	t	2023-10-20 10:54:57.158+05:30	2023-10-20 10:54:57.158+05:30
29	49	140	Registration	Your Resgistration has been created Successfully! 	f	t	2023-10-26 11:26:47.748+05:30	2023-10-26 11:26:47.748+05:30
30	49	141	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-07 11:36:19.785+05:30	2023-11-07 11:36:19.785+05:30
31	49	142	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-07 12:30:49.643+05:30	2023-11-07 12:30:49.643+05:30
32	49	143	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-07 12:54:15.522+05:30	2023-11-07 12:54:15.522+05:30
33	49	144	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-09 10:25:45.831+05:30	2023-11-09 10:25:45.831+05:30
34	49	143	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-09 11:05:54.254+05:30	2023-11-09 11:05:54.254+05:30
35	49	143	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-09 11:06:16.768+05:30	2023-11-09 11:06:16.768+05:30
36	49	104	Registration	Your Resgistration has been created Successfully! 	f	t	2023-11-09 15:51:37.985+05:30	2023-11-09 15:51:37.985+05:30
37	49	145	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-02 14:42:29.024+05:30	2024-07-02 14:42:29.024+05:30
38	49	146	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-03 10:30:07.036+05:30	2024-07-03 10:30:07.036+05:30
39	49	147	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-03 15:18:50.236+05:30	2024-07-03 15:18:50.236+05:30
40	49	148	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-04 10:50:24.261+05:30	2024-07-04 10:50:24.261+05:30
41	49	149	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-04 11:13:25.772+05:30	2024-07-04 11:13:25.772+05:30
42	49	150	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-08 12:37:43.534+05:30	2024-07-08 12:37:43.534+05:30
43	49	151	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-11 15:29:17.636+05:30	2024-07-11 15:29:17.636+05:30
44	49	152	Registration	Your Resgistration has been created Successfully! 	f	t	2024-07-11 15:30:12.283+05:30	2024-07-11 15:30:12.283+05:30
45	49	153	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-07 13:00:45.706+05:30	2024-08-07 13:00:45.706+05:30
46	49	155	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-09 17:52:13.8+05:30	2024-08-09 17:52:13.8+05:30
47	49	162	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-16 11:01:20.535+05:30	2024-08-16 11:01:20.535+05:30
48	49	163	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-16 12:25:00.963+05:30	2024-08-16 12:25:00.963+05:30
49	49	164	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-16 17:12:26.009+05:30	2024-08-16 17:12:26.009+05:30
65	49	177	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-21 15:58:03.008+05:30	2024-08-21 15:58:03.008+05:30
28	49	39	Registration	Your Resgistration has been created Successfully! 	t	t	2023-10-26 11:03:06.567+05:30	2024-08-19 15:19:55.563+05:30
51	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:06:55.384+05:30	2024-08-19 17:06:55.384+05:30
52	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:07:16.744+05:30	2024-08-19 17:07:16.744+05:30
53	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:07:55.611+05:30	2024-08-19 17:07:55.611+05:30
54	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:08:15.517+05:30	2024-08-19 17:08:15.517+05:30
55	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:08:42.346+05:30	2024-08-19 17:08:42.346+05:30
56	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:11:22.052+05:30	2024-08-19 17:11:22.052+05:30
57	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:11:32.776+05:30	2024-08-19 17:11:32.776+05:30
58	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:11:44.727+05:30	2024-08-19 17:11:44.727+05:30
59	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:12:31.988+05:30	2024-08-19 17:12:31.988+05:30
60	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-19 17:13:25.887+05:30	2024-08-19 17:13:25.887+05:30
50	49	39	Registration	Your Resgistration has been created Successfully! 	t	t	2024-08-19 14:30:40.35+05:30	2024-08-19 17:17:49.432+05:30
61	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-20 10:51:35.76+05:30	2024-08-20 10:51:35.76+05:30
62	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-20 16:11:41.109+05:30	2024-08-20 16:11:41.109+05:30
63	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-21 09:56:36.606+05:30	2024-08-21 09:56:36.606+05:30
64	49	176	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-21 15:36:15.402+05:30	2024-08-21 15:36:15.402+05:30
66	49	180	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-21 16:33:04.985+05:30	2024-08-21 16:33:04.985+05:30
67	49	181	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-23 10:56:11.107+05:30	2024-08-23 10:56:11.107+05:30
68	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-23 15:43:24.971+05:30	2024-08-23 15:43:24.971+05:30
69	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-26 11:08:53.237+05:30	2024-08-26 11:08:53.237+05:30
70	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-26 17:22:37.437+05:30	2024-08-26 17:22:37.437+05:30
71	49	202	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-27 12:56:17.158+05:30	2024-08-27 12:56:17.158+05:30
72	49	203	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-27 14:31:26.028+05:30	2024-08-27 14:31:26.028+05:30
73	49	204	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-27 16:28:39.131+05:30	2024-08-27 16:28:39.131+05:30
74	49	205	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-27 16:31:28.544+05:30	2024-08-27 16:31:28.544+05:30
75	49	206	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-29 12:52:51.937+05:30	2024-08-29 12:52:51.937+05:30
76	49	207	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-29 12:55:26.629+05:30	2024-08-29 12:55:26.629+05:30
77	49	209	Registration	Your Resgistration has been created Successfully! 	f	t	2024-08-29 16:03:06.045+05:30	2024-08-29 16:03:06.045+05:30
78	49	210	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-03 14:43:13.018+05:30	2024-09-03 14:43:13.018+05:30
79	49	211	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-04 16:34:23.189+05:30	2024-09-04 16:34:23.189+05:30
80	49	213	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-13 14:12:31.627+05:30	2024-09-13 14:12:31.627+05:30
81	49	214	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-13 16:34:12.889+05:30	2024-09-13 16:34:12.889+05:30
82	49	216	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-13 16:36:58.33+05:30	2024-09-13 16:36:58.33+05:30
83	49	217	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-13 16:38:16.429+05:30	2024-09-13 16:38:16.429+05:30
84	49	219	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-16 12:09:41.634+05:30	2024-09-16 12:09:41.634+05:30
85	49	222	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-16 12:44:38.234+05:30	2024-09-16 12:44:38.234+05:30
86	49	225	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-16 13:05:35.484+05:30	2024-09-16 13:05:35.484+05:30
87	49	228	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-16 13:13:20.468+05:30	2024-09-16 13:13:20.468+05:30
88	49	229	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-17 15:42:30.222+05:30	2024-09-17 15:42:30.222+05:30
89	49	230	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-17 15:45:04.025+05:30	2024-09-17 15:45:04.025+05:30
90	49	39	Registration	Your Resgistration has been created Successfully! 	f	t	2024-09-18 17:24:20.465+05:30	2024-09-18 17:24:20.465+05:30
\.


--
-- Data for Name: OTPs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
34	email	$2a$10$mMoiKjDqa4X9v2Kc8PDYguySg9VBPX1zfK5WPdZKhJvq2mlP/wb4q	3	parabyougali@gmail.com	t	2023-09-08 10:30:32.925+05:30	2023-07-28 11:32:44.034+05:30	2023-09-08 10:30:32.926+05:30
21	phone	$2a$10$/XwgOQbhGj2TBlk0EPKfLO0EDI7ReMdLGR7zxgwk7K2W.NqrGDZyG	0	7845784578	t	2023-07-26 17:01:29.586+05:30	2023-07-26 17:01:11.276+05:30	2023-07-26 17:01:29.586+05:30
22	phone	$2a$10$5KqrIBgoBfMkpfoj9JTbeOe.ykVMIj6xkM3H/wZUGFyNfDTp8UXt.	0	3652525262	t	2023-07-26 17:02:06.728+05:30	2023-07-26 17:01:49.8+05:30	2023-07-26 17:02:06.728+05:30
23	phone	$2a$10$e5kW3mvGbbaZxkwYUT4HS.kiD7kMO..CEMFFmvcpAKn5zmc4sb2XC	0	6358585856	t	2023-07-26 17:09:21.099+05:30	2023-07-26 17:08:52.426+05:30	2023-07-26 17:09:21.099+05:30
84	email	$2a$10$d/uN82b55IOCK4.jInnfBuiUsMSH6uiBxbDwVRTvyI9Us1DMWjGWK	1	snehadhe0745@gmail.com	t	2023-09-08 10:38:12.65+05:30	2023-09-08 10:38:12.65+05:30	2023-09-08 10:38:12.65+05:30
88	phone	$2a$10$JWNnGUsvlgoj17AUSasGOO1mN8Gm8d.6QGvAqfB/rpyE1PzwP0P8K	1	9595989898	t	2023-09-08 13:20:56.631+05:30	2023-09-08 13:20:56.631+05:30	2023-09-08 13:20:56.631+05:30
86	email	$2a$10$WvGbHG00DFHC/dgntFUIpeR7IBx.3VQDbe/0FyXr1ozP8uJoah8qK	3	parabyougali45@gmail.com	t	2023-09-08 13:26:49.279+05:30	2023-09-08 10:51:13.893+05:30	2023-09-08 13:26:49.279+05:30
24	phone	$2a$10$O91T57aMewcQgrw1Xpd6C.XMHKUryNaVF2fyEhS6YsO5E3UW8s9ky	0	4141414141	t	2023-07-26 17:12:51.763+05:30	2023-07-26 17:12:23.837+05:30	2023-07-26 17:12:51.764+05:30
90	phone	$2a$10$z7mWm2HAGjMXVCw1sCzCjOqJx8mh0yu/cwF9eeDOnNJot9IGnTyvq	2	9696878745	t	2023-09-08 13:33:29.725+05:30	2023-09-08 13:32:53.058+05:30	2023-09-08 13:33:29.726+05:30
92	email	$2a$10$TSuV9Zm24UV5Y2KfLsM3n.1DGlyO0Di5uUJMUNDdDTUoWnfzv92CK	1	radhanaik.dhe@gmail.com	t	2023-09-12 11:28:06.734+05:30	2023-09-12 11:28:06.735+05:30	2023-09-12 11:28:06.735+05:30
25	email	$2a$10$LfHVxLM/QUJkSq4WPznNBOrqPoQ3ajQBPO5qW9zPJmuwmP.pWcDT2	0	barvesidhi33@gmail.com	t	2023-07-27 11:34:34.126+05:30	2023-07-27 11:34:16.869+05:30	2023-07-27 11:34:34.126+05:30
94	email	$2a$10$rY8SWJRox4c25PulX99iGOjbNmSgYudw80acr4L3cybt6Yy.X2jka	1	meena.dhe@gmail.com	t	2023-09-12 11:32:13.122+05:30	2023-09-12 11:32:13.123+05:30	2023-09-12 11:32:13.123+05:30
96	email	$2a$10$wZynAEbm2x8SnCxIQZ4ayurZlXm6w/U1NKB1ruzkMuBnzY0Nd0WnW	1	agriculorg@gmail.com	t	2023-09-12 11:39:00.454+05:30	2023-09-12 11:39:00.455+05:30	2023-09-12 11:39:00.455+05:30
106	email	$2a$10$0BbF47xvPLdJ2B1ZyFBoCenohAoioMuydHX8F9X5kNjxqnOaBEaEW	2	siya@gmail.com	t	2023-09-13 11:06:58.542+05:30	2023-09-13 11:06:28.292+05:30	2023-09-13 11:06:58.542+05:30
27	phone	$2a$10$u87ZKzuoXBskc3aNGPzpO.K9Xo4YNwZhA4XVcNnhj3u/ZwYUbIfvS	0	6398989898	t	2023-07-27 11:49:07.374+05:30	2023-07-27 11:49:07.374+05:30	2023-07-27 11:49:07.374+05:30
98	email	$2a$10$yOLOhbcM3PfHt1NP2ZDk0.v3SO.Olr5W7vNzeNV47eo4r.F.3Pn8q	1	dhegoa@gmail.com	t	2023-09-12 14:38:03.269+05:30	2023-09-12 14:38:03.34+05:30	2023-09-12 14:38:03.34+05:30
28	email	$2a$10$Jsm5EHpA6ACCxItxo39wcODvp.A466Nb0t3yYFWYeOwM1WdwbhaU2	0	parabyougali54@gmail.com	t	2023-07-27 11:49:58.998+05:30	2023-07-27 11:49:58.999+05:30	2023-07-27 11:49:58.999+05:30
100	email	$2a$10$2glPstw1fgjNDnH9wz86CeHbutZO0R1vI7HhW3ApIlxgxzYAl.n.O	1	safa@gmail.com	t	2023-09-12 14:49:15.419+05:30	2023-09-12 14:49:15.419+05:30	2023-09-12 14:49:15.419+05:30
102	email	$2a$10$B82mNVzXfELBJSuCwcU3n.4i.KSURVcJcykEdSk2u9VYHOIkufzra	3	snehadh54@gmail.com	t	2023-09-12 14:51:29.304+05:30	2023-09-12 14:50:40.861+05:30	2023-09-12 14:51:29.304+05:30
29	phone	$2a$10$sqRGnrxlruQp/iVG38acCOZMTyf6G7IGY9BFintDfp02wECMeobKO	0	369369369	t	2023-07-27 12:24:09.05+05:30	2023-07-27 12:24:09.052+05:30	2023-07-27 12:24:09.052+05:30
30	email	$2a$10$GeFK3Kz55xcfo8E4djCuN.eJfn4LNBp3w.NIi3SQclHO9YTLb5A/O	0	snehadh01@gmail.com	t	2023-07-27 12:26:15.772+05:30	2023-07-27 12:25:59.792+05:30	2023-07-27 12:26:15.772+05:30
31	email	$2a$10$y0S8cB0zwDtzFmzASCQ31e0lEWgW4esLee.S6kqtV52lp08ddzzQG	0	bhaktXSi@gmail.com	t	2023-07-27 14:51:30.962+05:30	2023-07-27 14:51:30.962+05:30	2023-07-27 14:51:30.962+05:30
108	email	$2a$10$A5KIMertbDcrEVN84yugieY7vVzAYlDw7bWppcHnG8HqLD0MUQdP6	3	suraj@gmail.com	t	2023-09-13 11:11:30.274+05:30	2023-09-13 11:10:29.322+05:30	2023-09-13 11:11:30.275+05:30
7	forgot_password	$2a$10$qIjA2tb9eL01kmjFfvwM3u785.L3w.4D73W9tABOhWgxWtajMyM/G	0	company371@gmail.com	t	2023-07-10 17:30:03.884+05:30	2023-07-10 17:24:39.109+05:30	2023-07-10 17:30:03.885+05:30
8	forgot_password	$2a$10$h/iFLo4vNICSCVkSmpj7AeuAa9CwOHrsgTR0C2GxtSTAIGfRcO29W	0	company341@gmail.com	t	2023-07-10 17:30:50.142+05:30	2023-07-10 17:25:04.371+05:30	2023-07-10 17:30:50.142+05:30
33	email	$2a$10$RVeB0FSQs7QLl4FsSSojY.6m.WMlOkYeHwtluxZrwleDbXA.f0VHq	0	snehanarvekar0988@gmail.com	t	2023-07-27 16:56:27.622+05:30	2023-07-27 16:56:27.622+05:30	2023-07-27 16:56:27.622+05:30
26	phone	$2a$10$oS2YKNlnnboPq/RMUDQ7NubtKkZSpDeOHySInoeEDhjxVEJ1RJ.iK	3	5252525252	t	2023-09-12 14:52:05.273+05:30	2023-07-27 11:46:27.111+05:30	2023-09-12 14:52:05.273+05:30
104	email	$2a$10$VG00GUDhDlCqeQj5hrST6Om1XxIdj5NGpiIAwH4lHmLLP6BivFK/i	2	pavitra123@gmail.com	t	2023-09-13 10:26:26.602+05:30	2023-09-13 10:25:34.018+05:30	2023-09-13 10:26:26.603+05:30
3	email	$2a$10$JjTIubviDgd5CYncfY2g4u40B4atwpO4bLTsCjZCiJBm6k3gnZNVW	3	snehadhe07@gmail.com	t	2023-09-06 16:22:10.911+05:30	2023-06-23 11:10:14.944+05:30	2023-09-06 16:22:10.911+05:30
35	phone	$2a$10$hVmM.nFWUx4xIwvhJLbaf.DtC86FcXUCRSFAuIzroWO9Axp93qV/y	0	2555555656	t	2023-07-28 12:26:03.161+05:30	2023-07-28 12:25:37.251+05:30	2023-07-28 12:26:03.161+05:30
5	phone	$2a$10$wfy33sudM6HcDwFXc8iCHu5k6q0CHyH8ArsTri/xZtY9.CK3lm1JW	3	7020435403	t	2023-09-07 17:09:09.243+05:30	2023-06-26 10:47:37.723+05:30	2023-09-07 17:09:09.244+05:30
10	email	$2a$10$GzkbgyJr/aig6c02jTstne50E7uQxUpr7EMUSSX8jiW9RTCxiDZxC	1	snehanarvekar09@gmail.com	t	2023-09-06 12:41:54.978+05:30	2023-07-17 10:00:53.691+05:30	2023-09-06 12:41:54.978+05:30
6	forgot_password	$2a$10$kmQIiEm7GsE1iia1sgf8ze6MfJck/QfWkDXouX4YWDJFUjFcVWmZ6	0	desai1289@gmail.com	t	2023-07-10 17:32:18.36+05:30	2023-07-10 17:23:59.214+05:30	2023-07-10 17:32:18.361+05:30
9	forgot_password	$2a$10$UeUcCo/zdjBOIiVYxBgFJ.tVX.C8JjUZPn6yJQki.3AkXRDCJkKRK	0	company4544@gmail.com	t	2023-07-10 17:36:38.774+05:30	2023-07-10 17:36:18.038+05:30	2023-07-10 17:36:38.775+05:30
11	email	$2a$10$rXNhwuVQDV90FAvlKdxo6uZOXh93zipfV4FZfbFSCUau.in/BGpLe	0	bhakti@gmail.com	t	2023-07-27 15:18:48.908+05:30	2023-07-26 15:27:17.639+05:30	2023-07-27 15:18:48.909+05:30
36	email	$2a$10$8oQUP0UVhEki18pO5mk1l.z1pKjSXGrL4L1KaE.yHGJbmTvu5au6C	0	parabyougali25@gmail.com	t	2023-07-28 17:00:43.047+05:30	2023-07-28 17:00:27.297+05:30	2023-07-28 17:00:43.047+05:30
37	email	$2a$10$/ryhXMdaemm1aeix4mzikurFBUkaL9F8J29BCh30D3ciQu24KhTje	0	parabyougali256@gmail.com	t	2023-07-28 17:17:44.058+05:30	2023-07-28 17:17:15.305+05:30	2023-07-28 17:17:44.058+05:30
38	email	$2a$10$AivxEy10L/HUBjFE9rv3auXHSY1ZjVefi8ArKRudZCTIFzyHstn9S	0	parabyougali99@gmail.com	t	2023-07-28 17:21:08.749+05:30	2023-07-28 17:20:33.431+05:30	2023-07-28 17:21:08.749+05:30
32	phone	$2a$10$XPi59u629S4Mue0KI3lvQeXII65hxHZh/TYYQNOdURDKuY00TInZ.	1	9158661255	t	2023-09-06 15:32:08.125+05:30	2023-07-27 14:59:49.704+05:30	2023-09-06 15:32:08.125+05:30
12	email	$2a$10$bVfjfIC1jk6GRd7pUvC43OsThGyMcI960rq5Nw/0K8dDs2iF7.W8u	0	parabyougali02@gmail.com	t	2023-07-27 11:48:02.328+05:30	2023-07-26 15:43:01.482+05:30	2023-07-27 11:48:02.328+05:30
14	email	$2a$10$EGJC3qe7wAgtBg8rJkaEB.SDjQzXXsDLFBBjQbArFiLcUcb6MfCtu	0	companyedge12@gmail.com	t	2023-07-26 15:51:25.987+05:30	2023-07-26 15:51:16.937+05:30	2023-07-26 15:51:25.987+05:30
15	email	$2a$10$cPplGUyLGebG1m8g5ot9hu7epvSKa9j8mNdsJ8scI6cle5lF23/m6	0	dhevinita@gmail.com	t	2023-07-26 16:12:56.614+05:30	2023-07-26 16:12:56.615+05:30	2023-07-26 16:12:56.615+05:30
16	email	$2a$10$z/dPcRymYyK2ThLHzJkSM.UNy.GraF7mC6AdiNmuqA0ple608wIjW	0	barvesidhi2@gmail.com	t	2023-07-26 16:29:08.069+05:30	2023-07-26 16:15:07.324+05:30	2023-07-26 16:29:08.07+05:30
17	email	$2a$10$cXcfCBLrqIkIjGndh9d1qO8HBUjsFQpMjym4uFt6OlMm81KIX4qlS	0	barvesidhi49@gmail.com	t	2023-07-26 16:33:02.156+05:30	2023-07-26 16:33:02.156+05:30	2023-07-26 16:33:02.156+05:30
18	email	$2a$10$VvU8/PPz608zgx4Xq6vttumtGvL4IyZOHtxVOzlDAnoJpM05d4OIS	0	dhevinita36@gmail.com	t	2023-07-26 16:40:48.879+05:30	2023-07-26 16:40:27.931+05:30	2023-07-26 16:40:48.879+05:30
19	phone	$2a$10$3Bm4TXDEu0lwfmA0JJzla.r21V9bIhvSVoXXKjeSmwTkmzWdDggl.	0	5959585457	t	2023-07-26 16:55:01.945+05:30	2023-07-26 16:54:44.288+05:30	2023-07-26 16:55:01.945+05:30
20	email	$2a$10$4FHw2lPi2hPhdaSh65rm2eAaY.jVutUlS0fqP/mF9JOY7CtSK2pi.	0	namita@gmail.com	t	2023-07-26 17:00:48.404+05:30	2023-07-26 17:00:27.248+05:30	2023-07-26 17:00:48.405+05:30
39	email	$2a$10$dXUsLIz24g5PRdojc0TkAOjQfhKbUJqD4KhNj39U.HOTtF0A8W5Am	0	parabyougali255@gmail.com	t	2023-07-28 17:26:00.132+05:30	2023-07-28 17:25:42.899+05:30	2023-07-28 17:26:00.132+05:30
40	email	$2a$10$FjrVEIo0.7kJMiPsgMkhGO4GaqOZMV.FT1/2EHZnOdtwiylh/TuNu	0	dhevinijuyjta@gmail.com	t	2023-07-28 17:29:56.664+05:30	2023-07-28 17:29:37.74+05:30	2023-07-28 17:29:56.665+05:30
41	email	$2a$10$.3zruKPX0hNeTeEeaWYEn.jE9OhrhH6Yc4nhB2Gg5R4kOgxNGBXDS	0	bhaktsdsi@gmail.com	t	2023-07-28 17:34:40.438+05:30	2023-07-28 17:34:27.885+05:30	2023-07-28 17:34:40.438+05:30
42	email	$2a$10$c6zyDYqCcC3FMJIXR8BeaubTdFSaMiZjfkKAfJw0aASk.P/v0G8RS	0	vandananaik@gmail.com	t	2023-09-01 17:28:59.874+05:30	2023-09-01 17:28:59.874+05:30	2023-09-01 17:28:59.874+05:30
44	phone	$2a$10$sCl0UiKFhp6lPZzi1LqKxuxDMUeEEk6fL5A.MUTeaT.snSqVp/YFW	0	9421247099	t	2023-09-01 17:31:11.597+05:30	2023-09-01 17:31:11.597+05:30	2023-09-01 17:31:11.597+05:30
75	email	$2a$10$A4D8Z2RZw8lqsj7Negtcx.CCgsMc9ochNH5hcLfO/vxz7B0taCecS	3	bhakkkti@gmail.com	t	2023-09-07 17:17:35.159+05:30	2023-09-07 12:19:34.92+05:30	2023-09-07 17:17:35.159+05:30
45	email	$2a$10$7KrqgkY6z/.kdYtkJbjeROP/9RaGXWYZ3HF9l0hfgQ9RrBGao3w9i	3	snehannarvekar07@gmail.com	t	2023-09-04 17:45:13.199+05:30	2023-09-04 17:36:51.11+05:30	2023-09-04 17:45:13.199+05:30
46	email	$2a$10$WTPgo/Dii1SFfSpYnJXwyeNPzSwbDGh5HEZBFfzuGWMSHHegXvqJS	1	snehannarvekar01@gmail.com	t	2023-09-04 17:48:06.04+05:30	2023-09-04 17:48:06.041+05:30	2023-09-04 17:48:06.041+05:30
47	email	$2a$10$y/Hc3lltnuN7guRqCAzhdeCPM5R2vq8xhwWxPt22/kseTkCqlL5Ci	1	snehanarvekar01@gmail.com	t	2023-09-04 17:48:38.066+05:30	2023-09-04 17:48:38.066+05:30	2023-09-04 17:48:38.066+05:30
48	email	$2a$10$SQF6a953z9snMMTO15DOC.bYMyTMNQbWmh5.yZnUkeALO35dTYaqy	3	dheyougaliparab@gmail.com	t	2023-09-05 17:05:21.158+05:30	2023-09-05 10:22:19.363+05:30	2023-09-05 17:05:21.159+05:30
49	email	$2a$10$5nHzNu3UDrmpomn0o5iCGubLQctAImw1sCoxwXj4G9z47WGumtJhu	1	dhebakti@gmail.com	t	2023-09-06 13:02:14.519+05:30	2023-09-06 13:02:14.52+05:30	2023-09-06 13:02:14.52+05:30
50	email	$2a$10$BXLW2LeLvbj4vBKgcJPfZe02XZieeURyMSeGVEP.NpMOqAKtrr4xy	1	snehakiii@gmail.com	t	2023-09-06 15:08:32.291+05:30	2023-09-06 15:08:32.292+05:30	2023-09-06 15:08:32.292+05:30
51	email	$2a$10$KMNxh0XewSagBq94e4mKF.PCy0gg2NaUyh6.1HXHfC1ktgzrnKt66	1	sneha123@gmail.com	t	2023-09-06 15:39:07.013+05:30	2023-09-06 15:39:07.013+05:30	2023-09-06 15:39:07.013+05:30
52	email	$2a$10$MVI1.19qPhnKhWHVNqBqoeaZA5W7KgxOFqnWhU41Kg4skTEjAHvqa	1	sneha@gmail.com	t	2023-09-06 16:02:40.574+05:30	2023-09-06 16:02:40.575+05:30	2023-09-06 16:02:40.575+05:30
85	email	$2a$10$AlkPobBgAUGaGK09f2HsxuDur8B8mfM7iX2y.KEl.HvJDvPVil45W	1	parabyougali34@gmail.com	t	2023-09-08 10:49:08.765+05:30	2023-09-08 10:49:08.766+05:30	2023-09-08 10:49:08.766+05:30
87	email	$2a$10$yO/VOGJOEaaVA2XOZhaPj.UtjVKThZ3MEEMWgcCQBWe8ssBMWdJ8K	1	parabyougali98@gmail.com	t	2023-09-08 13:19:32.018+05:30	2023-09-08 13:19:32.019+05:30	2023-09-08 13:19:32.019+05:30
43	email	$2a$10$2ABJyQ4LJ0lPlnFMCwfoC.JOjLdk.g/a7itQK.kA0cTx0cxTP73Ey	2	vandnaik@gmail.com	t	2023-10-13 13:43:01.612+05:30	2023-09-01 17:28:59.988+05:30	2023-10-13 13:43:01.612+05:30
70	phone	$2a$10$CA3VyNw0c4/zzlHXmx4xeOrbsM5vmnOoKTLIzLVAB89nJeFHic9G2	3	9765849988	t	2023-09-06 17:28:55.936+05:30	2023-09-06 17:28:25.592+05:30	2023-09-06 17:28:55.936+05:30
89	email	$2a$10$SUE2LuEp6WNLY.FUe2xpNOtdnjGy3TJRH7m8Ss0m2hI4xN/mx01ki	3	parabyougali65@gmail.com	t	2023-09-08 13:31:57.442+05:30	2023-09-08 13:30:05.139+05:30	2023-09-08 13:31:57.442+05:30
91	email	$2a$10$hXcU4DZGuOwEE0dGiwbxeeb1o0uUmHsLt6iOyW1Zv0oUfCnVILnJK	2	desairhugveda21@gmail.com	t	2023-09-12 11:20:27.556+05:30	2023-09-12 11:17:13.56+05:30	2023-09-12 11:20:27.557+05:30
93	phone	$2a$10$Uhi6IwMdHXqTJi6y9xvdhe9loD9zrW6.dGCMP81EGCrwypKiBVfUW	1	9822126866	t	2023-09-12 11:28:49.901+05:30	2023-09-12 11:28:49.901+05:30	2023-09-12 11:28:49.901+05:30
95	phone	$2a$10$U0j5qXTJ/x/wrc.S/MfHqufGu39n3qdZn8hnOtkF/q5note6s.M2S	1	6585858545	t	2023-09-12 11:32:50.424+05:30	2023-09-12 11:32:50.424+05:30	2023-09-12 11:32:50.424+05:30
97	phone	$2a$10$p9j6AC2Jeib8iogA7DCfA.djwWU49Tr4WGnbPSUS7MPjfwhnj07KS	1	9869694758	t	2023-09-12 11:39:30.534+05:30	2023-09-12 11:39:30.534+05:30	2023-09-12 11:39:30.534+05:30
99	phone	$2a$10$ZCG3svaG07BAxkMrc94SF.3szMTX1PrLx2JSqoMliR4WBO75kWWKm	1	9696545454	t	2023-09-12 14:39:09.422+05:30	2023-09-12 14:39:09.422+05:30	2023-09-12 14:39:09.422+05:30
101	phone	$2a$10$J1Ai/Hh6HuRSS695PqbaZuGd7OrCLKOms11vw/PFDOiSrZcfmPMLa	1	4575757548	t	2023-09-12 14:49:52.874+05:30	2023-09-12 14:49:52.875+05:30	2023-09-12 14:49:52.875+05:30
57	email	$2a$10$C8YwdZ3c2egRK6QNIfM79uyzL.FRRVAJcCCQVDUD3IJ7YJC0.ENLi	1	snehaaaa@gmail.com	t	2023-09-06 17:07:49.567+05:30	2023-09-06 17:07:49.568+05:30	2023-09-06 17:07:49.568+05:30
103	email	$2a$10$KqnocPxN63GiDGGkFxaH6eE2RB9LnA7wvn3P2xNdh/AMGX8159bpu	1	dgsdf	t	2023-09-12 15:22:40.933+05:30	2023-09-12 15:22:40.934+05:30	2023-09-12 15:22:40.934+05:30
105	phone	$2a$10$YRoy.N5j8Lw16v634.lufO3l//qqfBRPiUpx9Wukg.TgVDp1aR3p6	1	9812636363	t	2023-09-13 10:26:54.343+05:30	2023-09-13 10:26:54.343+05:30	2023-09-13 10:26:54.343+05:30
107	phone	$2a$10$a3zv4.pK.NMkTLlgPc1gkOfyBDfG33dq6W4kBwNSZak4ZnscKXvG2	1	8545665855	t	2023-09-13 11:07:30.639+05:30	2023-09-13 11:07:30.639+05:30	2023-09-13 11:07:30.639+05:30
59	email	$2a$10$GeVz7ajRvzPO5NE5gZlpaup3VFoWUcbRRHrxjR.DXKbaDFCEL7Hq6	1	snehaaafa@gmail.com	t	2023-09-06 17:10:37.411+05:30	2023-09-06 17:10:37.412+05:30	2023-09-06 17:10:37.412+05:30
109	phone	$2a$10$OSmwu8of5BEHNySMLzhEMOcnApCdS/adDGi5QpJ/EU2kfWYcNNBq2	1	8545558588	t	2023-09-13 11:12:14.48+05:30	2023-09-13 11:12:14.48+05:30	2023-09-13 11:12:14.48+05:30
66	email	$2a$10$N7fyvPyZdiXCl9TrpsMWaOjMuDKgWADmU7icawbc10p6WZhZkzr7i	3	shambhavi.dhe@gmail.com	t	2023-09-06 17:22:17.759+05:30	2023-09-06 17:21:38.429+05:30	2023-09-06 17:22:17.759+05:30
81	email	$2a$10$V2HPucwoX3ElohHxx9OqFOS6L4dcRi0n5omuHuMa.pjDnZkr9dLKW	3	rhuvedaDessai963@gmail.com	t	2023-09-07 13:02:36.208+05:30	2023-09-07 13:01:56.746+05:30	2023-09-07 13:02:36.208+05:30
13	email	$2a$10$FzxvbeCYtMPfZP7Wfcdkf.fTrnLrZi0aSiZlFzJmszkI5embwh98C	1	snehadh@gmail.com	t	2023-09-07 11:23:23.404+05:30	2023-07-26 15:49:02.448+05:30	2023-09-07 11:23:23.404+05:30
82	phone	$2a$10$bBxKGORTdiD5LxdoSUJc7.NyKVcGHibbIVWpzepz9kHArxIFYbVwK	3	9845858585	t	2023-09-07 13:04:52.405+05:30	2023-09-07 13:04:12.214+05:30	2023-09-07 13:04:52.406+05:30
83	forgot_password	$2a$10$8wRC04GC2I7XzPASdJgLT.drOJDY8pCeaL.wFcimgYwwpyoFAx1rC	3	desairhugveda21@gmail.com	t	2023-09-07 13:06:21.992+05:30	2023-09-07 13:05:51.611+05:30	2023-09-07 13:06:21.992+05:30
2	phone	$2a$10$5SfIeR1E/TfksfrYcVuKmOnHLThH7XvU.EWIB4WM/cQMEDUtK0H36	3	7507310941	t	2024-08-22 11:55:04.924+05:30	2023-04-17 13:15:04.798+05:30	2024-08-22 11:55:04.925+05:30
110	email	$2a$10$dXbyNHTyOhLJE6wejCrEjOsdJ2OEz9hteCHm5jtQCcLeRzWpWtYfe	1	dylanvaz2283@gmail.com	t	2024-08-27 12:55:09.768+05:30	2024-08-27 12:55:09.768+05:30	2024-08-27 12:55:09.768+05:30
111	email	$2a$10$QJxeAkyW6HCVN3gKBOgy6.VXrFeOUwiFFar2rfRvaF.HAEM1wReUy	3	chatimhemant.dhe.goa@gmail.com	t	2024-09-13 12:47:59.794+05:30	2024-09-13 12:47:49.59+05:30	2024-09-13 12:47:59.794+05:30
112	email	$2a$10$EqDyM0X1MHtXiamWh8ayVuxz/4WWPm33VZpDCpp4io5SBTuR8KN4S	1	chataimhemant@gmail.com	t	2024-09-13 13:55:49.86+05:30	2024-09-13 13:55:49.86+05:30	2024-09-13 13:55:49.86+05:30
113	phone	$2a$10$oIMra7.StWJKjqepinVaMOSC7OJAJvkWwWvoRaAAbuQegwT1ktVI2	2	9011780403	t	2024-09-13 14:10:58.027+05:30	2024-09-13 13:56:12.888+05:30	2024-09-13 14:10:58.027+05:30
114	phone	$2a$10$ac6a4E.LJ9rwNWtvs10tvuAIMhZGCbAQlblyF5Rl/C.EjkVW1.Ce.	1	7038554864	t	2024-09-17 15:40:12.789+05:30	2024-09-17 15:40:12.79+05:30	2024-09-17 15:40:12.79+05:30
115	forgot_password	$2a$10$r6YBA4DCupWZs8m/SdnYFuh5WT4LbE.WtLaLibvXLMI0s5SBwzzTu	1	messi@gmail.com	t	2024-09-17 15:52:18.689+05:30	2024-09-17 15:52:18.689+05:30	2024-09-17 15:52:18.689+05:30
\.


--
-- Data for Name: OrganisationTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Private	t	2023-04-03 14:20:21.813+05:30	2023-04-03 14:20:21.813+05:30
2	Government	t	2023-04-03 14:20:33.215+05:30	2023-04-03 14:20:33.215+05:30
3	Individual	t	2023-04-03 14:20:49.572+05:30	2023-04-03 14:20:49.572+05:30
\.


--
-- Data for Name: OwnerTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Percentages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Get Permission	t	2023-07-25 17:18:32.158+05:30	2023-07-25 17:18:32.158+05:30
2	View Student	t	2023-07-25 17:18:44.122+05:30	2023-07-25 17:18:44.122+05:30
3	Verify Student	t	2023-07-25 17:18:56.598+05:30	2023-07-25 17:18:56.598+05:30
\.


--
-- Data for Name: ProgrammeSemesters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: ProgrammeSubjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ProgrammeSubjects_delete; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	1	3	t	2023-04-03 15:21:05.333+05:30	2023-04-03 15:21:05.333+05:30
2	2	1	t	2023-04-03 15:27:31.777+05:30	2023-04-03 15:27:31.777+05:30
3	2	2	t	2023-04-03 15:27:35.697+05:30	2023-04-03 15:27:35.697+05:30
4	3	4	t	2023-04-03 15:27:43.866+05:30	2023-04-03 15:27:43.866+05:30
\.


--
-- Data for Name: Programmes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
6	SSC	t	2023-05-22 10:57:42.39+05:30	2023-05-22 10:57:42.39+05:30	0	\N	SSC	5	1	2
4	MCOM	t	2023-04-04 17:09:29.31+05:30	2023-04-04 17:09:29.31+05:30	4	\N	PG	2	8	9
1	BA	t	2023-03-23 10:10:36.668+05:30	2023-03-23 10:10:36.668+05:30	6	\N	UG	3	3	10
2	BSC	t	2023-03-23 10:11:08.513+05:30	2023-03-23 10:11:08.513+05:30	6	\N	UG	1	4	11
3	MSC	t	2023-03-23 10:11:13.557+05:30	2023-03-23 10:11:13.557+05:30	4	\N	PG	1	9	12
5	HSSC	t	2023-05-22 10:57:36.552+05:30	2023-05-22 10:57:36.552+05:30	0	\N	HSSC	1	2	13
7	Diploma	t	2023-05-22 12:13:50.524+05:30	2023-05-22 12:13:50.524+05:30	8	\N	PD	3	7	14
8	FC	t	2023-05-22 12:15:16.274+05:30	2023-05-22 12:15:16.274+05:30	4	\N	FC	3	6	15
9	BVoc	t	2023-05-22 12:24:30.282+05:30	2023-05-22 12:24:30.282+05:30	6	\N	UG	4	5	16
\.


--
-- Data for Name: QualificationTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
2	Primary	\N	2024-08-02 10:21:50.923+05:30	2024-08-02 10:21:50.923+05:30
3	High School	\N	2024-08-02 10:21:57.781+05:30	2024-08-02 10:21:57.781+05:30
1	Pre Primary	\N	2024-08-02 10:21:44.135+05:30	2024-08-02 10:24:03.852+05:30
4	SSC	\N	2024-08-02 10:24:23.51+05:30	2024-08-02 10:24:23.51+05:30
5	HSSC	\N	2024-08-02 10:24:27.697+05:30	2024-08-02 10:24:27.697+05:30
6	Bachelors	\N	2024-08-02 10:24:39.489+05:30	2024-08-02 10:24:39.489+05:30
7	Masters	\N	2024-08-02 10:24:44.947+05:30	2024-08-02 10:24:44.947+05:30
\.


--
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
11	Company-guide	t	2023-04-04 10:48:42.454+05:30	2023-04-04 10:48:42.454+05:30	f	company	f
1	Superadmin	t	2023-03-21 15:22:48.464+05:30	2023-03-21 15:22:48.464+05:30	t	superadmin	f
3	Institute-admin	t	2023-03-21 15:23:19.175+05:30	2023-03-21 15:23:19.175+05:30	t	institute	f
4	Department-admin	t	2023-03-21 15:23:49.938+05:30	2023-03-21 15:23:49.938+05:30	f	dept	f
5	Service-specific-admin	t	2023-03-23 11:16:49.686+05:30	2023-03-23 11:16:49.686+05:30	t	service	f
8	University-admin	t	2023-04-04 10:47:52.208+05:30	2023-04-04 10:47:52.208+05:30	t	institute	f
9	Department-user	t	2023-04-04 10:48:14.277+05:30	2023-04-04 10:48:14.277+05:30	f	dept	f
2	Non-Teaching	t	2023-03-21 15:22:59.662+05:30	2023-03-21 15:22:59.662+05:30	f	institute	t
6	Faculty	t	2023-03-23 11:59:07.32+05:30	2023-03-23 11:59:07.32+05:30	f	institute	t
7	Student	t	2023-04-04 10:46:47.236+05:30	2023-04-04 10:46:47.236+05:30	f	institute	t
14	DHE admin	t	2023-07-17 11:19:34.524+05:30	2023-07-17 11:19:34.524+05:30	t	dept	f
15	Faculty-verify	t	2023-07-25 10:53:26.613+05:30	2023-07-25 10:53:26.613+05:30	f	institute	f
10	Company-hr	t	2023-04-04 10:48:35.645+05:30	2023-04-04 10:48:35.645+05:30	f	company	f
12	Company-admin	t	2023-04-04 10:48:50.139+05:30	2023-04-04 10:48:50.139+05:30	t	company	t
17	GEDC user	t	2024-08-14 15:42:47.319+05:30	2024-08-14 15:42:47.319+05:30	f	dept	t
18	HOI	t	2024-08-14 15:42:57.824+05:30	2024-08-14 15:42:57.824+05:30	f	dept	t
16	GEDC admin	t	2024-08-14 15:42:38.184+05:30	2024-08-14 15:42:38.184+05:30	t	dept	t
\.


--
-- Data for Name: Semesters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
2	Second	t	2023-04-03 14:55:52.591+05:30	2023-04-03 14:55:52.591+05:30
3	Third	t	2023-04-03 14:55:58.869+05:30	2023-04-03 14:55:58.869+05:30
4	Forth	t	2023-04-03 14:56:03.165+05:30	2023-04-03 14:56:03.165+05:30
5	Fifth	t	2023-04-03 14:56:09.178+05:30	2023-04-03 14:56:09.178+05:30
6	Sixth	t	2023-04-03 14:56:14.724+05:30	2023-04-03 14:56:14.724+05:30
1	First	t	2023-04-03 14:55:47.743+05:30	2023-04-03 14:55:47.743+05:30
7	Seventh	t	2024-07-15 15:17:25.079+05:30	2024-07-15 15:17:25.079+05:30
8	Eighth	t	2024-07-15 15:17:35.142+05:30	2024-07-15 15:17:35.142+05:30
9	Ninth	t	2024-07-15 15:17:43.758+05:30	2024-07-15 15:17:43.758+05:30
10	Tenth	t	2024-07-15 15:17:48.814+05:30	2024-07-15 15:17:48.814+05:30
11	Eleventh	t	2024-07-15 15:17:56.725+05:30	2024-07-15 15:17:56.725+05:30
\.


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20230315110556-create-country.js
20230315110811-create-state.js
20230320061655-create-district.js
20230320063450-create-city.js
20230320064954-create-institute-type.js
20230320065934-create-employment-type.js
20230320071341-create-programme.js
20230320071733-create-class.js
20230320072335-create-institute.js
20230320085812-create-user.js
20230320121239-create-user-personal-details.js
20230320070206-create-role.js
20230320070357-create-service.js
20230320070736-create-service-role.js
20230320104109-create-user-role.js
20230320120702-create-institute-programme.js
20230321050139-create-student-enrollment.js
20230331095600-create-entity-type.js
20230331105805-create-subject.js
20230403072143-create-course.js
20230403073200-create-department.js
20230403074056-create-organisation-type.js
20230403085717-create-semester.js
20230403094002-create-programme-subject.js
20230406113313-create-designation.js
20230406113439-create-user-designation.js
20230406113546-create-entity-user.js
20230403102346-create-otp.js
20230320110226-create-staff.js
20230321052209-create-institute-staff.js
20230419093638-create-user-contact.js
20230419114404-create-dummy.js
20230516060145-create-religion.js
20230522060903-create-qualification-types.js
20230331101130-update_programme_add_duration_column.js
20230525113342-create-document-type.js
20230530111617-create-student-guardian.js
20230518094144-create-student-skills.js
20230621062541-create-config.js
20230711104226-create-other-skill.js
20230712093326-create-student-additional-skill.js
20230712093613-create-duration.js
20230724105800-create-permission.js
20230725102556-create-user-permission.js
20230727063910-create-user-menu-item.js
20230727061309-create-menu-item.js
20230712052851-create-additional-skill.js
20230822105851-create-owner-type.js
20230904055545-create-notification.js
20230911085724-create-staff-remarks.js
\.


--
-- Data for Name: ServiceRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
2	1	1	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
3	1	2	t	2023-03-21 15:27:41.943+05:30	2023-03-21 15:27:41.943+05:30
4	2	2	t	2023-03-21 15:27:52.529+05:30	2023-03-21 15:27:52.529+05:30
5	2	1	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
6	2	3	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
7	6	1	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
8	6	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
9	7	1	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
10	7	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
11	7	3	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
13	12	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
14	11	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
15	10	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
16	10	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
17	11	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
18	14	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
19	5	2	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
20	12	1	t	2023-03-21 15:25:46.752+05:30	2023-03-21 15:25:46.752+05:30
21	16	1	t	2024-08-21 11:36:28.257+05:30	2024-08-21 11:36:28.257+05:30
22	17	1	t	2024-08-21 11:36:32.736+05:30	2024-08-21 11:36:32.736+05:30
23	18	1	t	2024-08-21 11:36:42.914+05:30	2024-08-21 11:36:42.914+05:30
\.


--
-- Data for Name: Services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
3	SSP	https://scholarships.gov.in/	t	2023-03-21 15:24:45.942+05:30	2023-03-21 15:24:45.942+05:30	SSP.jpg
2	TIP	https://tip.gshec.edu.in/	t	2023-03-21 15:24:21.065+05:30	2023-03-21 15:24:21.065+05:30	TIPLogo.png
1	Bursary	https://bursary.dhe.goa.gov.in/	t	2023-03-21 15:24:05.111+05:30	2023-03-21 15:24:05.111+05:30	\N
\.


--
-- Data for Name: Skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
1	PHP	t	2023-05-18 14:21:33.989+05:30	2023-05-18 14:21:33.989+05:30	Technical
2	Python	t	2023-05-18 14:21:43.721+05:30	2023-05-18 14:21:43.721+05:30	Technical
3	Communication skills	t	2023-05-18 14:21:53.095+05:30	2023-05-18 14:21:53.095+05:30	General
4	Java	t	2023-05-18 15:23:05.48+05:30	2023-05-18 15:23:05.48+05:30	Technical
5	English	t	2023-05-18 16:38:05.183+05:30	2023-05-18 16:38:05.183+05:30	Language
6	MS-Excel	t	2023-05-18 16:38:05.184+05:30	2023-05-18 16:38:05.184+05:30	Computer
7	Tally 	t	2023-05-18 16:38:05.184+05:30	2023-05-18 16:38:05.184+05:30	Accounting
8	Autocad	t	2023-05-18 17:10:44.445+05:30	2023-05-18 17:10:44.445+05:30	Civil
9	HTML	t	2023-05-18 17:10:44.509+05:30	2023-05-18 17:10:44.509+05:30	Technical
10	CSS	t	2023-05-18 17:10:44.513+05:30	2023-05-18 17:10:44.513+05:30	Technical
11	React	t	2023-05-18 17:11:29.374+05:30	2023-05-18 17:11:29.374+05:30	Technical
12	NodeJs	t	2023-05-18 17:11:29.375+05:30	2023-05-18 17:11:29.375+05:30	Technical
13	Content writing	t	2023-05-18 17:11:29.375+05:30	2023-05-18 17:11:29.375+05:30	General
14	Speaker	t	2023-05-18 17:12:34.335+05:30	2023-05-18 17:12:34.335+05:30	General
15	Typing	t	2023-05-18 17:12:34.351+05:30	2023-05-18 17:12:34.351+05:30	Computer
16	Cooking	t	2023-05-18 17:12:34.353+05:30	2023-05-18 17:12:34.353+05:30	General
17	Management	t	2023-05-18 17:13:21.489+05:30	2023-05-18 17:13:21.489+05:30	General
18	HR	t	2023-05-18 17:13:21.507+05:30	2023-05-18 17:13:21.507+05:30	General
19	Photoshop	t	2023-05-18 17:13:21.511+05:30	2023-05-18 17:13:21.511+05:30	Editing
\.


--
-- Data for Name: StaffRemarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
6	5	1	First name is wrong	51	t	2023-09-12 16:32:09.862+05:30	2023-09-12 16:32:09.862+05:30
7	5	2	Second remark is wrong	51	t	2023-09-12 17:58:59.825+05:30	2023-09-12 17:58:59.825+05:30
\.


--
-- Data for Name: Staffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
2	43	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 10:47:20.606+05:30	2023-04-12 10:47:20.606+05:30
3	44	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 10:59:18.477+05:30	2023-04-12 10:59:18.477+05:30
4	45	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 11:00:20.582+05:30	2023-04-12 11:00:20.582+05:30
5	46	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 11:02:45.787+05:30	2023-04-12 11:02:45.787+05:30
6	47	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 11:05:23.659+05:30	2023-04-12 11:05:23.659+05:30
7	48	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 11:06:43.889+05:30	2023-04-12 11:06:43.889+05:30
8	72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-06-20 16:16:23.659+05:30	2023-06-20 16:16:23.659+05:30
9	74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-06-23 15:26:00.917+05:30	2023-06-23 15:26:00.917+05:30
10	75	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-06-23 15:53:10.262+05:30	2023-06-23 15:53:10.262+05:30
11	76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-06-23 16:03:38.649+05:30	2023-06-23 16:03:38.649+05:30
12	82	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-06-26 10:52:00.929+05:30	2023-06-26 10:52:00.929+05:30
13	83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-06-26 10:53:18.696+05:30	2023-06-26 10:53:18.696+05:30
1	69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-04-12 10:45:40.568+05:30	2023-04-12 10:45:40.568+05:30
14	96	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-07-03 10:18:48.61+05:30	2023-07-03 10:18:48.61+05:30
15	97	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-07-05 10:38:22.712+05:30	2023-07-05 10:38:22.712+05:30
16	101	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-07-07 10:27:58.518+05:30	2023-07-07 10:27:58.518+05:30
17	102	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-07-07 13:04:14.377+05:30	2023-07-07 13:04:14.377+05:30
18	109	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-07-13 16:56:13.022+05:30	2023-07-13 16:56:13.022+05:30
19	167	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-09-12 11:29:23.056+05:30	2023-09-12 11:29:23.056+05:30
20	170	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-09-13 10:21:30.499+05:30	2023-09-13 10:21:30.499+05:30
21	172	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-09-13 10:27:22.953+05:30	2023-09-13 10:27:22.953+05:30
22	174	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-09-13 11:03:14.61+05:30	2023-09-13 11:03:14.61+05:30
23	177	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-09-13 11:10:01.42+05:30	2023-09-13 11:10:01.42+05:30
24	179	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-09-13 11:13:11.145+05:30	2023-09-13 11:13:11.145+05:30
25	187	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-10-12 14:10:21.471+05:30	2023-10-12 14:10:21.471+05:30
26	188	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-10-12 14:14:33.008+05:30	2023-10-12 14:14:33.008+05:30
27	193	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2023-10-13 13:25:43.276+05:30	2023-10-13 13:25:43.276+05:30
28	240	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2024-08-16 12:25:00.902+05:30	2024-08-16 12:25:00.902+05:30
29	241	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2024-08-16 17:12:25.955+05:30	2024-08-16 17:12:25.955+05:30
30	295	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2024-08-27 14:31:26.017+05:30	2024-08-27 14:31:26.017+05:30
31	302	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2024-08-27 16:28:39.031+05:30	2024-08-27 16:28:39.031+05:30
32	303	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	2024-08-27 16:31:28.535+05:30	2024-08-27 16:31:28.535+05:30
\.


--
-- Data for Name: States; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	Maharashtra	1	t	2023-03-21 12:18:43.231+05:30	2023-03-21 12:18:43.231+05:30
3	Goa	1	t	2023-03-21 12:19:52.153+05:30	2023-03-21 12:19:52.153+05:30
4	Western Australia	3	t	2023-03-21 12:18:43.231+05:30	2023-03-21 12:18:43.231+05:30
5	 South Australia	3	t	2023-03-21 12:18:43.231+05:30	2023-03-21 12:18:43.231+05:30
\.


--
-- Data for Name: Streams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Science	t	2023-05-15 14:55:41.6+05:30	2023-05-15 14:55:41.6+05:30
2	Commerce	t	2023-05-15 14:55:41.6+05:30	2023-05-15 14:55:41.6+05:30
3	Arts	t	2023-05-15 14:55:41.6+05:30	2023-05-15 14:55:41.6+05:30
4	Vocational	t	2023-05-15 14:55:41.6+05:30	2023-05-15 14:55:41.6+05:30
5	SSC	t	2023-05-15 14:55:41.6+05:30	2023-05-15 14:55:41.6+05:30
\.


--
-- Data for Name: StudentAdditionalSkills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
17	1	110	Facebook Timer	1	Panjim	1	t	2023-07-14 10:45:23.436+05:30	2023-07-14 10:45:23.436+05:30	174
18	1	115	qwerty	1	Panjim	1	t	2023-07-17 14:45:58.568+05:30	2023-07-17 14:45:58.568+05:30	181
23	2	67	Data Science	3	Panjim	2	t	2023-08-11 15:33:14.253+05:30	2023-08-11 15:33:14.253+05:30	231
24	3	67	Data Structures	3	Ponda	2	t	2023-08-11 15:34:10.344+05:30	2023-08-11 15:34:10.344+05:30	232
25	2	67	Fire	2	Panjim	2	t	2023-08-11 15:36:45.637+05:30	2023-08-11 15:36:45.637+05:30	233
26	1	116	Facebook WatchDog	2	Panjim	1	t	2023-08-11 16:18:31.829+05:30	2023-08-11 16:18:31.829+05:30	240
29	3	116	Android	2	Panjim	2	t	2023-08-16 16:06:01.045+05:30	2023-08-16 16:06:01.045+05:30	250
34	1	120	Facebook WatchDog	6	Ponda	2	t	2023-08-22 11:35:39.705+05:30	2023-08-22 11:35:39.705+05:30	368
35	1	119	Android Project	2	Panjim	1	t	2023-08-30 12:03:49.156+05:30	2023-08-30 12:03:49.156+05:30	381
36	1	158	Facebook WatchDog	6	Panjim	2	t	2023-09-01 15:24:08.388+05:30	2023-09-01 15:24:08.388+05:30	389
37	2	158	Gram Seva	3	Ponda	2	t	2023-09-01 15:24:40.572+05:30	2023-09-01 15:24:40.572+05:30	390
38	3	158	Android Certification	6	Margao	2	t	2023-09-01 15:25:18.156+05:30	2023-09-01 15:25:18.156+05:30	391
39	4	158	Data Analysis	6	Ponda	2	t	2023-09-01 15:30:59.72+05:30	2023-09-01 15:30:59.72+05:30	392
40	1	165	Facebook Watchdog	6	Ponda	2	t	2023-09-07 14:28:48.158+05:30	2023-09-07 14:28:48.158+05:30	443
41	1	78	Facebook watchtimer	1	Panjim	1	t	2023-09-08 16:54:02.985+05:30	2023-09-08 16:54:02.985+05:30	476
42	1	166	Android Development	6	Panjim	2	t	2023-09-11 12:35:30.114+05:30	2023-09-11 12:35:30.114+05:30	479
43	1	178	Facebook WatchDog	6	Panjim	2	t	2023-09-13 11:27:02.48+05:30	2023-09-13 11:27:02.48+05:30	502
\.


--
-- Data for Name: StudentEnrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, board_university, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id) FROM stdin;
8	80	\N	2023-06-26 10:09:22.89+05:30	2023-06-26 10:09:22.89+05:30	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
9	81	\N	2023-06-26 10:49:53.618+05:30	2023-06-26 10:49:53.618+05:30	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
10	92	\N	2023-06-26 11:54:44.739+05:30	2023-06-26 11:54:44.739+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
11	93	\N	2023-06-30 13:07:57.351+05:30	2023-06-30 13:07:57.351+05:30	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
12	95	\N	2023-06-30 13:10:45.774+05:30	2023-06-30 13:10:45.774+05:30	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
13	107	\N	2023-07-13 16:52:21.865+05:30	2023-07-13 16:52:21.865+05:30	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
14	110	\N	2023-07-14 09:43:57.328+05:30	2023-07-14 09:43:57.328+05:30	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
15	112	\N	2023-07-14 15:04:23.367+05:30	2023-07-14 15:04:23.367+05:30	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
16	113	\N	2023-07-14 15:06:42.625+05:30	2023-07-14 15:06:42.625+05:30	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
17	115	\N	2023-07-17 13:03:07.849+05:30	2023-07-17 13:03:07.849+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
19	119	\N	2023-08-17 14:39:58.726+05:30	2023-08-17 14:39:58.726+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
20	120	\N	2023-08-18 09:50:26.604+05:30	2023-08-18 09:50:26.604+05:30	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
21	121	\N	2023-08-22 11:11:26.198+05:30	2023-08-22 11:11:26.198+05:30	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
22	158	\N	2023-09-01 15:16:21.127+05:30	2023-09-01 15:16:21.127+05:30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
6	69	\N	2023-06-15 11:39:49.921+05:30	2023-06-15 11:39:49.921+05:30	1	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
23	159	\N	2023-09-04 13:10:56.2+05:30	2023-09-04 13:10:56.2+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
24	160	\N	2023-09-04 13:24:10.816+05:30	2023-09-04 13:24:10.816+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
25	161	\N	2023-09-04 13:25:01.155+05:30	2023-09-04 13:25:01.155+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
26	164	\N	2023-09-04 15:58:09.05+05:30	2023-09-04 15:58:09.05+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
27	165	\N	2023-09-07 13:09:44.109+05:30	2023-09-07 13:09:44.109+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
28	166	\N	2023-09-11 10:12:34.981+05:30	2023-09-11 10:12:34.981+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
29	168	\N	2023-09-12 11:34:48.88+05:30	2023-09-12 11:34:48.88+05:30	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
30	171	\N	2023-09-13 10:25:24.778+05:30	2023-09-13 10:25:24.778+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
31	178	\N	2023-09-13 11:13:10.925+05:30	2023-09-13 11:13:10.925+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
32	181	\N	2023-09-14 15:21:26.102+05:30	2023-09-14 15:21:26.102+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
33	182	\N	2023-09-26 11:22:44.65+05:30	2023-09-26 11:22:44.65+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
34	183	\N	2023-09-28 12:20:15.758+05:30	2023-09-28 12:20:15.758+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
35	184	\N	2023-09-28 12:27:23.292+05:30	2023-09-28 12:27:23.292+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
36	185	\N	2023-09-29 12:40:45.508+05:30	2023-09-29 12:40:45.508+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
37	186	\N	2023-10-06 10:39:12.639+05:30	2023-10-06 10:39:12.639+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
38	194	\N	2023-10-13 13:31:13.045+05:30	2023-10-13 13:31:13.045+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
39	195	\N	2023-10-18 11:10:27.743+05:30	2023-10-18 11:10:27.743+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
40	200	\N	2023-10-20 10:54:57.008+05:30	2023-10-20 10:54:57.008+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
41	203	\N	2023-10-26 11:26:47.736+05:30	2023-10-26 11:26:47.736+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
42	208	\N	2023-11-07 12:54:15.48+05:30	2023-11-07 12:54:15.48+05:30	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
18	116	\N	2023-07-18 12:18:24.925+05:30	2023-07-18 12:18:24.925+05:30	1	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
43	210	\N	2024-07-02 14:42:28.948+05:30	2024-07-02 14:42:28.948+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
44	212	\N	2024-07-03 10:30:06.979+05:30	2024-07-03 10:30:06.979+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
45	214	\N	2024-07-03 15:18:50.145+05:30	2024-07-03 15:18:50.145+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
47	217	\N	2024-07-04 11:13:25.766+05:30	2024-07-04 11:13:25.766+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
46	215	2	2024-07-04 10:50:24.162+05:30	2024-07-08 11:34:32.49+05:30	1	15	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
48	218	\N	2024-07-08 12:37:43.469+05:30	2024-07-08 12:37:43.469+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
50	219	\N	2024-07-11 15:29:17.55+05:30	2024-07-11 15:29:17.55+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
51	220	\N	2024-07-11 15:30:12.226+05:30	2024-07-11 15:30:12.226+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
175	239	\N	2024-08-16 11:01:20.502+05:30	2024-08-16 11:01:20.502+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	7	\N	\N
97	78	1	2024-07-31 15:07:19.121+05:30	2024-08-02 11:27:54.745+05:30	1	1	\N	\N	5353	535	\N	\N	\N		1	54	\N	\N	4	5	0	0
196	285	0	2024-08-27 16:06:59.129+05:30	2024-08-27 16:06:59.129+05:30	0	0			\N	\N	884		Goa Board	2024	0	\N	6	\N	17	6	1	\N
118	78	1	2024-08-02 11:31:01.027+05:30	2024-08-02 11:31:01.027+05:30	1	1	\N	\N	5353	535	\N	\N	\N		1	54	\N	\N	4	5	0	0
158	229	5	2024-08-09 17:52:13.749+05:30	2024-08-23 16:35:17.156+05:30	2	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	4	1	8	\N	\N
120	78	1	2024-08-02 11:36:55.038+05:30	2024-08-02 11:36:55.038+05:30	4	9	\N	\N	700	600	\N	\N	\N	2025	0	\N	\N	\N	\N	2	1	0
123	78	1	2024-08-02 11:38:55.566+05:30	2024-08-02 11:38:55.566+05:30	1	1	\N	\N	5353	535	\N	\N	\N		1	54	\N	\N	4	5	0	0
124	78	1	2024-08-02 11:40:00.124+05:30	2024-08-02 11:40:00.124+05:30	1	1	\N	\N	5353	535	\N	\N	\N		1	54	\N	\N	4	5	0	0
180	257	\N	2024-08-21 15:58:02.955+05:30	2024-08-21 15:58:02.955+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
190	285	\N	2024-08-27 15:19:51.081+05:30	2024-08-27 15:19:51.081+05:30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
132	78	2	2024-08-02 12:00:10.799+05:30	2024-08-02 12:00:10.799+05:30	1	10	\N	\N	10	1	\N	\N	\N	2003	0	\N	7	\N	\N	2	1	0
243	67	0	2024-09-03 16:58:24.528+05:30	2024-09-18 17:06:47.068+05:30	0	0			500	500	129		Goa Board	2024	0	104.17	4	\N	1	4	2	\N
210	304	\N	2024-08-29 12:52:51.848+05:30	2024-08-29 12:52:51.848+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	2	\N	\N
192	285	\N	2024-08-27 15:49:09.679+05:30	2024-08-27 15:49:09.679+05:30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
198	285	0	2024-08-27 16:15:46.88+05:30	2024-08-27 16:15:46.88+05:30	0	0			\N	\N	888		Goa Board	2024	0	\N	5	\N	1	5	1	\N
188	285	5	2024-08-27 12:56:17.155+05:30	2024-08-27 16:21:36.834+05:30	2	16	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	4	3	5	\N	\N
214	229	0	2024-08-29 15:19:39.532+05:30	2024-08-29 15:19:39.532+05:30	0	0			600	478	947		Goa University	May 2008	0	\N	2	\N	1	2	2	\N
142	78	0	2024-08-02 17:42:12.992+05:30	2024-08-02 17:42:12.992+05:30	0	0	\N	\N	100	5	\N	\N	\N	march 2012	0	\N	4	\N	\N	0	1	0
216	229	0	2024-08-29 16:02:08.758+05:30	2024-08-29 16:02:08.758+05:30	0	0			600	478	949		Goa University	May 2008	0	\N	2	\N	1	2	2	\N
227	229	8	2024-08-29 17:13:02.735+05:30	2024-08-29 17:13:02.735+05:30	2	7			\N	\N	962		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
228	229	8	2024-08-29 17:13:03.163+05:30	2024-08-29 17:13:03.163+05:30	2	7			\N	\N	963		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
229	229	8	2024-08-29 17:13:03.565+05:30	2024-08-29 17:13:03.565+05:30	2	7			\N	\N	964		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
230	229	8	2024-08-29 17:13:04.298+05:30	2024-08-29 17:13:04.298+05:30	2	7			\N	\N	965		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
152	166	2	2024-08-05 15:22:30.733+05:30	2024-08-05 15:22:30.733+05:30	3	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
153	166	2	2024-08-05 15:34:13.631+05:30	2024-08-05 15:34:13.631+05:30	3	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
154	166	2	2024-08-05 15:34:17.038+05:30	2024-08-05 15:34:17.038+05:30	3	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
155	166	2	2024-08-05 15:43:41.497+05:30	2024-08-05 15:43:41.497+05:30	3	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
156	225	2	2024-08-07 13:00:45.612+05:30	2024-08-07 13:00:45.612+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
234	229	0	2024-08-30 11:08:56.891+05:30	2024-08-30 11:08:56.891+05:30	5	0			\N	\N	970		Goa Board	may 2024	0	\N	5	\N	18	5	1	\N
218	229	1	2024-08-29 16:18:52.133+05:30	2024-08-30 16:00:53.657+05:30	0	23			800	700	973		Goa Board	May 2008	1	\N	9	4	17	9	2	\N
239	316	2	2024-09-03 15:57:48.392+05:30	2024-09-03 15:57:48.392+05:30	0	6			\N	\N	1019		Goa Board	\N	1	\N	7	\N	\N	7	1	\N
241	316	2	2024-09-03 15:58:28.007+05:30	2024-09-03 15:58:28.007+05:30	0	6			700	500	1021		Goa Board	\N	1	\N	7	\N	\N	7	2	\N
237	316	4	2024-09-03 14:43:12.928+05:30	2024-09-03 15:59:46.853+05:30	2	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	4	3	7	\N	\N
208	67	5	2024-08-28 17:06:53.003+05:30	2024-09-03 16:50:57.36+05:30	0	6			\N	\N	1034		Goa Board	2024	1	\N	1	4	1	1	1	\N
100	78	0	2024-08-01 16:24:50.783+05:30	2024-08-01 16:24:50.783+05:30	0	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	1	\N	\N	\N	\N	\N
206	67	5	2024-08-28 16:41:42.127+05:30	2024-09-04 12:12:34.906+05:30	2	6			600	478	901		Goa Board	May 2008	1	\N	6	4	1	1	2	\N
245	321	\N	2024-09-13 14:12:31.624+05:30	2024-09-13 14:12:31.624+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
247	324	\N	2024-09-13 16:36:58.324+05:30	2024-09-13 16:36:58.324+05:30	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	17	\N	\N	\N
249	328	\N	2024-09-16 12:09:41.631+05:30	2024-09-16 12:09:41.631+05:30	\N	29	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	18	\N	\N	\N
251	336	\N	2024-09-16 13:05:35.481+05:30	2024-09-16 13:05:35.481+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	1	\N	\N
253	343	\N	2024-09-17 15:42:30.214+05:30	2024-09-17 15:42:30.214+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	2	\N	\N
105	78	2000	2024-08-02 10:34:37.973+05:30	2024-08-02 10:34:37.973+05:30	0	0	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	41	6	\N	\N
106	78	2024	2024-08-02 10:46:00.129+05:30	2024-08-02 10:46:00.129+05:30	0	0	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	5	\N	41	0	\N	\N
179	256	\N	2024-08-21 15:36:15.374+05:30	2024-08-21 15:36:15.374+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	3	0	0
181	261	\N	2024-08-21 16:33:04.953+05:30	2024-08-21 16:33:04.953+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
187	262	\N	2024-08-23 10:56:11.034+05:30	2024-08-23 10:56:11.034+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	1	\N	\N
189	285	\N	2024-08-27 15:18:33.82+05:30	2024-08-27 15:18:33.82+05:30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
191	285	0	2024-08-27 15:21:39.948+05:30	2024-08-27 15:21:39.948+05:30	0	0			\N	\N	875		Goa Board	2024	0	\N	3	\N	8	3	\N	\N
197	285	0	2024-08-27 16:08:19.37+05:30	2024-08-27 16:08:19.37+05:30	0	0			\N	\N	885		Goa Board	2024	0	\N	6	\N	16	6	1	\N
207	67	0	2024-08-28 17:03:09.827+05:30	2024-08-28 17:03:09.827+05:30	0	0			\N	\N	905		Goa Board	2024	0	\N	3	\N	19	3	1	\N
209	67	0	2024-08-28 17:10:24.774+05:30	2024-08-28 17:10:24.774+05:30	0	0			\N	\N	907		Goa Board	2024	0	\N	1	\N	18	1	2	\N
211	67	0	2024-08-29 12:53:45.706+05:30	2024-08-29 12:53:45.706+05:30	0	0			\N	\N	934		Goa Board	2024	0	\N	9	\N	14	9	1	\N
213	305	\N	2024-08-29 12:55:26.624+05:30	2024-08-29 12:55:26.624+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	2	\N	\N
215	229	0	2024-08-29 15:51:55.452+05:30	2024-08-29 15:51:55.452+05:30	0	0			600	478	948		Goa University	May 2008	0	\N	2	\N	1	2	2	\N
217	315	\N	2024-08-29 16:03:06.033+05:30	2024-08-29 16:03:06.033+05:30	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	3	\N	\N
219	229	0	2024-08-29 16:19:28.454+05:30	2024-08-29 16:19:28.454+05:30	0	0			600	478	952		Goa University	May 2008	0	\N	4	\N	1	4	2	\N
221	229	0	2024-08-29 16:25:54.076+05:30	2024-08-29 16:25:54.076+05:30	0	0			600	478	955		Goa University	May 2008	0	\N	3	\N	1	3	2	\N
225	229	8	2024-08-29 17:12:37.472+05:30	2024-08-29 17:12:37.472+05:30	2	7			\N	\N	960		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
226	229	8	2024-08-29 17:12:40.027+05:30	2024-08-29 17:12:40.027+05:30	2	7			\N	\N	961		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
231	229	8	2024-08-29 17:13:11.067+05:30	2024-08-29 17:13:11.067+05:30	2	7			\N	\N	966		Goa Board	may 2024	0	\N	3	\N	15	3	1	\N
223	229	0	2024-08-29 16:57:21.759+05:30	2024-08-30 15:57:38.295+05:30	0	0			800	700	113		Goa University	April 2008	0	\N	9	\N	1	9	2	\N
236	229	0	2024-08-30 14:19:47.286+05:30	2024-08-30 16:57:57.775+05:30	0	0			600	478	118		Goa Board	SEPT 2008	0	79.67	6	\N	17	6	2	\N
240	316	2	2024-09-03 15:58:01.294+05:30	2024-09-03 15:58:01.294+05:30	0	6			\N	\N	1020		Goa Board	\N	1	\N	7	\N	\N	7	1	\N
242	67	5	2024-09-03 16:53:25.834+05:30	2024-09-03 16:53:25.834+05:30	2	6			600	580	1035		Goa Board	2024	0	96.67	1	\N	1	1	2	\N
244	317	\N	2024-09-04 16:34:23.111+05:30	2024-09-04 16:34:23.111+05:30	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	2	2	\N	\N
248	325	\N	2024-09-13 16:38:16.427+05:30	2024-09-13 16:38:16.427+05:30	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	18	\N	\N	\N
246	322	1	2024-09-13 16:34:12.803+05:30	2024-09-13 17:21:27.328+05:30	2	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	4	2	1	\N	\N
250	333	\N	2024-09-16 12:44:38.229+05:30	2024-09-16 12:44:38.229+05:30	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	17	\N	\N	\N
252	341	\N	2024-09-16 13:13:20.465+05:30	2024-09-16 13:13:20.465+05:30	\N	29	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	18	\N	\N	\N
254	345	\N	2024-09-17 15:45:04.023+05:30	2024-09-17 15:45:04.023+05:30	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	1	2	\N	\N
212	67	5	2024-08-29 12:55:14.269+05:30	2024-09-18 16:39:56.789+05:30	2	9			\N	\N	935		Goa Board	2024	1	\N	9	4	1	8	1	1
\.


--
-- Data for Name: StudentGuardians; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender) FROM stdin;
38	1	\N	18	Vasanti	Dessai	4563558566	vasantidessai@gmail.com	\N	Enterpreneur	CEO	Panjim	200000	t	2023-08-11 16:01:58.846+05:30	2023-08-14 11:17:45.36+05:30	t	t	2
37	2	\N	18	Vasudev 	Sawant	4578554588	vasudevdessai@gmail.com	\N	Work	President	Pondaa	4566666	t	2023-08-11 16:01:39.152+05:30	2023-08-14 12:56:37.28+05:30	t	t	1
33	2	\N	14	Suresh	Dessai	4578554588	0	\N	0	0	\N	0	t	2023-07-14 10:50:33.176+05:30	2023-07-14 10:50:33.176+05:30	t	t	1
34	1	\N	14	sfsdf	dfsfssfs	0	0	\N	0	0	\N	0	t	2023-07-14 10:50:34.877+05:30	2023-07-14 10:50:34.877+05:30	t	t	1
35	2	\N	17	Suresh	Dessai	4578554588	suresh@gmail.com	\N	Work	see	\N	45	t	2023-07-17 14:35:49.197+05:30	2023-07-17 14:41:05.438+05:30	t	t	2
36	1	\N	17	sfsdf	dfsfssfs	123234	qwqwqqw	\N	aaaa	aaaa	\N	12	t	2023-07-17 14:40:24.56+05:30	2023-07-17 14:41:10.361+05:30	t	t	1
39	2	\N	19	Ram	Mishra	4578554588	rammishra@gmail.com	\N	Bussiness	President	Ponda	4566666	t	2023-08-17 14:50:58.231+05:30	2023-08-17 14:50:58.231+05:30	t	t	1
40	1	\N	19	Sita 	Mishra	4563558566	sitamishra@gmail.com	\N	Enterpreneur	CEO	Panjim	200000	t	2023-08-17 14:51:34.674+05:30	2023-08-17 14:51:34.674+05:30	t	t	2
29	2	\N	7	abc	abc	9822121514	gmail.com	\N	work	aaaa	\N	45444	t	2023-06-23 16:12:01.747+05:30	2023-06-23 16:12:01.747+05:30	t	t	1
30	1	\N	8	\N	aaa	0	0	\N	0	0	\N	0	t	2023-06-26 10:11:12.819+05:30	2023-06-26 10:11:12.819+05:30	f	t	2
31	1	\N	10	\N	Naik	0	0	\N	0	0	\N	0	t	2023-06-26 12:25:27.108+05:30	2023-06-26 12:25:27.108+05:30	f	t	3
32	2	\N	10	Ashik	\N	0	mhad@gmail.com	\N	Work	WORK	\N	567	t	2023-06-26 12:26:40.275+05:30	2023-06-26 12:26:40.275+05:30	f	t	1
41	2	\N	20	Ram 	Prabhu	4578554588	ramprabu@gmail.com	\N	Bussiness	President	Ponda	4566666	t	2023-08-18 09:57:06.157+05:30	2023-08-18 09:57:06.157+05:30	t	t	1
42	1	\N	20	Sita 	Prabhu	4563558566	sitaprabhu@gmail.com	\N	Enterpreneur	CEO	Panjim	4000000	t	2023-08-18 09:57:32.348+05:30	2023-08-18 09:57:32.348+05:30	t	t	2
44	1	\N	21	Sita	Mishra	0	0	\N	0	0	0	0	t	2023-08-30 17:03:27.954+05:30	2023-08-30 17:04:56.693+05:30	t	t	2
43	2	\N	21	Ram	Mishra	9158661255	ram@gmail.com	\N	Business	CEO	GOA	6758888	t	2023-08-30 17:03:27.937+05:30	2023-08-30 17:05:06.156+05:30	t	t	1
46	2	\N	22	Suresh	Gawas	4578554588	suresh@gmail.com	\N	Bussiness	President	Ponda	456666	t	2023-09-01 15:23:02.805+05:30	2023-09-01 15:23:02.805+05:30	t	t	1
47	1	\N	22	Vasanti	Gawas	4563558566	vasantigawas@gmail.com	\N	EnterpreneuR	CEO	Panjim	200000	t	2023-09-01 15:23:02.815+05:30	2023-09-01 15:23:02.815+05:30	t	t	2
49	1	\N	27	Vasanti	Naik	4563558566	vasantI@gmail.com	\N	Enterpreneur	CEO	Panjim	4000000	t	2023-09-07 14:27:49.717+05:30	2023-09-07 14:27:49.717+05:30	t	t	2
50	2	\N	27	Suresh	Naik	4578554588	suresh@gmail.com	\N	Business	President	Ponda	4566666	t	2023-09-07 14:27:49.719+05:30	2023-09-07 14:58:37.02+05:30	t	t	1
8	1	\N	5	Vasanti	Dessai	4563558566	vasantidessai@gmail.com	\N	Enterpreneur	CEO	\N	4000000	t	2023-05-30 17:25:46.939+05:30	2023-08-01 10:52:16.533+05:30	t	t	2
52	1	\N	28	Vasanti	Goankar	4567778900	vasanti@gmail.com	\N	Enterpreneur	CEO	Margao	345555	t	2023-09-11 12:34:32.834+05:30	2023-09-11 12:34:32.834+05:30	t	t	2
7	2	\N	5	Vasudev	Dessai	458965899	vasudevdessai@gmail.com	\N	Bussiness	President	\N	400000	t	2023-05-30 17:25:46.939+05:30	2023-08-11 12:18:26.116+05:30	t	t	1
53	2	\N	28	Vasudev	Goankar	7854558966	suresh@gmail.com	\N	Bussiness	President	Ponda	456677	t	2023-09-11 12:34:32.845+05:30	2023-09-11 12:34:32.845+05:30	t	t	1
57	1	\N	31	Vasanti	Naik	4587554855	vasanti@gmail.com	\N	Business	CTO	Panjim	8545885855	t	2023-09-13 11:26:14.897+05:30	2023-09-13 11:26:14.897+05:30	t	t	2
56	2	\N	31	Suresh	Naik	5456998544	suresh@gmail.com	\N	Business	CEO	Ponda	4566669	t	2023-09-13 11:26:14.893+05:30	2023-09-13 11:26:14.893+05:30	t	t	1
59	3	\N	7	\N	\N	9890098900	kisan@yopmail.com	\N	kisannnn	assistant	work addres	\N	t	2024-07-16 12:32:33.718+05:30	2024-07-16 12:32:33.718+05:30	f	f	\N
93	1	mother	67	vasudhall	Sawan	7898545896		123432123460				2345670	t	2024-09-18 11:21:15.35+05:30	2024-09-20 10:48:22.159+05:30	t	f	2
74	1	\N	78	mom	lname	9890098900		\N	home	home	home	0	t	2024-07-25 11:50:26.335+05:30	2024-07-25 11:50:26.335+05:30	f	f	\N
94	2	father	67	vasudev	Sawan	7898545809		123432123460				2345670	t	2024-09-18 11:21:15.403+05:30	2024-09-20 11:11:33.241+05:30	t	f	1
9	3	\N	5	firstname	lastname	9890098900	kisan@yopmail.com	\N	kisan	assistant	work addres	444444	t	2023-05-30 17:25:46.939+05:30	2024-07-16 17:14:41.982+05:30	f	f	1
28	1	\N	7	bla	bla	9890098900	test@testing.com	6565544433234	bla	bla	bla	80000	t	2023-06-23 16:11:28.239+05:30	2024-07-17 14:40:45.357+05:30	t	t	1
70	2		78	fa	su							\N	t	2024-07-24 15:38:57.283+05:30	2024-07-31 17:29:54.977+05:30	t	t	\N
75	3	Brother	78	b	b	98990098900		\N				\N	t	2024-07-25 15:19:56.93+05:30	2024-08-01 17:16:50.663+05:30	f	f	1
88	3	\N	285	hghgh	fgg	tjgh	ru	654645	tyty	gfgj	yrtr	21654	t	2024-08-27 15:52:11.809+05:30	2024-08-27 15:52:51.13+05:30	f	f	1
89	1	\N	285	Mary	Doe	78214669523	dez@gmail.com	782146693523	Home	Business	Goa	0	t	2024-08-27 15:52:11.811+05:30	2024-08-27 16:14:41.242+05:30	f	f	2
90	2	\N	285	Dias	Dias	4571357893	dez@gmail.com	54789321	Business	work	Goa	0	t	2024-08-27 15:52:11.857+05:30	2024-08-27 16:14:42.563+05:30	f	f	1
95	3	\N	67	Surekha	Gawas	8978558966	surekha@gmail.com	2324344543434	Bussiness	Builder	H No.555 Ambeshi Wadda Amona Bicholim Goa	455555	t	2024-09-18 11:42:06.262+05:30	2024-09-20 10:36:21.033+05:30	f	f	2
\.


--
-- Data for Name: StudentMarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_year, userdoc_id, semester_id) FROM stdin;
42	27	1	785	458	85	t	2023-09-07 14:25:25.141+05:30	2023-09-07 14:25:25.141+05:30	\N	May 2008	f	\N	\N
43	27	1	785	458	85	t	2023-09-07 14:26:04.238+05:30	2023-09-07 14:26:04.238+05:30	\N	May 2010	f	\N	\N
44	28	1	567	458	85	t	2023-09-11 12:32:35.052+05:30	2023-09-11 12:32:35.052+05:30	\N	May 2010	f	\N	\N
41	22	1	789	567	79	t	2023-09-01 17:38:23.598+05:30	2023-09-12 13:06:33.07+05:30	\N	May 2015	f	\N	\N
7	8	1	789	678	60	t	2023-06-26 10:10:42.903+05:30	2023-06-26 10:10:42.903+05:30	\N	May 2023	f	\N	\N
45	31	1	788	568	68	t	2023-09-13 11:18:16.694+05:30	2023-09-13 11:18:16.694+05:30	\N	May 2010	f	\N	\N
8	9	1	789	678	60	t	2023-06-26 11:19:46.558+05:30	2023-06-26 11:22:28.143+05:30	\N	May 2023	f	\N	\N
9	10	1	785	500	56	t	2023-06-26 12:17:10.372+05:30	2023-06-26 12:17:10.372+05:30	\N	May 2013	f	\N	\N
10	10	1	785	458	85	t	2023-07-07 10:33:17.92+05:30	2023-07-07 10:33:17.92+05:30	\N	2015	f	\N	\N
26	18	1	789	454	67	t	2023-08-11 16:00:55.253+05:30	2023-08-16 16:14:07.784+05:30	\N	May 2010	f	\N	\N
46	42	1	600	490	4.9	t	2023-11-09 11:04:55.887+05:30	2023-11-09 11:04:55.887+05:30	\N	April 2020	f	\N	\N
12	14	1	785	458	85	t	2023-07-14 10:44:06.269+05:30	2023-07-14 10:44:06.269+05:30	\N	2015	f	\N	\N
13	17	1	785	458	85	t	2023-07-17 14:44:03.686+05:30	2023-07-17 14:44:03.686+05:30	\N	2015	f	\N	\N
14	17	1	789	458	45	t	2023-07-17 15:31:46.788+05:30	2023-07-17 15:31:46.788+05:30	\N	May 2018	f	\N	\N
15	17	1	785	458	67	t	2023-07-17 15:32:18.057+05:30	2023-07-17 15:32:18.057+05:30	\N	May 2018	f	\N	\N
17	18	1	898	678	78	t	2023-08-03 15:35:05.384+05:30	2023-08-16 16:44:56.148+05:30	\N	May 2015	f	\N	\N
35	20	1	785	458	85	t	2023-08-22 11:06:01.824+05:30	2023-08-22 11:06:01.824+05:30	\N	May 2008	f	\N	\N
36	21	1	785	458	85	t	2023-08-29 16:26:04.272+05:30	2023-08-29 16:56:41.788+05:30	\N	May 2010	f	\N	\N
37	19	1	785	458	85	t	2023-08-29 17:26:48.267+05:30	2023-08-29 17:26:48.267+05:30	\N	May 2010	f	\N	\N
38	22	1	785	458	85	t	2023-09-01 15:18:31.11+05:30	2023-09-01 15:18:31.11+05:30	\N	May 2010	f	\N	\N
39	22	1	785	454	67	t	2023-09-01 15:19:24.388+05:30	2023-09-01 15:19:24.388+05:30	\N	May 2012	f	\N	\N
40	22	1	785	454	67	t	2023-09-01 15:20:14.369+05:30	2023-09-01 15:21:34.155+05:30	\N	May 2013	f	\N	\N
6	7	1	789	678	60	t	2023-06-23 16:10:59.749+05:30	2024-06-26 10:53:48.418+05:30	\N	May 2023	f	\N	\N
49	44	1	500	420	A	t	2024-07-04 10:42:06.058+05:30	2024-07-04 10:42:06.058+05:30	\N	March 2007	f	\N	\N
55	44	1	850	600	B	t	2024-07-04 15:50:12.802+05:30	2024-07-04 15:50:37.733+05:30	\N	2016	t	\N	\N
50	44	1	850	600	B	t	2024-07-04 10:43:10.492+05:30	2024-07-04 15:51:26.934+05:30	\N	2016	t	\N	\N
56	44	1	850	600	B	t	2024-07-04 16:06:18.557+05:30	2024-07-04 16:11:42.554+05:30	\N	2016	t	\N	\N
123	218	2	0	0	79.67	t	2024-08-30 16:45:22.676+05:30	2024-08-30 16:45:22.676+05:30	\N	AUGUST 2008	f	118	0
85	73	1	500	400	90	t	2024-07-25 15:48:16.765+05:30	2024-07-25 15:48:16.765+05:30	\N	APR 2024	f	684	1
86	76	1	500	400	90	t	2024-07-25 15:52:33.381+05:30	2024-07-25 15:52:33.381+05:30	\N	APR 2024	f	684	1
113	223	2	600	568	94.67	t	2024-08-29 16:57:21.776+05:30	2024-08-29 16:57:21.776+05:30	\N	April 2008	f	958	0
89	97	1	620	420	60	t	2024-07-31 15:43:22.66+05:30	2024-07-31 15:45:06.691+05:30	\N	APR 2025	f	684	2
90	\N	3	200	100	\N	t	2024-08-02 14:46:56.316+05:30	2024-08-02 14:46:56.316+05:30	\N	jan 2022	f	\N	1
91	2	3	444	111	\N	t	2024-08-02 15:17:44.357+05:30	2024-08-02 15:17:44.357+05:30	\N	march 2023	t	\N	1
92	155	1	620	420	60	t	2024-08-08 11:05:21.642+05:30	2024-08-08 11:05:21.642+05:30	\N	APR 2025	f	267	2
93	168	2	600	478	79.67	t	2024-08-28 15:18:55.417+05:30	2024-08-28 15:18:55.417+05:30	\N	\N	t	894	2
97	202	2	600	500	83.33	t	2024-08-28 16:42:31.372+05:30	2024-08-28 16:42:31.372+05:30	\N	May 2008	f	902	2
99	200	2	600	478	79.67	t	2024-08-29 11:26:51.378+05:30	2024-08-29 11:26:51.378+05:30	\N	\N	f	920	2
100	200	2	600	478	79.67	t	2024-08-29 11:29:13.591+05:30	2024-08-29 11:29:13.591+05:30	\N	\N	f	921	2
101	200	2	600	478	79.67	t	2024-08-29 12:26:59.001+05:30	2024-08-29 12:26:59.001+05:30	\N	\N	f	922	2
102	200	2	600	478	79.67	t	2024-08-29 12:30:45.844+05:30	2024-08-29 12:30:45.844+05:30	\N	\N	f	927	2
103	200	2	600	478	79.67	t	2024-08-29 12:35:25.355+05:30	2024-08-29 12:35:25.355+05:30	\N	\N	f	928	2
104	200	2	600	478	79.67	t	2024-08-29 12:36:44.731+05:30	2024-08-29 12:36:44.731+05:30	\N	\N	f	929	2
105	200	2	600	478	79.67	t	2024-08-29 12:38:05.984+05:30	2024-08-29 12:38:05.984+05:30	\N	\N	f	930	2
106	200	2	600	478	79.67	t	2024-08-29 12:38:10.428+05:30	2024-08-29 12:38:10.428+05:30	\N	\N	f	931	2
107	200	2	600	478	79.67	t	2024-08-29 12:38:24.422+05:30	2024-08-29 12:38:24.422+05:30	\N	\N	f	932	2
108	200	2	600	478	79.67	t	2024-08-29 12:47:17.501+05:30	2024-08-29 12:47:17.501+05:30	\N	\N	f	933	1
109	158	2	600	478	79.67	t	2024-08-29 13:01:26.098+05:30	2024-08-29 13:01:26.098+05:30	\N	\N	f	900	2
111	221	2	600	478	79.67	t	2024-08-29 16:25:54.092+05:30	2024-08-29 16:25:54.092+05:30	\N	May 2008	f	955	0
118	236	2	600	478	79.67	t	2024-08-30 14:19:47.305+05:30	2024-08-30 14:19:47.305+05:30	\N	May 2008	f	972	0
119	218	2	0	0	79.67	t	2024-08-30 15:25:52.339+05:30	2024-08-30 15:25:52.339+05:30	\N	March 2008	f	118	0
120	218	2	800	700	87.50	t	2024-08-30 15:57:38.328+05:30	2024-08-30 15:57:38.328+05:30	\N	\N	f	113	0
121	218	2	800	700	87.50	t	2024-08-30 16:00:53.675+05:30	2024-08-30 16:00:53.675+05:30	\N	\N	f	973	1
122	218	2	0	0	79.67	t	2024-08-30 16:28:01.668+05:30	2024-08-30 16:28:01.668+05:30	\N	January 2008	f	118	0
124	218	2	0	0	79.67	t	2024-08-30 16:50:06.194+05:30	2024-08-30 16:50:06.194+05:30	\N	AUG 2008	f	118	0
125	218	2	0	0	79.67	t	2024-08-30 16:57:57.793+05:30	2024-08-30 16:57:57.793+05:30	\N	SEPT 2008	f	118	0
127	237	2	700	500	71.43	t	2024-09-03 15:58:28.023+05:30	2024-09-03 15:58:28.023+05:30	\N	\N	t	1021	2
128	242	2	600	580	96.67	t	2024-09-03 16:53:25.848+05:30	2024-09-03 16:53:25.848+05:30	\N	2024	t	1035	5
129	243	2	500	500	104.17	t	2024-09-03 16:58:24.545+05:30	2024-09-03 16:58:24.545+05:30	\N	2024	t	1038	0
130	212	2	0	0	104.17	t	2024-09-18 17:06:47.086+05:30	2024-09-18 17:06:47.086+05:30	\N	\N	f	129	0
\.


--
-- Data for Name: StudentOtherSkills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
65	Speaking writing gardderning.I like to dance ,swim,running.I am a good writer.	116	t	2023-08-14 16:05:49.833+05:30	2023-08-14 16:05:49.833+05:30
67	I am a trained classical singer.I am a state level bharatnatyam dancer	120	t	2023-08-18 09:58:28.48+05:30	2023-08-18 09:58:28.48+05:30
68	I am a professional Bharatnatyam dancer.I am a certified music tariner	119	t	2023-08-21 14:57:58.423+05:30	2023-08-21 14:57:58.423+05:30
70	I am a professional Bharatnatyam dancer.I am a certified music tariner.	165	t	2023-09-07 14:28:22.866+05:30	2023-09-07 14:28:22.866+05:30
71	I am a professional Bharatnatyam dancer.I am a certified music tariner.	78	t	2023-09-08 16:53:18.707+05:30	2023-09-08 16:53:18.707+05:30
72	I am trained classical singer.	166	t	2023-09-11 12:34:57.501+05:30	2023-09-11 12:34:57.501+05:30
73	I am a professional Bharatnatyam dancer.I am a certified music tariner.	178	t	2023-09-13 11:26:37.917+05:30	2023-09-13 11:26:37.917+05:30
74	I am a professional Bharatnatyam dancer.I am a certified music trainer.	158	t	2023-10-10 15:37:31.01+05:30	2023-10-10 15:37:31.01+05:30
75	I am a professional Bharatnatyam dancer.I am a certified music tariner.	195	t	2023-10-26 11:14:40.88+05:30	2023-10-26 11:14:40.88+05:30
22	Speaking writing gardderning	110	t	2023-07-14 10:54:21.143+05:30	2023-07-14 10:54:21.143+05:30
24	Speaking writing gardderning	115	t	2023-07-17 14:54:51.564+05:30	2023-07-17 14:54:51.564+05:30
53	Redis	67	t	2023-08-14 15:43:49.325+05:30	2023-08-14 15:43:49.325+05:30
54	SQL	67	t	2023-08-14 15:43:49.325+05:30	2023-08-14 15:43:49.325+05:30
55	Laravel	67	t	2023-08-14 15:43:49.325+05:30	2023-08-14 15:43:49.325+05:30
\.


--
-- Data for Name: StudentRemarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
57	22	1	First name is missing	1	1	2023-09-06 12:06:04.471+05:30	2023-09-06 12:06:04.471+05:30	\N	f
58	22	2	No remarks	1	1	2023-09-06 12:06:30.22+05:30	2023-09-06 12:06:30.22+05:30	\N	f
59	22	3	Fathers name is wrong	1	1	2023-09-06 12:06:45.508+05:30	2023-09-06 12:06:45.508+05:30	\N	f
60	22	4	Internship document missing	1	1	2023-09-06 12:07:28.616+05:30	2023-09-06 12:07:28.616+05:30	\N	f
61	27	1	Disablility is missing	1	1	2023-09-07 15:02:35.2+05:30	2023-09-07 15:02:35.2+05:30	\N	f
62	27	2	Document is wrong	1	1	2023-09-07 15:06:51.743+05:30	2023-09-07 15:06:51.743+05:30	\N	f
63	27	3	Guardian data missing	1	1	2023-09-07 15:14:34.819+05:30	2023-09-07 15:14:34.819+05:30	\N	f
64	27	4	Skill documents missing	1	1	2023-09-07 15:31:36.996+05:30	2023-09-07 15:31:36.996+05:30	\N	f
6	1	1	Surname ee spelling mis-match	1	1	2023-06-27 12:18:34.306+05:30	2023-06-27 12:20:47.654+05:30	\N	f
10	1	3	Surname ee spelling mis-match	1	1	2023-06-27 12:25:19.155+05:30	2023-06-27 12:25:19.155+05:30	\N	f
11	5	1	First name is missing	1	1	2023-08-16 10:31:16.224+05:30	2023-08-16 10:36:18.572+05:30	\N	f
12	1	2	Document is wrong	1	1	2023-08-16 10:31:49.356+05:30	2023-08-16 10:38:14.872+05:30	\N	f
14	14	1	First name is missing second name is missinggg	1	1	2023-08-16 10:37:53.659+05:30	2023-08-17 14:36:20.452+05:30	\N	f
16	14	2	Document is wrong.Marksheet missig	1	1	2023-08-16 10:38:51.266+05:30	2023-08-17 12:10:02.256+05:30	\N	f
17	14	3	Skill is missing.Plase check it	1	1	2023-08-16 15:00:36.326+05:30	2023-08-17 12:10:11.052+05:30	\N	f
23	14	4	Skills are wrong Pleaase write correct skills and corret	1	1	2023-08-17 11:56:11.525+05:30	2023-08-17 12:10:20.453+05:30	\N	f
\.


--
-- Data for Name: StudentResults; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: StudentSkills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
5	92	\N	t	2023-06-26 12:32:04.782+05:30	2023-06-26 12:32:04.782+05:30
6	92	\N	t	2023-06-26 12:32:04.782+05:30	2023-06-26 12:32:04.782+05:30
79	120	19	t	2023-08-18 09:58:28.504+05:30	2023-08-18 09:58:28.504+05:30
78	120	11	t	2023-08-18 09:58:28.504+05:30	2023-08-18 09:58:28.504+05:30
80	120	14	t	2023-08-18 09:58:28.504+05:30	2023-08-18 09:58:28.504+05:30
81	120	17	t	2023-08-18 09:58:28.504+05:30	2023-08-18 09:58:28.504+05:30
82	120	13	t	2023-08-18 09:58:28.504+05:30	2023-08-18 09:58:28.504+05:30
83	120	9	t	2023-08-18 09:58:28.504+05:30	2023-08-18 09:58:28.504+05:30
84	119	11	t	2023-08-21 14:57:58.432+05:30	2023-08-21 14:57:58.432+05:30
85	119	4	t	2023-08-21 14:57:58.432+05:30	2023-08-21 14:57:58.432+05:30
86	119	17	t	2023-08-21 14:57:58.432+05:30	2023-08-21 14:57:58.432+05:30
87	119	9	t	2023-08-21 14:57:58.432+05:30	2023-08-21 14:57:58.432+05:30
98	165	19	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
97	165	11	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
99	165	14	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
100	165	13	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
101	165	9	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
102	165	18	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
103	165	16	t	2023-09-07 14:28:22.926+05:30	2023-09-07 14:28:22.926+05:30
106	78	19	t	2023-09-08 16:53:16.902+05:30	2023-09-08 16:53:16.902+05:30
37	67	1	t	2023-07-12 17:01:20.115+05:30	2023-07-12 17:01:20.115+05:30
38	67	2	t	2023-07-12 17:01:20.115+05:30	2023-07-12 17:01:20.115+05:30
39	67	3	t	2023-07-12 17:01:20.115+05:30	2023-07-12 17:01:20.115+05:30
105	78	17	t	2023-09-08 16:53:16.903+05:30	2023-09-08 16:53:16.903+05:30
104	78	11	t	2023-09-08 16:53:16.44+05:30	2023-09-08 16:53:16.44+05:30
107	78	14	t	2023-09-08 16:53:16.902+05:30	2023-09-08 16:53:16.902+05:30
108	166	11	t	2023-09-11 12:34:57.505+05:30	2023-09-11 12:34:57.505+05:30
109	166	19	t	2023-09-11 12:34:57.505+05:30	2023-09-11 12:34:57.505+05:30
110	166	3	t	2023-09-11 12:34:57.505+05:30	2023-09-11 12:34:57.505+05:30
111	166	10	t	2023-09-11 12:34:57.505+05:30	2023-09-11 12:34:57.505+05:30
112	166	1	t	2023-09-11 12:34:57.506+05:30	2023-09-11 12:34:57.506+05:30
113	178	11	t	2023-09-13 11:26:37.819+05:30	2023-09-13 11:26:37.819+05:30
114	178	19	t	2023-09-13 11:26:37.819+05:30	2023-09-13 11:26:37.819+05:30
115	178	3	t	2023-09-13 11:26:37.819+05:30	2023-09-13 11:26:37.819+05:30
116	178	13	t	2023-09-13 11:26:37.819+05:30	2023-09-13 11:26:37.819+05:30
117	178	9	t	2023-09-13 11:26:37.819+05:30	2023-09-13 11:26:37.819+05:30
120	158	3	t	2023-10-10 15:37:29.129+05:30	2023-10-10 15:37:29.129+05:30
121	158	13	t	2023-10-10 15:37:29.13+05:30	2023-10-10 15:37:29.13+05:30
122	158	10	t	2023-10-10 15:37:29.153+05:30	2023-10-10 15:37:29.153+05:30
118	158	11	t	2023-10-10 15:37:28.985+05:30	2023-10-10 15:37:28.985+05:30
119	158	14	t	2023-10-10 15:37:29.129+05:30	2023-10-10 15:37:29.129+05:30
123	158	9	t	2023-10-10 15:37:29.153+05:30	2023-10-10 15:37:29.153+05:30
124	195	11	t	2023-10-26 11:14:40.871+05:30	2023-10-26 11:14:40.871+05:30
65	116	19	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
66	116	11	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
68	116	17	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
69	116	10	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
70	116	7	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
71	116	5	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
67	116	3	t	2023-08-14 16:05:49.707+05:30	2023-08-14 16:05:49.707+05:30
\.


--
-- Data for Name: Subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
2	Computer Science	t	2023-03-31 16:38:11.687+05:30	2023-03-31 16:38:11.687+05:30
3	Psycology	t	2023-03-31 16:38:22.193+05:30	2023-03-31 16:38:22.193+05:30
4	Music	t	2023-03-31 16:38:37.614+05:30	2023-03-31 16:38:37.614+05:30
5	Economics	t	2023-03-31 16:38:44.187+05:30	2023-03-31 16:38:44.187+05:30
6	Accounts	t	2023-03-31 16:38:52.405+05:30	2023-03-31 16:38:52.405+05:30
7	Others	t	2024-07-31 16:34:32.839+05:30	2024-07-31 16:34:32.839+05:30
1	Maths	t	2023-03-31 16:37:16.629+05:30	2023-03-31 16:37:16.629+05:30
\.


--
-- Data for Name: Talukas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	Margao	1	t	2023-03-21 12:41:26.841+05:30	2023-03-21 12:41:26.841+05:30
2	Quepem	1	t	2023-03-21 12:41:51.862+05:30	2023-03-21 12:41:51.862+05:30
3	Ponda	2	t	2023-03-21 12:41:58.974+05:30	2023-03-21 12:41:58.974+05:30
4	Pernem	2	t	2023-03-21 12:42:04.12+05:30	2023-03-21 12:42:04.12+05:30
5	Mapusa	2	t	2023-03-21 12:43:47.531+05:30	2023-03-21 12:43:47.531+05:30
6	Carnarvon	3	t	2023-06-30 16:11:56.068+05:30	2023-06-30 16:11:56.068+05:30
7	Exmouth	3	t	2023-06-30 16:12:05.7+05:30	2023-06-30 16:12:05.7+05:30
8	Burringurrah	3	t	2023-06-30 16:12:23.809+05:30	2023-06-30 16:12:23.809+05:30
9	Kalgoorlie	4	t	2023-06-30 16:13:07.643+05:30	2023-06-30 16:13:07.643+05:30
10	Norseman	4	t	2023-06-30 16:13:23.235+05:30	2023-06-30 16:13:23.235+05:30
11	Ajgaon	10	t	2023-06-30 16:15:24.037+05:30	2023-06-30 16:15:24.037+05:30
12	Ambegaon	10	t	2023-06-30 16:15:32.178+05:30	2023-06-30 16:15:32.178+05:30
13	Amboli	10	t	2023-06-30 16:15:43.633+05:30	2023-06-30 16:15:43.633+05:30
14	Kankavli	11	t	2023-06-30 16:16:15.285+05:30	2023-06-30 16:16:15.285+05:30
15	Dodamarg	11	t	2023-06-30 16:16:26.333+05:30	2023-06-30 16:16:26.333+05:30
\.


--
-- Data for Name: UserBanks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
1	BOI	1012101001210214	Ponda	BKID124563214	174	t	2024-06-25 15:35:44.825+05:30	2024-06-25 15:35:44.825+05:30	\N
2	BOI	1012101001210214	Ponda	BKIN0124333	212	t	2024-07-10 15:16:50.328+05:30	2024-07-10 15:16:50.328+05:30	ponda goa
3	BOI	1012101001210214	Ponda	BKIN0124333	212	t	2024-07-10 15:26:15.373+05:30	2024-07-10 15:26:15.373+05:30	ponda goa
4	BOI	1012101001210214	Ponda	BKIN0124333	212	t	2024-07-10 15:29:59.567+05:30	2024-07-10 15:29:59.567+05:30	ponda goa
5	BOI	1012101001210214	Ponda	BKIN0124333	212	t	2024-07-10 15:30:01.971+05:30	2024-07-10 15:30:01.971+05:30	ponda goa
6	BOI	1012101001210214	Ponda	BKIN0124333	212	t	2024-07-10 16:00:09.697+05:30	2024-07-10 16:00:09.697+05:30	ponda goa
7	ffddfg	343546567689	dfgdfg	BKIN0124333	212	t	2024-07-10 16:01:52.106+05:30	2024-07-10 16:01:52.106+05:30	ad
9	BOI	1012101001210214	Ponda	BKIN0124333	67	f	2024-07-12 15:01:16.304+05:30	2024-07-12 15:01:16.304+05:30	NETALKAR BLDG KAZIWADAP B NO 13
10	Bank of India	1012101001210214	Ponda	BKIN0124333	67	f	2024-07-12 15:02:48.011+05:30	2024-07-12 15:02:48.011+05:30	NETALKAR BLDG KAZIWADAP B NO 13
11	Bank of India	47466355535	PONDA	BKID0001019	67	f	2024-07-12 15:02:53.024+05:30	2024-07-12 15:02:53.024+05:30	NETALKAR BLDG KAZIWADAP B NO 13
12	Bank of India	47466355535	PONDA	BKID0001019	67	f	2024-07-12 15:07:18.09+05:30	2024-07-12 15:07:18.09+05:30	NETALKAR BLDG KAZIWADAP B NO 13
17	Union Bank of India	2	MARGAO	UBIN0532509	315	t	2024-08-29 16:16:05.243+05:30	2024-08-29 16:43:17.877+05:30	UNION BANK OF INDIA, MARGAO (GOA), SALGAONKAR BUILDING, RUA LUIS DE MIRANDA,, MARGAO, SALCETE, DIST. SOUTH GOA,, PIN - 403 601.
8	HDFC Bank	2323343545446	THE AGS EMPLOYEES COOP BANK LTD	HDFC0CAGSBK	67	t	2024-07-12 14:56:06.459+05:30	2024-09-13 10:15:11.64+05:30	SANGMESH BIRADAR BANGALORE
13	HDFC Bank	2323343545446	THE AGS EMPLOYEES COOP BANK LTD	HDFC0CAGSBK	67	t	2024-08-14 17:59:32.116+05:30	2024-09-13 10:15:11.64+05:30	SANGMESH BIRADAR BANGALORE
14	Indian Overseas Bank	1012101001210214	PANAJI	IOBA0000139	229	t	2024-08-21 15:03:30.83+05:30	2024-08-23 10:54:40.475+05:30	NEPTUNE HOTEL BUILDINGS, DR A PISSURLKAR ROAD, PANJIM GOA PIN 403001
15	Indian Overseas Bank	2323343545446	PANAJI	IOBA0000139	261	t	2024-08-21 17:39:50.13+05:30	2024-08-21 18:02:31.715+05:30	NEPTUNE HOTEL BUILDINGS, DR A PISSURLKAR ROAD, PANJIM GOA PIN 403001
16	South Indian Bank	245612388	MARGAO	SIBL0000364	285	t	2024-08-27 12:59:00.958+05:30	2024-08-27 14:35:15.056+05:30	MARGAO BRANCH,CASA DOS ALIADOS,NEXT TO GOMANT VIDYA NIKETAN,ABADE FARIA ROAD, SOUTH-GOA, GOA , PIN-403601
\.


--
-- Data for Name: UserContacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserContacts" (id, user_id, type, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt") FROM stdin;
62	165	\N	H nO:555 Ambeshi Wadda Amona	1	3	1	2	Amona	452157	t	2023-09-07 13:09:44.07+05:30	2023-09-07 14:24:27.839+05:30
57	158	\N	H No:898 Ambeshi Wadda Amona Bicholim Goa	1	3	1	2	Amona	452157	t	2023-09-01 15:16:21.089+05:30	2023-10-05 17:21:05.427+05:30
36	116	\N	H nO:555 Ambeshi Wadda Amona	1	3	1	1	Taleigao	452157	t	2023-07-18 12:18:24.857+05:30	2023-08-11 17:00:47.552+05:30
35	115	\N	H nO:555 Ambeshi Wadda Amona	1	3	1	2	Amona	452157	t	2023-07-17 13:03:07.816+05:30	2023-07-17 15:05:40.047+05:30
21	96	\N	Amona	1	3	1	2	Amona	454567	t	2023-07-03 10:18:48.274+05:30	2023-09-08 13:23:32.719+05:30
4	69	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-15 11:39:49.77+05:30	2023-06-15 11:39:49.77+05:30
5	70	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-19 17:00:42.5+05:30	2023-06-19 17:00:42.5+05:30
6	71	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-19 17:10:39.363+05:30	2023-06-19 17:10:39.363+05:30
7	72	\N	\N	1	3	2	3	amona	454567	t	2023-06-20 16:16:23.547+05:30	2023-06-20 16:24:40.819+05:30
10	75	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-23 15:53:10.224+05:30	2023-06-23 15:53:10.224+05:30
11	76	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-23 16:03:38.59+05:30	2023-06-23 16:03:38.59+05:30
63	166	\N	H nO:555 Ambeshi Wadda Amona	1	3	1	1	Taleigao	452158	t	2023-09-11 10:12:34.876+05:30	2023-09-11 10:14:32.206+05:30
13	80	\N	Amona	1	3	2	3	Amona	451254	t	2023-06-26 10:09:22.88+05:30	2023-06-26 10:10:26.531+05:30
15	82	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-26 10:52:00.924+05:30	2023-06-26 10:52:00.924+05:30
16	83	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-26 10:53:18.693+05:30	2023-06-26 10:53:18.693+05:30
17	84	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-26 11:17:14.209+05:30	2023-06-26 11:17:14.209+05:30
14	81	\N	Amona	1	3	2	4	Amona	451254	t	2023-06-26 10:49:53.608+05:30	2023-06-26 11:22:11.245+05:30
38	120	\N	H N0:444 Taleigao Goa	1	3	1	2	Amona	232455	t	2023-08-18 09:50:26.567+05:30	2023-08-18 09:52:34.186+05:30
19	93	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-30 13:07:57.341+05:30	2023-06-30 13:07:57.341+05:30
20	95	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-06-30 13:10:45.767+05:30	2023-06-30 13:10:45.767+05:30
81	187	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-12 14:10:21.421+05:30	2023-10-12 14:10:21.421+05:30
39	121	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-22 11:11:26.136+05:30	2023-08-22 11:11:26.136+05:30
40	122	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-24 16:26:29.545+05:30	2023-08-24 16:26:29.545+05:30
9	74	\N	\N	1	3	2	3	amona	154785	t	2023-06-23 15:26:00.84+05:30	2023-06-23 15:26:00.84+05:30
64	167	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-12 11:29:23.027+05:30	2023-09-12 11:29:23.027+05:30
82	188	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-12 14:14:33.003+05:30	2023-10-12 14:14:33.003+05:30
41	125	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-25 15:40:13.805+05:30	2023-08-25 15:40:13.805+05:30
42	131	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-25 15:47:36.941+05:30	2023-08-25 15:47:36.941+05:30
43	134	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-25 16:10:46.864+05:30	2023-08-25 16:10:46.864+05:30
44	137	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-25 16:17:37.35+05:30	2023-08-25 16:17:37.35+05:30
45	139	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-25 16:54:34.767+05:30	2023-08-25 16:54:34.767+05:30
46	142	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-29 15:11:02.084+05:30	2023-08-29 15:11:02.084+05:30
31	110	\N	H nO:555 Ambeshi Wadda Amona	1	3	1	1	Amona	452157	t	2023-07-14 09:43:57.318+05:30	2023-08-29 17:03:33.834+05:30
65	168	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-12 11:34:48.87+05:30	2023-09-12 11:34:48.87+05:30
22	97	\N	Amona	1	3	1	1	amona	454567	t	2023-07-05 10:38:22.693+05:30	2023-07-05 15:07:03.505+05:30
66	169	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-12 11:40:45.191+05:30	2023-09-12 11:40:45.191+05:30
67	170	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 10:21:30.431+05:30	2023-09-13 10:21:30.431+05:30
24	100	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-07-06 12:10:22.655+05:30	2023-07-06 12:10:22.655+05:30
25	101	\N	Amona	1	3	1	2	Amona	454657	t	2023-07-07 10:27:58.415+05:30	2023-07-07 10:29:08.843+05:30
18	92	\N	Mapusa	1	3	1	1	Margao	3453456	t	2023-06-26 11:54:44.718+05:30	2023-07-07 10:32:51.651+05:30
26	102	\N	Amona	1	3	1	1	Amona	451256	t	2023-07-07 13:04:14.365+05:30	2023-07-07 13:05:54.572+05:30
47	143	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-29 17:30:56.285+05:30	2023-08-29 17:30:56.285+05:30
48	144	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-30 12:09:27.089+05:30	2023-08-30 12:09:27.089+05:30
85	193	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-13 13:25:43.235+05:30	2023-10-13 13:25:43.235+05:30
23	98	\N	\N	1	3	1	2	Akkem	\N	t	2023-07-06 12:09:31.491+05:30	2023-07-12 15:55:46.622+05:30
27	103	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-07-13 10:53:55.569+05:30	2023-07-13 10:53:55.569+05:30
29	107	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-07-13 16:52:21.848+05:30	2023-07-13 16:52:21.848+05:30
30	109	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-07-13 16:56:12.908+05:30	2023-07-13 16:56:12.908+05:30
68	171	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 10:25:24.768+05:30	2023-09-13 10:25:24.768+05:30
69	172	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 10:27:22.948+05:30	2023-09-13 10:27:22.948+05:30
49	145	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-30 12:13:38.125+05:30	2023-08-30 12:13:38.125+05:30
33	112	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-07-14 15:04:23.264+05:30	2023-07-14 15:04:23.264+05:30
34	113	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-07-14 15:06:42.612+05:30	2023-07-14 15:06:42.612+05:30
70	174	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 11:03:14.497+05:30	2023-09-13 11:03:14.497+05:30
50	146	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-31 17:32:04.887+05:30	2023-08-31 17:32:04.887+05:30
51	149	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-08-31 17:37:12.877+05:30	2023-08-31 17:37:12.877+05:30
32	111	\N	trrtft	1	1	10	11	hhh11111	355222	t	2023-07-14 11:13:08.8+05:30	2023-07-14 15:42:08.724+05:30
71	177	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 11:10:01.37+05:30	2023-09-13 11:10:01.37+05:30
52	151	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-01 11:20:21.437+05:30	2023-09-01 11:20:21.437+05:30
53	152	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-01 11:23:34.456+05:30	2023-09-01 11:23:34.456+05:30
54	155	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-01 11:29:04.907+05:30	2023-09-01 11:29:04.907+05:30
55	156	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-01 13:01:41.034+05:30	2023-09-01 13:01:41.034+05:30
56	157	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-01 15:01:00.334+05:30	2023-09-01 15:01:00.334+05:30
58	159	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-04 13:10:56.161+05:30	2023-09-04 13:10:56.161+05:30
59	160	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-04 13:24:10.665+05:30	2023-09-04 13:24:10.665+05:30
60	161	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-04 13:25:01.14+05:30	2023-09-04 13:25:01.14+05:30
73	179	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 11:13:11.141+05:30	2023-09-13 11:13:11.141+05:30
61	164	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-04 15:58:09.001+05:30	2023-09-04 15:58:09.001+05:30
37	119	\N	H N0:444 Dharbandora Goa	1	3	1	2	Chimla	452157	t	2023-08-17 14:39:58.698+05:30	2023-09-05 11:18:42.921+05:30
86	194	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-13 13:31:12.586+05:30	2023-10-13 13:31:12.586+05:30
72	178	\N	H nO:555 Ambeshi Wadda Amona	1	3	2	3	Amona	403127	t	2023-09-13 11:13:10.917+05:30	2023-09-13 11:17:20.245+05:30
74	180	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-13 11:52:00.636+05:30	2023-09-13 11:52:00.636+05:30
87	195	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-18 11:10:27.546+05:30	2023-10-18 11:10:27.546+05:30
8	73	\N	gghjjh12111515	1	1	10	11	mkjjj	55555	t	2023-06-20 16:18:54.093+05:30	2023-09-13 14:34:53.221+05:30
75	181	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-14 15:21:26.052+05:30	2023-09-14 15:21:26.052+05:30
88	198	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-18 12:58:40.569+05:30	2023-10-18 12:58:40.569+05:30
76	182	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-26 11:22:44.557+05:30	2023-09-26 11:22:44.557+05:30
77	183	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-28 12:20:15.663+05:30	2023-09-28 12:20:15.663+05:30
78	184	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-28 12:27:23.28+05:30	2023-09-28 12:27:23.28+05:30
79	185	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-09-29 12:40:45.484+05:30	2023-09-29 12:40:45.484+05:30
89	199	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-18 15:56:57.934+05:30	2023-10-18 15:56:57.934+05:30
80	186	\N	H nO:555 Ambeshi Wadda Amona	1	3	1	2		452157	t	2023-10-06 10:39:12.588+05:30	2023-10-12 17:29:22.511+05:30
83	189	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-13 10:45:53.335+05:30	2023-10-13 10:45:53.335+05:30
84	190	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-13 11:02:24.488+05:30	2023-10-13 11:02:24.488+05:30
90	200	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-20 10:54:56.848+05:30	2023-10-20 10:54:56.848+05:30
91	203	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-10-26 11:26:47.701+05:30	2023-10-26 11:26:47.701+05:30
92	204	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-11-07 11:36:19.253+05:30	2023-11-07 11:36:19.253+05:30
93	207	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-11-07 12:30:49.58+05:30	2023-11-07 12:30:49.58+05:30
94	208	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-11-07 12:54:15.47+05:30	2023-11-07 12:54:15.47+05:30
95	209	\N	\N	\N	\N	\N	\N	\N	\N	t	2023-11-09 10:25:45.561+05:30	2023-11-09 10:25:45.561+05:30
12	78	\N	Amona	1	3	1	1	Amona	451254	t	2023-06-23 16:07:40.965+05:30	2024-06-26 15:57:11.479+05:30
98	214	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-07-03 15:18:50.139+05:30	2024-07-03 15:18:50.139+05:30
96	210	\N	H No.555 Ambeshi Wada Amona Bicholim Goa	1	3	1	1	Amona	454345	t	2024-07-02 14:42:28.945+05:30	2024-07-02 17:27:12.016+05:30
101	218	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-07-08 12:37:43.466+05:30	2024-07-08 12:37:43.466+05:30
99	215	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-07-04 10:50:24.159+05:30	2024-07-04 10:50:24.159+05:30
100	217	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-07-04 11:13:25.764+05:30	2024-07-04 11:13:25.764+05:30
102	219	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-07-11 15:29:17.548+05:30	2024-07-11 15:29:17.548+05:30
103	220	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-07-11 15:30:12.221+05:30	2024-07-11 15:30:12.221+05:30
97	212	\N	H No.555 Ambeshi Wada Amona Bicholim Ga	1	3	1	1	Amona	452452	t	2024-07-03 10:30:06.976+05:30	2024-07-16 15:39:53.781+05:30
104	225	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-07 13:00:45.607+05:30	2024-08-07 13:00:45.607+05:30
105	166	1	Some address	1	1	1	1	test	403511	t	2024-08-07 17:04:13.961+05:30	2024-08-07 17:04:13.961+05:30
106	166	1	Some address	1	1	1	1	test	403511	t	2024-08-08 11:33:24.372+05:30	2024-08-08 11:33:24.372+05:30
107	166	1	Some address	1	1	1	1	test	403511	t	2024-08-08 11:34:29.341+05:30	2024-08-08 11:34:29.341+05:30
108	166	1	Some address	1	1	1	1	test	403511	t	2024-08-08 11:34:31.751+05:30	2024-08-08 11:34:31.751+05:30
110	239	\N	H No.555 Ambeshi Wada Amona Bicholim Goa	1	3	1	1	Amona	454345	t	2024-08-16 11:01:20.499+05:30	2024-08-16 12:16:06.364+05:30
111	240	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-16 12:25:00.9+05:30	2024-08-16 12:25:00.9+05:30
112	241	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-16 17:12:25.951+05:30	2024-08-16 17:12:25.951+05:30
113	256	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-21 15:36:15.369+05:30	2024-08-21 15:36:15.369+05:30
114	257	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-21 15:58:02.953+05:30	2024-08-21 15:58:02.953+05:30
115	258	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-21 16:01:44.109+05:30	2024-08-21 16:01:44.109+05:30
116	260	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-21 16:02:39.005+05:30	2024-08-21 16:02:39.005+05:30
117	261	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-21 16:33:04.95+05:30	2024-08-21 16:33:04.95+05:30
118	262	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-23 10:56:11.03+05:30	2024-08-23 10:56:11.03+05:30
119	263	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-23 16:33:53.893+05:30	2024-08-23 16:33:53.893+05:30
120	265	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-23 16:34:25.402+05:30	2024-08-23 16:34:25.402+05:30
121	266	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-23 16:34:49.648+05:30	2024-08-23 16:34:49.648+05:30
122	267	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:00:14.408+05:30	2024-08-26 15:00:14.408+05:30
123	268	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:23.468+05:30	2024-08-26 15:06:23.468+05:30
124	269	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:33.404+05:30	2024-08-26 15:06:33.404+05:30
125	270	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:40.021+05:30	2024-08-26 15:06:40.021+05:30
126	271	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:46.937+05:30	2024-08-26 15:06:46.937+05:30
127	272	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:09:06.656+05:30	2024-08-26 15:09:06.656+05:30
128	273	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:09:08.931+05:30	2024-08-26 15:09:08.931+05:30
129	274	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:14:07.875+05:30	2024-08-26 15:14:07.875+05:30
130	275	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:14:24.138+05:30	2024-08-26 15:14:24.138+05:30
131	276	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:16:21.004+05:30	2024-08-26 15:16:21.004+05:30
132	277	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:16:27.669+05:30	2024-08-26 15:16:27.669+05:30
133	278	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:16:32.735+05:30	2024-08-26 15:16:32.735+05:30
134	279	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:17:37.841+05:30	2024-08-26 15:17:37.841+05:30
135	281	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:19:26.102+05:30	2024-08-26 15:19:26.102+05:30
136	282	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:19:43.669+05:30	2024-08-26 15:19:43.669+05:30
137	283	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:20:25.604+05:30	2024-08-26 15:20:25.604+05:30
138	284	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-27 10:51:56.827+05:30	2024-08-27 10:51:56.827+05:30
140	295	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-27 14:31:26.016+05:30	2024-08-27 14:31:26.016+05:30
109	229	\N	H No.555 Ambeshi Wada Amona Bicholim Goa	1	3	1	1	Amona	403105	t	2024-08-09 17:52:13.74+05:30	2024-09-03 17:21:39.138+05:30
3	67	\N	ambeshi wadda amona bichloim goa	1	3	2	4	Taleigao	421542	t	2023-05-15 14:55:41.952+05:30	2024-09-04 15:24:36.808+05:30
148	317	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-04 16:34:23.107+05:30	2024-09-04 16:34:23.107+05:30
141	302	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-27 16:28:39.027+05:30	2024-08-27 16:28:39.027+05:30
142	303	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-27 16:31:28.534+05:30	2024-08-27 16:31:28.534+05:30
149	319	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-10 11:04:53.98+05:30	2024-09-10 11:04:53.98+05:30
150	321	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-13 14:12:31.621+05:30	2024-09-13 14:12:31.621+05:30
151	322	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-13 16:34:12.799+05:30	2024-09-13 16:34:12.799+05:30
153	324	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-13 16:36:58.323+05:30	2024-09-13 16:36:58.323+05:30
154	325	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-13 16:38:16.426+05:30	2024-09-13 16:38:16.426+05:30
155	326	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 12:07:05.508+05:30	2024-09-16 12:07:05.508+05:30
143	304	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-29 12:52:51.843+05:30	2024-08-29 12:52:51.843+05:30
144	305	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-29 12:55:26.622+05:30	2024-08-29 12:55:26.622+05:30
156	328	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 12:09:41.63+05:30	2024-09-16 12:09:41.63+05:30
157	330	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 12:26:33.653+05:30	2024-09-16 12:26:33.653+05:30
158	332	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 12:41:43.609+05:30	2024-09-16 12:41:43.609+05:30
159	333	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 12:44:38.228+05:30	2024-09-16 12:44:38.228+05:30
147	316	\N	goa	1	3	1	1	Navelim	403101	t	2024-09-03 14:43:12.924+05:30	2024-09-03 15:40:45.432+05:30
160	334	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 12:52:15.308+05:30	2024-09-16 12:52:15.308+05:30
145	307	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-29 15:51:08.656+05:30	2024-08-29 15:51:08.656+05:30
146	315	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-29 16:03:06.031+05:30	2024-08-29 16:03:06.031+05:30
161	335	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 13:04:48.114+05:30	2024-09-16 13:04:48.114+05:30
162	336	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 13:05:35.478+05:30	2024-09-16 13:05:35.478+05:30
163	338	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 13:09:58.672+05:30	2024-09-16 13:09:58.672+05:30
164	339	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 13:11:04.423+05:30	2024-09-16 13:11:04.423+05:30
165	341	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-16 13:13:20.464+05:30	2024-09-16 13:13:20.464+05:30
166	343	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-17 15:42:30.211+05:30	2024-09-17 15:42:30.211+05:30
167	345	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-17 15:45:04.021+05:30	2024-09-17 15:45:04.021+05:30
168	346	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-19 15:13:04.442+05:30	2024-09-19 15:13:04.442+05:30
169	348	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-19 15:26:24.212+05:30	2024-09-19 15:26:24.212+05:30
170	353	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-09-20 11:18:49.17+05:30	2024-09-20 11:18:49.17+05:30
139	285	\N	1203	1	3	1	1	Navelim	457123	t	2024-08-27 12:56:17.152+05:30	2024-09-03 14:41:57.585+05:30
\.


--
-- Data for Name: UserDesignations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
9	72	1	\N	t	2023-06-20 16:16:24.104+05:30	2023-06-21 16:21:10.302+05:30
10	74	1	1	t	2023-06-23 15:26:01.306+05:30	2023-06-23 15:26:01.306+05:30
11	75	1	1	t	2023-06-23 15:53:10.388+05:30	2023-06-23 15:53:10.388+05:30
12	76	1	1	t	2023-06-23 16:03:38.708+05:30	2023-06-23 16:03:38.708+05:30
13	79	1	1	t	2023-06-23 17:38:40.142+05:30	2023-06-23 17:38:40.142+05:30
14	82	1	1	t	2023-06-26 10:52:01.121+05:30	2023-06-26 10:52:01.121+05:30
15	83	1	1	t	2023-06-26 10:53:18.708+05:30	2023-06-26 10:53:18.708+05:30
17	97	1	1	t	2023-07-05 10:38:22.746+05:30	2023-07-05 12:52:50.332+05:30
18	101	1	1	t	2023-07-07 10:27:58.641+05:30	2023-07-07 10:30:00.336+05:30
19	102	1	1	t	2023-07-07 13:04:14.54+05:30	2023-07-07 13:06:35.04+05:30
20	109	\N	\N	t	2023-07-13 16:56:13.307+05:30	2023-07-13 16:56:13.307+05:30
21	114	1	1	t	2023-07-17 11:26:40.396+05:30	2023-07-17 11:26:40.396+05:30
22	118	1	\N	t	2023-07-18 13:22:07.139+05:30	2023-07-18 13:22:07.139+05:30
16	96	1	1	t	2023-07-03 10:18:50.294+05:30	2023-09-08 13:27:46.566+05:30
23	167	1	1	t	2023-09-12 11:29:23.192+05:30	2023-09-12 11:29:23.192+05:30
24	170	1	1	t	2023-09-13 10:21:30.716+05:30	2023-09-13 10:21:30.716+05:30
25	172	1	1	t	2023-09-13 10:27:22.974+05:30	2023-09-13 10:27:22.974+05:30
26	174	\N	\N	t	2023-09-13 11:03:14.925+05:30	2023-09-13 11:03:14.925+05:30
27	177	1	1	t	2023-09-13 11:10:01.562+05:30	2023-09-13 11:10:01.562+05:30
28	179	1	1	t	2023-09-13 11:13:11.159+05:30	2023-09-13 11:13:11.159+05:30
29	187	1	1	t	2023-10-12 14:10:21.769+05:30	2023-10-12 14:10:21.769+05:30
30	188	1	1	t	2023-10-12 14:14:33.056+05:30	2023-10-12 14:14:33.056+05:30
31	193	1	1	t	2023-10-13 13:25:43.564+05:30	2023-10-13 13:25:43.564+05:30
32	231	\N	\N	t	2024-08-14 15:59:33.235+05:30	2024-08-14 15:59:33.235+05:30
33	232	\N	\N	t	2024-08-14 16:03:17.011+05:30	2024-08-14 16:03:17.011+05:30
34	235	\N	\N	t	2024-08-14 16:06:08.469+05:30	2024-08-14 16:06:08.469+05:30
35	236	1	\N	t	2024-08-14 16:08:00.851+05:30	2024-08-14 16:08:00.851+05:30
36	237	1	\N	t	2024-08-14 16:20:56.619+05:30	2024-08-14 16:20:56.619+05:30
37	240	1	2	t	2024-08-16 12:25:00.906+05:30	2024-08-16 12:25:00.906+05:30
38	241	1	1	t	2024-08-16 17:12:25.961+05:30	2024-08-16 17:12:25.961+05:30
39	243	1	\N	t	2024-08-19 13:09:50.42+05:30	2024-08-19 13:09:50.42+05:30
40	244	1	\N	t	2024-08-19 13:11:35.403+05:30	2024-08-19 13:11:35.403+05:30
41	245	1	\N	t	2024-08-19 13:22:19.596+05:30	2024-08-19 13:22:19.596+05:30
42	246	1	\N	t	2024-08-19 13:23:00.347+05:30	2024-08-19 13:23:00.347+05:30
43	247	1	\N	t	2024-08-19 13:24:20.17+05:30	2024-08-19 13:24:20.17+05:30
44	248	1	\N	t	2024-08-19 15:42:31.835+05:30	2024-08-19 15:42:31.835+05:30
45	249	1	\N	t	2024-08-19 15:43:08.15+05:30	2024-08-19 15:43:08.15+05:30
46	251	1	\N	t	2024-08-19 16:33:33.14+05:30	2024-08-19 16:33:33.14+05:30
47	252	1	\N	t	2024-08-21 10:47:48.42+05:30	2024-08-21 10:47:48.42+05:30
48	253	\N	\N	t	2024-08-21 11:15:58.985+05:30	2024-08-21 11:15:58.985+05:30
49	255	\N	\N	t	2024-08-21 11:22:39.378+05:30	2024-08-21 11:22:39.378+05:30
51	302	1	1	t	2024-08-27 16:28:39.038+05:30	2024-08-27 16:28:39.038+05:30
52	303	1	1	t	2024-08-27 16:31:28.539+05:30	2024-08-27 16:45:01.308+05:30
50	295	1	2	t	2024-08-27 14:31:26.022+05:30	2024-08-27 16:47:04.813+05:30
\.


--
-- Data for Name: UserDocs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
63	97	1	user_1688549820538.png	2023-07-05 15:07:00.542+05:30	2023-07-05 15:07:00.542+05:30	\N	t
185	115	13	user_1689588104051.png	2023-07-17 15:31:44.056+05:30	2023-07-17 15:31:44.056+05:30	\N	t
1031	67	10	user_document-1725362436256.pdf	2024-09-03 16:50:36.267+05:30	2024-09-03 16:50:36.267+05:30	\N	t
186	115	10	user_1689588136078.png	2023-07-17 15:32:16.084+05:30	2023-07-17 15:32:16.084+05:30	\N	t
5	80	1	user_1687754600723.png	2023-06-26 10:13:20.77+05:30	2023-06-26 10:13:20.772+05:30	\N	t
6	81	1	user_1687755376684.pdf	2023-06-26 10:26:16.881+05:30	2023-06-26 10:26:16.882+05:30	\N	t
7	92	1	user_1687762804334.png	2023-06-26 12:30:04.44+05:30	2023-06-26 12:30:04.44+05:30	\N	t
479	166	18	user_1694415928472_pngtransparent.png	2023-09-11 12:35:28.475+05:30	2023-09-11 12:35:28.475+05:30	\N	t
1032	67	10	user_document-1725362440260.pdf	2024-09-03 16:50:40.267+05:30	2024-09-03 16:50:40.267+05:30	\N	t
236	116	1	user_1691749477589_Rhugveda.jpg	2023-08-11 15:54:37.616+05:30	2023-08-11 15:54:37.617+05:30	\N	t
73	101	1	user_1688705943556.png	2023-07-07 10:29:03.558+05:30	2023-07-07 10:29:03.558+05:30	\N	t
237	116	10	user_1691749798630_pngtransparent.png	2023-08-11 15:59:58.637+05:30	2023-08-11 15:59:58.638+05:30	\N	t
238	116	2	user_1691749852899_pngtransparent.png	2023-08-11 16:00:52.905+05:30	2023-08-11 16:00:52.906+05:30	\N	t
192	116	22	user_1691055053916.pdf	2023-08-03 12:07:23.036+05:30	2023-08-03 15:00:53.94+05:30	\N	t
240	116	18	user_1691750910151_pngtransparent.png	2023-08-11 16:18:30.173+05:30	2023-08-11 16:18:30.174+05:30	\N	t
246	78	22	user_1694756457537.pdf	2023-08-16 16:03:44.855+05:30	2023-09-15 11:10:57.715+05:30	\N	t
81	102	1	user_1688715347066.png	2023-07-07 13:05:47.078+05:30	2023-07-07 13:05:47.078+05:30	\N	t
245	116	19	user_1692181683444_pngtransparent.png	2023-08-16 15:58:03.447+05:30	2023-08-16 15:58:03.447+05:30	\N	t
514	73	21	offer_1697191587055_sample.pdf	2023-10-13 15:36:27.107+05:30	2023-10-13 15:36:27.174+05:30	\N	t
250	116	20	user_1692182147693_pngtransparent.png	2023-08-16 16:05:47.699+05:30	2023-08-16 16:05:47.7+05:30	\N	t
389	158	18	user_1693562046968_pngtransparent.png	2023-09-01 15:24:06.972+05:30	2023-09-01 15:24:06.972+05:30	\N	t
390	158	19	user_1693562078503_pngtransparent.png	2023-09-01 15:24:38.507+05:30	2023-09-01 15:24:38.507+05:30	\N	t
391	158	20	user_1693562116755_pngtransparent.png	2023-09-01 15:25:16.759+05:30	2023-09-01 15:25:16.759+05:30	\N	t
392	158	23	user_1693562414842_pngtransparent.png	2023-09-01 15:30:14.846+05:30	2023-09-01 15:30:14.846+05:30	\N	t
515	73	21	offer_1697193863859_sample.pdf	2023-10-13 16:14:23.909+05:30	2023-10-13 16:14:23.909+05:30	\N	t
510	73	21	offer_1694779043750_sample.pdf	2023-09-15 17:27:23.755+05:30	2023-09-15 17:27:23.755+05:30	\N	t
516	73	21	offer_1697194655920_sample.pdf	2023-10-13 16:27:35.997+05:30	2023-10-13 16:27:35.998+05:30	\N	t
518	195	1	user_1697693953321_Rhugveda.jpg	2023-10-19 11:09:13.34+05:30	2023-10-19 11:09:13.342+05:30	\N	t
519	73	21	offer_1698988830004_sample.pdf	2023-11-03 10:50:30.016+05:30	2023-11-03 10:50:30.018+05:30	\N	t
671	174	30	user_document-1721819000524.pdf	2024-07-24 16:33:20.527+05:30	2024-07-24 16:33:20.527+05:30	\N	t
434	158	22	user_1694000410376.pdf	2023-09-06 17:10:10.497+05:30	2023-09-06 17:10:10.497+05:30	\N	t
500	178	1	user_1694584028443_Rhugveda.jpg	2023-09-13 11:17:08.448+05:30	2023-09-13 11:17:08.448+05:30	\N	t
366	120	1	user_1692681927737_Rhugveda.jpg	2023-08-22 10:55:32.002+05:30	2023-08-22 10:55:32.005+05:30	\N	t
367	120	2	user_1692682558527_pngtransparent.png	2023-08-22 11:05:58.53+05:30	2023-08-22 11:05:58.531+05:30	\N	t
368	120	18	user_1692684338388_pngtransparent.png	2023-08-22 11:35:38.392+05:30	2023-08-22 11:35:38.393+05:30	\N	t
501	178	2	user_1694584095048_pngtransparent.png	2023-09-13 11:18:15.053+05:30	2023-09-13 11:18:15.053+05:30	\N	t
440	165	1	user_1694076859594_Rhugveda.jpg	2023-09-07 14:24:19.599+05:30	2023-09-07 14:24:19.599+05:30	\N	t
441	165	2	user_1694076923706_pngtransparent.png	2023-09-07 14:25:23.709+05:30	2023-09-07 14:25:23.709+05:30	\N	t
61	96	1	user_1688549607100.png	2023-07-05 15:03:27.106+05:30	2023-07-05 15:03:27.106+05:30	\N	t
442	165	13	user_1694076963152_pngtransparent.png	2023-09-07 14:26:03.173+05:30	2023-09-07 14:26:03.173+05:30	\N	t
443	165	18	user_1694077125144_pngtransparent.png	2023-09-07 14:28:45.158+05:30	2023-09-07 14:28:45.158+05:30	\N	t
502	178	18	user_1694584620892_pngtransparent.png	2023-09-13 11:27:00.918+05:30	2023-09-13 11:27:00.918+05:30	\N	t
175	110	2	user_1689311644115.png	2023-07-14 10:44:04.12+05:30	2023-07-14 10:44:04.12+05:30	\N	t
503	180	6	user_1694586325961_sample - Copy (2).pdf	2023-09-13 11:55:25.977+05:30	2023-09-13 11:55:25.977+05:30	\N	t
378	121	2	user_1693308398323_pngtransparent.png	2023-08-29 16:56:38.33+05:30	2023-08-29 16:56:38.331+05:30	\N	t
174	110	1	user_1689311721284.png	2023-07-14 10:42:58.308+05:30	2023-07-14 10:45:21.289+05:30	\N	t
177	111	8	user_1689314230781.png	2023-07-14 11:27:10.794+05:30	2023-07-14 11:27:10.794+05:30	\N	t
178	111	6	user_1689314274157.pdf	2023-07-14 11:27:54.16+05:30	2023-07-14 11:27:54.16+05:30	\N	t
521	73	21	offer_1698989093336_sample.pdf	2023-11-03 10:54:53.343+05:30	2023-11-03 10:54:53.345+05:30	\N	t
182	115	2	user_1689585240648.png	2023-07-17 14:44:00.654+05:30	2023-07-17 14:44:00.654+05:30	\N	t
181	115	1	user_1689585356643.png	2023-07-17 13:04:06.588+05:30	2023-07-17 14:45:56.647+05:30	\N	t
379	119	1	user_1693310066087_Rhugveda.jpg	2023-08-29 17:24:26.091+05:30	2023-08-29 17:24:26.093+05:30	\N	t
380	119	2	user_1693310205725_pngtransparent.png	2023-08-29 17:26:45.731+05:30	2023-08-29 17:26:45.732+05:30	\N	t
381	119	18	user_1693377172597_pngtransparent.png	2023-08-30 12:02:52.604+05:30	2023-08-30 12:02:52.605+05:30	\N	t
382	158	1	user_1693561685346_Rhugveda.jpg	2023-09-01 15:18:05.373+05:30	2023-09-01 15:18:05.373+05:30	\N	t
383	158	2	user_1693561709259_pngtransparent.png	2023-09-01 15:18:29.262+05:30	2023-09-01 15:18:29.262+05:30	\N	t
384	158	13	user_1693561762596_pngtransparent.png	2023-09-01 15:19:22.599+05:30	2023-09-01 15:19:22.599+05:30	\N	t
385	158	11	user_1693561812567_pngtransparent.png	2023-09-01 15:20:12.583+05:30	2023-09-01 15:20:12.583+05:30	\N	t
522	73	21	offer_1698989345252_sample.pdf	2023-11-03 10:59:05.26+05:30	2023-11-03 10:59:05.262+05:30	\N	t
523	73	21	offer_1699005116574_sample.pdf	2023-11-03 15:21:56.729+05:30	2023-11-03 15:21:56.77+05:30	\N	t
420	164	22	signed-user_1693981912594.pdf	2023-10-12 16:12:09.02+05:30	2023-10-12 16:12:09.02+05:30	\N	t
475	73	21	offer_1694169139952_sample.pdf	2023-09-08 16:02:20.029+05:30	2023-09-08 16:02:20.03+05:30	\N	t
476	78	18	user_1694172240775_pngtransparent.png	2023-09-08 16:54:01.061+05:30	2023-09-08 16:54:01.062+05:30	\N	t
512	73	21	offer_1697187503439_sample.pdf	2023-10-13 14:28:23.516+05:30	2023-10-13 14:28:23.518+05:30	\N	t
513	73	21	offer_1697187825294_sample.pdf	2023-10-13 14:33:45.3+05:30	2023-10-13 14:33:45.301+05:30	\N	t
406	158	10	user_1693570101568_default_logo.png	2023-09-01 17:38:21.661+05:30	2023-09-01 17:38:21.662+05:30	\N	t
677	78	26	user_document-1721884903531.pdf	2024-07-25 10:51:43.534+05:30	2024-07-25 10:51:43.534+05:30	\N	t
600	212	26	user_document-1720004315589.pdf	2024-07-03 16:28:35.77+05:30	2024-07-03 16:28:35.77+05:30	\N	t
601	212	1	user_document-1720006434728.jpg	2024-07-03 17:03:54.768+05:30	2024-07-03 17:03:54.768+05:30	\N	t
602	212	25	user_document-1720006434729.pdf	2024-07-03 17:03:54.812+05:30	2024-07-03 17:03:54.813+05:30	\N	t
603	212	2	user_document-1720069925170.jpg	2024-07-04 10:42:05.177+05:30	2024-07-04 10:42:05.178+05:30	\N	t
604	212	11	user_document-1720069989468.jpeg	2024-07-04 10:43:09.472+05:30	2024-07-04 10:43:09.472+05:30	\N	t
679	78	30	user_document-1721899734260.pdf	2024-07-25 14:58:54.264+05:30	2024-07-25 14:58:54.265+05:30	\N	t
681	78	30	user_document-1721899860955.pdf	2024-07-25 15:01:00.957+05:30	2024-07-25 15:01:00.957+05:30	\N	t
683	78	30	user_document-1721902039951.pdf	2024-07-25 15:37:19.959+05:30	2024-07-25 15:37:19.96+05:30	\N	t
685	78	30	user_document-1721905057718.pdf	2024-07-25 16:27:37.722+05:30	2024-07-25 16:27:37.723+05:30	\N	t
687	78	30	user_document-1721905667948.pdf	2024-07-25 16:37:47.95+05:30	2024-07-25 16:37:47.954+05:30	\N	t
689	78	30	user_document-1721906468136.pdf	2024-07-25 16:51:08.14+05:30	2024-07-25 16:51:08.144+05:30	\N	t
691	78	30	user_document-1721907083989.pdf	2024-07-25 17:01:23.994+05:30	2024-07-25 17:01:23.997+05:30	\N	t
477	166	1	user_document-1722855314503.jpg	2024-08-05 16:25:14.513+05:30	2024-08-05 16:25:14.513+05:30	\N	t
545	174	1	user_doc-1719834411342.jpg	2024-07-01 17:16:51.346+05:30	2024-07-01 17:16:51.347+05:30	\N	t
560	174	25	user_doc-1719898077612.jpg	2024-07-02 10:57:57.622+05:30	2024-07-02 10:57:57.622+05:30	\N	t
561	174	25	user_doc-1719903124206.jpg	2024-07-02 12:22:04.211+05:30	2024-07-02 12:22:04.212+05:30	\N	t
562	174	22	user_document-1719903259779.png	2024-07-02 12:24:19.786+05:30	2024-07-02 12:24:19.787+05:30	\N	t
578	210	1	user_document-1719921344557.jpg	2024-07-02 17:25:44.568+05:30	2024-07-02 17:25:44.569+05:30	\N	t
1033	67	10	user_document-1725362442732.pdf	2024-09-03 16:50:42.739+05:30	2024-09-03 16:50:42.739+05:30	\N	t
1034	67	10	user_document-1725362457315.pdf	2024-09-03 16:50:57.342+05:30	2024-09-03 16:50:57.342+05:30	\N	t
676	174	30	user_document-1721884685453.pdf	2024-07-25 10:48:05.456+05:30	2024-07-25 10:48:05.457+05:30	\N	t
798	67	11	user_document-1723549730502.pdf	2024-08-13 17:18:50.559+05:30	2024-08-13 17:18:50.56+05:30	\N	t
680	78	30	user_document-1721899773084.pdf	2024-07-25 14:59:33.087+05:30	2024-07-25 14:59:33.088+05:30	\N	t
682	78	30	user_document-1721900174896.pdf	2024-07-25 15:06:14.9+05:30	2024-07-25 15:06:14.901+05:30	\N	t
684	78	30	user_document-1721902104545.pdf	2024-07-25 15:38:25.505+05:30	2024-07-25 15:38:25.506+05:30	\N	t
686	78	30	user_document-1721905149247.pdf	2024-07-25 16:29:09.25+05:30	2024-07-25 16:29:09.251+05:30	\N	t
688	78	30	user_document-1721905803660.pdf	2024-07-25 16:40:03.664+05:30	2024-07-25 16:40:03.666+05:30	\N	t
690	78	30	user_document-1721907005005.pdf	2024-07-25 17:00:05.007+05:30	2024-07-25 17:00:05.009+05:30	\N	t
692	78	30	user_document-1721907128976.pdf	2024-07-25 17:02:08.978+05:30	2024-07-25 17:02:08.978+05:30	\N	t
693	78	30	user_document-1721907256218.pdf	2024-07-25 17:04:16.222+05:30	2024-07-25 17:04:16.223+05:30	\N	t
694	78	30	user_document-1721907281727.pdf	2024-07-25 17:04:41.73+05:30	2024-07-25 17:04:41.73+05:30	\N	t
1042	229	1	user_document-1725364033986.png	2024-09-03 17:17:13.989+05:30	2024-09-03 17:17:13.989+05:30	\N	t
696	78	10	user_document-1721984459373.pdf	2024-07-26 14:30:59.377+05:30	2024-07-26 14:30:59.378+05:30	\N	t
697	78	10	user_document-1721985294172.pdf	2024-07-26 14:44:54.177+05:30	2024-07-26 14:44:54.177+05:30	\N	t
698	78	10	user_document-1721985950772.pdf	2024-07-26 14:55:50.779+05:30	2024-07-26 14:55:50.78+05:30	\N	t
699	78	10	user_document-1721986057342.pdf	2024-07-26 14:57:37.346+05:30	2024-07-26 14:57:37.347+05:30	\N	t
700	78	10	user_document-1721987532103.pdf	2024-07-26 15:22:12.104+05:30	2024-07-26 15:22:12.104+05:30	\N	t
799	67	16	user_document-1723550362702.pdf	2024-08-13 17:29:22.81+05:30	2024-08-13 17:29:22.81+05:30	\N	t
800	67	14	user_document-1723551022444.pdf	2024-08-13 17:40:22.575+05:30	2024-08-13 17:40:22.575+05:30	\N	t
801	67	9	user_document-1723551499741.pdf	2024-08-13 17:48:19.836+05:30	2024-08-13 17:48:19.837+05:30	\N	t
1043	229	25	user_document-1725364033978.pdf	2024-09-03 17:17:13.99+05:30	2024-09-03 17:17:13.99+05:30	\N	t
1046	229	26	user_document-1725364057237.pdf	2024-09-03 17:17:37.246+05:30	2024-09-03 17:17:37.246+05:30	\N	t
704	78	10	user_document-1722232611073.png	2024-07-29 11:26:51.081+05:30	2024-07-29 11:26:51.084+05:30	\N	t
705	78	10	user_document-1722236752557.pdf	2024-07-29 12:35:52.559+05:30	2024-07-29 12:35:52.56+05:30	\N	t
802	67	15	user_document-1723552092260.pdf	2024-08-13 17:58:12.269+05:30	2024-08-13 17:58:12.269+05:30	\N	t
179	78	29	user_document-1722244715807.pdf	2024-07-29 14:48:35.816+05:30	2024-07-29 14:48:35.817+05:30	\N	t
706	78	53	user_document-1722251058071.pdf	2024-07-29 16:34:18.076+05:30	2024-07-29 16:34:18.077+05:30	\N	t
707	78	53	user_document-1722316554659.pdf	2024-07-30 10:45:54.663+05:30	2024-07-30 10:45:54.664+05:30	\N	t
708	78	53	user_document-1722316651422.pdf	2024-07-30 10:47:31.426+05:30	2024-07-30 10:47:31.426+05:30	\N	t
709	78	30	user_document-1722318704016.pdf	2024-07-30 11:21:44.038+05:30	2024-07-30 11:21:44.038+05:30	\N	t
710	78	30	user_document-1722319005406.pdf	2024-07-30 11:26:45.428+05:30	2024-07-30 11:26:45.428+05:30	\N	t
711	78	30	user_document-1722319200747.pdf	2024-07-30 11:30:00.817+05:30	2024-07-30 11:30:00.817+05:30	\N	t
712	78	30	user_document-1722319374048.pdf	2024-07-30 11:32:54.08+05:30	2024-07-30 11:32:54.08+05:30	\N	t
713	78	30	user_document-1722319576853.pdf	2024-07-30 11:36:16.865+05:30	2024-07-30 11:36:16.865+05:30	\N	t
714	78	30	user_document-1722319644338.pdf	2024-07-30 11:37:24.404+05:30	2024-07-30 11:37:24.405+05:30	\N	t
715	78	30	user_document-1722320143491.pdf	2024-07-30 11:45:43.498+05:30	2024-07-30 11:45:43.499+05:30	\N	t
716	78	30	user_document-1722320284548.pdf	2024-07-30 11:48:04.575+05:30	2024-07-30 11:48:04.576+05:30	\N	t
803	67	12	user_document-1723552186742.pdf	2024-08-13 17:59:46.792+05:30	2024-08-13 17:59:46.792+05:30	\N	t
718	78	30	user_document-1722322721186.pdf	2024-07-30 12:28:41.19+05:30	2024-07-30 12:28:41.192+05:30	\N	t
719	78	30	user_document-1722323609762.pdf	2024-07-30 12:43:29.765+05:30	2024-07-30 12:43:29.766+05:30	\N	t
804	67	16	user_document-1723552248032.pdf	2024-08-13 18:00:48.077+05:30	2024-08-13 18:00:48.077+05:30	\N	t
721	78	26	user_document-1722575553312.png	2024-08-02 10:42:33.321+05:30	2024-08-02 10:42:33.321+05:30	\N	t
812	239	1	user_document-1723790766405.jpg	2024-08-16 12:16:06.417+05:30	2024-08-16 12:16:06.419+05:30	\N	t
813	239	25	user_document-1723790766403.pdf	2024-08-16 12:16:06.581+05:30	2024-08-16 12:16:06.581+05:30	\N	t
814	239	26	user_document-1723790766406.pdf	2024-08-16 12:16:06.666+05:30	2024-08-16 12:16:06.667+05:30	\N	t
822	67	33	user_document-1724153476224.pdf	2024-08-20 17:01:16.291+05:30	2024-08-20 17:01:16.291+05:30	\N	t
823	67	12	user_document-1724216202992.pdf	2024-08-21 10:26:42.997+05:30	2024-08-21 10:26:42.997+05:30	\N	t
838	67	34	user_document-1724232347364.pdf	2024-08-21 14:55:47.412+05:30	2024-08-21 14:55:47.413+05:30	\N	t
839	229	34	user_document-1724232810850.png	2024-08-21 15:03:30.879+05:30	2024-08-21 15:03:30.88+05:30	\N	t
859	229	9	user_document-1724323596548.pdf	2024-08-22 16:16:36.708+05:30	2024-08-22 16:16:36.708+05:30	\N	t
846	261	34	user_document-1724243551738.jpeg	2024-08-21 18:02:31.761+05:30	2024-08-21 18:02:31.761+05:30	\N	t
851	229	1	user_document-1724306219268.jpg	2024-08-22 11:26:59.277+05:30	2024-08-22 11:26:59.278+05:30	\N	t
852	229	26	user_document-1724306219267.pdf	2024-08-22 11:26:59.392+05:30	2024-08-22 11:26:59.392+05:30	\N	t
853	229	25	user_document-1724306219270.pdf	2024-08-22 11:26:59.394+05:30	2024-08-22 11:26:59.394+05:30	\N	t
854	67	34	user_document-1724307169468.png	2024-08-22 11:42:49.492+05:30	2024-08-22 11:42:49.492+05:30	\N	t
855	229	2	user_document-1724309160061.pdf	2024-08-22 12:16:00.168+05:30	2024-08-22 12:16:00.17+05:30	\N	t
856	229	10	user_document-1724311065477.pdf	2024-08-22 12:47:45.588+05:30	2024-08-22 12:47:45.589+05:30	\N	t
857	229	11	user_document-1724320022221.pdf	2024-08-22 15:17:02.323+05:30	2024-08-22 15:17:02.323+05:30	\N	t
858	229	15	user_document-1724321994519.pdf	2024-08-22 15:49:54.663+05:30	2024-08-22 15:49:54.663+05:30	\N	t
862	229	32	user_document-1724323766862.pdf	2024-08-22 16:19:26.941+05:30	2024-08-22 16:19:26.941+05:30	\N	t
863	229	32	user_document-1724323766944.pdf	2024-08-22 16:19:26.989+05:30	2024-08-22 16:19:26.989+05:30	\N	t
864	229	31	user_document-1724415125954.pdf	2024-08-23 17:42:06.006+05:30	2024-08-23 17:42:06.007+05:30	\N	t
865	229	31	user_document-1724415125996.pdf	2024-08-23 17:42:06.05+05:30	2024-08-23 17:42:06.05+05:30	\N	t
872	285	25	user_document-1724751731250.pdf	2024-08-27 15:12:11.266+05:30	2024-08-27 15:12:11.267+05:30	\N	t
873	285	2	user_document-1724752113795.pdf	2024-08-27 15:18:33.799+05:30	2024-08-27 15:18:33.8+05:30	\N	t
874	285	13	user_document-1724752191039.pdf	2024-08-27 15:19:51.056+05:30	2024-08-27 15:19:51.056+05:30	\N	t
875	285	12	user_document-1724752299909.pdf	2024-08-27 15:21:39.924+05:30	2024-08-27 15:21:39.925+05:30	\N	t
876	285	12	user_document-1724753949646.pdf	2024-08-27 15:49:09.653+05:30	2024-08-27 15:49:09.654+05:30	\N	t
877	285	31	user_document-1724754131864.pdf	2024-08-27 15:52:11.875+05:30	2024-08-27 15:52:11.876+05:30	\N	t
878	285	31	user_document-1724754131895.pdf	2024-08-27 15:52:11.9+05:30	2024-08-27 15:52:11.901+05:30	\N	t
879	285	32	user_document-1724754131922.pdf	2024-08-27 15:52:11.923+05:30	2024-08-27 15:52:11.923+05:30	\N	t
880	285	32	user_document-1724754131902.pdf	2024-08-27 15:52:11.927+05:30	2024-08-27 15:52:11.928+05:30	\N	t
881	229	13	user_document-1724754307728.pdf	2024-08-27 15:55:07.816+05:30	2024-08-27 15:55:07.817+05:30	\N	t
882	229	14	user_document-1724754525865.pdf	2024-08-27 15:58:45.923+05:30	2024-08-27 15:58:45.925+05:30	\N	t
883	229	9	user_document-1724754605389.pdf	2024-08-27 16:00:05.461+05:30	2024-08-27 16:00:05.462+05:30	\N	t
884	285	2	user_document-1724755019082.pdf	2024-08-27 16:06:59.093+05:30	2024-08-27 16:06:59.096+05:30	\N	t
885	285	2	user_document-1724755099316.pdf	2024-08-27 16:08:19.325+05:30	2024-08-27 16:08:19.329+05:30	\N	t
886	285	24	user_document-1724755177079.pdf	2024-08-27 16:09:37.114+05:30	2024-08-27 16:09:37.116+05:30	\N	t
887	285	24	user_document-1724755178887.pdf	2024-08-27 16:09:38.9+05:30	2024-08-27 16:09:38.901+05:30	\N	t
888	285	13	user_document-1724755546839.pdf	2024-08-27 16:15:46.852+05:30	2024-08-27 16:15:46.853+05:30	\N	t
889	67	12	user_document-1724755688797.pdf	2024-08-27 16:18:08.839+05:30	2024-08-27 16:18:08.841+05:30	\N	t
890	229	2	user_document-1724756390636.pdf	2024-08-27 16:29:50.83+05:30	2024-08-27 16:29:50.831+05:30	\N	t
891	67	10	user_document-1724838190703.pdf	2024-08-28 15:13:10.764+05:30	2024-08-28 15:13:10.766+05:30	\N	t
892	67	10	user_document-1724838289183.pdf	2024-08-28 15:14:49.247+05:30	2024-08-28 15:14:49.247+05:30	\N	t
893	67	10	user_document-1724838377690.pdf	2024-08-28 15:16:17.789+05:30	2024-08-28 15:16:17.79+05:30	\N	t
894	67	10	user_document-1724838535346.pdf	2024-08-28 15:18:55.395+05:30	2024-08-28 15:18:55.395+05:30	\N	t
895	67	2	user_document-1724841711512.pdf	2024-08-28 16:11:51.556+05:30	2024-08-28 16:11:51.556+05:30	\N	t
896	67	13	user_document-1724841998888.pdf	2024-08-28 16:16:38.934+05:30	2024-08-28 16:16:38.935+05:30	\N	t
897	67	10	user_document-1724842236287.pdf	2024-08-28 16:20:36.296+05:30	2024-08-28 16:20:36.298+05:30	\N	t
898	67	2	user_document-1724842363042.pdf	2024-08-28 16:22:43.101+05:30	2024-08-28 16:22:43.101+05:30	\N	t
899	67	10	user_document-1724842465626.pdf	2024-08-28 16:24:25.691+05:30	2024-08-28 16:24:25.692+05:30	\N	t
900	67	10	user_document-1724842734972.pdf	2024-08-28 16:28:55.068+05:30	2024-08-28 16:28:55.068+05:30	\N	t
901	67	2	user_document-1724843502021.pdf	2024-08-28 16:41:42.106+05:30	2024-08-28 16:41:42.107+05:30	\N	t
902	67	10	user_document-1724843551304.pdf	2024-08-28 16:42:31.351+05:30	2024-08-28 16:42:31.351+05:30	\N	t
903	229	0	user_document-1724844732855.pdf	2024-08-28 17:02:12.945+05:30	2024-08-28 17:02:12.946+05:30	\N	t
904	229	0	user_document-1724844758523.pdf	2024-08-28 17:02:38.627+05:30	2024-08-28 17:02:38.627+05:30	\N	t
905	67	12	user_document-1724844789795.pdf	2024-08-28 17:03:09.803+05:30	2024-08-28 17:03:09.804+05:30	\N	t
906	67	9	user_document-1724845012967.pdf	2024-08-28 17:06:52.976+05:30	2024-08-28 17:06:52.977+05:30	\N	t
907	67	10	user_document-1724845224754.pdf	2024-08-28 17:10:24.757+05:30	2024-08-28 17:10:24.757+05:30	\N	t
908	229	0	user_document-1724845396625.pdf	2024-08-28 17:13:16.876+05:30	2024-08-28 17:13:16.876+05:30	\N	t
909	67	10	user_document-1724845457709.pdf	2024-08-28 17:14:17.732+05:30	2024-08-28 17:14:17.733+05:30	\N	t
910	67	10	user_document-1724845460268.pdf	2024-08-28 17:14:20.277+05:30	2024-08-28 17:14:20.278+05:30	\N	t
911	229	0	user_document-1724845460285.pdf	2024-08-28 17:14:20.457+05:30	2024-08-28 17:14:20.457+05:30	\N	t
912	67	10	user_document-1724845690863.pdf	2024-08-28 17:18:10.867+05:30	2024-08-28 17:18:10.868+05:30	\N	t
913	229	1	user_document-1724906248615.jpg	2024-08-29 10:07:28.627+05:30	2024-08-29 10:07:28.629+05:30	\N	t
914	229	25	user_document-1724906248608.pdf	2024-08-29 10:07:28.743+05:30	2024-08-29 10:07:28.743+05:30	\N	t
915	229	26	user_document-1724906248612.pdf	2024-08-29 10:07:28.753+05:30	2024-08-29 10:07:28.754+05:30	\N	t
916	229	10	user_document-1724906316869.pdf	2024-08-29 10:08:36.923+05:30	2024-08-29 10:08:36.923+05:30	\N	t
917	229	0	user_document-1724906474136.pdf	2024-08-29 10:11:14.2+05:30	2024-08-29 10:11:14.2+05:30	\N	t
918	229	0	user_document-1724908228449.pdf	2024-08-29 10:40:28.473+05:30	2024-08-29 10:40:28.474+05:30	\N	t
920	229	0	user_document-1724911011263.pdf	2024-08-29 11:26:51.352+05:30	2024-08-29 11:26:51.354+05:30	\N	t
921	229	0	user_document-1724911153506.pdf	2024-08-29 11:29:13.573+05:30	2024-08-29 11:29:13.573+05:30	\N	t
922	229	0	user_document-1724914618911.pdf	2024-08-29 12:26:58.976+05:30	2024-08-29 12:26:58.977+05:30	\N	t
927	229	0	user_document-1724914845746.pdf	2024-08-29 12:30:45.823+05:30	2024-08-29 12:30:45.823+05:30	\N	t
928	229	0	user_document-1724915125275.pdf	2024-08-29 12:35:25.325+05:30	2024-08-29 12:35:25.325+05:30	\N	t
929	229	0	user_document-1724915204574.pdf	2024-08-29 12:36:44.691+05:30	2024-08-29 12:36:44.691+05:30	\N	t
930	229	0	user_document-1724915285890.pdf	2024-08-29 12:38:05.963+05:30	2024-08-29 12:38:05.964+05:30	\N	t
931	229	0	user_document-1724915290376.pdf	2024-08-29 12:38:10.415+05:30	2024-08-29 12:38:10.416+05:30	\N	t
932	229	0	user_document-1724915304366.pdf	2024-08-29 12:38:24.401+05:30	2024-08-29 12:38:24.401+05:30	\N	t
933	229	0	user_document-1724915837338.pdf	2024-08-29 12:47:17.47+05:30	2024-08-29 12:47:17.47+05:30	\N	t
934	67	16	user_document-1724916225680.pdf	2024-08-29 12:53:45.685+05:30	2024-08-29 12:53:45.686+05:30	\N	t
935	67	16	user_document-1724916314198.pdf	2024-08-29 12:55:14.246+05:30	2024-08-29 12:55:14.248+05:30	\N	t
936	67	14	user_document-1724916635708.pdf	2024-08-29 13:00:35.724+05:30	2024-08-29 13:00:35.724+05:30	\N	t
937	67	14	user_document-1724916640580.pdf	2024-08-29 13:00:40.594+05:30	2024-08-29 13:00:40.594+05:30	\N	t
938	67	14	user_document-1724916657855.pdf	2024-08-29 13:00:57.865+05:30	2024-08-29 13:00:57.866+05:30	\N	t
939	67	14	user_document-1724916826253.pdf	2024-08-29 13:03:46.264+05:30	2024-08-29 13:03:46.265+05:30	\N	t
940	67	14	user_document-1724916997923.pdf	2024-08-29 13:06:37.925+05:30	2024-08-29 13:06:37.925+05:30	\N	t
941	67	14	user_document-1724917004921.pdf	2024-08-29 13:06:44.94+05:30	2024-08-29 13:06:44.941+05:30	\N	t
942	67	14	user_document-1724917005197.pdf	2024-08-29 13:06:45.205+05:30	2024-08-29 13:06:45.206+05:30	\N	t
943	67	14	user_document-1724917046435.pdf	2024-08-29 13:07:26.437+05:30	2024-08-29 13:07:26.438+05:30	\N	t
944	67	14	user_document-1724917177204.pdf	2024-08-29 13:09:37.206+05:30	2024-08-29 13:09:37.207+05:30	\N	t
947	229	11	user_document-1724924979459.pdf	2024-08-29 15:19:39.515+05:30	2024-08-29 15:19:39.516+05:30	\N	t
948	229	11	user_document-1724926915361.pdf	2024-08-29 15:51:55.433+05:30	2024-08-29 15:51:55.434+05:30	\N	t
949	229	11	user_document-1724927528685.pdf	2024-08-29 16:02:08.738+05:30	2024-08-29 16:02:08.738+05:30	\N	t
950	229	9	user_document-1724928511793.pdf	2024-08-29 16:18:31.879+05:30	2024-08-29 16:18:31.88+05:30	\N	t
951	229	9	user_document-1724928532030.pdf	2024-08-29 16:18:52.115+05:30	2024-08-29 16:18:52.115+05:30	\N	t
952	229	9	user_document-1724928568346.pdf	2024-08-29 16:19:28.431+05:30	2024-08-29 16:19:28.432+05:30	\N	t
953	229	9	user_document-1724928831705.pdf	2024-08-29 16:23:51.778+05:30	2024-08-29 16:23:51.778+05:30	\N	t
955	229	12	user_document-1724928953943.pdf	2024-08-29 16:25:54.055+05:30	2024-08-29 16:25:54.055+05:30	\N	t
958	229	16	user_document-1724930841646.pdf	2024-08-29 16:57:21.721+05:30	2024-08-29 16:57:21.724+05:30	\N	t
959	229	12	user_document-1724931053447.pdf	2024-08-29 17:00:53.525+05:30	2024-08-29 17:00:53.527+05:30	\N	t
960	229	12	user_document-1724931757440.pdf	2024-08-29 17:12:37.446+05:30	2024-08-29 17:12:37.448+05:30	\N	t
961	229	12	user_document-1724931759971.pdf	2024-08-29 17:12:40.007+05:30	2024-08-29 17:12:40.007+05:30	\N	t
962	229	12	user_document-1724931782491.pdf	2024-08-29 17:13:02.494+05:30	2024-08-29 17:13:02.495+05:30	\N	t
963	229	12	user_document-1724931783123.pdf	2024-08-29 17:13:03.14+05:30	2024-08-29 17:13:03.141+05:30	\N	t
964	229	12	user_document-1724931783547.pdf	2024-08-29 17:13:03.55+05:30	2024-08-29 17:13:03.55+05:30	\N	t
965	229	12	user_document-1724931784253.pdf	2024-08-29 17:13:04.284+05:30	2024-08-29 17:13:04.284+05:30	\N	t
966	229	12	user_document-1724931791015.pdf	2024-08-29 17:13:11.037+05:30	2024-08-29 17:13:11.037+05:30	\N	t
967	229	12	user_document-1724931821848.pdf	2024-08-29 17:13:41.852+05:30	2024-08-29 17:13:41.853+05:30	\N	t
968	229	2	user_document-1724932113649.pdf	2024-08-29 17:18:33.654+05:30	2024-08-29 17:18:33.655+05:30	\N	t
969	229	1	user_document-1724992720410.pdf	2024-08-30 10:08:40.426+05:30	2024-08-30 10:08:40.441+05:30	\N	t
970	229	13	user_document-1724996336852.pdf	2024-08-30 11:08:56.859+05:30	2024-08-30 11:08:56.859+05:30	\N	t
971	229	13	user_document-1724996348095.pdf	2024-08-30 11:09:08.109+05:30	2024-08-30 11:09:08.11+05:30	\N	t
972	229	2	user_document-1725007787164.pdf	2024-08-30 14:19:47.262+05:30	2024-08-30 14:19:47.263+05:30	\N	t
973	229	16	user_document-1725013853633.pdf	2024-08-30 16:00:53.636+05:30	2024-08-30 16:00:53.636+05:30	\N	t
974	229	1	user_document-1725257348426.jpg	2024-09-02 11:39:08.441+05:30	2024-09-02 11:39:08.442+05:30	\N	t
975	229	25	user_document-1725257348407.pdf	2024-09-02 11:39:08.524+05:30	2024-09-02 11:39:08.524+05:30	\N	t
976	229	26	user_document-1725257348408.pdf	2024-09-02 11:39:08.525+05:30	2024-09-02 11:39:08.526+05:30	\N	t
977	229	25	user_document-1725262129051.pdf	2024-09-02 12:58:49.19+05:30	2024-09-02 12:58:49.191+05:30	\N	t
978	229	26	user_document-1725262129221.pdf	2024-09-02 12:58:49.345+05:30	2024-09-02 12:58:49.346+05:30	\N	t
979	229	1	user_document-1725262129358.jpg	2024-09-02 12:58:49.359+05:30	2024-09-02 12:58:49.359+05:30	\N	t
980	229	1	user_document-1725262238953.jpg	2024-09-02 13:00:38.981+05:30	2024-09-02 13:00:38.981+05:30	\N	t
981	229	25	user_document-1725262238895.pdf	2024-09-02 13:00:39.101+05:30	2024-09-02 13:00:39.102+05:30	\N	t
982	229	26	user_document-1725262238951.pdf	2024-09-02 13:00:39.172+05:30	2024-09-02 13:00:39.173+05:30	\N	t
983	229	1	user_document-1725270778051.jpg	2024-09-02 15:22:58.066+05:30	2024-09-02 15:22:58.067+05:30	\N	t
984	229	25	user_document-1725270778024.pdf	2024-09-02 15:22:58.259+05:30	2024-09-02 15:22:58.259+05:30	\N	t
985	229	26	user_document-1725270778049.pdf	2024-09-02 15:22:58.288+05:30	2024-09-02 15:22:58.288+05:30	\N	t
986	229	25	user_document-1725270863287.pdf	2024-09-02 15:24:23.465+05:30	2024-09-02 15:24:23.466+05:30	\N	t
987	229	1	user_document-1725270863477.jpg	2024-09-02 15:24:23.491+05:30	2024-09-02 15:24:23.491+05:30	\N	t
988	229	26	user_document-1725270863467.pdf	2024-09-02 15:24:23.646+05:30	2024-09-02 15:24:23.647+05:30	\N	t
1035	67	10	user_document-1725362605813.pdf	2024-09-03 16:53:25.817+05:30	2024-09-03 16:53:25.818+05:30	\N	t
1038	67	9	user_document-1725362904501.pdf	2024-09-03 16:58:24.507+05:30	2024-09-03 16:58:24.507+05:30	\N	t
1040	229	1	user_document-1725363954811.png	2024-09-03 17:15:54.82+05:30	2024-09-03 17:15:54.82+05:30	\N	t
1041	229	25	user_document-1725363954810.pdf	2024-09-03 17:15:54.824+05:30	2024-09-03 17:15:54.824+05:30	\N	t
993	229	26	user_document-1725347629036.pdf	2024-09-03 12:43:49.05+05:30	2024-09-03 12:43:49.05+05:30	\N	t
994	229	26	user_document-1725347740803.pdf	2024-09-03 12:45:40.823+05:30	2024-09-03 12:45:40.823+05:30	\N	t
1044	229	1	user_document-1725364057221.png	2024-09-03 17:17:37.226+05:30	2024-09-03 17:17:37.226+05:30	\N	t
1045	229	25	user_document-1725364057220.pdf	2024-09-03 17:17:37.239+05:30	2024-09-03 17:17:37.24+05:30	\N	t
1049	229	1	user_document-1725364270729.png	2024-09-03 17:21:10.732+05:30	2024-09-03 17:21:10.732+05:30	\N	t
1050	229	25	user_document-1725364270717.pdf	2024-09-03 17:21:10.736+05:30	2024-09-03 17:21:10.736+05:30	\N	t
1051	229	26	user_document-1725364270728.pdf	2024-09-03 17:21:10.743+05:30	2024-09-03 17:21:10.744+05:30	\N	t
1052	229	1	user_document-1725364299160.png	2024-09-03 17:21:39.168+05:30	2024-09-03 17:21:39.168+05:30	\N	t
1053	229	25	user_document-1725364299159.pdf	2024-09-03 17:21:39.172+05:30	2024-09-03 17:21:39.173+05:30	\N	t
1054	229	26	user_document-1725364299160.pdf	2024-09-03 17:21:39.174+05:30	2024-09-03 17:21:39.175+05:30	\N	t
1055	67	1	user_document-1725443676839.jpg	2024-09-04 15:24:36.841+05:30	2024-09-04 15:24:36.843+05:30	\N	t
1056	67	26	user_document-1725443676838.pdf	2024-09-04 15:24:37.037+05:30	2024-09-04 15:24:37.037+05:30	\N	t
1057	67	25	user_document-1725443676837.pdf	2024-09-04 15:24:37.065+05:30	2024-09-04 15:24:37.065+05:30	\N	t
1058	67	34	user_document-1726202711666.pdf	2024-09-13 10:15:11.673+05:30	2024-09-13 10:15:11.674+05:30	\N	t
1013	316	1	user_document-1725357961376.png	2024-09-03 15:36:01.382+05:30	2024-09-03 15:36:01.382+05:30	\N	t
1016	316	25	user_document-1725358203340.pdf	2024-09-03 15:40:03.359+05:30	2024-09-03 15:40:03.36+05:30	\N	t
1017	316	26	user_document-1725358203340.pdf	2024-09-03 15:40:03.361+05:30	2024-09-03 15:40:03.361+05:30	\N	t
1018	316	10	user_document-1725358679504.png	2024-09-03 15:47:59.51+05:30	2024-09-03 15:47:59.511+05:30	\N	t
1019	316	0	user_document-1725359268359.pdf	2024-09-03 15:57:48.368+05:30	2024-09-03 15:57:48.369+05:30	\N	t
1020	316	0	user_document-1725359281273.pdf	2024-09-03 15:58:01.278+05:30	2024-09-03 15:58:01.279+05:30	\N	t
1021	316	0	user_document-1725359307977.pdf	2024-09-03 15:58:27.987+05:30	2024-09-03 15:58:27.987+05:30	\N	t
1086	67	24	user_document-1726740211227.pdf	2024-09-19 15:33:31.399+05:30	2024-09-19 15:33:31.399+05:30	\N	t
1087	67	32	user_document-1726740918058.pdf	2024-09-19 15:45:18.124+05:30	2024-09-19 15:45:18.124+05:30	\N	t
1088	67	31	user_document-1726741324091.pdf	2024-09-19 15:52:04.181+05:30	2024-09-19 15:52:04.181+05:30	\N	t
1089	67	27	user_document-1726742185454.pdf	2024-09-19 16:06:25.546+05:30	2024-09-19 16:06:25.547+05:30	\N	t
\.


--
-- Data for Name: UserMenuItems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
2	7	2	t	2023-07-27 12:48:47.778+05:30	2023-07-27 12:48:47.778+05:30
1	7	1	t	2023-07-27 12:46:54.397+05:30	2023-07-27 12:46:54.397+05:30
3	6	3	t	2023-07-27 15:04:14.756+05:30	2023-07-27 15:04:14.756+05:30
4	1	4	t	2023-07-27 15:04:18.339+05:30	2023-07-27 15:04:18.339+05:30
5	6	2	t	2023-07-27 15:04:21.361+05:30	2023-07-27 15:04:21.361+05:30
\.


--
-- Data for Name: UserPermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	7	1	t	2023-07-26 13:25:33.268+05:30	2023-07-26 13:25:33.268+05:30
2	6	1	t	2023-07-27 14:52:01.764+05:30	2023-07-27 14:52:01.764+05:30
3	6	3	t	2023-08-22 15:50:24.068+05:30	2023-08-22 15:50:24.068+05:30
4	6	3	t	2023-08-22 16:02:50.582+05:30	2023-08-22 16:02:50.582+05:30
\.


--
-- Data for Name: UserPersonalDetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec) FROM stdin;
55	95	UserSneha	UserSneha	userSneha100@gmail.com	9944557870	\N	\N	\N	\N	t	2023-06-30 13:10:45.733+05:30	2023-06-30 13:10:45.733+05:30	\N	\N	\N	\N	3	\N	\N
85	143	Sneha	Dessai	techmahindra@gmail.com	8787656456	\N	\N	\N	\N	t	2023-08-29 17:30:56.254+05:30	2023-08-29 17:30:56.254+05:30	\N	\N	\N	\N	\N	\N	\N
57	97	Shreya	Desai	shreya@gmail.com	9656996566	2023-07-19 05:30:00+05:30	\N	\N	t	t	2023-07-05 10:38:22.681+05:30	2023-07-05 15:07:03.487+05:30	1	\N	2	1	1	\N	\N
62	57	Rhugveda	Desai	company4544@gmail.com	9890098783	\N	\N	\N	\N	t	2023-06-19 17:00:42.461+05:30	2023-06-19 17:00:42.461+05:30	\N	\N	\N	\N	1	\N	\N
86	144	Yugali	Parab	tcs123@gmail.com	9888887777	\N	\N	\N	\N	t	2023-08-30 12:09:27.056+05:30	2023-08-30 12:09:27.056+05:30	\N	\N	\N	\N	\N	\N	\N
94	157	paresh	Ashvenkar	abc11@gmail.com	8988888877	\N	\N	\N	\N	t	2023-09-01 15:01:00.329+05:30	2023-09-01 15:01:00.329+05:30	\N	\N	\N	\N	\N	\N	\N
37	69	Rhugveda	Desai	rhugveda7896@gmail.com	7897897896	\N	\N	\N	\N	t	2023-06-15 11:39:49.693+05:30	2023-06-15 11:39:49.693+05:30	\N	\N	\N	\N	3	\N	\N
68	111	Admin1	Admin12	pixels.google@gmail.com	9494949459	2023-06-30 05:30:00+05:30	\N	\N	t	t	2023-07-14 11:13:08.792+05:30	2023-07-14 15:42:08.72+05:30	1	\N	1	1	1	\N	\N
59	100	Raghav	Dessai	raghav@gmail.com	4564564565	2023-07-19 05:30:00+05:30	\N	\N	f	t	2023-07-06 12:10:22.651+05:30	2023-07-06 12:10:22.651+05:30	1	1	1	1	1	\N	\N
60	101	Santoshi	Naik	santoshi@gmail.com	7867887899	2023-07-14 05:30:00+05:30	\N	\N	t	t	2023-07-07 10:27:58.342+05:30	2023-07-07 10:29:08.819+05:30	1	\N	2	1	1	\N	\N
53	92	Vedika	Naik	vedika@gmail.com	3200125477	2023-06-08 05:30:00+05:30	\N	\N	t	t	2023-06-26 11:54:44.71+05:30	2023-07-07 10:32:51.648+05:30	1	1	1	1	3	\N	\N
71	114	Vandana	Sawant	vandana@yahoo.com	6363635263	\N	\N	\N	\N	t	2023-07-17 11:26:40.388+05:30	2023-07-17 11:26:40.388+05:30	\N	\N	\N	\N	\N	\N	\N
76	120	Pranjal	Prabhu	pranjal@gmail.com	342345566	1996-06-13 05:30:00+05:30	\N	\N	f	t	2023-08-18 09:50:26.515+05:30	2023-08-18 09:52:34.175+05:30	1	1	2	3	1	\N	\N
38	70	Rhugveda	Desai	company371@gmail.com	9890093371	\N	\N	\N	\N	t	2023-06-19 17:00:42.461+05:30	2023-06-19 17:00:42.461+05:30	\N	\N	\N	\N	1	\N	\N
39	71	Rhugveda	Desai	company341@gmail.com	9890094378	\N	\N	\N	\N	t	2023-06-19 17:10:39.33+05:30	2023-06-19 17:10:39.33+05:30	\N	\N	\N	\N	1	\N	\N
40	72	Rhugveda	Desai	staff7896@gmail.com	7897897895	2023-06-02 05:30:00+05:30	\N	\N	t	t	2023-06-20 16:16:23.434+05:30	2023-06-20 16:24:40.721+05:30	1	1	\N	\N	1	\N	\N
87	145	Sneha	Dessai	abc@gmail.com	7767656789	\N	\N	\N	\N	t	2023-08-30 12:13:38.096+05:30	2023-08-30 12:13:38.096+05:30	\N	\N	\N	\N	\N	\N	\N
42	74	Rhugveda	Desai	staff1230@gmail.com	9652365412	\N	\N	\N	\N	t	2023-06-23 15:26:00.691+05:30	2023-06-23 15:26:00.691+05:30	1	1	1	\N	3	\N	\N
43	75	Saurabh	Naik	saurabh123@yahoo.com	5656776788	\N	\N	\N	\N	t	2023-06-23 15:53:10.216+05:30	2023-06-23 15:53:10.216+05:30	\N	\N	\N	\N	3	\N	\N
44	76	Sayli	Parab	sayli@yahoo.in	4512556455	\N	\N	\N	\N	t	2023-06-23 16:03:38.543+05:30	2023-06-23 16:03:38.543+05:30	\N	\N	\N	\N	3	\N	\N
45	77	Rhugveda	Desai	superadmin@gmail.com	9696857485	\N	\N	\N	\N	t	2023-06-23 16:05:35.931+05:30	2023-06-23 16:05:35.931+05:30	\N	\N	\N	\N	3	\N	\N
77	121	Prapti	Naik	praptinaik@gmail.com	9023443455	\N	\N	\N	\N	t	2023-08-22 11:11:26.11+05:30	2023-08-22 11:11:26.11+05:30	\N	\N	\N	\N	\N	\N	\N
78	122	paresh	Ashvenkar	dmc@gmail.com	897656456	\N	\N	\N	\N	t	2023-08-24 16:26:29.538+05:30	2023-08-24 16:26:29.538+05:30	\N	\N	\N	\N	\N	\N	\N
72	115	Mrunal	Parab	mrunal@gmail.com	2356998655	2023-07-07 05:30:00+05:30	\N	\N	t	t	2023-07-17 13:03:07.812+05:30	2023-07-17 15:05:40.025+05:30	1	1	2	1	1	\N	\N
61	102	Prachi	Naik	prach11@gmail.com	9635669655	2023-07-25 05:30:00+05:30	\N	\N	f	t	2023-07-07 13:04:14.328+05:30	2023-07-07 13:05:54.549+05:30	1	\N	2	1	1	\N	\N
74	118	Rhugveda	Desai	dheadmin@gmail.com	9874563214	\N	\N	\N	\N	t	2023-07-18 13:22:07.113+05:30	2023-07-18 13:22:07.113+05:30	\N	\N	\N	\N	\N	\N	\N
47	79	yougali	parab	yougali@yahoo.com	6363632121	\N	\N	\N	\N	t	2023-06-23 17:38:40.128+05:30	2023-06-23 17:38:40.128+05:30	\N	\N	\N	\N	3	\N	\N
48	80	Ravi	Niak	ravi@yahoo.in	1245998688	2023-06-08 05:30:00+05:30	\N	\N	f	t	2023-06-26 10:09:22.859+05:30	2023-06-26 10:10:26.52+05:30	1	1	\N	\N	1	\N	\N
49	81	Ravina	Naik	snehadhe07@gmail.com	7020435403	2023-06-21 05:30:00+05:30	\N	\N	f	t	2023-06-26 10:49:53.597+05:30	2023-06-26 11:22:10.95+05:30	2	1	\N	\N	1	\N	\N
50	82	Lavina	Naik	lavina123@gmail.com	9898989898	\N	\N	\N	\N	t	2023-06-26 10:52:00.902+05:30	2023-06-26 10:52:00.902+05:30	\N	\N	\N	\N	1	\N	\N
51	83	Siya	Naik	siya@gmail.com	9898989890	\N	\N	\N	\N	t	2023-06-26 10:53:18.686+05:30	2023-06-26 10:53:18.686+05:30	\N	\N	\N	\N	3	\N	\N
52	84	gvdfg	dfhfgh	snehadh@gmail.com	2222222222	\N	\N	\N	\N	t	2023-06-26 11:17:14.198+05:30	2023-06-26 11:17:14.198+05:30	\N	\N	\N	\N	3	\N	\N
54	93	userYougali	userYougali	user100@gmail.com	7744110478	\N	\N	\N	\N	t	2023-06-30 13:07:57.313+05:30	2023-06-30 13:07:57.313+05:30	\N	\N	\N	\N	3	\N	\N
79	125	paresh	Ashvenkar	infosys@gmail.com	8976789867	\N	\N	\N	\N	t	2023-08-25 15:40:13.798+05:30	2023-08-25 15:40:13.798+05:30	\N	\N	\N	\N	\N	\N	\N
95	158	Shweta	Gawas	shweta@gmail.com	6756776788	1996-06-14 05:30:00+05:30	\N	\N	t	t	2023-09-01 15:16:21.079+05:30	2023-10-05 17:21:05.409+05:30	1	1	2	1	1	\N	\N
58	98	Raghu	Dessai	raghu@gmail.com	4564564564	2023-07-19 00:00:00+05:30	\N	\N	f	t	2023-07-06 12:09:31.482+05:30	2023-07-12 15:55:46.584+05:30	1	1	1	1	1	\N	\N
63	103	Admin1	admin2	pmg@gmail.com	9000002598	\N	\N	\N	\N	t	2023-07-13 10:53:55.533+05:30	2023-07-13 10:53:55.533+05:30	\N	\N	\N	\N	\N	\N	\N
65	107	Bhakti	Gawas	bhakti@gmail.com	8574859658	\N	\N	\N	\N	t	2023-07-13 16:52:21.841+05:30	2023-07-13 16:52:21.841+05:30	\N	\N	\N	\N	\N	\N	\N
66	109	Paresh	Asvenkar	paresh@gmail.com	3625144152	\N	\N	\N	\N	t	2023-07-13 16:56:12.773+05:30	2023-07-13 16:56:12.773+05:30	\N	\N	\N	\N	\N	\N	\N
88	146	Urvi 	Dessai	brizamin@gmail.com	9876574857	\N	\N	\N	\N	t	2023-08-31 17:32:04.864+05:30	2023-08-31 17:32:04.864+05:30	\N	\N	\N	\N	\N	\N	\N
80	131	paresh	Ashvenkar	infosyss1@gmail.com	8976789666	\N	\N	\N	\N	t	2023-08-25 15:47:36.916+05:30	2023-08-25 15:47:36.916+05:30	\N	\N	\N	\N	\N	\N	\N
41	73	Rhugveda	Desai	edgeplus@gmail.com	9600000012	2023-07-20 00:00:00+05:30	\N	\N	t	t	2023-06-20 16:18:54.086+05:30	2023-09-13 14:34:53.198+05:30	2	1	2	1	3	\N	\N
69	112	Apurva	Patil	apurva@gmail.com	2125565899	\N	\N	\N	\N	t	2023-07-14 15:04:23.222+05:30	2023-07-14 15:04:23.222+05:30	\N	\N	\N	\N	\N	\N	\N
70	113	Apurv	Patil	apurv@gmail.com	8965998655	\N	\N	\N	\N	t	2023-07-14 15:06:42.604+05:30	2023-07-14 15:06:42.604+05:30	\N	\N	\N	\N	\N	\N	\N
81	134	paresh	Ashvenkar	infosysslimited1@gmail.com	8976789777	\N	\N	\N	\N	t	2023-08-25 16:10:46.856+05:30	2023-08-25 16:10:46.856+05:30	\N	\N	\N	\N	\N	\N	\N
82	137	paresh	Ashvenkar	infosysslimited12@gmail.com	8966665555	\N	\N	\N	\N	t	2023-08-25 16:17:37.343+05:30	2023-08-25 16:17:37.343+05:30	\N	\N	\N	\N	\N	\N	\N
89	149	Urvi 	Dessai	brizamind@gmail.com	9876777779	\N	\N	\N	\N	t	2023-08-31 17:37:12.788+05:30	2023-08-31 17:37:12.788+05:30	\N	\N	\N	\N	\N	\N	\N
83	139	paresh	Ashvenkar	infosysp1@gmail.com	8767558899	\N	\N	\N	\N	t	2023-08-25 16:54:34.676+05:30	2023-08-25 16:54:34.676+05:30	\N	\N	\N	\N	\N	\N	\N
84	142	paresh	Ashvenkar	infosyslimited@gmail.com	8976564577	\N	\N	\N	\N	t	2023-08-29 15:11:02.075+05:30	2023-08-29 15:11:02.075+05:30	\N	\N	\N	\N	\N	\N	\N
67	110	Bhagyashree	Gawas	bhagya123@gmail.com	9656885619	2023-07-11 05:30:00+05:30	\N	\N	f	t	2023-07-14 09:43:57.314+05:30	2023-08-29 17:03:33.824+05:30	1	2	2	1	1	\N	\N
90	151	Shabi	Naik	cbts@gmail.com	8887657876	\N	\N	\N	\N	t	2023-09-01 11:20:21.405+05:30	2023-09-01 11:20:21.405+05:30	\N	\N	\N	\N	\N	\N	\N
91	152	Shabi	Naik	cbtstech@gmail.com	8887688888	\N	\N	\N	\N	t	2023-09-01 11:23:34.447+05:30	2023-09-01 11:23:34.447+05:30	\N	\N	\N	\N	\N	\N	\N
92	155	Shabi	Naik	cbtstech12@gmail.com	8887688889	\N	\N	\N	\N	t	2023-09-01 11:29:04.898+05:30	2023-09-01 11:29:04.898+05:30	\N	\N	\N	\N	\N	\N	\N
93	156	Sneha	Dessai	abc1@gmail.com	9800676666	\N	\N	\N	\N	t	2023-09-01 13:01:41.019+05:30	2023-09-01 13:01:41.019+05:30	\N	\N	\N	\N	\N	\N	\N
99	164	Atharva	Desai	atharva124@gmail.com	3698521478	\N	\N	\N	\N	t	2023-09-04 15:58:08.973+05:30	2023-09-04 15:58:08.973+05:30	\N	\N	\N	\N	\N	\N	\N
96	159	Atharva	Desai	atharva@gmail.com	9685748596	\N	\N	\N	\N	t	2023-09-04 13:10:56.137+05:30	2023-09-04 13:10:56.137+05:30	\N	\N	\N	\N	\N	\N	\N
97	160	Atharva	Desai	atharvaq@gmail.com	9685748591	\N	\N	\N	\N	t	2023-09-04 13:24:10.598+05:30	2023-09-04 13:24:10.598+05:30	\N	\N	\N	\N	\N	\N	\N
98	161	Atharva	Desai	atharva12@gmail.com	9685748512	\N	\N	\N	\N	t	2023-09-04 13:25:01.135+05:30	2023-09-04 13:25:01.135+05:30	\N	\N	\N	\N	\N	\N	\N
75	119	Saili	Mishra	sailimishra@gmail.com	3420998799	1994-06-16 05:30:00+05:30	\N	\N	f	t	2023-08-17 14:39:58.649+05:30	2023-09-05 11:18:42.916+05:30	1	1	2	3	1	\N	\N
100	165	Sanjana	Naik	saj@gmail.com	9898776788	2023-09-27 05:30:00+05:30	\N	\N	f	t	2023-09-07 13:09:44.043+05:30	2023-09-07 14:24:27.82+05:30	1	1	2	1	1	\N	\N
56	96	NonTeaching	Staff	nt001@gmail.com	1235669688	2023-07-08 05:30:00+05:30	\N	\N	t	t	2023-07-03 10:18:48.12+05:30	2023-09-08 13:23:32.698+05:30	1	1	1	1	1	\N	\N
73	116	Rhugveda	Desai	shambhavidesai@gmail.com	9865859658	2023-08-17 05:30:00+05:30	\N	\N	t	t	2023-07-18 12:18:24.845+05:30	2023-09-12 10:40:13.603+05:30	1	1	2	2	1	\N	\N
101	166	Hemant	Gaonkar	hemant@gmail.com	8548665988	2002-06-12 05:30:00+05:30	\N	\N	f	t	2023-09-11 10:12:34.691+05:30	2023-09-11 10:14:31.402+05:30	1	1	1	1	1	\N	\N
102	167	Radha	Naik	radhanaik.dhe@gmail.com	9822126866	\N	\N	\N	\N	t	2023-09-12 11:29:22.967+05:30	2023-09-12 11:29:22.967+05:30	\N	\N	\N	\N	\N	\N	\N
176	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:33.402+05:30	2024-08-26 15:06:33.402+05:30	\N	\N	\N	\N	\N	\N	\N
177	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:40.02+05:30	2024-08-26 15:06:40.02+05:30	\N	\N	\N	\N	\N	\N	\N
178	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:46.934+05:30	2024-08-26 15:06:46.934+05:30	\N	\N	\N	\N	\N	\N	\N
103	168	Meena	Sharma	meena.dhe@gmail.com	6585858545	\N	\N	\N	\N	t	2023-09-12 11:34:48.866+05:30	2023-09-12 11:34:48.866+05:30	\N	\N	\N	\N	\N	\N	\N
104	169	Kuldeep	Sharma	agriculorg@gmail.com	9869694758	\N	\N	\N	\N	t	2023-09-12 11:40:45.187+05:30	2023-09-12 11:40:45.187+05:30	\N	\N	\N	\N	\N	\N	\N
105	170	Pooja	Bidiye	pooja@gmail.com	4525663255	\N	\N	\N	\N	t	2023-09-13 10:21:30.364+05:30	2023-09-13 10:21:30.364+05:30	\N	\N	\N	\N	\N	\N	\N
106	171	Sandhya	Gawas	sandhya@gmail.com	5469885451	\N	\N	\N	\N	t	2023-09-13 10:25:24.763+05:30	2023-09-13 10:25:24.763+05:30	\N	\N	\N	\N	\N	\N	\N
107	172	Pavitra	Naik	pavitra123@gmail.com	9812636363	\N	\N	\N	\N	t	2023-09-13 10:27:22.942+05:30	2023-09-13 10:27:22.942+05:30	\N	\N	\N	\N	\N	\N	\N
108	174	Paresh	Asvenkar	facultypes@gmail.com	1425362514	\N	\N	\N	\N	t	2023-09-13 11:03:14.402+05:30	2023-09-13 11:03:14.402+05:30	\N	\N	\N	\N	\N	\N	\N
109	177	bhakti	Gawas	bhakti0888@gmail.com	9898989808	\N	\N	\N	\N	t	2023-09-13 11:10:01.251+05:30	2023-09-13 11:10:01.251+05:30	\N	\N	\N	\N	\N	\N	\N
111	179	vedang	gawas	vedang123@gmail.com	6546546546	\N	\N	\N	\N	t	2023-09-13 11:13:11.139+05:30	2023-09-13 11:13:11.139+05:30	\N	\N	\N	\N	\N	\N	\N
110	178	Suraj	Naik	suraj@gmail.com	8545558588	2023-09-07 05:30:00+05:30	\N	\N	t	t	2023-09-13 11:13:10.911+05:30	2023-09-13 11:17:20.238+05:30	1	1	2	1	1	\N	\N
112	180	Admin1	Admin12	testing123@gmail.com	9698745630	\N	\N	\N	\N	t	2023-09-13 11:52:00.49+05:30	2023-09-13 11:52:00.49+05:30	\N	\N	\N	\N	\N	\N	\N
113	181	Swastika	Prabhu	swastik@gmail.com	9656996588	\N	\N	\N	\N	t	2023-09-14 15:21:25.94+05:30	2023-09-14 15:21:25.94+05:30	\N	\N	\N	\N	\N	\N	\N
114	182	Vedangi	Sirsat	vedangi@gmail.com	7854885488	\N	\N	\N	\N	t	2023-09-26 11:22:44.501+05:30	2023-09-26 11:22:44.501+05:30	\N	\N	\N	\N	\N	\N	\N
115	183	payal	chawla	payalchawla@gmail.vom	6565656544	\N	\N	\N	\N	t	2023-09-28 12:20:15.501+05:30	2023-09-28 12:20:15.501+05:30	\N	\N	\N	\N	\N	\N	\N
116	184	Aadya	Desai	aadya@gmail.com	9685859696	\N	\N	\N	\N	t	2023-09-28 12:27:23.275+05:30	2023-09-28 12:27:23.275+05:30	\N	\N	\N	\N	\N	\N	\N
117	185	Pranit	Gawas	pranit@gmail.com	9847140101	\N	\N	\N	\N	t	2023-09-29 12:40:45.387+05:30	2023-09-29 12:40:45.387+05:30	\N	\N	\N	\N	\N	\N	\N
119	187	Prajai	Prajai	prajai123@gmail.com	4587458484	\N	\N	\N	\N	t	2023-10-12 14:10:21.312+05:30	2023-10-12 14:10:21.312+05:30	\N	\N	\N	\N	\N	\N	\N
120	188	Verrr	Dessai	snehadhe0798785@gmail.com	3698521475	\N	\N	\N	\N	t	2023-10-12 14:14:32.973+05:30	2023-10-12 14:14:32.973+05:30	\N	\N	\N	\N	\N	\N	\N
121	189	Rameshwar	Dessai	dhe.gov@gmail.com	9090909090	\N	\N	\N	\N	t	2023-10-13 10:45:53.232+05:30	2023-10-13 10:45:53.232+05:30	\N	\N	\N	\N	\N	\N	\N
122	190	Paresh	Dessai	dte.gov@gmail.com	8909890989	\N	\N	\N	\N	t	2023-10-13 11:02:24.48+05:30	2023-10-13 11:02:24.48+05:30	\N	\N	\N	\N	\N	\N	\N
123	193	Manju	Gawas	manju@yahoo.com	9784557855	\N	\N	\N	\N	t	2023-10-13 13:25:43.208+05:30	2023-10-13 13:25:43.208+05:30	\N	\N	\N	\N	\N	\N	\N
124	194	test	student	teststudent@gmail.com	9518529618	\N	\N	\N	\N	t	2023-10-13 13:31:12.457+05:30	2023-10-13 13:31:12.457+05:30	\N	\N	\N	\N	\N	\N	\N
125	195	Nim	Pal	nim@gmail.com	9865445255	\N	\N	\N	\N	t	2023-10-18 11:10:27.498+05:30	2023-10-18 11:10:27.498+05:30	\N	\N	\N	\N	\N	\N	\N
126	198	Sneha	Naik	hdfc@gmail.com	8976786756	\N	\N	\N	\N	t	2023-10-18 12:58:40.5+05:30	2023-10-18 12:58:40.5+05:30	\N	\N	\N	\N	\N	\N	\N
127	199	Sneha	raut	citycom@gmail.com	8786756455	\N	\N	\N	\N	t	2023-10-18 15:56:57.878+05:30	2023-10-18 15:56:57.878+05:30	\N	\N	\N	\N	\N	\N	\N
128	200	test	student	teststudent2@gmail.com	9518529699	\N	\N	\N	\N	t	2023-10-20 10:54:56.682+05:30	2023-10-20 10:54:56.682+05:30	\N	\N	\N	\N	\N	\N	\N
130	203	Riya	Naik	riyanaik@gmail.com	9696320201	\N	\N	\N	\N	t	2023-10-26 11:26:47.644+05:30	2023-10-26 11:26:47.644+05:30	\N	\N	\N	\N	\N	\N	\N
131	204	Rameshwar	Dessai	sdt.gshec@gmail.com	8989898989	\N	\N	\N	\N	t	2023-11-07 11:36:19.202+05:30	2023-11-07 11:36:19.202+05:30	\N	\N	\N	\N	\N	\N	\N
132	207	Shambhu	Dessai	sdt1.gshec@gmail.com	9090909065	\N	\N	\N	\N	t	2023-11-07 12:30:49.558+05:30	2023-11-07 12:30:49.558+05:30	\N	\N	\N	\N	\N	\N	\N
133	208	Hemant	Dessai	hema@gmail.com	7878787878	\N	\N	\N	\N	t	2023-11-07 12:54:15.465+05:30	2023-11-07 12:54:15.465+05:30	\N	\N	\N	\N	\N	\N	\N
134	209	Mukesh	Patil	mukesh@yopmail.com	6798548978	\N	\N	\N	\N	t	2023-11-09 10:25:45.482+05:30	2023-11-09 10:25:45.482+05:30	\N	\N	\N	\N	\N	\N	\N
138	215	Ruchi	Parab	dhe.bhakti@gmail.com	8975590961	\N	\N	\N	\N	t	2024-07-04 10:50:24.157+05:30	2024-07-04 10:50:24.157+05:30	\N	\N	\N	\N	\N	\N	\N
139	217	Amit	Shah	amit@gmail.com	5689556455	\N	\N	\N	\N	t	2024-07-04 11:13:25.762+05:30	2024-07-04 11:13:25.762+05:30	\N	\N	\N	\N	\N	\N	\N
140	218	vialli	gonsalves	vialli@yahoo.com	9877890231	\N	\N	\N	\N	t	2024-07-08 12:37:43.464+05:30	2024-07-08 12:37:43.464+05:30	\N	\N	\N	\N	\N	\N	\N
141	219	epramaan	cdac	epramaan4@gmail.com	7507310945	\N	\N	\N	\N	t	2024-07-11 15:29:17.546+05:30	2024-07-11 15:29:17.546+05:30	\N	\N	\N	\N	\N	\N	\N
142	220	epramaan	cdac	epramaan5@gmail.com	7507310955	\N	\N	\N	\N	t	2024-07-11 15:30:12.219+05:30	2024-07-11 15:30:12.219+05:30	\N	\N	\N	\N	\N	\N	\N
136	212	Viali	Gonsalves	viali@gmail.com	8978554582	2024-07-11 05:30:00+05:30	145214874587	\N	f	t	2024-07-03 10:30:06.975+05:30	2024-07-16 15:39:53.778+05:30	3	1	2	1	1	5451	9658998566
135	210	Devesh	Parab	devesh@gmail.com	8945668563	2024-07-10 05:30:00+05:30	1231231236	\N	t	t	2024-07-02 14:42:28.942+05:30	2024-07-02 17:27:12.015+05:30	4	1	2	1	1	5454	9845885456
143	225	epramaan	cdac	epramaan22@gmail.com	7506810945	\N	\N	\N	\N	t	2024-08-07 13:00:45.602+05:30	2024-08-07 13:00:45.602+05:30	\N	\N	\N	\N	\N	\N	\N
145	231	Sachin	Shirodkar	sachin@gmail.com	9878021496	\N	\N	\N	\N	t	2024-08-14 15:59:33.233+05:30	2024-08-14 15:59:33.233+05:30	\N	\N	\N	\N	\N	\N	\N
146	232	Sachin	Shirodkar	sachin12@gmail.com	9878431496	\N	\N	\N	\N	t	2024-08-14 16:03:17.01+05:30	2024-08-14 16:03:17.01+05:30	\N	\N	\N	\N	\N	\N	\N
147	234	Rhugveda	Desai	dheadmin43@gmail.com	9874563243	\N	\N	\N	\N	t	2024-08-14 16:05:03.799+05:30	2024-08-14 16:05:03.799+05:30	\N	\N	\N	\N	\N	\N	\N
148	235	Rhugveda	Desai	dheadmin33@gmail.com	9874563233	\N	\N	\N	\N	t	2024-08-14 16:06:08.468+05:30	2024-08-14 16:06:08.468+05:30	\N	\N	\N	\N	\N	\N	\N
149	236	Rhugveda	Desai	dheadmin58@gmail.com	9874563258	\N	\N	\N	\N	t	2024-08-14 16:08:00.849+05:30	2024-08-14 16:08:00.849+05:30	\N	\N	\N	\N	\N	\N	\N
137	214	epramaan	cdac	epramaan@gmail.com	7507310944	\N	\N	\N	\N	t	2024-07-03 15:18:50.137+05:30	2024-07-03 15:18:50.137+05:30	\N	\N	\N	\N	\N	\N	\N
46	78	Prachiti	Parab	prachiti@yahoo.in	5246998966	2023-06-14 05:30:00+05:30	1231231231	\N	t	t	2023-06-23 16:07:40.957+05:30	2024-06-26 15:57:11.476+05:30	4	1	2	1	3	5454	9845885455
150	237	Sachin	Shirodkar	sachin13@gmail.com	9878431461	\N	\N	\N	\N	t	2024-08-14 16:20:56.616+05:30	2024-08-14 16:20:56.616+05:30	\N	\N	\N	\N	\N	\N	\N
151	239	Brijesh	Shirodkar	brijesh123@gmail.com	9568456987	2013-02-20 05:30:00+05:30	123212323234	\N	f	t	2024-08-16 11:01:20.498+05:30	2024-08-16 12:16:06.363+05:30	2	2	2	1	1	5454	5485665688
152	240	Manita	Naik	manitnaik066509@gmail.com	5814033332	\N	\N	\N	\N	t	2024-08-16 12:25:00.897+05:30	2024-08-16 12:25:00.897+05:30	\N	\N	\N	\N	\N	\N	\N
153	241	vedika	naik	vedikanaik089@gmail.com	5636251980	\N	\N	\N	\N	t	2024-08-16 17:12:25.947+05:30	2024-08-16 17:12:25.947+05:30	\N	\N	\N	\N	\N	\N	\N
166	257	sneha	narvekar	sneha6540@gmail.com	5987532001	\N	\N	\N	\N	t	2024-08-21 15:58:02.951+05:30	2024-08-21 15:58:02.951+05:30	\N	\N	\N	\N	\N	\N	\N
154	243	Rhugveda	Desai	gedcadmin123@gmail.com	9874563123	\N	\N	\N	\N	t	2024-08-19 13:09:50.415+05:30	2024-08-19 13:09:50.415+05:30	\N	\N	\N	\N	\N	\N	\N
155	244	Rhugveda	Desai	gedcadmin1234@gmail.com	9874561234	\N	\N	\N	\N	t	2024-08-19 13:11:35.395+05:30	2024-08-19 13:11:35.395+05:30	\N	\N	\N	\N	\N	\N	\N
156	245	Rhugveda	Desai	gedcadmin122@gmail.com	9874561212	\N	\N	\N	\N	t	2024-08-19 13:22:19.594+05:30	2024-08-19 13:22:19.594+05:30	\N	\N	\N	\N	\N	\N	\N
157	246	Rhugveda	Desai	gedcadmin133@gmail.com	9874561133	\N	\N	\N	\N	t	2024-08-19 13:23:00.346+05:30	2024-08-19 13:23:00.346+05:30	\N	\N	\N	\N	\N	\N	\N
158	247	Rhugveda	Desai	gedcadmin134@gmail.com	9874561134	\N	\N	\N	\N	t	2024-08-19 13:24:20.163+05:30	2024-08-19 13:24:20.163+05:30	\N	\N	\N	\N	\N	\N	\N
159	248	Rhugveda	Desai	gedcadmin1345@gmail.com	9874561345	\N	\N	\N	\N	t	2024-08-19 15:42:31.833+05:30	2024-08-19 15:42:31.833+05:30	\N	\N	\N	\N	\N	\N	\N
160	249	Rhugveda	Desai	gedcadmin1@gmail.com	9874561111	\N	\N	\N	\N	t	2024-08-19 15:43:08.147+05:30	2024-08-19 15:43:08.147+05:30	\N	\N	\N	\N	\N	\N	\N
161	251	Rhugveda	Desai	gedcadmin22@gmail.com	9874563222	\N	\N	\N	\N	t	2024-08-19 16:33:33.138+05:30	2024-08-19 16:33:33.138+05:30	\N	\N	\N	\N	\N	\N	\N
162	252	GEDC	Admin	gedcadmin23@gmail.com	9874563290	\N	\N	\N	\N	t	2024-08-21 10:47:48.419+05:30	2024-08-21 10:47:48.419+05:30	\N	\N	\N	\N	\N	\N	\N
163	253	Rhugveda	Desai	gedcuser@gmail.com	9874563333	\N	\N	\N	\N	t	2024-08-21 11:15:58.984+05:30	2024-08-21 11:15:58.984+05:30	\N	\N	\N	\N	\N	\N	\N
164	255	Rhugveda	Desai	hoi@gmail.com	9874563444	\N	\N	\N	\N	t	2024-08-21 11:22:39.377+05:30	2024-08-21 11:22:39.377+05:30	\N	\N	\N	\N	\N	\N	\N
165	256	dylan	vaz	dylan123@gmail.com	6987200014	\N	\N	\N	\N	t	2024-08-21 15:36:15.368+05:30	2024-08-21 15:36:15.368+05:30	\N	\N	\N	\N	\N	\N	\N
167	258	test	student	teststudent4@gmail.com	7474747485	\N	\N	\N	\N	t	2024-08-21 16:01:44.108+05:30	2024-08-21 16:01:44.108+05:30	\N	\N	\N	\N	\N	\N	\N
168	260	test	student	teststudent44@gmail.com	7474747444	\N	\N	\N	\N	t	2024-08-21 16:02:39.003+05:30	2024-08-21 16:02:39.003+05:30	\N	\N	\N	\N	\N	\N	\N
169	261	kapil	Shirodkar	kapil1235@gmail.com	6587932149	\N	\N	\N	\N	t	2024-08-21 16:33:04.949+05:30	2024-08-21 16:33:04.949+05:30	\N	\N	\N	\N	\N	\N	\N
170	262	Darsh	Shirodkar	darsh123@gmail.com	6870032989	\N	\N	\N	\N	t	2024-08-23 10:56:11.027+05:30	2024-08-23 10:56:11.027+05:30	\N	\N	\N	\N	\N	\N	\N
171	263	epramaan	cdac	epraman11@gmail.com	5436995510	\N	\N	\N	\N	t	2024-08-23 16:33:53.892+05:30	2024-08-23 16:33:53.892+05:30	\N	\N	\N	\N	\N	\N	\N
172	265	epramaan	cdac	epraman1@gmail.com	5436995514	\N	\N	\N	\N	t	2024-08-23 16:34:25.4+05:30	2024-08-23 16:34:25.4+05:30	\N	\N	\N	\N	\N	\N	\N
173	266	epramaan	cdac	epraman2@gmail.com	5431995514	\N	\N	\N	\N	t	2024-08-23 16:34:49.647+05:30	2024-08-23 16:34:49.647+05:30	\N	\N	\N	\N	\N	\N	\N
174	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:00:14.401+05:30	2024-08-26 15:00:14.401+05:30	\N	\N	\N	\N	\N	\N	\N
175	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:06:23.467+05:30	2024-08-26 15:06:23.467+05:30	\N	\N	\N	\N	\N	\N	\N
179	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:09:06.653+05:30	2024-08-26 15:09:06.653+05:30	\N	\N	\N	\N	\N	\N	\N
180	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:09:08.929+05:30	2024-08-26 15:09:08.929+05:30	\N	\N	\N	\N	\N	\N	\N
181	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:14:07.874+05:30	2024-08-26 15:14:07.874+05:30	\N	\N	\N	\N	\N	\N	\N
182	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:14:24.132+05:30	2024-08-26 15:14:24.132+05:30	\N	\N	\N	\N	\N	\N	\N
183	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:16:21.003+05:30	2024-08-26 15:16:21.003+05:30	\N	\N	\N	\N	\N	\N	\N
184	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:16:27.666+05:30	2024-08-26 15:16:27.666+05:30	\N	\N	\N	\N	\N	\N	\N
185	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:16:32.733+05:30	2024-08-26 15:16:32.733+05:30	\N	\N	\N	\N	\N	\N	\N
186	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2024-08-26 15:17:37.84+05:30	2024-08-26 15:17:37.84+05:30	\N	\N	\N	\N	\N	\N	\N
187	281	epramaan	cdac	epramaan577@gmail.com	7507310577	\N	\N	\N	\N	t	2024-08-26 15:19:26.1+05:30	2024-08-26 15:19:26.1+05:30	\N	\N	\N	\N	\N	\N	\N
188	282	epramaan	cdac	epramn18@gmail.com	9631460259	\N	\N	\N	\N	t	2024-08-26 15:19:43.667+05:30	2024-08-26 15:19:43.667+05:30	\N	\N	\N	\N	\N	\N	\N
189	283	epramaan	cdac	epramn180@gmail.com	9631460209	\N	\N	\N	\N	t	2024-08-26 15:20:25.603+05:30	2024-08-26 15:20:25.603+05:30	\N	\N	\N	\N	\N	\N	\N
190	284	epramaan	cdac	epramn150@gmail.com	9631465209	\N	\N	\N	\N	t	2024-08-27 10:51:56.825+05:30	2024-08-27 10:51:56.825+05:30	\N	\N	\N	\N	\N	\N	\N
192	295	Hi	Dias	dylan12338@gmail.com	7038554862	\N	\N	\N	\N	t	2024-08-27 14:31:26.015+05:30	2024-08-27 14:31:26.015+05:30	\N	\N	\N	\N	\N	\N	\N
218	343	Lionel	Messi	messi@gmail.com	7038578784	\N	\N	\N	\N	t	2024-09-17 15:42:30.208+05:30	2024-09-17 15:42:30.208+05:30	\N	\N	\N	\N	\N	\N	\N
193	302	John	Doe	johndoe123@gmail.com	9876542241	\N	\N	\N	\N	t	2024-08-27 16:28:39.025+05:30	2024-08-27 16:28:39.025+05:30	\N	\N	\N	\N	\N	\N	\N
194	303	John	Doe	johndoe1123@gmail.com	9876342241	\N	\N	\N	\N	t	2024-08-27 16:31:28.533+05:30	2024-08-27 16:31:28.533+05:30	\N	\N	\N	\N	\N	\N	\N
219	345	Casemiro	Fernandes	case@gmail.com	7038579784	\N	\N	\N	\N	t	2024-09-17 15:45:04.02+05:30	2024-09-17 15:45:04.02+05:30	\N	\N	\N	\N	\N	\N	\N
220	346	epramaannnn	cdacnnnn	epramn001@yahoo.com	5000004080	\N	\N	\N	\N	t	2024-09-19 15:13:04.439+05:30	2024-09-19 15:13:04.439+05:30	\N	\N	\N	\N	\N	\N	\N
195	304	Sanchita	Parab	san@gmail.com	2545665688	\N	\N	\N	\N	t	2024-08-29 12:52:51.84+05:30	2024-08-29 12:52:51.84+05:30	\N	\N	\N	\N	\N	\N	\N
196	305	Sankashti	Parab	sankashti@gmail.com	1245885455	\N	\N	\N	\N	t	2024-08-29 12:55:26.621+05:30	2024-08-29 12:55:26.621+05:30	\N	\N	\N	\N	\N	\N	\N
221	348	epramaannn	cdacnnn	epramn002@yahoo.com	5000004081	\N	\N	\N	\N	t	2024-09-19 15:26:24.211+05:30	2024-09-19 15:26:24.211+05:30	\N	\N	\N	\N	\N	\N	\N
222	353	epramaan	cdac	epramaan5543@gmail.com	7507310566	\N	\N	\N	\N	t	2024-09-20 11:18:49.167+05:30	2024-09-20 11:18:49.167+05:30	\N	\N	\N	\N	\N	\N	\N
197	307	Jake	Taylor	dmail@gmail.com	7038554864	\N	\N	\N	\N	t	2024-08-29 15:51:08.654+05:30	2024-08-29 15:51:08.654+05:30	\N	\N	\N	\N	\N	\N	\N
198	315	Jake	Taylor	dawes@yahoo.com	9510023074	\N	\N	\N	\N	t	2024-08-29 16:03:06.029+05:30	2024-08-29 16:03:06.029+05:30	\N	\N	\N	\N	\N	\N	\N
144	229	Naresh	Narvekar	naresh@gmail.com	5289698748	2024-08-12 05:30:00+05:30	568945218956	\N	f	t	2024-08-09 17:52:13.739+05:30	2024-09-03 17:21:39.137+05:30	3	1	2	1	1	3456	5645225255
36	67	Veda	Dessai	snehannarvekar07@gmail.com	9822151515	2001-07-20 05:30:00+05:30	12341254124	\N	f	t	2023-05-15 14:55:41.6+05:30	2024-09-04 15:24:36.806+05:30	2	1	2	3	1	45233	9822151515
200	317	Harshad	Miri	miri@gmail.com	2510366698	\N	\N	\N	\N	t	2024-09-04 16:34:23.104+05:30	2024-09-04 16:34:23.104+05:30	\N	\N	\N	\N	\N	\N	\N
201	319	Santosh	Gawas	santosh@gmail.com	9756885466	\N	\N	\N	\N	t	2024-09-10 11:04:53.979+05:30	2024-09-10 11:04:53.979+05:30	\N	\N	\N	\N	\N	\N	\N
199	316	Neymar	Vaz	neymar11@gmail.com	1573214897	2024-09-02 05:30:00+05:30	4	\N	f	t	2024-09-03 14:43:12.923+05:30	2024-09-03 15:40:45.431+05:30	3	1	1	1	1		9812456711
202	321	hemant	chatiim	chataimhemant@gmail.com	9011780403	\N	\N	\N	\N	t	2024-09-13 14:12:31.62+05:30	2024-09-13 14:12:31.62+05:30	\N	\N	\N	\N	\N	\N	\N
203	322	Shanti	Shirodkar	shanti@gmail.com	8000000453	\N	\N	\N	\N	t	2024-09-13 16:34:12.796+05:30	2024-09-13 16:34:12.796+05:30	\N	\N	\N	\N	\N	\N	\N
191	285	Hello	World	dylanvaz2283@gmail.com	7083688400	2024-09-02 05:30:00+05:30	01	\N	f	t	2024-08-27 12:56:17.151+05:30	2024-09-03 14:41:57.583+05:30	2	1	1	8	1	87123	12347
205	324	user	school	userschool@gmail.com	8585969654	\N	\N	\N	\N	t	2024-09-13 16:36:58.321+05:30	2024-09-13 16:36:58.321+05:30	\N	\N	\N	\N	\N	\N	\N
206	325	user	hs	userhs@gmail.com	8585969655	\N	\N	\N	\N	t	2024-09-13 16:38:16.425+05:30	2024-09-13 16:38:16.425+05:30	\N	\N	\N	\N	\N	\N	\N
207	326	testing	test	test360@yahoo.com	1000045600	\N	\N	\N	\N	t	2024-09-16 12:07:05.506+05:30	2024-09-16 12:07:05.506+05:30	\N	\N	\N	\N	\N	\N	\N
208	328	user	hs	userhs1@gmail.com	8585969651	\N	\N	\N	\N	t	2024-09-16 12:09:41.629+05:30	2024-09-16 12:09:41.629+05:30	\N	\N	\N	\N	\N	\N	\N
209	330	testing	test	test3600@yahoo.com	1000045650	\N	\N	\N	\N	t	2024-09-16 12:26:33.652+05:30	2024-09-16 12:26:33.652+05:30	\N	\N	\N	\N	\N	\N	\N
210	332	Testing	testt	test_25@yahoo.com	3000004801	\N	\N	\N	\N	t	2024-09-16 12:41:43.607+05:30	2024-09-16 12:41:43.607+05:30	\N	\N	\N	\N	\N	\N	\N
211	333	testing	testt	test_2@gmail.com	3000004802	\N	\N	\N	\N	t	2024-09-16 12:44:38.226+05:30	2024-09-16 12:44:38.226+05:30	\N	\N	\N	\N	\N	\N	\N
212	334	Testing	testt	test_24@yahoo.com	3100004799	\N	\N	\N	\N	t	2024-09-16 12:52:15.307+05:30	2024-09-16 12:52:15.307+05:30	\N	\N	\N	\N	\N	\N	\N
213	335	testin	testin	testin0258@gmail.com	4000025000	\N	\N	\N	\N	t	2024-09-16 13:04:48.113+05:30	2024-09-16 13:04:48.113+05:30	\N	\N	\N	\N	\N	\N	\N
214	336	testin	testin	testin0158@gmail.com	4000025100	\N	\N	\N	\N	t	2024-09-16 13:05:35.477+05:30	2024-09-16 13:05:35.477+05:30	\N	\N	\N	\N	\N	\N	\N
215	338	testin	testin	testin012258@gmail.com	4000025200	\N	\N	\N	\N	t	2024-09-16 13:09:58.671+05:30	2024-09-16 13:09:58.671+05:30	\N	\N	\N	\N	\N	\N	\N
216	339	Mani	Shirodkar	shdhdsh@gmail.com	9000000140	\N	\N	\N	\N	t	2024-09-16 13:11:04.422+05:30	2024-09-16 13:11:04.422+05:30	\N	\N	\N	\N	\N	\N	\N
217	341	Mani	narvekar	manitaaaaaaa@gmail.com	4002500010	\N	\N	\N	\N	t	2024-09-16 13:13:20.463+05:30	2024-09-16 13:13:20.463+05:30	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: UserQualifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: UserRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
39	67	7	t	t	2023-05-15 14:55:41.396+05:30	2023-05-15 14:55:41.396+05:30
40	67	6	f	t	2023-05-15 14:55:41.396+05:30	2023-05-15 14:55:41.396+05:30
47	75	6	t	\N	2023-06-23 15:53:09.961+05:30	2023-06-23 15:53:09.961+05:30
48	76	6	t	\N	2023-06-23 16:03:37.958+05:30	2023-06-23 16:03:37.958+05:30
49	77	1	t	t	2023-06-23 16:05:35.312+05:30	2023-06-23 16:05:35.312+05:30
50	78	7	t	\N	2023-06-23 16:07:40.931+05:30	2023-06-23 16:07:40.931+05:30
51	79	3	t	t	2023-06-23 17:38:39.944+05:30	2023-06-23 17:38:39.944+05:30
52	80	7	t	\N	2023-06-26 10:09:22.827+05:30	2023-06-26 10:09:22.827+05:30
53	81	7	t	\N	2023-06-26 10:49:53.399+05:30	2023-06-26 10:49:53.399+05:30
54	82	6	t	\N	2023-06-26 10:52:00.883+05:30	2023-06-26 10:52:00.883+05:30
55	83	2	t	\N	2023-06-26 10:53:18.666+05:30	2023-06-26 10:53:18.666+05:30
56	84	10	t	\N	2023-06-26 11:17:14.068+05:30	2023-06-26 11:17:14.068+05:30
57	92	7	t	\N	2023-06-26 11:54:44.602+05:30	2023-06-26 11:54:44.602+05:30
58	93	7	t	\N	2023-06-30 13:07:57.089+05:30	2023-06-30 13:07:57.089+05:30
59	95	7	t	\N	2023-06-30 13:10:45.673+05:30	2023-06-30 13:10:45.673+05:30
60	96	2	t	\N	2023-07-03 10:18:46.967+05:30	2023-07-03 10:18:46.967+05:30
61	97	2	t	\N	2023-07-05 10:38:22.498+05:30	2023-07-05 10:38:22.498+05:30
62	98	10	t	\N	2023-07-06 12:09:31.442+05:30	2023-07-06 12:09:31.442+05:30
63	100	11	t	\N	2023-07-06 12:10:22.643+05:30	2023-07-06 12:10:22.643+05:30
41	69	7	t	t	2023-06-15 11:39:49.488+05:30	2023-06-15 11:39:49.488+05:30
42	70	12	t	t	2023-06-19 17:00:42.304+05:30	2023-06-19 17:00:42.304+05:30
43	71	12	t	t	2023-06-19 17:10:39.107+05:30	2023-06-19 17:10:39.107+05:30
44	72	6	t	t	2023-06-20 16:16:23.264+05:30	2023-06-20 16:16:23.264+05:30
45	73	12	t	t	2023-06-20 16:18:54.039+05:30	2023-06-20 16:18:54.039+05:30
46	74	6	t	t	2023-06-23 15:26:00.064+05:30	2023-06-23 15:26:00.064+05:30
64	101	2	t	\N	2023-07-07 10:27:58.154+05:30	2023-07-07 10:27:58.154+05:30
65	102	2	t	\N	2023-07-07 13:04:14.221+05:30	2023-07-07 13:04:14.221+05:30
66	57	12	t	t	2023-05-15 14:55:41.396+05:30	2023-05-15 14:55:41.396+05:30
67	103	12	t	\N	2023-07-13 10:53:55.469+05:30	2023-07-13 10:53:55.469+05:30
69	107	7	t	\N	2023-07-13 16:52:21.816+05:30	2023-07-13 16:52:21.816+05:30
70	109	6	t	\N	2023-07-13 16:56:12.66+05:30	2023-07-13 16:56:12.66+05:30
71	110	7	t	\N	2023-07-14 09:43:57.304+05:30	2023-07-14 09:43:57.304+05:30
72	111	12	t	\N	2023-07-14 11:13:08.724+05:30	2023-07-14 11:13:08.724+05:30
73	112	7	t	\N	2023-07-14 15:04:23.155+05:30	2023-07-14 15:04:23.155+05:30
74	113	7	t	\N	2023-07-14 15:06:42.581+05:30	2023-07-14 15:06:42.581+05:30
75	114	5	t	t	2023-07-17 11:26:40.014+05:30	2023-07-17 11:26:40.014+05:30
76	115	7	t	\N	2023-07-17 13:03:07.703+05:30	2023-07-17 13:03:07.703+05:30
77	116	7	t	\N	2023-07-18 12:18:24.826+05:30	2023-07-18 12:18:24.826+05:30
78	118	14	t	t	2023-07-18 13:22:07.074+05:30	2023-07-18 13:22:07.074+05:30
81	96	5	f	t	2023-06-19 17:00:42.73+05:30	2023-05-15 14:55:41.396+05:30
82	119	7	t	\N	2023-08-17 14:39:58.607+05:30	2023-08-17 14:39:58.607+05:30
83	120	7	t	\N	2023-08-18 09:50:26.359+05:30	2023-08-18 09:50:26.359+05:30
84	121	7	t	\N	2023-08-22 11:11:26.012+05:30	2023-08-22 11:11:26.012+05:30
86	122	12	t	\N	2023-08-24 16:26:29.504+05:30	2023-08-24 16:26:29.504+05:30
87	125	12	t	\N	2023-08-25 15:40:13.662+05:30	2023-08-25 15:40:13.662+05:30
88	131	12	t	\N	2023-08-25 15:47:36.824+05:30	2023-08-25 15:47:36.824+05:30
89	134	12	t	\N	2023-08-25 16:10:46.649+05:30	2023-08-25 16:10:46.649+05:30
90	137	12	t	\N	2023-08-25 16:17:37.322+05:30	2023-08-25 16:17:37.322+05:30
91	139	12	t	\N	2023-08-25 16:54:34.377+05:30	2023-08-25 16:54:34.377+05:30
92	142	12	t	\N	2023-08-29 15:11:01.797+05:30	2023-08-29 15:11:01.797+05:30
93	143	12	t	\N	2023-08-29 17:30:56.146+05:30	2023-08-29 17:30:56.146+05:30
94	144	12	t	\N	2023-08-30 12:09:26.888+05:30	2023-08-30 12:09:26.888+05:30
95	145	12	t	\N	2023-08-30 12:13:38.046+05:30	2023-08-30 12:13:38.046+05:30
96	74	15	f	t	2023-08-31 11:42:09.116+05:30	2023-08-31 11:42:09.116+05:30
97	146	12	t	t	2023-08-31 17:32:04.821+05:30	2023-08-31 17:32:04.821+05:30
98	149	12	t	t	2023-08-31 17:37:12.639+05:30	2023-08-31 17:37:12.639+05:30
99	151	12	t	t	2023-09-01 11:20:21.373+05:30	2023-09-01 11:20:21.373+05:30
100	152	12	t	t	2023-09-01 11:23:34.421+05:30	2023-09-01 11:23:34.421+05:30
101	155	12	t	t	2023-09-01 11:29:04.867+05:30	2023-09-01 11:29:04.867+05:30
102	156	12	t	t	2023-09-01 13:01:40.91+05:30	2023-09-01 13:01:40.91+05:30
103	157	12	t	t	2023-09-01 15:01:00.245+05:30	2023-09-01 15:01:00.245+05:30
104	158	7	t	t	2023-09-01 15:16:20.935+05:30	2023-09-01 15:16:20.935+05:30
105	159	7	t	t	2023-09-04 13:10:56.084+05:30	2023-09-04 13:10:56.084+05:30
106	160	7	t	t	2023-09-04 13:24:10.569+05:30	2023-09-04 13:24:10.569+05:30
107	161	7	t	t	2023-09-04 13:25:01.089+05:30	2023-09-04 13:25:01.089+05:30
108	164	7	t	t	2023-09-04 15:58:08.885+05:30	2023-09-04 15:58:08.885+05:30
109	165	7	t	t	2023-09-07 13:09:43.918+05:30	2023-09-07 13:09:43.918+05:30
110	166	7	t	t	2023-09-11 10:12:34.021+05:30	2023-09-11 10:12:34.021+05:30
111	74	15	f	t	2023-09-12 10:46:32.029+05:30	2023-09-12 10:46:32.029+05:30
112	167	6	t	t	2023-09-12 11:29:22.907+05:30	2023-09-12 11:29:22.907+05:30
113	168	7	t	t	2023-09-12 11:34:48.842+05:30	2023-09-12 11:34:48.842+05:30
114	169	12	t	t	2023-09-12 11:40:45.142+05:30	2023-09-12 11:40:45.142+05:30
115	170	6	t	t	2023-09-13 10:21:30.218+05:30	2023-09-13 10:21:30.218+05:30
116	171	7	t	t	2023-09-13 10:25:24.754+05:30	2023-09-13 10:25:24.754+05:30
117	172	2	t	t	2023-09-13 10:27:22.932+05:30	2023-09-13 10:27:22.932+05:30
118	174	6	t	t	2023-09-13 11:03:14.32+05:30	2023-09-13 11:03:14.32+05:30
119	177	2	t	t	2023-09-13 11:10:01.151+05:30	2023-09-13 11:10:01.151+05:30
120	178	7	t	t	2023-09-13 11:13:10.903+05:30	2023-09-13 11:13:10.903+05:30
121	179	6	t	t	2023-09-13 11:13:11.125+05:30	2023-09-13 11:13:11.125+05:30
122	180	12	t	t	2023-09-13 11:52:00.444+05:30	2023-09-13 11:52:00.444+05:30
123	181	7	t	t	2023-09-14 15:21:25.788+05:30	2023-09-14 15:21:25.788+05:30
124	182	7	t	t	2023-09-26 11:22:44.447+05:30	2023-09-26 11:22:44.447+05:30
125	183	7	t	t	2023-09-28 12:20:15.264+05:30	2023-09-28 12:20:15.264+05:30
126	184	7	t	t	2023-09-28 12:27:23.248+05:30	2023-09-28 12:27:23.248+05:30
127	185	7	t	t	2023-09-29 12:40:45.246+05:30	2023-09-29 12:40:45.246+05:30
128	186	7	t	t	2023-10-06 10:39:12.378+05:30	2023-10-06 10:39:12.378+05:30
129	187	6	t	t	2023-10-12 14:10:21.071+05:30	2023-10-12 14:10:21.071+05:30
130	188	2	t	t	2023-10-12 14:14:32.944+05:30	2023-10-12 14:14:32.944+05:30
131	189	12	t	t	2023-10-13 10:45:53.137+05:30	2023-10-13 10:45:53.137+05:30
132	190	12	t	t	2023-10-13 11:02:24.465+05:30	2023-10-13 11:02:24.465+05:30
133	193	2	t	t	2023-10-13 13:25:43.052+05:30	2023-10-13 13:25:43.052+05:30
134	194	7	t	t	2023-10-13 13:31:12.113+05:30	2023-10-13 13:31:12.113+05:30
135	195	7	t	t	2023-10-18 11:10:27.418+05:30	2023-10-18 11:10:27.418+05:30
136	198	12	t	t	2023-10-18 12:58:40.441+05:30	2023-10-18 12:58:40.441+05:30
137	199	12	t	t	2023-10-18 15:56:57.774+05:30	2023-10-18 15:56:57.774+05:30
138	200	7	t	t	2023-10-20 10:54:56.524+05:30	2023-10-20 10:54:56.524+05:30
139	202	7	t	t	2023-10-20 11:12:29.627+05:30	2023-10-20 11:12:29.627+05:30
140	203	7	t	t	2023-10-26 11:26:47.621+05:30	2023-10-26 11:26:47.621+05:30
141	204	12	t	t	2023-11-07 11:36:19.126+05:30	2023-11-07 11:36:19.126+05:30
142	207	12	t	t	2023-11-07 12:30:49.519+05:30	2023-11-07 12:30:49.519+05:30
143	208	7	t	t	2023-11-07 12:54:15.429+05:30	2023-11-07 12:54:15.429+05:30
144	209	12	t	t	2023-11-09 10:25:45.402+05:30	2023-11-09 10:25:45.402+05:30
145	210	7	t	t	2024-07-02 14:42:28.94+05:30	2024-07-02 14:42:28.94+05:30
146	212	7	t	t	2024-07-03 10:30:06.973+05:30	2024-07-03 10:30:06.973+05:30
147	214	7	t	t	2024-07-03 15:18:50.135+05:30	2024-07-03 15:18:50.135+05:30
148	215	7	t	t	2024-07-04 10:50:24.155+05:30	2024-07-04 10:50:24.155+05:30
149	217	7	t	t	2024-07-04 11:13:25.76+05:30	2024-07-04 11:13:25.76+05:30
150	218	7	t	t	2024-07-08 12:37:43.463+05:30	2024-07-08 12:37:43.463+05:30
151	219	7	t	t	2024-07-11 15:29:17.544+05:30	2024-07-11 15:29:17.544+05:30
152	220	7	t	t	2024-07-11 15:30:12.216+05:30	2024-07-11 15:30:12.216+05:30
153	225	7	t	t	2024-08-07 13:00:45.599+05:30	2024-08-07 13:00:45.599+05:30
154	228	7	t	t	2024-08-07 13:02:30.032+05:30	2024-08-07 13:02:30.032+05:30
155	229	7	t	t	2024-08-09 17:52:13.738+05:30	2024-08-09 17:52:13.738+05:30
156	231	16	t	t	2024-08-14 15:59:33.232+05:30	2024-08-14 15:59:33.232+05:30
157	232	16	t	t	2024-08-14 16:03:17.009+05:30	2024-08-14 16:03:17.009+05:30
158	234	16	t	t	2024-08-14 16:05:03.797+05:30	2024-08-14 16:05:03.797+05:30
159	235	16	t	t	2024-08-14 16:06:08.467+05:30	2024-08-14 16:06:08.467+05:30
160	236	16	t	t	2024-08-14 16:08:00.848+05:30	2024-08-14 16:08:00.848+05:30
161	237	16	t	t	2024-08-14 16:20:56.613+05:30	2024-08-14 16:20:56.613+05:30
162	239	7	t	t	2024-08-16 11:01:20.496+05:30	2024-08-16 11:01:20.496+05:30
163	240	6	t	t	2024-08-16 12:25:00.895+05:30	2024-08-16 12:25:00.895+05:30
164	241	2	t	t	2024-08-16 17:12:25.941+05:30	2024-08-16 17:12:25.941+05:30
165	243	16	t	t	2024-08-19 13:09:50.412+05:30	2024-08-19 13:09:50.412+05:30
166	244	16	t	t	2024-08-19 13:11:35.387+05:30	2024-08-19 13:11:35.387+05:30
167	245	16	t	t	2024-08-19 13:22:19.593+05:30	2024-08-19 13:22:19.593+05:30
168	246	16	t	t	2024-08-19 13:23:00.344+05:30	2024-08-19 13:23:00.344+05:30
169	247	16	t	t	2024-08-19 13:24:20.158+05:30	2024-08-19 13:24:20.158+05:30
170	248	16	t	t	2024-08-19 15:42:31.83+05:30	2024-08-19 15:42:31.83+05:30
171	249	16	t	t	2024-08-19 15:43:08.145+05:30	2024-08-19 15:43:08.145+05:30
172	251	16	t	t	2024-08-19 16:33:33.137+05:30	2024-08-19 16:33:33.137+05:30
174	253	17	t	t	2024-08-21 11:15:58.982+05:30	2024-08-21 11:15:58.982+05:30
175	255	18	t	t	2024-08-21 11:22:39.376+05:30	2024-08-21 11:22:39.376+05:30
173	252	16	t	t	2024-08-21 10:47:48.417+05:30	2024-08-21 10:47:48.417+05:30
176	256	7	t	t	2024-08-21 15:36:15.367+05:30	2024-08-21 15:36:15.367+05:30
177	257	7	t	t	2024-08-21 15:58:02.95+05:30	2024-08-21 15:58:02.95+05:30
178	258	7	t	t	2024-08-21 16:01:44.107+05:30	2024-08-21 16:01:44.107+05:30
179	260	7	t	t	2024-08-21 16:02:39.001+05:30	2024-08-21 16:02:39.001+05:30
180	261	7	t	t	2024-08-21 16:33:04.947+05:30	2024-08-21 16:33:04.947+05:30
181	262	7	t	t	2024-08-23 10:56:11.023+05:30	2024-08-23 10:56:11.023+05:30
182	263	7	t	t	2024-08-23 16:33:53.889+05:30	2024-08-23 16:33:53.889+05:30
183	265	2	t	t	2024-08-23 16:34:25.398+05:30	2024-08-23 16:34:25.398+05:30
184	266	6	t	t	2024-08-23 16:34:49.645+05:30	2024-08-23 16:34:49.645+05:30
185	\N	\N	f	t	2024-08-26 15:00:14.399+05:30	2024-08-26 15:00:14.399+05:30
186	\N	\N	f	t	2024-08-26 15:06:23.465+05:30	2024-08-26 15:06:23.465+05:30
187	\N	\N	f	t	2024-08-26 15:06:33.399+05:30	2024-08-26 15:06:33.399+05:30
188	\N	\N	f	t	2024-08-26 15:06:40.014+05:30	2024-08-26 15:06:40.014+05:30
189	\N	\N	f	t	2024-08-26 15:06:46.933+05:30	2024-08-26 15:06:46.933+05:30
190	\N	\N	f	t	2024-08-26 15:09:06.652+05:30	2024-08-26 15:09:06.652+05:30
191	\N	\N	f	t	2024-08-26 15:09:08.928+05:30	2024-08-26 15:09:08.928+05:30
192	\N	\N	f	t	2024-08-26 15:14:07.872+05:30	2024-08-26 15:14:07.872+05:30
193	\N	\N	f	t	2024-08-26 15:14:24.131+05:30	2024-08-26 15:14:24.131+05:30
194	\N	\N	f	t	2024-08-26 15:16:21.002+05:30	2024-08-26 15:16:21.002+05:30
195	\N	\N	f	t	2024-08-26 15:16:27.664+05:30	2024-08-26 15:16:27.664+05:30
196	\N	\N	f	t	2024-08-26 15:16:32.732+05:30	2024-08-26 15:16:32.732+05:30
197	\N	\N	f	t	2024-08-26 15:17:37.839+05:30	2024-08-26 15:17:37.839+05:30
198	281	7	t	t	2024-08-26 15:19:26.098+05:30	2024-08-26 15:19:26.098+05:30
199	282	7	t	t	2024-08-26 15:19:43.665+05:30	2024-08-26 15:19:43.665+05:30
200	283	7	t	t	2024-08-26 15:20:25.601+05:30	2024-08-26 15:20:25.601+05:30
201	284	7	t	t	2024-08-27 10:51:56.822+05:30	2024-08-27 10:51:56.822+05:30
202	285	7	t	t	2024-08-27 12:56:17.148+05:30	2024-08-27 12:56:17.148+05:30
203	295	6	t	t	2024-08-27 14:31:26.012+05:30	2024-08-27 14:31:26.012+05:30
204	302	2	t	t	2024-08-27 16:28:39.024+05:30	2024-08-27 16:28:39.024+05:30
205	303	2	t	t	2024-08-27 16:31:28.532+05:30	2024-08-27 16:31:28.532+05:30
206	304	7	t	t	2024-08-29 12:52:51.839+05:30	2024-08-29 12:52:51.839+05:30
207	305	7	t	t	2024-08-29 12:55:26.62+05:30	2024-08-29 12:55:26.62+05:30
208	307	7	t	t	2024-08-29 15:51:08.653+05:30	2024-08-29 15:51:08.653+05:30
209	315	7	t	t	2024-08-29 16:03:06.028+05:30	2024-08-29 16:03:06.028+05:30
210	316	7	t	t	2024-09-03 14:43:12.921+05:30	2024-09-03 14:43:12.921+05:30
211	317	7	t	t	2024-09-04 16:34:23.102+05:30	2024-09-04 16:34:23.102+05:30
212	319	7	t	t	2024-09-10 11:04:53.977+05:30	2024-09-10 11:04:53.977+05:30
213	321	7	t	t	2024-09-13 14:12:31.618+05:30	2024-09-13 14:12:31.618+05:30
214	322	7	t	t	2024-09-13 16:34:12.793+05:30	2024-09-13 16:34:12.793+05:30
216	324	7	t	t	2024-09-13 16:36:58.32+05:30	2024-09-13 16:36:58.32+05:30
217	325	7	t	t	2024-09-13 16:38:16.424+05:30	2024-09-13 16:38:16.424+05:30
218	326	7	t	t	2024-09-16 12:07:05.504+05:30	2024-09-16 12:07:05.504+05:30
219	328	7	t	t	2024-09-16 12:09:41.627+05:30	2024-09-16 12:09:41.627+05:30
220	330	7	t	t	2024-09-16 12:26:33.651+05:30	2024-09-16 12:26:33.651+05:30
221	332	7	t	t	2024-09-16 12:41:43.605+05:30	2024-09-16 12:41:43.605+05:30
222	333	7	t	t	2024-09-16 12:44:38.224+05:30	2024-09-16 12:44:38.224+05:30
223	334	7	t	t	2024-09-16 12:52:15.306+05:30	2024-09-16 12:52:15.306+05:30
224	335	7	t	t	2024-09-16 13:04:48.111+05:30	2024-09-16 13:04:48.111+05:30
225	336	7	t	t	2024-09-16 13:05:35.476+05:30	2024-09-16 13:05:35.476+05:30
226	338	7	t	t	2024-09-16 13:09:58.67+05:30	2024-09-16 13:09:58.67+05:30
227	339	7	t	t	2024-09-16 13:11:04.421+05:30	2024-09-16 13:11:04.421+05:30
228	341	7	t	t	2024-09-16 13:13:20.462+05:30	2024-09-16 13:13:20.462+05:30
229	343	7	t	t	2024-09-17 15:42:30.205+05:30	2024-09-17 15:42:30.205+05:30
230	345	7	t	t	2024-09-17 15:45:04.018+05:30	2024-09-17 15:45:04.018+05:30
231	346	7	t	t	2024-09-19 15:13:04.435+05:30	2024-09-19 15:13:04.435+05:30
232	348	7	t	t	2024-09-19 15:26:24.21+05:30	2024-09-19 15:26:24.21+05:30
233	353	7	t	t	2024-09-20 11:18:49.165+05:30	2024-09-20 11:18:49.165+05:30
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
9	\N	desairhugveda1997@gmail.com	$2a$10$EL79heZGqQaROEQ8F2CF2Ojjfoar/VF5rFHGcmQEv8VSFiUQ0Js9O	7507310942	desairhugveda215@gmail.com	f	f	t	f	f	2023-03-23 12:56:46.046+05:30	2023-03-23 12:56:46.046+05:30	\N	f	\N
11	\N	desairhugveda1999@gmail.com	$2a$10$MUDOl6hUasyb3KIej93J.ef/jWsedgd6uYbA2RyTikloWWUKB3YcC	7507310947	desairhugveda27@gmail.com	f	f	t	f	f	2023-03-23 12:59:53.02+05:30	2023-03-23 12:59:53.02+05:30	\N	f	\N
13	\N	desairhugveda2000@gmail.com	$2a$10$NlcCwS7Os5tCVeVTm/nmyuYdOFE7CmdypeWfjJm3fndYye7UVfB5e	7507310949	desairhugveda2000@gmail.com	f	f	t	f	f	2023-03-23 13:00:19.901+05:30	2023-03-23 13:00:19.901+05:30	\N	f	\N
15	\N	abc01	$2a$10$xG8Pr.S6e6b1OrTcGaEhROXxJNjNWR4aHgan/m/cav2j5UUj14IvO	7507310948	sneha@gmail.com	f	f	t	f	f	2023-03-23 14:49:55.856+05:30	2023-03-23 14:49:55.856+05:30	\N	f	\N
42	\N	veda	$2a$10$W33J.n3O2U36QH3zFp0PZuLZrLks4A5fXubt1uVbpH88lzZHZYzMu	7507310799	rhugveda@gmail.com	f	f	t	f	f	2023-04-12 10:45:40.497+05:30	2023-04-12 10:45:40.497+05:30	\N	f	\N
16	\N	yougaliparab5344	$2a$10$LTqVs6i2j03xrKhE7DjaYed40L9dQ52FoPmWG1pUrWVeVj1iRJgz.	4563445344	yougaliparab@gmail.com	f	f	t	f	f	2023-04-10 16:23:57.531+05:30	2023-04-10 16:23:57.531+05:30	\N	f	\N
19	\N	dheyougaliparab5466	$2a$10$MrjnQPOV/C2/B8RU7kZO4udccb0U1yg53ZdwXc5hlckFCXNMUnZmS	4578115466	dheyougaliparab@gmail.com	f	f	t	f	f	2023-04-10 16:30:46.66+05:30	2023-04-10 16:30:46.66+05:30	\N	f	\N
21	\N	yougali8544	$2a$10$.VGIqZ82ea8LBuOPlfwGB.enE.akf7.0LzWTBfcLFd3yglZNG6VuG	8546778544	yougali@dmscollege.ac.in	f	f	t	f	f	2023-04-10 16:32:30.634+05:30	2023-04-10 16:32:30.634+05:30	\N	f	\N
23	\N	snehaji6577	$2a$10$T8pPUnQS0gnHDN5Ukes2heIV3I2UVWujBeLLQ0Cs7WYhCKbS/AaXa	6756776577	snehaji@gmail.com	f	f	t	f	f	2023-04-10 16:54:23.53+05:30	2023-04-10 16:54:23.53+05:30	\N	f	\N
24	\N	abcd6788	$2a$10$8z.fTbVtJO4O23foM2zQWOKzZKc9fiKOZIewSyfzuIyhFuulQ7ZGe	7868776788	abcd@gmail.com	f	f	t	f	f	2023-04-10 16:56:44.595+05:30	2023-04-10 16:56:44.595+05:30	\N	f	\N
25	\N	rughvedadessai4521	$2a$10$m.69QkfUTInm5yxEWu2ECeozSpl.dPxJ6qm8zYeMI56Xju/R0MFUe	9568784521	rughvedadessai@gmail.com	f	f	t	f	f	2023-04-10 17:12:38.672+05:30	2023-04-10 17:12:38.672+05:30	\N	f	\N
27	\N	rrrughvedadessai4876	$2a$10$/RBr.w6OltGylw.VX.hHLO/QKyF858vrevmlXtLc.Pw9wS3yg6mZa	9568784876	rrrughvedadessai@gmail.com	f	f	t	f	f	2023-04-10 17:14:32.611+05:30	2023-04-10 17:14:32.611+05:30	\N	f	\N
28	\N	dhe.abhishek2609	$2a$10$J8gIkNUDDqCtDRdoYF1tSu97z/qJwu51ZWDFzoTWz9amSZO/CyPaW	9158662609	dhe.abhishek@gmail.com	f	f	t	f	f	2023-04-10 17:20:17.175+05:30	2023-04-11 11:03:38.947+05:30	\N	f	\N
29	\N	veda21	$2a$10$hAX13eyLtyW38Qnk/hfIAu5ciK17ZsVbM5FKnrsOIO63qktgl1bge	7507310996	rhugvedadesai@gmail.com	f	f	t	f	f	2023-04-12 10:06:34.879+05:30	2023-04-12 10:06:34.879+05:30	\N	f	\N
32	\N	veda123	$2a$10$g82OlMRAoNJdL5pSZAWtpu0ZPNzGQw51lJYg9YFrq7g1oz4U81INa	7507310998	rhugvedadesai1996@gmail.com	f	f	t	f	f	2023-04-12 10:13:11.112+05:30	2023-04-12 10:13:11.112+05:30	\N	f	\N
35	\N	veda1234	$2a$10$Bm90P1J5sTZ2c/QyR7Ii/O5YLTrQNAtCmhfEuuDhfECf/vPYToOgu	7507310992	rhugvedadesai19964@gmail.com	f	f	t	f	f	2023-04-12 10:24:08.314+05:30	2023-04-12 10:24:08.314+05:30	\N	f	\N
37	\N	veda12345	$2a$10$4CUUTdpiQARSMbUdivMRgefkU8wXZQwkBJRmJ6EtNl.fLIap6avMS	7507310997	rhugvedadesai199648@gmail.com	f	f	t	f	f	2023-04-12 10:25:34.771+05:30	2023-04-12 10:25:34.771+05:30	\N	f	\N
39	\N	veda212	$2a$10$TyajN60/NeHs5nYvN/VgTuUhCDrW67ZdlYO35LMkTlgaAnP42UATK	7507310789	rhugvedadesai199@gmail.com	f	f	t	f	f	2023-04-12 10:31:10.243+05:30	2023-04-12 10:31:10.243+05:30	\N	f	\N
41	\N	veda21288	$2a$10$RReN9fM7G1TUSxVeoCyhLeQLUoZiEId7yccHLG4jxu9By9Cssxb9G	7507310771	rhugvedadesai19889@gmail.com	f	f	t	f	f	2023-04-12 10:35:12.344+05:30	2023-04-12 10:35:12.344+05:30	\N	f	\N
43	\N	veda1996	$2a$10$NapscmxxUGe4CKkYhXPAmOXXCxcnY6ENIFCDnI3hCeoL7PWAVrU5e	7507310796	rhugveda96@gmail.com	f	f	t	f	f	2023-04-12 10:47:20.58+05:30	2023-04-12 10:47:20.58+05:30	\N	f	\N
44	\N	veda19967	$2a$10$rKBPEoywNnw/dvoDIvi.TeZSOZIL81iGAsJv8V8vqmByVJbUHEfEC	7507310714	rhugveda967@gmail.com	f	f	t	f	f	2023-04-12 10:59:18.427+05:30	2023-04-12 10:59:18.427+05:30	\N	f	\N
45	\N	veda199674	$2a$10$mUER73XmUxgqB/5mGNYm3eYtgQK7Ik/tE7sQwJUSMmEZ4hjuK.Wle	7507310719	rhugveda9647@gmail.com	f	f	t	f	f	2023-04-12 11:00:20.562+05:30	2023-04-12 11:00:20.562+05:30	\N	f	\N
46	\N	veda1996747	$2a$10$pYrenrUObWqKnOpz4Ya.SOeooSTWXQuGRHWx4WJp94kZnOUtFPHPm	7507310717	rhugveda96477@gmail.com	f	f	t	f	f	2023-04-12 11:02:45.757+05:30	2023-04-12 11:02:45.757+05:30	\N	f	\N
47	\N	veda74	$2a$10$D6ATa1ngGPhFHk8p/.gkxexUtu.hUjkXAxGh.SXQ6l3s8p80o29vC	7507310718	rhugveda9@gmail.com	f	f	t	f	f	2023-04-12 11:05:23.641+05:30	2023-04-12 11:05:23.641+05:30	\N	f	\N
48	\N	veda78	$2a$10$KK3hotkGZMhKsun4/TAv3OzJLzphpgH.cTYrm9ns/bihw3f40MEX2	7507310788	rhugveda98@gmail.com	f	f	t	f	f	2023-04-12 11:06:43.861+05:30	2023-04-12 11:06:43.861+05:30	\N	f	\N
49	\N	desai@gmail.com	$2a$10$/49ym4GM8V8U1qyTwWF1CeWfnNo/j8K2bWxPiuSB.NwJtRMN2zxDC	9890098471	company34451@gmail.com	f	f	t	f	f	2023-04-12 13:24:16.566+05:30	2023-04-12 13:24:16.566+05:30	\N	f	\N
51	\N	desai1@gmail.com	$2a$10$XChb2nuZbJnyG4R2apUBretFr2icbaV83EdgLipGY5VlCcPlZOhk6	9890098489	company344@gmail.com	f	f	t	f	f	2023-04-12 13:25:32.727+05:30	2023-04-12 13:25:32.727+05:30	\N	f	\N
55	\N	desai12@gmail.com	$2a$10$01BTPlo.IzmKw8.JXJPR3ORjBqzdHfdvrX.VDDh5MGCjcvYjq8CKe	9890098789	company4@gmail.com	f	f	t	f	f	2023-04-12 13:27:07.78+05:30	2023-04-12 13:27:07.78+05:30	\N	f	\N
58	\N	ysr@gmail.com	$2a$10$OqSYX8AlJmmkt/TjdaDKM.4JgDihVH8/ZtjafdEHCYmyIi1Pt4qYG	9895624523	ysr@gmail.com	f	f	t	f	f	2023-04-12 13:32:49.959+05:30	2023-04-12 13:32:49.959+05:30	\N	f	\N
60	\N	veda789	$2a$10$2rD88lLlU6lXxy9ITtvH9.qO6ciWFMEhigKHEOQoZVRB0WRCmPJXW	7897897897	rhugveda789@gmail.com	f	f	t	f	f	2023-04-18 16:44:07.026+05:30	2023-04-18 16:44:07.026+05:30	\N	f	\N
62	\N	veda7890	$2a$10$/cxhXHf9xWrX.pLepW44uuRYMFkoB6aYn0hAIk38R2ERkfTTKPHG.	7897897890	rhugveda7890@gmail.com	f	f	t	f	f	2023-04-18 16:44:31.079+05:30	2023-04-18 16:44:31.079+05:30	\N	f	\N
64	\N	veda7899	$2a$10$NVc8.gyZHWUtMnMbI8WnK.DFjgB.N7/Riced6eX6wQxZR0sk3sdtS	7897897899	rhugveda7899@gmail.com	f	f	t	f	f	2023-04-18 16:46:48.18+05:30	2023-04-18 16:46:48.18+05:30	\N	f	\N
6	\N	desairhugveda1996@gmail.com	$2a$10$6GgDgo0D.ozNtOpTbi1uH.KYqYTDbqBI0dizPaF8SkBCbuTaeZ7P6	7507310941	desairhugveda21@gmail.com	t	t	t	f	f	2023-03-23 12:45:41.045+05:30	2023-05-29 15:41:00.636+05:30	\N	f	\N
3	\N	desairhugveda21@gmail.com	Aaaa@111	\N	\N	f	f	t	t	f	2023-03-23 11:42:44.337+05:30	2023-07-21 12:40:33.577+05:30	VER	f	40
5	\N	desairhugveda@gmail.com	Aaaa@111	\N	\N	f	f	t	t	f	2023-03-23 11:51:18.856+05:30	2023-06-06 12:43:31.225+05:30	verified	f	\N
72	\N	staff7896	$2a$10$8r6ePrMeWDa1opU9cmM6Qekm8O6huVwH5G5G6fU9oF6Fe8lKSvuUm	7897897895	staff7896@gmail.com	f	f	t	f	f	2023-06-20 16:16:22.842+05:30	2023-06-21 16:23:11.498+05:30	SUB	t	\N
75	\N	saurabh123	$2a$10$bMpJLzxKnDUbKqzczN75w.HPbITK1TKbjqx0nV7t84zieLtj5iUnW	5656776788	saurabh123@yahoo.com	f	f	t	f	f	2023-06-23 15:53:09.559+05:30	2023-06-23 15:53:09.559+05:30	REG	f	\N
76	\N	sayli123	$2a$10$t5.dICgsdhp/t8lX5iEvW.5uvKJhw/A4OYylzRL9uf2385gZXlWUa	4512556455	sayli@yahoo.in	f	f	t	f	f	2023-06-23 16:03:37.505+05:30	2023-06-23 16:03:37.505+05:30	REG	f	\N
77	\N	superadmin7485	$2a$10$vSiwcj87hT3ekM9sJ.CdWOBfPx6BSz6EIxpew1HSzFYBcznE.HtiO	9696857485	superadmin@gmail.com	f	f	t	f	f	2023-06-23 16:05:35.221+05:30	2023-06-23 16:05:35.221+05:30	REG	f	\N
57	\N	desai1289@gmail.com	$2a$10$q5VoxJNiIhbOVvJioaj/Z.nsXGKlBz13ycE9sNaoffdBAKHSA7SCy	9890098783	company4544@gmail.com	f	f	t	t	f	2023-04-12 13:30:58.692+05:30	2023-07-11 09:54:53.241+05:30	VER	f	40
74	\N	staff1230	$2a$10$iGKcMsozEhYoBacq1Urycemt9lwAibKrf7jOxvfyKzYI7UgoC31kK	9652365412	staff1230@gmail.com	f	f	t	t	f	2023-06-23 15:25:59.235+05:30	2023-06-23 15:25:59.235+05:30	VER	t	40
73	\N	edgeplus123	$2a$10$UZGpCCakzwAf.e/0I3QT7eLXyCn5B1jcb/Ig/abMbhITFeCqmBp7m	9600000012	edgeplus@gmail.com	f	f	t	t	f	2023-06-20 16:18:54.028+05:30	2023-09-13 14:34:53.192+05:30	VER	t	40
69	\N	veda7896	$2a$10$2RIDoR72Wh.zzRw2LbyMf.8z0KtbJ3gZPjLMozU3VAkmydljQxQsy	7897897896	rhugveda7896@gmail.com	f	f	t	t	f	2023-06-15 11:39:49.453+05:30	2023-07-11 11:36:17.482+05:30	VER	f	\N
82	\N	lavina123	$2a$10$kdl679uucXwToavV40rItu8UrP3B5y.qXx1EADcayrHfeEFh.p2V.	9898989898	lavina123@gmail.com	f	f	t	f	f	2023-06-26 10:52:00.884+05:30	2023-06-26 10:52:00.884+05:30	REG	f	\N
83	\N	siya123	$2a$10$oEvmpwwKzucxYWFNjc7FW.u3hbuHEPMrwJL7RzS.AEJZ1q7cswWi.	9898989890	siya@gmail.com	f	f	t	f	f	2023-06-26 10:53:18.656+05:30	2023-06-26 10:53:18.656+05:30	REG	f	\N
84	\N	wwwwww123	$2a$10$c3eLwMn1ELsfj8EHPkilnezudPgOPTL2G8s/p5hLt5Y6HMGCLOFcC	2222222222	snehadh@gmail.com	f	f	t	f	f	2023-06-26 11:17:13.226+05:30	2023-06-26 11:17:13.226+05:30	REG	f	\N
118	\N	dheadmin3214	$2a$10$OvNyqqIaJQBBIrnhOXizdu.0D8F1SH7oKTT91qXpaGgpfv2.7T/gK	9874563214	dheadmin@gmail.com	f	f	t	t	f	2023-07-18 13:22:05.985+05:30	2023-08-31 11:21:41.868+05:30	VER	f	\N
80	\N	ravi123	$2a$10$PTliVtciCFBMCtiM1HIoeuBF7ALuXcujsx3AKLqzFJYgsvVgkVWle	1245998688	ravi@yahoo.in	f	f	t	t	f	2023-06-26 10:09:22.728+05:30	2023-07-11 11:36:29.197+05:30	VER	t	\N
98	\N	raghu123	$2a$10$R06MrMZV0B4Zz6iSC8opxe8yV9BPyJvR7rzOYMVCqvcezY0.Vam4y	4564564564	raghu@gmail.com	f	f	t	f	f	2023-07-06 12:09:31.262+05:30	2023-07-06 12:09:31.262+05:30	REG	f	\N
100	\N	raghav123	$2a$10$c0qlgOufggYTSj.DEvZ6c.rKFMN0O8BOmJxi.5cvn2LaDEGj99JkO	4564564565	raghav@gmail.com	f	f	t	f	f	2023-07-06 12:10:22.634+05:30	2023-07-06 12:10:22.634+05:30	REG	f	\N
81	\N	ravina123	$2a$10$nC/BpnXNSZqIZ3NYhCyi4O7mN22erC4Q9CazX/pE7xzBRitCQHUFK	7020435403	snehadhe07@gmail.com	f	f	t	t	f	2023-06-26 10:49:53.321+05:30	2023-07-11 11:37:12.025+05:30	VER	f	\N
101	\N	nt003	$2a$10$KJ3zLEE.3EbH99hAbeCdZOTGh3ThdKPm1cOb80VPnd8TfJ74qYz/e	7867887899	santoshi@gmail.com	f	f	t	t	f	2023-07-07 10:27:57.646+05:30	2023-07-07 11:36:55.147+05:30	SUB	t	\N
97	\N	nt002	$2a$10$UnJ6m7Ah4WYRY7M21u16fOuvK2DynJ18jYMJiWNm75xdIeRepW7wu	9656996566	shreya@gmail.com	f	f	t	t	f	2023-07-05 10:38:22.401+05:30	2023-07-07 12:29:48.455+05:30	SUB	t	\N
93	\N	user100	$2a$10$1i9nnJHfxFQNs6zTDUGgYOgJfwLzOG8Zf3sSPIMIhrReHosMdlgIO	7744110478	user100@gmail.com	f	f	t	t	f	2023-06-30 13:07:56.951+05:30	2023-07-11 11:37:18.569+05:30	VER	f	\N
102	\N	nt005	$2a$10$XTlSNAstaolo1inAApe.au.RqAR8mDg1RXV7X8W6IcXkrkzZdkLQO	9635669655	prach11@gmail.com	f	f	t	t	f	2023-07-07 13:04:14.114+05:30	2023-07-07 13:07:49.41+05:30	SUB	t	\N
114	\N	vandana5263	$2a$10$Jncx9.31GNbJUQ5iRWFZMuH7qXnDSbOOTmkMQPga.c57Y9JAs00Pu	6363635263	vandana@yahoo.com	f	f	t	t	f	2023-07-17 11:26:39.328+05:30	2023-07-17 11:26:39.328+05:30	VER	f	\N
111	\N	pixels123	$2a$10$nVtKf0dc1vxbThC0fqYVrO42ay4dTKDJ6XJoKyGVCrMa/.4ao0Mv2	9494949459	pixels.google@gmail.com	f	f	t	t	f	2023-07-14 11:13:08.628+05:30	2023-07-17 16:56:47.822+05:30	VER	t	40
71	\N	company341@gmail.com	$2a$10$vLWAApOadVVhPSLOSjdes.4cgcyKAkd9vqcmdsqne7CGE/p6a4wfm	9890094378	company341@gmail.com	f	f	t	f	f	2023-06-19 17:10:39.001+05:30	2023-07-10 17:31:12.787+05:30	REG	f	\N
92	\N	vedaaa123	$2a$10$402VfZrIFzr6qELO8afXMebDX8YfnPWIrvLZiHadVPmB8HEoYjmyO	3200125477	vedika@gmail.com	f	f	t	t	f	2023-06-26 11:54:44.558+05:30	2023-07-11 11:37:25.926+05:30	VER	t	\N
95	\N	User101	$2a$10$BRUTdS7Q2Z6vxFNm7wovsuG6MJjogJ.MjfOgGlwUdVVwP84bda0p6	9944557870	userSneha100@gmail.com	f	f	t	t	f	2023-06-30 13:10:45.62+05:30	2023-07-11 11:37:00.697+05:30	VER	f	\N
109	\N	faculty_khandola	$2a$10$JD70pcuZjn6AR/Me3wyheeOYQ.Hiy7DYBdlViKSa5AqB.woH98w0C	3625144152	paresh@gmail.com	f	f	t	f	f	2023-07-13 16:56:12.222+05:30	2023-07-13 16:56:12.222+05:30	REG	f	\N
107	\N	student_khandola	$2a$10$yD62yMo1QCUGbsM2y6zJ/OIx.k2CScVDrWvkIFoloPN0bj8N37av2	8574859658	bhakti@gmail.com	f	f	t	f	f	2023-07-13 16:52:21.803+05:30	2023-07-13 16:52:21.803+05:30	REG	f	\N
112	\N	apurva123	$2a$10$IwD4XWfE/SAeuEGODtd6r.IToMPMQQBBvNc3ZBqUQHD0sWPZPAhL.	2125565899	apurva@gmail.com	f	f	t	f	f	2023-07-14 15:04:22.947+05:30	2023-07-14 15:04:22.947+05:30	REG	f	\N
115	\N	mrunal123	$2a$10$uokteAGmhrWKcHgmzCP3o.wwgcrXUxiO0WBx7DK81GbGycN1LFthS	2356998655	mrunal@gmail.com	f	f	t	f	f	2023-07-17 13:03:07.567+05:30	2023-07-17 15:05:40.017+05:30	RESUB	f	\N
113	\N	apurv123	$2a$10$uJEbRUAP3p0s0HjOTFijIOJ0irpOMGdkYImbNQLZe74XSD.TBPv66	8965998655	apurv@gmail.com	f	f	t	f	f	2023-07-14 15:06:42.554+05:30	2023-07-14 15:06:42.554+05:30	REG	f	\N
96	\N	nt001	$2a$10$CECjG3XBByKvGZuEP.gz6.QwE.BylrYfrZUEDrUt2L.naDan8y11.	1235669688	nt001@gmail.com	f	f	t	t	f	2023-07-03 10:18:46.178+05:30	2023-09-13 11:15:42.969+05:30	VER	t	51
103	\N	pmg123	$2a$10$iPJh5xyzkTU1EGRnGJIwDObQsdbRgIRFzgdHw20qJti/4/Mbtcqg2	9000002598	pmg@gmail.com	f	f	t	t	f	2023-07-13 10:53:55.372+05:30	2023-07-17 16:57:34.673+05:30	VER	t	40
116	\N	student18072023	$2a$10$UtaNWQHC5RyxFCEe9j3qv.H0tiX445NsCRTfow5knpbhumiZCUgJe	9865859658	shambhavidesai@gmail.com	f	f	t	f	f	2023-07-18 12:18:24.679+05:30	2023-08-11 17:00:47.101+05:30	SUB	f	\N
125	\N	ashvenkarp	$2a$10$6qgYfIGX4DqLuQwZy2Y3zu0pq5jN0JZ92atABHNBz9o1Yd0dBNy0.	8976789867	infosys@gmail.com	f	f	t	f	f	2023-08-25 15:40:13.648+05:30	2023-08-25 15:40:13.648+05:30	REG	f	\N
121	\N	prapti123	$2a$10$V5fpZgb0XhoKZIq3xM3TS.2oK9.mqCOkx1ETYALUDnKSXZSGJQ6Lq	9023443455	praptinaik@gmail.com	f	f	t	f	f	2023-08-22 11:11:25.948+05:30	2023-08-22 11:11:25.948+05:30	REG	f	\N
131	\N	ashvenkarpp	$2a$10$TnEA72yGb0X0eyXvDrXPD.gTqEHs2CTgUaIC.kN6AW4P2azVUd3/m	8976789666	infosyss1@gmail.com	f	f	t	f	f	2023-08-25 15:47:36.818+05:30	2023-08-25 15:47:36.818+05:30	REG	f	\N
134	\N	ashpareshv	$2a$10$cyDwLit3LgnXiS46M/GvSe8wQd8sGMbJSJZRrPtLP45IfDIV7hj3i	8976789777	infosysslimited1@gmail.com	f	f	t	f	f	2023-08-25 16:10:46.637+05:30	2023-08-25 16:10:46.637+05:30	REG	f	\N
119	\N	saili123	$2a$10$yNcfh.DUNjdEkKN.HINAeOeWKgYdIJ3hoczn2WZCarPpUDDYHpXh2	3420998799	sailimishra@gmail.com	f	f	t	f	f	2023-08-17 14:39:58.405+05:30	2023-09-05 11:18:42.741+05:30	RESUB	t	\N
70	\N	company371@gmail.com	$2a$10$ecUkyLIqPX8E1mfjZ.ozqeu9C1RGyn1zOqiefB.JHv4kQ1lJFcs/u	9890093371	company371@gmail.com	f	f	t	f	f	2023-06-19 17:00:42.12+05:30	2023-07-10 17:30:27.195+05:30	REG	f	\N
79	\N	yougali2121	$2a$10$NlxE79Gb099.Jg654YQmt.AFsLSXVv27.BfhF/YlDOZNYLDS0XSRa	6363632121	yougali@yahoo.com	f	f	t	t	f	2023-06-23 17:38:39.817+05:30	2023-09-06 13:10:47.674+05:30	VER	f	51
120	\N	pranjal123	$2a$10$/Bu10dd7C5i7rLAQXovv/OtMIds14/qWFH/OtEur29FIjLYKI0UdG	342345566	pranjal@gmail.com	f	f	t	t	f	2023-08-18 09:50:26.194+05:30	2023-09-07 13:00:09.22+05:30	VER	t	51
122	\N	pashvenkar	$2a$10$ZeG6pYNyHfgAmXHQSj.h/OGa/6tfrKsGznmy1YMHysvJjARGZGJES	897656456	dmc@gmail.com	f	f	t	t	f	2023-08-24 16:26:29.265+05:30	2023-09-11 14:25:25.235+05:30	VER	f	75
137	\N	ashpareshvv	$2a$10$L6xw140f3lnjhcHJ1tqXde.AGVPkuiKx/j3ynMdEbyKFnjIfwANOq	8966665555	infosysslimited12@gmail.com	f	f	t	f	f	2023-08-25 16:17:37.312+05:30	2023-08-25 16:17:37.312+05:30	REG	f	\N
110	\N	bhagya123	$2a$10$.tMagdL.TVXNI2IZDswJAOjM7buPNhojXTGwMUNN/UoW3PXuwlqp6	9656885619	bhagya123@gmail.com	f	f	t	f	f	2023-07-14 09:43:57.226+05:30	2023-08-29 17:03:32.64+05:30	RESUB	t	51
144	\N	yugalip	$2a$10$yyXfgXaltQ3BAIcwdOBqM.TPhz2Ajxf3mdbtsS6YVxR4PGw1x30yG	9888887777	tcs123@gmail.com	f	f	t	f	f	2023-08-30 12:09:26.484+05:30	2023-08-30 12:09:26.484+05:30	REG	f	\N
145	\N	DessaiSneha	$2a$10$o0OZDi4nzIy.DrRPgQ2Bgu00NwMOzg/djX1bmVDT0D3AHbAGFQhl6	7767656789	abc@gmail.com	f	f	t	t	f	2023-08-30 12:13:37.681+05:30	2023-08-30 12:13:37.681+05:30	VER	t	51
146	\N	durvi	$2a$10$MCV.TwOXtwKEX4Q2q8KXnOT.tmssTY4T.0QkW8yUjw7u8Bbw4zE7m	9876574857	brizamin@gmail.com	f	f	t	f	f	2023-08-31 17:32:04.44+05:30	2023-08-31 17:32:04.44+05:30	REG	f	\N
149	\N	durvi1	$2a$10$m58cSx7MBKk9nSxSfqKUOug6H1oic4X7pqUHSWcS.jUsm/HC5ziSa	9876777779	brizamind@gmail.com	f	f	t	f	f	2023-08-31 17:37:12.625+05:30	2023-08-31 17:37:12.625+05:30	REG	f	\N
151	\N	naikshabi	$2a$10$R8slH/3TZT6LHMXenYULuu/9hjgUgma2MmZ1lTAv3HRDjerGFNH4q	8887657876	cbts@gmail.com	f	f	t	f	f	2023-09-01 11:20:21.146+05:30	2023-09-01 11:20:21.146+05:30	REG	f	\N
152	\N	naikshabi23	$2a$10$HwUO0jot5OWDW/1Br75Dgu.vtdY/ftNFfjG6BhnMROFypQx3FAMCS	8887688888	cbtstech@gmail.com	f	f	t	f	f	2023-09-01 11:23:34.404+05:30	2023-09-01 11:23:34.404+05:30	REG	f	\N
155	\N	naikshabi234	$2a$10$I3PiTiBp09UIF288.7Wgn.Pes2zOJSBm.4FA6lnocpjxP6rFq0qsO	8887688889	cbtstech12@gmail.com	f	f	t	f	f	2023-09-01 11:29:04.855+05:30	2023-09-01 11:29:04.855+05:30	REG	f	\N
156	\N	dsneha123	$2a$10$2f3qidJ.yJOVVHUin35mJedMMURyEqsDDZ67zlHtqElxYvsjVE9la	9800676666	abc1@gmail.com	f	f	t	f	f	2023-09-01 13:01:40.351+05:30	2023-09-01 13:01:40.351+05:30	REG	f	\N
169	\N	kuldeep123	$2a$10$5WzWW5iljdE2QOPLuZF8YuzXq/JiR2uOja3zEfSf4E9htpCbaC17G	9869694758	agriculorg@gmail.com	f	f	t	f	f	2023-09-12 11:40:45.128+05:30	2023-09-12 11:40:45.128+05:30	REG	f	\N
159	\N	atharva123	$2a$10$J61yBnFyuI10oj9WlggSLuY27uMuqmyHId95RN52zS5djyn60CESq	9685748596	atharva@gmail.com	f	f	t	f	f	2023-09-04 13:10:55.904+05:30	2023-09-04 13:10:55.904+05:30	REG	f	\N
160	\N	atharva1	$2a$10$rLnqA9q7dmcfuJh4/Bd9kegyn0bAFzb3aT6iO93oVX7BIvK3nw/ui	9685748591	atharvaq@gmail.com	f	f	t	f	f	2023-09-04 13:24:10.389+05:30	2023-09-04 13:24:10.389+05:30	REG	f	\N
67	\N	veda1230	$2a$10$r60vL5BtcyDZ.pLiLTSEL.rdFpJpkUajniQTzYEmPWlRh1E5ut0OS	9822151515	snehannarvekar07@gmail.com	f	f	t	t	f	2023-05-15 14:55:41.347+05:30	2024-09-18 17:24:20.462+05:30	SUB	t	75
161	\N	atharva12	$2a$10$CzHQgaDs2E9dS/QxcJ2syOFQPIwXcANO6XQsVlm3AKW7Tm6rfbPjC	9685748512	atharva12@gmail.com	f	f	t	f	f	2023-09-04 13:25:01.07+05:30	2023-09-04 13:25:01.07+05:30	REG	f	\N
187	\N	prajai123	$2a$10$..vbQmDHlwar73d8T/zUz.Zs1CkW3soAaSYkFuoY8oXqLTXIsV6ti	4587458484	prajai123@gmail.com	f	f	t	f	f	2023-10-12 14:10:20.841+05:30	2023-10-12 14:10:20.841+05:30	REG	f	\N
170	\N	pooja123	$2a$10$fZAQDeLrZ3z2lvYYdg1ZAuWHmbCeVv5Kc49ZJAEuIroa7TWDAkf.i	4525663255	pooja@gmail.com	f	f	t	f	f	2023-09-13 10:21:29.305+05:30	2023-09-13 10:21:29.305+05:30	REG	f	\N
171	\N	sandhya123	$2a$10$UB3Wx.kPNkF5mERXoPjsKesOBAebzzgdx52eE9sEk4moqsixVVgMa	5469885451	sandhya@gmail.com	f	f	t	f	f	2023-09-13 10:25:24.745+05:30	2023-09-13 10:25:24.745+05:30	REG	f	\N
181	\N	swastik123	$2a$10$nr8uLdVU0kily/d848Tppe1PT5KIkwN4BrS921KcEq71SMiY/nXQy	9656996588	swastik@gmail.com	f	f	t	f	f	2023-09-14 15:21:24.929+05:30	2023-09-14 15:21:24.929+05:30	REG	f	\N
172	\N	pavitra123	$2a$10$vDJbFygqwKu3DOTtr11TBOBxDo/C9UF8jAgohT/8E6ZetT0xkBiMu	9812636363	pavitra123@gmail.com	f	f	t	f	f	2023-09-13 10:27:22.836+05:30	2023-09-13 10:27:22.836+05:30	REG	f	\N
174	\N	faculty_pes	$2a$10$KdjgNhreoUAIGj2qd8wOAOSE35ZN9BIEZRJPf0wjEmaOhkaUjLvfO	1425362514	facultypes@gmail.com	f	f	t	f	f	2023-09-13 11:03:14.285+05:30	2023-09-13 11:03:14.285+05:30	REG	f	\N
166	\N	hemant123	$2a$10$MiHNcH7ZxbKub7QF22RTHuLF3nqmY6kaB2k/NzaDE.171fuFkqh3W	8548665988	hemant@gmail.com	f	f	t	t	f	2023-09-11 10:12:33.183+05:30	2023-09-11 12:43:37.432+05:30	VER	t	51
142	\N	ashvenkarpares	$2a$10$obumhfGxmdlzub6TCWG8bOJFdHNYgPa3pP82PbPO9lLkrg8PsuCCS	8976564577	infosyslimited@gmail.com	f	f	t	f	f	2023-08-29 15:11:01.655+05:30	2023-09-11 14:06:41.534+05:30	REG	f	75
177	\N	bhakti0888	$2a$10$XF3ppfjAYHgARWpRHEyCBOpkCyfznFRm4J8PUJOWdEqTOcC/ZOnVa	9898989808	bhakti0888@gmail.com	f	f	t	f	f	2023-09-13 11:10:01.13+05:30	2023-09-13 11:10:01.13+05:30	REG	f	\N
157	\N	ppashevekar	$2a$10$YYT7GiRvTDUW3esZgDa15.uTxz.F1EGNnEYe82PirrVZp5WNADCzq	8988888877	abc11@gmail.com	f	f	t	t	f	2023-09-01 15:01:00.103+05:30	2023-09-11 14:25:13.886+05:30	VER	f	75
179	\N	vedang123	$2a$10$ZCHmyqnW/UwBkdjDtvek0e4vnqbImRIT7tM6A.m2n6M7LhCA5ZEh.	6546546546	vedang123@gmail.com	f	f	t	f	f	2023-09-13 11:13:11.123+05:30	2023-09-13 11:13:11.123+05:30	REG	f	\N
143	\N	dsneha	$2a$10$zQzxxaijIcbUgVPejGC5POoOkiPYptecdJFmuKR.31QjBKujeUy3G	8787656456	techmahindra@gmail.com	f	f	t	t	f	2023-08-29 17:30:55.679+05:30	2023-09-11 14:26:08.828+05:30	VER	f	75
188	\N	Naik123	$2a$10$uMaL/wVIdF8U4.hE.GqBC.c8Je.3Gl4KBwcFq9.n1tleFT22Z.wne	3698521475	snehadhe0798785@gmail.com	f	f	t	f	f	2023-10-12 14:14:32.934+05:30	2023-10-12 14:14:32.934+05:30	REG	f	\N
139	\N	ashvekarp@gmail.com	$2a$10$twJb4VwQaVmqTV73zb2zEuEOXaVc11JlAxzSFz14gFsm25bjJMdXy	8767558899	infosysp1@gmail.com	f	f	t	f	f	2023-08-25 16:54:34.345+05:30	2023-09-11 14:25:41.35+05:30	REG	f	\N
165	\N	saj123	$2a$10$l4ceDlpGbDR83P0b.RwxpuETfiu8UrodC/uOs.OYrCDrMI6N.nv/K	9898776788	saj@gmail.com	f	f	t	f	f	2023-09-07 13:09:43.878+05:30	2023-09-12 11:04:03.65+05:30	INC	t	51
167	\N	radha123	$2a$10$TOfpOhkCMJTDiCiBvTl3p./Q8G45RvOMe4umfvbufirUGATrvAeXa	9822126866	radhanaik.dhe@gmail.com	f	f	t	f	f	2023-09-12 11:29:22.697+05:30	2023-09-12 11:29:22.697+05:30	REG	f	\N
168	\N	meena123	$2a$10$6xZV7MvjbZ/015YW9r3MRu.fvwyYrfpRzCWb.nAS68457yOGBgATa	6585858545	meena.dhe@gmail.com	f	f	t	f	f	2023-09-12 11:34:48.817+05:30	2023-09-12 11:34:48.817+05:30	REG	f	\N
182	\N	vedangi123	$2a$10$z4gkmdSHCn7EnkLtA3nldOmGjxeklE6RKEUFploco6/Y4G.xCtj/6	7854885488	vedangi@gmail.com	f	f	t	f	f	2023-09-26 11:22:44.253+05:30	2023-09-26 11:22:44.253+05:30	REG	f	\N
183	\N	payal123	$2a$10$H3ygr8RFs6c.CJ5ybtpGze77hReorY1QgwhpyOLk7Mh25x3a7spmS	6565656544	payalchawla@gmail.vom	f	f	t	f	f	2023-09-28 12:20:14.194+05:30	2023-09-28 12:20:14.194+05:30	REG	f	\N
184	\N	Aadya123	$2a$10$Q5ywYXB4A6ATaOAo4km67OP7JeSnOgR1BtxxFEx1ar9IChSm/nUnO	9685859696	aadya@gmail.com	f	f	t	f	f	2023-09-28 12:27:23.224+05:30	2023-09-28 12:27:23.224+05:30	REG	f	\N
178	\N	suraj123	$2a$10$naQHGb0/J02/LnZIzCD3reI2OsuXtKsY48Pd3a22RYsfmo1MnsbLO	8545558588	suraj@gmail.com	f	f	t	t	f	2023-09-13 11:13:10.881+05:30	2023-09-13 11:32:48.498+05:30	VER	t	51
180	\N	veena123	$2a$10$pMR3dAx6igJpEsKy7F52zOr.ju9Xcdo4c6gXGBCj1YT7XIPQ8ZAPa	9698745630	testing123@gmail.com	f	f	t	f	f	2023-09-13 11:52:00.372+05:30	2023-09-13 11:55:35.622+05:30	RESUB	f	\N
185	\N	pranit123	$2a$10$hks9sq10b8t4Fyq/VkiKDO0qfoRLZt.H4cyEnQWo4l0D5pXKFCqWW	9847140101	pranit@gmail.com	f	f	t	f	f	2023-09-29 12:40:44.337+05:30	2023-09-29 12:40:44.337+05:30	REG	f	\N
164	\N	atharva125	$2a$10$tBxvZlGnfCgJEPtQN3BEiO2Bf.7YPN3zqEa3FhQTcfbAwfk5YNtom	3698521478	atharva124@gmail.com	f	f	t	f	f	2023-09-04 15:58:08.856+05:30	2023-10-12 16:12:09.339+05:30	REG	t	\N
189	\N	ram001	$2a$10$sPsxAlVEZSz9VHUv9kym0ueK4z8TRPqJSPlTd..QGYJyxOyyYOi.O	9090909090	dhe.gov@gmail.com	f	f	t	f	f	2023-10-13 10:45:52.955+05:30	2023-10-13 10:45:52.955+05:30	REG	f	\N
158	\N	shweta123	$2a$10$T8unok1JN7iLQToEmH.a1.2GEEjfj4yisZjIpS5PL7OKZERqFqIyq	6756776788	shweta@gmail.com	f	f	t	t	f	2023-09-01 15:16:20.695+05:30	2023-10-05 17:21:05.403+05:30	SUB	t	75
190	\N	paresh	$2a$10$QAOtVs4jC12ym1UuNcLThejPq.uaNf8zLvhxPZ3naTs9sJdAbKdtu	8909890989	dte.gov@gmail.com	f	f	t	f	f	2023-10-13 11:02:24.393+05:30	2023-10-13 11:02:24.393+05:30	REG	f	\N
193	\N	manju123	$2a$10$DJxfcbkyZExzTh1gp7S/Z.YjvYqC4OEJ/XVoBOvyp86iKw7CBPTM2	9784557855	manju@yahoo.com	f	f	t	f	f	2023-10-13 13:25:42.766+05:30	2023-10-13 13:25:42.766+05:30	REG	f	\N
186	\N	palash123	$2a$10$ghhHuoB7Ez4j4QmigVW5wuBZu/f4GQ9jBNYpmm4XNYGRYCbiBYQp2	9158661255	palash@gmail.com	f	f	t	f	f	2023-10-06 10:39:12.15+05:30	2023-10-12 17:29:22.346+05:30	REG	f	\N
195	\N	nim123	$2a$10$iQlf2rIiMmGeLt0omjEI/OfYR5BQBUIn/4s9iU7voYG2K0akUwsiK	9865445255	nim@gmail.com	f	f	t	f	f	2023-10-18 11:10:27.262+05:30	2023-10-18 11:10:27.262+05:30	REG	f	\N
198	\N	naiksneha124	$2a$10$cvh2Dq08emWWMtZW02D4Suq94.NkV25PRdeJhwrLAmAS5xhOtPRMS	8976786756	hdfc@gmail.com	f	f	t	f	f	2023-10-18 12:58:40.413+05:30	2023-10-18 12:58:40.413+05:30	REG	f	\N
199	\N	rautsneha	$2a$10$2PUORb.JXRupKwgyZ1rf2.p02shyjXtnGKrWTelZADnw/hZBww/bu	8786756455	citycom@gmail.com	f	f	t	f	f	2023-10-18 15:56:57.509+05:30	2023-10-18 15:56:57.509+05:30	REG	f	\N
200	\N	testStudent2	$2a$10$/gNaq4xz7/s1BoGkZ37tCeuPfuDQwIZ124mEqEAJq/V4mbqhu.Wsy	9518529699	teststudent2@gmail.com	f	f	t	f	f	2023-10-20 10:54:55.844+05:30	2023-10-20 10:54:55.844+05:30	REG	f	\N
194	\N	testStudent	$2a$10$qvn672DPn9HuxPhVqiJbP.ciHvw.BLgHAy5M54SkHF4W/6T9o0zcG	9518529619	teststudent@gmail.com	f	f	t	f	f	2023-10-13 13:31:11.97+05:30	2023-10-13 13:31:11.97+05:30	REG	f	\N
202	\N	testStudent3	$2a$10$uioVIHwy2lg25udMWtCAUuno.GEK6XfKOEQW0Gb51k3V3uL1xOdK2	9518529618	teststudent3@gmail.com	f	f	t	f	f	2023-10-20 11:12:29.582+05:30	2023-10-20 11:12:29.582+05:30	REG	f	\N
203	\N	riya123	$2a$10$6WBlvbD2ZmxfXTL.hdPdA.uGLIudppD.7J6lxQKsBfUwFrdIXaNbW	9696320201	riyanaik@gmail.com	f	f	t	f	f	2023-10-26 11:26:47.588+05:30	2023-10-26 11:26:47.588+05:30	REG	f	\N
204	\N	ramu	$2a$10$paqW5AhQEeScZoJcaKYOLu5Qcg1rZZT5QRyRdhEz7oa.5p9oCZKj6	8989898989	sdt.gshec@gmail.com	t	t	t	t	f	2023-11-07 11:36:18.888+05:30	2023-11-07 11:36:18.888+05:30	VER	t	51
207	\N	shambhu	$2a$10$ARmTFhaElOrrEHwlXigA.ulgVKapOoj.3CeOnnJrTMqFr7kF8e7F2	9090909065	sdt1.gshec@gmail.com	t	t	t	t	f	2023-11-07 12:30:49.509+05:30	2023-11-07 12:30:49.509+05:30	REG	t	51
209	\N	mukesh	$2a$10$kSOyfVcGAgg0EwDRYEFPnetxgoVW8Ri5GKOrTtNomHPNdXTsywNT6	6798548978	mukesh@yopmail.com	t	t	t	t	f	2023-11-09 10:25:45.208+05:30	2023-11-09 10:25:45.208+05:30	VER	t	51
208	\N	Hema	$2a$10$3zVygu68sJz.SCEloxzhYuo0UcZx5juCf11LbrRZ3elNTPFyFOldi	7878787878	hema@gmail.com	t	t	t	t	f	2023-11-07 12:54:15.393+05:30	2023-11-09 11:05:54.247+05:30	SUB	t	51
78	\N	Prachiti123	$2a$10$Psr2tMZpOq/31PiWsqKAfuKch0jbhmLTpLrxp24whwJC4jD9r30YO	5246998966	prachiti@yahoo.in	f	f	t	t	f	2023-06-23 16:07:40.912+05:30	2024-06-26 15:57:11.472+05:30	VER	t	51
214	\N	epramaan3		7507310944	epramaan@gmail.com	f	f	t	f	f	2024-07-03 15:18:50.13+05:30	2024-07-03 15:18:50.13+05:30	REG	f	\N
210	\N	devesh	$2a$10$BWli7vztXOIqhlDpguBp6uX3aOp9KKHGGgJYUS3GYFUQL.L4eNkKy	8945668563	devesh@gmail.com	f	f	t	f	f	2024-07-02 14:42:28.932+05:30	2024-07-02 17:27:12.013+05:30	VER	t	51
215	\N	Ruchi123	$2a$10$gqJ.li8zTfJIpXfLucS.vOj.4M66jPb1sRC0owiwzxnB.BrQof.iG	8975590961	dhe.bhakti@gmail.com	t	t	t	t	f	2024-07-04 10:50:24.152+05:30	2024-07-04 10:50:24.152+05:30	VER	t	51
217	\N	amit	$2a$10$3x4BfegT4g/ovSEVUdmuh.UAzMLxf5FX3BqQySbx8dyXLzRb3IVOq	5689556455	amit@gmail.com	f	f	t	f	f	2024-07-04 11:13:25.758+05:30	2024-07-04 11:13:25.758+05:30	REG	f	\N
218	\N	vialli1230	$2a$10$DEHcas0tLyrZe/1X0wOMnO.JAVl9KnviDufU0/UkhzNdFeXy/5lu.	9877890231	vialli@yahoo.com	f	f	t	f	f	2024-07-08 12:37:43.458+05:30	2024-07-08 12:37:43.458+05:30	REG	f	\N
219	\N	epramaan4		7507310945	epramaan4@gmail.com	f	f	t	f	f	2024-07-11 15:29:17.541+05:30	2024-07-11 15:29:17.541+05:30	REG	f	\N
220	\N	epramaan5		7507310955	epramaan5@gmail.com	f	f	t	f	f	2024-07-11 15:30:12.209+05:30	2024-07-11 15:30:12.209+05:30	REG	f	\N
212	\N	viali	$2a$10$7AUHx3A.hl5qvcVB7fQSvug0WNhRPQwof3iWODWYymCyp3z12lc9C	8978554582	viali@gmail.com	f	f	t	f	f	2024-07-03 10:30:06.971+05:30	2024-07-16 15:39:53.771+05:30	RESUB	f	\N
225	\N	epramaan356		7506810945	epramaan22@gmail.com	f	f	t	f	f	2024-08-07 13:00:45.596+05:30	2024-08-07 13:00:45.596+05:30	REG	f	\N
228	\N	epramaan43		7554810945	epramaan23@gmail.com	f	f	t	f	f	2024-08-07 13:02:30.029+05:30	2024-08-07 13:02:30.029+05:30	REG	f	\N
272	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:09:06.651+05:30	2024-08-26 15:09:06.651+05:30	\N	f	\N
231	\N	sachin1496	$2a$10$W5XtKUPJvRdQoVZt4W6H8u/DA/Z2AJcaTRZsbvzfm13c4h9cqBzEq	9878021496	sachin@gmail.com	f	f	t	t	f	2024-08-14 15:59:33.189+05:30	2024-08-14 15:59:33.189+05:30	VER	f	\N
232	\N	sachin121496	$2a$10$Bs8l7F0ntHY1KFq/ypuz4.NUgOJ.weeEgFTEpCY99KObbXWzKn7/y	9878431496	sachin12@gmail.com	f	f	t	t	f	2024-08-14 16:03:16.965+05:30	2024-08-14 16:03:16.965+05:30	VER	f	\N
234	\N	dheadmin433243	$2a$10$bKWeAfBcbuLMNduOX4qibuvxji.bhIHcoTociHT7gnlaAp7v5zyki	9874563243	dheadmin43@gmail.com	f	f	t	t	f	2024-08-14 16:05:03.75+05:30	2024-08-14 16:05:03.75+05:30	VER	f	\N
235	\N	dheadmin333233	$2a$10$9sIIiBcV9QF.0iIp6AwMmOCs5hgmPWlPiksOHtNwi7/qzhMfq3A5.	9874563233	dheadmin33@gmail.com	f	f	t	t	f	2024-08-14 16:06:08.42+05:30	2024-08-14 16:06:08.42+05:30	VER	f	\N
236	\N	dheadmin583258	$2a$10$DQ0XaBAtTdF4I4sfb54okOhcFE7RvWPdjf9clvHVvwde5Zb42TGhu	9874563258	dheadmin58@gmail.com	f	f	t	t	f	2024-08-14 16:08:00.783+05:30	2024-08-14 16:08:00.783+05:30	VER	f	\N
237	\N	sachin131461	$2a$10$s2ieimXf.uhJYs0oE6HfNu6BjdcFuDEFl452TeiejM9UgbHK9vHUy	9878431461	sachin13@gmail.com	f	f	t	t	f	2024-08-14 16:20:56.56+05:30	2024-08-14 16:20:56.56+05:30	VER	f	\N
239	\N	brijesh123	$2a$10$Ht1BvMQOnLxgDsHl5noIy.2hxTmIKtQacZahi93nAOQWPQaXi3WE6	9568456987	brijesh123@gmail.com	f	f	t	f	f	2024-08-16 11:01:20.491+05:30	2024-08-16 12:16:06.354+05:30	RESUB	f	\N
240	\N	manit66509	$2a$10$0ofbPc/UwFJSCzsOFP6MYONXWY0OHxutH2h28HKP.IH7zJQwD02ge	5814033332	manitnaik066509@gmail.com	f	f	t	f	f	2024-08-16 12:25:00.888+05:30	2024-08-16 12:25:00.888+05:30	REG	f	\N
241	\N	vedikanaik089	$2a$10$NGEHtjr0Lx5RNRuTS.TkEOYu2pmUiQdykvIDCUgbY91DfAtwBWfCW	5636251980	vedikanaik089@gmail.com	f	f	t	f	f	2024-08-16 17:12:25.895+05:30	2024-08-16 17:12:25.895+05:30	REG	f	\N
243	\N	gedcadmin1233123	$2a$10$xVUaAdNLPBqYECtveUgKYuomYq4gMB86L9fEY7x8k0JKKtvyNrY.K	9874563123	gedcadmin123@gmail.com	f	f	t	t	f	2024-08-19 13:09:50.34+05:30	2024-08-19 13:09:50.34+05:30	VER	f	\N
244	\N	gedcadmin12341234	$2a$10$KGNg9rMlzkgZZgEQbZmID.AsOn8Xrsv5iLB/aoeXO89IPI4w8VP8O	9874561234	gedcadmin1234@gmail.com	f	f	t	t	f	2024-08-19 13:11:35.321+05:30	2024-08-19 13:11:35.321+05:30	VER	f	\N
245	\N	gedcadmin1221212	$2a$10$CUra3bVe0z2dWCFlSHBdu.DSBaN1mhvlmBttPbzhPSxZyTCet3/RG	9874561212	gedcadmin122@gmail.com	f	f	t	t	f	2024-08-19 13:22:19.525+05:30	2024-08-19 13:22:19.525+05:30	VER	f	\N
246	\N	gedcadmin1331133	$2a$10$RDfHWj4wYGe4ExpSZt797uiOntoRtx.11ou7NFRCC1CTvFXZZ0tLm	9874561133	gedcadmin133@gmail.com	f	f	t	t	f	2024-08-19 13:23:00.278+05:30	2024-08-19 13:23:00.278+05:30	VER	f	\N
247	\N	gedcadmin1341134	$2a$10$D3bdj7YQKlGG0mhYz4LiA.Lc3l2B6QEg2NaRw.Neam43riwCxwrFi	9874561134	gedcadmin134@gmail.com	f	f	t	t	f	2024-08-19 13:24:19.952+05:30	2024-08-19 13:24:19.952+05:30	VER	f	\N
248	\N	gedcadmin13451345	$2a$10$lS5qoOmS12WUsu5aTYanPe/LPfWoZKzAvJDimOJPA7fC8IqINJUGq	9874561345	gedcadmin1345@gmail.com	f	f	t	t	f	2024-08-19 15:42:31.782+05:30	2024-08-19 15:42:31.782+05:30	VER	f	\N
249	\N	gedcadmin11111	$2a$10$pHrEYUD0mpi32NH6TyWWYeLb8bfV7dURodXJcToIJa9WRnb2GjWNS	9874561111	gedcadmin1@gmail.com	f	f	t	t	f	2024-08-19 15:43:08.088+05:30	2024-08-19 15:43:08.088+05:30	VER	f	\N
251	\N	gedcadmin223222	$2a$10$s.NviFxehLQqQEXXgmZgeutZoRgyUu.gW7lzrjMRMDXhzwzV71ks2	9874563222	gedcadmin22@gmail.com	f	f	t	t	f	2024-08-19 16:33:33.091+05:30	2024-08-19 16:33:33.091+05:30	VER	f	\N
252	\N	gedcadmin233290	$2a$10$OTYPr15j9H6JWjkJv/qayuQYH8RhvK2ByqCQqJfid3yf/WgV1gPEK	9874563290	gedcadmin23@gmail.com	f	f	t	t	f	2024-08-21 10:47:48.412+05:30	2024-08-21 10:47:48.412+05:30	VER	f	\N
253	\N	gedcuser3333	$2a$10$yycb3M1u.DRlq8MoiD1JjOqWc/hiv0lkkrVNTXBcFjVgeGD8JeEOa	9874563333	gedcuser@gmail.com	f	f	t	t	f	2024-08-21 11:15:58.941+05:30	2024-08-21 11:15:58.941+05:30	VER	f	\N
255	\N	hoi3444	$2a$10$YZXINl84DzzUN61PBsAHp.zzZH2C8lGn/k4vxEqHQ1nfT57qxNhBS	9874563444	hoi@gmail.com	f	f	t	t	f	2024-08-21 11:22:39.333+05:30	2024-08-21 11:22:39.333+05:30	VER	f	\N
256	\N	dylan123	$2a$10$LzANCMoyvGwYLWyZoBreC.e0O3cKmtHM4o9sGoAkJ7TkQprRVa09G	6987200014	dylan123@gmail.com	f	f	t	f	f	2024-08-21 15:36:15.366+05:30	2024-08-21 15:36:15.366+05:30	REG	f	\N
257	\N	sneha6540	$2a$10$2LMxn.jMmghILRfIburSDu2h9JMJkDh0pHa3HATncLKAVJmAU6L0m	5987532001	sneha6540@gmail.com	f	f	t	f	f	2024-08-21 15:58:02.946+05:30	2024-08-21 15:58:02.946+05:30	REG	f	\N
258	\N	testStudent4	$2a$10$1x7/KLW81/9q7uVP/GAIaer1stfD9P5uHCOWSyvH/FPn4.cg4Td/S	7474747485	teststudent4@gmail.com	f	f	t	f	f	2024-08-21 16:01:44.104+05:30	2024-08-21 16:01:44.104+05:30	REG	f	\N
260	\N	testStudent44	$2a$10$a1GKQPptzf3xjcTjlWNu2uytVz0iNStnrTM7K1Tyept7.XEZUjs0C	7474747444	teststudent44@gmail.com	f	f	t	f	f	2024-08-21 16:02:39+05:30	2024-08-21 16:02:39+05:30	REG	f	\N
261	\N	kapil1235	$2a$10$4p509MwoGkWbPYpIOrrKfu8pHDMHIV/cLb2n1fCjUE5zcfk5KpCHe	6587932149	kapil1235@gmail.com	f	f	t	f	f	2024-08-21 16:33:04.944+05:30	2024-08-21 16:33:04.944+05:30	REG	f	\N
273	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:09:08.927+05:30	2024-08-26 15:09:08.927+05:30	\N	f	\N
274	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:14:07.865+05:30	2024-08-26 15:14:07.865+05:30	\N	f	\N
262	\N	darsh123	$2a$10$uzhceZDMFEIjvtHWxuAAQ.vTag31r4FPW7ecPSuxmudXKCrJ8AAea	6870032989	darsh123@gmail.com	f	f	t	f	f	2024-08-23 10:56:11.012+05:30	2024-08-23 10:56:11.012+05:30	REG	f	\N
229	\N	naresh123	$2a$10$n734XhGNz/wGwJHKMRwdsu922CchEiKtkn7D1K3KAfd0OytfsgTea	5289698748	naresh@gmail.com	f	f	t	f	f	2024-08-09 17:52:13.733+05:30	2024-09-03 17:21:39.135+05:30	RESUB	f	\N
263	\N	epraman11		5436995510	epraman11@gmail.com	f	f	t	f	f	2024-08-23 16:33:53.882+05:30	2024-08-23 16:33:53.882+05:30	REG	f	\N
265	\N	epraman1		5436995514	epraman1@gmail.com	f	f	t	f	f	2024-08-23 16:34:25.395+05:30	2024-08-23 16:34:25.395+05:30	REG	f	\N
266	\N	epraman2		5431995514	epraman2@gmail.com	f	f	t	f	f	2024-08-23 16:34:49.644+05:30	2024-08-23 16:34:49.644+05:30	REG	f	\N
267	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:00:14.389+05:30	2024-08-26 15:00:14.389+05:30	\N	f	\N
268	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:06:23.462+05:30	2024-08-26 15:06:23.462+05:30	\N	f	\N
269	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:06:33.392+05:30	2024-08-26 15:06:33.392+05:30	\N	f	\N
270	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:06:40.011+05:30	2024-08-26 15:06:40.011+05:30	\N	f	\N
271	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:06:46.931+05:30	2024-08-26 15:06:46.931+05:30	\N	f	\N
275	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:14:24.129+05:30	2024-08-26 15:14:24.129+05:30	\N	f	\N
276	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:16:20.997+05:30	2024-08-26 15:16:20.997+05:30	\N	f	\N
277	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:16:27.661+05:30	2024-08-26 15:16:27.661+05:30	\N	f	\N
278	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:16:32.727+05:30	2024-08-26 15:16:32.727+05:30	\N	f	\N
279	\N	\N	\N	\N	\N	f	f	t	f	f	2024-08-26 15:17:37.835+05:30	2024-08-26 15:17:37.835+05:30	\N	f	\N
281	\N	epramaan577		7507310577	epramaan577@gmail.com	f	f	t	t	f	2024-08-26 15:19:26.092+05:30	2024-08-26 15:19:26.092+05:30	VER	f	77
282	\N	epramn25		9631460259	epramn18@gmail.com	f	f	t	t	f	2024-08-26 15:19:43.663+05:30	2024-08-26 15:19:43.663+05:30	VER	f	77
283	\N	epramn20		9631460209	epramn180@gmail.com	f	f	t	t	f	2024-08-26 15:20:25.599+05:30	2024-08-26 15:20:25.599+05:30	VER	f	77
284	\N	epramn50		9631465209	epramn150@gmail.com	f	f	t	t	f	2024-08-27 10:51:56.803+05:30	2024-08-27 10:51:56.803+05:30	VER	f	77
295	\N	HiDias	$2a$10$iyshLVbtEzuxnTSfrbzJhup/NheAaWspv.DMPWrKcBS/Gy68pR95i	7038554862	dylan12338@gmail.com	f	f	t	f	f	2024-08-27 14:31:26.009+05:30	2024-08-27 14:31:26.009+05:30	REG	f	\N
330	\N	testing3602	$2a$10$eAyWfHTorwm4CMj4j8DL/.BluUK4bKSOTpvYYUQqeYaRNZ/JgBF1y	1000045650	test3600@yahoo.com	f	f	t	f	f	2024-09-16 12:26:33.65+05:30	2024-09-16 12:26:33.65+05:30	REG	f	\N
302	\N	JohnDoe	$2a$10$JQxLhb5BqLd3vxLRz5ID3OgtRbSUFznT98MD2ZCIH1NHv3.PPqdEa	9876542241	johndoe123@gmail.com	f	f	t	f	f	2024-08-27 16:28:39.016+05:30	2024-08-27 16:28:39.016+05:30	REG	f	\N
303	\N	JohnDoe1	$2a$10$25zhGwQpI6T0y5nETSPXZe.nhJLpDPeU./AIEnGUwEGvNwzTDBsWO	9876342241	johndoe1123@gmail.com	f	f	t	f	f	2024-08-27 16:31:28.529+05:30	2024-08-27 16:31:28.529+05:30	REG	f	\N
304	\N	san123	$2a$10$mHyXqbLYJfdkw53J041h5.zlajj797EgJ9TdwJqsa4SkLg1PV5veS	2545665688	san@gmail.com	f	f	t	f	f	2024-08-29 12:52:51.835+05:30	2024-08-29 12:52:51.835+05:30	REG	f	\N
305	\N	sankashti123	$2a$10$Qclft9e1/CDIs7YJ.dhHq.O0shnTKL42H.po97T3PPNVqXBvaRL2q	1245885455	sankashti@gmail.com	f	f	t	f	f	2024-08-29 12:55:26.619+05:30	2024-08-29 12:55:26.619+05:30	REG	f	\N
307	\N	JakeTaylor	$2a$10$MNN8l2wrj1gC.iKq4ySMK.K5UN6424ezRXZ5YRHMez7KzlKOFnk2W	7038554864	dmail@gmail.com	f	f	t	f	f	2024-08-29 15:51:08.65+05:30	2024-08-29 15:51:08.65+05:30	REG	f	\N
315	\N	JakeTaylor1230	$2a$10$.VL0cdIoRpztMXaPD/7Mc.fZljtnAH16DCrjReB34iTaz4N56YXJu	9510023074	dawes@yahoo.com	f	f	t	f	f	2024-08-29 16:03:06.026+05:30	2024-08-29 16:03:06.026+05:30	REG	f	\N
332	\N	testtu1236	$2a$10$649xrE7mmTuWeV59KB2Nte8fsROE2DvrwYeb0lIebYDWi29xKeUFy	3000004801	test_25@yahoo.com	f	f	t	f	f	2024-09-16 12:41:43.603+05:30	2024-09-16 12:41:43.603+05:30	REG	f	\N
333	\N	userss	$2a$10$osgUegzJfECRa9CkQ1hU0.mGKjuar1BV/emTkBQXs6QpNPi23HwMa	3000004802	test_2@gmail.com	f	f	t	f	f	2024-09-16 12:44:38.221+05:30	2024-09-16 12:44:38.221+05:30	REG	f	\N
334	\N	testtu136	$2a$10$fElincO.pQBJ.nRSuFLpRecOFjSYbegxXxPwdHQznO8LTDRZnKn5e	3100004799	test_24@yahoo.com	f	f	t	f	f	2024-09-16 12:52:15.304+05:30	2024-09-16 12:52:15.304+05:30	REG	f	\N
285	\N	Hello123	$2a$10$/FLoj8mF7Ab5nOPKMOLUOOlHZGdPuDtTUQInjjd0nTeCGZCpXoJXy	7083688400	dylanvaz2283@gmail.com	f	f	t	f	f	2024-08-27 12:56:17.145+05:30	2024-09-03 14:41:57.581+05:30	RESUB	f	\N
335	\N	testin258	$2a$10$5.kVaWL4Gd/3Ykd5iGPEduquNy8YHZ/rr2QWexMd4k30tK5X9JqlS	4000025000	testin0258@gmail.com	f	f	t	f	f	2024-09-16 13:04:48.108+05:30	2024-09-16 13:04:48.108+05:30	REG	f	\N
336	\N	testin2458	$2a$10$Ou1ogl0BBgaJMorIb1cNqetgRVEMbPVMlcO9wSJ5AbB0yZuakrd5u	4000025100	testin0158@gmail.com	f	f	t	f	f	2024-09-16 13:05:35.474+05:30	2024-09-16 13:05:35.474+05:30	REG	f	\N
338	\N	testin3458	$2a$10$ggywlzP/1wEPK9Ntj9BjV.Rp8QLuAU4db8EgVupU.Cy7o0Wop0.qu	4000025200	testin012258@gmail.com	f	f	t	f	f	2024-09-16 13:09:58.669+05:30	2024-09-16 13:09:58.669+05:30	REG	f	\N
339	\N	testinnnn213	$2a$10$t2x.phXFk27QWdTWUbb3b.UDzk8XfQw0wwFdn97XH/RUjUJJOKd4O	9000000140	shdhdsh@gmail.com	f	f	t	f	f	2024-09-16 13:11:04.419+05:30	2024-09-16 13:11:04.419+05:30	REG	f	\N
341	\N	manitaaaaa25888	$2a$10$esXmg.uCyI8dV23vJF3hauGqK0bnf5eeWmia5m8GOvdxzQgXpqN4.	4002500010	manitaaaaaaa@gmail.com	f	f	t	f	f	2024-09-16 13:13:20.46+05:30	2024-09-16 13:13:20.46+05:30	REG	f	\N
343	\N	lionelmessi	$2a$10$Os9RPypTHFEOTDVcRx1i.eGAdBrTa/9WHVBLLL2syKraryIrIZVnS	7038578784	messi@gmail.com	f	f	t	f	f	2024-09-17 15:42:30.203+05:30	2024-09-17 15:42:30.203+05:30	REG	f	\N
345	\N	casemirofernandes	$2a$10$sU43CwBRvwR6EV4ClW3j.O6MgMmcxJIm0lOkrtDUUOAkbAM15DOc2	7038579784	case@gmail.com	f	f	t	f	f	2024-09-17 15:45:04.016+05:30	2024-09-17 15:45:04.016+05:30	REG	f	\N
346	\N	userame3214u		5000004080	epramn001@yahoo.com	f	f	t	t	f	2024-09-19 15:13:04.431+05:30	2024-09-19 15:13:04.431+05:30	VER	f	77
348	\N	epramaanii		5000004081	epramn002@yahoo.com	f	f	t	t	f	2024-09-19 15:26:24.209+05:30	2024-09-19 15:26:24.209+05:30	VER	f	77
316	\N	Neymar11	$2a$10$YlPdD8Cu91QMAoLybYodaezL7C6aY7qTtKriZMTUwe4SuQcnPq/gi	1573214897	neymar11@gmail.com	f	f	t	f	f	2024-09-03 14:43:12.916+05:30	2024-09-03 15:40:45.429+05:30	RESUB	f	\N
317	\N	miri123	$2a$10$DSy7rhL4sZZGOXy1yjs5SOPSV6ZenIDZEaDL0802TMnmSS9y3zx/2	2510366698	miri@gmail.com	f	f	t	f	f	2024-09-04 16:34:23.096+05:30	2024-09-04 16:34:23.096+05:30	REG	f	\N
319	\N	santosh	$2a$10$oYL6zvJzJr5Xz14cGq.C5.uj7Qsbgl20/El92lO3JZVzQr8yJakGu	9756885466	santosh@gmail.com	f	f	t	f	f	2024-09-10 11:04:53.969+05:30	2024-09-10 11:04:53.969+05:30	REG	f	\N
321	\N	123hem	$2a$10$3LGMEGsO4C7Zv9S1UWPyjOb.HpxuaH.ImVhzyNWEG/X.MKcW0pCui	9011780403	chataimhemant@gmail.com	f	f	t	f	f	2024-09-13 14:12:31.614+05:30	2024-09-13 14:12:31.614+05:30	REG	f	\N
322	\N	shanti123	$2a$10$kxLatGsDf.7O9DKHdxrST.n5m236ihbTBWCGgT2I909D49AFOT4tS	8000000453	shanti@gmail.com	f	f	t	f	f	2024-09-13 16:34:12.783+05:30	2024-09-13 16:34:12.783+05:30	REG	f	\N
324	\N	userschool	$2a$10$gATMXo7F9W0pBxyW6n.lRuh8QddbCcUnbE22AXLqEpRIBlwPEHlPm	8585969654	userschool@gmail.com	f	f	t	f	f	2024-09-13 16:36:58.317+05:30	2024-09-13 16:36:58.317+05:30	REG	f	\N
325	\N	userhs	$2a$10$6IVAQ8TKsuv1fEM3IvCK2OH4zCGmo96XA0oZCkjz.kvrogy5TtQau	8585969655	userhs@gmail.com	f	f	t	f	f	2024-09-13 16:38:16.422+05:30	2024-09-13 16:38:16.422+05:30	REG	f	\N
326	\N	testing360	$2a$10$RSE69ewtVY4gYdDLUPKwa.8L3K7SUiymlL2dkPf9RCHKsLU0OWwQy	1000045600	test360@yahoo.com	f	f	t	f	f	2024-09-16 12:07:05.499+05:30	2024-09-16 12:07:05.499+05:30	REG	f	\N
328	\N	userhs1	$2a$10$X0OUCtOji951JMs4w2.Yc.MANfA./AlSnPZFD96L.dlMXI.p4UC1u	8585969651	userhs1@gmail.com	f	f	t	f	f	2024-09-16 12:09:41.625+05:30	2024-09-16 12:09:41.625+05:30	REG	f	\N
353	\N	epramaan509		7507310566	epramaan5543@gmail.com	f	f	t	t	f	2024-09-20 11:18:49.162+05:30	2024-09-20 11:18:49.162+05:30	VER	f	77
\.


--
-- Data for Name: dummy_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dummy_table (age, name) FROM stdin;
26	R
25	Y
26	R
25	Y
\.


--
-- Data for Name: religions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
1	Hindu	t	2023-05-16 11:46:39.165+05:30	2023-05-16 11:46:39.165+05:30
2	Muslims	t	2023-05-16 11:48:22.393+05:30	2023-05-16 11:48:22.393+05:30
\.


--
-- Name: AcademicYears_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);


--
-- Name: AdditionalSkills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);


--
-- Name: Banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Banks_id_seq"', 17, true);


--
-- Name: BloodGroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);


--
-- Name: CasteCategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CasteCategories_id_seq"', 4, true);


--
-- Name: Cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cities_id_seq"', 15, true);


--
-- Name: Classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Classes_id_seq"', 29, true);


--
-- Name: Companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Companies_id_seq"', 24, true);


--
-- Name: CompanyRemarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CompanyRemarks_id_seq"', 1, false);


--
-- Name: Configs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Configs_id_seq"', 1, true);


--
-- Name: Countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Countries_id_seq"', 34, true);


--
-- Name: Courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Courses_id_seq"', 2, true);


--
-- Name: Degrees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Degrees_id_seq"', 1, false);


--
-- Name: Departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Departments_id_seq"', 6, true);


--
-- Name: Designations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Designations_id_seq"', 1, true);


--
-- Name: Districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Districts_id_seq"', 11, true);


--
-- Name: DocumentTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DocumentTypes_id_seq"', 34, true);


--
-- Name: Dummies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Dummies_id_seq"', 2, true);


--
-- Name: Durations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Durations_id_seq"', 6, true);


--
-- Name: EmploymentTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EmploymentTypes_id_seq"', 3, true);


--
-- Name: EntityTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EntityTypes_id_seq"', 5, true);


--
-- Name: EntityUsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 65, true);


--
-- Name: EvalTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 2, true);


--
-- Name: Experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);


--
-- Name: FeeStuctures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FeeStuctures_id_seq"', 9, true);


--
-- Name: Genders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);


--
-- Name: GuardianTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);


--
-- Name: InstituteProgrammeCourseSubjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);


--
-- Name: InstituteProgrammes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 7, true);


--
-- Name: InstituteStaffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 33, true);


--
-- Name: InstituteTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 6, true);


--
-- Name: Institutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Institutes_id_seq"', 25, true);


--
-- Name: MenuItems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);


--
-- Name: Modes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);


--
-- Name: Notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Notifications_id_seq"', 90, true);


--
-- Name: OTPs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OTPs_id_seq"', 115, true);


--
-- Name: OrganisationTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);


--
-- Name: OtherSkills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 75, true);


--
-- Name: OwnerTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);


--
-- Name: Percentages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);


--
-- Name: Permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);


--
-- Name: ProgrammeSemesters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);


--
-- Name: ProgrammeSubjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);


--
-- Name: Programmes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Programmes_id_seq"', 9, true);


--
-- Name: QualificationTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 7, true);


--
-- Name: Roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Roles_id_seq"', 18, true);


--
-- Name: Semesters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Semesters_id_seq"', 11, true);


--
-- Name: ServiceRoles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 23, true);


--
-- Name: Services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Services_id_seq"', 3, true);


--
-- Name: Skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);


--
-- Name: StaffRemarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);


--
-- Name: Staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Staffs_id_seq"', 32, true);


--
-- Name: States_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."States_id_seq"', 5, true);


--
-- Name: Streams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);


--
-- Name: StudentAdditionalSkills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);


--
-- Name: StudentEnrollments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 254, true);


--
-- Name: StudentGuardians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 95, true);


--
-- Name: StudentMarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 130, true);


--
-- Name: StudentRemarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);


--
-- Name: StudentResults_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);


--
-- Name: StudentSkills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);


--
-- Name: Subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Subjects_id_seq"', 7, true);


--
-- Name: UserContacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserContacts_id_seq"', 170, true);


--
-- Name: UserDesignations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 52, true);


--
-- Name: UserDocs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1089, true);


--
-- Name: UserMenuItems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);


--
-- Name: UserPermissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);


--
-- Name: UserPersonalDetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 222, true);


--
-- Name: UserQualifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);


--
-- Name: UserRoles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserRoles_id_seq"', 233, true);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 360, true);


--
-- Name: religions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.religions_id_seq', 2, true);


--
-- Name: AcademicYears AcademicYears_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT "AcademicYears_pkey" PRIMARY KEY (id);


--
-- Name: AdditionalSkills AdditionalSkills_doc_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);


--
-- Name: AdditionalSkills AdditionalSkills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);


--
-- Name: UserBanks Banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserBanks"
    ADD CONSTRAINT "Banks_pkey" PRIMARY KEY (id);


--
-- Name: BloodGroups BloodGroups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);


--
-- Name: CasteCategories CasteCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);


--
-- Name: Talukas Cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);


--
-- Name: Classes Classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);


--
-- Name: Companies Companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);


--
-- Name: CompanyRemarks CompanyRemarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompanyRemarks"
    ADD CONSTRAINT "CompanyRemarks_pkey" PRIMARY KEY (id);


--
-- Name: Configs Configs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);


--
-- Name: Countries Countries_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);


--
-- Name: Countries Countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);


--
-- Name: Courses Courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);


--
-- Name: Degrees Degrees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);


--
-- Name: Departments Departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);


--
-- Name: Designations Designations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);


--
-- Name: Districts Districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);


--
-- Name: DocumentTypes DocumentTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);


--
-- Name: Dummies Dummies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);


--
-- Name: Durations Durations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);


--
-- Name: EmploymentTypes EmploymentTypes_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);


--
-- Name: EmploymentTypes EmploymentTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);


--
-- Name: EntityTypes EntityTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);


--
-- Name: EntityUsers EntityUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);


--
-- Name: EvalTypes EvalTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);


--
-- Name: Experiences Experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);


--
-- Name: InstituteProgrammeSubjects FeeStuctures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_pkey" PRIMARY KEY (id);


--
-- Name: Genders Genders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);


--
-- Name: GuardianTypes GuardianTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);


--
-- Name: InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);


--
-- Name: InstituteProgrammes InstituteProgrammes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);


--
-- Name: InstituteStaffs InstituteStaffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);


--
-- Name: InstituteTypes InstituteTypes_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);


--
-- Name: InstituteTypes InstituteTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);


--
-- Name: Institutes Institutes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);


--
-- Name: MenuItems MenuItems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);


--
-- Name: Modes Modes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Modes"
    ADD CONSTRAINT "Modes_pkey" PRIMARY KEY (id);


--
-- Name: Notifications Notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);


--
-- Name: OTPs OTPs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT "OTPs_pkey" PRIMARY KEY (id);


--
-- Name: OrganisationTypes OrganisationTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrganisationTypes"
    ADD CONSTRAINT "OrganisationTypes_pkey" PRIMARY KEY (id);


--
-- Name: StudentOtherSkills OtherSkills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentOtherSkills"
    ADD CONSTRAINT "OtherSkills_pkey" PRIMARY KEY (id);


--
-- Name: OwnerTypes OwnerTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OwnerTypes"
    ADD CONSTRAINT "OwnerTypes_pkey" PRIMARY KEY (id);


--
-- Name: Percentages Percentages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Percentages"
    ADD CONSTRAINT "Percentages_pkey" PRIMARY KEY (id);


--
-- Name: Permissions Permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);


--
-- Name: ProgrammeSemesters ProgrammeSemesters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSemesters"
    ADD CONSTRAINT "ProgrammeSemesters_pkey" PRIMARY KEY (id);


--
-- Name: ProgrammeSubjects_delete ProgrammeSubjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSubjects_delete"
    ADD CONSTRAINT "ProgrammeSubjects_pkey" PRIMARY KEY (id);


--
-- Name: ProgrammeSubjects ProgrammeSubjects_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_pkey1" PRIMARY KEY (programme_id, subject_id);


--
-- Name: Programmes Programmes_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_name_key" UNIQUE (name);


--
-- Name: Programmes Programmes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_pkey" PRIMARY KEY (id);


--
-- Name: QualificationTypes QualificationTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualificationTypes"
    ADD CONSTRAINT "QualificationTypes_pkey" PRIMARY KEY (id);


--
-- Name: Roles Roles_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_name_key" UNIQUE (name);


--
-- Name: Roles Roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);


--
-- Name: Semesters Semesters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Semesters"
    ADD CONSTRAINT "Semesters_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: ServiceRoles ServiceRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_pkey" PRIMARY KEY (id);


--
-- Name: Services Services_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_name_key" UNIQUE (name);


--
-- Name: Services Services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);


--
-- Name: Skills Skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Skills"
    ADD CONSTRAINT "Skills_pkey" PRIMARY KEY (id);


--
-- Name: StaffRemarks StaffRemarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT "StaffRemarks_pkey" PRIMARY KEY (id);


--
-- Name: Staffs Staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_pkey" PRIMARY KEY (id);


--
-- Name: States States_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_pkey" PRIMARY KEY (id);


--
-- Name: Streams Streams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Streams"
    ADD CONSTRAINT "Streams_pkey" PRIMARY KEY (id);


--
-- Name: StudentAdditionalSkills StudentAdditionalSkills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentAdditionalSkills"
    ADD CONSTRAINT "StudentAdditionalSkills_pkey" PRIMARY KEY (id);


--
-- Name: StudentEnrollments StudentEnrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_pkey" PRIMARY KEY (id);


--
-- Name: StudentGuardians StudentGuardians_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_pkey" PRIMARY KEY (id);


--
-- Name: StudentMarks StudentMarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentMarks"
    ADD CONSTRAINT "StudentMarks_pkey" PRIMARY KEY (id);


--
-- Name: StudentRemarks StudentRemarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT "StudentRemarks_pkey" PRIMARY KEY (id);


--
-- Name: StudentResults StudentResults_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentResults"
    ADD CONSTRAINT "StudentResults_pkey" PRIMARY KEY (id);


--
-- Name: StudentSkills StudentSkills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_pkey" PRIMARY KEY (id);


--
-- Name: Subjects Subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subjects"
    ADD CONSTRAINT "Subjects_pkey" PRIMARY KEY (id);


--
-- Name: UserContacts UserContacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_pkey" PRIMARY KEY (id);


--
-- Name: UserDesignations UserDesignations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_pkey" PRIMARY KEY (id);


--
-- Name: UserDocs UserDocs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDocs"
    ADD CONSTRAINT "UserDocs_pkey" PRIMARY KEY (id);


--
-- Name: UserMenuItems UserMenuItems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserMenuItems"
    ADD CONSTRAINT "UserMenuItems_pkey" PRIMARY KEY (id);


--
-- Name: UserPermissions UserPermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPermissions"
    ADD CONSTRAINT "UserPermissions_pkey" PRIMARY KEY (id);


--
-- Name: UserPersonalDetails UserPersonalDetails_aadhar_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_aadhar_key" UNIQUE (aadhar);


--
-- Name: UserPersonalDetails UserPersonalDetails_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_email_key" UNIQUE (email);


--
-- Name: UserPersonalDetails UserPersonalDetails_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_phone_key" UNIQUE (phone);


--
-- Name: UserPersonalDetails UserPersonalDetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_pkey" PRIMARY KEY (id);


--
-- Name: UserQualifications UserQualifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserQualifications"
    ADD CONSTRAINT "UserQualifications_pkey" PRIMARY KEY (id);


--
-- Name: UserRoles UserRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_phone_key" UNIQUE (phone);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_uid_key" UNIQUE (uid);


--
-- Name: Users Users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);


--
-- Name: StaffRemarks entity_user_section; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT entity_user_section UNIQUE (entity_user_id, section);


--
-- Name: religions religions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.religions
    ADD CONSTRAINT religions_pkey PRIMARY KEY (id);


--
-- Name: StudentRemarks student_enrol_section_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT student_enrol_section_id UNIQUE (student_enrollment_id, section);


--
-- Name: OTPs unique_keys; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT unique_keys UNIQUE (otp_type, details);


--
-- Name: StudentGuardians uniquetypeGuardian; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "uniquetypeGuardian" UNIQUE (guardian_type_id, user_id);


--
-- Name: AcademicYears value; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT value UNIQUE (value);


--
-- Name: Talukas Cities_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);


--
-- Name: Classes Classes_institute_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);


--
-- Name: Districts Districts_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);


--
-- Name: EntityUsers EntityUsers_entity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);


--
-- Name: EntityUsers EntityUsers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- Name: InstituteProgrammeSubjects FeeStuctures_institute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;


--
-- Name: InstituteProgrammeSubjects FeeStuctures_programme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;


--
-- Name: InstituteProgrammeSubjects FeeStuctures_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;


--
-- Name: InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;


--
-- Name: InstituteProgrammes InstituteProgrammes_institute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);


--
-- Name: InstituteProgrammes InstituteProgrammes_programme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);


--
-- Name: InstituteStaffs InstituteStaffs_faculty_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);


--
-- Name: InstituteStaffs InstituteStaffs_institute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);


--
-- Name: InstituteStaffs InstituteStaffs_institute_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);


--
-- Name: InstituteStaffs InstituteStaffs_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);


--
-- Name: Institutes Institutes_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_city_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Talukas"(id);


--
-- Name: Institutes Institutes_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);


--
-- Name: Institutes Institutes_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);


--
-- Name: Institutes Institutes_institute_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);


--
-- Name: Institutes Institutes_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);


--
-- Name: ProgrammeSubjects ProgrammeSubjects_programme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ProgrammeSubjects ProgrammeSubjects_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ServiceRoles ServiceRoles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);


--
-- Name: ServiceRoles ServiceRoles_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);


--
-- Name: Staffs Staffs_employment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);


--
-- Name: Staffs Staffs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- Name: States States_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);


--
-- Name: StudentEnrollments StudentEnrollments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- Name: StudentGuardians StudentGuardians_guardian_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);


--
-- Name: StudentGuardians StudentGuardians_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;


--
-- Name: StudentSkills StudentSkills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);


--
-- Name: UserContacts UserContacts_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);


--
-- Name: UserContacts UserContacts_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);


--
-- Name: UserContacts UserContacts_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);


--
-- Name: UserContacts UserContacts_taluka_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_taluka_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Talukas"(id);


--
-- Name: UserContacts UserContacts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- Name: UserDesignations UserDesignations_designation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);


--
-- Name: UserDesignations UserDesignations_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- Name: UserPersonalDetails UserPersonalDetails_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- Name: UserRoles UserRoles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);


--
-- Name: UserRoles UserRoles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);


--
-- PostgreSQL database dump complete
--

