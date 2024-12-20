PGDMP  ,    8                |            sso    16.3    16.3 O   R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            U           1262    16398    sso    DATABASE     v   CREATE DATABASE sso WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE sso;
                postgres    false            h           1259    33738    AcademicYears    TABLE     �   CREATE TABLE public."AcademicYears" (
    id integer NOT NULL,
    value character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."AcademicYears";
       public         heap    postgres    false            g           1259    33737    AcademicYears_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AcademicYears_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."AcademicYears_id_seq";
       public          postgres    false    360            V           0    0    AcademicYears_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."AcademicYears_id_seq" OWNED BY public."AcademicYears".id;
          public          postgres    false    359            �            1259    24592    AdditionalSkills    TABLE     �   CREATE TABLE public."AdditionalSkills" (
    id integer NOT NULL,
    name character varying(255),
    doc_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."AdditionalSkills";
       public         heap    postgres    false            �            1259    24595    AdditionalSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AdditionalSkills_id_seq";
       public          postgres    false    215            W           0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
          public          postgres    false    216            d           1259    33647 	   UserBanks    TABLE     �  CREATE TABLE public."UserBanks" (
    id integer NOT NULL,
    name character varying(255),
    account_number character varying(30),
    branch character varying(255),
    ifsc_code character varying(255),
    user_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp with time zone,
    bank_address character varying(255)
);
    DROP TABLE public."UserBanks";
       public         heap    postgres    false            c           1259    33646    Banks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Banks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Banks_id_seq";
       public          postgres    false    356            X           0    0    Banks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Banks_id_seq" OWNED BY public."UserBanks".id;
          public          postgres    false    355            �            1259    24596    BloodGroups    TABLE     �   CREATE TABLE public."BloodGroups" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."BloodGroups";
       public         heap    postgres    false            �            1259    24600    BloodGroups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodGroups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."BloodGroups_id_seq";
       public          postgres    false    217            Y           0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
          public          postgres    false    218            m           1259    42045    Boarduniversities    TABLE       CREATE TABLE public."Boarduniversities" (
    id integer NOT NULL,
    name character varying(255),
    state_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."Boarduniversities";
       public         heap    postgres    false            l           1259    42044    Boarduniversities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Boarduniversities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Boarduniversities_id_seq";
       public          postgres    false    365            Z           0    0    Boarduniversities_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Boarduniversities_id_seq" OWNED BY public."Boarduniversities".id;
          public          postgres    false    364            �            1259    24601    CasteCategories    TABLE     �   CREATE TABLE public."CasteCategories" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."CasteCategories";
       public         heap    postgres    false            �            1259    24605    CasteCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CasteCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."CasteCategories_id_seq";
       public          postgres    false    219            [           0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
          public          postgres    false    220            �            1259    24606    Talukas    TABLE     �   CREATE TABLE public."Talukas" (
    id integer NOT NULL,
    name character varying(255),
    district_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Talukas";
       public         heap    postgres    false            �            1259    24609    Cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Cities_id_seq";
       public          postgres    false    221            \           0    0    Cities_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Talukas".id;
          public          postgres    false    222            �            1259    24610    Classes    TABLE     �   CREATE TABLE public."Classes" (
    id integer NOT NULL,
    name character varying(255),
    institute_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Classes";
       public         heap    postgres    false            �            1259    24613    Classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Classes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Classes_id_seq";
       public          postgres    false    223            ]           0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
          public          postgres    false    224            �            1259    24614 	   Companies    TABLE     \  CREATE TABLE public."Companies" (
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
    DROP TABLE public."Companies";
       public         heap    postgres    false            �            1259    24619    Companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Companies_id_seq";
       public          postgres    false    225            ^           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
          public          postgres    false    226            b           1259    33632    CompanyRemarks    TABLE     :  CREATE TABLE public."CompanyRemarks" (
    id integer NOT NULL,
    entity_user_id integer,
    section integer,
    remarks character varying(255),
    userrole_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."CompanyRemarks";
       public         heap    postgres    false            a           1259    33631    CompanyRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CompanyRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."CompanyRemarks_id_seq";
       public          postgres    false    354            _           0    0    CompanyRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNED BY public."CompanyRemarks".id;
          public          postgres    false    353            �            1259    24620    Configs    TABLE     �   CREATE TABLE public."Configs" (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Configs";
       public         heap    postgres    false            �            1259    24625    Configs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Configs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Configs_id_seq";
       public          postgres    false    227            `           0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
          public          postgres    false    228            k           1259    42005    Constituencies    TABLE       CREATE TABLE public."Constituencies" (
    id integer NOT NULL,
    name character varying(255),
    district_id integer,
    state_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."Constituencies";
       public         heap    postgres    false            j           1259    42004    Constituencies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Constituencies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Constituencies_id_seq";
       public          postgres    false    363            a           0    0    Constituencies_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Constituencies_id_seq" OWNED BY public."Constituencies".id;
          public          postgres    false    362            �            1259    24626 	   Countries    TABLE     �   CREATE TABLE public."Countries" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    nationality character varying
);
    DROP TABLE public."Countries";
       public         heap    postgres    false            �            1259    24631    Countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Countries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Countries_id_seq";
       public          postgres    false    229            b           0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
          public          postgres    false    230            �            1259    24632    Courses    TABLE     $  CREATE TABLE public."Courses" (
    id integer NOT NULL,
    name character varying(255),
    course_code character varying(255),
    credit character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Courses";
       public         heap    postgres    false            �            1259    24637    Courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Courses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Courses_id_seq";
       public          postgres    false    231            c           0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
          public          postgres    false    232            �            1259    24638    Degrees    TABLE     �   CREATE TABLE public."Degrees" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Degrees";
       public         heap    postgres    false            �            1259    24641    Degrees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Degrees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Degrees_id_seq";
       public          postgres    false    233            d           0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
          public          postgres    false    234            �            1259    24642    Departments    TABLE     �   CREATE TABLE public."Departments" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Departments";
       public         heap    postgres    false            �            1259    24645    Departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Departments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Departments_id_seq";
       public          postgres    false    235            e           0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
          public          postgres    false    236            �            1259    24646    Designations    TABLE     �   CREATE TABLE public."Designations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Designations";
       public         heap    postgres    false            �            1259    24649    Designations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Designations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Designations_id_seq";
       public          postgres    false    237            f           0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
          public          postgres    false    238            �            1259    24650 	   Districts    TABLE     �   CREATE TABLE public."Districts" (
    id integer NOT NULL,
    name character varying(255),
    state_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Districts";
       public         heap    postgres    false            �            1259    24653    Districts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Districts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Districts_id_seq";
       public          postgres    false    239            g           0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
          public          postgres    false    240            �            1259    24654    DocumentTypes    TABLE       CREATE TABLE public."DocumentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ParentId" integer
);
 #   DROP TABLE public."DocumentTypes";
       public         heap    postgres    false            �            1259    24658    DocumentTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DocumentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."DocumentTypes_id_seq";
       public          postgres    false    241            h           0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
          public          postgres    false    242            �            1259    24659    Dummies    TABLE     �   CREATE TABLE public."Dummies" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value integer DEFAULT 0
);
    DROP TABLE public."Dummies";
       public         heap    postgres    false            �            1259    24663    Dummies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Dummies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Dummies_id_seq";
       public          postgres    false    243            i           0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
          public          postgres    false    244            �            1259    24664 	   Durations    TABLE     �   CREATE TABLE public."Durations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Durations";
       public         heap    postgres    false            �            1259    24667    Durations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Durations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Durations_id_seq";
       public          postgres    false    245            j           0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
          public          postgres    false    246            �            1259    24668    EmploymentTypes    TABLE     �   CREATE TABLE public."EmploymentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."EmploymentTypes";
       public         heap    postgres    false            �            1259    24671    EmploymentTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EmploymentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."EmploymentTypes_id_seq";
       public          postgres    false    247            k           0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
          public          postgres    false    248            �            1259    24672    EntityTypes    TABLE     �   CREATE TABLE public."EntityTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."EntityTypes";
       public         heap    postgres    false            �            1259    24675    EntityTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EntityTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EntityTypes_id_seq";
       public          postgres    false    249            l           0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
          public          postgres    false    250            �            1259    24676    EntityUsers    TABLE       CREATE TABLE public."EntityUsers" (
    id integer NOT NULL,
    user_id integer,
    entity_type_id integer,
    cio_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."EntityUsers";
       public         heap    postgres    false            �            1259    24679    EntityUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EntityUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EntityUsers_id_seq";
       public          postgres    false    251            m           0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
          public          postgres    false    252            �            1259    24680 	   EvalTypes    TABLE     �   CREATE TABLE public."EvalTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."EvalTypes";
       public         heap    postgres    false            �            1259    24683    EvalTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EvalTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."EvalTypes_id_seq";
       public          postgres    false    253            n           0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
          public          postgres    false    254            �            1259    24684    Experiences    TABLE       CREATE TABLE public."Experiences" (
    id integer NOT NULL,
    "case" character varying(255),
    "from" integer,
    "to" integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Experiences";
       public         heap    postgres    false                        1259    24687    Experiences_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Experiences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Experiences_id_seq";
       public          postgres    false    255            o           0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
          public          postgres    false    256            f           1259    33696    InstituteProgrammeSubjects    TABLE     <  CREATE TABLE public."InstituteProgrammeSubjects" (
    id integer NOT NULL,
    programme_id integer,
    institute_id integer,
    subject_id integer,
    userdoc_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 0   DROP TABLE public."InstituteProgrammeSubjects";
       public         heap    postgres    false            e           1259    33695    FeeStuctures_id_seq    SEQUENCE     �   CREATE SEQUENCE public."FeeStuctures_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."FeeStuctures_id_seq";
       public          postgres    false    358            p           0    0    FeeStuctures_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."FeeStuctures_id_seq" OWNED BY public."InstituteProgrammeSubjects".id;
          public          postgres    false    357                       1259    24688    Genders    TABLE     �   CREATE TABLE public."Genders" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Genders";
       public         heap    postgres    false                       1259    24692    Genders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Genders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Genders_id_seq";
       public          postgres    false    257            q           0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
          public          postgres    false    258                       1259    24693    GuardianTypes    TABLE     �   CREATE TABLE public."GuardianTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."GuardianTypes";
       public         heap    postgres    false                       1259    24697    GuardianTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GuardianTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."GuardianTypes_id_seq";
       public          postgres    false    259            r           0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
          public          postgres    false    260                       1259    24698     InstituteProgrammeCourseSubjects    TABLE     h  CREATE TABLE public."InstituteProgrammeCourseSubjects" (
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
 6   DROP TABLE public."InstituteProgrammeCourseSubjects";
       public         heap    postgres    false                       1259    24701 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq";
       public          postgres    false    261            s           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
          public          postgres    false    262                       1259    24702    InstituteProgrammes    TABLE     �   CREATE TABLE public."InstituteProgrammes" (
    id integer NOT NULL,
    institute_id integer,
    programme_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."InstituteProgrammes";
       public         heap    postgres    false                       1259    24705    InstituteProgrammes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteProgrammes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."InstituteProgrammes_id_seq";
       public          postgres    false    263            t           0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
          public          postgres    false    264            	           1259    24706    InstituteStaffs    TABLE     �  CREATE TABLE public."InstituteStaffs" (
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
 %   DROP TABLE public."InstituteStaffs";
       public         heap    postgres    false            
           1259    24711    InstituteStaffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteStaffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."InstituteStaffs_id_seq";
       public          postgres    false    265            u           0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
          public          postgres    false    266                       1259    24712    InstituteTypes    TABLE     �   CREATE TABLE public."InstituteTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."InstituteTypes";
       public         heap    postgres    false                       1259    24715    InstituteTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."InstituteTypes_id_seq";
       public          postgres    false    267            v           0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
          public          postgres    false    268                       1259    24716 
   Institutes    TABLE     k  CREATE TABLE public."Institutes" (
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
     DROP TABLE public."Institutes";
       public         heap    postgres    false                       1259    24721    Institutes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Institutes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Institutes_id_seq";
       public          postgres    false    269            w           0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
          public          postgres    false    270                       1259    24722 	   MenuItems    TABLE     �   CREATE TABLE public."MenuItems" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."MenuItems";
       public         heap    postgres    false                       1259    24727    MenuItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MenuItems_id_seq";
       public          postgres    false    271            x           0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
          public          postgres    false    272                       1259    24728    Modes    TABLE     �   CREATE TABLE public."Modes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Modes";
       public         heap    postgres    false                       1259    24731    Modes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Modes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Modes_id_seq";
       public          postgres    false    273            y           0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
          public          postgres    false    274                       1259    24732    Notifications    TABLE     O  CREATE TABLE public."Notifications" (
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
 #   DROP TABLE public."Notifications";
       public         heap    postgres    false                       1259    24737    Notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Notifications_id_seq";
       public          postgres    false    275            z           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
          public          postgres    false    276                       1259    24738    OTPs    TABLE     �  CREATE TABLE public."OTPs" (
    id integer NOT NULL,
    otp_type character varying(255),
    otp character varying(255),
    attempts integer,
    details character varying(255),
    is_active boolean,
    "time" timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    verify_attempts_time time with time zone,
    verify_attempts integer DEFAULT 0
);
    DROP TABLE public."OTPs";
       public         heap    postgres    false                       1259    24743    OTPs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OTPs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."OTPs_id_seq";
       public          postgres    false    277            {           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
          public          postgres    false    278                       1259    24744    OrganisationTypes    TABLE     �   CREATE TABLE public."OrganisationTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."OrganisationTypes";
       public         heap    postgres    false                       1259    24747    OrganisationTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrganisationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."OrganisationTypes_id_seq";
       public          postgres    false    279            |           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
          public          postgres    false    280                       1259    24748    StudentOtherSkills    TABLE     �   CREATE TABLE public."StudentOtherSkills" (
    id integer NOT NULL,
    name character varying(255),
    user_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."StudentOtherSkills";
       public         heap    postgres    false                       1259    24751    OtherSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OtherSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."OtherSkills_id_seq";
       public          postgres    false    281            }           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
          public          postgres    false    282                       1259    24752 
   OwnerTypes    TABLE     �   CREATE TABLE public."OwnerTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."OwnerTypes";
       public         heap    postgres    false                       1259    24755    OwnerTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OwnerTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."OwnerTypes_id_seq";
       public          postgres    false    283            ~           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
          public          postgres    false    284                       1259    24756    Percentages    TABLE       CREATE TABLE public."Percentages" (
    id integer NOT NULL,
    "case" character varying(255),
    from_percentage integer,
    to_percentage integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Percentages";
       public         heap    postgres    false                       1259    24759    Percentages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Percentages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Percentages_id_seq";
       public          postgres    false    285                       0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
          public          postgres    false    286                       1259    24760    Permissions    TABLE     �   CREATE TABLE public."Permissions" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Permissions";
       public         heap    postgres    false                        1259    24763    Permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Permissions_id_seq";
       public          postgres    false    287            �           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
          public          postgres    false    288            !           1259    24764    ProgrammeSemesters    TABLE     	  CREATE TABLE public."ProgrammeSemesters" (
    id integer NOT NULL,
    program_id integer,
    semester_id integer,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
 (   DROP TABLE public."ProgrammeSemesters";
       public         heap    postgres    false            "           1259    24767    ProgrammeSemesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProgrammeSemesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ProgrammeSemesters_id_seq";
       public          postgres    false    289            �           0    0    ProgrammeSemesters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;
          public          postgres    false    290            i           1259    33745    ProgrammeSubjects    TABLE     �   CREATE TABLE public."ProgrammeSubjects" (
    programme_id integer NOT NULL,
    subject_id integer NOT NULL,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."ProgrammeSubjects";
       public         heap    postgres    false            #           1259    24768    ProgrammeSubjects_delete    TABLE     �   CREATE TABLE public."ProgrammeSubjects_delete" (
    id integer NOT NULL,
    programme_id integer,
    subject_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 .   DROP TABLE public."ProgrammeSubjects_delete";
       public         heap    postgres    false            $           1259    24771    ProgrammeSubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProgrammeSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ProgrammeSubjects_id_seq";
       public          postgres    false    291            �           0    0    ProgrammeSubjects_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects_delete".id;
          public          postgres    false    292            %           1259    24772 
   Programmes    TABLE     �  CREATE TABLE public."Programmes" (
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
     DROP TABLE public."Programmes";
       public         heap    postgres    false            &           1259    24777    Programmes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Programmes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Programmes_id_seq";
       public          postgres    false    293            �           0    0    Programmes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;
          public          postgres    false    294            '           1259    24778    QualificationTypes    TABLE     �   CREATE TABLE public."QualificationTypes" (
    id integer NOT NULL,
    title character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."QualificationTypes";
       public         heap    postgres    false            (           1259    24781    QualificationTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QualificationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."QualificationTypes_id_seq";
       public          postgres    false    295            �           0    0    QualificationTypes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."QualificationTypes_id_seq" OWNED BY public."QualificationTypes".id;
          public          postgres    false    296            )           1259    24788    Roles    TABLE     :  CREATE TABLE public."Roles" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    is_admin boolean DEFAULT false,
    type character varying,
    display boolean DEFAULT false
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            *           1259    24795    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    297            �           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    298            +           1259    24796 	   Semesters    TABLE     �   CREATE TABLE public."Semesters" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Semesters";
       public         heap    postgres    false            ,           1259    24799    Semesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Semesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Semesters_id_seq";
       public          postgres    false    299            �           0    0    Semesters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Semesters_id_seq" OWNED BY public."Semesters".id;
          public          postgres    false    300            -           1259    24800    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            .           1259    24803    ServiceRoles    TABLE     �   CREATE TABLE public."ServiceRoles" (
    id integer NOT NULL,
    role_id integer,
    service_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ServiceRoles";
       public         heap    postgres    false            /           1259    24806    ServiceRoles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ServiceRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ServiceRoles_id_seq";
       public          postgres    false    302            �           0    0    ServiceRoles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ServiceRoles_id_seq" OWNED BY public."ServiceRoles".id;
          public          postgres    false    303            0           1259    24807    Services    TABLE       CREATE TABLE public."Services" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    image_url character varying
);
    DROP TABLE public."Services";
       public         heap    postgres    false            1           1259    24812    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public          postgres    false    304            �           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
          public          postgres    false    305            2           1259    24813    Skills    TABLE     �   CREATE TABLE public."Skills" (
    id integer NOT NULL,
    name character varying(255),
    active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying(255)
);
    DROP TABLE public."Skills";
       public         heap    postgres    false            3           1259    24818    Skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Skills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Skills_id_seq";
       public          postgres    false    306            �           0    0    Skills_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Skills_id_seq" OWNED BY public."Skills".id;
          public          postgres    false    307            4           1259    24819    StaffRemarks    TABLE     8  CREATE TABLE public."StaffRemarks" (
    id integer NOT NULL,
    entity_user_id integer,
    section integer,
    remarks character varying(255),
    userrole_id integer,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."StaffRemarks";
       public         heap    postgres    false            5           1259    24823    StaffRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StaffRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StaffRemarks_id_seq";
       public          postgres    false    308            �           0    0    StaffRemarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StaffRemarks_id_seq" OWNED BY public."StaffRemarks".id;
          public          postgres    false    309            6           1259    24824    Staffs    TABLE     �  CREATE TABLE public."Staffs" (
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
    DROP TABLE public."Staffs";
       public         heap    postgres    false            7           1259    24829    Staffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Staffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Staffs_id_seq";
       public          postgres    false    310            �           0    0    Staffs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Staffs_id_seq" OWNED BY public."Staffs".id;
          public          postgres    false    311            8           1259    24830    States    TABLE     �   CREATE TABLE public."States" (
    id integer NOT NULL,
    name character varying(255),
    country_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."States";
       public         heap    postgres    false            9           1259    24833    States_id_seq    SEQUENCE     �   CREATE SEQUENCE public."States_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."States_id_seq";
       public          postgres    false    312            �           0    0    States_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."States_id_seq" OWNED BY public."States".id;
          public          postgres    false    313            :           1259    24834    Streams    TABLE     �   CREATE TABLE public."Streams" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Streams";
       public         heap    postgres    false            ;           1259    24838    Streams_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Streams_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Streams_id_seq";
       public          postgres    false    314            �           0    0    Streams_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Streams_id_seq" OWNED BY public."Streams".id;
          public          postgres    false    315            <           1259    24839    StudentAdditionalSkills    TABLE     �  CREATE TABLE public."StudentAdditionalSkills" (
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
 -   DROP TABLE public."StudentAdditionalSkills";
       public         heap    postgres    false            =           1259    24844    StudentAdditionalSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentAdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."StudentAdditionalSkills_id_seq";
       public          postgres    false    316            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNED BY public."StudentAdditionalSkills".id;
          public          postgres    false    317            >           1259    24845    StudentEnrollments    TABLE     �  CREATE TABLE public."StudentEnrollments" (
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
    month_year character varying(255),
    is_active integer DEFAULT 1,
    consolidated_grade_obtained character varying(255),
    qual_type_id integer,
    academic_year_id integer,
    institute_id integer,
    programme_id integer,
    evaltype_id integer,
    stream_id integer,
    last_completed_qualification boolean DEFAULT false NOT NULL,
    board_university_id integer,
    lateral_entry integer DEFAULT 0
);
 (   DROP TABLE public."StudentEnrollments";
       public         heap    postgres    false            ?           1259    24850    StudentEnrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentEnrollments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."StudentEnrollments_id_seq";
       public          postgres    false    318            �           0    0    StudentEnrollments_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNED BY public."StudentEnrollments".id;
          public          postgres    false    319            @           1259    24851    StudentGuardians    TABLE       CREATE TABLE public."StudentGuardians" (
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
    gender integer,
    death_certificate_id integer
);
 &   DROP TABLE public."StudentGuardians";
       public         heap    postgres    false            A           1259    24858    StudentGuardians_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentGuardians_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."StudentGuardians_id_seq";
       public          postgres    false    320            �           0    0    StudentGuardians_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."StudentGuardians_id_seq" OWNED BY public."StudentGuardians".id;
          public          postgres    false    321            B           1259    24859    StudentMarks    TABLE     �  CREATE TABLE public."StudentMarks" (
    id integer NOT NULL,
    student_enrollment_id integer,
    eval_type_id integer,
    total_marks integer,
    marks_obtained numeric,
    grade_obtained character varying(255),
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    month_year character varying(50),
    last_qual_sem boolean DEFAULT false NOT NULL,
    userdoc_id integer,
    semester_id integer
);
 "   DROP TABLE public."StudentMarks";
       public         heap    postgres    false            C           1259    24864    StudentMarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentMarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StudentMarks_id_seq";
       public          postgres    false    322            �           0    0    StudentMarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StudentMarks_id_seq" OWNED BY public."StudentMarks".id;
          public          postgres    false    323            D           1259    24865    StudentRemarks    TABLE     p  CREATE TABLE public."StudentRemarks" (
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
 $   DROP TABLE public."StudentRemarks";
       public         heap    postgres    false            E           1259    24869    StudentRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."StudentRemarks_id_seq";
       public          postgres    false    324            �           0    0    StudentRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentRemarks_id_seq" OWNED BY public."StudentRemarks".id;
          public          postgres    false    325            F           1259    24870    StudentResults    TABLE     �  CREATE TABLE public."StudentResults" (
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
 $   DROP TABLE public."StudentResults";
       public         heap    postgres    false            G           1259    24873    StudentResults_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentResults_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."StudentResults_id_seq";
       public          postgres    false    326            �           0    0    StudentResults_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentResults_id_seq" OWNED BY public."StudentResults".id;
          public          postgres    false    327            H           1259    24874    StudentSkills    TABLE     �   CREATE TABLE public."StudentSkills" (
    id integer NOT NULL,
    user_id integer,
    skill_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."StudentSkills";
       public         heap    postgres    false            I           1259    24877    StudentSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."StudentSkills_id_seq";
       public          postgres    false    328            �           0    0    StudentSkills_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."StudentSkills_id_seq" OWNED BY public."StudentSkills".id;
          public          postgres    false    329            J           1259    24878    Subjects    TABLE     �   CREATE TABLE public."Subjects" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Subjects";
       public         heap    postgres    false            K           1259    24881    Subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Subjects_id_seq";
       public          postgres    false    330            �           0    0    Subjects_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Subjects_id_seq" OWNED BY public."Subjects".id;
          public          postgres    false    331            L           1259    24882    UserContacts    TABLE     �  CREATE TABLE public."UserContacts" (
    id integer NOT NULL,
    user_id integer,
    type_id integer,
    address character varying(255),
    country_id integer,
    state_id integer,
    district_id integer,
    taluka_id integer,
    village character varying(255),
    pincode character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    constituency_id integer
);
 "   DROP TABLE public."UserContacts";
       public         heap    postgres    false            M           1259    24887    UserContacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserContacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."UserContacts_id_seq";
       public          postgres    false    332            �           0    0    UserContacts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."UserContacts_id_seq" OWNED BY public."UserContacts".id;
          public          postgres    false    333            N           1259    24888    UserDesignations    TABLE       CREATE TABLE public."UserDesignations" (
    id integer NOT NULL,
    user_id integer,
    designation_id integer,
    employementtype_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."UserDesignations";
       public         heap    postgres    false            O           1259    24891    UserDesignations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDesignations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."UserDesignations_id_seq";
       public          postgres    false    334            �           0    0    UserDesignations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."UserDesignations_id_seq" OWNED BY public."UserDesignations".id;
          public          postgres    false    335            P           1259    24892    UserDocs    TABLE     :  CREATE TABLE public."UserDocs" (
    id integer NOT NULL,
    user_id integer,
    doc_type_id integer,
    filename character varying(255),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    is_active boolean DEFAULT true NOT NULL
);
    DROP TABLE public."UserDocs";
       public         heap    postgres    false            Q           1259    24895    UserDocs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDocs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."UserDocs_id_seq";
       public          postgres    false    336            �           0    0    UserDocs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."UserDocs_id_seq" OWNED BY public."UserDocs".id;
          public          postgres    false    337            R           1259    24896    UserMenuItems    TABLE     �   CREATE TABLE public."UserMenuItems" (
    id integer NOT NULL,
    role_id integer,
    menuitem_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."UserMenuItems";
       public         heap    postgres    false            S           1259    24899    UserMenuItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserMenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."UserMenuItems_id_seq";
       public          postgres    false    338            �           0    0    UserMenuItems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."UserMenuItems_id_seq" OWNED BY public."UserMenuItems".id;
          public          postgres    false    339            T           1259    24900    UserPermissions    TABLE     �   CREATE TABLE public."UserPermissions" (
    id integer NOT NULL,
    role_id integer,
    permission_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."UserPermissions";
       public         heap    postgres    false            U           1259    24903    UserPermissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserPermissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."UserPermissions_id_seq";
       public          postgres    false    340            �           0    0    UserPermissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserPermissions_id_seq" OWNED BY public."UserPermissions".id;
          public          postgres    false    341            V           1259    24904    UserPersonalDetails    TABLE     �  CREATE TABLE public."UserPersonalDetails" (
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
    phone_sec numeric(10,0),
    annual_income numeric
);
 )   DROP TABLE public."UserPersonalDetails";
       public         heap    postgres    false            W           1259    24909    UserPersonalDetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserPersonalDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."UserPersonalDetails_id_seq";
       public          postgres    false    342            �           0    0    UserPersonalDetails_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."UserPersonalDetails_id_seq" OWNED BY public."UserPersonalDetails".id;
          public          postgres    false    343            X           1259    24910    UserQualifications    TABLE       CREATE TABLE public."UserQualifications" (
    id integer NOT NULL,
    user_id integer,
    qualification_type_id integer,
    year integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
 (   DROP TABLE public."UserQualifications";
       public         heap    postgres    false            Y           1259    24913    UserQualifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserQualifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."UserQualifications_id_seq";
       public          postgres    false    344            �           0    0    UserQualifications_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserQualifications_id_seq" OWNED BY public."UserQualifications".id;
          public          postgres    false    345            Z           1259    24914 	   UserRoles    TABLE       CREATE TABLE public."UserRoles" (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    preferred_role boolean DEFAULT false,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."UserRoles";
       public         heap    postgres    false            [           1259    24919    UserRoles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."UserRoles_id_seq";
       public          postgres    false    346            �           0    0    UserRoles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."UserRoles_id_seq" OWNED BY public."UserRoles".id;
          public          postgres    false    347            \           1259    24920    Users    TABLE     v  CREATE TABLE public."Users" (
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
    DROP TABLE public."Users";
       public         heap    postgres    false            n           1259    42157    Users2_id_seq    SEQUENCE     x   CREATE SEQUENCE public."Users2_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Users2_id_seq";
       public          postgres    false            ]           1259    24929    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    348            �           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    349            o           1259    42158 	   Users_new    TABLE     �  CREATE TABLE public."Users_new" (
    id integer DEFAULT nextval('public."Users2_id_seq"'::regclass) NOT NULL,
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
    DROP TABLE public."Users_new";
       public         heap    postgres    false    366            ^           1259    24930    dummy_table    TABLE     E   CREATE TABLE public.dummy_table (
    age bigint,
    name "char"
);
    DROP TABLE public.dummy_table;
       public         heap    postgres    false            _           1259    24933 	   religions    TABLE     �   CREATE TABLE public.religions (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.religions;
       public         heap    postgres    false            `           1259    24936    religions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.religions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.religions_id_seq;
       public          postgres    false    351            �           0    0    religions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.religions_id_seq OWNED BY public.religions.id;
          public          postgres    false    352            2           2604    41925    AcademicYears id    DEFAULT     x   ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);
 A   ALTER TABLE public."AcademicYears" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    359    360    360            �           2604    41926    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    41927    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            7           2604    42048    Boarduniversities id    DEFAULT     �   ALTER TABLE ONLY public."Boarduniversities" ALTER COLUMN id SET DEFAULT nextval('public."Boarduniversities_id_seq"'::regclass);
 E   ALTER TABLE public."Boarduniversities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    365    364    365            �           2604    41928    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    41929 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    41930    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            +           2604    41931    CompanyRemarks id    DEFAULT     z   ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."CompanyRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    353    354    354            �           2604    41932 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            5           2604    42008    Constituencies id    DEFAULT     z   ALTER TABLE ONLY public."Constituencies" ALTER COLUMN id SET DEFAULT nextval('public."Constituencies_id_seq"'::regclass);
 B   ALTER TABLE public."Constituencies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    363    362    363            �           2604    41933    Countries id    DEFAULT     p   ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);
 =   ALTER TABLE public."Countries" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    41934 
   Courses id    DEFAULT     l   ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);
 ;   ALTER TABLE public."Courses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    41935 
   Degrees id    DEFAULT     l   ALTER TABLE ONLY public."Degrees" ALTER COLUMN id SET DEFAULT nextval('public."Degrees_id_seq"'::regclass);
 ;   ALTER TABLE public."Degrees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    41936    Departments id    DEFAULT     t   ALTER TABLE ONLY public."Departments" ALTER COLUMN id SET DEFAULT nextval('public."Departments_id_seq"'::regclass);
 ?   ALTER TABLE public."Departments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    41937    Designations id    DEFAULT     v   ALTER TABLE ONLY public."Designations" ALTER COLUMN id SET DEFAULT nextval('public."Designations_id_seq"'::regclass);
 @   ALTER TABLE public."Designations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    41938    Districts id    DEFAULT     p   ALTER TABLE ONLY public."Districts" ALTER COLUMN id SET DEFAULT nextval('public."Districts_id_seq"'::regclass);
 =   ALTER TABLE public."Districts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    41939    DocumentTypes id    DEFAULT     x   ALTER TABLE ONLY public."DocumentTypes" ALTER COLUMN id SET DEFAULT nextval('public."DocumentTypes_id_seq"'::regclass);
 A   ALTER TABLE public."DocumentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    41940 
   Dummies id    DEFAULT     l   ALTER TABLE ONLY public."Dummies" ALTER COLUMN id SET DEFAULT nextval('public."Dummies_id_seq"'::regclass);
 ;   ALTER TABLE public."Dummies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    41941    Durations id    DEFAULT     p   ALTER TABLE ONLY public."Durations" ALTER COLUMN id SET DEFAULT nextval('public."Durations_id_seq"'::regclass);
 =   ALTER TABLE public."Durations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    41942    EmploymentTypes id    DEFAULT     |   ALTER TABLE ONLY public."EmploymentTypes" ALTER COLUMN id SET DEFAULT nextval('public."EmploymentTypes_id_seq"'::regclass);
 C   ALTER TABLE public."EmploymentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    41943    EntityTypes id    DEFAULT     t   ALTER TABLE ONLY public."EntityTypes" ALTER COLUMN id SET DEFAULT nextval('public."EntityTypes_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    41944    EntityUsers id    DEFAULT     t   ALTER TABLE ONLY public."EntityUsers" ALTER COLUMN id SET DEFAULT nextval('public."EntityUsers_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    41945    EvalTypes id    DEFAULT     p   ALTER TABLE ONLY public."EvalTypes" ALTER COLUMN id SET DEFAULT nextval('public."EvalTypes_id_seq"'::regclass);
 =   ALTER TABLE public."EvalTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    41946    Experiences id    DEFAULT     t   ALTER TABLE ONLY public."Experiences" ALTER COLUMN id SET DEFAULT nextval('public."Experiences_id_seq"'::regclass);
 ?   ALTER TABLE public."Experiences" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    41947 
   Genders id    DEFAULT     l   ALTER TABLE ONLY public."Genders" ALTER COLUMN id SET DEFAULT nextval('public."Genders_id_seq"'::regclass);
 ;   ALTER TABLE public."Genders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            �           2604    41948    GuardianTypes id    DEFAULT     x   ALTER TABLE ONLY public."GuardianTypes" ALTER COLUMN id SET DEFAULT nextval('public."GuardianTypes_id_seq"'::regclass);
 A   ALTER TABLE public."GuardianTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            �           2604    41949 #   InstituteProgrammeCourseSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammeCourseSubjects_id_seq"'::regclass);
 T   ALTER TABLE public."InstituteProgrammeCourseSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            0           2604    41950    InstituteProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);
 N   ALTER TABLE public."InstituteProgrammeSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    357    358    358            �           2604    41951    InstituteProgrammes id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammes_id_seq"'::regclass);
 G   ALTER TABLE public."InstituteProgrammes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            �           2604    41952    InstituteStaffs id    DEFAULT     |   ALTER TABLE ONLY public."InstituteStaffs" ALTER COLUMN id SET DEFAULT nextval('public."InstituteStaffs_id_seq"'::regclass);
 C   ALTER TABLE public."InstituteStaffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            �           2604    41953    InstituteTypes id    DEFAULT     z   ALTER TABLE ONLY public."InstituteTypes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteTypes_id_seq"'::regclass);
 B   ALTER TABLE public."InstituteTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            �           2604    41954    Institutes id    DEFAULT     r   ALTER TABLE ONLY public."Institutes" ALTER COLUMN id SET DEFAULT nextval('public."Institutes_id_seq"'::regclass);
 >   ALTER TABLE public."Institutes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    41955    MenuItems id    DEFAULT     p   ALTER TABLE ONLY public."MenuItems" ALTER COLUMN id SET DEFAULT nextval('public."MenuItems_id_seq"'::regclass);
 =   ALTER TABLE public."MenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �           2604    41956    Modes id    DEFAULT     h   ALTER TABLE ONLY public."Modes" ALTER COLUMN id SET DEFAULT nextval('public."Modes_id_seq"'::regclass);
 9   ALTER TABLE public."Modes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273            �           2604    41957    Notifications id    DEFAULT     x   ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);
 A   ALTER TABLE public."Notifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275            �           2604    41958    OTPs id    DEFAULT     f   ALTER TABLE ONLY public."OTPs" ALTER COLUMN id SET DEFAULT nextval('public."OTPs_id_seq"'::regclass);
 8   ALTER TABLE public."OTPs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277            �           2604    41959    OrganisationTypes id    DEFAULT     �   ALTER TABLE ONLY public."OrganisationTypes" ALTER COLUMN id SET DEFAULT nextval('public."OrganisationTypes_id_seq"'::regclass);
 E   ALTER TABLE public."OrganisationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279            �           2604    41960    OwnerTypes id    DEFAULT     r   ALTER TABLE ONLY public."OwnerTypes" ALTER COLUMN id SET DEFAULT nextval('public."OwnerTypes_id_seq"'::regclass);
 >   ALTER TABLE public."OwnerTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283            �           2604    41961    Percentages id    DEFAULT     t   ALTER TABLE ONLY public."Percentages" ALTER COLUMN id SET DEFAULT nextval('public."Percentages_id_seq"'::regclass);
 ?   ALTER TABLE public."Percentages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285            �           2604    41962    Permissions id    DEFAULT     t   ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287            �           2604    41963    ProgrammeSemesters id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSemesters" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSemesters_id_seq"'::regclass);
 F   ALTER TABLE public."ProgrammeSemesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289            �           2604    41964    ProgrammeSubjects_delete id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSubjects_delete" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSubjects_id_seq"'::regclass);
 L   ALTER TABLE public."ProgrammeSubjects_delete" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291            �           2604    41965    Programmes id    DEFAULT     r   ALTER TABLE ONLY public."Programmes" ALTER COLUMN id SET DEFAULT nextval('public."Programmes_id_seq"'::regclass);
 >   ALTER TABLE public."Programmes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293            �           2604    41966    QualificationTypes id    DEFAULT     �   ALTER TABLE ONLY public."QualificationTypes" ALTER COLUMN id SET DEFAULT nextval('public."QualificationTypes_id_seq"'::regclass);
 F   ALTER TABLE public."QualificationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295            �           2604    41967    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297                       2604    41968    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299                       2604    41969    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302                       2604    41970    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304                       2604    41971 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306                       2604    41972    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308                       2604    41973 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310                       2604    41974 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312            	           2604    41975 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314                       2604    41976    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316                       2604    41977    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318                       2604    41978    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    41979    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322            �           2604    41980    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    41981    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    41982    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    41983    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    42206    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330            �           2604    41985 
   Talukas id    DEFAULT     k   ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 ;   ALTER TABLE public."Talukas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            -           2604    41986    UserBanks id    DEFAULT     l   ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);
 =   ALTER TABLE public."UserBanks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    355    356    356                       2604    41987    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332                       2604    41988    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334                       2604    41989    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336                       2604    41990    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338                       2604    41991    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340                        2604    41992    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342            !           2604    41993    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344            "           2604    41994    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346            %           2604    41995    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    348            *           2604    41996    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351            H          0    33738    AcademicYears 
   TABLE DATA           Y   COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    360   ��      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   n�      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ��      M          0    42045    Boarduniversities 
   TABLE DATA           f   COPY public."Boarduniversities" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    365   ��      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   ��      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   8�      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   �      B          0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   H�      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   e�      K          0    42005    Constituencies 
   TABLE DATA           p   COPY public."Constituencies" (id, name, district_id, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    363   ��      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   E      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   �
      �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   B      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   _      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237         �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   �      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   Q      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   t      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   �      �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   \      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   �      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   �      �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   �      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   1      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   N      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   �      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261         F          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   9      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   �'      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   �/      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   �/      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   �0      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   2V      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   W      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   RW      �          0    24738    OTPs 
   TABLE DATA           �   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt", verify_attempts_time, verify_attempts) FROM stdin;
    public          postgres    false    277   c      �          0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   |�      �          0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   ��      �          0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   �      �          0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   /�                0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   ��      I          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   ̠                0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   �                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   Y�                0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   ҧ      	          0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   ��                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   b�                0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   P�                0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ͭ                0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   ��                0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   O�                0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308    �                0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   �                0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   �                0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   ��                0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   ��                0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id, lateral_entry) FROM stdin;
    public          postgres    false    318   #�                 0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   ��      "          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   a�      �          0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   ��      $          0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   ��      &          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   ��      (          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   ��      *          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   ��      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �      D          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �      ,          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   5	      .          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   �      0          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   z$      2          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   c      4          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   �c      6          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec, annual_income) FROM stdin;
    public          postgres    false    342   d      8          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   N�      :          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   k�      <          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    348   �      O          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   m(      >          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   �(      ?          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   �(      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
          public          postgres    false    359            �           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    216            �           0    0    Banks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Banks_id_seq"', 24, true);
          public          postgres    false    355            �           0    0    BloodGroups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);
          public          postgres    false    218            �           0    0    Boarduniversities_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Boarduniversities_id_seq"', 46, true);
          public          postgres    false    364            �           0    0    CasteCategories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CasteCategories_id_seq"', 4, true);
          public          postgres    false    220            �           0    0    Cities_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cities_id_seq"', 27, true);
          public          postgres    false    222            �           0    0    Classes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Classes_id_seq"', 29, true);
          public          postgres    false    224            �           0    0    Companies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Companies_id_seq"', 24, true);
          public          postgres    false    226            �           0    0    CompanyRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CompanyRemarks_id_seq"', 1, false);
          public          postgres    false    353            �           0    0    Configs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Configs_id_seq"', 1, true);
          public          postgres    false    228            �           0    0    Constituencies_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Constituencies_id_seq"', 41, true);
          public          postgres    false    362            �           0    0    Countries_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Countries_id_seq"', 195, true);
          public          postgres    false    230            �           0    0    Courses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Courses_id_seq"', 2, true);
          public          postgres    false    232            �           0    0    Degrees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Degrees_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Departments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Departments_id_seq"', 6, true);
          public          postgres    false    236            �           0    0    Designations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Designations_id_seq"', 6, true);
          public          postgres    false    238            �           0    0    Districts_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Districts_id_seq"', 2, true);
          public          postgres    false    240            �           0    0    DocumentTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DocumentTypes_id_seq"', 1, false);
          public          postgres    false    242            �           0    0    Dummies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Dummies_id_seq"', 2, true);
          public          postgres    false    244            �           0    0    Durations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Durations_id_seq"', 6, true);
          public          postgres    false    246            �           0    0    EmploymentTypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."EmploymentTypes_id_seq"', 3, true);
          public          postgres    false    248            �           0    0    EntityTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."EntityTypes_id_seq"', 5, true);
          public          postgres    false    250            �           0    0    EntityUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 188, true);
          public          postgres    false    252            �           0    0    EvalTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 2, true);
          public          postgres    false    254            �           0    0    Experiences_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);
          public          postgres    false    256            �           0    0    FeeStuctures_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."FeeStuctures_id_seq"', 318, true);
          public          postgres    false    357            �           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    258            �           0    0    GuardianTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);
          public          postgres    false    260            �           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);
          public          postgres    false    262            �           0    0    InstituteProgrammes_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 127, true);
          public          postgres    false    264            �           0    0    InstituteStaffs_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 34, true);
          public          postgres    false    266            �           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 6, true);
          public          postgres    false    268            �           0    0    Institutes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Institutes_id_seq"', 603, true);
          public          postgres    false    270            �           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    272            �           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Notifications_id_seq"', 160, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 244, true);
          public          postgres    false    278            �           0    0    OrganisationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);
          public          postgres    false    280            �           0    0    OtherSkills_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 75, true);
          public          postgres    false    282            �           0    0    OwnerTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);
          public          postgres    false    284            �           0    0    Percentages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);
          public          postgres    false    286            �           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);
          public          postgres    false    288            �           0    0    ProgrammeSemesters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);
          public          postgres    false    290            �           0    0    ProgrammeSubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);
          public          postgres    false    292            �           0    0    Programmes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Programmes_id_seq"', 1, false);
          public          postgres    false    294            �           0    0    QualificationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 7, true);
          public          postgres    false    296            �           0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 18, true);
          public          postgres    false    298            �           0    0    Semesters_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Semesters_id_seq"', 11, true);
          public          postgres    false    300            �           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 23, true);
          public          postgres    false    303            �           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 3, true);
          public          postgres    false    305            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 33, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."States_id_seq"', 173, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 547, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 128, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 473, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 124, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 247, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 176, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1691, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 424, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 437, true);
          public          postgres    false    347            �           0    0    Users2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users2_id_seq"', 1, true);
          public          postgres    false    366            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 622, true);
          public          postgres    false    349            �           0    0    religions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.religions_id_seq', 1, true);
          public          postgres    false    352            �           2606    33744     AcademicYears AcademicYears_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT "AcademicYears_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."AcademicYears" DROP CONSTRAINT "AcademicYears_pkey";
       public            postgres    false    360            ?           2606    25007 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    215            A           2606    25009 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    215            �           2606    33655    UserBanks Banks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."UserBanks"
    ADD CONSTRAINT "Banks_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."UserBanks" DROP CONSTRAINT "Banks_pkey";
       public            postgres    false    356            C           2606    25011    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    217            �           2606    42051 (   Boarduniversities Boarduniversities_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_pkey";
       public            postgres    false    365            E           2606    25013 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    219            G           2606    25015    Talukas Cities_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public."Talukas" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    221            I           2606    25019    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    223            K           2606    25021    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    225            �           2606    33638 "   CompanyRemarks CompanyRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."CompanyRemarks"
    ADD CONSTRAINT "CompanyRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."CompanyRemarks" DROP CONSTRAINT "CompanyRemarks_pkey";
       public            postgres    false    354            M           2606    25023    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    227            �           2606    42011 "   Constituencies Constituencies_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Constituencies"
    ADD CONSTRAINT "Constituencies_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Constituencies" DROP CONSTRAINT "Constituencies_pkey";
       public            postgres    false    363            O           2606    25025    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    229            Q           2606    25027    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    229            S           2606    25029    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    231            U           2606    25031    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    233            W           2606    25033    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    235            Y           2606    25035    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    237            [           2606    25037    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    239            ]           2606    25039     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    241            _           2606    25041    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    243            a           2606    25043    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    245            c           2606    25045 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    247            e           2606    25047 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    247            g           2606    25049    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    249            i           2606    25051    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    251            k           2606    25053    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    253            m           2606    25055    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    255            �           2606    33702 ,   InstituteProgrammeSubjects FeeStuctures_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_pkey";
       public            postgres    false    358            o           2606    25057    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    257            q           2606    25059     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    259            s           2606    25061 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    261            u           2606    25063 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    263            y           2606    25065 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    265            {           2606    25067 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    267            }           2606    25069 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    267                       2606    25071    Institutes Institutes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public            postgres    false    269            �           2606    25073    MenuItems MenuItems_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MenuItems" DROP CONSTRAINT "MenuItems_pkey";
       public            postgres    false    271            �           2606    25075    Modes Modes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Modes"
    ADD CONSTRAINT "Modes_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Modes" DROP CONSTRAINT "Modes_pkey";
       public            postgres    false    273            �           2606    25077     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    275            �           2606    25079    OTPs OTPs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT "OTPs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT "OTPs_pkey";
       public            postgres    false    277            �           2606    25081 (   OrganisationTypes OrganisationTypes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."OrganisationTypes"
    ADD CONSTRAINT "OrganisationTypes_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."OrganisationTypes" DROP CONSTRAINT "OrganisationTypes_pkey";
       public            postgres    false    279            �           2606    25083 #   StudentOtherSkills OtherSkills_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."StudentOtherSkills"
    ADD CONSTRAINT "OtherSkills_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."StudentOtherSkills" DROP CONSTRAINT "OtherSkills_pkey";
       public            postgres    false    281            �           2606    25085    OwnerTypes OwnerTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."OwnerTypes"
    ADD CONSTRAINT "OwnerTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."OwnerTypes" DROP CONSTRAINT "OwnerTypes_pkey";
       public            postgres    false    283            �           2606    25087    Percentages Percentages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Percentages"
    ADD CONSTRAINT "Percentages_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Percentages" DROP CONSTRAINT "Percentages_pkey";
       public            postgres    false    285            �           2606    25089    Permissions Permissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Permissions" DROP CONSTRAINT "Permissions_pkey";
       public            postgres    false    287            �           2606    25091 *   ProgrammeSemesters ProgrammeSemesters_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."ProgrammeSemesters"
    ADD CONSTRAINT "ProgrammeSemesters_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."ProgrammeSemesters" DROP CONSTRAINT "ProgrammeSemesters_pkey";
       public            postgres    false    289            �           2606    25093 /   ProgrammeSubjects_delete ProgrammeSubjects_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."ProgrammeSubjects_delete"
    ADD CONSTRAINT "ProgrammeSubjects_pkey" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public."ProgrammeSubjects_delete" DROP CONSTRAINT "ProgrammeSubjects_pkey";
       public            postgres    false    291            �           2606    33750 )   ProgrammeSubjects ProgrammeSubjects_pkey1 
   CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_pkey1" PRIMARY KEY (programme_id, subject_id);
 W   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_pkey1";
       public            postgres    false    361    361            �           2606    25095    Programmes Programmes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_name_key";
       public            postgres    false    293            �           2606    25097    Programmes Programmes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_pkey";
       public            postgres    false    293            �           2606    25099 *   QualificationTypes QualificationTypes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."QualificationTypes"
    ADD CONSTRAINT "QualificationTypes_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."QualificationTypes" DROP CONSTRAINT "QualificationTypes_pkey";
       public            postgres    false    295            �           2606    25103    Roles Roles_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_name_key" UNIQUE (name);
 B   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_name_key";
       public            postgres    false    297            �           2606    25105    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    297            �           2606    25107    Semesters Semesters_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Semesters"
    ADD CONSTRAINT "Semesters_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Semesters" DROP CONSTRAINT "Semesters_pkey";
       public            postgres    false    299            �           2606    25109     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    301            �           2606    25111    ServiceRoles ServiceRoles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_pkey";
       public            postgres    false    302            �           2606    25113    Services Services_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_name_key" UNIQUE (name);
 H   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_name_key";
       public            postgres    false    304            �           2606    25115    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public            postgres    false    304            �           2606    25117    Skills Skills_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Skills"
    ADD CONSTRAINT "Skills_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Skills" DROP CONSTRAINT "Skills_pkey";
       public            postgres    false    306            �           2606    25119    StaffRemarks StaffRemarks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT "StaffRemarks_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."StaffRemarks" DROP CONSTRAINT "StaffRemarks_pkey";
       public            postgres    false    308            �           2606    25121    Staffs Staffs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_pkey";
       public            postgres    false    310            �           2606    25123    States States_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_pkey";
       public            postgres    false    312            �           2606    25125    Streams Streams_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Streams"
    ADD CONSTRAINT "Streams_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Streams" DROP CONSTRAINT "Streams_pkey";
       public            postgres    false    314            �           2606    25127 4   StudentAdditionalSkills StudentAdditionalSkills_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."StudentAdditionalSkills"
    ADD CONSTRAINT "StudentAdditionalSkills_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."StudentAdditionalSkills" DROP CONSTRAINT "StudentAdditionalSkills_pkey";
       public            postgres    false    316            �           2606    25129 *   StudentEnrollments StudentEnrollments_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_pkey";
       public            postgres    false    318            �           2606    25131 &   StudentGuardians StudentGuardians_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_pkey";
       public            postgres    false    320            �           2606    25133    StudentMarks StudentMarks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."StudentMarks"
    ADD CONSTRAINT "StudentMarks_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."StudentMarks" DROP CONSTRAINT "StudentMarks_pkey";
       public            postgres    false    322            �           2606    25135 "   StudentRemarks StudentRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT "StudentRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."StudentRemarks" DROP CONSTRAINT "StudentRemarks_pkey";
       public            postgres    false    324            �           2606    25137 "   StudentResults StudentResults_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."StudentResults"
    ADD CONSTRAINT "StudentResults_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."StudentResults" DROP CONSTRAINT "StudentResults_pkey";
       public            postgres    false    326            �           2606    25139     StudentSkills StudentSkills_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_pkey";
       public            postgres    false    328            �           2606    25141    Subjects Subjects_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Subjects"
    ADD CONSTRAINT "Subjects_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Subjects" DROP CONSTRAINT "Subjects_pkey";
       public            postgres    false    330            �           2606    25143    UserContacts UserContacts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_pkey";
       public            postgres    false    332            �           2606    25145 &   UserDesignations UserDesignations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_pkey";
       public            postgres    false    334            �           2606    25147    UserDocs UserDocs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."UserDocs"
    ADD CONSTRAINT "UserDocs_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."UserDocs" DROP CONSTRAINT "UserDocs_pkey";
       public            postgres    false    336            �           2606    25149     UserMenuItems UserMenuItems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserMenuItems"
    ADD CONSTRAINT "UserMenuItems_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."UserMenuItems" DROP CONSTRAINT "UserMenuItems_pkey";
       public            postgres    false    338            �           2606    25151 $   UserPermissions UserPermissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."UserPermissions"
    ADD CONSTRAINT "UserPermissions_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."UserPermissions" DROP CONSTRAINT "UserPermissions_pkey";
       public            postgres    false    340            �           2606    25153 2   UserPersonalDetails UserPersonalDetails_aadhar_key 
   CONSTRAINT     s   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_aadhar_key" UNIQUE (aadhar);
 `   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_aadhar_key";
       public            postgres    false    342            �           2606    25155 1   UserPersonalDetails UserPersonalDetails_email_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_email_key" UNIQUE (email);
 _   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_email_key";
       public            postgres    false    342            �           2606    25157 1   UserPersonalDetails UserPersonalDetails_phone_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_phone_key" UNIQUE (phone);
 _   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_phone_key";
       public            postgres    false    342            �           2606    25159 ,   UserPersonalDetails UserPersonalDetails_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_pkey";
       public            postgres    false    342            �           2606    25161 *   UserQualifications UserQualifications_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserQualifications"
    ADD CONSTRAINT "UserQualifications_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."UserQualifications" DROP CONSTRAINT "UserQualifications_pkey";
       public            postgres    false    344            �           2606    25163    UserRoles UserRoles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_pkey";
       public            postgres    false    346            �           2606    42171    Users_new Users2_email_key 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_email_key" UNIQUE (email);
 H   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_email_key";
       public            postgres    false    367                       2606    42173    Users_new Users2_phone_key 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_phone_key" UNIQUE (phone);
 H   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_phone_key";
       public            postgres    false    367                       2606    42169    Users_new Users2_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_pkey" PRIMARY KEY (id);
 C   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_pkey";
       public            postgres    false    367                       2606    42175    Users_new Users2_uid_key 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_uid_key" UNIQUE (uid);
 F   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_uid_key";
       public            postgres    false    367                       2606    42177    Users_new Users2_username_key 
   CONSTRAINT     `   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_username_key" UNIQUE (username);
 K   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_username_key";
       public            postgres    false    367            �           2606    25165    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    348            �           2606    25167    Users Users_phone_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_phone_key" UNIQUE (phone);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_phone_key";
       public            postgres    false    348            �           2606    25169    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    348            �           2606    25171    Users Users_uid_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_uid_key" UNIQUE (uid);
 A   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_uid_key";
       public            postgres    false    348            �           2606    25173    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    348            �           2606    25175     StaffRemarks entity_user_section 
   CONSTRAINT     p   ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT entity_user_section UNIQUE (entity_user_id, section);
 L   ALTER TABLE ONLY public."StaffRemarks" DROP CONSTRAINT entity_user_section;
       public            postgres    false    308    308            w           2606    42256 )   InstituteProgrammes insitute_programme_id 
   CONSTRAINT     |   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT insitute_programme_id UNIQUE (institute_id, programme_id);
 U   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT insitute_programme_id;
       public            postgres    false    263    263            �           2606    25177    religions religions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.religions
    ADD CONSTRAINT religions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.religions DROP CONSTRAINT religions_pkey;
       public            postgres    false    351            �           2606    25179 '   StudentRemarks student_enrol_section_id 
   CONSTRAINT     ~   ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT student_enrol_section_id UNIQUE (student_enrollment_id, section);
 S   ALTER TABLE ONLY public."StudentRemarks" DROP CONSTRAINT student_enrol_section_id;
       public            postgres    false    324    324            �           2606    25181    OTPs unique_keys 
   CONSTRAINT     Z   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT unique_keys UNIQUE (otp_type, details);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT unique_keys;
       public            postgres    false    277    277            �           2606    25183 #   StudentGuardians uniquetypeGuardian 
   CONSTRAINT     w   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "uniquetypeGuardian" UNIQUE (guardian_type_id, user_id);
 Q   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "uniquetypeGuardian";
       public            postgres    false    320    320            �           2606    33762    AcademicYears value 
   CONSTRAINT     Q   ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT value UNIQUE (value);
 ?   ALTER TABLE ONLY public."AcademicYears" DROP CONSTRAINT value;
       public            postgres    false    360            '           2606    42052 1   Boarduniversities Boarduniversities_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_state_id_fkey";
       public          postgres    false    5301    312    365                       2606    25189 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    5245    223    267            	           2606    25199 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    5223    249    251            
           2606    25204 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    251    5351    348            !           2606    33708 9   InstituteProgrammeSubjects FeeStuctures_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_institute_id_fkey";
       public          postgres    false    269    358    5247            "           2606    33703 9   InstituteProgrammeSubjects FeeStuctures_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_programme_id_fkey";
       public          postgres    false    5275    358    293            #           2606    33713 7   InstituteProgrammeSubjects FeeStuctures_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_subject_id_fkey";
       public          postgres    false    5323    358    330            $           2606    33718 7   InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_userdoc_id_fkey";
       public          postgres    false    358    5329    336                       2606    25209 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    269    5247    263                       2606    25214 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    263    5275    293                       2606    25219 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    265    5299    310                       2606    25224 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    5247    269    265                       2606    25229 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    5245    265    267                       2606    25234 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    5281    297    265                       2606    25254 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    5245    267    269            %           2606    33751 5   ProgrammeSubjects ProgrammeSubjects_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_programme_id_fkey";
       public          postgres    false    293    361    5275            &           2606    33756 3   ProgrammeSubjects ProgrammeSubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_subject_id_fkey";
       public          postgres    false    361    5323    330                       2606    25264 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    302    297    5281                       2606    25269 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    5291    302    304                       2606    25274 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    247    310    5221                       2606    25279    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    5351    310    348                       2606    25294 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    318    5351    348                       2606    25299 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    320    5233    259                       2606    33723 .   StudentGuardians StudentGuardians_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;
 \   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_user_id_fkey";
       public          postgres    false    5351    348    320                       2606    25309 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    5293    306    328                       2606    25334 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    348    5351    332                       2606    25339 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    5209    237    334                       2606    25344 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    334    348    5351                       2606    25349 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    342    5351    348                       2606    25354     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    346    297    5281                        2606    25359     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    348    346    5351                       2606    42039    States fk_country    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES public."Countries"(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public."States" DROP CONSTRAINT fk_country;
       public          postgres    false    229    312    5201            H   d   x�}�A
�0D�us
��2�6jrמ��cEp��f��D�ô�[[ƒ���8|�E��zJ<%}H ��/�U�]������:P�MA���>��ED��*Q      �   s   x�3�(��JM.�4��,�4202�50�56P04�24�20�3�60�26�'�e��W�Z�W��Y�ihI�IƜΩE%�i�ɉ%��y�@��f��XPP��W���
v��1���qqq DB"      �   �   x�}�1�0���>{Uˎ�$��^���ĈX�������{F��}�%M>k̮'��[���4���ʉV�$�����ӆ��f��#gZ��*�ᐱr�:�Ij��#� ��X��+���,�k��P���|ܮ�#&B�,�+_�����l�      M     x��W�nA<��b� p��O۷��!���!$.�މw��L4;K����Oɟ�%�}�u".�䛭.WwWU��+��)Wk��ZW��A��0��R
)GQ<��� �4}$�(��z�a�z�b���hV5�,0;}o��G��_P�X ��	V��:��+�R��@����V�aaɤ,i�̔�t�0d�����n�Q���k���Ei��r2`th�U�6V��j�[؟���A�4 y�`�~b*��-mBsu��@/�j�������̕�	��eW�c���KA{ݬsM@<�������hos`�TW�s���O�����Z�Q��|�u^�(�-H�F��v7�!��&n�a�DW�Ma�rӘ���-\�j�ݭ6-
<�����(e�
M)���]e��*��3
Rs����j���k �����(�"�1�0����i\�6�*�	\�7��ʹA)��vጧpg��J���c��q&"�Y"�� 0�wxx�-O	7�Q��R��Y��y�xj$a�ز �N¬1��~���h��5u�l�4���S�t޸%��i�	�o�[��k�N��.�:���(��q�(��t٪� zY�IK@L��:ͻ��7L2汾��'�6��P�b��������������kO8<k0U�r�cf7,)�$ө�g`&
��O��qĸ۳�_V\bSY�L�M����|�7S��;4J;�c��hi/|I0Ā鑟��ul�D�����z�y�Ԡ��Y�e�b<?y�&��P�h�i�<�M��Q���H�*v      �   m   x�}Ρ�0EQ=�x��u�ih%$$�#+6��YK�E���:�����O��B}�ةo\�Hْ�ַ���^YiƇ�ESٸU��		j5�Z9в� ��ŵ�&����6&      �   �  x�}��n�0Ek�Wl���Po�i�ƀ� �f6�Q��Z�Ԃ�����C��|���'G��(���uT�1ȗ�#�}
���/O�,�T��җm)��y�~O/��IO�앒�j)���3=���s4=��ݟ��N:��j�T-�x��a�vv������bȶ�G�����B�ļ���4�0��72�w��뼜vt�}J�ҵko�]��/-[K���wm�>�X��j{���di��5�|"���0n�����T,]KS{�][-���\K���Q��"�vg�<}X.{�zM�/�R����j�"j�Z
��y훈|��2���Q5D�.ʦ��@�Ni_��꒹��I�{���U�'S�P u7�e��#��@�}��-��x.fM-�ne�1��¦@�}y:.�ˊ�Ӗ����h���	�(jK���?���      �   0  x��X[O�~6��O�e!ĉ��"���0+��hAZ�4�ʝ�C��B���T9}'L��&�T��WU�B��\ҫ�7��Iir�<59�w	�ߤ�uV���t}�TO�@�ß8
�|�{?��<�����tRS�9��z���1�2�/q]'�/�H��)�N����J���U��m�X��F�K���>����D���O��lS�E�/[�7���0� !��� D1!
QLb	�<�� aQ"��Xx�ţ�M��0�ၷE��R�d�K[���Ԥ���K��j��~����]����L\|��<�'1 	!�U���䥚D�1�1`~�FN��{��R/LD�LĨ"��Eă$�ɭnUڛV���9��y�Zz���΀˷�n��z�׃.3���ּ�VW���w��>�6�
нLAc�M/�H����^�����~�'^4��jd�W��/ΛK�z|���;���Id��̐�R?���1�N����`�~U����w���P+���!Fq��q@����ش�t� �71��X@Ox�x���^�I�@��*��T�f�z�����;�TwT�R
�u���jZ��?uNeWv&գ� ��2M�N�P=F������t�Ĵ��үp�����\���w�J�\��̞ i�r��h�T5SmG�B������6��uF�����ʴ��Em���L�%ܗQ�Ԅ�Ҍn��Z)�%7&S�׽�#S��]����Q캱�l�&���
�
�)��9���vLj���E~�GB*�����@�H����������c(1i�t�`,s���|��[��©�6nvI��:��Da
Eql��QM3mqt�	�l��;*cZ��aڑv�h_�Jfct`M	I��7`�C2�K��$V�*������6�IU9k�>>�f�e�V����9���oM��G�$5Z��K���퍺�t�_��c���(`_�V�U��1�W��>��E��*��5$˖�>��Qm�)IU�c���3��'�m���������@�����>��C��V�4�s�SD�q�M#Xv���{	��8�-?���<F�<�\�yC̼_ WY�٦s����;`:�c�+����;v6�ʻ�ݢ�\��j�%
�֝ͻ^W
��ϪC��5��0J�@;�dk��;h�����Q��{�	5�at�h�˶s藱tff�:�G3	�k�
&ϱ���{{����'}��S�
ZKv̟@}"�I���C�NJw=�T�O9���_��ճX}�c�S��Zi{?�5a��6����w���ǋ������B_^@�:��3��|u���X[+�j{ɮ�u� �7�A�/x��Gb~o�szmd���Qh�+���e�#a4v9;VH>�N�~�0q�_��{��ˋR_^� 5LC
�:SKER��ACgh/�:V�s77m�] �����j��/��Գ����Ԣ꿕ՀUU��㗒��|>�4��9Tr��_W��[��{U0l�ڱjU�8pᄥ���%4���I�dU���& L�W5��2��Jc���o_`"��Y�\J1.2��/O��M�[d�</|�'���4H8��T.�����A|���|�̔G����6=��g.Crpn�~l��R�y��c)�����2������(��U����}��OwE�9t� ~�h2�0�t�-��̅�Mlȇ�M ��f)�$�>hw��q����`�D���M��K�:V��0�����4��VJ����ߟ��J��c�+�h�6������7tՓ�X?9�L�#��|��J��%"����� -�y6���S8v��f�����͇���}ܺ�JA�y��~���Q��;�}ńM�s9Y����ނ�!�MBl>  �,s���z'�
5&̆�	����>�Jw�.ӷ��3	K��}a�rے\U�B- �v��|�3$0�u��C������@����z8U�$-"1���'���gi-�hcr]H�\�;0��E�>�-wa3��jp$�j�!��mi�i�1�3O ]�_����G�=�q"D���3�`� ��~8'''�q(�      B      x������ � �      �   C   x�3�LLNLI��L��LM,�4202�&�%������������������������~Y�=... ��      K   }  x��ֱn�0��x���!@����Q%���VJv�`�>}��@��>a��I:�非H���d&�TdiV�����6��R��xɊ���=�(j�3@0���}�q�����m�_�����N���x�labM�l�~�0Sd�Z�X���{kp��Z6|p��3�Z��i^��qf�4wqb��5~���y`��В�!$b���M)����2�O�M)�ua���=��L�0,�E�y��8�Ft�n��a�&��ٴ���'��Kz������5��5k:�E��p��n~>?0S�O%c<�IR��ڰGVG�t�EC�"��t�`��D؏,���;2�U�eX���v�@2�"�����g���2��I��_��      �   s	  x���]o�8�k�W�r�)�o�wI�i3I:�&-����6�f#�.%���9�PJ�,��
�t���C�����w{��aԽU�J�dE�d��h^�٫2oVE��U�:[����(U��\�A��G%w��X��(W���yb��G%w�E�L�QI���&�~_h������c���*u�w���2k&�)�X	V5�|F�[�h}��9�,n��OƯ������FI�.�^wz��bI�3N{m1U�-�oN�~��� z�H/�m�u��`LڣT��~������NJ�	[sҞJ%�ن�=�W�d���O��T��Mԅk�(�g��un�I��wƟ��=�F�@�H���b)(�85����R�J�O���_(�0ţ�zcA.S�R0N�N���#��q�t'�_��@��k�5g�~j�`q�u��.�l���`�3�wk������p�x�0��`b���5h�$�����I���߽�P�~4�i������(���^o1�~�����u�-9	�X�<�ԥk]�Fu���֔�M�b�B��l>���uƃ�I?ٶ5�kn��3���?RG�G�&
M��j�`�Ka9�A(A$RD>PS3������d6{pt3�zc�N�G��������W�vӈy�,7q�޸�f!���`$��3ئ���F]�a�,�(��c�X���D�;[��E��vχ�$j����^�O�:/뙺�6鑯���N4�c��_T*+WWގUB��-��0:���l�[R�Hc`����#Ͳ��RW�޺��3F���/�+��1�P�oi�R{�JJR��`�3�x��]&�-M�1�R�x�(SJ�&3��2So��;,rsJ�N�� ���,��=j	+�ԵTo�1�N��cTV��-!�%���[�L�A��/ٍ��h[-ɳ;z�,`�:{)�Bnz���8�T��4'�뚩w��N��:c�������\��ƅ����;[�GU��{���u�Ш*N�s�Fv��=h��!1N~C��lTsx�<?)�D]^�>_�����u��,q�֙�Uw���-rsJ@�_$c�B����
%�P�}ҏ{�+��Eu�nL��i\������ޮ5h��>[��n�-��?��Ώ�G"���Q�Z
��%/� �^
H���=a����>jRu3附Q��Q���g�{>�z�pQ��[�p#H��MA���'P���֬uZ ��ESQzp���XQS�[�����-j��ӠaB$~��I�ُ�Fz���H��d��o�~��Sy��Ru;�a������pR�L�Ѳc��������‸g�s�1�t��M
�<��l�tɹ�}2��#`��8k�`֜a�0�ȑ�J�a��6�xf�j��J!	�'oGX�|��,L2�-h�~��N՝��n@#+S�R(ڍ�E�s�S4�vKOs�A,�)]�Q�A�����}���Ρa-W���f�a�e��y��5
[Ro�Mw��8j!�-��)e��ف��$��D�םEmG�W8���1�D"�����1�W���\N�qo<n@}3��=�����ѰU���R����n��E�֮(K�̇q���A�x>囤ͼ�������y��L�,�����	g��D�ց�ZQ��R�A?�~/��Z��H�9�{�an[���VP�0���7��(UүA�>�`bW�����oV�{��Á܀��g{Gx�>8��Gob&9'�8�@���M�H��/=��"��T}tlF=[t��L}�Լ4P��������B�kۏ��A�ξ7O��ؔ� �6\J9�y;m@���T��m�1�7_�'��m*�f>�YS��C]I�6����I3e����5	���.~p��&�@����dy��:�������^�f���{^K�Ɲ�
͓Q���+7FN������D�فx�hk���"��@��`����yT�&:�oK�GT�Fn-I�P�Ba�gX]�����E�?v�/��El2�	盁/Z��I�ο�O�7r?x�%���qIr�)))Z��ou�j�E�V�Xŵ�����h,�(:gLl
Σ�P��
�L�y��)��A�h<,)8�QK[�����z���s����}��E�p���O�	�qcd�a�-��1Fj��3�a(<ӫ�2���$q��"�n�V�Qn�Q5��y��+�0��Ҙ-�k��G�Y.3%!^5�毆q�;�QRs�I���x���D}���]�b6U���[� ���i�>�v4[�k�W��z�3F�Y�K!74q�:�g��ֈ{J],����yg�H]�O~��͖ȕ�tZ��-�����I���{{6sD7D��ǥ1M2�Q�P��ȧɀվh�'�7#�L@�y��1Ѥ�ߦMrD��i2�w���|�<ir��vk�>b��P�񋘟B0���u��NV��jU����T��WQ�	曓�      �   j   x�}̱
�0@�9�
wiI���]\]D��`���স���^m����m�f�vu��@H���(,�*��3ǒ���(��if[�|�Wx�A�T*��{�{����)      �      x������ � �      �   �   x�}ν
�0��9�U����'Q�M��n�nV��Z���RJ
���9���2�mݖQ���E��(I@����.�����]Û��I#� �>��a�2�
V�}��f�RJ\���r���uz�_���2� y1T�~JT�U�ԟK��R��A� EH��� �|�W      �   �   x�}�Ak!���+<����̸i�$�KJzȱI� �ZT�����la-x{��Q��Ju�ʏ�_Jʢ
�ĝ6j���3=�޲���7}vg��;�o<�$.�&K���׮��ƪ~5���r��S�Q/�-t��}v!�x-�����o���p��ܳb�-}Z���1DWӌŷ��K�VX��f=g *\�Zƴ§�+��lm      �   P   x�3���/*�Pp�O�47�,�4202�54�52V04�24�24�30��60�26�/�e��_��0s=c��!�r��qqq �} F      �     x���K��0 ���W��C���v|��M�P���=���J�ƏTV(����<�!k�b3#i$���q����'$��)��$����qr%J��Y�jݚ����2u%HB���9g4�x�.3Oѿ��nטJ9�wxa*���D%�L3J"F/�y��rY�V�����]�8�dJ_�%P��Nu�+pkf����׸��br7�	J_Ȧ_���)��C���� 
D	䳐�����2(Â>]݀��>�]ӷj<%a^�Wbȿ��c�N˭i�������O]�m6M��}�톍ٍ���A7��17 )<�V��F;���C�|�j��ښn=~���X��[��GML&,Ŕg�d�GR��EK��z�����3XN��eQ�8�5�#�諭�'�q�lmT��y��k����C\�q��6ھp��_�np?����s�;�J7��q�ѿ�cM�����}�`z�%a�[����e����P�Bz	�a_<�.�S���,�w�>��!d���m�,9����B���      �   G   x�3����,�4202�50�5�T04�2��24ӳ���60�26  k�e��Z��K=Cܦ��r��qqq ��      �   �   x�}�1�0F��>Ewd����i��� ��@b	R���I���/����I0��*���ؑ�Z��7l~䂟�����6���A��P�4�#������bň�/J)C*v3�����JE�J�|Lu�e���]	      �   o   x�3�H-�M�K�+�,�4202�50�52T04�25�26�335�60���rq:��%&�($%gcgne`�gbh��8TY.cN���ҢT<�Y��4I�+F��� ��3/      �   �   x�}б
�0��9��%�r�4mV]�\]���X�(��*Vh����N�}�K*�E��Y�n��L�H����k��Hl���c�1N�ljβ��t	9͡�k^ìS����`�1N�t�g�v�Mk=ZŎ~�J+vqSb.�H���;o�"��S��I�yO�      �   &	  x��Z[�,+�NV�����`��E��e��5a�TV&	�%�GKNE� [�[����-���������Þ��ћF��L ��#֝ir7������C�rCZ]�r�ԛLԟ��`�_z��Ց�j�'��
��G������6�~�����4D��hh���?$"{�����&8��foD�|u����/{����VG k�ᡬ����!��@#�������/֕�����V�[�Cj��yԣ��@c�~IP��=��;@ּ��V����i"���ڢx�n�/��QPi���	�)�
�7����S�*+E�V����{�����%�+���i��H#���S萐��y �]� XJ���\��(���B�(?�@�Xv*c���H�Jc�RQ�x�8x�����=�:|@��\� QPA2�"��!�.B�^kK��Ũʮ�&V�Lη��	ݣ��2�.�ޭ��Sz,mdu�*Z�(?�$h@3��Z]��mm�[<�U<ڋ܀fV��R�@�T��=H3���4�+R+�,��;��#��.ڢT;$U�x�H�C*��T��)���T� �auv�ZE*�)i�N�K#�cD�j�uH��X��3�#����5����eG�ˡ�[�Y�f7�Y �)h�K����i~�mu|E���SA��idu�ߐ	��G�k����ʽ/��['@�!TjI#�� �au�(Az��=�1���dR�ew����o��[#�1�B�?)���Y����[+�O[���oV�������2�����Չ�m��W}ZU����w���	�f��T���!Pguz��# tyД��N�n�r[a�G�GV'�6H9b�1�ݭN� ��	]�J-�auf��C�6�Г�#�0\z%�[N<Z���>��j�'U�hhu	�����)*=�N�kI���%0�w�}�L� ������]�S�Z���v�Hdhu	���i�v@HE�?�=��$ ҒK�@�-�L�:�Ki��!ɉT[�{#�����0lŬ1*OL25�1�������@�8����ft�c�K���J[G�F8��@e1zLq.F�1��x��h9��7I��rK��˘h_3�༚ ��$��:��ա���%�"���n"@�X)ҷH�uU�I�	�.�&�Ƿ}��V��%�-��҈ȷH w��<�kH��b;��2EJ&�[��_5��y����w2_�"R��k�%��&�[���D���[ ������H捻$ )	xN�E�$�x��n� �Vr��e��\5�ޅ	3nl3�̷nI�l�S�Lѽ5��׵�i��p�ݺ�0���r�U�9�@�f�*�U�q�U$��4�)~�r���s������P�Xo6�#��#U �LҷHz[�AE�@��9	�פ�F��@�n]寡���.(��`
D��1�yN���m���J��c�
�To�`Z������s#4����= ����y��Ȯ����׷EJv�x��[ER���u�@�ǐ�N����/�@��ڕ���t=��ҼĘ���
(0=6)���*�۬9^���t=�߾G����sј=��������\�BJ�vN8�Ζ�@un�|�f$�5R:S��a_�Ҵ�r��P�֋�@S6�W�:�R3m�ր��^5;�dv/�� >�]�Y�΃^�8�YI�Yh�k���c�d���^eoN��dz:���l?ͤp�\�쬳��/%��:���d����j'i�^�Y��G�#��4��ܿϓ��U�����˟D���ٜ��3���g����6��,�Zݲ�4�ك����T��p��>m��lΒ��ә�����ߧ9�ԧ�Q�<�����s������4]޲�t�s�YV_�d���9��3VEc�͊�,?�T\lլ�]��K_V\u)|/?8��en_:��5P��S���w�㡙h�.�^2��E����[��fV���y���|Y~��u�1m�V+�^��N�}Y~a�v$���t)���[F�����e�+����rтW���hY��*+��#�j���5kYp���l�gT��9�,+^�ne�P��s���]�UkU�P�<=[V �jgz�����#uz��}ʲ1���� ��@x��y}��@x��<�_V�zU͋�e	j�Ⱥ2Z+[�����[�e���vW?�[-[�nj�P��cD��y]^�_T�ǿź��ݞG���#��c��G}hfRJ&R���H@!1���Z�>��&R�{C��׿�:��Г���
����u����ݝs�U��      �   \   x�3�tvp�,�4202�50�54R04�21�26�3�4�6 ���rq�%��$��B�2�50�50Q04�2��20ӳ�0E�[�+F��� ��'      �      x������ � �      �   d   x�}̫�  �|�W��> 7>�f1[l�R�{�A�g;c^T���aJ�����;
I�_Q`([��.jl6/E�)ץ�f?����ձ8��սg��\�-�      �   J   x�3���/�H-�,�4202�50�54U04�25�21�
i�Z���2�tK��1ƜE)��y���� �,�      �      x������ � �      F   �  x���M�����*2�a�Z�EdYF��G�&]/�=G�6R����DR�s�6�.y���ퟭ����Ǟ���Wm����r�s��ٱ5�TE�ۘ�69��[S�J�*A���[.�IP�nk[�2{�Q�5[�5 붦�_�;a�u[ӹ��Y�nk���l�O;��R�����(�U3GAOuk�9��U �8L��rt�G���8��[S[�֭)��&,�nMyj�($�4�d-��4؁ap�|�d�5	
:Y��F"�C'sk�0����0�dnM�n2��E�q��t}#�A'sk*����̭I�K�(�E�&�/	�Ƽ��[S��߈��g#��tM�l&�gtY�&Iם����5U�~Ƃ.��T��!(�`nM���F�؀���$yZ��%�`6��Qݚ�!��j��vs�L�DѺ+)���.��$�FW#R!0K�55I��ȭ��ӿ�j�-ߘ�[�����[S�U
�S�/$M��l�*}����MR�V�����&{ʂIǭIR�WR�����)v�wܚz���%�f�F>~c|bׅ�Ҹ�3L��Э���SL�nM}���W`R�J�Ir����4v���k�u��D��:�Wau{�E����cL�nMCS�[,�t(�V��������l��4���bM�vg�t`��3�,�$�nMǮ��L��UXޮM���vk:�nI3q�UX�-)���vk:���̜��ل��t��S��3Z�V�Ě�'�0�nM�iuI'K��i	�UV�]Ce��p��Y���:������Z����*Kž���]bj��p�w�w����REX�T�ox�Y�W�,�(��;�*�ܷ��P�	k:�n#߂Y��=u�ee~�y���YݚNu���2K�μ%ð��J}�a�,+��°����������`�˻�>����rtX��YY6\�m�氫�괂h(�Uh�ipFWi�i��pZ4���1�~8k�>k:��}֩n&���KwZt*ᭃ�
,�0�������-"�D4���8�����kA�b}�6�i���}m@,5r_��4���i:�"Mv�7F�7�s���J�yh�V��`&�%G�s)�n�SX(�8�ץ���8]�u�
�@�|���jp�8��h�U��z0���Ҧ>�8��^�u�:d�/E��>b^�Y(�Y��*f��\��5�@q�L���W���?���v��|��Jd����PT-ӆ�<��lT"U_2�S��Jd��kV�e��	E|�٨D6j�&L8n�4��	c���y,`�F%�Q�m;��UZs�+�֝�̔%2�l�n��˴�i(`�F���,��Y��Pn�WwÚr�X'Gb��LY#S
D/71���JdуR)(O��4�'HMWx�8�Bk7��2�;E��V�Y�Bh�
����*4������mqc9�oh��c�u�u�4�ViC�FS�s�ZvU';rX��@1�l��l�T	_�X�����Zgu� ���a����D4��H�g��Y�f��t�uZ�����T��?Q���s����)�2/ì GCU�2�j`�]�5LF���#(���N�v�5e6��^z�ÎX^���`pYtzN���e��-��a4QR�����;Vi�2�F���%�AW[eY�H�U�P�����0+��C!L�0��#�A��e���l�¬b0X=";7lQY�ek��E+�<a4XV��|֛v��^��_�HM���7���{�B5>zN�����A�m���wZ-t�~��>��Ӳ-Kj��yj��v)B;Qo���#
�u�Mi0D��n�����vj���q�mK@.[����@h��J��#�����S�˭��1�J�L6p���t��1�k/Ӯtm�[�q�����A%����֝��F+�",k\yT��G��,�M/���:����Z��
�i�7�*,�z����}�*�8��qW���6���Uh��,2`6���y��.�	Ú�u���u�o,T�<1�B+>p�`�Ua���V��j����|:�_�|�� �-�l��*��.�Ў�T(/�Ц��$�(/��l�@i0JCX�~�`�e�a��6b��*�wEe�'m]C�\X�V7*k�P�V����4T�N+կ�B|�����#��+�Ў�'`օb��
�����P�V�ى2��@�U��z�����\��CՕ����.��8��'��p�fk��w2��U�mTߝ���p�ͪ$á����*��1�,�Sa�+��`D��4�E	��C�RXfG���:T)�5�n��/
u�-
�Ю��`t���H�:�
u�
�Ъ^-|���j!���
�QO��+Fñ� ���a��g��KB��Uh�ɖ2��r@AOXg�O�G˴�-�� ���}A݊P=V���S)�*�O(y	�Ь1H~�h�fw���р�-d/���|)
Ұ
�~c�4& �b4�;��CF�hXvkr�:{!O+d���b���/�����9�����Uh���^�����DE��*���с��/N�Uh�I|��~�f�Z�֙�G���j_��:�����_�B�L�c��V��L���ܙ�Ǟ��_�B�{OB�¤{�cb�j���3�W��\ �B�p��!8O/jR	̷hT�-��|�vR	�>]$<��o����,*~��a6zx'�|�F�*�����UhT�b��l�t�Nϻ*zG�*����5՝*V�y�*�!X�Ь����?G�����an��`%/�UZc
�o���2�|Nd� f�hW�}0�ɷh�����K��Ldb�è��g9�G��=k�h~ּ3�ɷh��L�y����Zs��P�
�\��>��]���
�i�w�A����G�����_��9F=������P�RǾ�K��K=.jy�:/j~���ϔ�� ҽ��      �   �  x���]�])���*�>J�z-��ٿ�&�o�JH��Ѽ��'����&�)?�?�_�?�������?���s����pU�S�_!���B~S���ӄ<��T�����0Ɨ(�p%SƗ*=2�J_�c�q4��ReC�
�R�VT�lhx�*�8χ�����<#��gam����Ri��*jv
�lG�)WB��5��U�Y�*ڝB�n�����3��Sc�L��95e���#�X7룊9�Q�B�Q� ��)uJ釒S-�B�����Sp��Xb(5�ԝ�訒[��(\�NS騒miM��J�6B�9pT��)xqi�z�h9�"�0�4�*��F�V:�3!�1�?h��*%��H�MǣJ)��Ѡ��R�A��4��*�%�[�sG+|���&�Q��Y?��0<�����71+�ۀ���Q�ng���)0�.T��8]R�<zH��bBV7��p�L:���8�I�b�B��I�bG�=&ͣ�J5�e+K�R�f �xK1�e�B��b;��u�YtT�ʛ|��Rl�N�ғ�ܳu�x��$��T��X�d��ζO��1�1pN���;�K��,jG�+�l�KJ���C�e�7�y�C�B��ҳS�X.)�)dy�KU�m]�ˎ71�1ԋ��Q�w�0�`.)�y���Q�[�;��Q�ۄ�P�9���1d�yJ������Ò�����3�xW��!
yc{�!���4��	=�B�a���&���:T�)y�5Ƃ\��0,�C���Q�{����o@�ס���d��|�_�����j3ő���>�K��:T�V���A�Q�L�h#��ט�����O'���/K�;��v��!A��o��Ǎ�`�AU�z&M�����UCs�̃��R=���P��}TYmc�A�b����K3������a'����@+�Ř�%���f��V�JxT^c4Y��}暓��c�]i��<-Ye_PU��&x�+��o4�k���̙:E���g9��k�V��)��J���9es`be��9�c�����]Ύ{���i��8݃U������P<��9ޙ,E���x�c�'�����v��84��!�2�9$/n9{Rd<�7�M]��h��Ӵ���ʌ3�P�(�V��>Їj�������6|q^��/�߀Y����eJ4�?�o��K�˴�!T����;��N	߱R��}|˩�)x}�_D[��01�����;�u�W�����WȧC�`*M�I^��G�S�����&��ӣ���5����7���:F������S���O�{���+,tž���i�.�9VV|�p��҂´�F_=5���o�[�m��FC���u�����������&4�p��Z|ZI���-�
er^UZ�Ԩs,���W�����_R�S\�����'+�;Ǭ���"��*TQ���5G�W�yQl���4���]Nq�Ģb����/>j�=�N��|�]s�Ltڲ�qvO �u�9�7�P�j�_}דd^��_���3u�h�ӱ?�p�|����O�C�����|�yͩ{<0/h�#�Ì��չ�t�M���n�P�3��q�^s�s�^��{x�ا�˴}2T��8��2��h��i5��㚳�\ɼx�#���-�:�lj���9��5��u��=�:w��>f:�L�:F����m@��������CW9y��7�9zI�j��w*��8�9dN���ƾ�F�<ц���A����`F;zC5�p[&Ѻ�L�`�����g�/lx�]r���n̡�m��Q�6��~�����+�j�ݿ�a�_s��j�'�5g?�vX����P��_V;^�[�~Z��*��P�j���ڡ7_s���<��m�Y����É�X�a�J�YzI�%�;�;T�7W⩴#;T���ל朁�C�0����a�k�H����>�P�3���떳6����϶��4�Ǩ/π�J��C5�~EK>�C��S������˯��r�Ĵ��o'���t<�h����g��D�kn����?D�Y�d�      �      x������ � �      �   �   x���1�0����Wt���%giV'����B4�֡�^�
������&���5�R��� vB�j�R��8�Wd���Ѧ���!ư�I�q�[W4�dvL��滢���>�����n�dgDQ%9p]Q�C��r,+Sٜ�������k��__�*D||�_o      �      x��}�r#9��:�+�ʪ��h|��Ȁ����Re���X�$2���Ѭ�f{������I�8�@��A��2ˮ�J��C<���ݻ�/�/������bɾ*���Ҩ5ZW��U����_��_Z�j�Ӽn4�����Y���������d�9\�U��B�HD�M�6
��;G�h4Q��K��������?e�AߦNPB�{�bϢ����?��2��/�L�����HF� �8�#�0`�0[��|�7��ys4��_�0�C�أ��ag�� �[ �Z}���ԷaQ"*oO�� 9� ��
ad�{4�1��x�Idcd�^B���>t9v`���q4@hBh��7���������7w���Y�]T�������}86!���zC�`�!�F��Ώ� ��C]�"b���էUuB!'� 8�o�GAyZv���(mR���ka�4pu�7t(({�ըQ��"�8�,q��b������������}xڅx�2�?I�����W�xry@\�Z��
���r4��r�������%9I�IGBҪ�Y���
��:��{4�-���_��U�U���h�'$�\��[�n!����Y�X<�v��S5���nŻ��q��P��?V�oװ���
w�K�Í��� f�(֡h�7Evb�=?�����S:?�zN�Hg��E
����z��z�nMB��C���F��[��+�[��^�\���}��ſ�Ľ�.-�o�+�{� �]��K��'�E��ħ`�g7_S�2���(��Q�}O5��!�ؿ4�F�PI {� �N}*�(����7�Q+tU�H�"ޱ���Cۨ*Q���C�ˣ(ԥ�AG����g3#+S�`�G"X�boC�
�.`�C	���N0��/��X�1ҀZl�Ĺ�2�V��8Ė�|x�axL T��C��V~��,R�X;�8��E��<�b%����hdǁeS���ܷ�@���L\��U/��Xw2��yCʠ^��쌨G��]N��8c���S�o���u�/��qi�z:��Ͳ	pV.�X)�
�)�A�]F�*>1�z��F�ҽ��B{q�ڴ��F��O�;WN���#Zs�c���Nf+dO��Q��<�� �)|�2}�4�BmYA߁����&'�Jǃ)T�d�8m��j<G������ΩRȴj�e(����F�g�S͙�b�ɲ�C?����d�zqL�bu�ްcأf�fE^�c7������W�yj`}>Q�̫fOƿ�d|�_����.�Ɂ)��j�P[��H��s�/O���>���f��q���
��J�����E��q��8¥�+��3O�����j�Z�&h�����`���B��Z�Lg�����d�0Y�|���gѴ��&ϳ����-CiM�ӧ��e�2��t�8�O5qЦt<y[1|Ӈ�b�ڀ��Q�:2$�>��(2�xo������Н�����UT��OKV�k��}���S������d�0A_y����Cup:��Md`x�Zf�_p����5]��.�7{Kg�)��E�;rQ��R�0�,'����Y� ��n�*J���,8����ˇ�=�O����e�^L̀�. CfO��d��Ξ*7�j�xL��.���F��zaD�8���W3X�5v�[b����q�6��^�ϋ)<OV���?�L�S���V�fQEշW��w�"n1�p?������t��׏�t5��!�.���<<O�H�;���@VX�Y�ϩ!�8�+4�!8��p���DhyC@���������A��t�>�>&�[0��4W.�~�����y>hmĝ<N$$�0��������z�c��M���Ƿ�%}KA뾳���)O�!��60+���k_d�
�1o���7Wq�7/n�*�o�����=n��2�]�{�4�Ehs?��=y�5���� �U������v��_k�	���t��p��c�W�Ƭ�o忆��\\<{ڏ �� ��^��0	s�-�{��o�z��'s��|s5�9�%H��
vt
p<CA
�x����{n7����Xo�X��]í�E��Z�y ������呁c�j%)�$a�a��� [Ľg9֟B9��G�B>L��Li�&��Y����"�[;}��Ǵ��t�<�FQ<���YNWo,���}m*��������ske7ę�?�9���M����nr���Ϣ_�������!<�HxSx��#�sY%�_V���\X�+c��ōŸJX�3H�	7��-����NA�����UE7싧��b0����c�nn�Ux��˞��3�h5���T�t���O����^��-����7��?x�x��4���"�۽���܇�2�|ɒ>���nUB���1�G��f�X�J�{��, Z�Pv����|1M_2.Ҧ4�����\mY6�6 Vc�����ԓ	�/�gx�g �-_����<|�Φ�/����Gh���0}�!2���+���L'p�Y�}�/�w�u0�'Cҷ���8�v�)/8�t���Xv=��Dӈ�C̜�U��N�/]2]� ��5��is����r�����4�bh׷���,��� |_/S���-Q����b�U�҇���&���i�O��A�@�O��6�F�)(����7:&a�U�><�=���mN��|={�^z��}���J�\��+7PIխ�)#:�=���
O3���!p��d�YnPluEv��_~���;���,~�I5���I���Hg�`|������V'�"BC?����z8�шul�H�3��ZF���V�
�O���?s��l+�Ȱg��s;�>�<�W�lg7U˜�i�@Y��^M_�h����������5�W\i�4h�JC���4�{�&�f��,���C��/��0��#6��8W��},�I��4�#߀���1vf��3���[k� �.�w���p�	�h7����?-��φയ��d�e�}{;5�=�B�M��?�3�}�0�����o�b���Vٻ7Z��]�7²!t"b���
�#��r�^:e���C�b��"�h����[C:���Y7�rR_�p����tk)��9�Pv���˷��i�ZlX����'��1_�:_�7�s�U�a������MG��=����_QBC������c����������G8�C�A�v���YC�D`v�0�,JU��v�^�z|Sp�������6�e��k�g'|8���sP"h^#Հ�PQ�'��췈�ʣ�#�kP��pqF���q�D��۪Ev\B-l��;���׫IU����|��L��Nݼ�K,�FQp}�P��b�&"���h�����������:�,��! ]݀.�fW	����1�����=��AV���{<
|0vFq�	.!�7�BSy�������(�'�(��./4�P�F �Ư�BG�e�͍��� �jM-1�"�};vu��|��΁����.���pcڏ�{�'����� ���-	��ᵩ�:�zVo#�1C�����A������<�/fx"���n�����f��,͸�*�<:^M~h�E)�$zbr�,	�&i贮0�At�?0Ϣ��x��0:A��Cæ(Ho�MDp{A�d�=|��<�N���_Չ�'#�$x<ƀ4�:̘1�e:�g|
�t��<��VƑe
��H��xX4��а`�.�����k� ���dS���a���q2���C�8y}���Q����9��~d� 5�3��x��fdC۶0��Ep-im6#�F��ih�ˋ�O��ܖ�f�b����䤖f�@z�=f�-EW��GU��+��ƿ�zg��U��S߇��T@4�mA�2訙/
F�=_�(, �|�Ц��H{@[�P#{*��&�����S���B�*��T�;-���^9���ӄ�l?pc����J���d|��%�<�� �    �A���2=>{w*�vM���U�yK
(���f vNm)ո�r�ip��=�N��00�-�G����KBwfYi��z����MO36 ��]��ԡ>ʢUٵ���O�1�nY�����fl�Y� �Ɠ,ʐ��@�G��+�woy���(�E���0�N�x�I{��C�Q�yw�ѭO��0�ڕ��Y/ъ��?�S�����A�^b���K�R_ؘ����=z�rG?����+����=��r'O�ʽx�r/��%t��K\��g������An����z9Ca�8��L��Y-�����j��h�j�p�����g�q2G$�q~bG$l���gy��������� F�q���6a=?B��TK�SwR�j�<�<C�tO��g�a>,��$
 �rh9�8��,x�ܒ0��p8JSLmt�QN�6*�G~@~F	��/��� 
�{�S;��� ������w�W��>[a��Ֆ�qǀ��XB?FC��h�ʫ����P�uʳ�Gp��)���ʅ�a� Y�h*8�9�{D]�5�AC8:n���@��P���4��q����d�?�xJ$�]?�7��!��kQ�mud܆��Gt���(H�
�!�XG�YA|�?-=����m8�zy��v�y���Da(�Օ��;�Ǭ�ȺG9���i��� ��	�  ��{ cF�4���E��L����	ؒ���n�=�0��Fq�(Ș�c��������D1���%�gV��1s����
��Z���ك<�����1�~�� \тO��Vfe��l�9�lT�F<����;ѽ�,
e�^a6�	���j��I��[bP�}.>y����Z5^J*)�nJ��sva�TC6�gqh�Q��|��/��,,%��kd��Cat�)����Í���\YK����c��%`���`���X���sG�G$�E۝cF���S?��i��ҫ���a〙]
�x ��փ]rϳ�h/��;�q4BA��^�}PX6��`��r�C�m)��D��������ls�0��n��ے��l�7*8@t����s� �ZZybŞF��[��^���,��ɳ�N�XX��n���QƼ�>�
���Jx�u��@��lF�.���`���� +<@$zM0@��m������0�>!{I�qe.zEJ)�H�����S/4\TE���C�#�.�9���C�֔ xV@���{]^|W���E�Fxd���b_�����ߨo���:�'�����@n���u��
���k���.�����5��--7��V|�FZ����Y<���ĳ�8	��Q��<T[Z�͝�mN]�nK��vg{�ds+�!q�<�u�( ���e(�ĉ��\=}<
��F�o���l��U6�dTe�7�o��	2O����P
�J����8e��οC��-�vD�2���V��~~��9(W��PT@�`�\#���+��;���tQ �nR	�h��,L�O���
	m�5��z,εwX�?�O�zJP�������e�1,
g4�����{6\0Y2m]�Tp��cglV0O�ؾs����~���������'U,�D���Ҷx>�ő����=+�c��!>�є
~R%NV�q�0
#���o�n�ͫ��� @���]bU�Ť>^�ȏ߂�D,Vl�*,�o����Q�|�7����?������I�-s��"�y�v��Fڬ��fr�ƪ�6!:	�
خ�0��>�U9��(SY�\��z�«��2m]d-�BAx�#�q<kj�y����P��Bi�Qp�b��d��7&`}hK� Ȥ��A�A��q?f;5b��z�2辵}�/o$V�B��Xn��c:W{������qh��R�\>�q`���*���b�����wk�G'c�u��2Ɩ��2��B8ɖM�\jV?/2��Y�6֔ic�7G��ŝ����K#�^U�U%%�T�`8�(��K�^�H�|��8���5�㌝�4�Y ���9����YO8��0�r�MX�=��|����dbڦ	3��A|��u~^ w&��X����v�=��ɯY��eq �;��K5�!,]K������vMޖ�1l5���;+|4z��:9.��Y���a�e]�����1�א(Y	�@v:Æ8fC�>���r:�W�G%x��]�^Ϧ`�#��kP q�Wq�G*ZJdHØ-4jkJ��F���e��#zvK���k�&�Z%{	��
 �f?-�oc�"�'�R�V�OT.AZ�w��<�j��T�;I̷ry_�-�x_"HT�K"9�.��e~IĻ���J�{`�I�;N�2��-�B~���Z9�m���s_��%0��KC�-�?g����1qO�����6g��2�i}�ﰖ��'-b����"�|4�ٍE�����1Bm���A�;���Eɉuy*�[�hF��1���Fd|��"GM��i@#�t�NCH�t�<U��c�[�e��:�"�q�e8�x�Uf=��ai����
m���3 㬰X&�|'�٣���=��*pH�e�X��Q6O}&߇���z�FC�������8z�B��4������{|E�\��~�h������-\0D�D��A\V7�F�+�[X�}���m�]cY!ZQ8U�گZU�P��f����<|�G ���
m�%��x�
���7Bt1k�Q���* 9��;!#;�>C���6���_��o�ʆf�.A7>+�c�:�Sw�)K@f����}�O���p�4d��)�����[\T?,���P�:����z�/h.��ȿ�I`D��U�pM���A=��#�FXO�%(9�k���"�;�a'��VE�|&�]Y$�,�Mй���z����/k�K�.���1��.߱ꌱ�D�U�p�u41V���Y|�8|,���ʠ�}����2�	7KUU�j��8��KtD�`4���FW��~�'2{4�z{
�(���82�Y����4����%�\���ᲂ�r;6���[����V���#���Ip@���z�������}���]��U�.���f���٤"[t����jWCЊl�D�fȹa�]!>�h���)
dt�>|pR]��X��0����#l��n�y^ϙ��-�Жdq����=���{a ,�<��,!�����\�`c��o����'���يf=��_u�Î���7@�^�n>G���M�������֥��E%�F�g�7�����oeU��M�O��ޣa����AD�R��a�� /9�@�e�*c��7$�y>��w�/\S��c�j2����� �����L��>�/�2E^�H���T�Y��#/ƶ_�JJ���� �!���r7$m��G�(�డT�l.BY+��^!F�qA���.�R%#�$8�Ķ�Lm��oVB��#�V�U.��G���Y��|_LgO(I_^&o�`�4�vMnd\FqG��~p��m���b����m��{�TϹh?���׷����|[61��$>oO�]��b+0I	�ɏ��Hw�Z� 7�Vs��E�o��zh<�N���wآ�80��#	�'"Q����[ϪGQΣ�ȵ�N����F�U�j]���5���T����Td���Z�ѳ�Z��X�5ds�"�qi�9�\��&)�q��P�2�n��{�NlԬ@i��?��Oț�>Y���O�E�z��������d�}�Z3���a?�g?&���I�
�Ο"#�9�(=��lZX�Rā�QA2��d~KIA�q�>r�����s����x�z)S5E>��f;E�=����U+o�T��G̠�i�v7:�
�֚ȴ�օ�|H�&��x��&�ɀ��m���+�^Z"�@\�����6��Tt��;.�C�Nt�4��\	j��hq����(O�{2<Q�BxP�X����D�28@!.(���b����Õ1]M��,@8®��mb��� C��}7k��/���:klv�N+5������P��"�r��H=-��� �  ��o9T���ġ��>��4YQh2#�b�$'xj
� ��H�v7	��(�f}��7ҹ�E�
�Z�4��`��YA.�X�D��;ґ3=��l�������R(t����3OACF������B��O=?�{��ҎH0�������� ��^���gUa�מ����0 Z�K��W�WV|y��:F1��m�ǦYv6��֒yW Е��m_���),R1��t[$aoSg��������X2��T�CA~[��/p�oUhKC�[��z���	#�8o�ɷ����㓐�9"$��|���(�mj۴�Mq�����
���6oqm���ոDI�BImG��% �PN{ 3`�\����h�d�=�&Z��P�ޣXG�Nt������L�8ʘX�9P{��PB��v~x��I$�T��v�PV[4�������Jz�'�;��&��q2~G��S=��a�k)t�-��RD��������P�P�FN�P��4>o~���N���ej6M�,s���_wc��!��E~�R��;T|>�$;���p�J���F.v�	E��U�;��c�=#��	���g�1W�ޓ��A�N
�uY�\�a.�ޙA�!���ͻ@\CW*�g��Rű�\T�[����$�#Ɩ�2��]�pm7d�=��i�W���ؘ�3��g��*b����WhohtϺ����ӐE?HW΢�
Pg��� {8yWIyj����uW>Ţ�W�1V�Бt�.�2(]���pU�ZlgZѪT�(U@������T �u�h&R��1���hJx"���ha'1{���q3"�����:� �m�sg쑾���
������$��;#�J��H�h���R�u7�h�D*a�P��/�0�ꖵ3�B���T�D���8��\5� ^:�e�2�]�Yƨ��; %�cZ�A 5az"SK��R����*Ԍ��_��9�zЖ��am
 �e�m=�ҩ)�����d��S��^���c�x�k0�wD=��:�-S�P�J��·��@ZPvN������%A	��dt�@��y~�
��?	nZ��:�Q<�OA X��o���3f�J߲��;"�������{�X�u�AQ@�k�"fY�#hXN��=�<8����wx�M���&��RR�]o}�« w>[M�������!Q
o�V�TW�ݔ=�|��1��ud����YT\53딇�w,���-
ha�Y٩�+F�س1b�$�����P-m��ж��{��j�WO���%i���
B{��$�-6�Ŕ"o�z:**H�m����GCǾ�e�SϦ?&��tu|�z�����խv:���~2��_�d
����=C�B��̦��72W��
Mg��t�^M>���&ٝC�QÌ��W���/�X{L      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �   �  x��\ˊd�]O|Eym&Ɉ|��`��R��7�Q��0��-��{Gdܪ�ʌkLUڌ�Ź�8�B�����_����燧g��A�pxx=���ӯ��/O������o^���>��?�)|���O�c�#��5�ާc�h9�t��b�P@������O���}����O������������*oX�c@�Fk����1z�sݬՓ�����������_��������_��_��^<���O�_^>������.���c�GߜO�g��DW�Fډȟ�}y�����?=|}|�����ᷧ/_��������d}�?Rr��=��Ql��&��n����r�<�42�P�Й�֯d�(_��o�@���ky��P�c��ޘ(`R&y-� M�H|��xCL��0��{��(�wm�,�c����Jx��0�W�DU4(.eBY>�HnF�q`b�����2��%ķ#���Sb�@�ڴ��n�ʑ��Vl&�(��ZT�J:�M_cri��1�c��)��!�WZ���?Iy�'u8&Z�$d���C*�a�e[rK��|Q����������Vlծ�]���cƀT\��úY"y�#:,�Ri�ՑG꧑�8�'�D�T\��g�=�rV_��0Ձ����Ņύ�R���X\����q!�?������[��BPI���	�?,i��&
A5-.|�϶�$�.�=�jZ\�il�m.�|82�P�.k��$�~S����C!�;2���\m&�(U6�~w������c�T��'���I^|l�#<z�;�(u�WGmu���/·<2�P��.{wζ8�����L&⦱������%���#��i�`�l�G2��B�	������j�; �u.���Z(D�ش��$�栊=���tNL�jlZ���$��ɀBT�M�4�m�SZ���_��
Q56�T��U���^G3Q�5�ܙ��G��)�|���D!���;#�H�|�]��`2�U_���l�HƊ��L&��ֲR��G�S~3���(Pߝp���Nn�绑]�e\��`��g:oN�ED.������T�� 2���~DJw���KR�'�挸G�=
)ޏH��ZgdB!�{��B5�D!���D��DR�'�@���+2��V�IDJ2d�����G����ꨬ&
�ߏHwMk�Y�K�*"�����͎��(����tV�=~�V�ԋ��j����b)���''�D!�C����M�!�<y�&
Y���2>��3K.�Q�L���ue����������}���ue�Ŷzܟ�,�A���B���R�c�`���0Q��P��U���iE,�=��N%�PX�,"
�+�7k�hb5K�}���G��2Yd��(�"	^�b2�P�2Yd��|�z�a�Ϋ�B��dm ��䫫K�'o�P�2Y,����zQ��'�B�de�8�T[INB����P(E�,��M�_#O'��P(]`i]�K�5�'��$e<^ޝJS&+m{���B�am#���J=���9�y��wP����RO�V�j$���51Q����z����l" TUX\y�Ϧj�����D�����;ܶ����9R�;(TUXZ��lE~�*�6���
����l+Ha�#�X-&
UvA���DbL�bu�D�����sR��*�pGD#��
�j�f+I�)�L.Qh��ֻH�M��������ے���i���cb��T`�u!��%��d@��Į�Dzg+�y�L�J�����}uj};(4�؝���M䍇���`ƣ��ӥ���BS�ݩ9^ϣ�����ǄBSyݩ8��#�V_��T��T\�}��Q���N�i=,����}�2"E����0Q@��ZVn��gj�Y.Ob�LD�e�Έ��W�=�	e"��,���B��9�kd�Ȅ2My[�n!���z�e/�
�Չ���uD��ڍCq%�DL��hIk'�y�S�"a�ո<"6�4����F�d��-^���B����:�>ʑ����eR`��D֩n�b-�Ti$b� s@��:QSz+�ku<"&
�`��S�I)HQ�He"����ή$�No�t�O[c�LDu�ڑ��D� Al�'"
��Z���U�hA�d 
i"b�LDu���U�z�)��AdF���*�RWŔ&A��e�fĭU`aNO���1�fLkb�LekX��Zb%�bt��51Q&���Vj+��z��AdB��V�Z)iRO�J�L-��:�7
H[6`a�y6�>GJ�)1Q����W���"I��\�Sb�Ld+�/}�Ƣ)dSP@�J��5o�P�$j$�Q��f�ތU	�Sۡr��V�k�M�%/7d�b�Cud+����WMź?
�3[q� z����,ymG�D��3��nƒ$e8�Na��L��4��^�R�E�!�U�P@�++�o�Bo/��O(SA��^�ؘ�v|���B�
)��ׇKbv-�l�%�T��Ɲr���'��g!%KS&P���j�������):7Q@� ����u6���d�	���S�r{�7٢�y%Mkb��:Aw
�WI�A@< צ1@@��ԅTK]�c�^ce"��;��+��>�#�Ե<�;
��cq�>}%��S�I�b��3�sck��'��6x� ���ŝ����������$�Buj,��`��D��&���I�-P��"��5j/�$6�˳Wb��:3w��$�g�cov�R��cq�Tn�!#�8�����X�����HW��<��
�#cq���F"|+|�4�Bub,��|��DzOr"�"2����w~=�"�ǡI��Ҝi�AuL+�4��DD$����!���Qr+��rܥ��V�i'����l��2�԰NSiȎY>�� 
�#Z1��ԓ)�cpu�y�LDU5�SU5�Z0�G�B����N͕D���I_<ql;���2U՝��눠�:j��KW�D����Nw͕D�o;P�l	a����C?W���(����D� ���D�      �      x���۲���-|=�S����9�j#
�AP� �#�@��O�U%`�Uc��7�EZ&={�޳gC�d�%���������8*�Cȝ����KU$\.V�֗=��Mu|Ą��:/��]s���$�=�������������!���) #���~ ��  &>�om����_0���b5?^�g��D	����@��W��𳇭sl���ԭ�rFp�~qx��� ��X���|2F��Xl"ɝ;��{}��G"� `�2�&w7��k�`�i�F����1�� ���Y�?0@��<h�s&��ĉ�_��Y�&���FD��*M�y�WY��2�W��������ү�B6O�)��sM���B$P�������'�A���!@0�co�>ɓ�.��ӯ���r�Zל+�(P�&��� |���<�ϊ�^Bj�PA���SX�Kv������ �@��}	��Y��F8��p7��Y��3�%�^�k�`�^���*��M�J�uk$(��;2��A �#�fТ0��	�ۢ�s��w���	���I��]��9)�P�I���}���/�t-\nԊKw�=����)�$��DF� � ੗ߢ-+ 1r}�}s�n�;�4(;�Q���p��2�Ђ;�
���Rd}��;�b�As�`�����j'u�h�{Ҳ!��P����# ��;:��4�4�R��$�6�k9j�M��+E�^6�s��U�M�Q��|$*���b��rp����0B�	��':������B! �ߙl�|�R�I���
uaL-�EE�r:���/�	:n�J�[n��,�;�H|?u����!-xrx�P�B���w��N��!�+RK�j��Q�.�l%�c�Ckqe��<m�����l�;�"r��8��=��6�/t�t�h�����E��J� �!�f��O/!}�.rY{�E�����S���3_:K���רv��#��A�F:�/&�����}�<��hJ��Ŧ�X�k�"ΚS�LDʺ����i�2�u��rf��aܵ~}�s��9� :i��>M�|�Z����ʈ�7h���"�;�)�r.0���m��A�5%��TZ?^>�v���n ��wt�����Xx�[���Lk��PWY�3�Fq|} oH�gͽ�<d�����;��9�s�/��9G�ӎ^��)j����i3D_f�w>������z��ԣ!q����V�-t_|h"t�:WǪ��g �N�8���}8�(4=��>��z7�k��Ң:�&�E����(����#Vܞ��Qz[?���_��K[��o0��
��r�]0'��Wh��4�""6V���\�މ)׀/)*��� ֫�6�W��N:`��c��� ��NZx7d��k{�:h�$f(���l�[�&�1����<���|��8�|�@��f�E?���7K�>rG[��>��)v��܉�v����̹^����D�:���@��ɉ�)	�v����ԍ�+�y�̛s�ky�u�e�9i�ӯ ;���� ɡ|���  �é���]��F8�X���+Fc�XK�A�%�P�C��q���nڎ^q��U`�����:�W7� �zs�S7��>-	y�����AV�\��tF٫�]N{ O S>+����sY����/���_� �Y� E�M�]%�e� px�h�}�́238��E�83��9aa��p%��j坰5�E+���g>�$�GwV�E�:Ȝ{t+�V:}�`7#�6�T ؽ�V9��Pؿ�}�fȀ}"_"��Ԣ���b,k�HsՂ�@�Lճ�P��prVg��֭?E��?���+%_�m����]ۧ7�N�!�[� �ޝh$2���^���q����Ɛ8�Z:��X�\5��T(��($7f] c���% _^���>����?�����d�Z(fNt�]>������%Qn*=+���k�E�"���*Z��%�e��Îw4P��1ѽ��A��ݓm�.��<P�lV�2!���"���q9�x�	�xa]Jݛ��O�k�������W'�`r�?�H[� 2��^��V2�v�_M��������e�x�����}5?�p3,�!��n�)^�8:��F�ŭ�ˍ��Ǵr{q�[ٮ���S������`E.�u�(�� @���E��७X!�4Q(kVct��t6�2��Z�?��XK���Fp*�����ԺGdJs�j�&ݐAdE^6�
�F��#��,��3�@�x�,��P	�%P�pHv�sJ�xx*c���Dg�(��(]��>�om�= �{0+�В=�O��
M�(.v�ǎD�� Ss&D��F�F�pw�G=��Ѕ�_�$��K�B[Ɇ���d�g�ݫe�Ҍ��'vIw�)-^�C������q[z6�[�MͷΊ�]�����ƫ��#Cy��� (2�P�m�=$�-5¨�)�KW�����
����n�߬O�.�r��Uj]��H�ڵ`�A�΁�υ��SlR]r� ���t��d�Fp
Vt�qn��~gPD��B�����E��3P$���X0�r0� �����Za �L�c�e� ! %��ϸ�����}�Ao�#Y�����i,뺐����9�I���5�������}�Cz����1�"�R�=
� 5���}v`�t������J�#v�QaI��]�D&k�*�Ww��g;�02K��+��Qݦ��'����k�<��#�D�����y����}-»P�!�d@_� W8,�08�E��i0;�8H>V'�-��y�[�Hu&�3�O�X�Ɂ�;�j�>���Zn�̥"_ū�z!�A�B�s�te7�|��do�r�W���7����S@��~!lj+�o�'���4�:9Sզ��X�V��o�2�qw	]ն��*Ci�:��b����M���{
(ح�$1=�h�jQc�9��I�2A�	���<?���9;@CuX�w͸X�x�䱋�������vz0C1b��:�B��&���B�S�h�����f���Y��P=Gq�H`�v���(o�Y�\�%,%({��i"�E��I�4U��<	���5��臝�W�7�5�����j`�[�rr�]L+�M�]��(X�JxewcA�41:i�?ɜ.�h�md���W��� 9NN�����=�ru"�H��8��srŖ��A3x�۩��Q}nW�r]���SY�>��'	�wy��|�m�5N+�5}{�@"HS��j�����K�1��8-)%,B߻h�a�m�X9Vknn-�/�|��TrO iml̴@k��~~%t���I~ \����q�����%�Sv�9rd��X��:���r�#wR������X�Ǐ�)�i�o�O��=�+s�Hd�?�vAR.Ve��u���@�h@�w������l�v+��� E�8#}A6��C����j޹ρ��噙wLo����-��W �FZ��U@�F%K��d.����nֵ
&�y�gڤ7H;c�s�=1�v3�y����I8Y�,������Ց@#@����
n/=-�K����*.��p~%�'7#���X_r����;�&O�������/�àW�_��Xk��c������A�,s��#�\Z�����N�]��9�a�����Ȟ_(����|�����n��*���E���������϶�����pc[�����*���Ex��� m ��Ye������� �)��$%�6�/�t��lO��71Ct0�.H���_O��?��
`��Uv���y,t�@�ݫ���7���/�OgZC&^(��bjd���BT����O�! ޲��p����e��"Hc-ۧ������h�Â1~i�٠)9S�x�?Z�\�~f�~�Ҧ��-G���W�#�7p�I�D�](�zƻ��|K�5q,�9C7��3��m�{NV�ì��⫿���,aL4J�� ���?���م���R�Y���(�쒤���<H�F�����R=��    QJ�\+���|��>d���t��;#�Fۃo�09>	�̱���[�	K�t?���\<���>[v�����5�3�*��d%��[Q�U�5�q}��u�d��Y�_��1�$?�4���B���s��꣉�*S��#�v�:�������۱)R��_�?m;�2�V=k>��>�'�XA D�j�����|�_|Ǧ1������($�k�[�h��;_�?ǻ��.=�X����2�I�)�������H�É ���*eA��$��Ȃk@\��.,��Q�+e�] �K�s�G���P����f�$�����(3C�e�8[�:�	�o'C܅6"/��yt������u.��З������ܾ�M���]�wtJ��ѧ����\�7�$�g���2�. ('ɋ���!��Fbtw�V;�@��?p����p��t y��ph4-���{���s�a0iC��х͕�c�=.z*�?@���*��H�MȾ�=`Rc%���r��K��<�}ρ�����X1lh"O�[�����MS��\=���C�x+�	^Sսu���������cd���S<�L��F�w3�"�V��$��)���������<�%���[;aV��h39��2�J�J�ܳS2L�[��r,��|�
�p��W)�[����7�������B���[u�i��@F�#M,������QjW�&�TM�Y=�0=�����S8�9�Lu��Pe�w�� �d3r�;H��*��B5@���� ��*X��|���9W,6M1�8���An�u[TWP�N'�-�
5��DG3>��r�i8�����K�#���D%�B��1Sمi���*K�Z��KE����[�������I���s��r��lą��V�7�U��Pe�H ����2��X�d%{���Z��۟�K(�.�݄��Q������$��������G�h�q1[9<�/�휒R�x�SD����h���6z8d�^<^�`0���_�)d�>�:�&����{췗Xc'Rz@�oC�s(�y6��`�U#=�(�����h,2��"�����!��T]�:"��Ez�>���@&k9�I��B�X	��"���q�珵f;1j�WW��ܒ���=l;�]]�h��{�Ӫ��᜶�FU��;���)3�`/���[��N[`a�g�2K��s��U(C|�fW�B (4%��Sr|��F|��-y��%��K~]k�ԄKYqS:c<m�x.�6�0[�p�{w���_#�u�9�V�1:U��w���`�Mu?���&�Q�J�����T*�t��>���\�x����R$���ǰ�3`�CJ�e*�#��m�p ��pǳSJk'��5p�R�
:�i��V�bF�uo��ldƺ������?�xt5 MG�ޝ�e]����6����^�Z	%a�?�S,O��`e�P��g�;�6�+������>�;7X����40L�b8��ѯlU��B�� �;�o��@�T?C>��r�"�F�5O8J;�+a�'3�w$���Qr�?Y}a�
*��"�� j�E�jx�����6|[�=J8��$��t9��� ���g'4�P�hB+��NWYY��~<=�h~�Ǳ�F#�+q�ӄ�B��%�:��G����}�'��0��j��)ۚT��^q�{6�/�Tpk
����A���9��Nm�U3CMSMİ��eht����ܒ��f�:7'J�����I����3}���߃/���Ⲓ� ��)���Ϣ�pdEcE��{l>��e���������o�
�F�D� 
"�h��ab�U���$9��۾Hc�fA���4�`�̴�d2Ӽtϖ!f�P�̛�H��nI�
��/��4��?�s�/=y��TX_ˆ�Ԑ�7�W�h��A��S@M�.-�+E^�	�*��[hE%lX�h�b��D�G�O֏�L�ᡅ|}��<*^꫅}_^	�aW�y��Y�"{��l�-룗}��=WL`&El�_[>8.��9 }-�̻�|GA�e�7�w �r�\�3(�ݯKv	!��+9\lN�qW�dQ����v�=�P�[�y���}���?� �b����5�w���.�[3Q#��RSg�-ŊN%Y�ByB�.sW2,�PX͑n+!pnQ2�o�%��R�.�aý�n5ƺ'�+u�����Nچ�
C���N���� ��\����`&!�v��>-)���N^?w�_I�>A6��a}p�uk4>��������؉���i$��R��<��h�f]��Zr�#��y��#P/�r()����d���ߏC��e�h�L`tX���ՁA���%�[�ւ��J,��
VCɭa��Gqv������S��v� aE0�7�O��+��n�|�v�8d6��ۢKC!n����Y�a���πV�o�D[��P%�}�`���N�g��&�|� ���<�K-<�Ǩ�����5���d �/B��xt.P�F�Kn�zm0V����ʪ�*�T�)r��#`_o�U�� �>�.�t�A8%��m_�?u�;,�E��@+�<lB6 �&�:��!;c�l#`�T��2�h����>����ZwC >2�/���ꂷӲmߧ����Z��� �0�H�g!#����Meub��eB3u�X����))J���~w�� �j~�du� ��K}�/hP��(h���u4ø�ma��c[�?\u��W1.��z�A�s�� dZ�"@��0��џ��^�a�2��g��;(�	:�M}l�2��gĤ����-��6<;���Qp�W��a
o�Y�öp7y��]<����l43����;3Z�&۾�3�%R�v^�>�0��a������j�R�r �?6�ٍs���u�ԿN�4���MM����k�E~�Qɸ���C��]���&^J�A\p}�sܓ�ⴒi�8ͥ�6��)pF@"Ab�4҆`���_���;�B�y�yP�$��'��%V�)��S������ȵ`�Ye^5���pWC1����y
�@��6n�p��>kV�)˧eWg�7�%�q����~,��Kj'7�8��,X��ΟU��ua�������T9�D�Y����h;K��Q���,�\��ЈQ���Κ��[I�V�R�2vOR�"�U#���R�g�ȥ��5E��R�[����������~�p�;>��<�!����A���KX*�n��=��>\ek��'�Fv'R��	��j=K*��AI���2�tt��;��L��o�� E�&����vO1gjWdW�t��\.ģI/��\�qp!����qS]���B�}���5�pw��ᯓ ��C�?w�}�{���W[�q�����UE)9�h��z�6S쒔|);@vZ�v\P�$v��EXv�E�;��� ^U'��Tn�@��C�?��2q0[�J��΋�TyM\Xע�r|t8�3k���b�.��?����"��f�3�_|�J��vM};h7�y�h�*��k�c�Źr�q��
�W�GĲN��� O/e���.��S_y��x��;~fl����ۇ!�O�ۜ����G�� ���8L����\�˹X�7T9��J߼�r��V/ĄJ�{�ŕF��^&�s��.��^.��)�ǷĤ
�z��HrN6}Q��{�5y�'��t �3�fEߕUr�BX�K�@�1�B����-������0bʙ�-�b>�����&��ؘ�N��u�,��M�ߖ��ٞn�����vA�2���T�e��A�?<A�[�4%]~�S�e��H"�$��F����U]"R��t�LQ3�D[;�����>��eC�D��&pat��Xz������߯��G����@���JX��uu���ک��} ���U!������'7�A���D"�}����d����(ܾ�)�����`�lsA�m͖��:P#U(��i�}��Lϼ﮳�\Tf41�g��}R�B��K���}�F_�����>��=�p�c������<�KJ���LY����8�;��6L�ڶ}pk�9��A_�{�t�Z�    	'��c��g��I�����!��,P���<�+��w5�v>���~�7y>���-�(�;��������G6�j�2�#T�wm`�i{����~p3��Қgixj��~�E9�Ym�������{���b�~oнWl5}�F ��k���˻�9K铂K��9h�tw�a��^W���
V�)��q(��_�/#V���&�<4����]�zJ�)����u�sB��]ufw�l�4@\��0��w�E�[ [�"�T�E:U9HۿP�u����`cM/�.��(��
�Fv
���Ba�؅4�f�d*lV�S�([����T��ρ�n����T�����1��=�Q�˜�SݜI�]��ECC��6�������@<�d=VOC!�"���7�F�Ȩ�/�ë�"��MxD��_r���Q67��E�Y��сC Cy��P�ˬ��"���:�Jx>�7H��}(����m�A�
Ƨ�A�׉���q���&���1˹�a_����H_ۅx����,c�ݞ,8� ��.�o�w!DQ�����[�6	��L�P�� ���k���r���u��nËGd�=*|5���*Q�:���4�f�T�j�#Z������lj���Ɣ	����A`
��C5t_�m�t�u KB[p�;�0���V�N�6�qȮjK�x��'�=�����.@j8��A_�l .m���8����=��WKX�m/������]�S�x�-�։���6��x��A����⎑�<Q�?�FQ�䷶�gӇ'k�I�ME��Vr(�Q�7O�M(�	�����te��������	�N��4e�/��'R|�`�6�lE�vb��m~�uemg�e���&e�f�6��(�l���jWzW2��-�[*�6aP�맜��?��u<��g~}���E[���#h̫jc���|�3Dn������$���r�#~}�niu��� �Le�)ѓY��u ���_�n�����-����p<�צx۬
qS^�a!m&��Jg��%g��f��C�7&�&�����\��l�` >Ս_�ЋM��n�%��k�_�Kb�Ĭ,��H���t�י �i�_���fG����At��{����1���N�;�+���t���S�N��f�nWf3 }a��u���(5�t ��s�@��M
�?�֥ڱnojj�-������A�\��nv�1��ߕvy�B5߯�M���q��&x�#!�০x�����3~���C_����6�mR_ׇ��y����x �9�3::hҺ>��s+\p�u?s&��Goz��7>��Ã��{��R����95���l�����5Dl�o�@��y /C���ɧO��`��u̇�_�y���5������.��#V���������elx��|e��NZ�8jۤ]-v����vP"�捿B�z�]�~��Xw:��7���7�WO�fu�#��O�ưH;��� u�0��ɝ*;���_�˻gA3�M�\D1����Uv����|X�/>L����6H�_��V����j-�Ȇ�_�%q�����h2�쮻��I�G=��i��0�������@�?�<�2{�[⠩��W���]�Tr�XE��+O?��q+��.�����z�YP+_1R��)�l�B��K�N��C�T��ߡ/ރ�`��ٍ}׍35��P���Ϧ)�_�Tݩa֜�Vo37Ȑ��b�2���B��\���bG������Dd3R�ګړ�ө�Fy��'���:R���o�SI/W�	$��R���`���?�� b#��E|��6H�����?�a�;6��>|�/����U�C,�s=;�{�0/�Q1��x=�lё����>�^��s�E7K�m��
��[��%�>�%,'dǹ]<bn��n�d��:�����.<�ɑ��B�V����/҃�5?Z`@���x�ݩ�P��|M��v�{ll��[����gQ�pѷn<�?�%�Z���!﮾���@_��,�m!0�Գ_�H�p����,�&���Y:��Z�luw���$fL�s ��$6&Mu�I��k�O��7%�dS�ͥʟ���r+���P*l�mu�R�G���=�3߆�|��u������F_rf ���$x���	���=6M�4�#~.�� {}��s�ů<_"����dB���s��u9�6$��Q��#�M	�|~ƐU�S��dh�)��M��{ݍV�EjI6�A���SA�������׃�/�t�#/��Ni�1�"=��	�e�b�[J����1�=Q�o(�
<UsHv�;:�/.�D<�sJ�yğF��}��T��o�WGɔ��iF�rsi�o+A=��(+V���C�Ϊ4�2*On�I)b�2{U���GS~Q�u-H| �W�+P��{�(���y�*��q#�a	���v4a�Q\���e����Qʮ9Q�H��u�z G��%z��?��Sɔ�B��&�A� 1j�u{��mr��F��+�������Gt�e)���Ջ�;YZ)���/:�������ߢ���*��gWe�-��V�-��J)�JZ�E@�ɇ�NnCIV&�k,6�F���#h�9�ᩙ����}ud�6m��k�s��
o���.��#�WbHHf�V�����);�,ak���bZԽ���'#������[�!�̥Ü����7Ց"D�A�6|z���p�Ix��K�#nw�w��S�5�S�� ��L��-�"=�ΌY/L�+kT��+'#����=W��`��}���ax����n�@���D�O�4�A��
 ���1�_7wVe�\� ������&Ɽ����l�펲w1]�e((a�.�ǅ����SP+쾇���q�T��3y�b�)p�/_���"Zf:��@���%K(�����*���]!���|pw]�X�}}�,_�n��-(]^ϰ�9��`��4[�|�C�!'��`�l'B�ݼO�+��p[w�|����њ5����O���)�>�����^"9&!�3�3�kS:�ダ=z^B�O�d��.��?S 5�ȿ��H��+�(G�ں
H߃�^Z.-W�6O��1���Ǳ��𪄣�-���%t�O�����]J5��o�/��GI��ro����K&o���7M�d�ji�����,	�2�y,~�\�K������(`���w��AH���w�ҷ���[`I��xt�s��ajy]^k�R=�s꤭v�~�'�����Hw�i�GK�7��AD�m���8�w
�X9O��]�=o�>4�f���>3��i���ًc���|pw����-�"=��	����An��.��i��m�2Mؐ��u�j���f�ssd�:����������������@�q$ң���VJ�6�m_�K��`����E��CX���U.�>c�s�%0�BI:��7���Mj�]�3�O���|����xk�����j���$�=vQE)kUz^ )b/`:�I��s Vw�&�Y�q��0�3-y�oΘq_+D~��C_�q��kx��e\�w�nUd7��=�nJ	h�g^KW.@-�-��84���v�?�6���o����}���6�5�GR
�y�h��~��HH�!&�N|��n��^�����.��*"��>� �H��U{����A@d7a#��/N�,_'k	�o�C�^����8a�s�a�B��ȊD�T^XQ�#7�eeг�`��;��`���b!i����u${�9�eUn#!�oKc���YT�reW;���wޙOˋ��a�����S;�@�|�vj��wE���p�����Rd@_
6��ae����xZ>��}3���7����z~��z��/�5x�o���ep�nG]�.��O���ބ5��\N�t`d&'��\��桛�N�V��'9��3"�H9}}Q��E�&Cq�5{(G3GK�)�5|�j�z��P�J*��$Ny0�f:�*������֣�o��0u7��L| ��Ձ�b�8˰}����r��p��X���%u��Gv�0յ�����0�-�K\81t�� B  P��2�	¯���<�wG��JMi�)"�b1s�� lBwS���8>�Q��2}b�)�'%�*�A EG�����{}q��$ET��8R�)��=��tel�&i n�����$T>�3qRd�3a�����{݁�a��E��7�F{x�m_��)w�t��%�sM�gf}9�t�?1Qo�Y�ؾ՝]5fML�Z����E���8�X_^����o��Y	�^J}�ٟ�l��1d}�f��<-�YuR�'�Zwo��D�F*�����p�q�@�!ǧH�:��0�X��Z�:mCö/���dq@��h<Dw<�.e��횋0jR����<l�?�D�R��_N��h�G�y��Q��w���H�^�Y�̾���Z-�E�)��M�܄q��q)�Z�up�kV������˻o��V>q��O��=ݟ���pj��m_�"�6h�#Z3�h���₟�7�QrJ�#"��i��y��-�=��8�z��k������o��y��Ey�N�eI�Mg� ����J��sy\��ꇳ�4g��~�7��kP������ �1��>t�l���<�X?��ޤo��#r#VEl����<�
6���HgP��>6Lu���kG|ۀ� h� ~}����L,}(��Q��.��v6�������V[R�,d"͂��'�ڟ]8*���;X�4rg+\�9r�P> mu����J���jA?@+�r�J^�;��?������ V��%} �p�\�s��Y8�
�h�l7��f[�
�\�8E�3�a7���]oQ<]���� ��^�=�E~�{nPG jDs��ˌ��s�T?A3����v��y��
s ��,��.��g[	r����`��yGGp}�^*x�CVv+*�k�b1�R� *
=��@��:�dU2PH_�x�Q��'������鲐)-
��w�&7b>���|�\Ql�e�V���&H����Օ�5��q��2���	>�E����51En��('��Ez�\�t="3��] ��dI�x�#�L�����)6�����b��ϭ'�.�}~���T����o��A8����0+��Ls�B�l3o�-Pj�cs�����v�6��ұ#�}�'�~�L��xc��EzPmv! ���"3~�וʠs �!��ÙQ;�с3h�j����� ��ψt�� r���B��#d�H�m_��p!G��X��;P����M��M�u�g�����P����}>�t�e���I�;�kxs�i3������'b������ �dSg�͢<�^Cv�f�K��B"�n����( 9��yI�3������vd!t4��@_���a���ކrp,]�X��������"�e�Sߥ�Y�m��-��2����]�G���v%L��P��З��x�U+!��e����'w��%-:fPm@����T�z�?G�'-2G�[���~��ƀ���L؋� �ψʅ��K Έ%Sn����iH���qT
���,�p��-l?˗]]	��v��0ҥ8�qX��NO�!�"=Ыl���C���o��q��룒�}�(�kDlf0�����6p��JA��o#h��jA~y�5�Qʋ��D*8���Z&MCH�*"Dp'�h�՝RQGH��S�#`��.@��|�l]f��|����'7�����yW1 �i��ST�۩��=8Ic���h;.�?�4��x�YUg �-sD��,+ ��V�2�J�� F�?��J@"�����wЗC���BYW^c��e�*���-�l/N���hĮ�e�]͸�H���D��2��Ŏ���:e)c�Ez���㶜'���e�j�tɇr�0�ӭ1�&hP��N��k��[�[���S8O|y3z^�=��P��B_������cV�Ao,���-R�>�g\�ҤtI��6̌�	v�q��Z9�W�1k����2S�G"��>I#�+��j���27,�Y'���Pg���.3��s����q�������F����� >5�=�]79�p�v� ~.���w�����ȌlF� {�� @
��`5�VdP�L� ��&Q}�?�Lw�l�[k���=�ї��b�5J�xr�±<,J&TtE�$�-�#�`�Ke
}��5��wׂ%��:yP��������?�__k����� �0�"#qs���n{���.�ahig"�K�n/�8�����%l~�3����-�p6�����(�Y
~@m_��5C�h���`����*�5yvHg�Q�nυ���%Er�w���AC�|��E��l�TU���b��z0�*����{}�w���])�?�� v��LR�7�����,] �pO��]0c��VVS����i��t�0?:��a\2��Mb?�<p�`;���)giy?9��Q�94f��������n#:A�?��zvd;om�E�𺛝�xt�0��eH7Qz.���]��u�;
Y�����C�>C��P���>��S�]08��=�Ez ѩ
���-�sN�M2'��VӅK�a��bz�d����� #W�>3{���7g��C`T��9�wth����@�╻��|�RA����%�����Ҋ���RE���`9.R��5�l�5up�4��!����@	�Y���}���2�()
��#,L��S$ܓ2�6�=Uuj��6�Y	CP��~~���`��c�ʣ�!:��'���������@,�.��*������ى8�����"c<���u��ާ�R.�B��n蟤�i��?����OZ(P�t����	����YQ��(�}x��p\�X�b���`tܦp�8 �q��71;'ȝ��� �گ63�|�^�h�װ��lr]z~�������%�+�i5�`��o0����Y݀� e�+閔	�!��Yi������)�T��#��P�#c�XW� C���E���*'���'�&O9\r��*%/��Ct��4oy����S������_ل�	B���7tԑI�ՑA������=�(�=�����. �1$�dU��E= �^/� m"�a���ۀ�7'��̹+����=��������?yW)N      �   i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�      �      x������ � �      �      x������ � �      �   p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�            x������ � �      I      x������ � �         `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3         i  x��ZMo�8=K�B�E���ܛ�u��0�I��+�6��dPR��K�1=���l�h2�{��̛!�ȷ�I���;�Og�z�XF��4o2R���j�w���s/}��ϡ����4�Í>�5��jy���cG��xQfL,����h�Q'��X��#뚳|I�I���j9#�so��� Sb�E+Jx�r&��)�r�(���'��.���)2�;7l�.7�|�) �Y7eV�}Os��B�e�[�>H���c������)�#����}��~��T+R՜8�ȝ�a�w�J�?�zK
mHGF,��	|`���{--Z�ҺG�ab�/h�;�v�Ѝ��b��x<ώ<�V�꒓Z��nY�B�fCy�Oe�E1�?9G���L�^L��7�p�,-�����������IYT��__�'gZ�e^5˺��J�G�[���\�;��G�w�l�� o(��{�Ch��[�*��yG(��jq!;,��,k�]��(>�N�>���=�4��
3��Ɋ�fɨ�@^Vxj�?��I�yY��5��$�������r��\a�*�+�c����^����No��t|�4s����d��p��>��Ax]}rf͆�fT��Շ��n�1*��8�;/��!�t̵�Z,&�У���F�����ķf�l2��^`���X��m���x�]�]���E�0� ��כ�E\M�5 AvE�����3HЃ�:P�.���ڥ�m��.L�|�y���$�,0g�{�A
�'�$�a��};�t�+'y#��!55d�5��9�C�V���IZ�c8�ag��:i5��*���ȂV�3�7�h+t6��5` %�����j�u �%ɡ�� B>���Ϙ~z���Sйǯ�cO��@����KY���[5:�9�mD�̚�	D�ѡBZ�w0aVuy̳�iV7\�=K�Q�Q��LGG����b�_Mu����z8H^�\�<ͯ~���
b��	��!Q?������-��3�Ai�m��)�љl���x�@���tO$��)Ko�_�
�;ZS,Et�"[��=�S-�|���CΗv_���)\ZS*Ua��Z���J����GC������E��bTO�5>�۳��M��)o'<�i���1�(6ܛ[�\<�(�9ժX�*x�yӠe����5_1�f��@%]Z5�r_|�S]�t����ƽ���t�Q��6w�ߡ�/�N��[c�Z�~bp1������%5�u-���q�m_UT�ĕ�h��?�ydpU�=s����'��ܵк���=�k'yC�X�<j~����������Y�㺯�30��SC�=s��>�,��l!�a/&8.������q�2�@����?��<����g6>.�;�dպ{]�5��-��� b���c�B�г�W��P�ʥ��`�t��`� �s�|[�yyq�>'$*dk;Y{��\8x�!�6��h�*�u�����=�q@���'��ާU���4�Л���|���*����B����F;%��I��A���j�/9˚5��R���5��Bv(�Oe�Y��"���];�� K��E�AoBc����R6E������}}�?El3zƊ��jR0g�&���LG�����ʶ�� �2�<         �   x�}�1�0����W���r1&c���\]D�,�v鿯C��>>���|����b)U]*.�
��U�ٜ�FW4�<S�Ӳ�ȋ�u�*�}�X-!ml��Ֆ�@�^�6d3��"Zh���ʻ,U����8/떤�'�}��+:���{�@�9^���!��kj|      	   �  x����n�0�竧�^��忸�i�[A��"�T �}�8VD�lm��<<W�p���X�Nnk��)�j�kõ�p��°�?���l��@�L�ݷ۝f-�(�(�a-�2�樇÷�/<���m��3�A%����.�`�pk�v�wv�y=oH�tN��v��,`c����a���]w�g%�Ay2H-��$霵a��a��+��f�Jh��/��q6�2�)l��rB���%�s4
6~��0�V�dZ���⸾��we���P}��Ɖ�qs�_N���n��9���Sq:�`�J"���i�Gc=��[2\&��"nD�a��7�
mDM�59uD��!+x���)��V�
�i8=�Å����)���Y�eL�<'���H)�|��vonxM��D+Is����E��N\��hL�x%M�Uy5<>?�./�4{����ߤ(��
�b         �   x�}��N1�g�)�Wgŉ�䲷#K;�A�"�V���O� b������=�./��+l����ɅKQ-�Ig�;-��O1�y��ؒ)�ٴt��m[�Zbq3q�c�o�N�1��P�bYz�ܲ��m�H%	V��bj���\Ҵ�4��X��\�6cS�p���X�X���)��T�0(i�,=Evp�:I�'���(2���ގ�v�L=E���s5'G5���L������         m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�         �   x���Kj1еt��6VI��,9F��(Y$=�h�xY�!Y� ��E��#���a%U�#����ލ:LR7��)[SÑ}e�S�v{)a�Q�l�Ѩ���ѩn�!1��d�)F2ݑk���}�ܢ�[:j$��t�m�{л��M~�ߎ�~���2���)��Թ�HU�J9��X�6W����sʟ���%��9         �   x����
�0E��+ܥ�y/�`F7AD�c�ږ$E�Ф�oAP:T�ˁ{8���ٔB�y������r�	������B
�m��R���=��pb��W�\ m�@�NkB;�fY���䍇0��0���������\U�*
q͹�ՙW�9T�O�         �  x���Mo�0���Wp���Iߪ
-��
�{��E"����.�~î�P��D��536��b(�l�Ŕ�%%���,�',$�ߤ]զ�T�(�.��&r�唤�/�2x��Cw�q�5��i�s�,åH�_���S�sxU�Ä�Lb��"b�xRs�k�s�y3Ɋk	)X�7ev��i4��z:�S�6)��g�w��9}B9lT�^&z�Ue;��C<w�Vj둹$Xr�q�H��4M�JXl�o	J��2��8һ�u�#�q��G�]�ʅ ���X�^�ހ~ڭ~��y�I4�Ko��u1N7�}j�z���)�����^�B�J�3�������=��
{)�t�m2�������'�a�L};C���J�$v�K���{�8�c��`�������S$I4�K����~e��<�Z{         o   x�}�A
�0@���)f_�Ʉ�f��u#5)FH�~�W\���๕�(/{��ҷ�ꠁ���c�\0/Ʊ�<X��}����:�J%�K����hz���_ŹG���*`         X  x���I�Z1E��*���K��Ed�E~$�|L���=nd�T���o�����r��7®�3ƌ��.�
T?��֩F-ŵ,4hڷPG�M���4d�)����BZ>���sj�e�P�֏,���Z/,3�
�X��x������Be��,Gnd�m�c��Z<
��l�ߠ$�0rfW�P 
e���A6X�Rc֗5�(���5�<z|.�h<
$�nu�G���[�53
�}�e4u�����f
���@o[ʁ2r�v���$�!P
��9҈�ڙc!^%�i�w��SF��jLTW�G�l*�Uf�$騝4���/(P5�V���s���HD^�ͥ@-P����Og�6z���/(0*��9ˉ������Q`2���<�ʨ������ͳգ�I4����rv|,f�ݝ3Ȇ��]���,[����R$M�f��)Pݙ�YM�ύ��ѴhW�zA�y�K�.V�X}�L�����`$�8�ƫ�K^=������փ�V�4./|*�k
���~}$�~���H����A{��q&q; �Xr����5� ���d��ڥEr</���~<%���"뺹D�l�=tTԸ]F9uJ1�4�+
_ ~�|         �  x����RG�ׇ��>�k���`�ȀM���h��4u+�3��6����2;^,�%�r\���w��Iߜ>׿{��z��)�H%*�O�L��yR?��g�ʛF��ϳ����"1,q�����,��q�6p�!:����58;K:r��<w0d%Hku;�v`Ԛ^���k��W�t3�y3M�X;� (M�D�m���t�.�iF�}o�3�dOs:�s���L:u�@^Io��V�F�al����n4�ʆ��X\)�D�~ӳ�㘩0C��\���3�vf��̄)]3�8's��?�5���b�u�2K:sv@&���\�<T(�Z�w����W���t��D�k�Ƶ�,�R��iq$S[�G�8fF���䈽��T���/��t��WK�X�2��;�����u�����6l�;F*۬������4@�J�ЕD^���W��kgKи��g} ��<��w8^A�_�P�!K�`D�#�4�膥��� ,����	�܆nLh�gm���ƭ�8dJ�L{)#.��Co��]?�f��'�op32�N�C?�po�%�[D�on���U'��-����=��������ڋ�e���/�����u0�5]���2�QĆ���VO^������d |�лQ�t���j{h;}/{#V��q�p���0x�eO,S|m��ن�Sv��7�K���Ů:��x�˘���Ĭ�T�W���5]sXmE#���|oc�A�d;�c��˯d��9���M�\�c3�O="PUb���S:ϓ��x:8�����N���� ^�x��=�W�Q�� bb��슎�h5���y�:a��g< b�ЉY���Sz-!_v����ް�<�炌�h�+8`.bt�m�/���ť�ۑF��[��a�YWt��R��YYә��<�'���{`z6	]�e[u��t��<�]�-�A�����,��&]�2���#Zе�`/�ݳ)�����+z?��:�z�eh;n��!ɡ��(j�$"���P��t��m<�!�(g�C��oM����9�#X���*�;���r�r���9��kQ_�"�#zN�4nթ�9mz�M�"\��
�\y��d��< ��x�j?9o��넑z��ʴ�!��V�ְ�����tn��@g6�N��V���-Й*�Hm�Jm�H+��k�XEJ��$��^R����,�gc�SU�q��~�j���`+:�i�o��àW3�T�Km���8�Q��^�	F�/��2���ȵg��+44���Y�TA〥l��e�s����n����J�^��?8��q�)���z?�j������x�B��a�="%���
f�=΀1��(��s�Dܗ���u7z����9�����/(�7o�N��K��d��x�"�~�k:h�&��5���Y$t����gQfw��0��#�ibF/���K|%*����ؙ�����p���@3�a�,�ػ���[�d.�{=��[�c�� =���_e���e���2�2-�LESi�Qm��(3����9]�&=y�V��ؒ���8�kY�~]����PVt����O�e-P)��Pl�<9�x���ȕHAi��)�=.'*��=4k\T��]+N0׵��.������*d�����Y]%eY~���/���loo�o9N         `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�           x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�            x��\K�%�m]����]%Q���"p�w�6lx ;�� ��!�zH��r���?έs%Q��!Ue)ny��x��w������՗�k������F�0��o�����T�3r�/k�bBk+}<>��T����㚃5��JϏ�a������/�k@Pඕ>^�����s�k���֧Ka�O���7H/�/kI8�_Y���z\ ܀��3� S�F7���G�H�^��\|����gt�����=��_��f޴>��L�8�gqj��Ī�M+}<=B��^O�"Ϗ�@���٧���~�۽[����_�{��&5�i}��<:���s,���|�E���k��~,'z����65�h��_YM�;�iIݲ��<8Z�X��u����p�����-�bZ��a{�힢\r3���H&��>F�(��@�`Bk�h�+�ct�r)jt��L�eu�d|�M1.�ݢXe� �jp��~e
���	�W�k-��m��S�M�>�#�SYK�����klޣy�8f�}�[��i}:�@�!�N��3��r��1:��2�]\ڷ��t�������b\�=z��޳O'=t��x��J��7rgONML�����#�(W��������ݶ>;E�2D_��QX:�i����)Ε3Ҁ���w�@\q̝.��q.P���G�^�7��"*t��x�)�u�?��~�����F7�O�#?������R^J�������a@o�r]Hݴ>]����g������hG�q�Fy����Aw�fYX����WVx8�a�G����s~)����C���x�#��]���(9\k�ݴ>FGB�yjѭ���/�.fB�z�NoO�HJݴ>��D�4���NC"��k�q���#c&r�(k����0rq�_1�1M�nZ����G�.��=�!yE����#E9�f��dy�^��m}��!.�c͋��2���� N{�X�x�B{m��%��2,��l9�TZB9w��Y#������zk���/�2D.��.�AGg�#�2���������#�4rF^�� (%tI�ܴ�<��C�y��W
�J.�áW'd�Nr&��HiK<ϔ��0��_�����ѯC��R�G��e�Y���*d�ʿv/+ew��(p��̀J7�}D�su����x��e�x>��BϤ0�i�":�xx����;��+̺�5d�J\](���5���_r��ѧpݎ]̝YBYП�S2I>)R:�bE�ܶ���J�5�{0�^xt���+��&74�)�qD
�`vi}\���r%�&�Vup]YoMx����N�u/��iQl�	q?x�w?̬�ie�#W��l+���HYOX��<��qpq�����il%�f[oM<şcڽ=������Ng��i�Ō挑���8����rl�`dP&���L-fN�.��c�Z±�@���Ǳ�Q�����ơ�4]��m�K#�l%���Ǐ��F~V����k��aG��ч3�ZD�j�ж�-���ct����J��j5>7�y2�NG3��2j^_X��뭱{:I�OϜ�P��aZr�J;lw���B�f���D]��%��}���	�K��:@����hLף�t�	���&�]��6�4ރ�RL�B9J�E)�'ܶ�r���)�4���R�X�i}/����L�Ch4�cxE�l~�Ʀ�!4��[]J��SP3���n�ќ�M�������۶bw|�촓�#��3���.Y<�+LN�Љ��G��`J4wY
ESf�5�.�B��ȹP�)e����r��KbA%WV7$�P�c�w��!G�Qk��eUY*��p,�q�Yp�����G�/6n��g �J��3]P>���BE"+��L�̴�G�<y���$�r:�T�����4�Q4�V�=����v��+I�	�|G��G�G�ˎQ�kR9Е�֦��'2|��I�Z�^|���?�I�����/~�T�r��Gȕ�?�y�Pf|�M�Ƨ�I��b��?[�w��IR�t|��n��L�Y����)o΄J��ȁ���y��h0��z��:�xS���}TϏ���V:[�F�܍������Oi�I�7��I��mM�f=�+~��P$�]Ł���j�p8H.�-%�L��ɭ����d��eKSҗ�`Ca���7��ٹ��c��Y�dE�"�A��#�L#���#�)*p�O��qF����ƒ1߳�	��	����L�R��3�y4� ?��3pट]d�������<Q*s�"�iu������1��H=�)�����鎌a*����%�� #b�`=KA�^2z��:��l�XJN���(#v�Ȯ�o֐��i[��D�0
�4�	4t�Je���۴���
a�U�iU�t�G���M��ي�B2�]�pE�����u!�P�Kݸ[!����6���=�-!�.3�vR�bTv��m���Ul�<=:��D�l���El��J���i=�Z&%�2���|����Vz�B��:���p��n���]�(�
j'A䰕��<4:���fZ߷R���HG b깂�Iu�{CV� U�R]�AD�}�p�<���% Ep��Y�}�VUL�(��\�L����af��K!��nwe|߉�\.Q�8F�#���Vز��P���6f$�E"��g�D�㦩Z�Mv2H4� ���̉�E�oo�0�R��]儻[Pi� �:}��iZ���.���(�N�iF�V\
rc��:�mP�PL�m����+
�n^��(�F�2�m�5�S�'mIF�)_D����Q��!���i�I.%:�j�l��@GO�J�
0PY"�hM�lU'��xT0�i�`\]�m�jl��a���v-�{��uYnX�Z�$�^U`�ttF�ȅu������0�J��:@���1�}`M�I�
'����y	*c�w���т
W��J�(���q��Cp�5�@a=��F7H��j9��=��=�������`��.}a\�piĿ��_��qpq�������`�.�|-�֎� �|(����������p��<x�g�5�x>�\Y4��z�5�%X�"w��3��Y��PX�W�٥�VL�'���]��˵[�[ʣ#L��u�r�M�t�v�{�u���A�y=9��fu_t,m���9�K��m�ÿ����v�
����а|�Ͷ���>�|_�8��4,�`��c{c��O89qM<��T�$(��{�[�#����
�=�z�Í��A{��@��8�bl+��{�$��|Vpͅx�V�ؚ��p+��r�!S2�X�rG���&~e���mc�܄.��n�wkTW���b�]W�U<�f=�i�M��!M�� �sp��O�Է�Z����7oP\;3�{���r
�^�|���ێ
"�X��t����l�.��4�¬ܙ�E��.�\��ڕ�	0�ؐ��՞MAp�Β�g�����+��:��L�5)�(��cZ߷�j�$j�s+�Y�x�Q��z�m}ߋ�^Ć��R���z�߂	�.�M�O��e�Xh��Hl�`LkZgi'�u-�+z�B�[^�QV.i�ha��	J�*!��}��=39KS/*���!s ñ�}iml)�nCq��\n]�<���e�ܷ���H���Mv=�<��L�ZV���{	[��f�_�K?-�X۾����@K�:zn��ۺ�á1���yi}�	��Ώz�t��:���Y��������w<�c�6C����M�v�f��I�Q��\Wf�Ҩm&�8�0�=ZJ�,�v���r��(�<ɶ��?ρ��P�ǒ�H|��s+�wL��E ���)|(G��oDI֪��5�K�C9_�7v�"�������"@PjA��r��
{NK���l<���:Xv+w����F�|=*�xe�*ud]h��ɣ��y�o��O/z�(k=֠}��9SȪ]ߤ?&����қ���_Y�ԹTJ�(��9���9Ё����j$�k������y�� ����Tܦ��E��܄&�������r�l���+��z�}|�jO��xh'���-�82�$���zNZ/l���� ����}���;9I�dl�����v�lc� �  ��� \ �u:��E�,{��Qr_
/��.{�ҍj�3Ѿ�[���p��m�r_p�z�m������S�� 'D׹��2��;~�o�ʬ�n��g��sF1H����$�7h�c޴��H�!O�O_5u����m����8.��������4�.�g5�^.��y�'���7��Ϊ��#�'���LQa#�e�|�	���9�oV��
���n�R����?�zT~�u�V���J�<&ց+�noG!qL`������09\��G�/�+y���Jg�X�͕��8�M�9�A*�.��zk(l�߻~=�c���M�f��y|0	�-à��q��=i�Ï����/�X���?���!Lc��{��Y�I	����[(�×/��X��&��õkvI�%��%��~���mtѳ�dg>[C\!��c[���7 �V5�ǀF+�4�r�K��Yg��Jڊ�is�4�:z�=�j}��z�A�o:�$��xrL@�긿x�o?���r���k�K�իqe�ҿ����?0���M�|ֻ*;�>a�]d�5 h2��mI��+��P�+�����d/���%0������~/š������|7+'��0�4ػ���}w3�\��Y�S��
���\��dZTd�hD�v�q�T�\'R�eU������گ��ȧi�1P����%�U��n�h�&�0���r�E�D��[)L��T��$��}K�4͚p8�l��6-o���l�&kap?��)]����v(��R"b6 �������D[���$6�������ռ�m�����(ΞYe�_����ĿM+�s�m��Cd*RU��QkW/D&e}?�7b�9�����R��������XP��0�Ck���nZ���}�@H�8�^ek��dth��M�a��8(���w\��[QJ1;���m�Jw�{׷�*�me��o�H����[��$~�!>�}wi�J�OG�A�|9����:�8��+1_[oԩD+WlF���%�C�y}M�x:����$� �Z=L�Q���6�8J�y�i��赂K\c�.�2�Y;2�dl�B%�%�ƣɵw|r�?p=��m������X}>���za>];iB��3��υ/3`���]����ͩ��l�-_�����{�ێ�������/�N>y�D!B~2�TCٍ8����ݵ�3�+?)��
��?NS����]�;��j��nm��E�XK��s�#��O�}O��3cd���)�M�.m��D�c�sd>,%����!Zѝ4E�z���݀HT��ĳ�}��A�d��#���-9�%&���ػߙ����A8}���R+�$�IܗIW0���,�Q1�Xݬ+E�*�O[��\6�+`[Ϫ�l?~-V��ER�����C�{[Y�b|-V�n�~�,����P�ڡ����z�z�7p/%� #�?�O�����<r&5��]����#.���}��	��Տ��T��9xQ6����(�v�2��(���Ɋz l/����KĴ2��P�)B��B��ZQX��{^�(�;�v�NmS-3��
���D~�%&����D�hW��7�����k�E�HYϠ#eR���	�q�=q�}5�gg͒&�x��J/�YB8v[Z�����5{+�I�H�h�-�����S�1NQӍ� �01�*@��"a<��ml�"+f�eL[δ�u�9��J]���k�գ�������|���ErP�=m�I�����M�$�!o�ڲ�ҴC���R�a#J&%/�)*�������������R�e�e�򮬳��������v��˸�o����s߼��J��H��%�������sW~l���� gm�r���:��j��͗����-����YWc��+�����뵂
�۸���X����_��� *�{/�q�(�P��6jM�uF�m+����c�����O?�?�:^          a
  x��ZYs�8~F~�ާ���OI6���V�J�6/�BG�D[�CJ�z~�v��@�ff�����Cw}@9a��O���?e[�5yW�mY��P*WZ��N�t���]Yo��~���X5M��N�����K���w�S<��pqC��L�*�r���t��c3�T��G�:(y%�{� O��qA��O�	P�\)��Q�(�����'_���5����˲��)l�O��҅0�' �)<HI��@�f4� ��h���5�δP�"cfn�s�Q��.��]��Y�����.(�Yn�Y�S�P����+m� ᅶ��TS4f�d!T!��6B㤒TeR�Qph�|.�q��8?����	?S�ѝ�<� i�e�"���d�=���%_��X�����)w;wqn������`�04S�� �K�>\�02�����D�|���b�8P���)����0f��i��t�!�4����6�q� �gx�0�zJ%�0�.���Q�2#�qtN:z�)��r�=p'����ų��POR��yg��~*��4񂫂���<�)��&�4q���i7���|�)�	^~�������&֯�7*�?����c�~N����vs
�� O����B��j��&��t��\ ;^g�xpW�ㅤ1z�gB��Τ1���9�=q'C�T��(�T`DX��K��:�VD�|e�<f�ʵf\)tW��Qh���m����3�D� /U����&�G��J��~�R�y)�x��B����Y�<��IGx�{��S�/��x�l}��Z�"F�"�Z��]Ή ��8 p���ކ�^R:�S�{x�%<��|]���$:�cKGy�_���Sk�+����.5���@�BU�әcU�����á�ߗb4���y�/��X6��@�TpL�=1���*20`Z: ����т��𴗺��^m�!ˡNe�E)F�Io�-B�1 ��YƘs6�!�����2�8�px���؛;N�|�a���q��	���!�S4���hkA��L`�Y&Եgq���Dd5� h)��,R���}�z�|x�"r� %x�=�l���\.>~��np}��8�6)��+x8$�� ���qS5P/;l���i!���')8�5%p��5�X��
�l��fH���=$�>��j�<9}sar��#�}���vB�� ���X�+TCK��I'V� bUά ܛۀ�?kIE��qp�lb'>LY�M{t&ؖ��U1s&`�;��RCИ�M��>s9����A���<��������P���!�e��4���=��|�3�v[���
Ǫ=��S�_;#h�a�M��7�ϒ�0}��pD��ߏ߸�7��Q�/��t���,�f��g0�`��B)胫jWB�	���ܕ���IFc\*M>�m��npzp�w"� 2����ę�q�%�R��z�߀A�0�ܗ�f�A"2ʻ(�>^�s�����@�� W�3(�`j��):n	��ϧ�9>�� ��l� �7S[�P��9���w��sU�w�[��H�[57�� �P�5z��b�եB�d���7*iv�BA�-�?���wQ�������y!�Mgt��k�q(3և���,��� 7	s���
��r/�o��Y�X��m��l�w�z��o��q.�S�}�WPZ�A&��x�=m��z<��S�C��	L�6�(��Y�b D�K0��+oK(��$��>��M�`",�"i騇�YD+BRa����yH��trw�+�޷��!�u��hg�2m����۪�9�8��/�l�K���P_�d%�A�0���L�鋆½�/�\m��*3;�0���o���5����:�"�
52��5v����]����"l �E7�(�YÃ��kr��7�	����ϐF׫�yn��L�\>ʍ�,�F, 0H�2�H?c���~#��u�;�_�����}��ܓi���M)�a������M��Y�\AʢLJ����>�F�g��PA�p&a(R�;,�?&<�%E�bk>�&_'}z��9,/վ��G��ߟX�j`�;��i0v������۰�I���x���f�G7&�7w%��z\C#-'n?R�!���2[�ECf�tN�U���/|��Ԗ���. ���H�d.I�f�7�v����[��>^4�k�=���^u��bW�a����~W�D,,n2��L�<���f��v�ݸ��:�XɅ�9$��jѶ���><V�~W��W�M��L_B�E��&6IF��UAݯz0R&�KG�s���[��v,��y�C�^-��՚�x�7	]�1��#]���{_�ÅX��E���wY��y%��zp׈�i)~{��K��_�0��ś�-��z�&��:������氭wd��Q��a`G�@ֳ4<�ZH�,�"j�!ּ[���`�u?��`7613�����]i9�]WYD�*���F37�}�	�+�p�s�X�?I�[��P4�{a�0��h�@��g��9�g�S����3����[�;�^�Q��������%�R��ayT׽�db�;ߤ˴�P:����wy����w���d�섪X:Q��k2�S�T�esy��o��K�F����իW���bV      "      x��]˪$Ir]g~E�E�n��]�@�a���j�$$!5b���ˎy<�,2oWݪ~��v����Q9=R{�G��K�?~}���{�C��+�Zb�ʋ�������߾�����_?~������B^u�D�;II~��$�6K㷘^�_e	%)�H(�Ufz�-<b\�O����G��兯��zZ���e1���)ɞYR�=��^�_��2����-�+���YM�W�}e���v��=�o1��+�e�0ܡ;E��Tʃ��t^���з_��b]��z.�J�w�`!��RJw�_)�Rg~�&�>�RGz�İPK�E�e`��41��'ʒ�q�Y��S}���sɏMoYB`#�R�T���hʆ����������0�<�ײ�m�|�����{;�ܢ,������7����L���*flG�[�T��,ջ��o|V;�"��ګ&pQC�7�!Y�wE�-��C`��8��|�U��|�����5�D�.I���Gl��X�DLy��PϮb�V��hWrl�&�<���DsX��ғ&�Q/PQ}�xK2�Y�P��|C/&�gr�!�]�II�!��Kҷ���(a��
-фut)ƙ��Ov)�2���.z��ß��$�#�Qv���Ey���q���n���c��;�(��<r4�8�b-��:̫��0&o`I�,��3�-*�g�@�؏�%">e���6���%��P.i�-*��˟�&Ҏ���i�B��V+K�����,~��n�<�	+R`�bZ9��$�6��G�mK?��t���g)s�z	��^�o7�UZzH�n	���Žc�>�ط�y�	)A7�9/�ˠ|'���_���u��c?�ؠ����ʛحs.�?�8���(��f�J\��E ��?���3]�l؍6��_#�V�
�"K�jQ+�Q���_`~�Ij�]zv6����$��ԣK�Q�$��&l��ݑ�۶	v�$̶��)��]Evm<�VM���yA$����_�zV�����)�z�s����$���RB�$!o����,�~�$�����eSd�2ۥ�(Ȝ3�w��w(���i�I���pa{ww�uI*����q��v%x�';�X�z�y�2������m�z=>:}���[ɉ4��M��Wg�$EQ��9xS�k��k"4 �9�����H�ΙH���h�E�x5���%��r�ϡЃ#
G�G�O:�<�I8җ8�=>�59�=8�p��8�Cנ{�]8��8��s���J����5�.�C��+��4��~��7y�kуc�U�*g�9Ctуc�U�Gn��ˍ�j�� D,N�by볆��$	��+��A�#��?pT4Kf)�^YT9-���|"���eBb���
�J|T1�$L�CrT�'���a��9�>r�O)<]ڍ��q�������e��H���1{C��v͢�4�3x��d��k��`Q�O?��ן��7�c�#���ġ���δU���,���6�gQ(���~�GM��uP[�}�K>��X�+����	υ��R
\�����TtN��y=SLE����CbQ)'�,@C�Q��M�*)%���xŒ�ϣ����%��hG��pi�6zU>z����w�����/)��4�ס8|T���#�^M���[ ��JTT�Z���>=��jB�~��{�]XG�U6~��;���]n�z����as�:��.��JN	�Vʪ�ӷ~��k�(����y\t_K��_�X:����O������,R:pH)��i]�Q�1�1�d��T\�Y�� ��z<��/���N�C�ei����;��m=�M��m��Vզ. Y�(�$
=�����|�o���wK�Q$�v���HP��V�g�u��λl�ͻ������H��o���Az�#�L=����E��N,س�]��|�W�`4z�Iۦb0L��A�R���?sѣ��VLl�9�ev��,��P�M4n�G�w+ˍ��R��5����e}(>��W?��
���P5Gy��feZ�|Ts��f��#��]{1��i_��cƪ���+.������)�ն�h8��F�#�����ѳplJU�6bU��*�M�pˢ����֝|��O�,���m����]8]2\օe��*�����b����BZ?8��pܢ'?"�j�	���^�l��]�$U������ocQ�з0��
ʢ/"|t��8�o��i�~��@��!����Gu��R+��T�.�2z_��$�����1ɪ�����m�Q-}X�*u�=)�WU�$�,��L�{������%���zh>�B�J��y&�ݤԀ���OL��9����­�D�6�sa~����#�6�k�4�id���O��(��c�<����r��R��^5�QhӖJ(��l�-z�nQC������W���zJ	Qreb�]�Аа�H��h�M���8Det0���-j��0��@���M���#,�a��Y�voQ�T��]�wL=UvG�Jc��db�ެI���
��QpJL�?�����ǤQ�ԅ���(��7�x��+�3O5��sQ�5��Q������\��C�K��0E�D���˔��yer�4j�d1@yT{��j�ᢌz@e���5����4v1��ϵ�%{k���pQ�*p���t���(')��9��\��H���i,$�M��ѠZq��ӛ�o0kɸ�l��7��s��˗���+��["�Za4�'l'(�-�J�q�a���������t.j��o�ꈣ��?�\)�F.����X\����oڀR�)[k��
n��9l:l=���,Y��%�"&̄9���^ۏӊ$��K'�n\Ç����|=�2S�tv&�"�-
&5v��<��D��f��9�%��5����U��qm�X0���
�nԆ�-�%�~����J����������2��.z��J���z<�&(�"g�E��Z4j(�N�A��
�����?�j

;E�QM9�)s�K���]�p�]*�۲��EI�q��X���t�2YE����9ы�ҬcqQ�2���Ǻ�QL��m����_���au���h�2��b54�B�$"���җl�����q;s�ZɒԻ���_�F������Y��9��=׫X�p��f���� Vq�o#�Q�_y�{�(3_+����o{��آ�8,�M�_%�k�f4�KQ¬�.�E�f�9�e�@Z�qA�����!Ң�q{�ev,uy�$=����(5�qR�j��Έ��cW���
u7vY�Pq��T�Y"�ïa�OgUڹ(�\&�.DG��d��+�m1Y�M��'�LBh��v5���t`~}������4�͎��'" �o^���4��դu�G	�`*���6P���;1� Q�u�X*5TȖ	��>����Ox�k�I�����G�4��>��� >����!ͼX*�jچ>��S�Y���k]��}�TM'�8t���L"i�b����T��C>�[��\<;��^J**taVu�E��]�n�(5�'���*�;�M~�\�I���T�0���"��,�F�]T�Hǟ"�@n��~W�cF>��p�*ֻ6V*y��f�*�Y�ڭ�������oW�d���hk�QC5���G���C��l���߃�{|TSI���Q��LD���\�3��H�K��ܡ�D\8��:�#�����$
5$0X���|	H�G"=�%Ѩ!���^ޑ�)��[Ԑd!����F����5��7��Q�!�C�w��B���<���w�r�$�C����0֣�>n����<���}ӏȠ��ra��
u�N�?���@�v�kSl_5G���1zGdQsD�R[�Ozwz��Z�%�5f1.�'qێ���F��"�$^H�6Š^<��k��҃����k���ʣ����6�TY<a�d�]��.C�ʋìk�E�EV�m�Az����&��\N�Fj.�F5Uǃ�@��|*�д��<�ʰ�g����x}��5������i(B��h5�%��lM�(����=.�Hc��NM a  �+M�^g���MP�r�fN�E�M[)�F!�vMK��^�-)ꢚ�fd8�ϫpV���4]+.��hp��7e,�������3�U�\���^?�omޮ[�8�vҢL�idU_�ܡ���h�G�$�K�SU�4�L�ȏ���#�����C;܄�_\�؅�{�r�,+�Y��d�]������ហ�{��j�g�ZK3��F��(�dtGj�7H�� �տ#�pxR69������ꬳM�ࢆ }&��Zߔܡ��>d���M~墆  �(�1�a����x<>G^�~&����|�bT3Q^rC�QC����ǐHp�̂F�+����/y*jQMP?Yq�����4����ǄqK������-j(>Y�\hɘ��E5��8�����[�|�bgL&�qQC�Ɏj��Q3_�4�?YqB�HHT|�5��8�--��v,\��S�"!X�&��M�]�P(K���R�I)]T���@���B��"���� ��q��EA�Y�O������j
<!(s�%�mK��ؘ�9�j��Gu��孑��W�@��i��)s>��&�'E�7v�uv	/���]��n�:����'!��w�t���$]���q��ڧ,3�4�]�14پ�rd��0���#�Q5m�9&j
�x" �uݣ����sgmݹ��q��l=�Z�44�C�NǢz炴;xQ�����K��]zq5͢�*�2Ӫ^��6R�ll�Ew��Z �,��P6hAI��1�йI�]Ш["��?h�$�!-d=���.T)�S��#�<�\.h��us�����jD�3��*���� hrfy��]�"q~S�w,�k����L%=U���\�=��dG�<�E��K�s�(�7��{�E�*�P+�T� 6�(ǥ�͚��(Q>ݯ��Ad:b>��6�8�	�����k\s���уO��X׳	��魡��8�Β|�p4뉴�<&��<5�3��X�כSP�!o����#��{�ˢgk�+��~�S�1�;T��B��o��[����JrS�֞�\_�u��Z��u"�A�����"B�d��۹�Q��M��{����~{��g��������u�G{0&���]Yn���j���ȳ���W�w�v��hȍ>��N�z��-z�����G��ǈt�I��~l�F�����)\��'���2{�^jV����)s}t��3O\�αM���ƫOƭ��;'�#�R�/��P��*�a���:QT$0o���n?�s�p��5�'}v!2�I�(=ů`�mI�GRFop�:�y�m��`eC�Nݢ�I!�U0x:�Pyծ���k�����t��G��B�����T[݈������x�).����*e��|Fׯ���)�ȣ�c��[�E�d;A%��%>��*���8�4��-�n:�>�)[�x��"/�'=��s��f�#I3�M���\u�^9�fk�]��G4d�/�������uL3�2�r�Ѵ�Ty{L�y��x����5�y�p��:��$�o��U����l����D
�G�ۿ����e\0nC9��øC�
�窪�� �#(����&'ey���S�C�G���ӄ'~(2����衾���<����:      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`      $     x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�      &      x������ � �      (   �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����      *      x��ZM��8=��B��,1D}�oN��xӽ3�b/���Dd�KI���oQm�ngX����k�"�U��H32��j)V�\w�#Q%�Y�>��]��*�fi�0��C���j#;Qu��up۬�3cc��1���ڪ���!�F�҄���~+�%�P�JS�a�y�<�}��F�J�k���j��Fh����k)G-P�K�����":��(��9�/`#o��}+��������T��	�)�M0o�h���<xզQ�Z#�"���嫩������֣X�
��㖯e��d�N�R�40�脖��੒��D��Tn��C�.y��{�I4~-J#��E�dW�ưE)�Nɂwתi;�W&~'�	�0�R�k����cI6¸i�e-Q�Ҳ&GV�n�𯴐��q��cC��|���t���iD9��Ab�ӿ�_T#����������8#����$�E�Զ=|dr��5���Ei�S/��ť����&[8�a^z4�W7�3�g_O��5��Rk 3�;9�����n�jP��cQ%�y��V���7�� ��(%w|���m3�-*��0���&f��;�7+�c*���ՠ('�\���Mq�Ҩ �;(hT6~.4�-J��:Q���ka�eD��t-_H>6�bN� ퟍ�/|%Up���zH��$'�9hQ�S���7ޯJo�YM��7��0a��pX��	yfތׂ��)�1X��	���8#�j%t��W	��9$�_�KT),J����s��6s�,���9SI^����z#�X+���:0	߰�>��҄Y:�nT�]Y��Ci9:$]&�Ŗ�τ��Ci�������3��SDh2wJ���Zv�`޶0C�[�ɔy��ݲ����>Xg!�=�IN��)�N���Ǵ��4)�(0�_´���:/)㡋��[�������uRY��x��4<������)#����>"4�l��?6�Z�/�%�iL��6��:��4!�YI/g�iJ���oP}�Dh0wU��khv�DXmp(MsH~���^��ß�MH��k8Cc�����@4�<CӢ4ɓ�$��S���:�xy�д��E䃄6s�{�"4a,J����b���-.!�Q8�7�١9�s�ė
"�㵷����������V����K��Ei�CjuЍp����`Q�A�d�/':�8��0���Y�j�Ein�&Y�V���S�`Q�C��/kX�|���i��%N�5�A����~���~��:�{ℌ��*
�yjҹ�UlЕj�	45lf�9��棩��$�L2������~�jr�j�Ei^���{��M�ʖEi����Xш�ڽ��M�������6/�jH��7�6!*`�[;�1�8�EJ>A�5�|+�-S3ʋʍEi����Q/&����|�"�Q�ݳ�>��f��&ҕd�)�Q%�(-��_�)�5��O%c�+}��s-���5��2:h��X��4�ao���)��W�x�1%����I��I�ʛEi��;����T<k�"�W��^�v��D%3q�i۷7�rðd�F�5��c�?T�T�-JKHC���ܽ<���h��������W�5G��_����f.8~.���C�ߧ$�l&��4����9��\	Yhsq)�|h��[�n�2t����6�n��F�Ӣ`)%�}��4=!e��f�����w_	*��{��(�*��77#�s8>t,�ZE�6q��aq,�C�U��cL�Ǻp#@����4R�9���\�qp��~3׆�mQ;�z������C*=ru��:��W`���\a����c�ĥ�,&��ѓ�l���nĠ�}���~�y�C�6%��\��>���c`d�~��%�4���?�N��MQL� ���}i�U&��#�J�&�hL	��M�>���_�����fJr�S��ܗ��T���U��<"������Or�Mx-�������Y �]��,=�v�`!&�����g��@�A�-!����Ne�XM�$�e�+�tA��������U8      �     x�}�?k�0����St/9t�?�<�])��E�MbH�����Q���/<H?��S�`�A�����6����w��א؏��t�ێXb5���-��E���k4�����<�2nS�)6�QuE1�>~}�^��ΫTUQS��6䅢�׫+��S��)'��T쌡F�׻�(^R�.�4m[l��2�}Eq���0σby
֩VUQ�j�Ӳ~�MJ�Bl5��(^��I֐U��"J��T>S,o[��z���!�/�d�`      D   &  x��V]��6}6��
�ǟq��YB�Hh�վ �w��Uw���q�	�˽{	�x�ϙ�3�T9�������mI��SJ��*�.Ԅ���t,u��������P�������g4;�kΤ�:h�E�{�O��H�T�4�V���P�&PkǴ�à��T�T�sA����~Ps��1�2��^@-y|��?��V�a"Gp!���X������Ƚ4E��.ۉP8��\���e��b��4)�]�?��|�W4�eEA���d���i��}�~/)��q�9���]R�#��2Fj��&��L}�%Irp��ђ��s|:ѻ|ě���n�N7x��%���Þv9	��뙯�&���Rh�}Vk4.�1HR3<�����1X٧ٔyU�ėZ=мLs?�G$�Ӭ�?�i�|*[ʛ�H�r6�덧�&�i��e��X��Ӌ�+Ӭ��4��Ѻ�4s���_VyI'TqI�H�*��m�j��@�et�+�'QP86b)�3��r��X*4,�x� ��a�֟c�3�4��YM�媨�gYM�U�:֮h��%>�$���b)$�(�i�z,���/gˬ��������j��D_�a����@Ŵ�g.0D�X �bNt,���]�*���꿏�|���r,ޭ��ҿ�I^%�z�!ܵ�����,�Q�Pxޜ)���Vͦ��j�������VכuK~]����w�2���"
y���3�q���}�W����(��f���7�>���OzJ���b d=9G�'E�-�""�8�����B�8����dx=û�O�8�D��?�����4�j�����~ohS!ӥ/�k�����(�r�����׹?��Z�$XD�[��΄��UCvNľ�)�G��}IT8*LY���whG��g��+��I����|����1t�������U�;�T��4�)�w��W-zu��Uոm��Ѱ����AL�^�M,�Fx��_�n>wK�q^㮜�h_��G��.�g�����!*46���T�!��ajce���!�֌. ����>��h�?�!Z      ,      x��\ˎ�]����|?��I�dc%@d��ؒ5�%M )���T�o�n�zHK�G0�3>�G�Iv���a������ǿ]C��?������˿^�z��=}|X����.��|�&���b�u/ty��Ÿ�.W�N�����W����++����@aB��_>]sɒ����������_��1�&^�Q:��H�~���$@W���>c��*���_�}����O/L�{5�U9W"�0��k}�I�`w���.@x��`�M<�h�̯^+�w��f)<wY�q/D���4C��M���LC���Jf��~��d�?7���`���A��J��;I���g��m��
-���9.�L3cY\Q.:��E���dW.Zt�?Ң�V_�Ӥ�N߮KEa`�ټ_t��&�o�Fp��ַ�"J�fIq�>�^��B�;��Z��$��%��Aa���$SlvE=)��q79�d}�
ڠ�U�~��h� �U9�Sd?6���NFX��Y@&
�J�?"J�q�n��U,���(ѧ%�Izs%�X�n�E����M����UQK;`�7Wc��;wy1V�!�����&	��:��a����c�C��ع���晼׭����q�z����7ͤd��^ʌ�WZ��Rl�����br�#�K���� ���Ҟ�����ֲ�Z}�b��2J�H�lv`��W�S�uC�/��/K���ѭ��:�
Xn��n�c�p���'��`m۬LFi{��<��p�`�N�����رzb�-���t*�n�E��1~7�>�!]]T���3������U��U�^��Q������n!�_Z�$vd�n����'��:�3���I�)�*��#��Ի�Qr��:쉴�,S�䙽c�i� <qJ�r{���šil��<%�Y��$�m���~���&�e�Rf�8ڠ]�@�A#a�[R*3���F����b�9�(񣦛����uj1��w���"�:��+�Ӽ>!��#�ď-֦݅]5�D�-H���R�r��i�O��R�H~x��>�����O��:��
��;5
{���5�f�Z�mm{��%Q��2
rۨT��8* �W!��W�=��|�fX�dT6w.KD�I��񸔲X��S[������|�b���a�){t��(�[��kl��믯?H��9$D��%�8,}�x�n�-V_�W?�6�D>$���Q�G:���2DJw��e�ꨌ�GG:��ic@T����%�홨�7��w�b�=R�?�'�#�Ɛ���ߠ����3�R�oÕ4[�����B���9hRL�1�&�9C��L�ge�ԃ����J]�O{���:��/]TQ�.�ߏ�Xa���k�rn3&%~8d?����4<����G>lX��|���/ �B�=>>�kq!X�ǽ0�-�ĝ𖰴�7��L��Lx��ab��7�i�0�0c��FeSˎ^F�vf�xep��"J��J���0�㍡�����.�ď(�zZ��HߌҮ���(�#�3�[{�`@��D�%~��0��j�6&�'��f�2J��q&3��z*6Y�Jq &��ӯy�t�#�d[��4����rHyu���a�qƋj��������V�G�!K1<�����ǇO?=||�����k����ﻢ-�����Fd?5й�羝���e8�-s�<h��>Eig���z�5�Hwd�M�iỦODr���K>�g�-�6����"J��m�iy�굑\�HjOD�I��y���ݣ�F��]����w�@��!�J��u6ԙ�^�ݫBs�JY�-�u�-���l���T댏	a&^���)J�*O�{��b�6�(�c�'N��#D5N�]%~��đ�Ɛ8�l-]�>�X*4�ڼ���2J��2t���*EBR� OQ����/�4�����]Tn�Z>��#�`�|yj^\�x:D���%~��2�Q+u������E����;3��545Q�4�)J�X�q�Mծ"�'ݞw�(�[��8@n�����+ʆc��%~�q�2Xj����;��=~e��nX_x���H��2�M��<�Ծ0-��^����]{q�2n籟A�?��v����~�˽G����
�/�U�Jmh"�����QC��`�*�W��)c+@Di���[<ۙ&;6�[I�	���@�7
N�,\zA@�� ء�S.a�Ie3� �, �h�jG����.�y�-H���W6�?��k���*�Uy|���Z���yJ�ז2�ڸ/u�AY@��!f��Ӈ��O�?�Y#�����ʰ�Y���N�hY=ʷ��F�Cω#msA���P�L���pB��U.�v2"ʲ�W��t�}���ʲ�7�rF�p*��
���.?�d��]��v8b���?"6�L)�3Ԥ��bJ��ʦc�n�0�0H�=d[��Tl���\�W\�]3}6�d�cC���f�M=)����_b����4Pۊ�G������*�;���e�N�������p��,�u�� ,{�}*��2v#�X����[R��8��/ �ۯ�]j���p����KT|�Z!�\�w�&�wQ��Qm])j��)��(��G��Fa�È l� �GY���*+��8R��b��2�G�u�,�։Z� [��RDn�"���z� ��P�����<EY R�QuG���e�d�u����s^P��ѣ��c����4VR�����F?,V�>�l��S�Ǐ>�g"/0R�\�	�({"�R�IW
O~��6��Q���l�F�r669���F��*g�Z�y���(��1�S��6.��, ^ht�H�@�������FW���"���[FY ��DF��@0qmy!�, ^ht���(��e��(Ҕ�m����5(�%��wHs��H�����x���m���
z'�i�� X��u���>�9Q�e���iuC�L��"�`�iޒ��X���4(�%���|4w��� X�8��S�kݻke��qN����|������k�k���EY ,y�������e��"�W���	�FA�1�J���(��p��
J�S���|�n�t\�r+S�����R���*��|���_/?A��'H�t	r�cM���+��y�+g��I@�
�Ѥ}z���&Z����& �h�Vg(�����'~\�9C��GY ��YŎ��!��:}QP�Dc�S���U�C��V�"H�U��퇿����c�;��, ;0z��Q�&�ݦ+r�r���0�g��q���
�c�������ٶ)�, 3���n�Iye��C{Y�Ct����HDYI�D�5�rl�S����<��Dz�)W
zǳ���<�K�D��a[�B�.v{,�L���)���r���ߢla	c�S�Z�&�3����U�);�1zù���XDY �{ҍ���Zke%mQ�!�A}s�fR_>��a�U�9�Ҩ�`�o@74�.-��&Ex��s��H)j�N��Ey������rT+B�$�, �0q�X)�)1�-�K"�K��wS/��#|Vƴ{ �, Q��:<~b��\ڃepxn�]���]snt�� 8�ѳ�wx}�a�(�M��7
ǧQރeТ�#�J����N+k��BDY@�w;��|��8CY \��"z������}��"�������i*u�,�E�H�h|0��t�˜(��Z�C%SS/Cv:�u׎9��FkR&��X��{Z!���m����U�j[Jۇ�Q^'���>��Dh��@�?Cyi	ck[����N�@���&�ȷ��f�2���F��7
�h.!�Kz��M4Iou�}w�/�Lg4�"�<�1Kܣ��<sTP���g
TU�G���-a|Xf��n��X��]Fy3:�m�����c��x̀����x�[�S���h��W�߆��j)ݱ�O!}�`�����U\�;�iI�`�z�<z�ޡ����/�>~y���wd�._n��x��B��˛�w���U[�F���F׭	��9��wGn�>���~�0~�Z�9�!4�G����� �  ��ah�(�#t��K3����**����>�������zE�-��Pl�������D�s�P
eκ]í��ך�ٹQ���ǉ+�:)�x�3���r�����n9E�@��ǉDQ�{���,$�, ^n�H��e'z⢎���@�G�����㓺�,��7����A5�E�؈��QG赾ݑ��S��>�Y�0>�#
~'W/o�<�� 8����Ja������re0����FA_8��4�e�%�x�Q]>>]�A��?||x���3iy�H�x_wFwG-����g�g�|�x���}����$=J0�0>�Sd�{s�r�(���O7����k[�g(������*��9De���s�=��J_yZ�@�&ny���R}F��D=�`���n�~O��*d���'� m��$с�(�}O���(�����(��M�0l�^p�|��� C}�k�����E��e�z�G;
�}JwWFI ��8�io,DqS�ku��p2}��
���5�s��Q� `l������)� ���D�7Yu��A��1���19�P�ra�HwM��PFY �P�r���ϝ��(��_���Yn�n���koU\�D@6�>@�P�p���C<��X�̻�~"&�n9E��c���Q�Zb�Hz��c����tZRP*vaIDI ��W���|��A��Z߉7��e�)���F���NE+-e�� x����'o>�;�]|Q�+� e'Ⱄ���(�4BA7�嫊i���:���m�����R5�;e?k�hƊi�gi�jbe�8!�LoA?�7�@7�Un�3�8�[�`��/�!z��eq5���:�������#;�������p�;�Y���2�񭓕�>L�˦�u�B�����%��      .   �  x��ZK��:[���F�G?/��.������Ol˄�p��(0��U�ݖ��,�Y��hT{����G��*���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$����!��K���mV�G<74�-�x
�mWq��� �T���?��=�r��A�Rm̃�k�)K+'�򊩯D�k��~�Q��$�َ窋D��N�eKu�.W����Ntl<�u@d[�M|M>��7K�G�A#hZ���K��MP�Al��4D�"�KD�?��Z쮵k��hP<V��%���W�oY�ڕi��K��YO�Ծ/��Ij���)��5�#"H(����D��ۦ�J�����x%�#�CX\��+���/:&*]��\m�E~�Dg�K�n(�iP�Р�P�ei_�?FY�|���Ϳ�ȱ���NmLtF����"���o{NגODOh��uL��S��`�hv%�]tisC�J4B��&����K|w���U�kߞ�`*R�/e�"��A�������Q�_.�v3��!�3��V�L
��k�qL4�E���~�n���i�n��h�
��6p,-۾zm��l#4X�ݞ��Vߺ�}7�G0��}̃�B��hC��X�i����vK���]ﵶ�C/c�3�!���kۼ��	Ȑz�:u3Y��Fh@�����J���M2�A��^���+�Mz��k�ݰ�u4���n��S�pZ�>�H�����C+�V+uHuA2d���{i�K����nD#4 EmHd�ۺ&�:�����",h��$}��Dy�z����`�[�|�ɶr1���}�t��������`JL�ׄ�Jc�3�kV�|�r���2xʈ���u�9�nhHL����j���T�'�E��z/MI��O�~BCj��+Qc����l�Oh�D�D���~�U�=w�J�@����]���n�]wm��i�_!�����]%j���e7%DBh>�H�f�̐���12�Hi�A$ bI�&R��D�D����Ȫ~��AĪ^���`�Y�OAѕU�4QW4���%�3JW4��$QC���%J�錵+�?���+���4QW6-��,�@��O�$�-�h�3h�P��$� �E;G���Ju$�D����!��$	U�q����c��v���B5)�(�zL�I�o�\�*
.Q(�[=.n�L�t��{�u�L�N�-}� ���Ի�����P�gjJU��
p��ğ��@�l땶8�{�s�x�6���ҌۑqI�N�b4Ov�	
H|61j*ǙT0J&�T��}�-ׅOt�>h���J�v9��h�N�brڝ�]19MӴ�!&�57�r��*�]=3q�u9�L�;/ݻ㵂&�L;Դ�!ㅪ@i��Qs�'��#K��*up�D���s���q5)�rN/�=N�LTFk��E^ͷ�Z���w~ܙt9ԜrG�6���)�8�A�*QDt�5��Di��� �8㹦-��q8����4��R��%rx	���=�����M��f� �����vxI�1�κ��Le9�O����=;�B��4;�"�ʝ�V��|��c�L��.b��F��Ϸ*P@�zӳnU�Ԭ�?�H�H�V�^h�.�jh���1)?=�z�׸3�};>2t\w�Sf=19w�)�ü�O���6W��k��1�w�3b�/�+.!&��d��G=n��rC�Q-MV\��	t�/dH9�l�a׌L���̈́��g�19����)����n�wU��I�iv���2w�ٙ��<ߓ3�!�ߟ͞Qṅ��Ψ������7D�_�L�Q}W=F5��ћ=��<ѧ�<��/;N�Ĥ�ܖ6Ok.�<Q0���=a�z��#�7��/Vnk��`���)����`&��'B"��2I�O����'4�]C��      0      x�����n�����WQ�A-�|���g�q����m�m�݇���["_i�Q(���E�:������?����ޗ�r�-�����Gp!���.���_�=9����Wt?Q������|�?��?��sk�%������+���X��B�p�ǿ����o����c	��������ү����/�|e��J��.�N�q{ubq���/_���R�4�� ��T��!��/���w_>~�Ժ����{����XKii�ϫ�P��Q�`�K݊�?z؊/��c2?>���r�I	�nD)<���� mzJ>��R�'�?���������_����Rd�
�I5o���L+\M+�P6��n����
�M�|Z���z�/����������o��������篜�b}��{�V7T�T����rO1s7y��*�����t���Kuq[ejo%������+��Ċ�4UElB���z��������.�Gݽ:_D�3y��˫35�恽#ua�gb5">}3���h���Sv�����N�QI���i��X~������r%�U�i��޸eӡh8�_d�>�o������Su�Z^�����C�X�Ug�h��]���bJ��hEl��5�d,��_��:T�?���?b��g�S���ÿ���~�4�w�z��|��x����>Oܻn��Zz�Y��l��;��R���F�6���\�K��v�N�iH_�<�eX�����ڲ���U&�-yoӣ:�^��6e"53���	b�A�掉J��0�q#&�Z��b�L=u�T Q��B3��H���~�Pr�=VwX�U'�i`�" r\�4]9F�:�NRuJ%S8`I߿�ʊ������v�c~����z�1x0.sa�����=1i�&���u�Zo�E�\�u�2v8	T��� ��[�J%���Gqy�N��+�����-%��a�kN��b��U�B[ղ�+��9ruO�Cu4�#�A����(4k)E:u��4DQ�B1_j��:z/ǟ���P��B���(-��?��|w5�*��F����oޞ����)J�z��E��ڨZ{)xo�]��*�hr��� q�q�n^�[ؿ[�.]Ǘ�}ڗϔF���:l�C������B^��_l(j$:|r7n��6T��ؕ��Ef�y� T����G/*����SN2�8��fcuV(���{�J��>n����	GO�$�Alob��B�K,�]f�J��Y�n�N�Ñ��")i��a�������4�r����G
>�z�z���Ď"%N�������as?ʻB%�܋�C�/����������	�u��Wgc(N���Ñp�(�1�]���pSC�丈�0�k�ކI��omH#Yh	�a`�G�7"��?�6��g���&�)0�� _���ͬT'�	�섚|~�^�22}j3K��a�=llA�[��\b��yiL��0�>g҂L��,����J�3dI��=%�2�N��p��蒢!P�(�Fn�{��)IY0e>����#-ŵ�(�%TeO�P����nN.�l�
.�p�?��,��j< ���X�z}��"yU��k\��c�).)��L�'<��(�/�QW��]~�2�:Qq��FJ���s+*2�'��juGt��N,�a���
,�:�y��l4,�����I)��2nT�N���~h�?���(Ғ)���
D�H��0�c����p���='�0�$�I�����o���);E�Ԕ=��c����?{猵ɼO���A��Wh28�r�X�[�C�*3w︅:t�p�>�!%�w�q�C�RU�jl��FY>��9��(r�*Wժʿ�Q0�2�ЁQ��(%�!gjn�"h���=T϶���?���?���������jzU�����b[pS���)8�)(o��H�ٞ�g�9������X��E�1EC�ũ8E���5*�ļ�/��I�B�D�s��-W�]V匃BJ� ɪF��e+�Jk� �qg��B(rR��T�Wk����m�MU�J�a��T�	3��(US/�N�l�x��Ӿ�5�,�D85R(�?�
;.�V(��E����)�'�NT<�:�V�}mϢ�_9����\����/�LA�*C��F,��vu7�Vo�B�2!��T�R����[��Qt�W����\�k�G6�wR?�DwUr�nH��:�=w������\)�1����&�^=��TH�)�DCR�P'uX��)�7�(��
��ԣv?!�4%REw�M��<����Lo4��0c���\1f�Չ�CÓF���$�<D�`>���VX��Ծ�wi2�V�i�M�[�G��t��
�R�v�ժ��}l;Fm�>o�b�������vWtR+]Y��ČYTߘ����)X�l`D�T��)�q��9l���fcĮ�ŊrY�h�k�BI2Ĕ�m��3�7iC�&bN4 �S�&e��0�'��C�j�pס�P-���S�����Ï�7 ��g7�m[�����=x4��BJ�/�w��x�"f������܆C�zH���à���%�J���X@�T���)�c���W��m��C2>gۏ��ٔ�C6�Q�Ղ~���C���D����^���D��1rN%� ��/O�A�G݃�~3@J=�=aT�O�'�[��6Q6:�'��&��Ҿƫ>�������Ug�Fn+�h��*�W$��Y�'��cWէ�'��o ���8PZ��vC�LQB�̾������T��
�����6(��}�p9���*sLD�w�W@u�T]F*���L�l	�TA����ǖ-��y(�I D�'/k�$�N�l�혔hTL�Gy-L�jU�7J�E���f���.z��*.Ke���T��U������i��d��*C����-��%H���wu7@�/�Rs�Y��>7��`B%���,�&\��.��a��X_>7�7��L�sN|E &�v^=���R��,f�8�Wl����sD(�WL�E9;|�q�>�B�#*��s*yϳy5G�B�q����]UV�n�B�8�"k�O
�VX���<�u�Ay^�CQ�0X(��k�A�,��p@)u��s"�
��v�������Dc@FŚ��R����WJ�t� �yND�qĠ�h�u� U�gB(^�}��wU����j�O1uP�oR|R���Ծ����B��
Պs�d�`�*g;f,@b��ַR�+(�L�=`g��Y�cfE�
3�f{U��;��z �EE��
�%;�+�4��� ?�j�t��h����8KKo�}WG��?� ��9�H#�g�os�/�$�XT�iBu�ۧt'�t'Vʬ
�1����c<�\Y��M�6��((�}��ނ�Ҳm�:Yi���Z�rd}�w�n_��b"���(!�qtps:�ݮ��Չ:��|�z�m0�y�����;��T�	����]+U�pJ5ƒ��bW��G�Xͻ��f���팑����M�,�?��D�ʽ��v�r���V54�ԁ���C��L��q[�?��dE�À꬗?�Z��
%�����ݻ� �'紫�	�1��fUӆ��h�N�9�[��.�te����)b/�<��Fn5u�q��:QyT��/�oj5܏{|AV���8�%s)�lN�~���9����:���=���FH�-�?�V+�~�@�^���d����Af�S��RG��I�2>���m	�it�ؓ��P���3VW�2[i͸B�NV,��h���RY���K�Q�9=F��n�%���˙�皠8H��V��eT���R.C�ls�O0#�����K-�~\)��jd�j��n>�K�}.����}C��ŎH]&x�RJ��<X�ZQ��bQ�M���s7U}�rc���Į V���M7��ݿ�*,h�5SLBII�,�����]Um�~ʂ�1J�v1�}e���A�-Ȥd�.T����܍e��M�-�̀[<�ȼ����
3a�ս��䃆~b��!�59��Tw�o��ʅ96۹�\�K6&��=�h�❲����������nv������{���@�X@]��V.#��E��
[����=}TU��V��ˁ�`7��T7n���y"�O#{����!k    ���cI(>��Q�8�hO��ZSU�Lw�@���+�E��װ.Q��W�$Jee�}�[M��(gv���Mݭ��aT��� *q*��P���.#F�ZKwEߣ>�F�ou�V��ǈI9�Dj�S)�2=���l�̧z��~��`%�P��T�R�S���Pr�GdUU���/�YОB
�2��k��}h[�p�(���/���A�:I�V�Tr	�(����O�3[��V}.FP5�^a��M��:Q��~1;*�R�d~?YԺ�.�Bf��[!�L�Č�O�5�
�J5�fX���=��zB������(>h��F���(���C����0�ͽ�� 4g�MM;��(��%ꢶ�V	���*����*us��Pu���	!=5����D�˧�����ڏǽ�Jj��D�|��u�J2E�l��P�{EǓ������Wxk@F5؀RX:}+�N��Yd�[A݊�C�p�PSU����b��+~_��=N���=xS��J���r�c�J��ta�NV>�L�z�3��&l��.�eb��Z_Z��xH9#T'����m��u-��e�1hsv�*�+�F��/��5Z��z��Q������+E��l�B�{0�<E��6��,��'�ZYu��E�;eޠ���ƐMݝE��_8�����}1�A��D]�BfnC�%7H����o��ZUxk�7�:P�f���zә�(Lt�~���ƛ����%��H�ЀS��x��L�f,�l�94�R'�p�%y���qVa�78>6	F��]���KC_*�Y��p�-U5_������)�i1��S���i�-�
�P���3}|6�N�Cu���xG"F%�d��
ՉjWT�&Y��j��iU}�~C�@��B��mY�	W��n)7J3�S��Q��|M �Չ�Tu.u�����ǝ>��������.,?���m���R��R�\����'E�+>�ޭR��|�Agܣ0��6����/��rw|)n�6^�U�؟��GU-�n�¾]���2��D���������o�Jcc�9O��W�˪�L�@u��;��Pܑ�����qɭGު"�+)���(���cYu���W��Ax,�S�� �Q��=�W��"�.��B�H�V���:Q#��s1��Z��U���.���dMs�1���fYx�"V�>�j6@��n�sG�W�.ǔ�#��f���G�]FqWV��6Y+����P��GݿW�?aѸe]��F�A�9<�����ߥE�ۓ��Qwۘ;dά��h<J��-�C�� sAeh�4h�F��[�bRB��(�b�v��[��rg�=�E髃ñU'�^Y-���[�ҒG˚��穥�)/�>0}Q�v��:������g4D�wC��.�q��ga��l���>�N�!�`�/��۱�9���ɺ�`VjNM��Һ�����j�����\j�^������?�]���.j<&�y^ۤV4�2]x1��:Y�xx8�qT���5�l��Q�F�}���>��|>�8YN>|��UyR'�r�q�څ��,Մ�R�|�n���+Ax�MׇG����]�%�}��^ZL�ZUU��2&*�f,㻰|�VTݸ�*D��jL��7d�V�(�X�����K�f1Z�������zٯ�]Z5נl��3�q��B:�Ol��	�@7}E���ju"�y�d���#{iZ�U'�@�X��JS��O�d�k����f����@�[*�s}Խs�z�\��M��s��:�B�N��gV9W��3ߛ�β�����?�����x��>�'���Q�6�j��oFu�k�%s��PJ��tvP4��������Ȉ�t�Oe�y��fI����r ��.����!u:g������J���v��3�?'u5�9��w���-��;T��,�\�8x���B�:Ȅbo:�W�%0b+��d�i�S���E�8܈Z]0��Bj�.���%dU�b�ޖ:f­ȣn1
T�~��r����*�Ϸ>����=�R�ctY� +�XjiQ}��>�&#?��%�A���YvX��bϐ�Y��})�G�r�4O���Tm���["��ץ�J��%��κ��`��|���Fq|⦿B@�6�C����CRc�(�/� ����d��G���1�^�,V��y��~C���UgŨ�n#+I�b���3/�����bE*��Gn�Řl���B7���U�},�<~�*& �ꂵ��`��[����d�oox�5E����(>c��<��r��?��])�+��Pm�3���}|X�,cEW{�㳔*%�(�����;��)sH��0ȳ����E2�ۮ*�ȶ�~
��1�zs��2�>�8vUw�~��Ԍ�j�=R�7Nʬ]�1�.�vȯY۰�F)s�m(���=�̳au��hC`��.׺�J�rN��56�N��ئ*��
�%�@Wq|�<<=h/�����o��{KR��8yZ��MU�b1�(a	\���yY��Qv��{ٰ�X�s���QdX�O�<�d}X]������,�%{3ۆ�����`����$��>X��D��L�6*0#���[P�8K��LvrtW�b]n&X%����Y\�2��)u}1�S��/<�:�����|]����Um�ᨐu4jD���Db���<Ҳİ�X�p��|�wq~{��*���	%鬚�����i�Ŀ���5��DfQPzG���o53���W��8PY�,��2�1�M�MXn�H�N/��I�SNQ�8䀫m�jd��[���/~K�\ ���w�&,\-���G,Yh=��������D�y��a�ódg����Vݸs���2_�ƙ��h�MG�D��?Gm��m*G�aPq���IvU�+�#2瓞d��Ы/�����BJb3�E��d{2dp��Q��QU��-�ɔ��lGJ/�A�ih�2�B�s��J��)�Y��ё���ꁲ_a%��2�qę���@i�	��
k��a����`�pS�Fr�5E�:eF6���9ؖu̶��c��J�-؈^Q��n����XǑ�X�MOK�y�8�C~T݆��8�s�:/�ks!e>��G�;��ʔ�y��`���ldt(S��b�Jf~��b����l������y���a?��J�E�S�\��*7ۅ�R��z�u|AeB�����o�Ѳ�}_��e�Y�U5�.�#sr��G0�W�3i��l��_Q�B��JS���!T,\a�~u��ڼ|���z@u���Z:l�%�i�l���]Fg.y��BX��ރM���`�h�Ģ�� +J'
��z�.V9�=�r�/C~���:��V�^[����,�,���7�%V�xd��%脌1����qʹ�`����u�ꂕ��ƣ�f�V',�sLJ�N�eF�#��:ͦ|P]06F
Zk*�yމ�uU������X8��xqw�coh�;�r�NxW������Q�� ,�q��^vU������Ύa|��̃au����X9����YZ���q����U���7MT�{��.z�j�9�(�,M��$���;�.���/+|�@�N�`��
v3�
�vq5Wy���<���ܗ��D�}s�FUS��{�̏�l��wq�L���r�\�<�P�%E����ǖ}�ͨ�;�p���&��8�ڭ^����x�QQ}����/����Ŵ�ꚥ;���}j�S\��k��쭪��+����'�]|~-��ϴ��U.���?�+���{LuT���<��xs'�ɂ�e���`M`�S+�����q�2���T��.ΣG1�v��wq�ɨ^q+ju���y����oX�����s��<U�d��uJ�����\Fk��U��t�6
X��$d��jV�^�����e���E�� 5�ԥ�+,�=G�N&UY~��q�S<�j{_��]\
����u�*gU�����#9���5���$�>�������\D�ۅ)~ߛ̥�s���;�̣:YmDUh������0�׆駫��.ذ�D�`�~�U\��Yu��\���k-l�����f�'G�ɬ�`3{�Vb�Y���ToxR�4P�	�}�V�T�-@��?��O���b�H�Y��rE���]FMQ��X�'�(9��b�l҆Uou��;�.��9�*`q���#qŖZ̟���    �����dX�<�H�`Yu�E�b���P�	�)^I�r��"�nz)]I���a_�n]ԦjV���	J�KˏkgV~�(�X�~L9-nB�6na9|,�.֭�J�K�y5�W��b�Ư��"�qH��$���TM����y^�Ti�M��6~��Ƣ�7̊�ġ����e��T�:%��<?�L�R�f���
Vs�nۋ�K�Nst\/�.V�����;�������v^�cX�}̲{0D�.�9�eXr�8�`��R�.X��x���X��`ҾM�
6^,F(^ǌ!�NR�¢̝��K�wu��:E�X�Z��PZu�ή#Pb�r��l�qR(����mSk�ȰD�_,q 荧�DՆ�'��g�0K�P=���B��fF�D3D���Elwu��S�-tލ�t�;n��m����s��R�8,��ȣ��޵�G8�T1���r�������Cu��+U�U=��9P��=�v�/"u/��`����'[��d���w�;���ц��a�>F�(�W �w��h�UՌ���z/>��vUP�6��ꂝ'���;i>�%�	�e�ʹ�`��)�5��P3&������.�e�fX�'_���e_�c��*.����m�<%��U���`�/���Y�ǘp�^�6�q�#D����Wv����X�X}@mh�	��$��)� ����5I^�3!�.ƻI.��c���GT~?�P��Fi+��0^�0���aR`�O�Ue򼕤��Z�����.|�{�CכЌ���<<����t���>.�\��HwU|:'��򼀏Y�<hTՓ�9q�5�ZjG,v�����B�tN����bUvx�Mԣ�X��Y͵RK�����R�d�s�L,�j�f��ͺV�93��+:���`V1����l>�����2o�ݮ��D����43ż���&ܙ�E!bi��ھ�3b}T�J'H�F�s��"�������y�ű^��%����,ixk�^K��jg��.��Gi��u�_�6�~e5J1��︛E>(N�8�(!Lz��7���[8+��U��Xӧ� �����ڨ�K���I��4Y5�f���u�]4�P<��wR��͐��:��[Lz�(���%Jqju��E�J��%�o��o�?��U.����z�U�| ׌(H\��ϠԙE�Y���(P]�v��|_6��A��*�Y��U��� ��Rʱ��]si|t���d��쪚�������!��A��zUeQ��*bu�Z�G��
/1��HR�u1Fլ���QK��,!y�
��.��k��	�z˜���pL���֋ר��BK��+o�����U��5j���C�(�~`Cu�.~����SG�+ʛ��#/o�ź�U��u[/�J_N�A���b�c���'@T�1.KK��:Y�mx~_�w���Ҫ<.le$.�9� R����QX�2�7V��^#���U�B���,��@��j�l�
k�'�L6�tg��.X��"%�'�<[M�]����+��l���VczT��`|�Tw�o�+`��V�0^���d{���6U��v�eҳ�Fq��o1+���-�_Yd YS��P('F�ê��VR�����A���`�Da��E���_���:� �L� V�+�:�7U��>�����|rY'+�\l���!S����M�v>�4_
�}U�}W2MbR�.X>�"�
/]"ָ#+YS�Tͺx�����^���L!קDӊ���b��7�a+�s`����*�^��̪,V��ȼZ���J���T���7q$=��jT�>`���5��am�N�������VJ�ޑ�..x���vm��D���`@����f��~䌬>:��*E�j�|�q�h�O:��b�+�/�ψx÷�a���J�|��,��Byfiu��E�PS+�����Aά�bu�ʍ��}{A,9ӝ��.V8�ɰ�}	}0NJ8>�}yWU_��R1�d�d��L�@q���D�%U̚|��n�S�Z�*Vp7V�1�M*�49�Q�jV�Y)v�iKf����y�SN�b���
�)�U���=`'u��n#%Ǘ�m��*��N�<��,�.��m�So~���)�˙��P��uv)qTW޷2~��o~R��pN�b��%+|�`��Kނ������Uo,�\�t�wi|����˪�5�XXq}�\�S\�P��{T��a46o��wqi�	�,Ѫ��q6�X��lG��k*�J��̟��8��5=��8,%Պ�⊚X9�6]�G�8� 0�����+�`ߪr1��՝�bߥ��Bwu�ξ��ʶ��s��W:>�˪�չ���;O�K�{��AG��j����tT�-�YㇵJB5��M���e�;�׹���Ϟ��	�{0,�$�����G�v�T̪�������.�9���W����"a�3sO�b�#fU~��2'>��Yu��9�!�/y���SZ�eWh���:G8�
�b�)��$�I\�s|�$J�܁���	�顺X���Y|?��]c/jy|1�%T�⣈%K9��ǭ:�
��X���X9�a��r{D;�k��{]�oQ�����57�`J]����-*�y؆���V�7��b]��\�۰��rw����'_�F�Vz`�'�3�NV�z��)X���(�`�����4�u������z0D�.X��Z���Rq���*��7��cM�"��]6(��Ru+�<�O������$��굺X7���o��b?4u��Z]����Y�!���B��V��9<t��x#q����^��u�>S|�Q��xA9�P��Ş#BVϭӟ�l~�v^��6f�T5�',���*K�z:@�x�f���U5b�����Z/ۭ�\\�@�o�)��.�*�(�
��c,�n9�P(�KwX��O��d����*�P=tj�P���~`iu�����mc^/�c'u�������Y���>��[���]U�liW�b!v�#[�=�֯0~{= 9����7��Uw��Z����֤�R(.����W��H����ei}1�.��{Dǋ��: ˼z;�I]��� X!w�"��$G*pŔ�P�y'._�P���F��c�.��{�-�!gT�yB(7\��j��{��?|n0X�
�H�^�>�v�� ��m�e�Mg��PW��:��Q�;l��}Tכ����po�<��8Y�2aV'��|�a�I��0�y�m�ʹ�[լ���N�	��d�u�V�)�['�"n�,L�}�qG3M���u�c���;S���xoT���(TL.�`��9�l"S�.ح���Ǟ��,��Ύ�P]���'����}k���[6�,X]3��gX�Y�Or�_x|@��*O�/�Ϭ^�5Wi�E�����d<�M�J����ĞO�AmT݊�^�\�=�Z~�HFnF�o��t��S�.�8g'[m>oiaU�\�Y���cn&�u�ji�.إ�,EuE�*���dn%=�v���U���t��}��̪�~���d��XJ,�I�B���j�zF�'#�a>��R�ڧX>�]|�U�#�r�y�j_�'+�Q�c�]]�(0����=��Ep0��b%a�O�O��l/��C�Au��}-����E���ǌf6xW�}\���x�Β�v����z��N�wW��A�-~���)��kSU�����g���`"�MU��Õ�K��^��r7#T�-�X1��u2!;+�Ly���������RhBitA�&��w@u�ʀAV�4緍~l��$ �x���hC���՛3�Z�g�����,�N����;J�.��4�բX}��>�%��0�y��f�iv�)u�d�|V`�eW�)�gBx�ׄ�P]0v��b#w�bO��]��Mu�ҕ��)sĒ�|FV�Qu#�+�����7��%�Mը"(<��H	[���x,O�@�����es������"��ʡ�L�����*�i�a��#�/f��/�S�:��4����Ӄ8I�]��)eIf��>6�~���o߫P��u����%
a��*r��ag��g LNA�=aW�q��90�G�����$ů՘}�X]��:� 6X�b�4dZ[�^�O0�*� x  Ծ��!����	��Մ�0�̩�T�̎]D>jSU�&[�.0~E�a�7/G+Uud��tC���wa��3XBu��r�&������Bu�°{-9ú�)�f`�-N�M����êm�U\��
T,�`f��wq��#q��@�Fl�"_��ΥU>nIyV�����5fq�v_����&7�9|2X'�	�sJ 5b����S%󲃹>�N)Bu��d2����虷�f����D]�r��J���vsi|�/1g��hS�f�+��u�;J���Ύ�P]�vc��:˟��XJ]��| �x��!E0��c����������1ZV���[_��cU����J�cŵsnP]��| 9ϋ��x��g�T��/�`xS�o� 1χ�)���Ll��%�A���F~qo�Kk�Ǩ��b�Q1��/�s)�@������|/5�5<�1��V$���z奊g�����v>�.��P+
�q��4��nW��ym2\1�_�s+���+ǂ�.�@u�2�5Vl�J1��f�T���#bu���2y����0�HO��w@u���`#NXT��]�ٺ������~�N�M�#�Y��v�yS����L�{�:�<��{�d'�P��a|_@���`�=T�]a|��YY���7v ����N�݊��+X��)��|6{�wuɲ�,��G��M7{�I����Z�!U��n\37^��w�[1�BH�m�����J|J�,��nt��`�K����h.�[�N��c�A��Kқ�\*��7���u��E�EJ��	����FŪ�F�Y�G����swX]�v���Q��ɉ��.|l�6ū�h�o_/��ׂ�#�X�0��/xI'���؊���e}C��Q���I���PKC��#c5Gh��`�
����dr)��lC8�.X��z������J���.X�����vT��9��v�����Wq�?�V���/I\`��V[�������6�c���eG!�ʊϏ�;g��Xs�
�<X�>�O&��_d�F\��n�@�"E]e�A��v|�&�v���8xE��tb���~S�*�W�y��.���'+��wi1���F�@н`�{mř8�������z��2<�����y=����!�Y�\���*ܮj��WV�˓0��lǁ��*7���zd�QNz�c��R^k9�(�o�|�˒��y���J����=�ȇ�e�Q\���n���M;�k�A�O�<�`u�� �a=Q���ՏCT��D䦾U]�1��9g~h�J�'����Bz=�pW�3xʁS,*�~zX��Ŭ漢�H��+�� xWx�(0|�.�y&��
F����.�e����<��Do��>��ϛ��9?,6.<3IV�S`��B�,��9(�0�&T�|I�o�t،�JQau��[�	F�j�*��E�G2%.�y7���m��2K����{ q��۷���B�y�b��cu��ރb����|�O�����z�L�_�C��C{�l��v�ԣy-	��\ԑ��3V��=x��ed���c2f��V�ޣ�V�Y��4k�P\���`�UН��I�akf�v�5��f�Q���h�2��X]������Fqr�& 2|�.��{T~��@X�gȓ�]հ���|�;��m�hbu�����N�u�r5�w<�Yu����|��w�G�s(���L�cu��k�A��w��Q_��o3M�.�q�[X��nT/>-���,'u��q�;��f�ɺ��N��-�~�.�q�;��ٱ%ȳ��\�}R��ͬ��������V]�xc%^��,~$�qf:}WU<A�X!���0�qQ��^SU�D=N���D�qEJ����Q��b���{��!?��	�.�y�`��ʎX�{C��-��Z]���H���9K���h۪�us)����`��R�R�NV;/�1�F��m٠���i|�.��s4ϯ2�9��y�<��U]���&��{�z���ME�~:�`Qy��Q�6��h�D0�9UZ�|T+	0�R]p�r��3�ݻ�aY`8 X��[�(r����U�\a|BL�u�{�{�.X��_����4�yH�Yu���K��Y[o4���WX��l�f�AN�e܌Z�0>�O��7�¬���i-
c|}��UP]�K�xc$Ew�� W�~I챉�&��Xx�L��������e^C����T��Xq��k�_�=�VR��+�Cu��Yq|�1e9�^A�,K �E�$��+`�s`�X�W�<Fi��y�����/0~���Ad3ŝɁ]�����7�*G^8��sey�'��eS��w�M��_��m��X�I�BlǊ�;7��Xs<d�"���,�*>v\A�"՟��*�)�*%͚!)�\S�jl�elZ�0���rU�a��������(�G���-����
�(t'��lL
����k	zl�sַף2wu��<��!��2l��������D�A�ہ���fH2�Ƨ�m��ź�y�csu��(-%坝|�Te��<���·?0�_4Q霬):�R�FNglpՀ�[�E1��ɣ��iVFvaąb���w>`�vU�/�f[�.�Z%Aa�4XŶ�*�؅`�.X0܍�l��.�N�Bu����X�F,� V���!V��ʦӽQZ�z��..����φ*����J��E�$���֯�Ɨ+Y�����;RBu��L��o�T��>��s�
���(
k�5��#0��z���l�|n��/�5�}5�S`u���>w�Xu�FJ�����k솄M�,]Z�:���m�P�IŚ"T,�a��/����^�l��+WX��H�q��nd�"T��a5xu5�wq��q3�������r[��(s��fEP]�����/�h�o�Y���j�NX��J,y}�`�k�$(.T���
yG��|+_W�F�_]���y[]u�Ue��
,�<6�M�=����U��ŧx��5�`�������wI���_'w�gu��V�_��W��G��jqR'�8a�(g���w/��[Ū:=N��rl��P�����ヹ=�U�sC0~�q�R���`��XcK���vX����O(�Au��>��y�Y����0���^�QsZԭ�o�̛�c�$G����ZU���f��﫴,�f��YK�,��a���oа��%O$;�<��XMX�9������dϾ~��.X0d�MN�g�����F�d\ծ*S��㇝���`<��0L�毰��"�d���lB��f�����\C�6&�c���,���ߌw����൯�ꂥ;����h�.��+s��Au���[ɩX����!P�����+����YȲͬ���WX���&G����I]��AP����B�Y��ƕ�͜19��o5�>�s�5K���ђ���U'�M���N	g��&�)VHY�Ulxt)v�#_4 `|oaܮ�fl�SG�t~|:8okV�Q� �a�.X�4#?TGٕ5�1������5�4�;�n��X�K��SF�ʪ6�4�����z@0Y�zzD]ڪ6����X{t�y�M�Ъ�ٹK'�{�����!� Z7��]:�pg0d�^�+Q�U�ZX���1j�Q��y�0����!�So���D4T��/��~������i      2   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      4   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      6      x��}]s۸��3�W��޺�hƙ$�8��3�wn��]�DK��uDIٞ_W��D���)gN�آ:1��ѽ��h(�2���������W������E^Σ�j��LJ���1��O��-�H^��$���5����t���X]'�i�'%��?ŸLX�禨��d�b<[�r9��X�R�J�za�W"��m]�4J�`��ݟ���Ii�iv?��`U���O@�ї�iD��ٕ���q�k`{��_��
���k!����Z��c}'�4��r�!��b*P��v�}1iA�:_>K%e���8C&��sb���dʝ�K�?�ˤQ���M�y�>���m�I���K�D�:ή��b�:c闆�2��������flT����)߰�a�yw�ըL T�*�vl8�"JD���@%���;z��Q�,� �c��� L~�d�2���]�~i`A��q��h�(��7����yMW��莣�?T�]�g� ��Z"6�΄�H�0׬TtW � �
�����,߷�cc�:���Tg��cw��4ǰRi���2�J���؟x7��>_nWլd���U�So�S��g���畉&e"��2Q"ݞl�����	e��	����Oy�qo_w&"�94'�G;ֱ9�0}%Rk%�����-�D\+��8�ؙ��\���r�/st�wt!�׏����jeA�	}(��5:U�^K�Rcܩ畆ְ��1��ɗ��9}��غ~���	,*����K297�+��ͮ�/�W�
l��:�ת�s����0r��H4X�o��V"��	��CT2��$*�FY4 #^a ���.�j�?>���:�q�J��J��)`�� ��B��Ӣ�Q�&V�Ī>i�1�"�)q%@<i_��ř߾���2��i��7��O�D�*	��J�����	M3w���}��`����hE�*�>9jE}�I����F��^@�4`X���/���+��u��\�NA���R'�������;����)2�ݺ��d�{c��FiiΠBk*�ߘ�T��'=��6�rm_/�	?\�$�S����������
�*tH�!w�,�=�x�3�vm�3�Tb\@^i,7W�v�[�ͱ3ia:�DB��I����L��9k��/Ӗ�*�P�蛜>��S,hǳ�8�g=���L��\�B]@�j��K�l�~7R,J�Ep��@cqn�%0��`46`Fa�M!��8O�N�J��T3���U�<���6O�#h��פ&#ŝN
IC��0C{��,�'��}Ggq�yz�>:�0������\|V�k�#NB�1�-�e�Z+���Xw�a,b�('�6��(%XV�L{PrX(����|(Ǔ`;(������A�p��`�����JLGqfv_>��V�-�P �i��D��E�40��`F��~�8e����t֎aW��� ��I+�l0�� ɲĆ��l����-�ZJ�c�u<,�������e�4d ��
5�F��qU=W�E��S2I6�$�����䕆�x0W��Ͼۜ��oV��>t����^�Y����}�Q�{���6Z�!�ʏd��M�aaQ�`��|qً��q貄G�l��}	]fd�'�����]��XL{�������z�)"1�D^ihLS�i��ϳ�	\���Нe��B��V���z�~i��8#�SO�f�׋��m�Bq�I�W�f኉Hk_7�!P4�e����˫vb=lʿ��Hm_���dL$�ԍ]��AL�`	j���D��k�	�ze�u��0əN\�UL��z��z����~��������رJ�Wy�H��Ѩ�nJ-�ֻ�>�tۖs�ۇ�E����p]`�� &x*�}�-o�ӕ��Mc@yR#��c��OJљ4�~<�48����`�rQn��g���4�R�k�����PćM<��w �(�)k��0Ԏ��b���z���Q�I��a�Z1h���k��� (X�$�ں7����	M��?-�(���t�A`pդ�o�5��q�Ó-���A�T��U�4h�4gL�r���aq��x�!��e0�y'���w�k��$ѿ�I��$2��1�K���9���,h���ö���S���������b�X9*�/u\l����u�]�ӈ�JRj?"GD����� ꫊��Zͬ�v�uHĄU��A��!�c����[LhgR�Cs߾�P���<��r2����'.d��eF	r�а5:���T��4�Pe~X���R��l�J#���4�	�!�������i��Bj8��� (֔��σ*�?�K[�茁.�JC�4���{4^��j4g=,���^Z��if��ndz�f���/�}�T���!s�9�X�fm7����C�)��O?���"z}��f��h�4���`�c������뻹)ƍ}Z-�{]N�=�ð�l���:�z �/��ſ�.$�����pF?�F�2s�r��Wt)O��|��/'���P�������X��{X��ҝ���M�#��^�����Mh�włv���+�=f���
K��������=����S��m\w�� �6��p�R������Y3+7��6N�ɬ��a�����}X����к��p>m��r��q@�ad7�yBnT��F�F�ͮ0ܤ��M�a�������R�n��R"��9[Ѓ3�~�C�}�vP�c]cbx�ܕ�Q��Ç���O�b��ʧ�r���6�����L�@��mZ�\Bn�sѕ��������Z}����|.ؚzA@Ř���5Q4�����	Ԅ�aD`-�&Mfχ�i���$�)_� 4�*�u:u��_ڢ�U��4�d]?�;�#v+�4,mu�t�_��� ���cVm��E׏����0�	d�\&.���4�T*�a*��$x�U��t�����X�4��B��r����U?�1���?O�Bw�s��_F�ey�����D/��T)�WGu~ﺋ#��&[����}ߒ��r�	�ۢږn�Aw՛��}���zSn@:��p�A��
��r��d��~�d%=�:�%֝�'���76m��d��ʷ�$�'7�ٿL��T�_��痆QAϛ:�9���,�>���u�ko�~�!CzBX)����W�mo�:�CNyN����n�?m��6p�]V뗆A�e��m���������2&��Q��N6�/C�.5� }C�4���[�IEK�H�:[r m�����a	�
Lޯ�f�i�0�TʬW�ȇ�D[��*9���4���d������E�Uw� �ۏ.k�%�AK��+�"EK��nAm]Px�'@Q,��4La�h��[x�f�/�u'�&��~���Eؐ�؇g(�ͤ�.���&\Lzh^w�Na��,�^zh9��J{q��0.��L�O��7g�r�8䒈r��LCT��et�W�BYӦ	�Z�0�<��w�=�ϾkI�'�<`\Y���Se��l\n���J��r��/+�{��aD6��?�3��[6h��OcڔQi�w���A`�&��b��+7�f.���[j3m��u�J�"�JÈ@����d5�F�jV��T��E�m<N^z�3,�~_��ad��M��( ����`��N���nZS�Y�6���Q��iC_.�|��]�q&H�/"WFD�9��=�M�������j��5ʈmfaPY���8I;Ai!8�ݎ�]�\���l�L+��K=�]��k,&cƻ*��4�**�FP;L��=^�R�����Y�
��N��PD#�?a��e>��l�ZV�|_T�]�k�6���$��MV�҅商aA)�r`��<_��$���YZ�:�����f��>fWځ嗆aA#�r�a)�� �'b�Dw��4<�R�{a_Kʄ|�Cg��>���nC��%1d��m���;ĖhҿNA���I���&29��6N����l����Pa�Zo�5jz����K�c[�Ì���gZwt���T���]�&�]Ns�.jI������01�4�?R����^�nX:�u�����L(lI[LP.�f5�X\e��篘��sgm�u�Ae�    ݌��0,LO�� ���&���0{������aX��ړ�Q��HOD�۲���:���i��s"!`�XrXJ��25~`�4�+l���� �� t�6e32�c�4� 1�\��Zx��l�b�O38!�R��@���g�(H�!�f8�<�v�+�r�yS~#�{D�P��DS�H0����x�i�>�W�߄�T�lk8%����v���N�(9����i�	������Bb��������wq�%T,'�O�D�D`�eڋϕ����>�͖����K�^Hf<a�C�d�꠯�PF�0���c���v.�c�d���P+{�<�K�6HD�r��_�0�r�}<-&㼎�{��]�5�X��+�˼�04�S9�]hr��7 ��<P%��+c�pʁ��`h���N�th
h�n��ahPr`&��<��˚�*�!��+C�i���h��g��`�K�J��`\���c�bK�ĒgM���Gf��Ұ������(Gl�N�AKV7mk��R�J��`�Ԡ^��g$��j��)��h-Ov�+#����z���z������|���:��(�G�.Q�Kè`��W���!�$�,�͖��>�� a�+ÂPe6[�CD2���6�����v'�_F�;y��N���W�= 	:s
���F����KÈ�U��B!�^PD��� ��S�Z,#���a`Щi8�-}�NbJ�F�8vՖ_F�
��y���gʴ�b��{"˝�:���[�Ci�������7=�=�gg��_Tx#�u������<b1��^i�)T�ϏZ��(��Y�j�����5r���0,���oYzQgWݮ$�<PYY�(���#�!�`k藆Qɐ�i�Ng��<��JÍ���h]e'��^i���o5��s���:�J����,�(���
�4�(�;�riK�h�+7*�f�����3u]i���o5Z�<��4���Z2�cu���◆�[K�4����<!7��2���C^���e��l�h=��y�v[�lu ?��,
t��j�{̔�qt��"�`��
͕�Q������+>����	��� ,x%�x�K����	X�����4�~��!XI����6��!�k�F�zEf�
E����C���e}��
�n�2y+[�S�R<�-|�s܆���l�CMLq8�$��;l���d��+�M�W�"��>'�WgҐ�*�S�ZV<t������D&�c�Zsv�>-ق���(��Oe����~�	i�D�AM�Ǐ{6y�R��q�;��������i�89�9�4��Ă���-�ͪ`��b�*��TIA����H�x�P�$)BbJ�c��b��INH��F�J�}�E�����(V߿w5�J2��ʲ���F�M|�C�0.Ψ|�C�j�vI:Uo	��ƌ���H�P0��>|^�6���t��� ��/�T7�l��-T���B�J��?cH�%��|Q�k�Y��IQ�1�����ɭ�0J`*ɣ��?����������̈́
�dMh���d������SX|�N�g��V���6
Jh7��K��`+[ewH�|�0�x��ק��m��,����&�!�[���Q*d�+Ow(NM�������`�+��LwM��)��ݑ�g��4���N�ü�yRT�̡2�2��~i���G`@�U/+��̾�u�����,�Cꕆ�F��C��z�赳��]0�T9ҩ���0 ,A����x\�>����l�I}�t(��JԆn%(���<��]X���a%� |��'��\,���G[�Tb�(yr���c�x��P�T�� ¿�O��?�W��^T�\Cű�X�fY����#,^i�g0�҄=<ԟ�3m�*%H�is*���,h%�4�&���-{j����HT�:��_=���+��tz�:��l��F��.�J��0�t|J���J�'UzӺ$� 5�	?��������6�}�∗��_Y_XB�I�ϰ��ꓦ���`"�v;W��Pӏ�ue�ԭ��1}�����ZR5��6��j��|����XiV	I���e+���L^����o�:Ԛ�yd��ꦌdB���ʱ�ƳM�L��LU�_L��|��m��7z�62th�r{�N�{ϩ"�J������X��4�M^}�m!�6	����O�ً/�mZ�J�8��J����'r[:�������\a����k�z\T��|^L�(��S5/�f�W<Q�`pɡu{�+Z)�u���n�I%L}��7��>h�Q�3V����=c��vS�Ձ��,%����x�q�����aUD3!c���;���'�ܔnV��x��i� *۪=��T��K��-�c/;9V7����ж&Z�pK c[�1���+����O����5��-��޶#W��hM����`t���zФ�""ʄ����� �<T�O�\l9�����	�.4Cǘ�e����r1(?�ŜkS��@'Zpܪ�t�1���q�B�p�ڥ�oj���溌'l�	PvBQ��,��J�#��a{W��+���f>�C���/��C0Y#�����Y��NK�Mnq�:`��s:����܎����?�iյ:��������q*���Q�ɔ�����i�5~2���T&:�����PV�X�Fڂ���?�qf^O��|U.U�O�<��T�̭W�o �p+(s�Uc��}]��Q���`Ԩ�P��,I<h�4�Spti�):�mb������8�l��
��jo�W
7-�Fxu��@���,������Ye��*_��2�^0ל�����0�y�M�:\K_�4��^+�4F�Ҧb��0P^ixƢ�C��E�@L[�6j�_�{���.���:�G�J�@�{�AP�)�KT��ߢ��$�z7��Y�Dڜ����_�y�խ��b
E;�V%ݓg؏ɑ�1�H'��Q��Q��i���N��U�:ʕ�A�>'����X�N�Ⱥ�||r���V��w)�_����~\܇��åh/Dj_�a\�/�	���Յ&���x�ad��p���I�gMf�>�n��Ө,O���i��4�
Z<��:��b��O��j�rYb����J��$F4���n�ۛ���޳ѧO���ߍ>�}�,�.���gA�)����g���{[l�yU���mA�_W��W�����<-���~i4K�]�]�f�8�۴��=�޹ /2θ�f�Br��q���$���t)pg-��|�j�w�Ibc8�|U��l0��b��F?���}|�ގ>݌n1�1�����ߣb����K�,��}n��/eH���6����'�|��������o>���M��}x��D�3%�����h�t�~���xrU|UyE�=1���mt��n�Ȩ��1����s�a��A�M6E�rJ*��Ao��-n��_���vsݎ0��w�w�?�~��v�_���1�JE�3N�.��zm~iX�N���f�﫟納]�rT��,���}I�\ݗ�R/��;�Z�!6'�ݺR�J2@��m˫}I�W�؇|�S~�}���^��}��Q��&��)Fʚ������e9�[�5k:o����vS����ݽ:���ϻ`����GD����_�y�.���j�)�;���궘�П��{3�3��g�rڧ� ��tv�@Kp,��>�܍؇?n~7��폯o>�*�+_n�h�כbR>>�D�3���J�����nPzR$�f�l��盫��M���g*��x���t��"�'���֥�Tțnh�O�Z�U��t=^u�|�8�h��>i��Vɣ$�%z[EW�7y����������m�V��X�L�MI}���ʘ�7do��_�C���w�rS�7V��� sSO�7���Gpru�u��6Pqڱ�nt�U��ھ����Z��M�T��7�4Ȕ����՘B䵻D�,^O�ƺ��&{&&.["��>��GAL	��v���|�'uI:�?=���O���-{KYI��q�\4�ɵrv'��cRg쾜Lf%��e�    �m o��o�})2�����\g�).EE?}����7�F����}]]ݼ������7b�ݸ�Qtg��BŜ4+�+-��Z�`oW��W�������>��\�L���l��k�l�U
wHt �甅�~�TL{<�ȗ�jY��%�D����R>��a$��/��_W�즸�_���٤�k��^��8�gX�g'�ovv�¼)ؑ�׼+��qS��u�M�ݮ:�fU��Vݬ6SKlpp�М�g�2Rr]�r�ު�޲�_���,���>��VmJRP�Q����ղ*�y�ߪ��UU�g�������'�:��������:�� �+��x�,�F�/�l�|�(�T,�z���T�w��?�P������f�?�sb`v縲�����qO���P�����z���Hѩ�����?&ur�֪��af��}�U�u~.\//tЅ��P.�|u5b7��/;��,�.��z5�[������zĿ@��&�O )Z-t�����]�_sLAʪ?��Ǎ��r�`ŉ?��G��|�_�Z-;����eѵ4Z��R��������x�����~�����<��Q?�s�k���͟\2�sia�%��Cm��m��-&�g��~�bW�c���O���7g�/���}-��}.�j��ە�.�jS-ǽ]�Lb��LeM?}R7��A��.l�Y|ZM�9�\ҋގ�Y̵�hʽ��Ȅݏ��9���{;���|M��J��u�Q�{���<9:���ڐY�m�l#t��I�^b��s*�r����l�k�新uw�x�o& �%�/V�}�6���$V�P򋰽��踔��*y�Wl��X�� ��+��օ�Ɯ�gKSJ���������^Yw�E�/At�.�=H���KC����$��jn��}��'��B	Jgp�/�`��Ʉ�����6�l���`�r^�7�I��o��u����.S�ˬYx?���O��
t�
/Gۼ��7�/.��7��k?�ɔ0_����|s��ݿ����˗"���~B��Ԅ��H�I�u�`�q?�ѿ���@`x����LVˇU5^���)��	����؁� i�����������;����2�@M��דb�^��j��0|	ȓ���!J=���#\}���}�������a\��8T*%7\�P��%��bTbR��;hh
	.��iYm70�e�b�3���"{�N.�הS�!�!����`����b?���ʇ��D��3��<'1n���.�zz��a�`L-U^�^\ڈ���ᮞf��]�9W���e��s�<��ҳ��F����߽�w��ݽy���+�|3�5�{����ׄ{Z?�T��@�J���r�!�0/X��ېr�x���
���8i��#�(a��-���gAd���զ�^��vB��/�38@qrY��4!����4[���v{y�,���uܽy��r����w���־c[*���Ģ\�����K��U�8���g!�.�z[�~7�m%�~��,����ŀa��[:pA4'�wܗ�l��fl��ܲ_�����^�8��g[rs/�|�熞�Ż͗�o��*��}����3=i֠��k���=	HA�Ү
���:/_����`*���^:1Uu��=�9�����#�ѣ��I,m�/�'/���{0z_����m��^ʖ�y:<;�]F�_+��%��gGs���4#���s�p�Ǫ}
Ĩ�#�w����4�N�@=��k1/�l��oX��+օ뎂&���^�����V3(�0P.�`�m�-��*��	Si���߬��⺾?���O���WՓ�O,�ї6y�6��>�v�+�M�b�����V�)(*:�pax�c��3%�O�X�ޯ�m���;����<���|�WG��1�s5�j.o�ݲbS����ߘJ	[:�D��K��Dbq�RXNAfl�cyP(�����t�s:W&��x	ғ��,YM�t�tQ����>w<����ǎ]t��2����a���rC���[L�eY8iY1'�#1)6urE������-��3Ŗ�99����U�.7���[��8\C�Ý6t�o�g�{N��9�t�Tl̾ۿ�P��q��E�p������CN��(�ι��i<�N:'T�K%^��ᅼ^��d�*���?������Mʯ�.
T­|*z�!oN�u�4�,d��ͫޑ`_��"vp��+ wڄ�Z^�o��o�ٗ)�s�[���S�dߡ;���}�bV���nھ�IS�Ϛ��\_(��jof%W2��7UW�P���JO�'��٪�t���#���/�f=l�ÿO��0� ���.�o����g���36:���v�`�h��d'W���T;�j0ܼ�J��O���x�k�l!n��\�7�4e�vX��f��5��߈��=�O�BT�/� q�$�M�����~�����ݧѧ�7�l</����e�Y��\V�r��6�`:�L��%_�����n�VT�3�e�ۖ�ي}��q��V�X�i�.��Вp3廇ߺ�5;�?Qoa�;�e�G�qzX�$V�e'���5a�;
g���T3k���9�����O�$��lg����*f�O�6p �NR�Ml�����1	݊�?�7��'�S1�*�]ݮ�(.�	�]�싿�F�?*:;
Ǒ��Ь9K*�]��_�[�Y�4�[���s���A?񴰯��Cw"]4�/>M�~i����I����Q��{MT�?�k<b�u�����̀��an�&}�-�r �4�|�i���h2}�B~���N�2��٭m"Ul U�v��@��C�|���ȋ��4C]#����_�:����3����R��-��­�EY�"V������AK�!:`o�����9Q�~]ڣ�-6�Xd��/�32��R̦ٳ�r2ϧ�7h��zؾ�/�!�0k�3N��j�t�<�9$����/'��z�?�&�Ų��".��`�@�5�Z�+���t�%W�=Ƿ���R.�R�^��hI������M��E�(��TS�����01�ᝏ��@��9��#==�S3�y�Z�,[�ǴЅ�i���M���/��U�6��a�R2����^�h��`�lJk��|��7kx�dd\��Rw�S��nt���?n?]]��ߍ�߽���22&���b�u/�K�̤J��)���H2pe�n�nލ��>^�_G_��}��N�e�y��o�ͺ��1�:���L$:�lw��YR�0p��3�_]�=٧�>�}��.^|�'6�
Z��M�=���˴�.�4&M.#�/��	]A��{�p�W\%��z�g�2X.L��N����&
�S�.�j�9$K���Z�@��r�u^�=痆��=-��v[��+��/׫�_+x�j�u��V�>�KØ40�lD�&�� �*�=�NXIb��!?�߰k��0,X�s4��������c�\-Eܻ��(C��O���ۋ~i')l�o�!V����e�ڀ�&�u/�6]"���Ah1b,r��-����u�����ui����DMU�`]\^i0��եB�R�x֓:?Ŗm*��
�5���!ek��	���"���G�+CLI��~տ&�����X�'{Ӗ���[>-(C�z��o�f76�((�l	ѩ��7����K�x][�w���>��-%���t���A����?��W�؇�]��h�� u�����'w��B�K����C;�:���ܮ�eEEʡѵ��M�*��!�����j�i]�0	�E��� 6?��U����Me���w2�Pn���>�ug&�*༭�K��;��:��:�S�<I��PvЦ&����ԭ�v�mй�2T��Nz�̒$�w��T�_�.�8%5�^ǄVG%�T��T��>� Ҷ��!(e�LT���U���B���˛��S�^��3�/�3�#�����|���^?�ֽͮ�����4��^�;���8{�AT�ʌglTگy��[A8��D_�6�e��~����_�4(�R�:�*ۃd�UY�!�HuAgfC�T_8.�w�d��a��6�6��R}��YM9u��t�,�Dr�;�v���q����j���"�R�T9�Zb�R71�� "  �^� x�/�I��dZw)4��m��޷޵Ķ�b��\����h����P�S�*0���鉲p�ߜ:����&iGW:U�Z��j�S{�|F��dڝ<m\G���i�x]W����fw��^հ�#���4tth��;'*G��7Ԟ�Y�;�&�j� �JIQ��$!z(K����~��V�<P�70��Z�YU��_��pS[4��C��j&���B���Pt#A}��Ac���z�����n�y癭�i��L]�P����Lت��7��Ι-��%�h&3C�kn����Ot��uOT-3��=��IsS�Ԃ����\�����>�� �؇��J63�.�-".��+�v@B?�Lk�
w�qyV�{��q��_�8�t9k>/��g�����^�h�2}���c.����~y�4�(�?�O&�݆�\�OIE�S� dP=T2����1�hm@p1�:�ӣ�@'�E��r]�-���uL?Ke��\DpX���d��G�~��Y�,T_�tG8��*Á����l�sevP�m0ښ.��L;w�L�ߝ�T"� ���ug���$=�#'�|*���������^�:�N���f��4�^����F&"<nۯ����E3���6f��{�-wS��m��]�6��*AW�	g���~iU
��ӟw�;����.���*v�_�V���˟	Ͽ�U�4)y���$�Է�IØ�@�;����S�����5E75I�[�Ci�5�f�t�ȳX�H|�~(c���:�`Q��,�zi�#�Ci�X;]#	N�h��A{����#��1.9T��J͍��쵲w�z'>v8���;�]U�X_}�h�G�i7�7��?�|sy(���6���ݐ�"�6HW ��~8�4��nxS1���-�''��k��T"M���pH��f1З�ҋ����
�Sŵ�S'|�� hD�?{�l(�g�S������ ]�u���^9 ��YJ��>LFD��QX�>�(��S0Bլ��|+;kV�pΕ��jZ�Gw�(D����4��

Vh�������y�e�ղ����ڗt��[Ŵ����~���&�Yꕆ��� }�H����=A���u��QY#(�@�y�aT0K��6��)����lG䦢g���ƍCS�{�����&aj�Z&�ef���V=FQj�h�y����p���3F�R&�0sz��9�]�J�>�C�蕆;��l�����~y�{�$%�?'q�.���+�4�=�vow������B�V�i([�m����"����`�`�F��ض�gz[B4��ޭ�V�I'8�l|N��|�n�ˢ,�lA���HZ�O4����=���G˧�1,j|ϟ�V�-��J�ɥW�L.�».M��vSz��Oֳ�vUȂT�2
�E �&9ă�ꕆ�%�� �ypv3�7��s��8x4)��6�����-9Lq�0<{�u�ΝW�gX�Sv���q:�L�FwDm��,t�T�{>�/X��S�'$�� K��6���-�zq+%�$p�ҡMEw�F�q�B� "��):����y���q�$��5���8�_�oW�tΑ��!t"ь6u~�m[:��}�e��aD�{SOn��P��@�1�JF�qѹ��sFR���AV@�L��1&��6���t���OM��텖���~�d�v>B]�,>c���A�z���RT��5�{7i�w�W"��0�n�^����ҝ�~i4
��s}����e���~�e)��&����8�-mwG�+��%�]�j��=\�
�깑'p�I�MkEa��މ���!T����O�F\�      8      x������ � �      :      x��]K�与\NQ������x'��;A���AE*S Ȉ�)���<(�	���Q�>��)��;��(�"?E�����y�G������<�����?�y���)������%ވ(q{���g��\�.�!�P������e	\���sGI£�1����ѳ�dJ�?�4����1�τ��GӀʯ0�ϔ���%�P��h�'����]"����SI��ֲKdPy��H.Q~�v�R|�;JR�1�L�)�|�2��CI�'o��S��|�0��CIڣgK�ï�U)R���l�(It����Q��m���g��Y�3�'�ʻ�(���u"5�x�9��y(���ͼ6�b>��7ǃ9Y&��A1zT�e�l��R�8>J���2�`Ĳ�R8�Y%�(1d��;Q�%�fґ�u .JE�H�1X������ᑂ�.�K�He�HJ9f;��i�B8B����Ge;��M���"��P*���Ȫ�KXN����{(S�0Y]EJ�a�P*�_r����V��:��t�S�/G(rp�fL.J�5�p�%�mQߜ��bq�&�T١����/jAtI��4"���Y�]%����<M<�<�O;jr�f�T�19�������4�uǘLE��4+'%D[1�C~�	�U��Հ�#���<�m�(ӐN��s�`����[�LLm8UxzF�1��C	W����O��WS�_uz:%8���G|{��f�\���b��GkcX�<\F1>w�Rӕ&����rd��CI�-SJC����arQj�@Jf���u�B/�bV���.Nf*Q3B���>��C�A �.��qq�b�Qy(5���.UaQ�~og�E���庢�����=��R��徠B����ժ�E	!jd�v�����'*%����rc��C��8TJS��k4:"6����i�"�ȳ�Nc��܎0��E�� #��	0��0X��q"�PB̋g�o�-���Ѣ�4��A/�Sd��tQ�`��a�?ݳ�qy�F�,iA�Ulo���b�T}̅I5(i0�xT؍�ȸ�AY�Fe��V��dbq�&T*�vK�l�Ej�g2(�0I�-��7,���2y(�0G%�L	�i8�Ĉ�4@�%�L:S�@��#4��{��\�M�䡤�f,b�ΨDCA��f�<�4،��G��T�a����֯�6��I�����'%�5���k��z@rڃ]-.Jk�b�y�f~2�����4֌���r�(,��AI�͈|�<�HP~Kkzy.Jm�j���)����`����MLuLj���Ciĭ&�=m��H	]"����VgDQ;��KdP�p3�I���`��`�%7c�-~5��4��&9�*�콺	4�&��$9j���`��[2Lg5ycKc��\�Fܲe���(Sie��	o�g�l�(ð}:$ެ���-��h2�$�n>3�Q<����#��ƴB��������e8�5&����!yL��Ք�W(����=�������@`�<TPy�{R�E�	T޳}���g��Iӄ�H�:��w������dP0A�],S{9�T�V.
&�\��4Q%��Y�$�������G��:)�CA=�`�O+�A0�[�,����y�p�tJ5�.�J�E)�Zd�T�*;�v�\L|��8�$l��V����5+�4�L�zTI�B���PM(i��m��l1����|&��f�)�iP���å����
%�<S�!e��>����M�I�������&gkL�";L2��^H�	D�2�qP't�m�Q�6��0��_���Y��� 6�3V;�]83.�,y(i&�b7Lq�^�c=��sQ�D8%���6k.���>���	O��n_���h��W�5
&<5�IW�~��k�47O�[�Q�-�57�䡤�y��ܨ�xK�3#"�墤�y�t���~B�3墤�y�mϥB���ձ5J��'��\��i*��%Mϓn|.U_��N�����I7>�*��@�٥2(���l���Jtp/��C���<�M�4���0M(i� q�~.�:6H���ӄ��V7͠��6 ��qҧ��VϢƺIʑۤ%M�Ϣ�/�l�O��CI��ĳ�Ncu"G6>o�����gQ�W�/;ʤO%M���xT��d�G�ς��~�J�K4>�E�D�4�}�]U�U��:�[��FI����&�
�(_�YU�(� P-�6�
/;w�Ov��(���dr�iT��j}��}@�.�1?��`b�����(iHu��ʇL̾>$-h$�����Q��{�%-h�|�1�!X�⢤���R��6kC �?&���3RI����_���x�2y(i=#��0�_E�ښ�D]�����}zL�n6w�\����J1�e�|�Lk�EI���G���'SU�0�iS0墤��%�hw�e�k����a�y=�;JZ��0�o�k����cBj�'=y(i9c��5I)2y:S�2�+�IO
��dB�Ѫ?&��VX6L����x(i�e�TF�*,�tGI+,;&���W�A���x� ���(��?�r��kܠ�U��&�yڎo�a�*JZ�Im�_����
6(i�'��g[�J*G�w�xc�4:�$j���4�JZ=Jͦ��|hk"�i�<��z��X�{6��m#k��z�C�;Bi�hZiR���I��]&��vȬLS�4㣎�dU��L%-h�0��i�-�G��䀤լ��gĤx��dE&�롤լ����5��CI�Y9��>
D�qrD���
_�`�`�����}����-P��X6Ś�;�*h`�Ez���E��9E�4�G>Qb�LJZb�)9Lc���j�
&�2��T4�v�<����M��2mp��5�@IKl9Y�	x�� ���5JZb˦u�vm��U��(i�-��2���tQ0A�yzsÖ���A\&��	���gbm-J�{(���<i�����I��Lt�'�W�1r��y�P�RdΞ
��$WoL
&(<{*8k'�d�,(<O~��
'���Q��h����y�ʴ�<��8�y�@��P�#�j�PJ��<���V����N��CIˬ��7w��|��4&%��f��\u�#��'��}����w���[,vD.JZ��ž�tv]��]%���b��iGC�t�p.JZ���{�4��ѧ��EI+��X?��k1 >.�{�	^�ZI_�}��{��\��䛫��/[�c���@J-�4��jZE����%-��:i�mg�'���5ڬ��N$/� $7��]��F��,�Ʈ�yzsJZ���z�R�#"x������hs5u��x|4
�~nf���hsmK�\�<�>%���v���ıHG�S�[ �B)	\�=ET��Kt�4����
%-��{���M���"�)ӄ��U3R�21�B3���k�+��n��)�e+r�Wq�
&��"�m{}ю���Tz���s���j�z"���EI��Y�윻(i�8례�A�k�ώʾ?t�=>;*;�.JZ��z(�oPA�z(`C���k��w��t�vDq�t���;s��C����'�⢤���J��
J�{��[ V(����Wz�.������ҋuU.J	����?���z���B/���7Z�z��=�7j���A�F�[���!v��F�vSvQPP�Q��TT{�o��{���Z��J�{�׭���RB �{�L�ǽ����\�9�N�q���u0W'��9��1��J�[_u�nj���^�u�`��`q�+�c*(=�Q��W}W[q|��O����F�R!��F��%x�AB�ި�S*�=�Q�փ^�	���ڷL�D�z�k�m��2�s8���1���Zo��|u�$�B��Z��
ZO{���_���
q�k�C��P��^�m���l���?����^�m�l��4� �����boԞߨ}-\m(�I���J��^}+��-���o�o�`�~�P;�}�r]9WF0ļ������UF8ļ�SA���}���U��5�7��|�\���
*���T.iv�?�BI��l��T��Yv��4��_�l������'�e?���_���u?�����5B?;q�lj��7J���w4m�؎�j"ɂQ��Bj �  ��R?PP���0^��� �g���cX��vYM�_D�FI[X��s�|�� ��W�t�`Te�5�ɢ���~T.�����3u=��@����V�ƴ�w�?�BI�e���'K�B�{���I �{��g�����	�T3��
qb#-o��u��%m&��fTۅ|�����QŽп��s�Ƨo�uL{	��Q�gJǘv2�D�Ӯ@���ǻ΃f���ɪ��~���w��D눆e�ӄ�R��8����^
k�*oF���1��F��/�������;�է���p{��ϴ�1���M��+Řv_��D�}t|�u��71�VU�[UH�d�E|�u�"�M���a�e?�������q��1�7�Ч�:F�ިj�|W+UF�ǻO��u�j�]�۶�
�h}��?�����-��X��x?�	c��p���;��n.
*l\�z���v%m˒q?ц�.%�˒qAцʾA%m��qCњʺb�d�M^g��<sj[qQ��,I�a:o�KO�\L���Bj;��B���+���K�6圶i�_���颤�Trﭼl���m��N�(� (�O�W�e#�X�}�EI۲�ާy]����ߙ(i[�[�q]�^���l��Jږ%����zd�m6a�%m˒�	S�=/.��|U'&%m˒�ӗ��v��б@I۲D�e�c=@��L�
%m˒{?���WW<$�wQҮ,)V���\�����)K�UA</�M��<LLJړ%Ef�8:�C=R���CI[��Lzj_'!��3�%�Ȓ2�i�9o�47�P҆,)VO�A)�M&�[��YR��ҹ��81o��Jڒ%6?��c�iܭ�N����dɽa�eǡ�z�0=���vdI�"?mOg&l����6daA;LI�LS<��v�@I���Z���zs�ni�<M(i;�T+�m�F�f:B(i7�T+�m��͛�	%mƒjE~ڊ�0}#X��TR'i��Y;�m��%��A|ٲ�	�gz i�4O��*W#��g�P��)i�.e�4��=5M(i�4O��x"�ꮺ	%휒��rJ���7�J�:%�ӥ|��OL$휒�i��.f�Y��mJ��.��I�s�lO(i��D�����U���6MI�4�ƅ�zk�Q���<��gJ��Jy],1�r�%r@҆)�&Oӱ�N[����KI�4yl>;�eb�P�v)�&σ͢b�S�颤�R�'M��������n+��YJ��+����X���y(i���I��@T�>�sJ�*%}R�8l=�Ѿ_�FI[�J�T�_��8e�J�IT¤��:q0��y(isL�2��uwkBy$� /P�ޘr?d|�b���ء�L%m�)���^�I/9Л$���J�S�Ǖ�v��	m$�&�^���1�~�lcx�ƯV�L.J�S���v\E�d.;�.
�
�d�ο�6.Z4�>H�D�����&      <      x���YӢʶ.|���b�}1������(6��]����4J�¯?	(b�Z�o�[�֜5��d2r���t��cZ���n�-SC���	4χ�(��7��7�7?���	�����9=@�*��v���Հ�C����^-�:�ń�:S38�<��!l�V�0��c���!��������L���P�<l���A�OSbާ4U��O����:6Y{!���׉e:&�mu]�w��Z����=�D�L��͌�?���	=��`o�Aa~���7�˒�"�V�J	�a�g[S����Z�{1��������a=��|��?0�a F>L��̉(�Q����
�CK�"uD�C�xw!m��l?[/pm�ha7�����G�ѹ%`t'	-W�+b����h�T�S�,�x�q	1	U1r>Ċ��w�dO	��&�S$[��!M��n�����b��}��`��A��B�?8��!���0�DmV�,�1�2G�k:����D9��C�0v��.O����2qxsDr�����0�o!:��	�����_���D`��>R�90�����4p�lvq�粴�rh�G/T갓��4V��!��y������M�p,�4(A*>/�1.5I~���>i}�x|h%�N;�4z��$ٷ/B�B�6��b��lc20���w3�\eBp )��s���$F���cA�y���Q ��3�j3�JU�l�E�'��GY�K�	����u��
��j��{�d2���Zo]n�/����:$E�	T|n<����G�/�7~S5&I��4]@���RQ�%��)Z��Ҹ؍����nd]��]d��d�?�vЕ4I�%���o#�CC|��Bm0W�1���@-��h�+�d�[UFa@�W~��<gE���C�|�S@[k:"��>�.��@�:���g����'��H
�0�wj3��G�2�jvowы�)����h����D�����&�sl��NH�0�%�d���3)��2��\p ��|RD��f.�MA��z�kPf��igt�����K�3��t�1T�=���@v�����u�h�r'u�\��!h�����b(0��Por�������{ �u�݈=d�e7f�4_c�<<t]{�f��j���)1�q"�$;R�Gt��50dc�*���:�h��h�^�w�Xc��n���邍f�9!���N���g�0��/nf;�O��D���h�=���؁�H�?pkB������'Z���XFD"Qv�ѝ�j�u%b;Q���M����,�?9�{��J$9�c���_� ���4�!o�#��՞q�Ω�b�9�XNu���Ӆc���lv�ˡ'.��әٓ�v$��t���a
�o�@�rBQo��#��Ck��˵����3k���<�%S]��Ijg�[	#&Ӄ�;�8��ʸq�h�m���!B�7S���8�H�Ø-֌����(��".w'�|�F;��TnÉ����.I�:#4���	����@ �G��^���F�J�q]�cb׫*X87>lݍ��f�]�pK�р�#�FnB�kv��Ѕj)�_�`�ԟAv���n���q~�qO��2/]��GgR��8�6ADL�OA/_��:��Vn�#x���������8���`'��7�'P��m��z]"f� ���3S�C7�d~��4�w�������:´��G���`���'��NmГ�蛵?nc+�UI_�ơt,�-%+���z3τ�p}�����PRӁ<��|�	��� Ԃ(���S���|�|�d	Av�}�B��j]�4�\uذW����9�c	}��e�-�y��oT �(c��*ߩl���(��s�� ��8�B���gL*�Iqt��2�m0a��=���8<�7�CS�`�]�#�+�cM������f�t�{���3y�S�%U�+�� ᬵ΢����*{ٲ�.b�������:��0C�@S^G-�����Җ"$��P�#�>��B���\��.���/P���b+Ĩg�ڊ�xәxGaK�|ΐ����f�\=���;L}�8��f�c��`���~��`|�!q#�LZ�{����9�@�~�%��7�������}
�c
�� �� ꓲ#6�+�ϓ��tZn74�ApH������)��N�sWC��K��m�Cn�#�S��J�@���{��j������w�7	?�l��q��������3#%=�$���Ly�s�C^�G�բ�\ ��5u���f�Rs�2���rIa�M�?R�h9�lW��n�6s]�8N��ǳl��Q�Զ!첣F/P~q�e,�nC���l��~M>R�x{�쳕ACN���tN���P�w�v��ϰL�ڐ��u�������ic�պ��4����'b��g��
��4�_�ΧW��r��PE��h����gA��"eV� ԝ�����m��|h)=��\.	~WCc�C�{�|�b��,��<U�\�j���qE阴�xj��U����:�D���2$B m�����������_>�Z%���'
�8���\�*'
bI�����\J���%Zk�ۊ������8���TŌ".�P�G�Q���t����x�Y�tOxj��d��+��忹�F�O�����@ċ������ۺ�5���Z�S2G���������"��Xt/]���_,&Lf�M8���V���(A�8�7����Y�F(����ߩЕ�dG+���)�n"��һ{�r�:L�D�8s-�l�J��ɏ�G���`�3�����'u�!i���`�]dj� ��<�j3�jYd�C5�D���8�F�.�΢i��
��0�{���$3-�m�ǎ�K�Zr��&c�M&>�i����p��H}Q�_0S�r	�ȫҠ�f��i�'��i���z�qB�87� e����ئ���l��b;�T'�0�0� d�������d��` �$B��zZA���e:��ϒ��;��qڡ��6du�6W(k�ɹ��!{C��Ouw�,��G* ��� ��{�ph����>�	��*~aղ#�Gi��L��5�]��тB�.T�:���<Nusv�~2�
[�� 7���:O�$�&�][��#D��1�t{��?uKzbd��i�If��ӕ��������')&ˌ�E���
��Q��j,c="�N�+³}C��m�:�+���σ��]KV�9
�[���W��Hmv-]]��<����r�qݮ��A�P��z6��i|'ԢXB,/�e$���W�~�+�+�f\?S��-z�~�P�5�LC��$������C��Lّde�
t�=�$%��8�i`p��U��L����K@�A��@?�6���t1�"M�.�g��4��y�7�CW�x��Ap� �!��AN��&8G�""�� �BSe���sg�Eʩ�W1	b�g�B��UR�a/�&�[�l-����*5<nЛr�7E����z��d#�'W�ON�@�:�y�Ve��
À1�߫QM�$hl��6&� �B=i ��kȎ��0/`rOw+���
�[rtt�Zt�bzr.�T\H��;�����J�K�~���	us��=$_M�g�CL`�[;�>���َ�U�{�ϟw����tKtO
ī�9D'Z��#�n�����7�V����^��a
�豈��0^2���g�$Ep1�5�r��N�+94i�)�ݪ
��*JI�0�����l����TY�'_�yjj%%!Mͪqvꎺ�ث�H����bKMQ$CH[�"��C��۩�gE\͑� q#u�JsO2�d'qc�|�LTil�\L����ƌ�.�*�}�a��v�Xq)-7ԈǄ�8����,!��
�VrD�2)$���X��Gӑ/�a�LM�I��q�q����j)1��KMB�
��!�Ru��x�!��׺�n7�����?���B�=Z��A������,6+jC�ɑ�9ćbg&�һ��    :��&:�X3\�=[�*  5��!y�k�6���#�k���s���jJ6�-�ƕ�0D��:'��z��fC�	�K]���0�ˎ�eD6�a9�X�S��|����v%�(	�{׀���#ܣw���K�ұ�r�����i��%�r�T�}�܈�8V\<պ�E��v��!�Gȉ"Ƿ��2�XY�#?��(�F��B���$?d+ϓ5I3W+W^N��� n8F>f&s>���B���{$5�b��ǀ�d�n��*���B�o۵.��e5`�h�U32M�Ik;Z8���]<1y�'�ٛ���7����(>Ov�LMz����� �:Z:�BF��;|S3w��;e#��@T1���0�U@��BS��-T�\RstG���/�9�r*�#G��{[r���/r�i\75�Hvz�\��e�l�N�ThЛm�ϖd�wUS��fd~����[-��:�O�G#��C�]t�v�]˒�sh��T�3��7^j{�A�h����`$J @]h��V��Y�����m (���#�eL�@��V�����$�O#dΩ��Lќ,Į4�B�[�~�>F�R����Fi`�� �5��j��[;E��!��oA�Gj�٭d^;f�-�K߬m��d���~j�14R��<���<3�]�·}8Y�;�u'P��0D�����@h{`ZM*ߩ-���qj~xR�7^�����E����F�z��]���F]ȍ2���t�tu���9~^�������W͘0� ^Z�t�Y�6r��*+cG8��{Ix��$�^|���y؎}6��,
�,��ғ���!3qC^1�͊5�-�j_?Sڑ�;���xn/`�^/��]�ːS����C�܏�v�S�~���
���9�@ ���WTܾ�X�NC�ݔ�)_�9QBf���C `wV+}��:{��׼8(*��P��K�<1��3Z
�^P�$�^�N��89��VY� �
`�ݔb��8���PjSJ��)$���R��ֽ)������x��6[χ�ȯ���=v:CC8�6@o�n��х8�G��oǩ�XV�����I�j�)g�omZu��+��@���t��K�^z���j�{��=[�A����'gk���?M��e��[������`qǠZ����^�D�ք��,�! �eb̃�x�%�{����%JI��6,h�/�?S������1m�+�>�޸�x7:a�)�,!43Pp���-;Q��x��-qNNN@nP�1����P�u�xU]�t����� �!���,��,��� l�s?��}�QN�0A9�Q�f$��eT+V��u��@��>��5�ě�h䇥����7���>7Au޿L��8��[��+��}��t"Luq)���Nd���ъr��wOQ��$�x�e�}d�А ��>���2LL]��
�̰]����&Ϡ�h�Z��;[s$bnd!��qZ,�~;<n\���h٠HU�W�!�7�JW�/s�I_�L�"�:0�<����]y�+o�!��N����8Y�!!�B:y�݃��?�_I7����j��~�ʗ��7-Z{�e6B��:M�n-�(�hs��W�b�&`HtH�΃b�d�Y�����[�/�f�I	o��V|�m�?ǂu�*s ����ww�z�K���7��<�n/C`Ӥ8£�	;�D�sWJ�#3A��i=��e��d;��)�T*�o��.���e�,+��������%��W���=w�;K ��Y>�6���=�v%A뒩����N�yr��B�	"��6o�똁�4�WU�*����_*�,� ��\��;T��r�3!��m���1���1-�V�!�����é���x�G���I�N�+�7����A�t�����OԖҩ�Xv�F �S�1'����F�h�O."+�����37�o�2Ug���1y�]�S���i�����7��^��yͷ��Fƪ�z�E唂S7U���Fa���h~:�z�ȸ�R�4��-Pv�����dInW�.��y�aS��J���w�t�V)^ ��KQ�'�c��~�~uޠ
���,�����ٙ�='���e*N��o=X����C�s�';e��,��Ly����Ȑ�JM��Gܯ��>�;)M,x��)n)i�^����'z�	%J�$Q����Ú������~���=����R=�
�{�.]Pe��C��j"��i@?ο���R��������>�U)s�!y���'u�\Kh�&Axͅ��*ԥ� qG��O��<���z�;����+�>�{�͊/��v1e����tc�[u�e]��;* �N��}��Eo��`6āv��%/O�@���ں.�e䏼d���`�O�*exQ%x���H/����A���v�t6���s��B����SnY��f<��oI�VFI8�f�>R[���Mo�ɞ���0��(MC��	!�J�B�� �,金q�_e2��S"=�3��ڼAȔ�Lo^�Gj�C�RgK��6v�L�Ei��^��h�ө���S���H�������s�_�_�;�R��@�|�j`��#e�{)�D}����oZֱ��X�5����E�<�vz��SW�h&�5������9]��T�$�q
D��{F�G�{��F_w�U"y�m�Hm-z�^K]�9&�H�y6B�hϬ}�YN�-Je���Ñ���K���!	s��}�=�wg�}��SH���]�?R[��7�&�eN��Lt�n�d�����
�ғ,Zm���<��K7���;��/��=�@(h�#�W�I �W��z2�D`��Б�y�2���Ep�N���C}ᱣ�X��V���?��NiY"�Q���M����^�ƫ�X���<_Wa/����F��JF"O�$Ŋ����	�3�;�"���`.�.���f��� c�kJ	����=�,;��p�ͺ`?B�[�������{��B�Y����b
3i�[��K�ƒ�Ֆ�� ��t�9M��(Y��������҃���������0D?G����^��(ڷ%�ޱ�5�wX�����t������Y�316pf'�|6�#�R�}�`C%tDFZ&gJ�ߵK��CK�ao��gj6RgB�}�����Byv��D�>[��c-�(�J��$��S�]W+g�u��.�����7Љ2���g�/Ԗ���/Z�z�vu2����R���]H�r<Z�����2�{�A����(d9���p3ϛ�{�fZ���ڄ��������֪�Bҳ���U?�E}�;��8��������޵u9F�{։\�K���J�z�y�2���u*���7OU��ث���B��kcG+i�5̽3sc+Rّ�GO&}�Xi�c�n��F�n!�6|��&�M�Oζ�Ap��Kcw���_�WǈB�Or�NmY�ʋq�@���O���R��>�tj>@х2�&,<[���CwVh}�������˛hW��q�����ΣcBc���{[8��{"����C-Ml�g�k���L'n-к$��l��v�iT�e��'�ء�$�G2㑉�%���R��5F �͉�e����6�2�Q�*�D�~����޳ۡ�.��ŐϹ�t<p�]��E��������O�dpݝ���o�[,!<e[�0�>�'b��T�K��V+���*��-�J_]cV�s�B@�r-�����Z�xq������sE���oy���Vq����p�k�$;U:	� �&���j՛ٰ]t�q� ?��z��}?�n�9<�`1R�tJ�P��䔚�K�x�@�׿����s�E��bl�v܁��zռ���Ug%[{�#d)���=�@�A6^@2�����RsL��e�Zg��`)�\dH\�/�^�t���Zoj֝,�S��r�骉p�=Y�l�M�����*�<$�zdТa���{cpb�I}k�����V��@y��Ȳ���eUǥ�7�yn���ڪ|0��)U�{�=��:��̵UpRVV�h�g���V    @�E���A��� 	PBߋSs�w�\l-����7��lN��T�s��v e��>nX}�(���ɰ-.�c�+�W6YG&�ͤ��1׏�#r���R7�a��wG��J3�9��
q}J(JjrãwS�d}5	��m�@��#0��TT���Ί���pbq����Y�l/VV�Ϭ�)U$����a�����"fE��Y�y��?S[^I}`YO�yݭ��y��0Bl�L�Md�/�6����[�P�.IX�\z�h��F\��D���1�l~|/s|���J��(�AH�;��\�����$e��7�@�_��ϓ�1��~dDdw�ЕK�]�SށDW����
�n�B�k(�'?S[��-���܉�� !��\O�BaQ����x�̝�{̥Ɂ��(q�4*9K�����W��wEy��*̗W���4��-�S�j�S2'��v����D��F�! )I�DkJ���뀿"Ž8wtC5����Lq�I����5��Q�9s����W��d�r	��P����I�\��*%�&'[��ML�6�����>�J_� JY�k��]��h�G3^Sb5�<�K�N�=\I�v�y���d���G>�Ԁ@)���1�7Hg#��=���H��;V�ʣb�IU8������v�4�2���ֶGM�K�^ۃw	��X�S|�����7�K�Ɏ�]
q#���:�}�O7�wZ�;��y.[k�ߥ����p��'jK/�O����9�]�;_m�y9�ϰ�Ihφ��<Ê�aw���^���� ]����Μ3��AW���ə�/P6�uTkG�u'3��F)h�Z%rre��[�j���C��5�ZY�'q)��	Asa+�W)Ϸ��
������KX	��#H '�9����r��-�^��ɘ�YqFy�����x~o���Kv��qI�J���ip���p�Pq���^V��.�W�e�Uf	`����?��#S����o�Y)]%��C�<@�lfL���'(�f6]L��U�a���� ��>6�0S��c��[����1�}X�w�c��� ޷���ūm�|�_�E�#������=q�ċ��*�I��H���Bq=Y����� V���|����.�M$�t��Y�����%^�;̢�����Z���˺6.̙}o�=��m�Ŗӽ�v~DoW�!U���u��*ߋ1e�yo������>T��.��ڽ�s�F�7k��Q��G]��.�޼���.�0�J�����a��^o\���e�(�}��'�����-�tS�KIM�8�h��V�^O��F��2;184;�PB^���^�	�K��J���.oU��츦�^�~E��*���y����
�ҧh�Ui�C�f��'�!��BGM�|�ICa��߱���uw�˥�ge4Zb.{�/�޿"'ʖ��&R������ G�ca��^�=�Ma��̴~-�n��"�è��2�����h�N��xV���A�$�00�(��L�����6 0��|���4��k(���Z{�e���sHRh_�av����u2����&ΐ͉)�/���
��!4@�&�W��U�4�9&���Z��#�E��𒣾��9]���	����c���aA'��²	r��1��O���p�+\2)���k?S[3��z�|ڗ\����Gw���(�5e��2a2���Q"�_��g��Al�6�L_W�``\�G���������9%7M��Hm�o~K�8��iM���.m��&17$��b����T�Ađ���x_���:��BN�Zm]��~������?Q��:���"P���R�Ë���ܾ�kG)�CgIa(���4��À����[$Q"G~	��j�<���l~�֞b�R�Avhy.����+C`�/�Ŗȡ�^�h��!��XIgQ0�g�FI��L!��Ŕ�3�n��ͣ�7�̭h�
�-�Gjk�+�4��F�c�*w2�N�Zr�]w�E�j��>�l���b�Y�L��@�M�����*���j!ޜ�qub��ӧ%��t�"�@�B��ro������2���S:�g�cc��}�un}�����s�n�����G'��l�iґ�����[u�	ہ:�@ܚ�9�Z �Q;���}�\%-q��h���Wе�Tu>�����:��p���$B�G�-��{�K�,�!|J�{YG�G�R\�ԋ�yB�y�Y$R2oǢ�>w���\y�)��ް����]���?��l�Qp����J5�̅T��N�61�`��<_�W��7�b�c��t�$��n�)�}_��L��?�����ڒ���>O���q�Z��<�Y]d_�i(A"��qx�����]��3s`m�.�g�5TyY�!7�?5�ʛè2��#�Hm!g�[om-��_W��?�#�0�����������H�c|�1�����\l+�/������k�)V^1r}�t6V=ʞ/ϙ�g�B�_"��R��.?b��Õ�p`�њ�_�\��I�F��Ya�:c��rCX�Рk�#G�Y�7�SպC}�R^O&V��݄
���N���b7���l��\Uy�^r����uz��+OV=��O��w&�T8b�/M�ϒ���Z�e}����`�'?Q[�'Q����/~t.�cT���(������h�~�>>̔�A������y����~���[���&��x^��h�K�59��n���Px��b������]�8�
�T�!F+>5˟�@���`����|�6�\h}��9���Kh��a:�"�����Dʪ#��Ųxg��Gn�0cI�7�bRݼc-�:�^�Ww�!`G��1|���W����P�q!�xm�v�г�tff�?yzv��=`IGC#R"�)��{��D��������73 �b����-�D?�c~&����b��FG��L�K�	�/{�D���GuO�;�OK@~k����Ȍ���?[��6~��P�i�����cS��#<�u��kxjq^���f�<\�/�E�tU7k�>���O��~��>O��ښՒ ��#��z�ll(s�mG<9�g�ۛ� ��'P����Q}8f�C�!�$�0�z.�,!^5�Gb{�C豷�����靧s)�\�~2�0��^�`4N皱�\��BV��并�5OVK��h�����*4�ˎzg^U&R��SJ���5Eq����R�$J����F���+i �ӭ4۬��4�f�uQz8��ѐ*������!h��r�,˸���uh�5
?��_����J��D��{v&��tÓ+��-2e	)^�f�1P���Σ>$g� }�M/��͕RV�j?s����H��L3o:�#�5�*��X�Qm7�ձ�0]W�ƚ���;my.=[�31j�=�δG���ԕ>��x���Y����J>m�߷s�i �`���g�c+ԧ��C���&���a�_������.�!6�Bz'g��Zdm$��#�B�dZ�M������(s/�k{����<��y��/]�j�a�ʂ�\s9��_���g?襩�����r��R���i >mƿ���O��D}��fA>��0l��=\���V�p�z\�R��2O
�h�^!�2j6Xp�)��f�q\p�Eɧ��7�(�S����Gjk��,py�T��=���}A�w[���&�=r�;�L[\���8{�z��c�������#�,�Gjk��,�����$N�,t�&�)[-���D���n\�g���(���ѣ�h&���>����Σ,��w�Q��y�S[�`��Q�j2�Øߪ}88z:�J�^o��N���2�EdnDC�F�Ƭ��
��l�|����73��m�G�c���f(��h��hv�W˝�Os~�q��ce�.Z8��AΚ�x?]L���+
9$h�-�h��_�@�h��w���ښ�<`mW�K�V�b�Iq�?���I˳�vH/����'n~m��r��vV�#�"�߯s@��k%e
�*I���94�������o�"@�.�=��>"��    �����x5S6=c�_9�ЧE������f*��}uQ�S�i~���W<<���mF3���E��HD�%���n�r�/��~���	m��Nיۻo�����@�w�a�N�gjs&��<�I�θi����v��wQ/�8Ȃ%��p�GL"D�A����/V���A�eN���Fh��"�8��a�>|��'�*ǒ�H::�^Ch?w4Y�#=���uq*�.|jؐUBc2fWb���:�NTW�=8�{�QS^��+���~)
6�\��x���.s����ؑf�H��}F&�!'���y��!���e����h�%)��e���IB�W��3�1���x�s��6v���_�24��U{�e�ʔ#JnS
��;u��\3��=�_͡����[��J���W�K>�;��dz���Z��Ǒ�c;����t8Zu�������U�(�@����*�T)��L�yp�f��W���u���e��/z��D�j�/���f �z4�~�}�6�oj�Z�g�kX��t����t��f,;�Ί�`H��5e�2���s�H���uH��a`������k__�E��z��:}����Lݾ?��!��W�݋p����b&������8=�Tcc�6a)O��Q t��J���{��:�@��(@ԋ�g��y�P�<����$�H���!p�d�@����u�*�$ʃ&�����rD{���x�������0�3�5:��FG�G��do��D�oُ���ԯ�l�%��e�?S;��� ��N�}���� �0 pO1������T��Px�>@��H��~�M}@�j�,�UJ>S���j;e�ϊ�����bZ�� ���D��� �����׽�P�ZL닋h���Bm�O75X�b��l�ϭ���׃T���?�W��`0��%:��N�7A�����o���Ho��Gjkt�5:�~���弭�{^ʊ��=�Jm��z	�fx�5<��+�	�L�?]N�����!v����+�\�$f��`~`^���ӫ�hBr�g��o��I�C�)Z�x���Z���(�����3@E�,�?QK����1�ⳇ�21	�'D/5��:N����'Pl���j�Л+Ŗ/k[�,��{�Z�Y~Yy�:�W�`*MF���?R�0�n'?�����_A^�Y�9U��c/e���-��n>�;<�/`��ܙ�}}I
�/�0?Q遺�|��=�9r��;Y�)_d�PYڱ^�nv��\��������:�eW�I��`�C�X�B����~<�����m�J�o��#�!�u��,E���9�=��h��{�� o|���t�	uF�(n�͎�.�S��ƅ?��]7�3K�߁W�F�Fʻ��L�'�vmb-ԎZ���8
t�ڛ����B�3#e;�lr0���L�#M�$�����}����ޒ!1>�m��.�#ԍ�t�H�SJ�'�w}I-�����&	�ݙY"�Z�����LB�`��l��4k�ȕ� ����Z�;����4W6|U��[QH��&�E�?S[�~?�Ҭ�:R$����b��<du�)�l��6���eo���p��"�|��HO� [���cڎ���@ͲV�iX�g�Gju�Ɩ�%i��L끌]z]oT[q�Hm��7=͒��~�4r}U�-	M&�#����h�./+>���s"Ҍ��v���	�<+�(�2��ԇ~���ㅆw�|(1#�H@�EDo��D��nwHo#-#�����3�v����t�w�X��\���g�������9�,3��T���>SS����:�x�b�=T����t�������L��x))��v��O�V[�v]�����T��S��J�������U���|$��~�
E4�Y�^.�Ҕ�;B�.'�!����+��4ʭ�_ěTߤ��%�A��dŧ���a%F���c�J�����B}|�����a?����׉�������ɢ F}���}��Pa�i�q�!2�1H�O&__�H �ő��3#�ɥ�&u��fF�R��-{���7ҏ�+\����9��R��,(t�ɱ/[*�eG|(�^8�.���%�:Nb���4�4D�Ǧ�-����O5�`�oN�d+���B`"�#.���S�;"���h��0qyE��e%ʆ��ג�_�,Z�Ā��!��HmA����t����픱�.�%�V�Lwx�$8qCe<��!t�J�dy�:mzgm1AO��d�Xă�o��C"o+���ڰU�{<��8��P��6^�x��G���:�W��Q6���.SX#��r�!���8�h�W�#�[�y������]I���]��v��Z�Z'�BN��J�'�=��t���y�1����%S!����I4��]&�*��F*>-�?{ȯ(�o��d��S�y��&�d@�|�'=�J�Tp�W��O�(O��(k�����)]��аb��a��M��ύg����(���Am���Ɔ�	^f��^�x�Y����
�Mq2��-�͢ކX
���Yj�|��)6D�#/���D��/[�K>5�_�;�|S�j����}�m�����x��}Q�.�l��ng��,E��z��r��@+�3���W�Q�����X�/�SY��r���t�Lp�ǌV�n"j� �w��d��̥禩s��<���ɉ?.F=�"�C_ ��q�$kv�]��z��^4 XO����e��v�íX}n�I�Os@�	l��hq,��F��]jj@��ߧ!;D�>�V�=E+�An7bV�a�a��N�v��/nM�	�Fc�|~����'���eZ�JoZ�I���<J��V3Ԣ�d!�h�_���#K����\ǖ:�;X��:�b�?(��G�l�Z��LmAo^�K׽%�j9�h��Bc��qU
��>�b���Z�r��7	9?�dņ������`��[.��t�Bm��[�Xo���(A�yO���2L�ː��V����*_��%z���pV�}`�v��P��]V���B���G���]dh�~�~�`0��t0�X�%y<�&�$�Ý`�Y?U��(��M8T,N�q�M$n��؞8�َ�V�(�w�ʏ��<\�@Z�s���0u�z~���	���\0���`� �fv�f9��q����uj�N�ĆO������?n��|K���[=����&�>S[bC����R�D��z�&N�x�#��d��b�Ouy5���,E��{p�˴Cl�=�@��=Qv��'�y�����X������ȅ���,�3��
Z��$cU��i�YeG�r*����Nz�����WϬ��kz�3���y��P���BGw38��|m*kU�1R�Ł���|�̐�6��Bݫ�(�M\��N#8�I\�5�V���{� ���� _7zW��Z�,��vI+��q��6W(v��e�i�MX�:�4"��l^���9�f8T~�:���j_��&V�ܓ���LlM�R����XI�$���Y��QxI鯌�� K`�^�h]f=\�&�	���X��Q<ڭ�e��,O!㝊�w�Խ���w#���B^)��Y�G��Zh>�'MT�.���� ���klI�ԙ�U�/⴯�{��)B�%��/8�~�4�[������X-��.��S ,�2��5",߄��}�z��^Ԫg���G꣨�?��� ���@���v��'�@������B4�֗�>�e2���$׷��Yń�HmK��t{���^,|�͍P>u��T��4Cu�ï_�fհ�,*����c���x+���M��!�v �_�T�N�d��M����XJ�rE�p���Z�.�L�`�dr��v�Ni.0hG���6~o8){q�`�>���"W�Du��m'dq1&6��	�(�S�Dw|��>��&�V�<�s�������q��������n�$����ߩ�?z+e�O���u��Bҷ!Jb��y��
p�=WWzkNpt��Lg؁���C�&'�ǿ&��%�^�}SR�-�x�I`��������b���a`    C���_�-�����Ur�b�2N�3b�Slt�ƨ4�N"�ܰp���:����	%�k�9qc��ty��%��#����Е���ɒ'뒮���5�U_4��`cj�zy�OP� �̂���
K������\�/�*���'��ڂN?�чXR�T�{ x�	~A��Mٙ�B]�_��n�g�	d���:�*��V���E�U��<?����M`mKR��k�S�~h���zj���D��l�V��H}X���Sk2�B766�88S#�"��}$[��6����*���������f��x�D8^鵻��cKD��T�FA��?RkV7F�z-�|yVl�M��n�]��f����iΊ{��svv1س?ƜP�(V��h��@�a�U	�;X�*��o����[?LV?�wG�w�w
� W�H�I�|�+,w�Gk���<ڱ#f��C��4B��bY��q������UQ>��z:����u��5�i��!C�NXz`	!_������()��5���#v1҉�CJӸN]a%``�jv��Z�~-��{|"�V��p��9�-/<3L�z�������Wk[H�J��x�E���NF��e����ߕzϼ|��M)|��z~�xt�K�ű|O`���2oX�`{<���Pu���������ٹ��TӲÔW�R����Lm���.������i١��e�f����|����A_w��N���Q���\�Z��~�� ��^�G3S�%u������BI���A���D�S��	C-������Mb�`��(�z����y�o[�.�/p��٫�.@��L�c�NG�gS_�g����c����.C��;gǫ�ny�_s&Ή �.ʪ|h�@P�֌���_��aѷ;�b�j����mV_~ki����A�7B0�(����h�y�kͭ5�BLvbƇ,��{֐��.��#��L{��M�,���s.��q�}y��V���O�b�������8�Q��&)j���%�-��R��-�z���y+�!XW�h]�d�Qj�uh�i���f����j����O$C5�S&v��m��/��9螷�����EȜ�7�t�ME��>1Q�S]%�+>���s����7%呒��������ޘ�K�z��������/�T^$ӏ��o�+���A��8vB�l�jO�3+V�A�BI�!*>��)R�3^̷�P�=�u�ә�uk�p�96ƺ�R��׹M�l����h��Ȁ��K!%�=_v\��`����WD�Ze��đ���_WM��&��yi��u΁aX��yН��B� �l��CM�r��W�{-��m���}��:Z�(*`������(p�?�������{̓����:�� $��J�]�"��$jr�\#�U7��:����_���3����9S��������ږ�m��/-�J��}��z���%�ʨ,�8<����ݸ^�\�Ym�Jx���񦂩�����30~;"X�o{�8���� ,������Z��W#cH� �������F.0��x*m��c�X��8�iv	S3���J`��� ��7֐:��.�E[�x��Z1E�s�=��:e>x�f�kJ�Ndi"��^�y@p۲��y�bh��Y:��O���:��~�b���g �V�%��8GB/��a��ŕ�B �'�1J�ݔN�vEB�17�D2�p�dvx=瞙~$��Lf}MHq���X;u��q��ђ�!�V��co������:�5��I8#k�}��&'�K�)j����h�������C|wA������Xͅ����6n���݊�b���h	(��d�6%(I���g�q�8�7��:ݜ��f��V�.�F�g���&�w������)��mlo��X2��1��fa�oL�ಉi^�H�k*-#t�,i�D!%��Ӹ�vx�-)QM|ӻ��`���/����]�����;��������*X�LQ���5��tZ�c��j�9�$�����z*��־�͐�c4`u�����S:w_2�� ~�
;���]B�Q�j��j����6���n�O���&\���}Y����z�u�+'�qEl9 Ĝ��jė4���^�!(&����xg���I[C�`g�Z��y�Q���z*<o�)�q���u�\�A0�e�n�YIP��NG{�E���t�m-ilu�1�о��w�e��wZ�z���]�����f�A�X�$u?�s^S��]���Y��L�s|>/x�,�mFK��ry�����|�tg��:��͉i�����M�3}ԁT}��ӞH��ο����=�K�%�q�Ğ��>��s�%|#Ě�b>1�e�\���4Ǧ��!?\ ���֐���n���#�W,�*�өd�� ������1=��p8]�f�hL��h�\d��c���0�����j����Z����I�܌�n���xk����F���_`#��X�Y�A��j�{�O�ZVʕ�3"(9^*�q���?xo]������&�A�~ �w�U5�I�@������Vp� l��v��b��F?s��\M��c�6���\�.-�]�.���;�o��t���7Ի}LJH�ƅ�^ߒ���*��J�!n������p�0	|�jeW���L�҂;5���d)��[˰���u<:��Ľam|��}b�,�q�~�s0����4y�!p��Yn�ZQ�K��J{�`>e��Hc�F1r9��7��O�?F6�+6���@�8��l'c�
�>S��L�Ե}�n.��[!�}׸�����d��Ǯx�W*���Ţ<p�:��Q�UG���X�n'NQ u8܏�>�F5���ߧ��W�_��	�k-n<�`,g>O��^O�E2=9CO� ev�\*�#EJ��Ρ��!a!�g���G��ā}$0T�s�u�Q�#�:s�!j+��+���j��y�O< =�N����(��p���u�JJ��}�8��|��x-���/�9:c�nL��l.k�mF�e����hԕ�L� ���z���إW3�����e��g��"�v6��m0�p��&��Xև"<W�����CˎQ�ͥ����t�am���x�%g�?���;��{���@^O&����j6.�ش����/qQ;厁�]�H������K�AH��Nf�&i��
���ꢏ�+d�Į�p���-��`���0+g�1���)K�E�1�l-!������}��$�紞ӋB�j���^�yXp;<�+�_J�49��_�S.ϑØ >:�H*:V1�pL�;ӜJ��� �]��9�-��_�o�G?�_���V� �I��[������ʮ�t��5���������Wj�\�0�0V�����^��b�D��lp�C�L$��&~P�t��%���=�RG�O�v�����Y�����ی�d��8l�H�"ah����j�v;��p�����{��%����u�����6��ڷ�p�͛��l�C����r��N�4-w��b�yVAN�g��ΎF��� ��;�  �R��ߌsy����FF�Ip;*���Ω��,���t�j��������F�̄��Qom��0έ�;.��:o�%?C�@�N7�U��v�ݝW�N�������PJ?��u��5t����z��'e���W�;����0���n���	 �������ս��kw�Zl�m�+��
 �u�`>X�XEp��d�@-`��h\�Ky7ʤb�������`�0�@�N9�	�=zk��8��<\1�N@E��N�e�.�`ovز��yR�3Q�2�ridݶj�P�8�����C�,Ҙ����!u ����u�v`�����V����� �ؼ����8,����9hr��U�k��Z��B*S���Kg����<��ۨ���B�V�AөEO�@�ν��ΈH�btaGgI[�"<Y��!��9W��,)�g���2`���A���U'3��G�}��:�>�F����-d;�@ �O��E�Vd�MX��-���O��-}(=a"m��,��K}^�C�m{�_��H#����:�r�j �50	    )DV��9r�(���3mA�$��qtbf{���%����s�}�	�pn��:��G��}z|��;5q2�����>�T��b��D�B��b���ώ�l4�qv�����?Ix��B�Ɓ�;�����g��W���Y�Sz��s�.�l)L>w��J��r��N ����؉�s�b��h#��m||����i��Ґ:滊�p�z�{�}������W�C���^�������y�b}�847�	����^�	��^�lӏ�����w7�s[l���rR-k8��MeM�p�1�~��5�P|AFE<ۂᕄ4��K!A��r���irK>�pZ��>:���7���o.�=,�穣��.�%�a���=��"-��4��$h��8\:Z���f��aq\����n�p��?>��lP�ct�{mV��]!��akD\�K��1��ל^&3���4�����ׁI^H�c�9H�)�����{��(�!u�}��]��j^�:x�M�d�����s�]Y^}`É*�x@�(�sd[�����p��h�mF�.D���sI��!�!I?R$������=��u?�ֶt��-�h4��(���c+�h��	�f�N/�X틒m3'p�p����H;^���=�D�oa���Da`�(��W%��K�r���E�/>~u���B�)߀��]8��, �ыX��/�h����eA��Y�ԁ,}�0�m3S�n�I[��e����zi�)O`���J��|:��\�/�c��n�8��߱��	������M��l��WM.y�_V��#>�����j~)��}Q�s�$y�s�F��(9�,BJ��!��t �Ŕ�D6U�G�a���'��o��S�w����2�$���6��/mI�W���0*<p�'Ѵ��ebb~�L*F*����2�0�j��A$ޒ\:�;����;�	��}Bm�δUϑ��D�`�s⌑*��`\a�#F�h	�7��a��\%vBի�&A����@� �c)H�������v\�p��'	G��Jli��ؾ��>�°�����87��p�b�zM4N,0��4?:���h4��8ߐ?���ޭ=��g�j��)s�>F��,��u$MD'R�\��#����2q+�
a)Q�L��"7e%��#ak�x����e� ���>�d���}Y�zQ�|'��n�^��"g��bw���"|^R9��w� �pi3�׈��ѹ��i��:�g��%���WgHH�'��5U][���J�����D*�Z����O�>�Z�8�[B�WlÍBǛf���HD�����O~i��M�Ő:��Qۃk4���d����blr��2I=i�`S�ѫŪ&�%]��п��*�c�1
�p�/	���̐:��eS5�8�a��vW���=�r��Dӊ�l�����~1��#B�	KZ(R��(U�	��Gq� ���w��j�s{OHw�!�ھ�|�ϰ���rh\v��j3~�� %�xՎ��^��"�����R:/'!gJ������p���q�~V��J�iI���U�ozv�;�h��0�.�iM�y��"�D�.��e;�0�4��45w��mFO[C����5�1��c�1�V�<�ִ� q��L=���ņɪ1��E���r�O�7+�^�+e"v2��2�'>��(�{_��p����	Ǿ�dN��Ԏ���G�P�,�-�.N*PY��=���Ɇ}NM��8A�mFM��
�	���	��,��*��i��Г��p�HuC�$��uDq%����,l`�Y���Н�Ș)S�{~�/��A��� u�"�N]>�:��j3h`CN����##������s�F|�p��Z�B�,�B����NY�8��V�������ě�!u A�J�f �8K����8H�l��(j���<��	8)!���:���C�U��	�X��C���bx��_|}�wH|5��p�x��=�8�[�/1E�#R��M�K>>�R�F#�r��4��R�Da�^��g$�g��!x��4 d@�0�n��$��X$���S$�aY����4L�9�b��mX�K���S����X��}�7��|����9H�W�@����mӄ��e��%)>�H��w�t�"¤��󂖞״t���&5�n�*bq<лu�XAm�6���N����vR2�_�af
a���FL]� ǂ6���kt�m�(L4uoa�@�]0A�+1/3[Z�:��������荡5���oh蠒�Y���r���FA�@q�'�!*a�LBB����X��<��eR3��l���!i5w�s{C��eO��RR_>�aW�Ѩ�G}�BGW^1�}��k1n�`�̈#=��뙇 �H�1"}�f�TZa(�:�o���&{lH�����XY�m��W�Y}��EZ�����1�%)���aM���|d^B8+M�j�(N��P
�pn��N��=��ۍo�g�_���A�Rb���/f�Vz�7F�ݶw��(5�w��<!sczl�/��2-�rm��
�܄D�=_���KU�;@���	�� ���:��3r5;L=3	m'��,N�Q��!��ʘ����&�<����̩#bgh�����jU�)G������`oq~`,��gH}�B�_�JA���`��DҬ\�j�oy.��ÆfG��p2C2zo�jg�/�)����܎|y��s�Ve��Q��x��f,̏�4aI��tUFW>�kP�%�4�A-��x��T������I°����)	�o�ߐz��K���=�6�*QC�LUB��)cp��9�9���t��AxE7n�a/ �LAi����c{,��t8?�?�J$�V�W�t��{��o��"���cd�>�S��{�ىp)��{�M&g�*G+u�X�!�m2:����:�!�Fha����D� ��n$�i��(�L�$J$'�	W�݁F�&:��+�����1yT��]��Ɯ�l��^KmF���x5ޕ��/KR�j%�������XY��8��~S��]Zׅf�iF�ƿ�)Vޜ� �̣�7�	���a����1dH������k���A2z4t\M���G1��9:���&>:�h墹d�vm�ױ��<r0IK�?$�||�����
�q }�;��A��s��mS5�w��d��YE!������37@j_����
\ى8do)���	?gCz�7�A�������G>6P�TD��:cQk�)S�0ln,�/q�����%?��g����&!��� ����Q���] � 'cߙ�h㮴8܏5 �V}�/�G�����6�@%�"�ʜ0�N��*�+Q�7ksOq�=��tň�د&Gi�q���]���6[�;�����jH����ѣh{��&�&�Iu�ǻ�$1��J~@�{�
x�>u��5Z���j}�昀X�3��Āh����Ր:P��DR[-���P33��6����[�v��x���)h.����	��kv>*bz��^V�s���.y��;�g��{�����|nHhD�5x��j���Ə{�ݗ�Gh�̮��T_��$v<@a�TF�w���_�K��6w�FM`�tW�;w8ߡ?�%�*C�@���@Ġv+���B%g4'��Be)�<LX�0fs(��nR�r9=��HT�I�J#d���\I��I����i��7i(C�@����
G��ɲǡ�,k;G��<;�{p9��E����Ěn>K0���g���� �7���n,�7��!u��o�����8��?eܤX��ol]C�R���	�.�ŕ8�<[��vذu��F�������)Z8 �i�1��H?�Au��|���I�|=
��8��w.�EIaR�r\:��ަ���%��7�2^sK�N�욌�F#��'��^�g#�_�q���c���Ý�C6�������=w�8�%X����2�O�J�    .TS�������4x���7m/�ԁ�gP�Ev[�87#�o��;�� ����&��B3����₊S&䐎JnߐQ>:�$���	�c���߇ԁ:�_	ڪ�4uI�1�e��{�׆��!���]�� �����μ=r	�Ḱ&9�E��,�p�@?�xS�1���?��ڎ�xp>��G삒���CKYYoD����\3$��z)�s��
ǶO��w8܏e��������{�|$�:n�I�픙o�y�s��T�f�P���M.�xdؠ]�؛,���j�6�i8N�?{��[݇��}x����Y��H�a^�H�W�9d�P�]����rz�*܇��r�RǃM�,��G��M���Z�!���G��_���m��^�N�S?^���UW&���8��l"�_x�fMI����f��b� Tvg�SU>_�N�5wS�sG�����4���Ѭ0�&��5z�� c��Ǌ]/�)l�q"��e$��]
X�[ ��k�N��H(����p~`|2���zq��4͚i��|��Ad\<�+d��Q��ιN�+_:�e@��t�*	�,��r�q�8������Q?w��L["��w�����lyj7�	%�n(_��x�!9V��(�F�����sW�x��n�ֺ	��e�:�v!�8-�7��@�DH�ԁ�#�i�v�$�k��oS��D2��NE���Ȕ4�V���ć#���S�#�U�5�����Y����+���+��y��Tۥ�Q�-�c���(/�J�G@����)���I�+uiV�4T�dvM��w����|���:·Nһ'@��`ߐ�Hk=�k�"�J"qEv��r�ŕ�X�5J<D+�>��&T}b�$ܲt>�T��}B���0?��ޥ����İ[��vJ[������3��X��s�m=�P�) 8�����^�ة�$-w��.���!��GD:��'���^o
��ԁV���]�4� ��NmgQ��D`\㮼��ʚy뒣��%���v��#��-� @�Y}��s�m�b��������p�ᢝ O�G��a�R� 0�̌B�@Y�����ҹ,-c$����^����Y�ƈ�G\iθ}ݸz[4���[����Q��oR?U�k����P}5i��z�"أ�C��4Sv�F�:Z����
��x1��r�|�>��,;�����jӍ`E��,��}MHѧI�^�vCЛ�Hr��i<��3{�L�c�].�@�c�>�xQ��b�;��{�i,��U��r�-k�u����D�5u���:���ͩ�@�;DK���>�w��]U^���"�v~-)�p���~W�0�D�]�0�E}����0?��y�_��_9�Nj?��h�㙹�bJ0#��Gf*�@�p��^�Eh�	T�sB��ޱ�Í����/7�}ճ�,Q��Ҷ�������S�k���W�Ҟ�ec>&*���;���ê�J`���i�y���Y^2����c�.��9���8k�g�5ͺ}�i�Wy?������6m�S��5�!I?�k�|/�=��oM��	����a�P��<�{"S���S������Y�hֺꓡoV�Ck�����?9����Yl�R�wځ$�po�l/5sf]3x���e�9:7'��yv8����Y�CŁ�K�\]��륭�jnҶ~�*IR��Qx��Z�7��Ki~RҐ?�yx@��,��;pZQ2쒪U� *�v�V�I���|V�,��N�QjS=6�R�D��@��"���Qn��I��x�D9�E�Y`�B�\/��¤�x|�Y)J�Y�S���T%6���6+m������]Sq��F�������:jNC��s�g�a�W��܋1�z�M��~��*�rf��ԑ�b<�<!��<�s��X,Tu7��Pۅ�Y���P�f�9�P;�����q����]ڕ����Q�l���e��{��e%�|����9��/��~&'ӱ�ZU�N�%�$ںQ=�U�����U`;D��Q�7���ˢ���}Z�l��[����O�]yIh&_.Rm�7���*�}�L+��V���?��&�<���7���e�Ѫ�����4[���vJw\��f��e�!ǡ���Q���<�y^�f�gb[���ysw*<ܜK�庝
�5�K�W��s� �swCݘ�n�÷S���辵���=X��,�"_bS02��v�I3�a��3JE&GR��'����е�/�?8�w�o���-�p7Z�����q��/�-�#7@��+ n�q�_���u���.�j`�C<�����ĬԈ������y}3^���e��s�+��s8i�����C��������ʿ,�e��t�#�IW��&8̨���>s��љ�����
��@��w��P?�Q�z�����S�)�؄��J&��x����a�υ���"�Zݘ����<�ln�;��~O��O;r�h��G��#ҚҜ�M�>��W]�~}Pr�bْ��`��^_��e�n�}D�"�X��3��#8N[�&�8�������-ګ�!��ƾF=@OY�=��5�Lv��Q���ݭ9�PZe���E3F?�S���K�����c����R4��H7[��h6v67�v3llZ����8�ڷ�z���yaN�H��S���.,������e�p����Yz�l�E�m��q�/���s����h� ~uy<S#7��yqp
����c�zm1�b�E���K�ЕC�9V�R;X��c���;{��S����~Mp�~]��|Ԍ�_/2OQ�H���:�'.�}.9�30�+ф���`�-�h�2D�h����~$�F��}�|��S'�)�Y"+����ErV��u��TZ#/e@�xqR��R�$W�J�_�5��M��;W�?(P����/O���w+O\K���w8�-v>9�Ӽq5%m��\Cx�inP+�s��l���ې��ʻ὿5���OF���T7�|et��B[���
|�ф�J��q��j�k��%��;�?����l^̇1E�;�o�i��7��c��v`�R|M}(��ޠ��P,)��yA���l�uA�������e�lS�F�59|
�q���o�X��/�����~� ���'c�%u��W�����$FP\��f)�s Jr�a�
�񞈡���+��"�C��� H�m%H~��j�'B�����/���M��а��1�ҹ;T/N'�[�"@��E�ia
��0==ؖ�)�]�Pm���lp�@ڄ7���7�v�o#�?|?i�����|������Ǜ�aXo�sͦK��VU��,yE� VL�&�V=��B�k�>�Ә�h��a���_��߈t���/����f�3B����q�z��	��fi���&.�)��S8����Y�̯�[jELM}�8��(��g	v8w�7Q���k�:�Bԓ����������$v~Q�����!�=O�!8��h�9P>VJ��Z<^��S*C��x��{�<�5]����7�%�e7y��I#�ڍ�1�nx܍+F�.qo��V��Z���tf󣅌��̅������)& �\_�Hl#�f�.����1\i��v�Ɗ:��B�!�_�*���:������Ȼ���-�R�&6�"�̛n-}��|r]l\e�eG3ɑ7�v~�Yۥl��ٯ)� �k�7���\����4w�W� ��5N�p���w�K���r[s����&����N9�s�Q��K_�,c]J��LP�|�[���>|�i��� ������xW�E�/��>��&g�kvݽ,�[SDL����n}���d���ê��|\6:�L/�Y2]�m�0�1�{Կ]�Plh6s�� ��7$�ˣye��dj�Ew��ͻ�b����ʍ��8�(�ȣ(~�P�bT�T�Ҍ��Ɩ�XX�����Nh�>�C~�|q�~�A/��7ѯj���S��+ν���À�WX/�a�m�^ƫ:�@Vfg2�6Ɗ�OЍzl��$�ro��~�;��������_��[�o��Mv�?�[-���N� &  �/(���`G�<G��	D�'�2W0ܥȭ5�6��=����>
��'��d�L���"׭��������=d�鱂wS�4YW6���su�&%Y��d�In&�Ѳ ��.=�{�o"Ju5x�O�!��T�N��W���j<��ڕ�犐(̓��>м4W�H�`X�D�M?�8i|��j��A��en���O���I�՝�Llp����m�؋��`�g�z������ONFP##��!�@`0]L�h_$��??�=�����m�}�3�es��>8��%�Nq��#;5t�J0�#s6��lNn��	&�c~��[�+�e�]ʔ���q��x�m�y�ޣ�ۈI;i~�2���8��|D�yĐ�R��l].���?4~���|��i�D�O�Qܰl�� ������G{��;��N0��ik�"8�6�a�}|i��9V�-��ĺ*2m��>�9c+Uck����˽\0�hȩ�)�A���z7:���������d澤�F�'�$���P✤�����%��>��&�]�v)��nwD���TP��ڛ�wes�����fZ8m/� �3۾IЍ�n����_R_�Ӕ��د_��m�v���؛�R�����˄��u1��08�#�V[��t�lÙU�j|BA�a+���M���uAX�x��/���D��6�l�[+���m��Gر|ʌ7׫Ƙ�%@��<�8
M&fSH~����?�5W�^M�"B�I3��%�gO�%u �O3ǽk:� H�5�k=�a �VX`)���/��	��5Z5���h��=�0n������ؓ��QǺ�|�5���S�5�N5x�N�&*���X�����P��%'u�q`0���Y��xcb5n��m����롅�J=�ȺS��uŨW|�=�n�����>��N?�h�2Px�:nJ� �]�il�]&T�qp�������o�����0�������?���b���5�������|fp'��wf�[�IIB���=�f��O�X۠�A��B�F� (�dR�x�1��M�S�.�󫺬� �Ѣ&��`�K �(^�h�X�\�ʄ�'z8S�ps;����r�Cψ�0�"�YZ}�-����>�}�wW�j�jrU��%��^A�
*skČ]�||��S�c�C��~�C|�0Ws^Қӗ���4~y�����s��O1�V���$�i��>���25Q��Ρ�׫r=��k�^a~���(����P�DbM����v��r�W`"pcʴxo�A����?(�8s��POm|
���_�u�}.��d��ݓ��)�1Y�JW��
�%�����a2؎��:Ar�����bW�������78���n����׺�`s��/��I0��'?t��6�4q��`\&*]%� ���kOAZY�Lzm������v��6a��{�O�>9�z �#���6��z����q���Q ��_��S��m�<-N5ʣ�TV���Yz��J��F���i��������0:�����5[����o������香���R�HI�+(��a�����y}u«	��K�6����\m�8S�����/��;+iw����5u�w���-�3�95Ju�,��NV�b���<)�@�g܂�L�bO�pM}LX[>��o\$������d�+�<���޻�}Zyj𨈰tB`�@RƋ����
X��CB j�,���['G��JsH�E�~��o�������P�f�?7t��<�]xh��B��7~�ޙ���������NĴ      O      x������ � �      >      x�32��22��2�ˊ���� ��)      ?   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     