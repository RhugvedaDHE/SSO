PGDMP      '                |            sso    16.3    16.3 W   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    16398    sso    DATABASE     v   CREATE DATABASE sso WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
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
       public          postgres    false    360            a           0    0    AcademicYears_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."AcademicYears_id_seq" OWNED BY public."AcademicYears".id;
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
       public          postgres    false    215            b           0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
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
       public          postgres    false    356            c           0    0    Banks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Banks_id_seq" OWNED BY public."UserBanks".id;
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
       public          postgres    false    217            d           0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
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
       public          postgres    false    365            e           0    0    Boarduniversities_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Boarduniversities_id_seq" OWNED BY public."Boarduniversities".id;
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
       public          postgres    false    219            f           0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
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
       public          postgres    false    221            g           0    0    Cities_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Talukas".id;
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
       public          postgres    false    223            h           0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
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
       public          postgres    false    225            i           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
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
       public          postgres    false    354            j           0    0    CompanyRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNED BY public."CompanyRemarks".id;
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
       public          postgres    false    227            k           0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
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
       public          postgres    false    363            l           0    0    Constituencies_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Constituencies_id_seq" OWNED BY public."Constituencies".id;
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
       public          postgres    false    229            m           0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
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
       public          postgres    false    231            n           0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
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
       public          postgres    false    233            o           0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
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
       public          postgres    false    235            p           0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
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
       public          postgres    false    237            q           0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
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
       public          postgres    false    239            r           0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
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
       public          postgres    false    241            s           0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
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
       public          postgres    false    243            t           0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
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
       public          postgres    false    245            u           0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
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
       public          postgres    false    247            v           0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
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
       public          postgres    false    249            w           0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
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
       public          postgres    false    251            x           0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
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
       public          postgres    false    253            y           0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
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
       public          postgres    false    255            z           0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
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
       public          postgres    false    358            {           0    0    FeeStuctures_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."FeeStuctures_id_seq" OWNED BY public."InstituteProgrammeSubjects".id;
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
       public          postgres    false    257            |           0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
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
       public          postgres    false    259            }           0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
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
       public          postgres    false    261            ~           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
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
       public          postgres    false    263                       0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
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
       public          postgres    false    265            �           0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
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
       public          postgres    false    267            �           0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
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
       public          postgres    false    269            �           0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
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
       public          postgres    false    271            �           0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
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
       public          postgres    false    273            �           0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
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
       public          postgres    false    275            �           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
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
       public          postgres    false    277            �           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
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
       public          postgres    false    279            �           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
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
       public          postgres    false    281            �           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
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
       public          postgres    false    283            �           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
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
       public          postgres    false    285            �           0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
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
          public          postgres    false    305            q           1259    50426    Sessions    TABLE       CREATE TABLE public."Sessions" (
    id integer NOT NULL,
    user_id integer,
    token text NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    refresh_token text
);
    DROP TABLE public."Sessions";
       public         heap    postgres    false            p           1259    50425    Sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Sessions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Sessions_id_seq";
       public          postgres    false    369            �           0    0    Sessions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Sessions_id_seq" OWNED BY public."Sessions".id;
          public          postgres    false    368            2           1259    24813    Skills    TABLE     �   CREATE TABLE public."Skills" (
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
    annual_income numeric,
    country_code character varying(50)
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
          public          postgres    false    347            \           1259    24920    Users    TABLE     �  CREATE TABLE public."Users" (
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
    verified_by integer,
    country_code character varying(50)
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
          public          postgres    false    352            7           2604    41925    AcademicYears id    DEFAULT     x   ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);
 A   ALTER TABLE public."AcademicYears" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    359    360    360            �           2604    41926    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    41927    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            <           2604    42048    Boarduniversities id    DEFAULT     �   ALTER TABLE ONLY public."Boarduniversities" ALTER COLUMN id SET DEFAULT nextval('public."Boarduniversities_id_seq"'::regclass);
 E   ALTER TABLE public."Boarduniversities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    365    364    365            �           2604    41928    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    41929 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    41930    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            0           2604    41931    CompanyRemarks id    DEFAULT     z   ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."CompanyRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    354    353    354            �           2604    41932 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            :           2604    42008    Constituencies id    DEFAULT     z   ALTER TABLE ONLY public."Constituencies" ALTER COLUMN id SET DEFAULT nextval('public."Constituencies_id_seq"'::regclass);
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
       public          postgres    false    262    261            5           2604    41950    InstituteProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);
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
       public          postgres    false    290    289                        2604    41964    ProgrammeSubjects_delete id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSubjects_delete" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSubjects_id_seq"'::regclass);
 L   ALTER TABLE public."ProgrammeSubjects_delete" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291                       2604    41965    Programmes id    DEFAULT     r   ALTER TABLE ONLY public."Programmes" ALTER COLUMN id SET DEFAULT nextval('public."Programmes_id_seq"'::regclass);
 >   ALTER TABLE public."Programmes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293                       2604    41966    QualificationTypes id    DEFAULT     �   ALTER TABLE ONLY public."QualificationTypes" ALTER COLUMN id SET DEFAULT nextval('public."QualificationTypes_id_seq"'::regclass);
 F   ALTER TABLE public."QualificationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295                       2604    41967    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297                       2604    41968    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299                       2604    41969    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302                       2604    41970    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304            C           2604    50429    Sessions id    DEFAULT     n   ALTER TABLE ONLY public."Sessions" ALTER COLUMN id SET DEFAULT nextval('public."Sessions_id_seq"'::regclass);
 <   ALTER TABLE public."Sessions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    369    368    369            	           2604    41971 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306            
           2604    41972    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308                       2604    41973 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310                       2604    41974 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312                       2604    41975 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314                       2604    41976    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316                       2604    41977    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318                       2604    41978    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    41979    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322            �           2604    41980    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    41981    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    41982    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    41983    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    42206    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330            �           2604    41985 
   Talukas id    DEFAULT     k   ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 ;   ALTER TABLE public."Talukas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            2           2604    41986    UserBanks id    DEFAULT     l   ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);
 =   ALTER TABLE public."UserBanks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    355    356    356                       2604    41987    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332                        2604    41988    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334            !           2604    41989    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336            #           2604    41990    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338            $           2604    41991    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340            %           2604    41992    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342            &           2604    41993    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344            '           2604    41994    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346            *           2604    41995    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    348            /           2604    41996    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351            Q          0    33738    AcademicYears 
   TABLE DATA           Y   COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    360   ?�      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ��      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   6�      V          0    42045    Boarduniversities 
   TABLE DATA           f   COPY public."Boarduniversities" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    365   ��      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219    �      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   }�      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   M      K          0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   �	      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   �	      T          0    42005    Constituencies 
   TABLE DATA           p   COPY public."Constituencies" (id, name, district_id, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    363   �	      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   �      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231         �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   �      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   Y      �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   6      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   �      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   �      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245         �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   �      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249          �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   �      �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   
%      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   v%      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   �%      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   &      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   a&      O          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   ~&      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   !2      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   
:      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   ':      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   �:      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   w`      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   Ia      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �a      �          0    24738    OTPs 
   TABLE DATA           �   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt", verify_attempts_time, verify_attempts) FROM stdin;
    public          postgres    false    277   `m                 0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   `�                0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   ٪                0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   ��                0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �      
          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   ��      R          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   ��                0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   ͫ                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   =�                0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   ��                0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   r�                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   F�                0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   4�                0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ��                0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   ��      Z          0    50426    Sessions 
   TABLE DATA           m   COPY public."Sessions" (id, user_id, token, expires_at, "createdAt", "updatedAt", refresh_token) FROM stdin;
    public          postgres    false    369   3�                0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   Ҽ                0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ��                0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   �      !          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   j�      #          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   �      %          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   x�      '          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id, lateral_entry) FROM stdin;
    public          postgres    false    318   ��      )          0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   s�      +          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   �                0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   �      -          0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   ]      /          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326         1          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   �      3          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   �	      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �      M          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �      5          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   �      7          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   �*      9          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   ,2      ;          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   {q      =          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   �q      ?          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec, annual_income, country_code) FROM stdin;
    public          postgres    false    342   wr      A          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   ��      C          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   Ǫ      E          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by, country_code) FROM stdin;
    public          postgres    false    348   p�      X          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   $9      G          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   A9      H          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   k9      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
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
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 246, true);
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
          public          postgres    false    305            �           0    0    Sessions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Sessions_id_seq"', 10, true);
          public          postgres    false    368            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 33, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."States_id_seq"', 173, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 549, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 128, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 475, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 124, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 247, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 176, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1703, true);
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
       public            postgres    false    360            E           2606    25007 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    215            G           2606    25009 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    215            �           2606    33655    UserBanks Banks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."UserBanks"
    ADD CONSTRAINT "Banks_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."UserBanks" DROP CONSTRAINT "Banks_pkey";
       public            postgres    false    356            I           2606    25011    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    217                       2606    42051 (   Boarduniversities Boarduniversities_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_pkey";
       public            postgres    false    365            K           2606    25013 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    219            M           2606    25015    Talukas Cities_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public."Talukas" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    221            O           2606    25019    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    223            Q           2606    25021    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    225            �           2606    33638 "   CompanyRemarks CompanyRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."CompanyRemarks"
    ADD CONSTRAINT "CompanyRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."CompanyRemarks" DROP CONSTRAINT "CompanyRemarks_pkey";
       public            postgres    false    354            S           2606    25023    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    227                       2606    42011 "   Constituencies Constituencies_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Constituencies"
    ADD CONSTRAINT "Constituencies_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Constituencies" DROP CONSTRAINT "Constituencies_pkey";
       public            postgres    false    363            U           2606    25025    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    229            W           2606    25027    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    229            Y           2606    25029    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    231            [           2606    25031    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    233            ]           2606    25033    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    235            _           2606    25035    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    237            a           2606    25037    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    239            c           2606    25039     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    241            e           2606    25041    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    243            g           2606    25043    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    245            i           2606    25045 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    247            k           2606    25047 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    247            m           2606    25049    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    249            o           2606    25051    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    251            q           2606    25053    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    253            s           2606    25055    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    255            �           2606    33702 ,   InstituteProgrammeSubjects FeeStuctures_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_pkey";
       public            postgres    false    358            u           2606    25057    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    257            w           2606    25059     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    259            y           2606    25061 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    261            {           2606    25063 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    263                       2606    25065 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    265            �           2606    25067 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    267            �           2606    25069 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    267            �           2606    25071    Institutes Institutes_pkey 
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
       public            postgres    false    304                       2606    50433    Sessions Sessions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Sessions"
    ADD CONSTRAINT "Sessions_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Sessions" DROP CONSTRAINT "Sessions_pkey";
       public            postgres    false    369            �           2606    25117    Skills Skills_pkey 
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
       public            postgres    false    346                       2606    42171    Users_new Users2_email_key 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_email_key" UNIQUE (email);
 H   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_email_key";
       public            postgres    false    367                       2606    42173    Users_new Users2_phone_key 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_phone_key" UNIQUE (phone);
 H   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_phone_key";
       public            postgres    false    367            	           2606    42169    Users_new Users2_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_pkey" PRIMARY KEY (id);
 C   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_pkey";
       public            postgres    false    367                       2606    42175    Users_new Users2_uid_key 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_uid_key" UNIQUE (uid);
 F   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_uid_key";
       public            postgres    false    367                       2606    42177    Users_new Users2_username_key 
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
       public            postgres    false    308    308            }           2606    42256 )   InstituteProgrammes insitute_programme_id 
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
       public            postgres    false    360            /           2606    42052 1   Boarduniversities Boarduniversities_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_state_id_fkey";
       public          postgres    false    365    312    5307                       2606    25189 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    223    5251    267                       2606    25199 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    251    249    5229                       2606    25204 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    251    348    5357            )           2606    33708 9   InstituteProgrammeSubjects FeeStuctures_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_institute_id_fkey";
       public          postgres    false    358    269    5253            *           2606    33703 9   InstituteProgrammeSubjects FeeStuctures_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_programme_id_fkey";
       public          postgres    false    358    5281    293            +           2606    33713 7   InstituteProgrammeSubjects FeeStuctures_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_subject_id_fkey";
       public          postgres    false    5329    358    330            ,           2606    33718 7   InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_userdoc_id_fkey";
       public          postgres    false    5335    358    336                       2606    25209 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    263    5253    269                       2606    25214 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    263    5281    293                       2606    25219 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    310    265    5305                       2606    25224 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    5253    269    265                       2606    25229 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    267    265    5251                       2606    25234 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    297    5287    265                       2606    25254 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    5251    269    267            -           2606    33751 5   ProgrammeSubjects ProgrammeSubjects_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_programme_id_fkey";
       public          postgres    false    361    5281    293            .           2606    33756 3   ProgrammeSubjects ProgrammeSubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_subject_id_fkey";
       public          postgres    false    330    5329    361                       2606    25264 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    302    5287    297                       2606    25269 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    304    302    5297            0           2606    50434    Sessions Sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sessions"
    ADD CONSTRAINT "Sessions_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Sessions" DROP CONSTRAINT "Sessions_user_id_fkey";
       public          postgres    false    5357    348    369                       2606    25274 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    5227    310    247                       2606    25279    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    310    5357    348                       2606    25294 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    348    5357    318                        2606    25299 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    259    320    5239            !           2606    33723 .   StudentGuardians StudentGuardians_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;
 \   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_user_id_fkey";
       public          postgres    false    320    5357    348            "           2606    25309 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    5299    328    306            #           2606    25334 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    5357    332    348            $           2606    25339 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    334    237    5215            %           2606    25344 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    334    5357    348            &           2606    25349 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    342    348    5357            '           2606    25354     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    346    297    5287            (           2606    25359     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    348    346    5357                       2606    42039    States fk_country    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES public."Countries"(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public."States" DROP CONSTRAINT fk_country;
       public          postgres    false    229    5207    312            Q   d   x�}�A
�0D�us
��2�6jrמ��cEp��f��D�ô�[[ƒ���8|�E��zJ<%}H ��/�U�]������:P�MA���>��ED��*Q      �   s   x�3�(��JM.�4��,�4202�50�56P04�24�20�3�60�26�'�e��W�Z�W��Y�ihI�IƜΩE%�i�ɉ%��y�@��f��XPP��W���
v��1���qqq DB"      �   �   x�}�1�0���>{Uˎ�$��^���ĈX�������{F��}�%M>k̮'��[���4���ʉV�$�����ӆ��f��#gZ��*�ᐱr�:�Ij��#� ��X��+���,�k��P���|ܮ�#&B�,�+_�����l�      V     x��W�nA<��b� p��O۷��!���!$.�މw��L4;K����Oɟ�%�}�u".�䛭.WwWU��+��)Wk��ZW��A��0��R
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
5&̆�	����>�Jw�.ӷ��3	K��}a�rے\U�B- �v��|�3$0�u��C������@����z8U�$-"1���'���gi-�hcr]H�\�;0��E�>�-wa3��jp$�j�!��mi�i�1�3O ]�_����G�=�q"D���3�`� ��~8'''�q(�      K      x������ � �      �   C   x�3�LLNLI��L��LM,�4202�&�%������������������������~Y�=... ��      T   }  x��ֱn�0��x���!@����Q%���VJv�`�>}��@��>a��I:�非H���d&�TdiV�����6��R��xɊ���=�(j�3@0���}�q�����m�_�����N���x�labM�l�~�0Sd�Z�X���{kp��Z6|p��3�Z��i^��qf�4wqb��5~���y`��В�!$b���M)����2�O�M)�ua���=��L�0,�E�y��8�Ft�n��a�&��ٴ���'��Kz������5��5k:�E��p��n~>?0S�O%c<�IR��ڰGVG�t�EC�"��t�`��D؏,���;2�U�eX���v�@2�"�����g���2��I��_��      �   s	  x���]o�8�k�W�r�)�o�wI�i3I:�&-����6�f#�.%���9�PJ�,��
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
i�Z���2�tK��1ƜE)��y���� �,�      �      x������ � �      O   �  x���M�����*2�a�Z�EdYF��G�&]/�=G�6R����DR�s�6�.y���ퟭ����Ǟ���Wm����r�s��ٱ5�TE�ۘ�69��[S�J�*A���[.�IP�nk[�2{�Q�5[�5 붦�_�;a�u[ӹ��Y�nk���l�O;��R�����(�U3GAOuk�9��U �8L��rt�G���8��[S[�֭)��&,�nMyj�($�4�d-��4؁ap�|�d�5	
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
6��ae����xZ>��}3���7����z~��z��/�5x�o���ep�nG]�.��O���ބ5��\N�t`d&'��\��桛�N�V��'9��3"�H9}}Q��E�&Cq�5{(G3GK�)�5|�j�z��P�J*��$Ny0�f:�*������֣�o��0u7��L| ��Ձ�b�8˰}����r��p��X���%u��Gv�0յ�����0�-�K\81t�� �  P��2�	¯���<�wG��JMi�)"�b1s�� lBwS���8>�Q��2}b�)�'%�*�A EG�����{}q��$ET��8R�)��=��tel�&i n�����$T>�3qRd�3a�����{݁�a��E��7�F{x�m_��)w�t��%�sM�gf}9�t�?1Qo�Y�ؾ՝]5fML�Z����E���8�X_^����o��Y	�^J}�ٟ�l��1d}�f��<-�YuR�'�Zwo��D�F*�����p�q�@�!ǧH�:��0�X��Z�:mCö/���dq@��h<Dw<�.e��횋0jR����<l�?�D�R��_N��h�G�y��Q��w���H�^�Y�̾���Z-�E�)��M�܄q��q)�Z�up�kV������˻o��V>q��O��=ݟ���pj��m_�"�6h�#Z3�h���₟�7�QrJ�#"��i��y��-�=��8�z��k������o��y��Ey�N�eI�Mg� ����J��sy\��ꇳ�4g��~�7��kP������ �1��>t�l���<�X?��ޤo��#r#VEl����<�
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
��#,L��S$ܓ2�6�=Uuj��6�Y	CP��~~���`��c�ʣ�!:��'���������@,�.��*������ى8�����"c<���u��ާ�R.�B��n蟤�i��?����OZ(P�t����	����YQ��(�}x��p\�X�b���`tܦp�8 �q��71;'ȝ��� �گ63�|�^�h�װ��lr]z~�������%�+�i5�`��o0����Y݀� e�+閔	�!��Yi������)�T��#��P�#c�XW� C���E���*'���'�&O9\r��*%/��Ct��4oy����S������_ل�	B���7tԑI�ՑA������=�(�=�����. �1$�dU��E= �^/� m"�a���ۀ�7'��̹+����=���2�?z�>g���\&�¼P���Wt}��dy#C{PWHkb�0m��4��K���C�Û�_(�%l8��۾���vب����M8r��c>���N�S�!5���gVVW��=�O���+bne-9����Ij���A ���w߃�O� ok������?���          i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�            x������ � �            x������ � �         p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      
      x������ � �      R      x������ � �         `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3         i  x��ZMo�8=K�B�E���ܛ�u��0�I��+�6��dPR��K�1=���l�h2�{��̛!�ȷ�I���;�Og�z�XF��4o2R���j�w���s/}��ϡ����4�Í>�5��jy���cG��xQfL,����h�Q'��X��#뚳|I�I���j9#�so��� Sb�E+Jx�r&��)�r�(���'��.���)2�;7l�.7�|�) �Y7eV�}Os��B�e�[�>H���c������)�#����}��~��T+R՜8�ȝ�a�w�J�?�zK
mHGF,��	|`���{--Z�ҺG�ab�/h�;�v�Ѝ��b��x<ώ<�V�꒓Z��nY�B�fCy�Oe�E1�?9G���L�^L��7�p�,-�����������IYT��__�'gZ�e^5˺��J�G�[���\�;��G�w�l�� o(��{�Ch��[�*��yG(��jq!;,��,k�]��(>�N�>���=�4��
3��Ɋ�fɨ�@^Vxj�?��I�yY��5��$�������r��\a�*�+�c����^����No��t|�4s����d��p��>��Ax]}rf͆�fT��Շ��n�1*��8�;/��!�t̵�Z,&�У���F�����ķf�l2��^`���X��m���x�]�]���E�0� ��כ�E\M�5 AvE�����3HЃ�:P�.���ڥ�m��.L�|�y���$�,0g�{�A
�'�$�a��};�t�+'y#��!55d�5��9�C�V���IZ�c8�ag��:i5��*���ȂV�3�7�h+t6��5` %�����j�u �%ɡ�� B>���Ϙ~z���Sйǯ�cO��@����KY���[5:�9�mD�̚�	D�ѡBZ�w0aVuy̳�iV7\�=K�Q�Q��LGG����b�_Mu����z8H^�\�<ͯ~���
b��	��!Q?������-��3�Ai�m��)�љl���x�@���tO$��)Ko�_�
�;ZS,Et�"[��=�S-�|���CΗv_���)\ZS*Ua��Z���J����GC������E��bTO�5>�۳��M��)o'<�i���1�(6ܛ[�\<�(�9ժX�*x�yӠe����5_1�f��@%]Z5�r_|�S]�t����ƽ���t�Q��6w�ߡ�/�N��[c�Z�~bp1������%5�u-���q�m_UT�ĕ�h��?�ydpU�=s����'��ܵк���=�k'yC�X�<j~����������Y�㺯�30��SC�=s��>�,��l!�a/&8.������q�2�@����?��<����g6>.�;�dպ{]�5��-��� b���c�B�г�W��P�ʥ��`�t��`� �s�|[�yyq�>'$*dk;Y{��\8x�!�6��h�*�u�����=�q@���'��ާU���4�Л���|���*����B����F;%��I��A���j�/9˚5��R���5��Bv(�Oe�Y��"���];�� K��E�AoBc����R6E������}}�?El3zƊ��jR0g�&���LG�����ʶ�� �2�<         �   x�}�1�0����W���r1&c���\]D�,�v鿯C��>>���|����b)U]*.�
��U�ٜ�FW4�<S�Ӳ�ȋ�u�*�}�X-!ml��Ֆ�@�^�6d3��"Zh���ʻ,U����8/떤�'�}��+:���{�@�9^���!��kj|         �  x����n�0�竧�^��忸�i�[A��"�T �}�8VD�lm��<<W�p���X�Nnk��)�j�kõ�p��°�?���l��@�L�ݷ۝f-�(�(�a-�2�樇÷�/<���m��3�A%����.�`�pk�v�wv�y=oH�tN��v��,`c����a���]w�g%�Ay2H-��$霵a��a��+��f�Jh��/��q6�2�)l��rB���%�s4
6~��0�V�dZ���⸾��we���P}��Ɖ�qs�_N���n��9���Sq:�`�J"���i�Gc=��[2\&��"nD�a��7�
mDM�59uD��!+x���)��V�
�i8=�Å����)���Y�eL�<'���H)�|��vonxM��D+Is����E��N\��hL�x%M�Uy5<>?�./�4{����ߤ(��
�b         �   x�}��N1�g�)�Wgŉ�䲷#K;�A�"�V���O� b������=�./��+l����ɅKQ-�Ig�;-��O1�y��ؒ)�ٴt��m[�Zbq3q�c�o�N�1��P�bYz�ܲ��m�H%	V��bj���\Ҵ�4��X��\�6cS�p���X�X���)��T�0(i�,=Evp�:I�'���(2���ގ�v�L=E���s5'G5���L������         m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�         �   x���Kj1еt��6VI��,9F��(Y$=�h�xY�!Y� ��E��#���a%U�#����ލ:LR7��)[SÑ}e�S�v{)a�Q�l�Ѩ���ѩn�!1��d�)F2ݑk���}�ܢ�[:j$��t�m�{л��M~�ߎ�~���2���)��Թ�HU�J9��X�6W����sʟ���%��9         �   x����
�0E��+ܥ�y/�`F7AD�c�ږ$E�Ф�oAP:T�ˁ{8���ٔB�y������r�	������B
�m��R���=��pb��W�\ m�@�NkB;�fY���䍇0��0���������\U�*
q͹�ՙW�9T�O�      Z   �  x�͔K�k@ F��W��-�iMؙHA�VMy$!""����}T͌��*�>_Wu�SPOp���R��"[�L�\ʧ
�2#�g�+яȐ�� �V޺�Gұrׯc��E��Z�o��?[+��׭�6�������N�a�43��	�q�@�[R�)C��8�c��>� ����q��OU��ye*#z�eY�LSY`O�h��p
� 2<�G����E�)���c�Q��F�A�F{A���f,��x&wU'uݽ�'hQ�� ����T�w���,A�������&^��0���%�"=�Z7T\;�ϳ�JL.υ�Hj=M@���;M�R�~`ۃ@���sDCkˡOmL���Lf0���ґ&����^�@2\�i��ay x0"X��1_���˽-�{Q�/���V�5�j1B�u�C\#Չ�͊�tA��&��cֶ�����%Q�� �&]/�r�A4O��d�f��48>��R��kp��[��B��!1�F���ҡ���M�����J]������ժ� �'p���:�]�l`���v�c���v�肁��~Xq��U-s��e�u�������R��z;��D�i��,M�&3�]~�~/����Ku��}ˑ8S~17�k{D�*P$�b��$�)����r��a�oE3         �  x���Mo�0���Wp���Iߪ
-��
�{��E"����.�~î�P��D��536��b(�l�Ŕ�%%���,�',$�ߤ]զ�T�(�.��&r�唤�/�2x��Cw�q�5��i�s�,åH�_���S�sxU�Ä�Lb��"b�xRs�k�s�y3Ɋk	)X�7ev��i4��z:�S�6)��g�w��9}B9lT�^&z�Ue;��C<w�Vj둹$Xr�q�H��4M�JXl�o	J��2��8һ�u�#�q��G�]�ʅ ���X�^�ހ~ڭ~��y�I4�Ko��u1N7�}j�z���)�����^�B�J�3�������=��
{)�t�m2�������'�a�L};C���J�$v�K���{�8�c��`�������S$I4�K����~e��<�Z{         o   x�}�A
�0@���)f_�Ʉ�f��u#5)FH�~�W\���๕�(/{��ҷ�ꠁ���c�\0/Ʊ�<X��}����:�J%�K����hz���_ŹG���*`         X  x���I�Z1E��*���K��Ed�E~$�|L���=nd�T���o�����r��7®�3ƌ��.�
T?��֩F-ŵ,4hڷPG�M���4d�)����BZ>���sj�e�P�֏,���Z/,3�
�X��x������Be��,Gnd�m�c��Z<
��l�ߠ$�0rfW�P 
e���A6X�Rc֗5�(���5�<z|.�h<
$�nu�G���[�53
�}�e4u�����f
���@o[ʁ2r�v���$�!P
��9҈�ڙc!^%�i�w��SF��jLTW�G�l*�Uf�$騝4���/(P5�V���s���HD^�ͥ@-P����Og�6z���/(0*��9ˉ������Q`2���<�ʨ������ͳգ�I4����rv|,f�ݝ3Ȇ��]���,[����R$M�f��)Pݙ�YM�ύ��ѴhW�zA�y�K�.V�X}�L�����`$�8�ƫ�K^=������փ�V�4./|*�k
���~}$�~���H����A{��q&q; �Xr����5� ���d��ڥEr</���~<%���"뺹D�l�=tTԸ]F9uJ1�4�+
_ ~�|      !   �  x����RG�ׇ��>�k���`�ȀM���h��4u+�3��6����2;^,�%�r\���w��Iߜ>׿{��z��)�H%*�O�L��yR?��g�ʛF��ϳ����"1,q�����,��q�6p�!:����58;K:r��<w0d%Hku;�v`Ԛ^���k��W�t3�y3M�X;� (M�D�m���t�.�iF�}o�3�dOs:�s���L:u�@^Io��V�F�al����n4�ʆ��X\)�D�~ӳ�㘩0C��\���3�vf��̄)]3�8's��?�5���b�u�2K:sv@&���\�<T(�Z�w����W���t��D�k�Ƶ�,�R��iq$S[�G�8fF���䈽��T���/��t��WK�X�2��;�����u�����6l�;F*۬������4@�J�ЕD^���W��kgKи��g} ��<��w8^A�_�P�!K�`D�#�4�膥��� ,����	�܆nLh�gm���ƭ�8dJ�L{)#.��Co��]?�f��'�op32�N�C?�po�%�[D�on���U'��-����=��������ڋ�e���/�����u0�5]���2�QĆ���VO^������d |�лQ�t���j{h;}/{#V��q�p���0x�eO,S|m��ن�Sv��7�K���Ů:��x�˘���Ĭ�T�W���5]sXmE#���|oc�A�d;�c��˯d��9���M�\�c3�O="PUb���S:ϓ��x:8�����N���� ^�x��=�W�Q�� bb��슎�h5���y�:a��g< b�ЉY���Sz-!_v����ް�<�炌�h�+8`.bt�m�/���ť�ۑF��[��a�YWt��R��YYә��<�'���{`z6	]�e[u��t��<�]�-�A�����,��&]�2���#Zе�`/�ݳ)�����+z?��:�z�eh;n��!ɡ��(j�$"���P��t��m<�!�(g�C��oM����9�#X���*�;���r�r���9��kQ_�"�#zN�4nթ�9mz�M�"\��
�\y��d��< ��x�j?9o��넑z��ʴ�!��V�ְ�����tn��@g6�N��V���-Й*�Hm�Jm�H+��k�XEJ��$��^R����,�gc�SU�q��~�j���`+:�i�o��àW3�T�Km���8�Q��^�	F�/��2���ȵg��+44���Y�TA〥l��e�s����n����J�^��?8��q�)���z?�j������x�B��a�="%���
f�=΀1��(��s�Dܗ���u7z����9�����/(�7o�N��K��d��x�"�~�k:h�&��5���Y$t����gQfw��0��#�ibF/���K|%*����ؙ�����p���@3�a�,�ػ���[�d.�{=��[�c�� =���_e���e���2�2-�LESi�Qm��(3����9]�&=y�V��ؒ���8�kY�~]����PVt����O�e-P)��Pl�<9�x���ȕHAi��)�=.'*��=4k\T��]+N0׵��.������*d�����Y]%eY~���/���loo�o9N      #   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      %     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      '      x��\M�%�m]���� J�>�΋ld�Y��ذ�� ��߇d}I�r�{z܏s�)IuxHU}��z��!�!���;���>b\j��@)|n���1����?·��0#c���d�.�����	6�W�>?���q�V�xy��z��C��ʒ�o��G���h����t����CzA('z��;����i@�����#t|���3cҩ�բ�V��#tb�hЁ>~Ĵ�\ft����3�'=`\r�f޵>����4�uj��b�讕?��7Fo'z��Ǐ���.%����~��cxAz����Zt��t�E`t��c�Xƿ���U��[�a�@�/�z��įxS�8����E��_�[��H��mi��Y�
GΑ�:pn������So��r��#2�R!������\��	�)��n���9�e����I�<����c\�{�bMX�f�]��i����{t !L?.��A�����6�4�$fLu�Ղ{�k�ϱe����5��l�L����ǇR-:GP��F������_�8vu���`�o号G��j��W���t�Cw��G�Q���~gw����Tɮ�o}<r�r�"l-6;����9��!��&ߏ��)Lcw����q����������c�ti}?�s��\�]vT�H����d�}���8�eO��U�3��Lݵ>EG��У� s�y)g(a\�K�ct�/N���9G�ѥl�]��u��_|�Y =?���w4�C�0
ȳԍ��õ����r�� e���^��ZQ�>D�O�J]Z?�O��W=�z~�����J���1:1:Zt����@��?��F:,�^t�N�ȧH�ݵ>����<���&�Ls��u�T).G����Qֈ���0ru�T>0-��Uw�OGN��G����F>C�Bv�]��5'�r1��I���]s��]B\.ǚW%Ed��+���5cM�p,
���(��"Ë��ֿT*�R=w���E#��1b{i�����CbO�b��G�#0]���z����o��79#�[v ��lG�Zu��������WJ�J�ȗC�N踃�LL!��<ϔ�K)Q�?����i
�<�C��R�G���Y���d�*�v/�uw��8p��̀J7�}DIs	����x��g�t~w�]EQHa�i�*:'�xt��W;ZvXWXt?o�<���T�!+���_����5���X8����x_B�4��H�B��s��[;+�cf;�䎽��Ȝ�W�G��n� s���������R�ؕ`�����ue�5���c[��=�jh�{�ڈ�[]�[�)ʼ�af#O�H��]�[ጤ@�z�k���Ӆ����5���c�h7�o�5�p�i���cY1/�����ު�#�۵q�嵏�>�����4|-Og^c���
%�-5;�_|���q�5j0S�8�����u��Rd�mL�_����}g?����'k�a�z���ER-&�Yh�^���ct���?���9�j|a��쌝�f�GuԼ>�ڱ�[c�|�v��H��ѫ�i�}+���Z�/� �Φ�g,i��%t�L(]B�:݅n�@S��`��&�|��iw�۱�t(j1��)�x���pߚn��q��|�zМ�2W�ibŮ�!4^B���և��Bc�@�l~�Ʈ�!���׺������Z�O��d����0�R	��.�o���j%X'_��j�0�7L��(.09�@g��Q9�)��׫r4v�J�)���1�rƛ�\�)WT�$��QreC��uL��c�8d��VB�Q�uE���!��;��(.ߌ��r4���6�(t�${������;٠TE!,u�d��<�=���-'���q�*_� -5��FՌׂ�)<�d�u �^Y�N�9�M��Q��lr�+�M=��d*E��Y�Z�^|��ǿ���#�>o�X���F�pi��+�|���C��7Y��c&�#<������L�R��3a��tCg&�ܵ��Hys&H�FT�.G�!����ց�YL9���|?�5��2���9:m�a��_d�rJ�A+�I��v�}k�j�q_�#%@>@��w�i��K�� ���)
��:�[�9gɜ��椯��Ì<��C��R{�1�ݬQ�"Xv�L��N���H�Wa��EWB�%2l�
����8�IEJacٙ��*��	��������C94��h�A~-&��M����.��5��>�R�#V�Ϊ+WV��sݏ���i>I���ݑ����k}_���2&�/jg)�}7jF@��`��o�K٩#��P�2Rw��za�fI�
���}O�J�����Bg�4qv�hʸ]뽑O���F]řW�E�C˛\���d��ᜪ==}��q�BX���q�����pԚ�۵>������`�I(Ũ����;�%�؂
<}u��nY�a b���S��B/��LK��D��N���>d[pd[��Km�긲�m�^�UX�v����8��Q�V�o���	55�������!D��
Q'5��Mŀ�FT-Ju�f������ N� ��Bg�IVUq��4Ns�3�2'?af��K)/�nwe|߉�R.1�����w7������u31�b��?�� Su�4F+Q��N��Q����9�=����V�� �ۑyc
�^=�w)�ҟo�?%?ڪ��%�!�u	k��|��̓�+���^��|8x
�l����F����D6B�&}�����o�+8�����P�K(���[-6Y�|�&_��>(f"ނ;�A���˫�D����R\Xh�[�����А|m�t�	���ZeBe_�Dĵ7�Sldn6��.]�8�p.Ug\x�:X��U�A&n�L /��h����S3����%+���E�,q�j/��k3.��w���/;��Ԡ�*$O��"׳
Y=Er�S]b�] �;���Q�D.�'<��֠�,��$����I*CMXC���g�%��귩�hmԤK뭘�OB�Tڞ�˷�UT�[�-�ct���I����&j�Fԡ{%&[\���/ܱ�X��CHo%�Bn,������?�kt��?lT��Uu����h�u����uM����wU⳨�1- 6����ʙ�G��75��(/8	|�|����V-��rG�H1�	��W�Z���p]����!3KNi�U�G��a��+�|���^��FB��I��Â��e}?�����/W�����޵�r�h*S;\b��~�lM���|%��O�7��:!��8U���kf�Լ�l����l�W�E�Z`��\�u>R�t�Y�te}�T2�a{��MI��<�v�߽�����!>��uļ�N2�k}ߊ�u�N�j4��/~�a�
��}/�F͂G��I>�	�r=#�4Y����a�?;�dh��V���� ��=.��֮�+,o�dI��DR㡒S���\�'�����E|���9X(�{�c��2+��֕�$8nQ�f��Oƕ�RӚ��ܕ��5�3�d���A_�%�#�z�o}�;H��j�@T�>@�F^Ա�zi���7��u�ҕ>J�m� �c�c1����ڥϜ���$+m?�D�?~k��׻g<DM��R������
�u�ՊIH�Qg,R���(�e��{���!#��̻~rB��_ޜ�l��[��_�A�y8�S-��\��ң6��zs &'
��QG��:I3��
�t�ɵn� 14�k�W�A�wd0�"�5$��'>+�g�|4J�V����̖�'Ũi��ћ��ro'�xcm&qf�����<�dm ��?���c�8Z�Ib1���5�œaJÓ��Ms�j����_k�"�
,H�]�H`����P�R�^��' ~Z:A�� i��5"ܦ���#ل����Ü���_�|*�]�n���}�'t���im�
�PLU��L��А�� �gH#���!�堧}c�@�AO���o}��h��6��jhO ��Ҧ3n�^T��c��4���r�ܺ�8�hN��+y��[����4��fܷ��s��1�%r�̽���+ɋz�x �  ��rf��<�_2�A�[��Hr�c:�]����ʴ�����q���"����[S/o���f[��G����A�f�^u���*�L<�4��q�[ᨰ��:M>s���H�(��W~|bX��oJb���������C�������ߛH��\�"�6	B��F%qB`���;}�0%\��G�O�_�����v״d=�U�%���k='?iI5��X_;����]=�c���Uk�e|0��k���qI�=�������o����ǿ�����eە�㇫���ď��迆b9|��@jA�A(Kv=�z�+��]�-�ο��Qq0$��ٚp��Ƿ~�Ƚo@��"�DN��v1J;F�,g���V6��zyXu��{�m�6��Mk��H[c�tZ:��1�T��F����/���idRQ�Ks,]&�++������m��P搑�of�������I���B���! �*#�i�������^̼��'{]
�?�I�^���Vh����1�m@ݬ��J'K�t`o�B2�m��sپ[�O��#EQzJ��k%0�	ɉL��'�<��J��0�5��"-@�䗵/8�|z�e����%Yu}�趙�n�	�z�P�g��΄ �}�G�+�Z��ķ�o�ى�ٲ1f�u��Y^\)���׍
c�
�چ���u�W���6�O9 H��"3{�(i�W���V���[#�4�)��j�@����̢e)Ao���6ҿUǪZ!�w���Ck'E*�xǋ�{I%��.T&c}?8�ʊ�} yo��T=�e��oI<�T&�5���'Iݵ��כ$��C��[=l���J����zӁ���
��:�s����l=��`�276��ҫ|��%,4;���u��ta�W�&�5���N����'��TLG��B�.B����`Ź�P�/��;똓�j�U�I�܆\���6�U)!�q"��z3loq�������z+�O%BlR1�m��9�k����{�|e��x��p��vőJ�kh�;�=�F� 3י��EѮ�;W|�2��F*A��;>�׈��}^C���iA�A^����^YN��6�X��0���E��	�|~�K8`��sj�:�z��<1E��Ğa�� E��'��U���g�9D�O�+\����ܞ��<K�˹��J5��u��(�й��| 8���9�]�Ｍ�T8X�B���х���>�%�C��2d�.�{��%:ۄ�^���]�]�u��rH7�Һ�&[}.]�I* 1 ����B.ږ/�I���<A툎§ ��y�$���	C�e�($m ��m�~�0�W�=�xA�9����l}ߺ��o�Ԯ����t(gp:8�k��W�df��m���V�-��|��V�g��X�����!����G���g�L���%�v��7�"�����9�ѪW4����9��6:4�b��e*ي�9+x�BU�4L�u�^�_a��g*�yە~��j'e�2�������_vM䶍�̜92��l�`T��&�Z����U�e ���x����*0_G�:��	P+9i�-���)l׾$�qP�~���{['��e"=��U�By7�'�������i�7��Hn��[�E��XϠ��iⱭ�p�#uO��_8��<�V�m�g���m�����*�!����=:����ɻ����9w#�)�oj]�*�#[�xWs��S��M��"jX�i˹ֻ0��V�ks>�dJB*�%5��֎_���}��Y�*�i�;e�n�'9�g��"�-w��b�Ip����`�^*,c$��}?�d�W���.%;�|x����N��u��!p
���-r���s�C��[�D�wo��� zz����=w嗭�-�'�YQkҬ45le�Б�w�|j}�ꘋ��P�j�Z�NO8߶�L0��&��|�av�����-h�｜Ɏ���|����w-Ge      )   �
  x��Z�r��}�SB���'۱�M�|)k+~�HIH")�d���=�C��	$R4�D���>=����?�fɿ���*�l��"Ri��UZ��ֲ��mQ=d��-~���P֏u�+�5��ǯ�[�����S<�^pqE�c�s�re3+�ߨ��r�X�L.U&:�?N�����e�� ��3`��*%���M)�?��=�V��|��~�,
�C<R �˘�	�<W:&�v�y�"�����6C {��@�?�_�LsEs!2f��9e˰��4�f�"�������2�Ɯt8�U�Ss�NoH�BS��Z�1�`2*�v7C㭒�TeR�Yr�p�&�}����|��������	?�g$͹��l:�Bv�Y<\��#ߋ-�\5���.�[r��Ǧ�v�85S��!�� }�`qf&�=@IC����b��S���)����0g��i���_C"hHqs��r�8S��<ϘC�
J%��1�+.���Q�2#�yt�:�b��r�=p%�����3�\�'i]����b��~)��W<񜫜��Q��4��'�=񐗔�k6��_|�)�	^����_���ܿfdܨ��Ⱥ�ӎ��9E^, ˋ��1"�#�<����rer��b�8�ց�]
 ��G8�ţ?{/$��� x&�=�pb�!Cm��#�;JJ��]@�3©���
Dԙvb�,t0p6�c�)�5�J�r�V�](�����6����'�x��U�4kmRD��4���7�5�����(t|���)��N��u�g���^<u�b����'S�����`g125[T0���93���k	 |m���a&�����+�k�����@��]��(�(��7hc���ر��� ��R?\�\\��<g:Sb�X��A�����F����Y��
��E�.�DH�(���9�m�PV�(�ik0w���!��ix�s�=E�>���E�,����Y�Q]��g�>��� ��B�1�Te��u@����� G�'����={�甲�8|Ag �]L�uH�P�ݘ��G;��y��2��;�K��%fQs^���'�uH�D�+��ۗ���?	)`U�Ζ�5�r	������=��@fب������#y� �����~�`S<<�#-d���4�	F
�Ϛ8�К�P���M�����������]]�U g��-y��r'�m�pnx��(p��a� b���)�(
@��I�{�P�gc �H����������$��"��n>ExqQΜH�K�T�4&�Sf��(\%�aj���bSu; ��ǃ�+*PE/sl���A�(��!7���p(��[|�vk���!L�I��>�H���������o���uF�(n������)�E�QjO`l��h��R���r[@�	���[�����1.Q�r�ն�=<=��;\�D��g�LM��y�M9=J��0l� BY�f� I 9��h/�1T��;�`S�R�(�g`j��)Zn	����>�y��@�G���q,�(���؏�Ǉ�KYvW�Kt�H��jn�_Q���z��b�՗BT2B���	�4�x�@o��<�GΓ+�]t�e�p�hW!�Mgt��1����X����m1���I���<Z�֪p��W���2���Ůx��m��B~��G�h�L��/���z����]2i��h�A�7���@�%F0���@i�fM������L�B,�E֣�3_3n�t�r&2��*��~XWE�"$�Γ_�ٜ��O[GW���B�]�$�ٯ��8K_i����x(+�S���T��Y�;�r���KO��D�* ��H���4����}	�{��R��Ɇy+v��`��[�nn�:�Di�<*��nָ��v.� 9D3�E, �E;�(�Y�Y���p/�#4m�1__���W�;�Rj�.0}�=YB,�[�3���xG5}G0����{f��h߶ϴ�__�ǔ�2#i��n���$L�/�þ��L¬���/���ҷ�4�����0U��s�)�`�Ar�g���6X* ���f��`�`!�����G?I���x��9�XH:����
U��}Jw)L�P\�C���S�k ,TY�_���2���ݏǦ�쇵��kxN��J�e/i��]���Ҷ:���_������jl��jՎE�m�� �����$b�p���4`h�0��y!��P ���f���e���
�,�⦬�0���-Y��z�-w�E�+�!ns��!V����$#��*���6��W�[�s����;����:�"`��Z���5i�_$|i��`����^�r����7�T�m�in~��N�	sHc��ŸC�?VK���_�0Q�Ż���j���������f�Pm�|���˖~�F怂�	�o&�vF�LAC��e񁃀��#�J�\�-&qK�h��Z(tmwY@�^�����G�0��pKǀ��fB=�1��g����XOO���2ѩ'�gԓs(E�M��˓c&��v�P���3�z����	ng݊q݅O&��ӚV���{M�&l������O'&�%\ͭ#W��'C�u�[��zw1�Ϲ����kY���*!vN���Ӵ�~�Eð�/�r���h�kZG���G�Y� �֫l�#zt���X��z�u�D~�ܮ�/~�>!��3�	��͛7���t	      +      x��]K�\�q]w�
�]�,>{7� b���fb$H�d� ���S�Ϫ���H�4#��I֛E*�Gj��h�<r��ϯ�}�{h�b~��_K���ByQ�������۷B�;~��w�L�I�+�%Q�I���p��G�LRj�$1~��E�U�P�"�Q��B~Pe�G���#ƅ��(��{��[^�K��ټA�K�H���񑒬ِ)�q^3���E��h)C�YL�"�B}-��ٔ}6��W��:�hg��S�Ë�rZF���S$:v�<(
I�i0I?�
}���+֥����ޮ��x7d�r]J��<�+�W�,����a���;_��H/ސj���1���W�&�xGy�e\9n@��۩>�߹��&�<B`%�R�T���hʊ��������!�P�<�ǲ�m���X���{;�ܢ<�O�����o����$߭U�X���.��X>�W��%�ج&z�eZj���EA��dM�+BlYu��qX^�����0,���^�I꒴)X}tQ��O�H�)�P��,^�RY�L����ߏ�=%����I|�sTT)ޒ|��)5���|/�xG�@�;gsH,���}x.7��,BK4n�]�q��ؓ}��J���xu=H�aO�G�Ğ��Qz���Ey���1���n���c��;�(��a?r4�8�b)��2̳�a,4L��#Ų�R�<���<#B��v&�)����1m^����ܢ2����?�"�H�<��N��j���z�J�~;A�Ǿ����A�"*栕�O��`�J�pd�۶��.�Aw�A|�2W�� ����j�r�\���䬖�<z#��w��\'����ބ� ���9.�ˠ|7~}?~��c�]Ά��b��w�G��f�cQ���)�eCDA�6�Wb�"��(����O������Ɋ�h[�1�i&�`-�Ā�5���ꗙ�v^�gg��IJB�L=�$�H"�m²Ɇ ���l��`�N�,����Y�Qd��c�h�4���'Db�X���U�g��;���'=��6�' 0�_S	I��������� ���/ Y||Ns�"C�Y/EA�ټ+1�Cy��Y��į+	{�ww�x�.�\�Rs�4.z]�+�d#k_w?#RJ���Y9��Q��G����c+ّ�?�	��,��(*,9;ojz.>z���!��f.�s$R0Tw$٢����	���xEd���P���#~�#�'K�E�$�K���]�M8�kR���ӽE�.�k�����k�уcG�G��߬�Bw�rU����<ٵ��1�}��#ܜ�"���1��#7d��Fv5zp<�[���YCjI��᭕Ew� �QɊ8*
�%�(�ZYT-���x"!��eB`���
ZK|T1�$L�CpT�'���a��9�>b�K)<]ʍl𱙆�����e��H���1kC��V͢�4�3X��d���k��`Q��~��?��oz��G&�9��C[�a�f)�Y-m�ϢPf��?���������|���VWJG������Ė���=����|�0�g����E%�� �GyF�z���e�g�`�JFt��P4>�J�A�ZQ��Y<�0�DEEH�(,����AU'U*67�޸�u�Y�w讠lS�C�vo��0�64,���YS�G5���]9��g���[RXJ���E����+oK�z�1�Е����E"n��E��Y\T�A��ALF+�劊�*K��[���"Q!��Dؤ^�Q�V#�v��Lg�P=�oEm�y%�D�'��폤��g��nI:r��nf��	����J�&M�U���y��ޠ�U�t�9=��@3�%C}���ٷ����LO�t4zb����֌�~�d���o�F�"QT�D�ɮ#hB<��vKƞ��QE#6���2��kx��,"�"3��R���>fc�rE�d�c� �yEo�����Ďa����T�Q^���W�/��X��R�c�������i�{P�1pc�rp����cw��(�u���-1NOQ3H�<4�s�,�Pյ�VU����3�e��eQ���~�n|iO�,�����^p���d98
ˈ7
UcS�]� '�hx,�zq����O$�t��z5$���jvI4z�T1V#?(Jܺu/DEB��+�(�����4%�v��:M��i��S��_��՞�J�9*S�;'|�Q2��@|����IV��=�,#�j��RU	��N��>�R'�D�fҞ�w�C��'�|��p��C�jVPr�3I��$u2Elb���iԦ�fuJ�����c��O;�>��Q=a@�F��矉2�?�ȃ?h�B(�б-��uQC�61m� �r��Zڢ'�5TI����z�����JN�1�6i;T�8 ?e�P�?u�u��,Ll+��rtS�(�Ks����E�[�0abS��'��*�#%����䠽��I���
o��`���~4L9ɉ_��I���
CQ�6o��.�W�Z�j4�碚k�Y��@%�'T�+���5m��B`�l/�6.�+�3�)%i���2i�0�
����T����� �E���$nуk�I��I=�,��+QPLQ���ћ�U���L��E�mt8
�0J�V΢�C4�>B<o*r�;Io�,z�O��8b�i��6��d��%���͢��a���䭕E��[ �
Z�4�/t'(�-�qj�.�a���������t.j��o���ѵ?�\)�F.±��X\����oZ�R�)[k��k
[X�m:l=�i�LY��5xELh�r�6�zm�N3��.�D�p6tvn��Y������ h��oQ0�����p��ū�6�V��/����_���E�i�ۂN���WЬ��m�,q�k4�E5U��5�=G�O���Q�u�C}V�=W���9A19C/R��QC1v�
��s�������Ѩ���S��Ք����si�(����J�~[�ѳ�(	�9�tQC�[&��#�J<�@���4kX\T�L������fTE�C�G�D.jh��i�)Xݢ������쉘EM��8��I@�K��Eɡ�8�:V-dI���z�OD�F��E�YȬU�Hg�kU,j8�e�Vq�x�8�7�o|T�W���)����������^=9���Kn��WI��ڨ�E�E7���nQC��}�(Y=ViC\Pj(,>�����F��r�K��6	Op��t��E�s�T{��83��i�U!�,B��]5T�'1զ�p��kh���E�r.=�I�����7�׮���s[4�d+��I9��D8m��:�96h��~�z>�/B��n�p瓗�Y>Dw5i��QCEB5�
�3�T8�;���W/ϲU,��*D˄T}�x�vi��'܏Zbһ�?��� I`�O����
˸lҌ�%c��l�z:E�5o;��E��GK5Pt2�C<��$�R(V��}N7�y�⼪8p�2"T��T�-T����$�
�����DQ>jO
-0U|�O�`���rAC$)Z�e��'��%wE"^Y� �l�����?E������TG�|TQ�	T,wm�Tr���f�*�Y�ڬ�������ogդ��H�6���B��#g���Mƕ��-�T�{�q��j*��07�8�������q=3���1/u\�s�1�<+��D.���IjH����ZH�G"5v�%Ѩ!��^ޑ�)��[Ԑd!a���F��@�2��7��Q�!���C8w��B��qTY�;T�j��
��~o���֣�>n��>�<���|�Ϡ��rb��
u�N�?t�Β@�z�cS,_5[���1z[dQ�EbR[�Ojwz�ʚ�%�5f2.�qۊ��9F��mvL/$u�bP��ߠz.4Ez�S�5>���6`UTUn���kf�\TSe�h���)vm�U*/v����5T�DYȶ��U����m0�s9��T�TE��
�2��i��?y4=�a%��Gk�zc�5�������FY4�����A�&}�yy���G�1MS��Օ�I-�#��i�6P�r�fv�E�E[)�F!�vMK��^�-)� f  ��̈p����Yh8V��\t�@8�~���v`<0�pX���}`N>sZ%�5�m�����歺E��m')���F�Q������&�I���=Q��AS�4Љ����q��{v�06~qQ��ɛ Yf���%�=�����Ih'E�)�=AA1�v&������f6������%�:R��@�����`6���I��x.j�G�3�6������@�k}Rr��H�E�k7���� "�F_��h�/�ǭ3��x5�3���|8Jࠆ��#������F�-�tM"��2��?h1F���Q�j��I���<�ņ�h���O�x}&�;Ʒ�����r�%m:�Y�|��C���zZlQC�I�ec2����Oz��#D����_A3�'-N	��?�F�'-Nx܄��ي���~
]�"K�$�A��
����U�0!��j�>�EdI=)��!�	R��X�$�����9hTS����9�$]�1,�Nx�0�}<�H�����c�r��M0��i�`��
�s���M�<ۍ�s�}����(k��۹NF33s�NH��]&��=I�.v��>��)K&X��DEC�o=iz�m}�����iU��֕�{��`7�_�=*y���ϕ�u�2�K�� �$h�����;�+�������Vh/�V���p�ŕ4��,�L�<x��%����rJh�tKC� %�.����&XvA#nE��R� ������ .j��P�[��NH �|�q��!�W��5U���,�X+ .z*��ș局�*� \>���o[,�� �l��Jj�8�Ǿ�/h�Ύ�Y�*ٗ�6�PZO"C�,���!Tx�*�T� V�(ǥ�͜��(Q>�ϩ�Ad*b>��6����M�w�L��
���u�����9�uo�,wzs(�6���$=ͺ#�+�$u�磆�&���z�����F�	w9V�ݳ\=k;^2{����L�۔�P��S�
�*ާ��!H�	�IrC����\_�u����9k�\���ѷ����Y�$�V�|�aaU��%��lO�]�a�HX��3Y�x��.�m���冨��jq:8O�����>ʼC���ACn�ah�4��En�c舏;G�v���W�s�o�ܢ׏]J���F�Æ'<��[L�|���o�fT����Ğ.�=]�'"QU���i��QET8�*O�;��A�-�V�G
�I�}t�B�OT��Smb���\���t7��(�^^Q9�:DCst5b�ȫ`����~X�<f��|�5����A�#)�6�>zފ_�$���xDR�p~<�%o%�����u����C��ނ��M�;�*�o��#N"u��G�֋%�*����w�����x�G|��G�0׈rDF�����9J��ң7���z�8PN���v�V������y��Q�ꦾ룛�ՌW��y5�t�R������.�$%-Vur�U�ʙ kK�2��h"]�Qm�|D^�ƚQ�YZ�'F��R��\�J��
Rt6;yy8Uo�7��f䪃�JC��i�C"-0��_���2�g�� �6�>z�<gU�������z��qR����������V�&<�[�.�@>�F����|�?�T         �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`      -     x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�      /      x������ � �      1   �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����      3      x��ZM��8=��B��,1D}�oN��xӽ3�b/���Dd�KI���oQm�ngX����k�"�U��H32��j)V�\w�#Q%�Y�>��]��*�fi�0��C���j#;Qu��up۬�3cc��1���ڪ���!�F�҄���~+�%�P�JS�a�y�<�}��F�J�k���j��Fh����k)G-P�K�����":��(��9�/`#o��}+��������T��	�)�M0o�h���<xզQ�Z#�"���嫩������֣X�
��㖯e��d�N�R�40�脖��੒��D��Tn��C�.y��{�I4~-J#��E�dW�ưE)�Nɂwתi;�W&~'�	�0�R�k����cI6¸i�e-Q�Ҳ&GV�n�𯴐��q��cC��|���t���iD9��Ab�ӿ�_T#����������8#����$�E�Զ=|dr��5���Ei�S/��ť����&[8�a^z4�W7�3�g_O��5��Rk 3�;9�����n�jP��cQ%�y��V���7�� ��(%w|���m3�-*��0���&f��;�7+�c*���ՠ('�\���Mq�Ҩ �;(hT6~.4�-J��:Q���ka�eD��t-_H>6�bN� ퟍ�/|%Up���zH��$'�9hQ�S���7ޯJo�YM��7��0a��pX��	yfތׂ��)�1X��	���8#�j%t��W	��9$�_�KT),J����s��6s�,���9SI^����z#�X+���:0	߰�>��҄Y:�nT�]Y��Ci9:$]&�Ŗ�τ��Ci�������3��SDh2wJ���Zv�`޶0C�[�ɔy��ݲ����>Xg!�=�IN��)�N���Ǵ��4)�(0�_´���:/)㡋��[�������uRY��x��4<������)#����>"4�l��?6�Z�/�%�iL��6��:��4!�YI/g�iJ���oP}�Dh0wU��khv�DXmp(MsH~���^��ß�MH��k8Cc�����@4�<CӢ4ɓ�$��S���:�xy�д��E䃄6s�{�"4a,J����b���-.!�Q8�7�١9�s�ė
"�㵷����������V����K��Ei�CjuЍp����`Q�A�d�/':�8��0���Y�j�Ein�&Y�V���S�`Q�C��/kX�|���i��%N�5�A����~���~��:�{ℌ��*
�yjҹ�UlЕj�	45lf�9��棩��$�L2������~�jr�j�Ei^���{��M�ʖEi����Xш�ڽ��M�������6/�jH��7�6!*`�[;�1�8�EJ>A�5�|+�-S3ʋʍEi����Q/&����|�"�Q�ݳ�>��f��&ҕd�)�Q%�(-��_�)�5��O%c�+}��s-���5��2:h��X��4�ao���)��W�x�1%����I��I�ʛEi��;����T<k�"�W��^�v��D%3q�i۷7�rðd�F�5��c�?T�T�-JKHC���ܽ<���h��������W�5G��_����f.8~.���C�ߧ$�l&��4����9��\	Yhsq)�|h��[�n�2t����6�n��F�Ӣ`)%�}��4=!e��f�����w_	*��{��(�*��77#�s8>t,�ZE�6q��aq,�C�U��cL�Ǻp#@����4R�9���\�qp��~3׆�mQ;�z������C*=ru��:��W`���\a����c�ĥ�,&��ѓ�l���nĠ�}���~�y�C�6%��\��>���c`d�~��%�4���?�N��MQL� ���}i�U&��#�J�&�hL	��M�>���_�����fJr�S��ܗ��T���U��<"������Or�Mx-�������Y �]��,=�v�`!&�����g��@�A�-!����Ne�XM�$�e�+�tA��������U8      �     x�}�?k�0����St/9t�?�<�])��E�MbH�����Q���/<H?��S�`�A�����6����w��א؏��t�ێXb5���-��E���k4�����<�2nS�)6�QuE1�>~}�^��ΫTUQS��6䅢�׫+��S��)'��T쌡F�׻�(^R�.�4m[l��2�}Eq���0σby
֩VUQ�j�Ӳ~�MJ�Bl5��(^��I֐U��"J��T>S,o[��z���!�/�d�`      M   &  x��V]��6}6��
�ǟq��YB�Hh�վ �w��Uw���q�	�˽{	�x�ϙ�3�T9�������mI��SJ��*�.Ԅ���t,u��������P�������g4;�kΤ�:h�E�{�O��H�T�4�V���P�&PkǴ�à��T�T�sA����~Ps��1�2��^@-y|��?��V�a"Gp!���X������Ƚ4E��.ۉP8��\���e��b��4)�]�?��|�W4�eEA���d���i��}�~/)��q�9���]R�#��2Fj��&��L}�%Irp��ђ��s|:ѻ|ě���n�N7x��%���Þv9	��뙯�&���Rh�}Vk4.�1HR3<�����1X٧ٔyU�ėZ=мLs?�G$�Ӭ�?�i�|*[ʛ�H�r6�덧�&�i��e��X��Ӌ�+Ӭ��4��Ѻ�4s���_VyI'TqI�H�*��m�j��@�et�+�'QP86b)�3��r��X*4,�x� ��a�֟c�3�4��YM�媨�gYM�U�:֮h��%>�$���b)$�(�i�z,���/gˬ��������j��D_�a����@Ŵ�g.0D�X �bNt,���]�*���꿏�|���r,ޭ��ҿ�I^%�z�!ܵ�����,�Q�Pxޜ)���Vͦ��j�������VכuK~]����w�2���"
y���3�q���}�W����(��f���7�>���OzJ���b d=9G�'E�-�""�8�����B�8����dx=û�O�8�D��?�����4�j�����~ohS!ӥ/�k�����(�r�����׹?��Z�$XD�[��΄��UCvNľ�)�G��}IT8*LY���whG��g��+��I����|����1t�������U�;�T��4�)�w��W-zu��Uոm��Ѱ����AL�^�M,�Fx��_�n>wK�q^㮜�h_��G��.�g�����!*46���T�!��ajce���!�֌. ����>��h�?�!Z      5      x��\ˎ�]����|?��I�dc%@d��ؒ5�%M )���T�o�n�zHK�G0�3>�G�Iv���a������ǿ]C��?������˿^�z��=}|X����.��|�&���b�u/ty��Ÿ�.W�N�����W����++����@aB��_>]sɒ����������_��1�&^�Q:��H�~���$@W���>c��*���_�}����O/L�{5�U9W"�0��k}�I�`w���.@x��`�M<�h�̯^+�w��f)<wY�q/D���4C��M���LC���Jf��~��d�?7���`���A��J��;I���g��m��
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
TU�G���-a|Xf��n��X��]Fy3:�m�����c��x̀����x�[�S���h��W�߆��j)ݱ�O!}�`�����U\�;�iI�`�z�<z�ޡ����/�>~y���wd�._n��x��B��˛�w���U[�F���F׭	��9��wGn�>���~�0~�Z�9�!4�G����� �  ��ah�(�#t����]c����*G��EW���Y���R�������o(6VSH�MQc�����}(�2�c�VQr|�����[�a|��Rp������;CY���)/�o����SDY �k|�He�w	
o��B2���Ɓ�^v�'.�xy�dz��zZ��>>�ʒ�~�~z�T�^�8Mu�^���(=/����p
�9��wr����A�3(��ͭ��Ik�?�-�Q C�m�j~H3�Q�XR�G����t���Ǉwo�;��W�����ugt�p����Yq�|�~F�[�g��Gn(�IУ$ ���;E�7�)��� X��Dp����u{�� X����N���C�Q k=�Sx��u���EY tk▗Y/)�g��JKԣ, �=q��Fa����BFY �{�
�F��IH�� ���-���A��\��� ��	�F���Χ�(	�0���6�x{K]�M�Q��7zq���|ѧt7pe� ����o�)�:�~8�>�~lv�5ȣrζ�"����r�w3%wD�w �h�&��1?(��!����0&�*SN"�� �iW�(�*SN�R�#�31e�B��0�?����ڼ}�����������z��k�R�K���T��Q �5�b�R�NBR�Hz��c����tZRP*vaIDI ��W���|��A��Z߉7��e�)���F���NE+-e�� x����'o>�;�]|Q�+� e'Ⱄ���(�4BA7�嫊i���:���m�����R5�;e?k�hƊi�gi�jbe�8!�LoA?�7�@7�U�mS@FY�����U
�X�R� �G�QYW���C:�:h���]?���oi�	���U88(S�:Y)��4ܰlZ^g(��������      7   �  x��ZK��:[���F�G?/��.������Ol˄�p��(0��U�ݖ��,�Y��hT{����G��*���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$����!��K���mV�G<74�-�x
�mWq��� �T���?��=�r��A�Rm̃�k�)K+'�򊩯D�k��~�Q��$�َ窋D��N�eKu�.W����Ntl<�u@d[�M|M>��7K�G�A#hZ���K��MP�Al��4D�"�KD�?��Z쮵k��hP<V��%���W�oY�ڕi��K��YO�Ծ/��Ij���)��5�#"H(����D��ۦ�J�����x%�#�CX\��+���/:&*]��\m�E~�Dg�K�n(�iP�Р�P�ei_�?FY�|���Ϳ�ȱ���NmLtF����"���o{NגODOh��uL��S��`�hv%�]tisC�J4B��&����K|w���U�kߞ�`*R�/e�"��A�������Q�_.�v3��!�3��V�L
��k�qL4�E���~�n���i�n��h�
��6p,-۾zm��l#4X�ݞ��Vߺ�}7�G0��}̃�B��hC��X�i����vK���]ﵶ�C/c�3�!���kۼ��	Ȑz�:u3Y��Fh@�����J���M2�A��^���+�Mz��k�ݰ�u4���n��S�pZ�>�H�����C+�V+uHuA2d���{i�K����nD#4 EmHd�ۺ&�:�����",h��$}��Dy�z����`�[�|�ɶr1���}�t��������`JL�ׄ�Jc�3�kV�|�r���2xʈ���u�9�nhHL����j���T�'�E��z/MI��O�~BCj��+Qc����l�Oh�D�D���~�U�=w�J�@����]���n�]wm��i�_!�����]%j���e7%DBh>�H�f�̐���12�Hi�A$ bI�&R��D�D����Ȫ~��AĪ^���`�Y�OAѕU�4QW4���%�3JW4��$QC���%J�錵+�?���+���4QW6-��,�@��O�$�-�h�3h�P��$� �E;G���Ju$�D����!��$	U�q����c��v���B5)�(�zL�I�o�\�*
.Q(�[=.n�L�t��{�u�L�N�-}� ���Ի�����P�gjJU��
p��ğ��@�l땶8�{�s�x�6���ҌۑqI�N�b4Ov�	
H|61j*ǙT0J&�T��}�-ׅOt�>h���J�v9��h�N�brڝ�]19MӴ�!&�57�r��*�]=3q�u9�L�;/ݻ㵂&�L;Դ�!ㅪ@i��Qs�'��#K��*up�D���s���q5)�rN/�=N�LTFk��E^ͷ�Z���w~ܙt9ԜrG�6���)�8�A�*QDt�5��Di��� �8㹦-��q8����4��R��%rx	���=�����M��f� �����vxI�1�κ��Le9�O����=;�B��4;�"�ʝ�V��|��c�L��.b��F��Ϸ*P@�zӳnU�Ԭ�?�H�H�V�^h�.�jh���1)?=�z�׸3�};>2t\w�Sf=19w�)�ü�O���6W��k��1�w�3b�/�+.!&��d��G=n��rC�Q-MV\��	t�/dH9�l�a׌L���̈́��g�19����)����n�wU��I�iv���2w�ٙ��<ߓ3�!�ߟ͞Qṅ��Ψ������7D�_�L�Q}W=F5��ћ=��<ѧ�<��/;N�Ĥ�ܖ6Ok.�<Q0���=a�z��#�7��/Vnk��`���)����`&��'B"��2I�O����'4�]C��      9      x�����n�����WQ�A-�|���g�q����m�m�݇���["_i�Q(���E�:������?����ޗ�r�-�����Gp!���.���_�=9����Wt?Q������|�?��?��sk�%������+���X��B�p�ǿ����o����c	��������ү����/�|e��J��.�N�q{ubq���/_���R�4�� ��T��!��/���w_>~�Ժ����{����XKii�ϫ�P��Q�`�K݊�?z؊/��c2?>���r�I	�nD)<���� mzJ>��R�'�?���������_����Rd�
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
a��*r��ag��g LNA�=aW�q��90�G�����$ů՘}�X]��:� 6X�b�4dZ[�^�O0�*� 0  Ծ��!����	��Մ�0�̩�T�̎]D>jSU�&[�.0~E�a�7/G+Uud��tC���wa��3XBu��r�&������Bu�°{-9ú�)�f`�-N�M����êm�U\��
T,�`f��wq��#q��@�Fl�"_��ΥU>nIyV�����5fq�v_����&7�9|2X'�	�s~
}��鷤�'���v2l5�S�R��9���\��ū��l �ԪY��
-w����0��CT��X|��Ό�g�A��R뜢3��pbQP�ɝC�Te�圢�BQT�Ѳʗ\��z���uNљ�8��,>k����X�����u� X�醺�3���E�x0�(�7��tܖ�[�p�lr�Mհ$0����U��wi��>�]]�<*6��}x.�~���o�O�&>ʢF�6�؊�3�&��T�x��<y��a���
jEa5���V|�fv����b<�L&�+F��7S%S1����U�X��_���V)�b�����bQ#sD���W&/���<�������.Vl�	��y��3����`y���SHϏ���r*<�;r�.ojP�"0�u�\QǂGqr��lN5��;���6�����ꂵ+�o�ѓ�8���dP]�~^d鼁��g�cD�}�f[���#Y�����aAV���fo5)���Z:��s+�k�ꓺ`���Y+�Qi��m�rU>^Y�/%ɘ�[��T,�a)U���y&�%s��I]�|>��zIz�@�{�\�f6�cu��7�(�H�#V�SZ6�ԨX�ڈ�Z��62Is��n0~�0��3�89$�ص�MԦxu������ns*����������[1�I���o�?��{><~��jiVyd��TV,\a��F��L�)�+�m��WX�D?�V�!�a�K�w5��P�b挼�91�.X�Òo:�^�%�4Xm���Jp�5��l=~�Wd<8޺���{�����v(+rn;?�nf��b��$`>G`��`?���p��q�����yt��y)���`'��*��E�����Պ����4^���i���`^` ���hߥŠ2�.VA����g�`�.X0��')���-v���z�.*;�%�#�����ZfirWA2c���#_Y��3�,>FmV��X����G9|iO��
Ky��̢ؾed�Q�/vf30V'+�G��#�W2GqIF�k�6������>͗�t������D�[V?�5%���Vu������*A
n5
��b�]]����)N���#��a�S�H��j�#��D
�����Y\�����`�=�k�-'`}�jf"��`�a�BR���4 ��y��NX>�sf���� ظ��$IX]��H�QTk;�8^����P]��� �Q9��a3�[:LD��;�&���db�9�ɔ�P�=Ռ�k��z�,M6Z�ą:�T�%G��q���z��R�C��{<]���V��=2e���K����.��{P��$ �rwF63�X]����5F���g/ﻘ�#�NX�z�RZm�{d�J�,�Bq������VAw� y���ua�.��w��O�YG5�s����bbu����r�n����d ��`W�Q���aQ^�1��wUî���� ��L�������:�/�˥����Hf�;gо�mD��-/���_3����:�y�q��kFi|�{��4��X�5oaU
�Q�� w6o���ɪ�5� +��'�;Y^�4�!��X�5� �fǖ /)zs7�I]��7�b�(+ˣW��[u�⍕xE����Ǚ��]UA�<�|b����T����zMU��8u/,�a�)���G��u��gV�Wd���J<L$��X�{�%�+;v`O ����3ku�n�#yW��,m���m�.��q������sC�p�J�:Y����0	"�eϴ+O4䱺`��<?��g�<u�9l�Vu����#X�%�9?7e���}D�9x�G��������R�gA�aP]�$,��x�s	�%ʝx���,w惘e��8�`ݷn����:�SV]�r��101 7�E�E�`�
|r0>f�GQ�f�k7[,�S�fmq<;�dT�_a=R���19��q3ju��P2�ƅ��d
��^&�(�����WAu�.5㍑ݩ�!����q��&��c��2/��S@�/�y3H�f��FP]�",��1`�5S�U�~��.X�I�J8W�X��:d��EĔ�zyE,�����v���ǁ}b�^m��E�������.����UPs-D��tw&vyljR,�:��F�yᴚϕ�����MUvȻW:��7a&R|l����b�'�+f����bͭ�U��| ò�^���q��TB�۩O��n��4k���s	L]u���mhu�xD��U��]��*������]�.V,�lJ�K* �Н|W�1)T��X?����\���_#7d�$.}/
�$~�'5C��.>�k�f�.���Rj��S�$Gi)����|��*;��fu>��Y�n�	���H���Hё�Ȉ4�,c��||<��ٺs��:g>م��.<5N���r�}F�[��k�����k��]�`ۂ��b�f��`y�`7�f��wqv.�V~ֈ�:5b1�Ű�XuT�:� 6���Һx�C�vq��et|�4T�=gP�s.�'��nX]�~�5��Ț��W�����'/0~٦Zo(������NP\(GQ�Q�яMz�� �]]� 0d�s��A��8�y����ܹCŪ�1V��^�����M�,]Z�:���m�"M�oĚ"T,�a���o���^�l$
�+WX����q��nd�"T��a5xu��wq�o;3������[e[��(�w�&*P]�����U�h�o�������NX����y}�`�k͙ (.T��	yG��|[)_��F�_]��yMY]�Ue��
,��2�}�=��B�U/�ŧx��5�`�$���R���BRiYBN�	=������"C��(>��:Y�	E9�E�{q��*V�k*m�@��`���8u���.XL�	�R�����|��:�.�y-=��R�����h����fP]�$���m�(�r;̻��U{�t�u+�+��� +�i7�ʨVU'+�}���Y��}/�*-��%a�R5��Gp�E��l�3,9�s�N;�.VnD����l�]�l��/����������v�h����Ue�՝a���ǚ �'����iu��Vx�� �,�5�MhU�,��?��k���$�q�X]�x�E�s�����>#��UX]�t���MF��uy��v3�.X��r+95 �@�>��UV�r��T{A5Yv~���`�
k�}��t�^�8�6=�u:?�G>�ظص�c'u���f��z�f��:?��7�ꄵ�AP��)�L|���d/8�
� k����NCt�� �W����j�6:uD�N�'���fE�> �ꂥK3�sn�]Y�Hz��?��P�K� ��Pa����4�d8e䬬�`�K� ��Bʩ���Gԥ��`�K�X��G�`�׾���ꚝ�tr�m��v�(�r.�uc�P]�ѥ�wCV���妓*���QP�����u�1J�� ����2:���HD@Au1�>:f��Z#3H�ߎ�[7���j�ע��(%ٴ����c@��['�K����F})y�(y�ϧF��Te��Vt��Rq���Bv�Nb��Q���)��۷�R?.YNT����Ղ�b����0�"��e3Cu�Ϋ��G��8�ա�`�֊�gj�̟��H��Uו�gV?��;�R�_�aͣF�3\Au���</�[+��[1�8�NU2��</�?f}��AԿ<�����?��ֺ      ;   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      =   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      ?      x��}[s�6��3�W��9��,���J�Ďc�%%�=��j��Դ���"G���[ ��1�5c�R��-|Z��ba�[���i���D*ԫԽf��Uj��LT*�+�W2}�:�S�+��d�8��(69�]��u����,����u^���v͌v�C�!2�*�^q1��J�+�g�Y�G��,cN�EQ�l�����V��}\�Lf2e���S��	w6�O��ӌ۔}�n���rQ>lG-TJm�z�er��+���4��*H����_ZE�Jb���5:����Ld�����_����&Ϊ��}j|`�*�2,�}jl`�9��e��ۻd��� �`כ�����f�/��ժ�/^?���+1)7,�(nW!�<}�݌��W2KRe�8G�q�8{s�|��p}s��������y�'v������笱'����(�),������y�O���U��/�1?��}�Y��G�X�C�S�ْp���FHm&�vQ�nj�#��>���X���W�!_�GZ ��=���Bq�j1��1�gj���i���|�)W�e^�X����qY��}�䡭2mf�s�<	ht�I� �Oq^/��U�+f�f�ؗ���0+f��|ݗ9��*�\���ᐭ)p�B5I�,������������\��}�����O����I֟���T���}�(���`���3J��9
�Q��T�o�do6O��8,������_��r�Z$���ȸLSM3i�9E�� ��%M
��6_���i�C���n�m{B���V�)��A�S����×`���>�ͱd��]�q����[m�JE�tf�IK��(Z=	-
5�vU��)�K�������4�e�
���&����1�Q��S�^�*�(p�Ƨҝ^i&;�V���
aS>\T�O��}��#�͏[أu���#�Y��[��56>��{��.����E���� ��~<�O������l�/������a_����#��&�����&ɏ��k|[.˒l�fQIΗ|�X��m�Z���0*2n��H��S��?�����k��o߿��t=��y;����w�V��aIaY��HHϦ�̨�qS쏔8y?nw�j���\v�o��|�ۗ�y	���$��]���&�.*ۓB3)1�`	@�.�G8D��_���(�ͫ��ܛ�M9�£D���e� �E|���t(����O�>�7��v{�3g�ßs���M37i���\g���P��T�лbU��`��-X����]fy�=���F!$���//�Ix�>F6�ǐp�5�XYBu����d��+�ک,s�,A`��o�M�-4�d�2b`�~�n�<o��p��=��c�g��j9
H���/T����>� ���{�)f���-�p��Ū�!���9.�$�/_g�(��i���yo�����횷�k@
�!�Ӭ��2WOb�s�@?���-��N�*ʿ,���Om����Dz����d�e��]�7���b_��o��n�z:�%t�c~��
��dv�P�HT��FC�Bķ��Ɍ��cI���~���_��+��-�nR*�%Bu����ݰ��0G��W�h[$��i,�I�d�k`�"p�)x!�nG�gޝ��
U���F�9v=vɭ��$12Q12��]�c�:j���Շc��(�u����t(�=/)�V�I��dQ�Sr�"�����|��sy8��+/��p�6�����h3�MZ�6�;�$���$�Ñ}�.���Ћv����Rnդ%�"Q.�k~{��?��~���x��Oh�e�i�E΂a��I����j9�;��>H�Xn���zR�w�a9W�LKDE�N��@�śr���8�%�5��?&{�xɸ�7�@S�I���q� a?����&�l{wW΋O�Z��BM�\Զ�Iޤ ao�u����,C۞X'�k�MC�n����"�k�:�������1����,��<��\ Y�I����m�;l]�#�M0Kuu2Ծ�f���\ f�|�_ b�O��n�/��y�(��p1_��C	w���X �`�`�?�{����w���o~�f�F��r�����i���N��D���&�A|H����b݂�.W�p�ځ�b���=̷䞋�|N\Ns^$0� ���?~���5��������O��2O���9n_/��n����>-��ڽl�ݣ�a��|��߅��se��=��˼����/#���6��Ӯ&95&e�85YN�┒��7,���q�rڔ��6P>i���쳎
����⢣�gx������WŌ��N�z1,U4�p�q�S�M�"{���� ��z�{Kz�o���[���\ϗ`iw��e��2i��Qo�L��-�}}������v��Ƿ�~���ϗ��n�#D.\+=1r����$>��
f�zsړ[�*X�tړD��eVO�Y�V�L��� -����kL��Ⱦ��T����<.Hh��!�J�4�EM�����BYo'/);�9//Z�~�<����vڞ�K�~�)Do��uQ���")��=��=�.7��š+���q���!�O�	CU[���8�ՖȡzHȕ|}X� ^�Hƿ�6=�p3,';9	�KĂVg��kyd?�{�9^��+�&�]ǫ����iE/�������k�~��e��1�wi��O�����8��"8
cI	��K���d����Q�P4t�$\/��0�>mvE���~���zFz�G��v��y�h\���5�<�,~�-�*�9�;��׏��*�ְ�Y����P!�)b�5��gZ����s�r��C�4�3G\������HЕX�m�ߋU�c���c�NŮ臺p3��R�	$a2�e7�%8�k�����8��v��v��IŴЗ�\��� ��|Y�'Ċ��<�q8<����pVL[�/��C�!
_��@�T�g���n����7QC�i��S`�@�h�I��P� T��[tO�w�F�˕�E��ԾD�H;�)����<��9m잾>�~���Xx����"L*���{8A>��9+����r����*�֦��]�)h��;��5��v刉a��ZY�䰘�{6P��1�r/$/�,�(?��zsĂܔE�-��H7I�騔�I����XU�m�r
b����~Y/�?#]j�4��"� e�������cN��E��V�p�M���D8>�&��_r�ɤ�T{����"tp��Z��"Q!j��J�;Ż���]>�K��5����m�,E��Pt�Q�4f�LKM��F�D�%��yI���;���-��
��RVM�_��� \e0���ɏy�?�w��W(�ǎ��d�M�Պ�=;��ZC!��R.|�¿am'��@#5CL�|��XHx(
��~�:�ed���~X��	ǟ��i��F͉�����=���3�h_z�� ��H;LS�E��Nr�8�����ﴉ����?���8����C�4-y��Q���,����'�x��H6�_!���O����Q��:�������O쇷7��?�y{����ݼޔ�u�����XOǺ �x�F�I׋DL0xpS~*�'���t,7�-�J����٫�H��r��6���goI��O��6�]yY�	��JN�T�Z�i�mQ9q�� ��[
�Ko�ȩޭ^��v��D�NJ1m'�%�1u�(N��#�,Z�C�X�ʽm����?���"��O��˲�zV��.+�NC���
L�*5����pZ^�4�{�t���I��K1K��ӊRq�Xx})�P��j�f5��J�t	B� �!5H3k���t�X,�V��+�U���d�i�B�@{l���L�0�5�,�Z�|X���/_���a�G\���?%Č۫�_�"1Y׃�F��:��C�>ퟎO�#��n�
&챤�o���9�S�	[Y�О/�J����CR� ��h؏:���~���� JAY�p�v[]i�����ƑI �t�X>�t�������=w�u��4�å�RN'��WiZ���w� �V�kC��X���.�L�'J�M$oLǇ�ē��?����W���屑ޜ^wNX��їp.�[:C���2����ƙ
c�i6�c��O�    �����/y�A�!�W�&��P�qT�bE�ܟ��.�����]�Z�̘+� P��L����qt�`�6�Cqlf�?t�i�3�Ќ���"k���%��Օ�ؾ jP����T!3ӬBD�l2Gb�U{:�w@�p�;&zz-İ�W����8!#B<R�LE�a�{���aμ1��Ve�Z������$Wzd/2U��t �Aj�>Ym�7�|��J���ė��1����g�?��IZ�M�L��8D�7����$4[q��hϮ?0��%}ūTy���MD��f����%�ۡ��n
`��:5�x����a�!�y���錓�D-.���1aj�'���W���To��)�u�,7�}�y0.�0�
����BF~�\�D�n�1j�yQ�����a��n���苩��x��6����@#�I�]	�0��sUTM~s*u�N��m�^���0p�m�o��I��'%+0(~��gR���n}_0Lm��4g0����t������#鏵�J?s��u�����Pc�
_��c��r@�ty,6�9�9o�_W!s#�2�7~�����l7!�Pc��e0G��l��uY�p=�>�Ҁ����gd�L��05"��1��p�]4�ە�b�����䛫�x-��XpE��AR?J�Ă�p�����T�T`dh6v��Sj��,{��1����ϊ�][|�wR/�z �A*?t�

%�ʉ��y���|S������x^�x�TXr���s���>90��(-(U�V8���J��"��{�Ci�kϯ4\.��;=H)�4O��b���2�x�+��?�M�r�f��c;���E�PE�\�
C�l�G�1نg�m�䛯��	�v�c���,6���EU>� eZ�5��$�랊���J���n�$��,����=�⭉ě�k"3��F��!2%Cg	[cӲB,9Ѝ!b�J��\�1�����"��8 )����S��ꡭ�B�R���m�&��$��E)�Jk�ϲ�<~��r��J��=�Sc��7� ��(�]gKH�)d	Ok�׃X��,��R�:�����z��cO�n_5�:�}�Vk-R�zCD-�]�+%�+g��y��c��\�c�F�jE!�};F�F���>���Q�ڈ1j��#]�~ȏ�o��
��?t�'�*UTE�/
�z�hg���鏭�3yW�2�\%���/�ͩ�pЇ��@ץްY�ֹ�_2J[��:Qm�W\�n����-��V�O'���!wӑ�
�V�z��#���#VTJ�;��?T�V�%d�>��uʙ���05�:���q�k��r����.3)�@8�����"Y�&������	��i�o�����1���ٛN����	�KQ���u���0ǨQ� ꘘ��w�����׾Ȼ]G�Ӿc��'Ź�����N��	�0DZ�� 陀\yӄO��>� 5�
��5�HU�:�\��(j��e���5�󡇥�<un����XN�8@�:�Х�;����v6s:_v���'�mj��4�?{�^�KJ�C�I�wKk*-�D���y]S�3��e1�Bjd@**�8W�^_7�F��2���m�7�����><�!	ª��,f���5Fm���G�`MQ>bR˜N�>�v 9L��ʢEC��^�������=�W~�h-�ь9�n�##��aF{JN���B��8�;�T!����l )�I�i���1��JN��[HW�u?3�|�M����]�� ����O���Iv[>5�+����Xn�P���q�M� 5�޴`N��Gr>w˻�e3�muw��oIc�l Aj�b��������M([��$5�U)���.���r�����Z�rs�=<z�AN��Pe�|VA�db���
RcZa�'�]~+|i��� Ǎ������� x6��$ɞ�nї�β&U'8m�4��/@��Q���Λ�Bi3�I����f�u�'�l��7^t�� �Xڌ|y٤#��������&�zD{غ/6Rk8 �����`~SK�������:ۓ~�یt��5��0�N��aaj��l�-o'��@��x�T^{hs�Ebm�]Cj�pe�o{:�U/�/���|�|ϳ����8E��m�05��N�Qr�CbB�'�Z�R���~�$L��S^e�e+��nu�c���^��4,��T�#2�Y�������� Z��V#�(b�~�;��[o����WMi�j�,:��+d��Sc���\.+TmP�95� ��%.M�z�肃v�j|���uy,�u7�gV����b���u7�F1b�e`Ϭ�Qt�?Z�ǬK[��W7F��Ē��(��J���ЉɶҰ^����S��`�d6ʽ]gj�Mk7&_4	bblxj��(8��*�������ϗPp_��9
�FM��ЦdX�rL�b]�N/h�YEM黳H>�T�iٕ���.��L�8q�MDȁB|�J�.�/u�?�r�x���4�|p��Lѥ��tO��1f��E�Y�Q��8*IKK���'ajx�uUW�4��q9�&�秏Q�� ���H�Lij�-Dl%m�+��<T0�F1A��۾>.s2���ϫ'.TǏ˜|,��|J~�����1jL���u�q}#�|�6	lM א��a�0��	������Ԇ�� 5
�/��	�e ��~�yl�2Sz"H�!��`��+ ��c	U��=����6u
'�Һ�2��T3a���'ʌ����ߵ��	�����SSu7tX`�5?�򯽄MK7C��T�]��U5�j�T��
�oa':�����O�ͯ�7�얶5��ϼ��*|j'�M������^�:�@�}LU����~*��f������[�|ۚ��s��<�
�b�_���uBŤ��Y1�}�}��Os��e�{���A3��T�u:���^����b���|�*��HE���������tߞ^V�#;W�U_��*��b�'�3�}�O��;�p��z۫}���h�z��ú�:,�c�l�O���VY_m�X>�sp�Sk"���P���I��TӴ��髈05��
D���q�77�C?'��7>�Ь_����84�+�	�;j�s|�u΀"��U")�����*�R��`�����n)\�@�>�A�58m��D���Qh� !&)Th�{�z�N)�ϭ>���2�}��ƑA[Y�f�mz��;��]�{]��=���`Ia�Gx�ŗ&B�����]ث8�f�e�����(�;3���V�������t�NDG���1U�-P�:�TX��X��M���ݖ�C~�]��TSw 5�뼝H���S���Z:	�����|�[��C�����š�Pc:Dx7�/�!lAj��Cp�/΅�9�����F/��֧"m߷	S�`����Vl;��Qj�r���-��\�H*����qXз�3O�l������LR���P� �)UU���I�u_G�Qh���b��7q�e�N������"�'�R����\��	^c<:��ٺj>ưy3��34�wAj�-F��|��怩�F�=r}��㰠h3I���jX��v	�u��R8�\���`n�!LCj�l��k�Ӣ@ B���Q4���L�idkt�)���b�S�ؠf3�>�k��m�u/lSt��(�\�� �UـUAj���:�����_BFG�5d��W�� �>-�R�����OG6/�O��=fFpF*��Q5�tj��7Ĥ!5��Ǧ��ITxs ��^J�m���!L����[��sQ�o��+N�Y�#l�h\����Q��*H���˘��*=,���aYt�X�D�}F�_Is�3��.�ƨqt��j��N-l| ���fH��y�*K�vpCjU}�&qRc��I�V��#��*tUFQ��qTTI������w4m̮�C�n����k^U�ա7<�^��(5�	���D��U�)��a]Gf��L���R����O����G�qd�Yv��{���d���j㲱�$�1}����v/��F)�o����ƥ�F�F�f2k�4�2�kvi�*���Y��84(��<�u�o�|���O���{��1�q_i%2j �����R�Р-ຆ�� ��	�    ���Lς����3T��{��[��|��~��C��%8�\P>&�Iǻ�t{�����3�������ԞM�<�|�.�U$��	�B���xC}ʚ��iYg�3���nW:�78�
?��4�[�}�4�d��TKaX����6ruiqA� �\xI�]ƍ/W�lf��R�aj|����W��7�#(��^7�S�<����ƌ6�E���(5��wZwk��|�? ANy ۀ�fmpȭ��W�oUmn�z]S{ �eal=j��Sc�d\�%�exC�Ǫ{i�(5fN��p���Ϻ]�w��sj�s=j\AbZ�ԐU	�+�5���wiw�;B�"���@7&2 #�K����7A���qpP�p_�ۗ_I5_�}���ew��`^cr	��k*ZpߩT]���Tn!�nX{��#�0>�s���J��
��Ͽ���;y7esCǚ^Sp��ߦ����;�NN�^�g�Y���my6J��6^OuD��~�z��u��S�I���
�Ó��!pCj�KѶ��[}��?���4�]˱{vi�7+"�t_S��q�!Q���b1ϫ=��>��F���b���Ϻ 5�W,I���P���}������q|�Z50&-|" /T��@Ǌ�f��05JD��^��q>n���Ȃz���fR��`�ՠ�O^`r�3�K�*�f�a�qx0�jpd�O��Q�guG�7� �Ը^��V�:|�/�����R��`�����\@0�Ho�z|ߘ�c.6-H���9�I���������s_�\��M���}'+L�#�%�A�L�͆�F�%փ�+o���I��84�
=Pv�m9D�F|�f\h1�7b�-L������g��csڽWt X���Pi����8�aj4�v�i�NFU�����Ъ��!pCj���������a_���qtP�������?S�`���ٌ�j[6���t��ZH<��(8������)|�/�9g��`&��:sg��%IR�ؠr�>B�٦s�n��2��dԃ{�h	|P�ơAߚp�gD6�ڪ������QA��9�]T|*j07��aj��w��Ӫ�l���_�j�d�q��ץ�볿Cu���K��mc��o��/��V��6!�P���4�?�6�B���0�������H��܇{=�=^��:�80�C'B�6��q3�7�C�ϡR� ,}jL�jt K��84:F�[��qj<b��7M�����8�����<L�A�������P�uQ�&��i��5}PYo�w�m�I����6�*վ����yҿ�6�s�䗋��G<���r�0��f�J���g�V�W�{�X�T�ǖ�R:HƄ�1��n�T��\n7Ŋ}oK���}T��6�Y�\��ܴ[��FQ)���q~������p��9��HG��'W�srR�D��qᐌ.��i�ܰ7[��m�Yl�A6�hUYd�������1��a)��CXC\�y\�t\��D��B��Ԣ������_�b��[�}Z��_]JE��>���/�ƱqF=?����o�1���q�y@�S��j��8�v�����=u����?��p��j`ߍO�V�{��(5�2F����C�FLԺtg���!{V?P����b���R���/*kE��Zw��ldw �Sa�-Y�d��ƅRC(�ҙ/io��q���&�jmȄD��6k�6x誅�qL��iÇ��<^���;���w?�C�^��g-H�� ���Z��q�$�v�a Z��½,rK]��Ra�Q�+�B��Jk�y���:Sd�J���*��9��8>h���֝]����ͫ��6�W���l��T�&k؇rh՜>����m6aJ��sbM_4��8(�&B��p��9(�;>�h���@���R�� ����.?�gh�c��yh�_���05���Wby^}VX�v�
ҤUt]��`��Qj\��g�c�S�P�_�ՖruߊC��1�l�Ԏfw�� &��,I� 5�!�+#ٗ/�'q�����w�Gr����N�t����8�#���'�~�Wǂ�~�����`��q��N�<�� ��u5 �e��@O�q�Xd6��~�U�<��k��BB0����b��,��Ǧ4/峪�مb�:���e]�w7X��߾��Ag껏RST��K9�9&�@���>ߩVc��5Wu�=�!���ҏTE}p���4�F���F^��x������`�-W�
R�r:�/�>JS�({���(^H,L���[�s����D����p���qJ��|Gi��[#<J�x�����t}?�[�������2�ף��Mt���Ql
�K�7�x���Z̪dάu���|ku}�'�j҆.��ڹ�3z��BkńȈu4�gn���pթ]wٴ4f ��a���+^���[r��� �ŋ��iU�]j���Rq<,�h-���[��6���X�K���D<�ƘP_I��]�6]d�)L�N~
��-���ҵ���c}�qW�{'4���2;ԂԸ+��}*�֘c꫾�/;[k\[ڏt���`x+d_{��� i�d������:�J*�8|�L��,^�E(VD$U�:�|,˵����A�,�ܺ��$�0��^��AT"��.|��4O��?�Ѷ�UcG؜0���=]��Qj|�!4N�w�j�e��W�K�|�:AR��;�v|��J��^�L��]�p�����D���~?ώ�ZLf�^�%��;9�2��W���N1��]�{�I!��<���|�4�)�!5��!�N��ҭY�?�i�^/F�ca�t:r?B3��U�;0�Aj|��G�B5�0��[���ˎ+Y9��*/���� JR�C��H�݃Q?�pn�;�����o�n.�6�R�D����1�ު=���H) p�<[���!īp"��w�ɱ�Gaj"�/u��*}L_�I[�Kuk�6�[khdS�"�
��q��üt9�C�M�4��iSi���qH�]2�*ī�=*��2�=0Aj���V!��h�L�2n�0�z�6W�~B*L��t#q�c�v_��Xv�Y�Q�øz�8.v��Sm�USiCg�[C�G�9°>56]�a�ot!S�YFժ<�J����Z��;�ƱA�J��C��s�4��(�ې�[$�6���\�񫖃v`���8:h}��t��-���;^w�_u�����!�1�ƑA�ÿ��·*�������[��<�N�C3&����(:�Y�+y;������߯o޳�O��?����{,7��F\�AԼ���]����0��`?���Png�cA;v3g�0?t�t�K��>���@S��0��d7�q�/�b�> @-ؾyN�w��-��4�Φ2
r���g��T���%�<_��_�����s�g�>��&|0��f�﮿{{3���=���ӛ�X������ʿ%���W!f�Riv��������(H�23��_߾��o�ݾ{�˛�7�ɾ<z^^�/ax��
W��b�`�mw+��jrBΛ���Rh`ڨR�쳌�����]2C<]>,g��|��3J�>ήW�����9�h�/��(�q2��I3n��d)�i���@���e�}����K�::R3I)�aj�	+q����~��7��o�+��C���(��c#7�/&u#f �Z��Q�V �����z�p�<��g��y~�o ��I�(L�h�&x��#�)��?���i�@׋���i��)�}}_̛�-�����)���i)p
�>���C2{��������/?����ݕ���b�O0+j���pe� F� 0L��4LI�xu���v_�E�o�|��������8�M�tDf��=$Y���q�`��*�ϿBӔ�/����=�*s"�ƎJȴ�{�f'��>�}�<���K�_��|�Ͽl�fٵ+v�I1��6*%�\��1�����%�MAO�,?����]1�����0��)�����P*��b�}휞�ͣ�b֒A�$%6*�v�(õ��C�C��?����b�ܲ;z zx�(ֻm_k��t]p��� ITZ&{A����==�&��   >�p8��|=_n�ݟVš�G�?۩\�J̤��E�[y�tv����_�d�w��'/,5<G=��,��<�I��R�y�6���ͻ����lƾ{w���-<��:�7����5�/7r��{Q�{�f;E�
a՛�ٛw׿_�<c?�������4�ٻ�X�w���kbi��E��	iͤ���N��4�JQ��}�WOЏ�N+{�O� xW�5��Q�>�,:�٤9G�S�ɟ�|8]��tO/M���\�-r`��LO�-��)��KO�N���ޥ��Υ�-��^���RkF�Fێ$��כ�V8:U65�ԻP��v����s0L�c4��=\o6��X��[�r׮��$��������S�,pvM���ixI�u��MJ^��N���$L�Cs�ִ[��y?���i��K��T��́t�i��"�
f��� ��b�R	(5�6�'���g����U�S)Ex�?nߡ��L�4\'RH�:�o@wTϯ��0P�U���ꌮ���>� 5��m�U~O��kD����_o�'Ue%��6�����J$� 4H��L+�kl3�v����;����M����3u���Qj&�h���՜.��:��#�ׅ�P	_\�v9L�c�ԅ�`��QE.랥i�?�8J�µ�*jq�ܟ.��C��v��>��P����10J`Yi�휈]���:�=w�����"8ݺ����	k�:=`����RE�{�!�OU�榆�Xv/I�-���3v9,0�?�6�~��WL��>ޔ���$.;3-�)�1����u���RIO����o}�?lZ	��QfuW�]k�����I�
wmڇOwS�Z�����4K{H2��Y�hCkJ_���g�t�/5�����,�w!���"L���<���f�׽4��y�D��H��Uɳ?��(9�� 5��Q�`�育�ͫ��"��
��Xy�+u���7���R� >��wے�7*zؖ�W�N�P%��c�#�|�������R�ԸN�u���|o�zm���'uU�+ Rq�IBw{��,��4a�a5�@0h琊�۷>�z�(��a뫭�����pF���ka�jJ�:�:]3��f:V@Uq�_}�����q�*��v���S���ے3:�Ҁ�0W�ڤ�6=P���O���Ѷ�&���?�&ٹE�b�*��q����/ܵ���|����%@Z�7:^>���v�=�{ �k~��"��b�h90\��z)ɉ=��`u௠߂�/��Pd�-,��ly8�/_:W���t$_x�~N��\/_8F�/M��U���V_TO�D&�QխK<��{ �n]p�y��$p��֙������ԪO�cΛ%����T.��-m�5���(��;b���]б�D8@7���
[	s_]P�����>3;���	�
R����/Zy�_�_}\=���?����3L��	2��W�f�D9���e�Kt�
}�RV7]��H�H��8�����k�Ӟ�:�Q�w��q*2�%k՟�4�p"�^\a�m&�2��ά��)yjB��o>��D���R�Um]&U/cUM5X�Ǯ�i϶ɪ"�,�6�'^�{�(5��`�-���߷����c����J���6��W��&��w�#=h�^2�LtTǗ��z�L�Z�B���
;g�z�����u�pt�EI1��n0T�V!AR㬅������?A�)}L�5�Q�!tBRp7}=�F�ep�!P�u(���<�%��鴯���8$8���p|wD��/z�i�7~-t{dEz���5�KP7�v������Ȟ;�;Vwwk��!5�k2�£�xԳx�rR��P�0���`�C�Zxt���ǻnV��!5�����{,R��s;�A��&��?H�C�3����\pR73��x����]�0��8$���͆.	������ܱbTZ�Cj�뫦P�3�1���+t�;�O�B��G�oܗ�&E���z�~�h�����A�+��8],)�:U�+$�=���dt;+}��k~�ƶg����>�k(��/�(�G_�ut�R�����ohh/^*��}ݔW��@���������D�      A      x������ � �      C      x��]K�与\NQ������x'��;A���AE*S Ȉ�)���<(�	���Q�>��)��;��(�"?E�����y�G������<�����?�y���)������%ވ(q{���g��\�.�!�P������e	\���sGI£�1����ѳ�dJ�?�4����1�τ��GӀʯ0�ϔ���%�P��h�'����]"����SI��ֲKdPy��H.Q~�v�R|�;JR�1�L�)�|�2��CI�'o��S��|�0��CIڣgK�ï�U)R���l�(It����Q��m���g��Y�3�'�ʻ�(���u"5�x�9��y(���ͼ6�b>��7ǃ9Y&��A1zT�e�l��R�8>J���2�`Ĳ�R8�Y%�(1d��;Q�%�fґ�u .JE�H�1X������ᑂ�.�K�He�HJ9f;��i�B8B����Ge;��M���"��P*���Ȫ�KXN����{(S�0Y]EJ�a�P*�_r����V��:��t�S�/G(rp�fL.J�5�p�%�mQߜ��bq�&�T١����/jAtI��4"���Y�]%����<M<�<�O;jr�f�T�19�������4�uǘLE��4+'%D[1�C~�	�U��Հ�#���<�m�(ӐN��s�`����[�LLm8UxzF�1��C	W����O��WS�_uz:%8���G|{��f�\���b��GkcX�<\F1>w�Rӕ&����rd��CI�-SJC����arQj�@Jf���u�B/�bV���.Nf*Q3B���>��C�A �.��qq�b�Qy(5���.UaQ�~og�E���庢�����=��R��徠B����ժ�E	!jd�v�����'*%����rc��C��8TJS��k4:"6����i�"�ȳ�Nc��܎0��E�� #��	0��0X��q"�PB̋g�o�-���Ѣ�4��A/�Sd��tQ�`��a�?ݳ�qy�F�,iA�Ulo���b�T}̅I5(i0�xT؍�ȸ�AY�Fe��V��dbq�&T*�vK�l�Ej�g2(�0I�-��7,���2y(�0G%�L	�i8�Ĉ�4@�%�L:S�@��#4��{��\�M�䡤�f,b�ΨDCA��f�<�4،��G��T�a����֯�6��I�����'%�5���k��z@rڃ]-.Jk�b�y�f~2�����4֌���r�(,��AI�͈|�<�HP~Kkzy.Jm�j���)����`����MLuLj���Ciĭ&�=m��H	]"����VgDQ;��KdP�p3�I���`��`�%7c�-~5��4��&9�*�콺	4�&��$9j���`��[2Lg5ycKc��\�Fܲe���(Sie��	o�g�l�(ð}:$ެ���-��h2�$�n>3�Q<����#��ƴB��������e8�5&����!yL��Ք�W(����=�������@`�<TPy�{R�E�	T޳}���g��Iӄ�H�:��w������dP0A�],S{9�T�V.
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
�d�ο�6.Z4�>H�D�����&      E      x���Y����6z=ϯ���!��j�b�؀��F|A�H�t
��$0m@�5w�S�VE����f���~���K7bŉ���]�X�����C��������?�Y�8�+e-�+f z ��*Qg; ��h��+>c���#��I�
_4��8��h~`��'L��T����? �����BP��?(�G�B�r������c*�lC�}'�F��E~>��ɪ�G�-�BO���͈���b��IZ'3-v����IU|nL_H���`�0� Pa�! ����� ��!�|S���!S	)����})z�6ќޠ;�%��C#�hn��ԍ�87����do���:ne��� A�,�S��7W�0D��6�����P"Gh�4`C�*�8����O����SX�W%��(S0pC�+F+K�ǀg�Mgu�& ΅�j9��4n!P�U��|_�E��Lu���X�!i�!!�;���%�a'�����?���i�0t��S����#H����Ȼ(���)�9�X�(�q�)��q��{&ܝg�no���"�r�0C<8��C���0�� �"�=�����hP���w�+D���9&�9F)�"������p�)����m�"
�fd7���9͜���gH�N��QR��Y�Ş�����1�LT�|﬊O��}E�s�r���#8�6��Dm�+���HQn�ѵ��Ll}��Z:=��GxX�FSe,0��ur���)'��̭���|��	�$(
�����Z�*�BH�iC~Km�*NU��7�d�[.���I�?��2ϩ�t��kI����%�V�s���e����N4�(�!)� q�*!L�0aؗ1~Km&ʿ�aj)�s� M�}�ϥ�g'����-[&��(��n��vCp�AW!�_�R���T7�䧝t����
�ވ�Jm�PN,�k�8G�Ȍ#���I�t$p^�#[�]N�z� tf)�y+�܌b�z��B���-�;P��p;1�;ן�z�ߙr�Q*\Èg~�6�:A��_C�t4��i�&�`L�]�U�c ���R�t4����l��i8��0��b�&W���)~��S��7N�06Nv�Z�y�e�X��8A~��AmJR�5�Eu;O���K�JR7��1�2���-��)S�t���2��=�7s&�l�m�7��@�(���_�
����%K�h�c&a@�{�[�M!��8Ζ����'��e9��4cj4D|�'^D;S������r],Y����o�Dpw+N'N�&F�_Da�O��6Ea*��q�ka�8�BG=�V��������T�o�8s�FL��x,]g7t�Mlc-W�<_ΡM 8
*>m濜����GjK��P�0��(��c�Bvȏ�Ab��p��1�C������T�F�ِ6R|��|F1��؝�('�����kyH�� σڔ��j�^	��|�BAo�x�����$���Y&La����H@&������$x6��բ��/�ͣ,��<3��N�����4-jK���
8�<
�w�2Bw0` ���,_�������d���P5Ze�f�z�|���L��^��dŧf��eh��W��6~����z��In��E	�H	�X��{�_��3:���K]�l8����3`៽h.�K<ڱt�;��m�Mp82�6�_.+�(�O�T�$uū-AC��y��!
_UΞ��#�L�8�'�d���xn&�F�!D�u���#���_8[�yf��jk!\`��!
g>��6%ª��Ix�����.�tly�kT��H�סq�no5��&�@h"r���)��[��/�k���<��zV���ڲ�ռ(�)bQ�����:���!��[����"Éy�ƌ#n�&���� 3�{�-2t�ЊO���4p~7���O�ʝ�2�U��(A�m%�C��-�/���a�+R�3FdK�$ѾG�#�B,N#�<څ�^�K�p�`42R�NY�i��7�cO� ���*������-��i�Q
��X�#�?FNl
��wf�<c�h�x��&�9�nD�r3<e�~��0{���"���0���a�KBw������_;3� ��ؒ�r0U�����Gu)Ћ�4���iNX�wE'�z)���$_��v�B�����%T?�b�&���<����D?����T�j�m��`���O�#Z�%��Y&!������]�E*8 �t�a�~���*��1�ؾP�H��V|�\�|�Ş�-*���N��	4�x$��-}ϛǲ�讣�<X�q�O%"�����J�ً��ʩ����2f��%+>ό�3H��?��gj�؃:w�d0D5�ĈNF 7,NSwe@��a��.@t\�����f:���K(��Nv�f@ŝY�6+&�P�ye�o�߬0���~���e5+wT�\	b�4� ƃy_i�G�G��W�\�ֲwv�!B ��w�u���?-&;���|�D`x=N�T|��mk ��y���!��{I��; ��@F�NgĐ��&1Ж�����L��zQ׽�Ow���(��z�r� ���<Z�J�߂˿�1�aa�O��6%D��։s/sD��$	)
��3�S|R���!���rW��<Y64�i�+�Hg����̙�Q"�s=1xŧ��_��O�M�_�0?���Ԗ7PK��S0���sH�lz�����eoT!����/�V�]�OQe�9����!�8,�ƈ�O��_���'��B ���<S[V��a2�Q�E#J#�]Y�M���zV振,)'�bwN��U�k��؏�5ޝ-&,��%�P$��ɊO���Y���1�?� ԖHD���I��;���UHI�t�¼�	6ZZ"�l�Z7�e���x����p��pu�
����Q^�����g>�~P[F�R�PI&��~N�������067����GSQ;N�LՅ�Q��Kl�� ؅��!�؁�3��J

T|^���p���3�en*�+�������tU�;^��n�]9t�$1B*]l:��x/!�ˬ���=/P���@��2 *>7�����?�/jK�j5)P����H���en��K0�lk���n?�o��n���t�+���v�]+�&�@������*>O|-�~2�jK��M!��9�P�׫�`�ڒ���'G�`��gC��xE�t�1�����8����M�o#J��}���U�8s%��T7(���Nw��t=��Y���˹;���r�1�٭d��p�S�����X�`�����ז�U}��ڊ��Y�m�/U�c�����E����H����r���G25�E�Iƴ2\�~_�Y�Pg�|�\-�Ao=S�2��w����@��%���OG������]Iʧh������Y+��8�;����D�y��s%��ѲjGR���,�`�?(����aH��~�Dl��3z�}�7�ѺX��>+�}�!v��.1����Y���K�c�7ZXbw�)�x���,�����]��藕��5�T�|�Q�]��7��	_m�+����ŴkF�tD���p.I��� G�wQ�{L25����&@���n���<<}�����em��-	�S[T>T`��E��d �v�_�bh�n��=/��3�w63�#c}�T8����Ee�dX�b�qܱ������K�WLI%�`8�P�P��b�Z��q��߲��̺(�|��Ip������a��vs���d��p�K)�65(� �n� ���u��=�d�I�y��' �۞����Pu�J���-�(:t����:�b^�������N�la��D�3)DB��q_Ό��]9թ�&0��F�ѝ�N�,��(���\	О��Ԧ(]�)O�V����e�nHcf��eaz ��t���r��#yh��ƅ�t&��� I�� Ɣ%����TmhY�%p�A��
�'���1;�a�z������<ʖ�8W���pY|�fǕcC�t*ݫX�s�BY��]|��=Bt�G��M�%CЧ��3�� ���}�i�i�ˆb2�m���w?O��0�鞯�'C6݉�����Z�    �]�x��~��{��?(�c�ވ�Jm�UJUC��u�,#dC��	���^��d�.�5��,%��MɀKJ����s�O*뎋�C��&��ޠ~�>�&*uU���å��pj5�	]��!�c�#�]�&X�UO#����/��4��m�?�&* ��@�m��Dm�6���p�Q%q�^ϝ��mL9�E�k4�y��*{C'���H0��<�NR$Å�b�zb�W�f����3��r���?$4�8֖�-�!��-��쁸���VKa��N�YK�� ��i**a�E����H�ӎ��n1������������x�B-��(�0-�, {���U�7qm�����̺����˰��(G�F�Y!�]S�t<���bHmӲ���h�����_ݏoY���� ��Z�x/C���RO��s�|�o�9A˼ڠV0�/H�h��6�[|����]c6[�����vo�n:��S�(��BT|�y�bȪ���߂o؉o�S�#T`
��m2�f8�J��a���3c���"�� M�}B=�PL�w�����Cɒ�a��ܕ�R�.�T�Po�������є�q�����S����؜<D_^'��g��1���M;kt>�h��Lŧ������	+�{4x#�+�!K�jDQK����κ!J�a�]���G3�����d���|o��4dya/�#(��ܤ)����F.z���)�WjC�[;/��6�֌#��{�v�X��B��Ͻ����� K6)K��䒒�A��P�V�7��˗�\7(�����r ��z0�e�U��(^���;�؛�{�+��a��ϒ\ƙUp���KI͙b�!ުsr0�X~>&������`���{_��w���	��ٷ��Mm�~����� ����p1�g�is��䔢���.$�M��Dg���l�P��&~�YR����0�^��[jC�I��q��,��&d,��Y�kz�tr?�ՂKz�m�iڇ��N�܋�`�!���md�R �1�����f��ѓ$Q?9+n�����d�e�G����˱;Y��Ob��ʉR���!�F�7r��i$/?Pr<m�{�R�wA���1��`�-:[KL%�׏d�>��^����(z��KH�8�;�"�/D��2�ċ�{Km8�ؓ��^֜�CL�6׭�r{f�`Pzp��N�6�	���ݜ���Ue�w!h�-�W�$�N�_Qm�T}d�w��nB���C��;5�����;x��a���Dt@�}>�"<Esl��vl��e����D���9����F��6�L�Dm�ו7�������~6 ��q�I��S�kvH��}<'Be�)!��g� �L���{XL}�����݇��-�&�� ����e�}�U�����xOF�ev�gI]��$�CA���7�����x��X�v�2��x�Шa}�@+vd[�/�2e���^��-�����0�jBv��G��i�*'�
N�.-.Nx1�pC�lc1;B�(L����!T�%n����cZ�v蠱�+�&���S[�뤰��=�p�)���UDoz�ۻ%��]�{�_��~0�m�����m#�,k���+�3�����9 U�=�vZ�=�������Sp�,��p������)��;)�P5��b�O̓##�d�:�']۞���IE|�%�L)��1SCī�Q`i�-�[j�n��mX����{��p�~�G�7���[u�"6�>���x�iwɇ�e\:z�Ǚ���aÛ�9C.�d̖��~7�NTi�C��#���~� ���A�>sѦ6��w?ȗ�5��|�j���.�>n�k5���N����2�6s�?��N���] �I ��`e.�b��JmH@5%���iA$	�|�© �
��0܈�n��#�JȓK� %��h�?D�"�J�� �|7�Ԇw/�1}�,��K{0:2�b��UJRĖ�㎻md�[Q3'�=-��;�ww�#�0�"�9n��t��ѡ9��09s{����ɬ8�'k�h�>�� }�M��;��۞������@��hS?`oQ��{��5��!��'�s�M%윋y���a�e�@��K'�t��e���P\��/�aQ�e�^��y��{-Ͷ��K/��It��>�A>��ث���� =�� k���nd$�8��l�׭�s�ɭ�Ӗ�A���]�D?���d��o5�+�!�����b]q�ȸ���&�5.����G��E;d����|�s�l�Ը�A?�����F�w������y��Λ��Ἁ�����J:G���w���W1u~�������	q�K�P�A?oq�	9�۬~�6�~����	�ƛy���9;�l�"g��y0�mǚ�xa��.*�{�r��� �����L�-haJ7� ʡE��xKm�O��>PG�ڻ��^e�:N3�$D�����1�R�>@mn|ę5��GS���y�G��*�<!��#�/�����O<��b�1��F��̃�:f�`�����Y;��SƎ����5�XO6��3�_�?�� �˺Gl�5�gE�)��/VW��v�qڼ.a���.��M�A���0/�Zq���=�0��6�����$VzI��U�f�����pK�eF䘎�?�>�'�i�Ά�LD�hn�}O��sje}F��t{�CrH����x�M�J�c��HUGY�2.0F#@K�r���!{�²U�~`���0V�HQ����:?A�}�}I���X��-ձ8�ĩꞯh���(c���#�IU��Җ?X����8�<���-���qR��jr���~B"��gź}�$��#>�2ͦ���a�{�zƦ&���u�y��|A�H�"�M���Jh�"���J��Jm���8=Qu�Dy��=m�q.��ж��9O��.]sy������דq�F�b��jE�#���n'�!���˧�	��p�c�hQB����f����mx�,���
�lℊ�9 A�N�n��Ƴ�B	MS�r�ц�7��a���&��!�׋!D�F��	��e�p�ğr4eR��V�.��1q�Sm�o�î��1)�5�OX��9�42iW�ff>-�cZ����m�4�I`�����J���" ��^���7��66t�8yi�������)����A��J���.�ds5�3�:�:W��80z04=�> �~An<?����)a����j��F��?�>�»�q?\�@���X_�L��&��4Q'�uX��yXH��;���*�j�z6����Y ��.7aKW�hU=��>�h�`����hO)[3����{ͦ������m	4')#EK�K��yw�x��)y42~`#'�E������y'W7�� ������N��r�N�>�3�t�L�T������职����#~9�.��.6�Oؙ���<�G+~����F�z1��M�ն�T���k�1����Ŧ������H��%,�2q�Dڳ��S#<̄����_u�\myn�/; �`P��w�_��l9D�e�O��(5��-�%�lzLx�L�e��|�����m�iF�G���y�8���f�9��ݔW`@�jk����U9(z��d�㎞=KHM�ڋ��فҐh:�/P��
��� ��`����˲����N~s����^�+~���W^a����t�3�Gp^��ͩFO?���E[�.}LT�.��	㴢S5(@g�r�c%H��糊58����e/պ؊�n��Z�$�^@n�k,}C~/�I���i�&��zO��b�)@W��`�1�~>q�O�W}l�a8D_��BQl��ۑ�f�6p�U��)�h��ո�����w�^�؈ʕ�s� ����`���B�KCk/X�2+�!s0�x���v�6Fa<�=k,|�4A`Z^����b���^��S0nC�V�t�a������i�1�;h;��,8h�C/Ĝ��N����̭�oa�ݖ�125�v��X��lU:h8Y���{�5��w�>�9�#�7�<S��`a���*���($��}hW���B�H+�Y�    ��<��]�ߨ� ���ji)�F�{v��(�L�(����|���$h=�u�8�*��^&���j<�+4���=�`�LMTװ쪊v5��m$@�	]��'�nN��͕B(!:��K�?$������~<�_�$*���x�uS�0�[S^����$겙����ۭ��̄��i��,-�rG��Κ�����{C�s��b��2��M�����ت�-}��ugKY�ͼ���'[�g�@��<D�AQg~&0���j���`)��lvpFP���eF|�w�\�*{�a�E�(rt����͔B����"����2��17�U�+U��^b��%Q��+p��� *�K��鐚O�К s���w���\���
z��X��:�Z��M�'�NUݤȋ��Ç�ž=̉��wl*Z�%������^��i���7��ugn���6a�BFNN��]��:ӍBr�.r	G,sA{_8H�R|�,?]�^�p� �"�[j���o}}׋y��<�V=i��s�SŤ#����6ڶ��q<��v�@U�Y�7u�B��|��rL>�?�QBS�5[�?P�2ԇ��SZ�Ex��K���&��pF��~�S2��r�Zu��B�ݳ���X^��=C�@�m�N��?�'�����?��>S[�M�Gi�xO����з#y��,��-��\,-�IWG@���Ol�sm������a(�Vh}s��6V���f�<]��:�Q��q��{���zF?�յ�-��#W�;&����P?�Ǿ�X�M�6}D�.3���h��F_1���C5��i���Ԧ�n�]����;�w�n>͆��_"VA!��ts/ڛ�A�����(}%`rC�0P;Ss��>�U/S�Jc���j{���6��ľwl}�̷���YNl�GQ���:N���U��kk��>� �<I�љ��v���	��d�����1t�q�E��&�.[�(gr���[�`J��绷�(y5���:���������z}�֢^�cpR��w=ɚ�%�Ok=s?���~K��h"�P�m&7�J�J��0�ك{���)Y������t?�t���x�#��Y��r�ǋ=�Iw�N,P�;Zt6��:�w9��U_�f�,���a��xz�X^�Y��2����=��q����)y��nI�t�Ttg�����_縸A@8e���W���L����NV����	'j�r,��,@U
.�L��
�� ǚ�� 1�9�C(j们�}���(=ђ�q9.(N&�@)���w��PP}O@��i�ru(��~���%�-Am�{���/3'�gV�s65����\V:��d39��e2[��쏷����M �����s|'1���AU�r���Ԗ�b�<�����ʹ���pu�8] ��3C�Z{}<��P+ zJ�<I��~t���/o�c��ڝR ��L�w�2=H����g���T-�����m�Z��P�~
�t�g��r��o�$,�F����0�B8;��E&��8�0o2��N�
��S���P��< �^4l	�Y
cߗ.���>�G/�»�47�"�"���On�6�mvM{��{}����t�Y+�qe��v��縲N��gF�@��^ny�n�6un�8�ͮ�]���m��	u�)��:�#:�q�]�e!���#:gy0���O#���l?��>,WS��(���ycJ�PV"�1�h���O��,�
(���[�:�~��1�N�E>2-�ߍV�;�P�P�M�a�9����8���zxN�M����ۗ�k��*&V���JcF�
�L�
�&�U�TEw]4���@M�\[M����n��ԙ^;.�s�W�� p��[�J�Bڃ�.�tK�]���i���OԖ2���F�I报�q�[���Џ/Np級.v����e.-)���.�x�2���0d�|��7.!�:��N;3�Qd�*=h�[�趈��ż>�wW��δv����.7�.��=�qi�s�&��jo����&��v�ѼlV)ѥIH��3v�����2\�D�N��9�u�b�:t�y>��¡�A1Α~�^Z+еR]\�Bautw����/�}���p��=��ָ�Z3ly�����aUQ�b������ޭ�upܯŞ���xv�e��83�] �H�Ǳ�'D]e&���2]�B|Y�c��|0�����)�υ����lB	�x�w�֠�w��q$�m���;=���1�SIH-j���F���Ymdm��R�w��]8�B^.hCn�?�뻣+�!x���+�	�n�+�E軫��_3�7���A�f�����,M;��Z�����Ѻ��p��2�ЗG�4�>?GP�������ڂ��ft��R��r�F4ٷR$K�}�L�R];���A~Z]�7�mj��~��'��)�s��������Ԗ dK�{��_:��=��4 �Ah�
���B�l�>B8�B��^�T48��XxH��%�ۛ5J�\��⹽��d�wmU|����ώ>A�ݎ$'�Ib����s��(��Fə���,v�<��E��)C �o>�i58�`e^o�.~�6��U�c��qz�Nʅ,���f����0`�i�;w&�����onL�g���S�F���b)��a�X���^����͸D���^��R[�_Ip��Q ���t����ʞemf���<=��h���zA�bC�nPh�ߜ�/��ԍ�/�)�0D|]�o��	@����	̂3Ǟi�s���&:]�=V�*7(T\)G`�p����l��N�<�c7��߼�R>���}�ڬ�cu����@�C��	����_�+� �M��Y^��n|�0�$�%a8�ƫ�9)�v(@	�$P�V[7ޜ0ig�����A�.�ʻ�d�=���@��Na�>�7ܪo̢^ /��u;p�<�՞��ȩF��	ǧ�(ThQ�sG)�s���A�~(~^�U���_�����©G��v�ǔ��|E���q@��z.�xj�B�3Ԣ��+	���#��عn�ּ����~I@S���7��2qE?�oQ[/���/J�8���]Ĥ3}+�G��;:C0��d`K�����э6,�������w��*��˾�g���(Ǘ@X�^�舘���2'i\ד�'� �Ηi��1�0L�
�k?��Xi����b�ᩃ�����u�e���:�}b��	���N��9���$ �+F'#�7:讵�##����g�����q�`�c���,M���"�GErg�)|a �э����%m���� ��z��tgewm�W��i��h����U��*� �G�l�gO�.8v������tp<۸\^���h��u���A���,Z]��#���c��`�uuؓ����2�G*j������^���ؓ��*L�h���
~Z2`�.֛#�Y�i������p�s�[�LU�5�P/�O�������zna;��&FY^C��	�� ?�L�ۏ,n-��#>�u�ӱ��E0X�ĄYJA���(h��A�ʽ9e�X�b!�W@?�e*�[D��W�112�)c�ߋ��Ygb_�q#>X}#�T�� ㇋��p"�(�N������L;0�o��}���>Z��XY���w�J�`8�0ͳ��ѿ�E�e�Co���@�H��Qw�	��,8�c=�dNq�jN��Gx����?8�f�����ߢ�"G��<����zUw����]�G.�P8:��	���d��5�c+�;M]C��ay��-WU���b���M�6i��*�	]�v�>�T����zPn�_߫�PV,�+��e;��D 6����1��1�^���E,����m0	0�??y@e����Uף��v��� {�E�*zM<'��Jl/+e��-�*(��v�����]�͠�k��T��\��_e$OB�̲7�t�M�,;��A5w�E������4�}�4T�k_�*��\O)/�N�e�N*Ĉ��z�h>�H�u����Tp?����sa���:j}ܰ���/zO��~��|b�ٕ�lo>�N��f����Ί�:���f���ICN�2�ؕ� �L@SV3,#�O��Fa�z֑b�����    �חC��<�@][z��ꡃb�^f#|�N3����<����"��h�raص8Q�*+��A�	'���ׄ�{j�%�\>*���Q/���8K8<�t��W����z�K��j!��C��K��U^�T��X~�_7/�� �:�=����+y�Z1�s+bփ�Ґބ���4,���F���u�O�0;�s�W\�㓿��_�D�P���wS��{�2vy��d���rF9Eo�2+2��w]�+�<\H}�������ƺ��:௘�㞽�;�U\�
���?�}�.2����G_�5�N��FC�LPЙ�q���1B��i�'���+�3�Ǧb� VgB郒�s��)~vA�Ƶ��o'jjy��y:��tA�ﳝ�M{��q��R�59��4�$(�qSv��!�Q�n����v��9pK�<[T?��B��ߺ���vǝZ���0�l`�[��y� �c��gU�������L�z6��� #B��`%������n:�e��:�M�e`����a���9����3�F���;�t���fϚ��d����#������/μ�앨�*w1��~�@�w�y��t���N��L��4�V|�e�^Yi���(��?̰�����e|�-��v$e�1��Ԙ#����f�:����I~�|/8ܴ����l�
?t\����7I��4���-��޶��HF�I���M�3[�!�C���]�%r'>��ӆ\�haz����y��o�'V�B��>Y+-�9���V��>�$B�#��:w�9�'	�*�]YrB��	����Ǥt��D�p�g$U&S�2��<��"½1�9u�')VP���KO~7�Օ .k3��渳�����-�����c~௅hc։�t�����!��nv�,?1�3�н�R��/��8��˫�+�?$�W�4P�`P/��-�e��z�=�(?�ogۣ4��|A���w��L^��!��pź������n���=���W'�}� Ve+���2�8[V�����S�g�u���9p��N��g�h����1K��w�qG0�k���J�CĬ#�Y��)��K�L�N7��u�%�ϫ�����>D�#���W���ʽ:�e6�Q��ey�d�Mzf	dq�r�֍�}�f��mȫ-$��|�ݞTn�/[7_��m��T��b��ZKm��V�i҈n�R�*2٭���b�,2rBAl��.	��H����K�>t/�����m���nӜ$�����,��K}Q��Wj��� Wi�7u���@Q�Z(g�ZН�������.ʹ���p�|��shx	_=�)"��KBs���VL��/?�� ���(Z�%�h��舘9 ZR�gE��2`G�uio��D]"�3�.Hwf�������8r��-��]�!�_u&^����fl��5�%�#�������d����I�~!C~J�̩��dt�������
�<D`�E���|9��я� A2���ڒ���Q��(%w�L탃5w�����!�p6N�ө��ʻ��qה.�H*W��q�m�s��>wy���DD롊���sL��IV�2��+��h�p�)ӽ0Kɕfa�� ��u��m��C!Ol�;Lݲ�����	bŶ񬃒���+����&���|��z��蹵/l���(�Go�Xp�=k;UNB�"x��`��� ��Ơ��Qd��%����Z[	�D�=�;�J������9n���jCβP��_���20��nef�é��"�G˅����)裱eH}�ov����`g��X� �e��R[C_����5?^ls+��xR ����ާ!*i�+�=�fj�>�����| x��E3���2����k;h5���.�@@���u}&Ѐ��(���韸�����}+ ���h#�3����޹���I,�s�Hv��l{���vOT����N���К�>������8��v�)C���G�U���Z�|A���NV�G�b��	��ϬS�~�!Y�	�9L!���ig�Rm�d��s�r�*�{hxq.�5�"�h��3,=����ª����Rc�k��;���G|�����_�_���H�W�k�HX�0��[I�S��b>���`�wϫ|�^=�͊���������������Q���%x�ԯ��z�o�s������#M��d�G���Ћ0d�m=vdN?5%�#�b��]�!�����.ou8����KFK|���e�xE���B�>o7�i����8�XNB��|i�y���&�����5�|`���������[mjk�m��w4'��8��yδm�6W�,�Pya���Kh�,��}���^`���^�q��	+Ps���BKd(ݯ���*�U��z�V
�1T%|�@�pV��KJg�n�c«���b��] b�wԘ8����?��;�]�)O@�W�%����^k}����x�Dm�9�P�0 *g�b�+��e��ލ� �6^���ڂ�4�en��n���9}�N�\�|y�Gj��Kw���edr�L��$[�p{H�1i��u��N��>�jV�>�k��j�n��K ��S��)T᫻MH��$h�Om41����o��7f<z��h�M�N~J K�0A.��[�?��,;Tu'Ӏ��~�����-Au�7Q�m��-	*�ڹ�F*���Pu*����t6_詰#Ύ�fWׁFq<�B1�A�H[��p':#���|}'�K>����,�t�B4�-�gp(~����c��m�� A���.s_�Ťm�K�[:�X%��Cw΅=7�8G"wp���od����+�"�d��e ����fNW�N�r���1�*I�G��<����e�mv��@��]�yb���,@3�{!ZԖ��~��z䦁c8��DR{��ѐ�F�"�����>?���c�sV��є�F�c?P؝�/$ hy��V�o�-��K�F�k4���f�̮V?yd�s�W�O����a�V�r��\��I8P�'��)VE�h�z���M���M��d�$��(�N�:	E���X��T�Z��M��������Nޣ��&#`f4]"�]LV�>
,�d0��=U�,C~���WA@�U�Z1oiS����v�s�����Ő%n�ή�z�N�"ya���/9+=?f�~��=��M.�te�W^�X5ɱ���W9��|��z[�GjK�*�b�VmA��u�J
�/f��y���̐�)K�����]���&�����L�I�/�=2�m��3��[��n����s�����֨�%=�x~�e:\Xl4���u8X�J=��>��B��8#�Y����N`��rL\�����48�B�2�B�{���d![���9֞)��5��ro�mF]=E�����|;��n�,��^n��\�	�Y�@>ό!	 壁$xY]o�-I��$pqa��#�%.��A�����,�:B����`X�ҋ����zb6�0d�o��|��F���D ����R[��-I{,�>��.�_M����}A��i��Ԋ��BY_����9�����$D��o$!���K��ڒ�iKBbOy�
����"�`itfKSӂ�&}�&K�6{��<^L���&Jɧ�����u��8�y'�+�%۔��uOĎ"~/�Q���`1��\���LeTsK��:�wM���ׁ
�������y����EO�-yKmJQ�2�@�ܷ{�,2gp5����w;�?XF�µ�K)bɴWD�|=����Rli���w�3߿�A�h�(�W���ڒ4�V�q�� �F�숚��q�u�J���#fmgS��Ͻ�yb::����b֒�����ߏr �����k���Ԗw�X^�Tz�s����1�n�ޙ��N���Y�:�����m⮫ܭe�����&���J����`�,_�k��{jK�ʂء��g,���x�1D�(��-�17:!Eq���ΑȮ�y��S$��uawo����7���lx�AOm�Ì�!�'/dVp��<̳�e?��C؍�b��M�d4'B6��qB���)Zo�~���w����/�\U%ȩ�w������v�K��}��� �ܷ��lm��4��S`�    ���ط��H�G�h�)����D�P�����ꮳ�_�/�v�{���oS[��V=�t�+ݙ�d�g:�.;Cn�'f�]��'ț<uˀ@4����&��|�'~�Y2���G	Cێ�{jS
�]�~� NW�SR����Dד)H�d[��b��8������Fv�Arc�w�y�Wr����O�����S�l>�;��f~	�GY]�Oc!��fʜF��h��h3��s%�,4�HNO��Qv��,^�~�//��������M��u�Ͽ�|�ʟB�ZE�����m�RJ��#X��}zOm|�~#BW�F���f��?v�d$_S�[!��X8��L�r�^�T�M{ф�8C��E�+۩�~���.+�,���V�-��@e����+h����Eѹ/��t���q���lޙ&ǀ�cS|ʙ:*�["�O���d�9~λVg'��N�n�J�W}l�`O���<�?�б��"	�bY���ǿ�u��J�gd��+���gO��?�Ay4�_�����	�`M����o,B�n����۹j��_2��͝���#�A�L�[j�#������iP��	�/>R]Z��߽�6?��7���#���G��BŖ���{j�#ԯ?RuŲ�{cѦ6?��%\���z?\mj�#�^�����>P����o!b��^���H} �^ޅ�w+������@���B�Ԧ~����q�;� �_��A�WA~�#��^p���I{	G�R[�'��@����O)/j)���G�ڂ�h�	�;�	�ս�$V�7�~�6 �uX�+Y��_�/�{R�C�(?�/聏��uiÈE��,�����g��Y����}b����/������o��
�{sI�DmX1��>�&�B�=�Qh6#�����i���?C"}p������J,�|Y�[�O�	*�b�O������EP�Ph�[ŷ�����o�z�wp��u�d������w�m5��Dm�u����;��,����l�&|�^qcFj1��Sga�"ǧ�ϗr4պ��0��Ӛ%�ǃ����?�����%�Jנ/��-��z�Vɉr4D%���1��b�x����C���7�)2%�E �(ֻ�_��FAOo*�#��@����?���p���ȿ(�w�&�Z�[J�����@c���j����f6�R��
��X���Q���cO�u�A4Nw�Ny>�Q����m�;�UE�u�}��a�Z*�"
�
X��+� Q���?���t����U��=���#�#4�������6��B%��	O�߈ϼw=`���[�1�1�	���8\(�IBy�5`�:��ޮʕ4a2�\����7�!E����~鶚�������Am����M�}�殺۷�ͷ<DƄ���@�ɱgsԳ�Խ�h�77��g�7�SB#���:0v�f�h�>`��y۸3T�g+�Wj���4�ͣ���S3,i!�;���-�P�p11���V *.۱�G(�,�9�� 
�M�i�Ź��������g��bt�`S��0��5���$���N�z@b�:�ߟ	B"7!�H>�j�`0#�P�0�2�`����A�{���zG3֘�0��EWL�8��.0��q�~_���gq�[t�	�~��bKɚm�8����H� #/�-Pm!���(���T���0`��)T~u#�k]�gր���F��i���~(��ަ"�V�"�����D����&�`�PJۙ8������ G7��jr��Hb��W���[���L���̣���z������]�����b낳5lt��Rp�
�ӵI�n4q7��-E.i�0�Ϡ�� �p6&]gC���(�u����kx�mf��lA�G��%��Ӑ�o��*����߂%L�� L �Y.�s��I���	sY�Ֆ%R�N�#��&@�vI ��9�����=���R>k��Z��c������NEL�,�5r�����rGH�cS���&�i����U�Md��5_8W/�=���(�6��z��u�J)��yB(,`س3���l
π(��-"��Y]��k��bm.���Xc��Џ/���;ĭE�?G]�S���!��M��.e�n��+:tУy�^�&�Tqr/� aʤ���e;���-��cx���!���S��pW-{
Of૩m��ݞm�M�`�:���z���\ڮ�����L�0�G6&�a6��qk#�P����u��z��p굎��d$'0�Fb�M�PB��p#�H�������K/��2q�HP7�xD��9�F`6�����f�B�sż鄿��!o$�S{tOǺ��	�ķ�-�26�bf��\��b�`J�dLd򩇘;��z���˹�iތ�2�"4y�N���'�w��N}��6֎<�o����x��4�(��0{je�>��-C�*�s&E^j�Anϗɐd��e&[�����?Pa͓ޯl?{�Q��݂{��U
e�; f@z���>�Q)p
����y�.�Ih!v�4-Цd��@;���i��k�Vo�'��]>��.�.HWPs���;�=��<�DU��U�K��)�3���ic��٪��pEf���k�6���LޘA�-٦.�����7��;��n�M��-1G�"����$s�Q��JM�J6��/q����MM�%������_HS����?0���Bm��ϼ��ؿ�K����<V�5oTj�!{>�8ej���ߺ�����h%802˗�u���{���v����o�=�ч���ī�G��#6b6墍��ӓ�h汐!7f�*�InKo�"��/����k��`��޼�a �p'_R�_c��&3�����S.<���jX��%��xޛC��t�[σ�� ��9f�HY��"@��,
�]$�V0L��l�ۇG�о �q�s��q򷲘.�sa��1�ݫ�2� Q\sabd�lU���0�cx-���@]L�L�gO�B��@�߮����u�������������@��=p4:��2�����fz��'KM�/=��r�ņ�,����}K �%�>� krHQ��6�I�I@�%@$8�ܫ��O��JO��6���54rr�g��DJa�������NE��~��kjO�.C���#���ly���Z2��N��ѕK��:�|j!���iǲ��@��)B���6l���7�m7 �^Ч>Х��i�j��d��f"�G �s���ȅ�"��1��f��礼O2��(��Q��+hV�����u|gi����r<{b���s���|3In�.>�6Bmg�	�������d��(ުJ��G��I��ո����>��hSҌ~�h�y'�sDA ���^R{ܷ�Qm$����j`���&;��%���=:�$����������ǻqJ�v��ՆK�y���4�i�?����Ó�����Ūo6�>�W[1�<���d�����h�f�mf��P�/���D�S���<0ݘ�?`���(����D7�me�~mrܼ��g�^C�Ԕ�P͊#Ƹ��m����r��MT��z �G��k��\߮�U�!M1+�c%����c=���ٵm��ފ��Z,�����p`x���S��� �����D��z���2�E�*���_�JA���$[����ߩ(Mv��_R�7����v���"T8���cr�:s����u�=L<
�x�=�uL��=�Ԗ8�N�A�����^�hb��8����;|}^��1n��)��@���E,n� �ksݱ��H3�-<�@�F��ߢ��EvjŐ+�_�O���q�����Go��^�,�ʇۥSJ�QQJx x��&׆���]�M`x(s�I����\��<���n�����H�TD���G�I�}K`��]|����"�.�5Y"��x�3�3~H��c�T�%�%�M�jv���}�9�ԟ��~��80�`���E�����{=*��E�$�,q甾���+X�f<[$��|}�Ń�X���>��+�'��>y    ��R��8�ON����a@с�pe����0�)�o)ρݍ��/}�}��5�q���<o�ϼcȣ�i�oI*��q�����^�A�d�A������g��%h�
R7�m�#�3�I�!Ɣb�{�D�8o�>���XF������ƌP��W��������1��~�����~�xE|�~�� ���<����%k�O]��<g>�d�X�J�ow��Y���^�|P��Y�� ��v�I������>��{�u3���.xM��ut3R4j��gm����׾	B5�R�����k�e��N\�����奈��idI��[�5��Srms;Mb �SB]NI�YN	�?w�~C}��KLm�(?���1��!�j�
�2E�׾�+kU��A`���D�P2�H��e��\���+�5n;���3s���? ��5&�5^��1$�;��� ��仵�D����2�7�c�Zz;r�.M#��$��C��id���A,x�۱%����v�� �f$����k�KDԏ�����׵��4P�	Q�k���0
�n���Qjh�:&ǒ��w`�I0ē�ȜQ�դj�:Y^HǺ�)Z6/�xmR58?�?���ރ��E�H�P�U㟣���Z57�(�u�����$��������	N�`!�S>��Umd
�"�$����g�7a}�>�==��q�h�і��@O`9§��m�#ͬ6u�BT�ӓ�dI��i��i��Imq�O�?����L��B���ړN܈���n(z�+�䜘ؙ�&A(:�N�	���D_�:&�q|�������x;��(�����j��;��J�ID\>Fl^��U'�D�*`���x���
�}\#�OV�I�4��C�;*���R�l�pjq��?~�kF��z=!�:�/���7��L
 }{��t G8;@X>�$X�W�F��{�51]�!j���� ����y�=���c�5
��4NN�Š�yd���ۊOh����aa�`�Yo� �geP�9�/�e.K��fT��J��Z%���	�����_Q��� �td�&q�*�~�1�)�`����Q~1e�BF�$A�ہ�C��c���S�֢9�0��8�����01#��V�Y6]%���&{��䁞偡��h�/�k� f�8\�Ȗ�`R<��4%E'��$��F��M�
�t�hp���n~��(�W�=9��+#o�>(`hUi�8�3$�Ҋ+���9!�/��ڀ�7�08L�J���f=�H���d��1���#I0�����ړ�:O������!��6��Klc-M�5m�f{`�ŀ�Mٍ�OeM�O��� y	E�Ɓn�K}�87�߭��8�������%՗��\��S�n֯t��0r����%�,@I2���>�SW>��Қ���0���y{ч�Ц��(��<|�	��jܩ=I�U=E��m�#x�LA�u��Ix֗&f�ұi��H� ����N١x��b�7��f\ ��M�ƾ�]�zsP���q�ww2��J��^;�nӽCvn`�TcLQ���5㜦�-���
u�Q�Cg`E�ܔ�6�lR����.(���_����U*6� ���[C��}B�V�j�j�&���v�������ƫxIۢ���$�y�Yc��[1i}�X�S���R/���I����7>�e$�{v�#��ˮ]����(��U=~�*����F�m�β=�����IAPK8W���qѽ�C�J:��v>RbhW�����<�N�P�[�]�(Q�&���%ͬ���'�|�F3�22W��N�j0 �� �h���bT��⥮���?��P��6���87�e� �M��#��&�<Z�X�ـf�AR[�$u��f�Q�������R&oW|6��2�Y"�Y�!�rq������v��OB-N���������ߟzg�ߩ=ɺ�e��i�&}�֊�W��@d=;P�����s�=x<��^�Ys�Ǣ�s��F�e����U��t�����g���=�l���K�w�3�Ѵdmc� ������~o�pH��I5�*��3�t��b- ��`�s���R8�k��;i^�AA��u�Ԟk��0R�v�ͱJ�4�,i�y�~��<^��P�%'���/]���Iн0�΢�[�G���z�����Ѯ����Nbj�Dv`�ul#a��	 ����M9�������j�&�C��� ��Ez�R����	�C�~�|��$K�����sU|�j8��<���=��A~�efH�N�<Ɓ�Ae�̂z&�W�ZY6�=ERxcw�}���¯�5�(P?��]_{��m�ǻ����ڔ4�W��!��xh��C�RT�-��`>a�8Ď�FM�b��/�]���_F����h�~-����v�f3��U��'�)��B��pm_�다�fq�A�$����x��F��*s����y�[����EAV9'vڔb���+E���<�~|�7���;]��������Z�#ohL-g6K�Ѽ��l��K6�~�0f��J~E���/���}�0��`����9@��=)��i������{�s��C�>~
�e%�WYʏ= 9�N���x�v8���*L$%S�.{�lq��?^�A��Ğ,�Y�&Pi֗9ڴ���F�DD��J1h&4�st�g�0��ń�JA�m�m��p���r��/�	:�-��Ol�e}(�ϒ��Ԟ ]H�1J��L�а����Ih�U9���Gֶʱ=�mw�Y5*�L��e������ew�TN�����H���	������N�I��Zf��IP��6�n���qq�xp	Kd�b�:���zM�X�Ҽ L�	;�<<Db!2h6�m"$���a?����Ԟ�$�c`zQ�����/M�܌��N��(�8���1-�c�LM P$�2���7�IK��d� ������78/��m�^k�_��$|�ZB ��n����f;���4kFϗ���Y1"0�C�����r<�� w	\c���O;Cq]�Q2dcA�8��/	����Ԟ4PW�R6�0D���>L�C�B�fb��B�5������2f�����Ea����fh7�}
'Z�o��% �]�wjO�N_j�j�j}h�W������a�㵽K6k�X,�����%��4=��u����S��#�)֓�Q�_�� ��<C(���A�GjO�ɰ�{o�[�(Ι�jCE����rfA�&�P&�Dۍ����{�Rv3D��-�ݰ�����˾����<R{��S-���9���Kv�n�SC0]`t�+�������f�6�T_�w�3q�8+�<�� #[�+�9����;!�_�4��Dt�]ݫ�כ�S�u�>o
f� ��̇ ��>�<'Pk0�f0*�#�B��keӌhqz؟V�" ���N�	�*���{�'C>�j#�"a��6��ln�Z`��-[�'�,UzzfY#m�X37����Y��/
c�ڄ�]_>R{B<������H�w�����A��y:�3k���	*���i̗U��kqщThi�ɧ��'������V5�ޭʝ��U��F��M�Î�8d����>;��;�𘫢]�٪�/���-�49���b_!�����Nj4�ԏ6��E����:�u[O�a�h��eN�� /�a霟�x@�n�C��Vq>����_��0w�_���7R���E�H����M5 Ԉz0#���68h3d'Q~!EǡIg�$�ӭ��c3��.^�lm8#��R� ����i_~?:8�n	p�%h���IUR��'[MQġw.��ip\̴� ϓ�0�&+;�U�����<�a�fA���E�ߩ>����J�n��	ݳ"V�..l)L>s��B��b��N l��(�����s�-���$���0��	��i��k�#�'г*�p��ۈ�����ԫ�W�]����I��6�Q~�$�\g��p5�	����V�
��<�*ڦ��J���n���Ѯ��I����&GD�
�������p����/dt9O�`����VV���n�}��D������    ��AA������Յ�=k�Y��|o��b1�۞�'k]����D���m����]��\�9��90���b-��
E�;+��;議*Ճ��0�5�\�)C����;פO�� +�V�lK�\`��C 	�/W��a0�8ߠJ��e�H�I���''�����>���*&�م3y��\wS�,W�����o�1�-K�^�;�s�eMv �,H����4o��#�Y�n�HR&��w�~ ���3>ֺp�� -�	hC`ţ�K';[�R�T��c�>A`��L����P����z�4C?�Ԟ8�5q��(%���'.KY.}\�d����`
�}��7�T�V��P��Z4��Ŷ���8=쏗!~�~����b��n��
�O�:�o�}�'�S}O�+x�Β��*�lg�lS�B���)�W�5pX�e�����_$H�.i���'�c�^,�s\5>e��Y�w���]aV�kYP���/>J�_��\D�eR.�R�D0 ��SJ�AdY����	6�+0z �^�F��8��<C�V���GjO�kp���[���m|7�  ��N8p��ac�p?L����
����#��U�^�A$^��Z���2�;���笙z�#=4��N�s�Έ#F�S��#�[��0�D,t\b8|�S�v�1U-�+���vk���KB��.�;�'ɵ������?K8��Vd=tp�<��hg���.y�������Q�%G�10��C~p(b�����ip��?���ޭ
�^���� �R�}��#o�| �E'R֫��"�����Sq-�
a)Q5���<3e%V���1g��-N���y����H��sM�R��T���3OL��lΩ�"���|s��TE���2f�m|< k��8s��q�̉.����b-�O������W�ړ�K��Nj����5o���l>ӭ�T���Չ'v���|���+㨯]��r5�NW
"�\\Z�'��tT/Ǜ�GjO,�V�<pT��K��㦄py�_d���:*^�\+>?D��♰��"��*J�xq���&��x���������j�=	����W��~�=x<�-��i���Cm�O�������K���}oi�!�JGv�L)!�އAR-��qް~�ϯԞ0���Qֿazv><_��ba���%IE��Yvv�y:Љe��i=[a�iVs:17�M&RS;��<�1j.�\�5�V&��Z�d�A�33�
~�hQO6L���S��y����yvȎ�\����s�D�x�Eh)�yJ�$�|R��y�����	��"�CR��Ʃ$(5�cnq�#e;`.�0�T��"�D�a�(�Wj�����v�CR=QL@N�cyޥ�b���v�D�� ��Ԇ�-xF�|@�
R���b|a�`� ���<Ma�	��Ί:H���rΞ_��6�`P�sC�4�\���SGwjO���n��`�����EF$	K�m����!2狹$%�
���e8�3;�a�̵�
�[������7��Ԟ]�H��`���m��GA,��,aEQcv\�ӭ����Ia�>����3�9���lq��Dp��� �U�4�[�_V�_M�Zw_� &�)��|�w��_f� &��G���	���{P
�h��Nz��:\h�(,�<k�6nq�?>o^��=9�.���jl ��Ԛ�D��Wxʂ��ݱ�Q`�����(!��ͭê`3LŎ�j�0��������2�?��WjO��f�M���,��N&�z�pg�F�EJd�����Zr��qc�3W�qU/��põ��4�h�z���u%����#�Y����N�Q㰱� ���Z�K��4l�cq,\��\�e.�Y�^jya�3-�	}����o�+r����p� ��-��ړ�{�W��b
�Nm���#"��n["��0�B�w�U��X��N-*ĥ}��q0L�Y"gު��&U-��c�7M��n2t����a�'B�M��wm� �4$�����h��c�
#?�b���·�J7;<��PG�6d�ff����,��GjO��Y柣���X���T�-� ��6��H�XHY�hFd�D&�i��Bo�r����ܗ����-��'O{��Ι�o�3Ѯ����&���@&������(N�B�@<��KSl1��q��5K�� ��1p�gmF�8ߠTǩ����{o/1��K�++4�J��
�țR�]�ac!b�޹��ܰ����6���Tu��&q�f��DP�6;ׅhq��n&�cI��Xb�*���k5����4��H����!Z{�I�F4 8���+�;g[Ebh#ɡ�7\v�x+�"j��DZ��O6	 o���BtY��9�@b;qh4���Ä�s��2+]Jk�q�j--�� 	�G�A5P��<�O��J�)�^�m�%Z���ױ�h3f�o˿���D��LS3
q�>"�,�?�Y��Z�@���J�km6V���ƀ�����у�h�������P��'.�����ړ��|k�(n�x�"�=�C�|C�	3Q�L,�<ρ-�_ƃѴ��!_I����>:A�X����lq�?��(M�I�_U/kr9��G� !�|(����Ğ�	��`��Dz.�fX��J^��\�p'�u/8�DN]8�-�L��T���'��R�|�M�I�:��ĮO*��͈d@�Y}6�bwQz��K�l��+I��CTq�MY�8�@�!��a؋:#�p������K�3��w��I�t41Y�L	f$��L$����'}�G�A�<�u�l0]�S�5M�d�+�_��0��_�ٯ ���ď��ԧ|v��5zF��w@S%n�U)��W ��M���@!evz8I�82P�I���|��A�6�l �ݤ��������TSh���J^S���)��;nIF��1�C�MO+,� ��Q������a��\�y<����.Ċ`x�-Z- H���y�n:Հd������� ��j�ZhجfN�<�'���g�Й9>ݮX��U:�9�Q�]����Oͫq}�6�:��PI��~���m��qa���$"{�[[�n�0@fn@��d�%U�J T"�5���q��lR�X���ȣԲ�o0�L���̀w�qS��>�s�k��}��l��-�����zS���4c�s����I��<C�4bEýU����I���y�{�9�v!�a�͠�^|��B��z�����ƺ�Qv�跠�.l��V8��`dRRn\s8�v���R*2ޓ�L< C
�.�6A|�©��Lmp�ho9��.�X3k���O����5�p��l{9 .�Q}/1 y\�������xR��I~�.Ԉ?��r�������+��o>�����w�6����+��
�),)i���Y����FY6LBf�L��h�v�rtu�8��ޙ���6��i�uG�������o�g}օo;��֓$<�˂�ƫ�TR���&_-v3|&�;n���{Ѫڜ�z�a:˾�-��0֌!����q��4�~��zGz�}P���<Y�z���Sï3�\�v<)��b)˯��:�m���l�.�mD�"�XK��N�s�X���d�;G�&�٨�F7h��p=��}7JjZ&�`k���5�~t�u���ݮ<���E?�&S}'ӂ9�X�]S:���qǤ�����8��	�50�m���6;��Ѯ���*/���~��|�#��$��=T�A���� ��M�=��xlK��$����['�|�xF�y~3Q��V�x ��_]*?�=��+�7[�s.(#ǉ��CL���5��\�6'��B�җȾ�$���ȷ\#7���7��=@<�������Vn{�g�������:k�̂NC�X�|N��JFZ\؂�4l��ա}�w�7���F��}�}�ܴ�)r:�DF����ErR�N�f.�TX/�]��n��.��%��b{$�m�tho�<o���`[��5����w���ͪ礕��6�ԛ��l|�I�Ym�K8�p�!<��e@-$��r����\�f>�7��ۄl/B��=�Cٓ�MO�� �  ��]#ڡ��F�q|��Y�kd�9�����s�Q��q������?ق��aL����ঋFc�4h�j'� �}�����|�A�M��H,��M�G�<W��4 v<7�Pu��t�6�qX�q ϵ�o�9��_{��+�]�W�����������57���_�<�]�8�8s���a0�g�$<����fg�	�� ��:D1�D�b3��=���&�h�C������:٩M��b�p
'���C��p�v����ZX�0��Bi6<�w��kJ�Gy���G�<����Bߠ�0zẁ���&���D-iv�C�Ï-Ou�����-�3Mi�*6��QU�rX�A��4�L��Z�g�\��5w���?Z�:��$ض~D��)?/�����5/�C�{�ƛ!�ߏ����s̐'Ƈ�kJ��F�1�8��9���s�5� hS��h1'
��L%���&�]��uNE�RN?��=8��y�:���^�����D��c�@X�R>�j�̀�rV��v�AéuJ��h�e[�<��з������z��Gr��ж)'��j[vv3SQ���n����0 #oSkv��uΞb.d�|`�꺢�� $�����:g�����J},�����o1(z������������'�ys�7'��w^B��r5��8�赥T�����U�53�H���ֳ��Z��P��gnV�N����q�E��������s���sN|;��r�Ō-��ʖ~0[���n�Q��̝�)�lgafj������X{�$�6�����w�վ�-# �5
_� ��P䯮�u�n|t�;�ުDW��c���\���S��tś�` �V��4��E�3 ����y�\S���ܡ��:���@3�� H{��kټcP�^�D�+%�K{�n�!�����ڌP|�(�ȣ(~ZR�b��t9Kr�hK[����]�/�Ή�"��G`x���?��؋t&~���o8����3/g� ��+����0G��ѧѢ�$���ɑL��� gct��koG}7��;�����_���������
]J|�x��g�Z�	��;��P	K3���z��1c�r�i�`�;�!�ҀkC���"�xDP�qf��&�OjϜ�vt��vvw��<9�V��l4ٗ���I��qe9݃��L]r�$�A��Ygf����Z��P��!�7�
�����s�P�P~�3���F�ܕ�Q|C�B�\�Y���ݐW��Z��,��5��Cm�"�?�.F�W3C���0֢}�ɡ��<���/R{��������EZ��G<߉�k�����T� p6�%� ��qm/�x���|�5��{��^}�ԟ #�(=�3��5�ι�n���І��@fc`.��Ĕ��a�Z�6�9�0?Yά�+oe�ae�D��Nd��[�
��;���L��p�G�%��x^[D�=
\�\�f�������h>���4
s�g���\���� w����Y�����'Z�k�V��6yE�q�nn�2�[��ҙ�m2��V��C�D�Q�2�R9�f�.
��ʗ)�-�9�����۟/+��My�25:#j�������'�>-�ԺyVB��$M�y6��U6�#od�X>��S�l�d�!�6iA�rΛ~�"��`_�0HT�b&���	�g�ғmS+n[^�?v�Kj��u�������,
�!#ľlM����t���i<�0Յ>�08�!�Z㌕�:X�\�e���%� M�/U����:��/J���/�=	�[Fl�+��k2��龿daF�!5���!,K�jBq<�(46�g&�TQ��%4�E3)���Ƽ�~	���i�;R ���zI��m$���4�0	� ��5�+=�'a �Z�c	���/����y8��E�,�!�μ&��#W���o�Wu=���YK�����G�����L5p\���܈�X]i�`!��X��t6IW�j�֋6(��ԁ���Ge#�YV�X;)����A��pJ���x��3!Q��VX�.\���Y�����F�Oh�0Px���M �] '�l�а��x��cX�ߜ����>���]�J��R�ep+��)�M��p�Ns��03��l{��C�0Jޙ(ni�	���ԷH���<����k�)�����?�H��o�&~{������/!æ      X      x������ � �      G      x�32��22��2�ˊ���� ��)      H   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     