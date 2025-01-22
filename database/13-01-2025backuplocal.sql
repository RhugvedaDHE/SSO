PGDMP  *                     }            sso    16.3    16.3 W   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    294            '           1259    24778    QualificationTypes    TABLE       CREATE TABLE public."QualificationTypes" (
    id integer NOT NULL,
    title character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    institute_type_id integer
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
    public          postgres    false    360   r�      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ��      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   i�      V          0    42045    Boarduniversities 
   TABLE DATA           f   COPY public."Boarduniversities" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    365   �      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   3�      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ��      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   �      K          0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   �	      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   �	      T          0    42005    Constituencies 
   TABLE DATA           p   COPY public."Constituencies" (id, name, district_id, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    363   0
      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   �      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   @      �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   �      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   �      �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   i      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   �      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   �      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   C      �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   �      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   S      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251         �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   H%      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   �%      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   �%      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   E&      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   �&      O          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   �&      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   _2      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   H:      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   e:      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   ;      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   �`      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   �a      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �a      �          0    24738    OTPs 
   TABLE DATA           �   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt", verify_attempts_time, verify_attempts) FROM stdin;
    public          postgres    false    277   �m                 0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   l�                0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   �                0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   �                0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �      
          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   ��      R          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   ��                0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   ٳ                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   I�                0    24778    QualificationTypes 
   TABLE DATA           q   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt", institute_type_id) FROM stdin;
    public          postgres    false    295   º                0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   ��                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   X�                0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   F�                0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ��                0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   ��      Z          0    50426    Sessions 
   TABLE DATA           m   COPY public."Sessions" (id, user_id, token, expires_at, "createdAt", "updatedAt", refresh_token) FROM stdin;
    public          postgres    false    369   ��                0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   ��                0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ��                0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   �      !          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   {�      #          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   �      %          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   ��      '          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id, lateral_entry) FROM stdin;
    public          postgres    false    318   ��      )          0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   ��      +          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   X�                0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   �      -          0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   �      /          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   �      1          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   �      3          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   �      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �      M          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �      5          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   3#      7          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   7      9          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   �>      ;          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   `~      =          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   �~      ?          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec, annual_income, country_code) FROM stdin;
    public          postgres    false    342   \      A          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   �      C          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   3�      E          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by, country_code) FROM stdin;
    public          postgres    false    348   �      X          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   �G      G          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   �G      H          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   �G      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
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
          public          postgres    false    250            �           0    0    EntityUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 189, true);
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
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Notifications_id_seq"', 162, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 280, true);
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
          public          postgres    false    300            �           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 25, true);
          public          postgres    false    303            �           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 5, true);
          public          postgres    false    305            �           0    0    Sessions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Sessions_id_seq"', 299, true);
          public          postgres    false    368            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 33, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."States_id_seq"', 173, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 565, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 128, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 475, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 124, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 249, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 176, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1748, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 426, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 439, true);
          public          postgres    false    347            �           0    0    Users2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users2_id_seq"', 1, true);
          public          postgres    false    366            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 624, true);
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
�0��9��%�r�4mV]�\]���X�(��*Vh����N�}�K*�E��Y�n��L�H����k��Hl���c�1N�ljβ��t	9͡�k^ìS����`�1N�t�g�v�Mk=ZŎ~�J+vqSb.�H���;o�"��S��I�yO�      �   1	  x��[[�$+�NVq�G��`��E��e��5a�++��9%�GKNE�pd�~[������P��|xp�s���#z��Җ	 � !ĺ3A�F��"��(Tᝲt(C�+[��zs���s����K3�:�[-@��d|�C�����ߝ��F�A�����(w�� M������Cdρ:���Q�$���l�H�����A��e/�_���H �`�5<��Ӑt7��hdu����=�ź�V3P��B�
�sqHm� <�z���h��/	J R�G��`'Ț��`����R�:M�}�oQB[���7
*�z?�5��_�B�3���}�Ue�H��
��Rb�4�� A��DtE��r�#> ��idur`�v
2C�#�z��@)^p����8�Z](@E��Ne��Y] �_i�S*�O�8�=�{�'V�(��K$
*H[��;���E(��kmI�Uٵ#���"����@ޟ"�{ԖZ�@��Eл�~�vJ����.bYE���h�>�C���w���|�'��G{����"�]�����ifuޔF�rEjœ�s�{���E�S[�j���<��� �auH%T�J?EV���j =����W�HE5%��)�pidu�HWS�	Q@�{}|du�ݼ��Y��h "z9��|�3����5��!Mb\w)u���:�o����HU�Yc*���#��N�2����Śƴ�A(�r/�K��V�	Pa�Z�Ȼ�0�zX#J��*iO�y�t3:�Tzo�]�,*��~�Vǈv�C���O
�uV'�@i������Cco��?�=�:�����L�F�~,mdu�4B����_�V�'*����hdu~��# U���e�Y��� �]4%���#����VX���	�R�{�>��@w��. �|A�A�GK{X��� ��-�d������@	�V�������$t@�Z��C��Z]��'�~�J��S�Z� �au	���v_>S0��ko:��fW����稳��Z]�$�u��E���`�.	���?��G�.���R�bnHr"��퇃�ވ��46:[1k����@Mi�s����/�12�<ƹ���}}����ç���P�E�S���e��%^�5Z-�M�$�ܒ���2&��̟.8�&�g%	��hhuh�ckI��Hl"���'VE��-h]Uf��E�K�	��m�ՁD��A��f�4"�-��:�4����N��L�����m��W�ma�E$���W��7��m�|ﲉ��oa �5s�H �a�0E*&һ))	HJ��i)I)�[D*@������Ey��;WM�wa�/�[DR�+���'Sto�A%�umq�5e��,L�����n�`�C&л��JnUn��z	�&�u��"��z���ܧ`"�g7�8֛����HH*��-���p�@�<PfCpN�5)���{(P<�[W�k(�<��i5X�ѩe�i���x[���&�X�B)�[:���e(�z����3�y�|�z��}����&��-B��]3�|�V���g�+��1�$����$P=�v�k$0]O��4/1f��
L�M����
��6kN��e(0]�����t=���\4f�"�<"į��9?��ҹ�Χ�e(P�[�9_�� �yk����z�y�W�4��\�=���b.Д����έ�L�5���W�N!��K�<��ObW�d����'NdV�d���@�E9%�"١�<��WٛSq2��N��s1�O3)�9C1;�l��y�K	>�"�>��wy���ID���l�������XsB�{e���IL�*V�����O�By�l�W��ә���3���r��o�l�nY}����Y}p*es8^V�6�d6g�L��L��R���Ӝ	k��Өl�nes��}�Q�Fv�.oY}:A�9�,�/A2Z��������fE^�Z*.�j��.A�ե/�.�����Jц2�/����d�)s�λ���L4M���
���������\3��O�<~v�,?x����6y�K���q'O��,��I;�^}:�S��-#Zk��}̲ �T��l�h����p�,@x����N�Wp󚵬?8U�yz��3�W��C��^�2s(s��S�.S������d��-+^�3�yOln`���:�W�>eY��H��c�\U �J޼�XV �Jb��/+P����ڲ5Vd]��-ć�C������R���߇��-�_7�s�U�1�݊�.��*���b�Bȅn�#�m���a�>�	3)%����
$���H���N�
e�߽����_ys|�I_@��z��:nbt��W����L����X��,      �   \   x�3�tvp�,�4202�50�54R04�21�26�3�4�6 ���rq�%��$��B�2�50�50Q04�2��20ӳ�0E�[�+F��� ��'      �      x������ � �      �   d   x�}̫�  �|�W��> 7>�f1[l�R�{�A�g;c^T���aJ�����;
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
Mg��t�^M>���&ٝC�QÌ��W���/�X{L      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �   �  x��\ˎ\�]�����`���� K	 ��܊P$cflC�*�ힹd1H���F�1\��qX�F�����_��������p�?_����������9�������O��+����>�x@w��ؒ~o�����>1��7О����������ӷ�~8��t�����/χ?�����W�{�=�\o-�}>kl*��r6���_O/����������W�Ϗ/�O����ϧ���O����������/_�|��aO$0c9�jl>�B$�7�P�D�����O��?�������a�ח�oO_��ç�o��u{��}�=�hJ-3��P��vb�����3�����y��g����1��_������Gچ������p�C��({���Q���L<��GGG��7DE�(0�xo<5��{���Yx,ޛvU]2������".,e��s|3R	�pq-��Z��vD�SJT���[{^7[��q5�L�(8y�\^*�n������1#mN>o�yu��g)���v�dC3��D�|u�ȫ_x`��ROo-]T���c���D`��˶J�Үb��1b�D\��úYr��4�=N���~T{��F�bߟ'��o?��8�g5���c阨(8����a["����a`���E�.d����>��#��5�HZp˙��C�VM
^a2��E���G�b�N=)q��P�ia������@$��c�DC����I�@�Mq�g���wd�8L˩�L�(xQ6�~w��dSǻ���E�²'Ё|��_|
lEx����Q��6�e���jN;�S����g���7�]��\lQ,_���2P��.{w�Vh/��@�%�h(�Mc��[-���<g�0P��q�(���Yo�N��B���^�f�#o
�ȃ�&�DE!���e/�;[�� ��2�P��q�ƒ�rN���"���LP��q����������1bD_�ʝ)�<2KN���;*
A�5�����ͷ���&
A�5-{�.�2g�\2�V�ɀB�ӚW*}ypx�oz�՟�v��.���[o�n$S9X9�/�q��޴�A^��%(D����ܱ0!�G!�{�oN�3"�Q��~DJP;#
1ޓHpƇ^�Ub���N46:�H�B��$��?��t(�U:�ᒌ��H�B��#⸄UK��*
�ޏHsMK�������kG$�<�5�# <2')�?��t�߲U����j �{�;[J�,���	PQH��wz�m�<�O&��B/>������̢	��3�$�sYc�-�drG�>?1G!��\V�Xd���������(�{(�ka�l�ܻ*
�ʺ����q~X�|eu��ϤY�������L$��8�ޥ��(d'L�Yl+p����1P�^����V:�r�ՠΫ�B�dm .������'����0Y,���[Q��'VC!'a�8�[�OBr�맡��0Y|�+��D�6R������u].�u���l������;r&+i{J����R{&
�
��z"$as�S��OP(���RO�V�jt�)�k��PDc������
���Dv QX\y�/�J��s�٣PDaq��[�{��t)�	
E֭|�϶=r���I�B�]��s�幰H�L(��"
���ed�1�5!����PDa��s�����p��h(QX�V�7[�C��d�B]����EBnj���h(T�u]H���tM����*���-n��U&
U$v]'�;[�s�[QgҡPEb�u ]l���CW뛠PEb'U�����k��E��ǽ�4C���Nj���h/�}�^�1�PE^'�[x�������
U�5���Je�A��CC�Jz �ܗ-#�����_���y�Ƹ���*i�IÂ�(��g^�3l��%�0�Bd@���<�.���o��T��ȀIyf]�n!�zӾ�c�w@5"��{o�vc�M�=%"RҚd<�!r�Vt�z5�GD���&��+iN6�܂��%�<4��HA��Sl���*&�3x�Y�"�Mr��hbq=�jD֩���[�M-�QQ@� �e�� OrpA"�r7�P""�Zt��J"���q���5JDDW��_I���:aq ���2���:]E�x�@��h(]-�t�}���V!2�DdkX��lJ� ��>W3CqkX��ccukD�Úh(QٚVj��XO1�5QQ"���Vj���շ"�K
�%"[Ik��q=�+�<�p���(�۲΋1�9b�O����L�R�ؔ�ĻC��pJ4��l������X�,���T:�m���ٚ7c�m%���ʨV�3Xo�
���N��Q@��
v����h��t]�3PF�����1�y՘��3��2�&�[��d�k�{�*
(��ae�s39)CAw��Ǧ�D�
���[o-�Ѯ���XXY}3�[+x�D@�

��G�����0<�JT�PY/pm�$$S�d��(QiZ&����Ob?��B���(�����؋1r-��Ct���2Apay�b,n�Q;�
(#daR�r{\k�E��r�DCe�,L
�W��A�= S�Q@@�ԅKM�C^c%"������DR���[jj���0�O_I$�Tod�����X���*s�Qf�=(ccaR#�~5�U�+����k(�L����\Oĵ�Ē76����Xp+s�ҋƉMo��h(�̌�I���D�,rh�NC�Qe`,L~A�F<��zh(�̌����D��ҍK����22&=7�[a�!
(ca��)�iU<Ήx�ȀJ��z�5D\�v���L��1�0i*���4HT���!�0�(��F4)Li���2�&�$7��:�M&(M��4�m�!�'�2,��ʈV��4�l���M�j������u�*��AK���h(U���\I�����;�m��P""�:i���ڭ���9�~ET����N�k�$�~�����{QQ@�
����H����E����*JDDUWv��1ߖ�'��;**JTDY'�i������h���߷`�Q���� s>��      �      x��}Y������ۿ�\|w���jDA���@AE���*��{��^�Y<�X��\���?Ip������gfV'y{�3�ͯp��(��Ś�y�+r;�y��!��I3na��?�?�b���)��A�7H���?@�L��o���c� ������������1!����m�K�Ŀ�)^;z�ԗ��>㏋��f��sl��ZB�f����_s��8@��'V(|�#���w�v1�������T]CW*p	�E��YJ,ݝ�b��4?�&�2����1c� EM�"`0���<�s&����_��Y�!�#��eF@��:��y깤��2�?��j������sh!g�����c/���	�?��_�[��?�o���@�����O���ycsz~��ng��u��9Y���E��[�N��|�%�R�J�#Oa�/��#?`��8M��[��$�;g��4��%�r���������V���{��~�T�����2�.u�$(��;R��A �#�jТ0��	�Ǣ�s��w�����d�
ʙ�9�)� � �˙S���-�x��
j��Z}O����p
'	�U����3<��[�e�  FN���o惂�[S�=eE0��ܚ�\Bb Zp�Z!V꼤o�B�oF�7w
f:��Z��c;� �vOj6�j�[P|G�ӛF����O@�W��(Ͷ:QS�P�x3��T�m���+2�T��QYE
��B�[E9����C7d��≎�� hl;�PH|dw&�>_���dR5���:0��W��BN>7�z:�nE����"���?Ԁ	�/v�"ϋ�� �V? �% O��E�+�I'_YuL/�� ՘y��j�ef]��f:��PV6����ܸ�-y���Ny�e�?��~� �bӪ�N����C��>8?�(�+���sȪ�����[@�T���$Y��.��#�e{���F�`󰶧�#��A�F:�
� L}D��>u�x74%IXBS��y~q{�)M"e��æ�5��&�H9�Z{\�w���OsN�#=G[� B����w�SU�wYײ(GGBU@��#���3����6{��nh� ��dڪJ���i���< � �`����g>e=����\%4N3���BU���' ����H}`��'Wd��1��ξ$vf�[y��!���´�k�8E�"�7t��ї���S�OW%/*�?�7�xEU�3��X����XB'����h���^l�O�oa 
M��Ч�w5��g�kVn�Y���vْ���9b��9���O@�Z2�w;
r�R�?Y�mý�aN��Wh�H��X{8��\��)7���1*n�	R�u��[纒��&1z�1~�� �QOZx'2��@���Ξ���>�C�
��3�jQ4l��*�E �.���z��y��_�b���$]�i�]��j��0��#w���ڧ>��oў;��:�[��;ϫ[�~M"]�i�8R�B�����JBJ�� ��>� �*���Q�g��f�$Z։�1�
 ����$94�O��� p�T�ǾG꟦�BV���͚Q��E��3A{%mSL%�����@����k��92L�M���@ B��~M���5�>M�m�S��wM���9Ȫۜ؊W��U�v> x�U��UU\ˇ�UWoq4i����k�]`v�3�"ɏ*�z�֍ O)�ߢ/�9���r�"X\��۞� S5\� �v�؆K�5]���*E��wV��mt������6t�#�݊��$������#���o�2`I�P8/R5�;,8��8��Z=Q��bB�/`��ZB��S8�*�ꈦ������<2��+xD[���]���F �g�V%@�w��#	�YC��uux�h���`H�uL�٩,]���f��H($�Ϻ����J@��`�!|��/��;���`�Ke濹O5�����; |��"�0pI�ۇ�d�R�U�$ϡA�4�.��U%����b�;(�C�ѽ��A��ݓc�)��,�%ڮ�eDp�
C�O>�x����e����¼�&z0<��YgoD����r;�`rj?�H�[� 2̩^��<Mٯ�o��4	���6k��\^���c~by�؛ C�g�Rb�淗@苹[0�E�	��h�{LGn/.xA�^�S�c
"�W�6�=Ax���U��.������>nxi�f@!M��{���#�2�]a<�s��}y���k��@۸���a�m�����9�}ݐAfE޶���`y	!2���]�J��jr����`/�z���H���]�����S��z$:UG DG�/�5�0�}���>�YV���^A�>Ш	/e����-R,��Ԝ	p�8ᶄQ!���h�����$6z	_h�!�Xur�s
�ԅ�e��l������]�+� Y��$�	�ҵm�6��5V�:�5���,�6_m�)�m]�ȔA�}�`P�6��J�TT*=PX#���3�k++�i��v#��n!��ֱt�K#qj}���b�i���3ؤ��6����E;�����_3���s;�H�;�"r�\-9k
��T3P �E�,d9�:�)al�V@&��X��?@@ɩ�g<�9�A��xI=��O��Df��^�uq�6��/Dv>?o�tƆ��;��'0E��jz�Ƀ>L���F�0P�T��G!�&���	j���\9�9��Ay�n����U���d�qs�̝5�\=����,�}W���8,���'������=��#�D����������C-�Z ���J���.�Y"bp�7Q��`r�p���g㭠�Y�m�Hu*�+�O�X_Ɂ�'��.���tL�g�b��/�3��B�L���9g��t�#�d\�J		kM��{���) H��6������f��:9S���ksz�f�ߋ��
�.��ڒW�c/7���D1���廙|0�=�|'ILK��56��c��%d���X���#���j���:����i
gO�*�5��8���n`�Ӄ��#��
�Vi�LN���g�g5�쪂�JJ��j�cY{�} ���Я*��,b)^>L�
pv�c;��R}�y@�)m�#�v2_cߘ#�`W��sq���	Sv���څ��[?�:�.ڠ`sF(X�Z��4i`t4���tiG�n##kN�Ru�qqprl?t |����^
��$]NF9;�-i�4��++�ݢ
�k�q�M�K��e}���$����w���9׸��6����@��6��-=�8,c༤� V��A�`s'l�^��c��ͅ�"�n�!J�	 �n�m 3��h�?�
:�$?����q�����#�]5�Um)���E�}�mZ� ��r�#�c������\��Gv�I�b�o�O��=ڜ��z(�A�_�	!1�c!��ry�}�I�<[�XM����v��BaF	��F���!��C���w5��qŁ��]13���N���? �ʹ��dk3�n�B����T,�?l�#ݪk#H�ֽ�e�.�A��۞���[�86�K�fN��fߘ�R��j�T��� �����ԗ��^���V��R�Mf�*2OnF|�屾�ſ/씚����;{�c�+�x�&%�����8.�l�ߐh]�B�@��}�.*�h$���9r��Pҷ���fy���?l�A}����y�^��9��-|�R����T� l�q|�)�l'�-�)��p��d�ɫZ]�7o�Ώ���v<v����~���d�R5$<C��H	Ao��HG����Ƒxf�AL�҂wVE^��Ll�S�< �9�Cݜ`��G�����s����2���
B���+E�6��y/P�����:��[�.SM9�f�0�T�W�C̛U�m�F��.�VKk��M���Zy'����J��R�T��v3@��q���*i��s
�H����z-�rC��]��M�z�"a;�����2JóK�i&������aH��H���� ���U�)}�E�-��2\y�NA��������3�QJ    \&�A�ܳ=~�@=S�.� m�����$�3�a��X�����������@شB��w��z�~� �D�SZ(�}�_¿��g�X�N�� <Ye��Nq�O�F�6� 4�J�O�B=4X@aj�t�7�^8 �̕�@���d�P���O��
F�UBÞ��O��$�� Q��B`���t��<ۢ1�N�Mc#�QH8��E[���=���$�w/�u=�8\yCGmR��30���E��'Z�lN )^�rQf䜌|�M���X���]هW�ZY~�i��t�h�=�����j�D�3y��9^^����M�
l���y/h��H˥d�f;7<2����}��[�oj��+��:<�+��N>c�io��0=��-*��U�Ƭ�T��x�,��4����
���:M!�e������p�t�  y��ph�,w��,�����`�����+�j�].���;B7�ԣU.x(�d����3�~-Ƽ�r��K��<�=׆�����OX1l�"O������S��\=�u%�+3����ǽ5���������c$����Uu"��w+�"�6��IS&�`����;��`�P�Xjj��1�2Pg��JK�+*FR׊� ��;K��VxxHp'�Vⷖ˟�oX����
}rto%�����#�N4�`|pϕ�����UW	I9�U�ABP{9�N�F�9S]��}��;��yPW���6s�q�2�BU@�F�LH��̫�M��;Ԙ�v1!�8��[!���-�k�A'��}��v~���*�W�NUq
Sңm��K�#
r�Cн�)�B��r�H�������~ѡ���%�Ț�ѩ��1���#ΐ�ʵ�N;�n֭�ʺv��Ӽ�0��B_ k�8�,7�Ϩ����B��yw
�G��:2��K��-���Q���]؇�½%��SbL�=F��q�-q&�fǤ�O��d���{�M!S���Щ71F_|�㰻��;�b�w�MY��/#��,M��N	��A��h��"�����Jl���N�u`(��#��@_���F�;
$��.�x=)t��~=_���)n��y�Q-��Zq�权[ҝ��;���rg���m�~}j� ��}C��ݽQdl��N�5��ٳ7Cw���*{�w�����e�"�J�_Z���]3
��T8��
���K��'�QU�7�/W�Z��&XJ��	�3�]p!�M��R�/�qp6�y�%q�s3�Z��0�T�߁Oƃu�6���c��f=
a��{�_�b1�B�VC��6|�7�5�E�*�H��i��i?�5g�ȇ�:և�0���O�}���0܇O>w�ڥ��C�� '�K��N5��n�a�3r��3����l&b8�������0 4��#xw�cTu���� ���z��j9�%^yg&[����ay�PA�1�;[��]c$Fq���W;����m��W���T��d����7�g"�|�!���	�Qh��O����/d�x�T�F�CU%���P�|5�����(�w�C 5N��h���Fޣ�c_H��..�����p�jG��k�h����GRf�����%���������G�Z�	���[��׻��C�z�Ѿޓ	�g�Pߵ�ʋ��mU���~�8���7�:��=�tQK�	I����H�ޗ�f��!��JL���S�Z�#�ڭ
'�;�����I����3}���߃/���ⶖ2� ����s�%a��%Ye����Ũ��mg����z�J�.�~w�@"H�c��ܭ�A��f���$IN��/�اU��9�.�21���f��2��K�(D[�wS��`޾��i��?������<�N*��e�Ij���k�+�ਫU&\(��H����,-���dZq�a	�[T�y�<�Y���#�'�ǿL&��PC���Zj/��º/sb_Y��]k� Knh6[a�z����MH�e��GD��ז��ۺ{Hߋ�u
�h�� �2���;�r�����{�d���_H�l{�O�ïo �R���q�
����7�?�ǿK�i��˴�������Ok`�dpnsJ�4�[M]=�3e3<�d��]v���� �~=G���.�h�=]*�w��]-{�7ƺ'�ku�������'u��6�!�ǒ�����x�jM�l�F`@m��ţE�\�`��s��U�d�>�#��a��&�G��v�����.(����Aq�.�a���1���l7�'*%�T>����zy�Q&׵v:��޺���~��^�/G;c��v�	2-�</W0�skտ�`���z)c5�n8*�+߰�8�6�Z��N� aE0�W�/���b�7>[;�M�pw�r/�J����I�`G�]���6�����-�-j�;8^�����h׿N��h�=F����ؗ�?Fp�.� ��e���9O�[�+�C���0�MМ<ERxE��b!�`��牀}�y�1�<��\�ҵa�T(=���i"�qA,������㞍���h[��K��_.�X(�;����O����A����� ����ۯ஻�������e<l.��H��6@HV V���Wo!!���oeub���0�fʎ1Ma!�S�(1n��hv) ���gOVwN  �?��w������֛�ބs��o��21�ֱ��:���\t�z�Ev��I>ȴZE��a(��?I�}P��n{�n��`�o��ǡ/U�xFL<�����R�v��x�L��~!-�U��A��Y��7V�J��4�79&�k7
 �he<���;3�y�c_���?4��V����0�b@Zݕ�z�P���;I��Ginu�:Ov��'�GvK� G���~�� }�TT���cS�bK���DS�[�T�mn����O[�����s�g}	��H��"��)B}��賆�N9�������R�E�3���+���Z�DJcy�W��/]���\��`���]Ű���)�%�޸�����Yy�,�����W{n����gׇ�w?���!ճ�{8M��_+����O����@�@����$զ{m�D� �~�"}�0ڮRrR�����f�+4�כ
t�Y�\Wf�@��s	�G�|4q݈{zNR1ﱫС��5E��R�[��Y����:I�vV�P���ZU�֐|���A���KX,�	nl����H6r��g�F4~�""R����c3� t	-e��Z��s.��>�
v�����6�A�dC��]��6�b���%�d��Y*�ɠ�N��]l'i֥Ɉny`G�����x	��f!�u�]}(��	�o}��=�RZ�q3����JNYY�E�uv!c��\��$�El]2���1ʮB�hu;���ī����m"}�5{(��9�w&V�q�8y����M�y� 6��w�Ux<��F�xIC]Vt�X�����(}mf�9���G���m}��A�	΃�f �-���Km�+f�AN�\>�8�73֓�*dY;�3w�Y`E/%��yz�\u����T�<��?+6pg�����'�mN�Y�3tdP`�V8L����ܬ�5[*[�҅;���`�B�����kAX���ar���֙�vp�M:S��o��(�C�F!�����+�j�x O�.zFI�@���Y�wy�̀��Rΐ��>���v���G�p��&v1e��}1h�R��6���~F�!֗f�]a^,my�;�����z됒�m
������ �`�O�F�6v�
]~�S��}�d�Q
���!d.P�E"H��5S��k&˘��SP	0$���=q�}�<�.���"H��(�ޗ�S�;�k&� �/Nk~#�6���$����S���7��	��+5*�B�
�"��wm�{�}��yn��T�����`��w�9�j;^�$w�	yt�Bk��b��w-��uর0?����=���!/D��L���m�E|�?��]��>��.cu�����7��ʼŤ�3y��V��h60�f��4�k��������z|}��5ӗ��    8�Dpѯ�uV�m��4��i����s���`#J��|���~�7y>���[2FY�w�����-WG��z�6�T�wu�c�yw�x�Í~��Ga>iΓ8��:���AV�{V��C����� ��q���>�X����f;U�y�އ˽c���K����Y�Eqn�@+-�[��۵�am@t+���8�D�/З�;�W�8Ɠ+h6?��s唓�0�{�1�]_�=�3�m+�P\���ӵ᮶�v��_@dX�x�HU��/{�F ~l�������XDAk���Z������F��D��Gl�,�fp��3խ�Spݭ|?��*rB���)������\�H���J����ކ�٤��#&,Th<_S��I�V맢�}��ћ��@¨�/�ë�B�QP�����4(eQ#o����,����ўi��P�J���A���Y>�Jx>�H��}(����m�Am�O����у k�Cg?n0%:o��,��ã�ox���ʄ+�o�W	[j2��#d�]���R��&*�-�O����m5�Y�C����A���ؗ���r	���P��f%����$�s����5������,��F�R$C����ܝ_��Ď@�7�L����HS�d*e����`q.�� �XX��ށ�Q*3Y��m��1�}����%�O�K{.}?M�]��P��A_�l .-�(f�����/��/�Ҳڈ��-J��e�.�xg_��56��ợ�A����⎑�<Q�?�FQ�䷱�gӇ'kЎl̉17ft(Ӗe�3ηm ��o��iY����������	�N��Te�o��'R|�`W6�lE�vb��m~j�6w�|��Y����sQ�ۖ:yǝ��Z�H�.#�X\��B��rzQ�ikx�����zË�f)paN�~�xlr}������9��jfT-g����-����}A��b�)ѓi��u ���]������-���ro�z	n�خ3a[�qŰ�6"<���8duU(wv?�tc�ha��)�ɥf��i��Vl}Mc���!(4h]+�]���J�l�H)N �c��IxA��mzC��1;�<5����8�?��>4��A_S�\٣Qp>_B�~���X�g6|����,��21�x��0Wt���w����*�u�v�ۛ�Z���&0����H���r'9�C9h�U\������n�n+ܯ�ʑ�����x%�iT��$1-�C_���3�4�]T監�\[�1�*�!��{B�GU��'��yjN�3{b�r�����8<H����.���S���a�e��^���ֻ �;�B� �e����v����̛�k�ҡ��>�|>�&�w� 4���~�{?b�y��^�AjIɐ#޶�v�e�'kwVc�V.��M��ҵE|m�7S� �s8�u�3��|�(���� �|^(֗3�ݛ�
;�d@��^U�:bp燕XI�m��5���F�.��Q�tk*�C�J�|X_|X_c߽6(��*��m`:+�$![�K�&�[,=7lyS%��rM���餇��#MQC�[9�:H�'�'Mf�v.����H|tmQ�Uee~k�]�젻�y w+RbN
��vA�=y{3�Rωh�H�:$]yvRE�W0ԆJca�����=(F��j����R3�ŀ�\W�0~kbES��9��x�)������ς���"~>��Qpd޿��HM��,F��eA�z>�@�����^�᷎d�-y��\�˵q�GwN)�cwZ���D�=���~}���IM�sܸ9��
�ܩa���W���v|48�"�2ד����"fӵ���n�ř�A_��*=��O������vn0T]Q���5��/.{1t��O�%�q��0��p��1�?�-�2���tת��R�o�/�Vڵ�����+i�i8ἅx�f&]�gd{O���9K�r葝���7!@$Q��Ƥ���a�(�;�+�l9�`!_ɐjc���U�!��F�uy,e�Iv���/[���sNW.�yq�N�/���ք�����Wd0��m��Dx�ի3���0�r���k	_�p��27Y<_�Jd�S/��q|���a]���n1tT����Ƞ�O_� Z��z��:k	�a�qY(ZzНp�/�@������R+�O������zp�ё�std�ѩpf��H�Z�a��1�)EST$���\��b���5x~�!�F�n똾�m"�<���x�%�$�֌t�M�S���E_�%d��ӵ��K}���Տ���
9
�$j��=Q���Jmf&��UbϣF�z���/*}�������Zs
�R9q�'��N[Q	J�L��	�U���z����U)9�D� ���ч. 9Z������8<U����.����G�ww�Ey ��k|���!=�������ڨ{6����_��_L�+� M-��E_�'T\����H�"��6�Y���\�q� �fD�٩Em��Je�Qb�ǉ�}��V�/tz"C�5�a�9�qH���;OOq �Ǫ ^!��M}m����l�;�O����em���;�o�/��oX	G3�6s&6;G�>N!@����Y�E�8�;x!��Q×Gw�7��Sݍ�S��|�����-�"=XΌQ/��T�k;!���;�.SV�%�����k�+���$K�A��iã?S��hB 2Z���#�S��́W���pou�Xa?��^8���e��I�i��]��S{%����=�Kf� �}#5�}}Q$��9�NW�c��s���O�6�"\&:��A����h(E�B?���Lw�S���?�ݼ9�ؾ��H���[�m��F�73,�O�ULS��f�7�����=Ⱦ���z�_�.�7�>	���sb���Q����|�$��>؊�.���AMF�UyKZP7z����l�Ȋ��Mik���]z^B�GId���h�?S 5Jn���H��73q)[���y����^�-=�]��S����cs�RD���7����>������i���@_��x�jE���mf����7V{���l�X��6��:�v���v�H�O˻���~>� lT��"=�n����Xz�~�J@�"�.��n|μV����1�k�e`8���Z������!��"�5����o�/�njfu:h2,���v����Z�=h. �,�C�sވ��hvgm�[�s��0�|w<_�.o���ߢ/҃��P�}�\�	�����ߕ,Cф;Z��} "�z��6'����\�/R�z�S�θ?���Zg"=�}�lC�a�cz���U�6v��Cj�*~y�kV�����LQD0�FI:����f�5y����g�=��7ޥ���sy�-�SZ�Q�9`7E�6J7@��qRh��(Z�J�n����F��/�=fܷݐ��w�� �t�������K�B�m�9G��1-��R�P��d��间��O�ƻ�и��~�>@_�E`q{ݐx(� �ƌ���<0J�$!9�V0q�/ǻ�1�� �r�f7�y���DD�S���ֺJ�W�� !���@-��37K7�F�Hƛ�1�,�FϫK�^���,$�
�P�����,�jdq�`ߡ=w�ܾ���<%��Q-�{^ZCr�Ӫ|���O�r��
��.�|%G=IH����'��� ����ў�w��x�.|L4����ps\�'��Z�-�D;����'������e�>�ni-7��Y�������}}�D���.^�$��KQ�tżiK�vTs�j��4h�� ^撷3����K��[>�n�_� G��w��A0�Q4n0���J>)
��L>o��e����-e)��_�9���L�^]Fh��)ҭE���a�n}�� ���G"��-p�`�j���ؔ3e%����=��]�pQ�-��:&��wߌ�!p���fw�+ '�f�
�0|���2��A>O�ݩ���y�R��;i)[��9��6�����%�m��ʈ~[U_�����E	��hP@ё�    �Б�'��A.O�PH�A*V����Է��#�(aچ��U��lt�'��¯Ľ;=J�m�	c�Hw�N�z��%�-��;m�M�}���҉v�pOUŚ���ЩWB��Q��ؾř�*�!	���y���,��8�w��}���sU��Su�R_o�%;�r
[_lX�&�|�8�x��a�;�"1P�3�f�91�ZA�"�V���6%?����R�uh8�Ez����E�8�+��m��JF^"��nÅ6)���T�:��#�:�+�ns��OA|�m��E~��z${���HWy,�E���k!AN�8��u(������jV��������π�Z>�8��������OZ�;���x�� H)敊T�r?���|,�{QY��R�c��p��q|I�4����>)�s��y���X�A�9b��(�rYC"k���OB*q�"`.#U�W�~�ZL�pV6�t�����]v�ȿ  s��CG���/΃=�+��=��],·�u?L��m�{)�	8
}��e~��mG|ۄ� h� �����wD��y"����Hf�@X\�;���%�e�����3�����ũ�gD����:*����<�ሆ�^ǅ�Wx�7�ĝ���=pu�=��zAW�y�q�B�n��;��?�#_���w���ؒ>n0gr����_alTK�~k�m����(8Y��e�����Ex���}��άo���"?�=�S' lc��˄������	s�lw@�4Q
�9��q�K��a��V�U�~>'�B����D�����琙�C��2Y̼�eH�BC{��[��lS}�dҗIO�V����!�����&��d!S�(�)��0ۈ����A:���K�q=6����x�x����9�1�U��Ȑ8�D����R"�^S��66�$���Hҙ�H�%c����[�$�7�yԅ	�3+���ȡ�!��_��s�	æ;J��ɀ��+|*i��E}��pŁ�gz���#VG��7�(U��E?&飳[��g+�E���!�?��v�q ��Ezиu#l �9�,1^���A� hq��}m�kD����#��f2��� ?F��:�����]� �J2�J��1v[b��k ��G'Z�l����	_#�^^��8}X׳C' ]���v�]?�Aa�o�jB����IĨ���5�A���A��i��W*�ݛ�-�
p��:Y"�w<�!��TЭ��-�/��P��(�$�H���Бd���H��a8̪����x�/��Tz�M�Tܪ*�� �i��]���U�vi���fmf��.���JݷU�&xp��{�K�.�s�c��_��Gj�Z%-؆�؂|��X�]�˳�f���'�_'<?��+ƀ��y�	�E|���WD���O% 'Ē)�KYV���Ž��qTm�,pq*KM�0K�]_	��v��0ҕ8�qZ��N/�!�"=�W�-}��uq�Q�5+�����!�CR�@��a.-w���̏�����}��g�_Vmaԅ�"�<�	�� p-��!Df��^E��	��s�0FC7�_�L%غL�y�">u?�OnX�e&��c@&�h�W��o�S��+e��<��Ѳ4�|�0���ՊY?��e�L]YΒ$X�]��$)�^��͐W�k�翃�ʠְcf�:�˷�M(^��-�8+�Z��!����n=�%�)�����vw$N�U��)M�/҃�9��y���u3�Ɖ��t,���\4�U�7��O��~/7��;�ݤ����;��=�u_(�_�/����X�S�^oL6��R��'\�Фx��"��	���倣���$c���086�ݽ� �N|}�F������ܲ��'W��*�RfU�s�RK��H����dVGa���[�����Gy�?��( �OI�G�[�&��eW ����>]"'8+4�2#x���A�� o�X�T���T�RC@�(��O�O*�]��ٖ��!8�Oc��1�X�W��+���?��E��.ˉ�%te5/b�|�/������a+�]��3￹�`Z3��~}�pp����P@������x��T�J�R���J(S� ���w�-(4x����̼�g������p�����(�i
~@c_�����Ҡ����=��Y�c ����6:�lݚ�w���F�f�9��ʃ �v�$�睁m�2U�B?����� �0#O���I���n-_���^��]��+I%�̕�sD��u����=C��#�H�a5�A��}�?-��£���7��-|Y�r7L#�<u7H9���َU�B�Ц1��5�j�7?�p0�4��{�xώt�m�{�8�9Fs/z�,�1w�&�M_K�nY�%�;P���Q�f�����t�jO+|��;}?8I�=�Ez�S�o�L$�@Oe8�4ќ4��3�N��]	�`W���Fr�>3���
{��C`�
�o��wt����� J'���v�%)�'`�� ���営�sq�2�B~����`��B�k��z���i{������A$�'�n.����?(�FY�\=��I�|�{T��V��*R�&��gq���0�q��/a=�k���x�;D�Z�D�SO8��~� ��`���_o�g~Ea�p���xg�.��P������V���(�X�a/ (Q�c�/�h�6�������ݽv1 ��e=�>e�����k�Ȭ,����8��-N�V`i������\9���HC��C���^����r��غCr@�2����7�u�<|'ϱh�G]���::���
An���&w.w�Q�вV�������9�E��$�0T읂G9�����_d���?�=�ZAS2�[�%�~�f���,�h<�A�lhe0��a�.Vxq��4���Ni,���J3�O��IS��Ǧ�;����Q�G��i��^���<���z�n������],��r>�km�^ "�<>���CO���k��3�
-�:��YQ1�m  ��,6T��a�k�N�[�O�$T�UWn����Ѯ�߷��/҃X�Z���w>f��.7+��3S�\�q�%�G0XjR�EM���q��W�8Tr��f.��0�;�4N�!��u���v!W�Q�]qz���t���^]��Wn[�^���~��Д=D������G?��7��69��0���A֎U�<9G4�b��b��<Z&(��)��n���{��A��#��Pmz(h�3a}?*������Fa�ꊡ`?��A��b����q����D��J*�;i��ڕ�� �<��3�z_�
zy�]�8�^<?��m�������i���^�� U���ʋ���2G:%e h��SV\@���̳�oH���2 ��PW�EƤ���#�P����H�H��?F䙮�s��9B.eR��eU��*I�H��;���H�!��;��灨QD���&2��&2ػ�髻<rU�xQse�89�p�@�&)R���9H�f!{�h�˿���K����]�螻	`��T��bT 5�@Æ~�)2pJ���&I[	: ��FZ�c�� ��J����*�?Q����p%O�}�zt`5�$�����ScK^?�%A�]�Z�]��F�����j�C���Wu��>�s� !� �e5�C� ��h��~�\���L�����愰�Qy��9�m�,�
��F`?Z�ZZ���F�gD�������:E�oї����(�b�"�=ZD��l�5[O�5�z� ��M��1w0��q�A�F�!�<�б��B�">K�������� �����q�"��5 m��Lwg��z�@[�ͳ����QWl��o�B�A��vpt��E���/�Ѐ6���T\��riJ��[�����g�5!rP���[�����]�ג�H��>����})��:ym	X4�G,������蓛e-��n`��l����!/���sW�9����	���o ~  ��q�z�G��dx��:��X�	�g�w�x�U^q�%ۓg�c"=4��T������eQ�}3g�R�/!��]7���R>�cڎ�����y����U�%歐l���1�˻y�FX��mĥ;O껻�@������v�L�'��״���b?p��f^+(}����a�hjW6�w�!�mזW�
ґ�J�'G7޹�I��N���v��"?�{a��,*/录[����=h�"WA��qmeb�5��n2-�0�+�yPu�7��CZ������q~G��i�?�3<ƉnTT�w���uO-����Jv��Kک�J�v�V����+���RG�;(�����5��=�?���:�~����2��1u�9��^w��S�2��ݜ/V�5�粂
f�{<���je�")NK(Gs���J��i�_���љ��h��Ҧ�G������r��[M��r ,!�Uo����)��ٛ�=�.F��0��᳥��$
n�x*%�/�G�W��L�~}�v��A����lIQ�����&£�(�,�`�5/"�lv7 ��4�Qx=��B�rNν�}�t!ʫ��փ:���>������vm���R��"����]�˶�LW�T3a'�lwD�y��ر�v,2V�����d//�V�k@Go�#���i\��&o�`D�^Q��ًgb���+��?:�b�"a�Z��)���L�����
O��u��v℩mک�R��]���.}�bZ�;'@�Nh��D$o�i�L����T1�,��Ĵ�I���_�Z���zw�d��tp�PP��)�̍re�鰭fO����	��>By��GO�=&�<�v�Ή%��â|á�0�tC�F�8���Jm� �ٗ�a_��6Z�nx~BZ�A#E$���XA�xu�_��O��|�R"$�[L� ��������I���t�L����5Tm����<v
E������w��
S���p�Bśǆ�r���K���p���n%X��Ѯ����S�Θ@A�%�5��9��?=����!(�$7�ǝ"��W�OS����悫ޮA�����݊�:^���t���S� )4�5�q]G�A7 �3��I�_��7�������l6�\�@�          i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�            x������ � �            x������ � �         p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      
      x������ � �      R      x������ � �         `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3         i  x��ZMo�8=K�B�E���ܛ�u��0�I��+�6��dPR��K�1=���l�h2�{��̛!�ȷ�I���;�Og�z�XF��4o2R���j�w���s/}��ϡ����4�Í>�5��jy���cG��xQfL,����h�Q'��X��#뚳|I�I���j9#�so��� Sb�E+Jx�r&��)�r�(���'��.���)2�;7l�.7�|�) �Y7eV�}Os��B�e�[�>H���c������)�#����}��~��T+R՜8�ȝ�a�w�J�?�zK
mHGF,��	|`���{--Z�ҺG�ab�/h�;�v�Ѝ��b��x<ώ<�V�꒓Z��nY�B�fCy�Oe�E1�?9G���L�^L��7�p�,-�����������IYT��__�'gZ�e^5˺��J�G�[���\�;��G�w�l�� o(��{�Ch��[�*��yG(��jq!;,��,k�]��(>�N�>���=�4��
3��Ɋ�fɨ�@^Vxj�?��I�yY��5��$�������r��\a�*�+�c����^����No��t|�4s����d��p��>��Ax]}rf͆�fT��Շ��n�1*��8�;/��!�t̵�Z,&�У���F�����ķf�l2��^`���X��m���x�]�]���E�0� ��כ�E\M�5 AvE�����3HЃ�:P�.���ڥ�m��.L�|�y���$�,0g�{�A
�'�$�a��};�t�+'y#��!55d�5��9�C�V���IZ�c8�ag��:i5��*���ȂV�3�7�h+t6��5` %�����j�u �%ɡ�� B>���Ϙ~z���Sйǯ�cO��@����KY���[5:�9�mD�̚�	D�ѡBZ�w0aVuy̳�iV7\�=K�Q�Q��LGG����b�_Mu����z8H^�\�<ͯ~���
b��	��!Q?������-��3�Ai�m��)�љl���x�@���tO$��)Ko�_�
�;ZS,Et�"[��=�S-�|���CΗv_���)\ZS*Ua��Z���J����GC������E��bTO�5>�۳��M��)o'<�i���1�(6ܛ[�\<�(�9ժX�*x�yӠe����5_1�f��@%]Z5�r_|�S]�t����ƽ���t�Q��6w�ߡ�/�N��[c�Z�~bp1������%5�u-���q�m_UT�ĕ�h��?�ydpU�=s����'��ܵк���=�k'yC�X�<j~����������Y�㺯�30��SC�=s��>�,��l!�a/&8.������q�2�@����?��<����g6>.�;�dպ{]�5��-��� b���c�B�г�W��P�ʥ��`�t��`� �s�|[�yyq�>'$*dk;Y{��\8x�!�6��h�*�u�����=�q@���'��ާU���4�Л���|���*����B����F;%��I��A���j�/9˚5��R���5��Bv(�Oe�Y��"���];�� K��E�AoBc����R6E������}}�?El3zƊ��jR0g�&���LG�����ʶ�� �2�<         �   x���=�0����W�/�͍��ťRpu�Z�ڥ��٪����Cp[�~}C� I�R�RR�d �DO�$M��O���~ܧ��e�ӞE�T���詸m,~�cF�M�� 5:C_��m/	�i4�Y�u��Xy�u�5B��a�eݒ�����C���k��ƌ��]v���P��oa         �  x����n�0�竧�^��忸�i�[A��"�T �}�8VD�lm��<<W�p���X�Nnk��)�j�kõ�p��°�?���l��@�L�ݷ۝f-�(�(�a-�2�樇÷�/<���m��3�A%����.�`�pk�v�wv�y=oH�tN��v��,`c����a���]w�g%�Ay2H-��$霵a��a��+��f�Jh��/��q6�2�)l��rB���%�s4
6~��0�V�dZ���⸾��we���P}��Ɖ�qs�_N���n��9���Sq:�`�J"���i�Gc=��[2\&��"nD�a��7�
mDM�59uD��!+x���)��V�
�i8=�Å����)���Y�eL�<'���H)�|��vonxM��D+Is����E��N\��hL�x%M�Uy5<>?�./�4{����ߤ(��
�b         �   x�}��N1�g�)�Wgŉ�䲷#K;�A�"�V���O� b������=�./��+l����ɅKQ-�Ig�;-��O1�y��ؒ)�ٴt��m[�Zbq3q�c�o�N�1��P�bYz�ܲ��m�H%	V��bj���\Ҵ�4��X��\�6cS�p���X�X���)��T�0(i�,=Evp�:I�'���(2���ގ�v�L=E���s5'G5���L������         m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�         �   x���Kn1�5�"��-S�g�1r�d��hܑZ��,�	l���$T�Q����/��V���������L�4��)[[�Q��8��!d���Фѩ���v�q˘��uH4wۙ{��lg��$5���(�%'$�W&yA�ntv\�����Q��>Y�F��?�:eD!}�(J�v��SF���+�2Ů�sʰxE��ğ[Ջ��ǔ?
3��         �   x���OK1��ɧ�{�l&��(B��c/i���&$��~{S�J��z���{#HӬ���u]��&e��.��k2θ�31�X��\j�`!��)-�j��Ct��ק��Fp����8E��NMQ����\��;��aL٤�7m{�a�mie~k� ��JݼPIV�ޤjmRj�ʲ�j.o<O���%J@�(8�
��?$P�q��#�֛s�۝7@)� �a��      Z   :  x��XK���]����70���A4A��a(�<��ߤz�j����T�=	���)���=�-�)ab$��*�'j��,&�TV�ʵ+i�"C�6�bzV8y�L(E���I���0�35=C���{��w��iX�EG���[=E]6��\��k��CoD�F�C�!�Q��
�KcQ�cn�K�M��]��q��w�����! I �	G��ܐg��fD�(���Qư'J_�9��z�#o�՚��߃�[r��QJ-(�3o�J��	�#П�QL���*{H�6��n���>r�����_��τB�� [����\:|�f�����ó�^�� !�V�;��kdo��.)���#��{�N:�h��d��܈�G��<�n���!�Ed9bˏ/����r��mX�4jA�1�|>^����WZq7�)���X�yoo��d�V�~���WD|�R�ѻs�$���.;P��!'��L� �]�Z$�^z^��6��](��n�x��-{OA��F��$�OP�s���:Ҵb���4�$�BoW�*t2O	�%����܅�����>S�����|�c2�V�_�[y�ER�~Y��FMw�uH��ưU���V��>�u�.C��S+��̼�UM_EO��6�#����嘟��P��Я��d���1f�犊#�S7AyS$�͔�e��-��:q�I{{��$�?1�֚�W�!<�Bc>B����~m���P��ݞ�W�N!T����?r��:.�n�n�����Չ:�)��//�X��Ai6~n��Gl�h�g�v�^\�{/��FR#�ϐ��^i�P���WV"ۤ�w��UD�f���:+�\k@"��[��X��Ħmy�&�{5�$���� ��^�b���j��J�
���(C�!���{I&�sAj,NE�j�\:�̝��}��8^��ݖ�Ҝ��;�?Xڡ�����񁾫R��a�q�*�~��c��6����.��]^H��9��� �]����Y�N��pW�*�A?�藪��ƪ7L�!�o�`�B���=�Sgv����g&d���P������D�9z+�$ե$��0�)�W�;��W�Aj�!���1��)�6�zʼ�h�Ow��,4W��v�(��e߂��ك�ഛ����Ӗ���V��?Q���4�#%������%�[�������K�J�s�~&�� 8z3�.���b��������(hO�z�y�T�Pr���b�<�s3��P~b ������_D�n�2,K�~n�1��;�2c��.���$0T��9�>��x�'������ӻ�~<��o����4�������� �8H��~���]"���1)�n��/53��j�ٙ�Y�?x�� 0���S�w�_џ���WQ����e4?Ci,��D4jG�>���f?�%��K��Xo���6œ���ϒ���q%ly�s�p�E����2i���yڥ��h>��z:���q�iI��-@}&/ʘ%��=���.�!O
���7ɟ�_H���e�"M�,}�An}�k������G����j�.�S�6h��p0�n��s         �  x���Mo�0���Wp���Iߪ
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
f�=΀1��(��s�Dܗ���u7z����9�����/(�7o�N��K��d��x�"�~�k:h�&��5���Y$t����gQfw��0��#�ibF/���K|%*����ؙ�����p���@3�a�,�ػ���[�d.�{=��[�c�� =���_e���e���2�2-�LESi�Qm��(3����9]�&=y�V��ؒ���8�kY�~]����PVt����O�e-P)��Pl�<9�x���ȕHAi��)�=.'*��=4k\T��]+N0׵��.������*d�����Y]%eY~���/���loo�o9N      #   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      %     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      '      x��]M�%��]���tA�H}�]�	0� ���8A�H�`����/�b�W���N?��S�(��*�W��O�b�򏘿C��#ƥ�����F�0�o�/���-|k�
32�JK��B[+�`Cx�h���q)��l受G��j�O�;��P>�,����V�x}_�fp�[ZJA�Z�.9��r����C���a���++<=B�@��;;3&��X-�k��?B'F��#�GLK�eFw��>3zr���%�i�]��/�NzQ��^*6��Z���zc�v�W�~�HL�RbЯ�=��0�W�+
1/9�Ew�Ow\F�=F�e���Z5������'z�@��75�h���_Y]�;����e�?�dp��ؖm����p����I)/ю۱=���Q.�9",��m���9�ep�9��������\F�N����,�����9�e��(ք5@hܵ��F���G��#��*t��x�a��A�Hb�T�Z-�g��[�h<NXC������Z��<q|(բs���aĺ�o}���cW��k�6��V�x{��1��}��1�Og;t��x��j��wv��N�L�����#�(W�A/��b���[���\"Ml���,��4v��x���i ��);�N`�8�N����8�8�5��eG��$�j	Hݷ>�y�s]�$�_u?s@)K�d�]�St�/=z2���r��u��>F��4���s]�ݵ>]w���g���3��xG�8���<K���;\�.l��*���WVx8������C��9�ԥ�C���xՑ�〮�g
�.�4��Z���E'�Z
�����a����e@���|��l�]�c�ό���>hbȄ1G^7N��rd�LNe�X�#W�N�ӂyZu��t��_|�����ya�3�,d�5>]s�(Ì��,/1�5��O�%��r�yU�PD�!>�B��`_3֤Ǣ�^{�p�����+2�x?�h��A��+�s�ə]41R�#����[{<8�!v��-v�zp>;ӕ�ϯ��\��y��0�e�)a�v�U��_z+/��p����|9�ꄎ;h���8m��Lٿ�%�m�#��v�y��u�aY����"2�x� 7��[���jݝ�t�yp3��ҍwQ��\B/}b}4^�h�*���dWQRXp��Ή$� .�Վ�V���2O%-!U�Ɗpa���i�)z�n'.�,��(�ǗP2M>9R��P#�ܾ������َ=�c�2:2g���r�:���&c0��>�����v%���4sp]YoMx����A�u�����6��V�~�2�q����*RGiv��V8#)�����ff�t��)�0rMyy���*ڍ�[oM<şcڣ?��DV���������Fs�ȃ�vmcy�c9�O02�+&_�әט99��F�mKM�|��_�zk����T7Nm�d�o],��e�����������Z�~ب>�p�T��_kڷ���������Oe|N��_�<;c磙�Q5�O�v����#�$�]�o/��p�*iZr��;lw����-Ȼ����K�-�z	�8J�Ѓu�Nw��'Д�G=Xh�	-��f�ݼ�v�4݃�ZL�B9i��)�d'ܷ�r~��)�4���r�X�k}����ck��!4�И>8����k}-1�z�.�jq�)�����|7�h.�&���TBk���[�;�Z	���#��3L��.E<�LN.�Y.�GT�`�4���M�����h
뼠�Bm����&8�m�)�%s�\YÐ�C{��2�G���P|Tc]Qe��C��Ꭳ-���7�8�����M9
��*��,t�d�rƎG6(AQK�"�k=�lx��C�ɢ�t�ʗ#HK�i�Q5� {
:��a��Wּ��F��G��eG�o�%���zkSO%2�J-xּ��������$����[+�?k��$\�#��*�z�Pg|�M������+����$#����L��5��Ùɳw��;Rޜ	�0��U�����aȳ�r�u�xS���G4ߏy���t�~�Nx�%����lЊo=�]sߚ��u�W�H	�Pb�]Ł��@j�h8H.�kJ�B�����}N�Y2����9�+G��0#O �q��:���hL7kԬ��"h��ax9R�U�adѕP�6G��Y�{�Ѥ"������l��ՄCY��L�r����y4� �g���~w��K�ƚ�u�L���XgՕ+��S_���G���4�$m�r��HLSAĵ�/i�g���ľ5��Im�{˷ފ���Gx(L�;Gv�0�|��b�L���'j�Q����`��T�8�l4eܮ���'�P����̫���"ס�M��ي����]�pN՞����m!�r��ݸ�BDPQ8jM��Z��G�[R	]f��$�bT	��}��MlA��:�W�����0���b�)�v���z��NJ�gtA����-8����6uu\Y�P/�*	�G��QZO�N�(a+�7�������k}�J��Ð� ��s���t��b�A#���B3��Z����y'K ��n����$����Q��̙M���03�ե��Q��2��Dm)��}���t��J[vSYp׺���c1���l��:n�
����d'�LӨbA{ɜ�Z|�x+�Ig���ȼ1�qC��һS�Ϸނ��m�q�B������Zm����A��i�Y/�d><�|����`#�t�xE	h"!y�>[����7�MQ\lv(�%[d���,v�>b���K3o���O��UU"_AcpZ).�4ܭJ�UUBhH����:߄���F�2����M"���)627pi�.yk8��3.��P,���� 7R&��h4�Aƃ�꩙����u��"@	�8i�����G��������\j�G���'wwQ��Y���"
��ԩ.����.����	��F"���d|kP�BB]���z�$���&��t}�3���J��TE�6jҥ�VLŉ'�h*mO����**�-��1�v�J��$m�v�{�^#�н�-.�z
×�Xm,]�!���K!7�J�������5���6���:�Ê�n4�:�Db��&�	H��*�YTɘ ����[n�h�L�#����n����U>��]pO���O��i�����+b-z}h�.}[Rꐙ%�4
ժ�#j�0b�U>���d�J�#!X����aASٿ���W	��p\�U��+�|JOS�Z��j4���.1OS�F�&E�r����q�'ꛌ��	��Gr���N��5�oj�y6[o��q���Y-0KJ���:���U��,[��>f*����$�`�f;[����^�D�ڐ
��:b�_'����oE�:i�ć5����
?�m����W�f�����g����_��_�~�Ӱ�ğ�y24�d+�KKV X���RkW����a�$q�"��Pɩ��`�͓�gk��
����,ʽڱ�xKE���K�JY�

�(i3�֎'��e�iM@[��_��x����/�ɒ�Z�Ƿ��$�l5~ *d j�/�Xt��������:E�J%Ŷ]�1Ʊwi}�	��gNv�|��6���Y���������3��hn����~L�M��:�j�$$
�3)x
qNy�2��=�H��j�]?9!I�/o�I6Y���� �<�� Y.\G�Q��k�� �
�O��#�U��S�e���Z�E���5ҫɋ �;2y��I����3H>%k�e~��xf���bT	��^���GG������6���8��Ў�v�	�6�a���X۱���$��CV����0���Eצ�r5��z毵�Z�G��.]$��y�xbh�	R)c�i�?-� x�A�4H�n�}^��lB����aN�l�ί[>��`��c�پ�:RQ�4��]Q(�*��|&XRh�CO��3�����r�Ӿ�1z�Ǡ'	ZUķ��pJ���g��@54�'��Ui��� /�r�\�D��rx9en�[�n4�φ���v����-�U�MVk��[o߹�E����f�9Z�^��ו�E=q   �vQ9��ی�E�/Šǭ�U$��1��}G�KeZ~~��]����kf�q\�㭩���Y�R�-f�����L�l�:a�]L�C&Q��8��pT�Hn�&��i���o$m�M�+?>������7%1�������!��nk�l��M��B.fc��no��8!0���>f��k�ͧ�/��Jl�kZ���*|��SEյ������x���n��������1�G���5{�2>���5��ُ��vƞ������_����������2��J�����MJ�GJ[�_C��rSc � � �%�a���U_�����W�_wAW��(�8�]�lM� ���[?o��7 ��t�c"��Q���x]��u�q\+�ys�<���x��!>�7m�:'.�'��X��6I)��bJ�y�m�K�i��H��a��k�,-�t�����;'q��3�k��6�/e�ۏ�"-���F2��6������c���F��������eY�d��HnM�\Ͽ���.
�b �JF��^�dW�0<P�+�����d/����5	��b��@[�E�"�X��C�=��Urni�	��읿é }篤}��W��>A�HQĦR���Z	LpDr��z�JGQ�I�^dH��UQ7�M
�ښ���^dIp�G�şrw�BV]_�#�q浛|µ���l>Й��8��%1}�Q�v����-I=�4[B�$��8k̍++�$���qL]�X;��#`��&q�Mj�xrX
z��=jTUy�k��b���+�:�Y��jL��;���΢�1Ao*4��72�UJ�Z��S�Z��_���N=�.>t�wu�R���]]��~��`�� ��NI�(z"�l}�R��	���k��A�<
N��k����YL����z�q孂����{gCs$˦�b�`f���MF<��*���7K/4�*���tO��M���\ dBG��Ņ�L�M!���z2(I�|�)��1!��.�\_�z�8��
����gs2^��.�2i�ې����](��f�b=N��\����Er��_��*�[o��J�M�V����?��m^_�z/�ϭ��,~�Cr O-'�u��8Ri���wǼ��hEl�:�U� ũ(�ñ'㊯TFv�H%�]{�g���ϛЛ��m5(4��7�Ѓ�L�����4+&����E�NR��!�Z�з��5Oϑ�D�g�+=@Q�W~bU�v�كGf����n�A^@�s��V�y_ũx�6$�*�*�3�<í}�K<��2�ym���V�2y"��C���|>�Uޣ˞�*���L��Cڷa��u��E�����	c]O�!�m��L:jWt�:Eؼ�g�e� AC�"a@ZA`-݆=�3�V-�=jyA9*���l}ߺ��q�Ԯ����
ы4(A8���5i��kT2S`��9�E����m@�uRt\���qL�;&=+zȌ��)y�����v|�Y/�]/o�Ꟁ]$�E������f����T(oSdv��V��!0L|c�E%��hի����E�^���9ec}a.��Vl�[��V��a����t��
c�>�������_�C�(�)���[�[�_�n䶍�̝94��mb@T��&&�Z�Q���VV=/)P�l}�t/3[�M?���ZN�ZN l��^��?ɵ
�����z�jVf��UZ���o�9�W��鎷��K�"L~jP���Ԟ�=[�7�W�Q�C�\�$�1+o~�%Kc=���ǶN@Å� n)=G|������$��n��t*�:�v~]�7�I������WOT��x!�h;�Y@;N~i	3�c���D���^)L�^�����* �����w�,��	',��9̿e���(�T$*"	���k�넳�"���v�CR�$̺�#�5�
z+�w@_@�s���%4[� ��L��f��PW�:&�奓Y��v/w�1�&��ޥjR�+��+i��>=_ޡ\���:��r�8޳��m~���E�C��[�D��.��T+-�B�D=�@�@�]�e�pK�!xV6�4�M�sYҘH�;�>��ou.ƌ�^�nUY8-d:vֵ��z�L@��&E�|�a����ʯ-k�Ͻ�̎���|����N��       )   ^
  x��Z�r�F}�SB�}0x���:[[���Z��2A/2@J�|�vfp)&Y*�h��>���}z�F~�DXN�S���X�wUۖ5�J�r�5y�,Kgx�ޕ�6�q�����U��T��Ԑ��L����zG8�9�.nh~�؂邲B�Y.�/T�V�`�`��*�xķ��W¸��iY=.ȷ�	0J�+%U�#J4�P~?4��KS�p�/���,�
�)l�O��҅0�G �)<HI����fd����+�5�i�h!D��48笃c�S(I�j�+�\�o�o�t���rc�:[��_�9��3$��V>�j��,�,�*$����8�dU���8��|_>�Cp~>���'��n���� HZp��YF�:�,��Ò��|��MS��є��{q��������4S�� @J�>\��2����>D�|���b��S���S��w�a�h#� #k�C�#hHy���m�9�LAQO�<a�J%��1�.���Q�2#�ut�:d�)��r�=�I���g9����u��+��p����_���
n2F󄧹=	�����M�?��w�r�����_���P���k`FƍJ������X�S�����ݜ"b<������|Am�LA5tl�]�:��w� �/z�^<�W�ㅤ3b�gB��N�=1���9������d�L�Q*�"��Y�@D�i+f��g�>f�ʵf\)L�,S]�0>�!�@Z!�g�8Aު��F��������A�R��������i��������S�k�5�~���^h�
v#S��Z���]ϙA��_+p �z;78�31�������p�%<��|]����$:����<ί����$�qbE�S��å~؈�\��`:Sb�Xؠ�?��}� FcLn������e�.DH�Q Qs��ءr!� ��=@/�U��Cs��n/����^�!�aNe��Z�
M��-�B	B0 ��]Ƙs1�1�����2 "�8<Igxhο����T>Ͱ���8�oc��C	���?�Zp'/�u�u�Y\�".1��u"$%<����}�z�|x#r/������%j�E�\|�L�}���q!3l4�/XW�㐼���M�����)��n����.KV�`����)�<Z��E��Q �	��� �7�b��P����C������� gG��rW�ㄶ�^�(
\�kX:�X"�}�:���r��4���H*A`(�!\�Q\��2QdU7�х`[�'W�̙���vM���n��`��ˡd�o"����������`�
T"���Y6�t֊�n�Cϐ�m��(������A+�p	n���{>i���y�uv�a���Pgԯ2��͌/ؚ�K���� ��} ��P
tpU�Jh���q���@|y�����(�;���� ���I=Dq���8S�x�D�BkSV���#�0�V����,<HD�A��.�@�K����(���J~�Q�L�0E�-���T5�g/��� P���~3�%��G3���a{x���I���O����Z;�ǻ. FX]+�^%#T�� T����-�?�9/.�wё��]�ܭ�Bڛ���Hc�M�K��P���e1w��I���<JugU�gd���e�b�c�/���,/RP����Q=�^&Y�R,� ��W0Z��A&��z��6�aϣ���P�a���
��Ӭ�J1��%��u�ɕ�%��f��9��m�`",�"i����.�!��������<&�:�t�+�޷��1�u��g�:m����۪�=����_>�y�*��~���7�J�A�0�~��Ď�CC�ٿ�Ɨ`n�[h����wb�(�ۦ�|��~`�N��̣B���a��:��B�PC4�Z�r�XtK�"�5���zM�w�9�Ж����z��#�ͱ!��k��G�Փe �" �&��g����;����rg��S�s۾�¼���)�UF��z�O ��!?�w�
2ș�]E�H_V��7X�~E��w�*G�9����j���y�M ֻH����'؆"XH)"z@���/BR�,$��y�1��䛻BU=�A��SA
14��Xf�Ô�]�V��G�5�������u��[kxA��J�m/i�ԡ\�liW�����5@sn�@�é���U�-v�V 0��j�����3:fҀa��"��4�� �o�ۍ{��+�͡�U�=-���j��j\x�"�0g�b���6��$��Wu_�������u�;�! /���hϭ��+<v衫�z�Z��Iv��� ��/�$)GI�x|!Vu|�&�������i: a� i���Oȷ�z��
�u�� �Z���Bۭ�a!-�_�}�x[����n��w}�l��hd(h=���a�аhgT�4ԚO��������fcm1�[BD� k��u�e�z.���9��a�2��O^P�	�|��0�"�W�3������+d"�'�gԓ�(E�M���c&��q�P���S���#�r8~��絡C�db�9�i�7$�#��P��닮���NL�K��[G��pM�|*�j�l.+��a9��j���0��&�UB�0��=8L��<%��0k:G����yɏ��1���z��}bV      +      x��]K�\�q]w�
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
֩VUQ�j�Ӳ~�MJ�Bl5��(^��I֐U��"J��T>S,o[��z���!�/�d�`      M   (  x��Vߏ�6~6�[,��W�7�d!�� m������*�U�ڿ��$d���CB(���3�XV�$ }e�����a�c�m�jcU\��W��D�	&U&�Z$h~�� �D?T#��WђVJ1<��	ȸ��H�0�=�;��?=�F�-�hS0B95ڏ�@��@}j�0����'P�P%S	�;�GO���Am*i[/���2zu������SZmI�xFq�*(�H;ڋ��F��)Z�u��p�X���F�b�aͳE>��򷐇�xUsP#�,��������}�}/)Lu"$\��`�*)��N[��1ʰU]��I$%�g�%h�9>��U>�f>.R�����ql�����]NȖa=5�ftTF���)0�jM&�c=ƒ4���C�)�U
N$�E�UYW<�-�oxY�e��iV��Ǽ	z�Z��r���l����۲�y���:�H��W�Ŧ�l6�7�v3��eUV|µTܒA��_��P�Mj����8W@N �il�J	o;s�1�R��H|� �y~3m�g�Z�mg�y�ì��r���Eçu�:h����KrJ��n�As���$E'��=���&T�e��yF��--�E�.Fد�8u]B�=��1��&@h�"�i�ci�F���f-�=����ϗ��/�.�&T�]��:2�S�!����c��䢂B�yK��9�[m�U����X+���[�@��4�uK~]���/T��e,ƶ��ǈ�h0�^5зУO���.�S0��@8���-k���'L����b�*I���)�E䭬f�t��q ���Q�I��]l2����E���x4��z:OCx^7<,�@���}�751]�j�-���W�-�R5Y ߸	�2<��Z�$ZD�[������YCvNĽ�)�Ǵ�}Jt<*JY���whG�JQ
y��o�$��k}z>&SE}�9܀�]F�ue��T�;���
m�N�zՒW�&�T���E�a	ݽ�N0iٸx�F�T5</6��\���֟9����M�.z���q<��L}A5���T�!��a�Rm��1J�L.���u~�h4���!i      5      x��\ˎ�]����!�~ܝ� ��N��ƛ�%k$K�@R��ϩb߾�d���m�`�g|��z��h�����_/�v!\������Oo/�z|������q1���������/���=���Ÿ�.W�N�����W����++���߀\e�|�%K�/|������.y�\L��x�F�\�#1�A��I��:(o�}$..���U0�?߿~��񹕟L�{5�U9W"?C���B�;���.@x��`�M<�h�̯^+�w��f)<wY�q/D���4C��M���LC���Jf��~��d�?7��`�C��HE��򝀤GK�3���V��Z���d���,�(��ݢ`OK�+-�şGi����4��S���RQv6���%���[G����-���YR�����.�P����Ư5ɼs	dtPX{u0��]QO
ku�M�-Y��6�f���b$8@kU��ď�*8���lg�	�����}\����gK��2J�i�~��\�<���%z�d�n�y|�@U�����e���]^��k�����IB���sؤfr���Pw6v�y&�u�,efc�f���!)�M3)%���2c����-�[�"��Ǯ��F���R�'�7��២�'{2v���ZVC�o\lV_F)i�����*~
�nh�E�eI7�8�uםC�wA�Ͳ�m@r��q����xl���m���(m/2�����۠��P;VO,p���Ne�-��?��ԧ2����4�u�?<����ـ����=J��_7�ߍ#��K�ӁĎLӍ3�A��Z�p�?2i?e\�3u���z�:"J��cV�=��eʞ<�w�:M�'NI�ZnozX�84�͸��$9˖׀��RxߏSS�ĵR�LG�+(6h$�{�@Je&2��(=�S�8�%~�t�8��@-���QZ$X��c"Wb��'�v}D����ڴ�����A���	bpV�tR*Z�;���S^
�w������^���rX�~b�C��P`�Faor�����W��m�S�$*6�AFAn��4Gd�*�]���~����!�����e�(�#I�3�R�Yxj��S�"�|��QLs\�",8e�.��]pK�y�M�~���Ic1>��������/�ݭ������զ�ȇ�d���"J�H��8U�H�.��[�Q��H���#m�jV}�ߠ䑠=U��s�nR̲GjP����q�����O����~&_��m���a��ߢ��PH3?M�)�2F��3g(��c�)���z0�X��A���Ic�PW�PX�w��"J�%��q�+��=xa�U�m�$����g2��!���t�ߠ��ȇ���O����� R(����'C-.������"������X�IS�	�55L�r�F4 ��f�z��lja���(����r_Di��A�v�v�1Ҕ�w�E����XO+6�Q�u\%~�afwk(\��ߣ�?f2S������QF�~4�d���RoB�&:C)���~�5O���ny$�lڙ��v�Z�!)��Q=l7�xQ��2�����(y!d)�ǿ5�������Ǐ��?=zmzz��}W�e>����Ԉl���:�@�ܷ�2��g��oΐ�`ק(��RZO�鮁���I�6��9�H����g�l�e�&qt]\Di�m�^"-O^�6�kI��(�/�S�7o�޽{2�(��Q~y�����<$S)���Ά:��{UH`�S� ���ޡ��Q�\X�j��1!���6?Ei�P��r�w�\��&%~��ĉx��&�	��/�ď��82�'���� ���� K��]�>�XFiw�_�.xݿ@�HH��)J�P�<{�e��A��6���A��ʭ\ˇ�|D��A�/O͋KOg��R�ۣ�U�>je���X���R��~g�����&
R��@=E��=.����U������%~��(�sup|E�pl���ď�3.�WK_�?}�ǯ�}ލ ��p<�>�=�Wƺ	�������Q�ϋ5����k�#�V��<�(�G����Uc�/�p����a?>WA�e�*�C�M����9jh��S�`��B�;�cl�(ʹ��}+�g;�d�&t+)�<����F�����K/�Q ;4]c
�%<��l&7d����Q�(�Z�%0/��	���&��QzM�tT%��`"����S�_k�7��#>O)��R�X���(|9�,�x����������5k��_^�B6�\#+qs۩� �G��C^ܨ�9q�a�m.(��A�ʓ�_1N���%�NFDYV�jY���^@YV���Q)��:�|�B�F0���"��|c��Xo�ꏈM-SJ�5郫�����阥$!ٖ*;[z�;W�W~�L_�(���PGť/�YsSO�"� w��8����FA=Զ"�cr8c?��J@��y�4FF٬��F����z:\�1�fݠ, ��J�=���H������;�����ki�ڟ8=<\�����%�VH �����]@T/nT[W���fʳ"�0�Q�QX�0" +�QV9,����Jek �����j��� ��QuGA]4�u��eȖ�8ǫ���Ȳ�4�eHgG=�=��;���:OQ�f�D�Q8�mp��Y�`]�Ǧ%���T�y��&�اd62͇��doG/�<z����m���*�����#����Y����/i=ʞ�gÕ����od� &�)�Q���M�� ĥ���J�ٱ�|��;"���Fw��|'��Kg(�� :R8Ph&��� x���#�H�m�Q /4���)L\[^�(���)
%G1DY@�� 8�4eh�}w�D�`ɣC��\z3�:G*�|;�4z[p�����jڢ, �<z]���O~NԴEY ,ytZ�P �ý�� Xr��dr8V%w��`ɣ3�=_�]'�, �<�����Z��ZDY ,y���)�;߃e��q��(�Z �d-jQ K�d��;z�p{�v�HD�~it�QPȩR��E"�e:\��M%�)��R�E�@��T:.e��)��h�n�q�q�?>��ۯ�!��3��y���?��&�����<ߕ3���
 S���h�>=�yq-�z�]P4}�3�`�zJ�?.Ȝ!��ң, 	��bGA��Up���((X���)Xh�*�!li�f$��*r�����x�±��P�=��(x�n�9C9I�H҇�Jj��3	Sڸu��Pر���HMG�lۏ�Q�Lto7��़���eơ���!�ŎBKwJ$���X�щ��]9�䩂�]�~eX"=�+�����}�%�X�q�-B!W�=�@�O�s���`9ˏA�oQ�����ѩh-vљ�X����ݔ����@wv,�, �΍=�F��b�����(����9���?��5�l�frإQ��߀nh�]Zp{M���J��R�ʝ[��<`ͣ��M��8�V�bIDY la�d�R�Sb�[�/�D����^\�G���i�@FY ���ux����1��=���ܬ��5�����epx�gc;
������Q -���o�O+��-��E�G*�"�כ�V�t�����D�v��e���q�� ���E�JQ�q���n�E����)-*��T� Y@��|��`l=騗9Q$��r-�J��^�.�t.5$�s`ˍ֤Lh��:\C��B>t�#������ն*��+��N�}�ۉ��e��~����ֶ��)���4����M��o#�I/�� e���n+o��\B|��(�;�h��(����_��h�E�1x*b�6�Gy�36x樠��,�h���[���̘��77��!���
f0tF�����>�)�3�[��_��*�Χ~'���1��(�	0���R�c�B�����)����:w�Ӓ�����y<�v�Cu?��^>?~����g��<_�ܾ��f�����7O��C���v?�p+e�
�[�&�s|5��
�l}29^��0�a����ms Ch�T9�4�q5,�� �  �ah�(�#t����]?���gX��'C`�է�>�q�^
}ޠWT�������j
)�oSԘ���`nJ���X�U�_k.f�F��o'�\��l���P` `���[��*c��Q �'EY�]������ x�q ����艋:^^;�a��V>���ꂲ������Y/z�F���:B���T�������j8���Q�;�zy�� �������V
K��5���(�!���6
��	5?��(@,�ǣO����������㻷��I˫'�����3�[8j��W䬸p>S?�䃭�3�O�#7���$	�Q�Q����"sޛ۔CFY �}|"�Q��_ۺ=CY �e|`w�pT��!�(������)<U���{Т, �5q�ˬ���3�`�%�Q ����u�0�{]V!�, �=qh���$��GY �{��F�� �v.PDY m�a����C��E�X��_E���.�&�(@��8�Qx��S��2J|\��	�V�Ju��r�hg(H0VS�YvX���	Q �-y>�Kg��7n~z���<(��������i}=ݪ[��N4��-4$���1ű%Z��)���M�~����˔�
�}D���ը2��˔���P}�L]Dy�
�h�K6���RqM�{��3��������|ޮ���vu>��9���ņ"W�ϡn" 4��{��/���y���פOZ>�������u&���'�NmD� B��t�Q�Z��Hz� B��L�)�t����� %�G(_�;Ig�ڎ������rP���uH�F/�7
�_�t��~e���D�O}�w��|DDy�0������R�.n�����dO�������C��Y)�
1Uo��Q�gf�f��v}��l�D��-�ǉˍ!�K�uۄ�Q� `�n��51Ç6d�(�0Ό,?Ġ/�pg��흡����o��}KD      7   �  x��ZK��:[���F�G?/��.������Ol˄�p��(0��U�ݖ��,�Y��hT{����G��*���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$����!��K���mV�G<74�-�x
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
a��*r��ag��g LNA�=aW�q��90�G�����$ů՘}�X]��:� 6X�b�4dZ[�^�O0�*� �  Ծ��!����	��Մ�0�̩�T�̎]D>jSU�&[�.0~E�a�7/G+Uud��tC���wa��3XBu��r�&������Bu�°{-9ú�)�f`�-N�M����êm�U\��
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
��^&�(�����WAu�.5㍑ݩ�!����q��&��c��2/��S@�/�y3H�f��FP]�",��1`�5S�U�~��.X�I�J8W�X��:d��EĔ�zyE,�����v���ǁ}b�^m��E�������.����UPs-D��tw&vyljR,�:��F�yᴚϕ�����MUvȻW:��7a&R|l����b�'�+f����b��W�8�}�8��)>)�V��񎁆v
/���g ��2'O�ݬX]�4Xh��D�hP FA.��f�7�.y�~��-�\yg}��E�x_$.}/
=$~�&5C�9!>�j3L�.��GQF��:Q8JK��(g3�M�0J���'0�_�3!�i):�b�FBb�b�7���u¢�Tw�Q\�!#�0�B���竉�;�M�Ϩs�}�'}u������b[pW�*&T,���l��.��ZBu����X�F,�`V���!V繶�s�QZow��..����c�*����J��E�$�)�֯�Ɨ�X����2�d�^�N�����j���o��c�Aq��Ecr�F?�����awu����m�ϭ����3���.?��.�X���z����雪?X��bu�j��敓|3�5E�.X�ò�_�zG��٘�V�����^K��8E�.X��j�ꪕ��2�f�vs�7�� �Q&��顺`7�QySKѦ��3��}u�]��|s�%����ך�3P\����*�|��~uin���Wuu�V�-�*����7{����Wq���1L�vYV�5�T}�F*�Ow���fꓺ`Ij�*�h�t;̻�P{Tf�Ee�%�X��0�XI����[q����
.��rWiY�ٗ�YKլ����C�x0����(��+�������f�b��G��*n-R�K�&g�*����Y���`���'���+��DjA0Ymh*�Ӫ�Y83~��Xldv�P3�.X��ȇ4��7�y���fꓺ`��!l{ ����T�5}�.X��r�4�X�����1�����+����YȲ1�o��WX�ݥ&�w�D�I]��A� �����7�q�d3��O��[ͨ��l�{Z~y �of�	kӃ��`�W�����P ��Ѫ6<:�;���&ߨY^�,cU5c�:�D�`���>�3�+��t�`u�ҥ��)
i���A$=U�P\�ѥad�����_��]�܁�2rVV]�ѥad�O����Ʉ��#��V]�٥_��ڣC��S�zS�Vu��]:9���'OwX��^�6ݺ1|�.���a�;�!�}z\�rC����(�NFw�QK�:���[e�FmP]�zS�$�	���s�3RL��$�oǴ��뭛F�T5��[��l[J���{5dչJ��['��gXq�{���{�|3�S�E��`�u���o+θ$�X���`��{�|����sR,\�Q`�3�T,���n)j������e}��A\�y�����&9����Oarc�K����X]�Z�������o�\$s��ް��XcAƱ`��*΄X]�1� ����Lwh�.X�Y+n���Ҵ!�jV��6�WH�hir�bQ��qb���]U�8����+�k�y`u��t܌K�\3��I]�0fApM�^�=X�G&�M��ꂥCY�-�,%�����.�.X>��8^���r¯Q�gJB(TN��*�O���@�([I�;���?�}���_�V����},�'P�Žs���`�!��]k��X�i��{<�b��t�����x�-�}[�E]�����n���g������~��Sc9�      ;   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      =   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      ?      x��}[s�6��3�W��9��,���J�Ďc�%%�=�v��M�i�m�"G���[ ��1�5c�R��-|Z��baAf,��X��Mq8�%;l�e������!ߧ���:/W�|�f��k�`"M��Ծ�,�W2�J���/�UNg�H-�b��ݱ#����R���WWZ_)���߃�^�?l��Uj��L��q�������?�������bכ|�`��r�] 8����)_n��p)`�?������W��W�^I�(�B��R��oܚ�W�J�+af\_��J�D��͙Q��O����'<�l�X��~N�"�R�'Ԥ�J�O��+�θ���61iw�ƨ1���I��Ǣ�䘫|��ٚ�k��(=���a��WR])�8���8�Sd�pZ-�b�`���������;b`2�)�]�J��N��Ap}j�fܦ��v�5gߕ��`;zh��|h��У,�3�^	�%M�Q}TAj��F�՝a	'F����Q���"�Ld�����_�.���*8p�X�Ł�J�+�>56�М�̲���]2��t�X@�z���P��b�]����f�r�2!��VU`�W�Wܑ*���Y���)S�8a$2���$�?\�\zþ���/o���?���"�9kl�	�$|6�o�-�/������;�n�o�˂}��|_l�����?���P�gF�$�*e-Ժ6�P�(j7	�c
�pgaO�%}�~e�u~�@�=�C[?*!̬Spj�y�Fq	���~�w�rž[���L���E~���xH�*�fV8��͓�F����`���2��\��b�n��}y*�b��Xm��}�cM������ٚ7*T�dʂ�ܐL�n�z����5������]�����o?�d��o�OE�8�������9�:��� E;IUY�>ϛ�S�)�o�~�>�G��×}�\C����� 2.�F�LZ�FEANQ�:@)�nI�¿��W��vC��P�u��o۞�s h�Ur
D+c��*!��%��C2���js,ٯ�j�{���c�V[�R�*��t��:�VOB�BM�]��_�㒽+6��_�&�l^�֏b�7PD��N�z	3�����G�Jwz����[mpFZ+�M�pQ?E�K�Z��7?na����Z�xg�n�z���r��;�PFLU�n������я����_�`���m�����>_?���r�q�Ҥ���"]T~�$��Cp�o��bY�-�,*��B1����h�%��i �"�&��L9�~x��/�~�f?�����O׳ٛ���_~��lu���u�����l�ʌ��g��
�NG�Ǐ�]��}�&���[v?����f^�Њ�3�]���&�.*ۓB3)1�`	@�.�G�t`����E�yu��{��)�^x�H3��lĸ�O�q�������G����nO�lq�s��z���i�&Mq��l�\�j؛�zW��9�}����xܲ�,ﷇ|�Ԩ"���!���E8}�G�1�)>������������f�3k��r���2�����$�BCI�)#����P���ǯ�C�[>�6L�������L��"ALN�}Pq�����a�7�bv�|��'x]�j��jڝ��@aN��"�q���?����!_������ۮy���0\Q�t�(s�$�0�#��^0��ѫ����kO��֘NH|L��*�JN�q]���5{�Ͼ?!�e���X����c1_BW>�g?� ��@f'	ՋD`�h4�-D|;����9�d�o맻������R�&�B^"�pP��A�^�����st� }Un��E�����$O&�&-g��B*�q�z�ݹٯPlOo$�c�c��ڌO##3I�`�<F���>�y�^}8�Xw�-�O�r��Rm��d�M�:%')2xIܱ�ˇ��>���i���+��a�|X�6�٤�h���N2�H
Nұ8٧�"_���hG�Z�,�VMZ�/�m��׿����ן؏׿���!�Q�@��_�,f����x����i����Ӂdя����'ey'��s�ʹ4ATD���]�)��|��S^�XCz�c�����+yC4����
0��S�g��kor˶ww�񄬅�+�DO�Em���M
���&_W�*�2���p"���4TQ���	O@!�����p�߮����ꉛN�B��������p�E�D��<��c���1��TW'C�[m�|��� `�����!����o�����������e/:�p����
����û�?��}�n�����k�oD��,WX������m��OԺM1nRć�(̾/�-��r�ǫ�,��/��|K�A�H����4��EC��������_��n����/��z,��\�����X�}�j����"ب�˦�=�V��W�>�]��>gQV��3K�̋;��2B>m�):�j�ScR&��S���-N)�|��<�0,�Mٚn�fi:�>먀�I�!.:ʑ�ן��n��{U�(AN�$_�7�RA3�Gw<uٴ-�-"��w���7��e��~���|	�vw�\//�vZp�ͤHۂ���׷��߾�}`7o|�����|Y��:B�µ�#����I��L�5כӞ܊U��Ӟx R�.�zZ���f�U�� h����XcZ7G��v_�"W_^��qAB���AU*�1/jj̤�O�
�z;yIى�yy�:���!�F.x�����	��ݞ�Eq��Ҧ2��p��u�y=/]�v�@�+n��Q�{L��ښ�=͗�1��D�CB����r_ �jE2����A��a9��I�_"��:c�_�#�!�#`���^�4��:^��FO+"x���u��oN_s�c�-���I�K�G}�&��ї�QKJH�^�(]&��|�����������'�z��̄��i�[(����75�#0�c�<*�����D��"���f�m�UQϑ�y8?�~\V������Oז�
�M#�Q�>�
���{�;<����9�
�D�f��F����
(�h���^����>kh�:�������J^$���t��l�PHp�ற/�۞����I*ڵ�&�v@_bs�"6�t��e�>�+֛���������Y1m-�Ķ"e�(|y��SY�].v����b�hDE��N���E&�?|Be�Pa[o�=]�Y�/W��rbP��"�������H��9�{���w�jVb�MB�{�P0�8owl�����l.�s����Ӫ84Z�r|�v=�����$��L:ڕ#&~�M~je��b>��@g�L�	�H�H���@o������rS�2��S#�$ŧ�R�'���7�cU�y�)�͏3v ��e����t�����` ��O�'_�O��9嗿�Z�+::��m�6��;�� ��|��i'��S�5x���ڋ�!��jj�ǋD���o*�����v�4p/f �l���Q�!�C�IFk�|`�3-5�m�`��%�z���� �+�JY5-~��ǃp����Ot�&?�u������_��;�C@�)7qW+j��$��Rh�X> J�T�%�������P1\��M:b!�(X��	뼖�����a}�'&,���?5'vҦ�`�ϼ�}鱪H�#�0MA�;���`ޛ���&§����.���Ы��Ӵ8�%JG�6�����Ӟ��z#��ot|��j�3>���E�F�>���?����_>���|�����-��ʻ�v�zS���*/7�cy<�8k�i&y\/1���M��8����ӱ�,��+=��':s٭�H��r��6���goI��O��6�]yY�	��JN�T�Z�i�mQ9q�� ��[
�Ko�ȩޭ^��v��D�NJ1m'�%�1u�(N��#�,Z�C�X�ʽm����?���"��O��˲�zV��;m�*0�Լ���iy��D��!�1j�'�.�,��O+J�`���Bi.��#�Ր�*�W�%���� ͬe7���c}����]����mo%3N���82���L�0�5�,�Z�|X���/_���a�G\���?%Č۫�_�"1Y׃�F��:��C�>ퟎO�#��n�
&챤�o��    �9�S�	[Y�О/�J����CR� ��h؏:���~���� JAY�p�v[]i�����ƑI �t�X>�t�������=w�u��4�åt���~Eg����]�?�*�wIf��=Qzm"ycҸ�" H<I)0����~Ũ(�zQ���u�5�}	�0��3����$6Lw�g*�E�����#>��rw�;�+���O�d^i�pB5��Q���r:ֻ��Cl���Rtij�2c�h�@)�2��#��Y��۔ű�I�Щ7��ό��R=\��c�B1��"�d���RY�@����R��L�
i ����V�e������T��!��n_5���L��tH�2����Y�9��d_[��j�[n��C/x�\鑽P �HTe�Ӂ�Q|�.��m0JW�Z]@�;-�b��O�������t�M;Kz�;�>Km���m�@~�wgT��rx��f�E�����*��MQ%\|/-���~���C�m���?t5�a��J�V����
BWE&ǖG�M>\��v��9�ޚ����ϒ��s��������,���j��o�!�?,��㶷w�xF�����IuJ�`F�eH��g�7���g".�e��h��?���e�ūT��J�O"z�Oc�4�h��������^��W<M��ˠ
�u��;gԥ��X�7beߩS�?�������+Lue�X��r�ط�K�pߨP��Rd�a�j��mI2F�2�"$&�T<��]��-W5}1�@����� =����$ݕ�?�pE�Ĥ2Q�=�� ��сi���r`��'�ޫ�J�e
Xw?�3)��	���c��R�3�]��q���Q�q~������Pٕ�9ZT�Z���J�Pc�
ǌ�c��r�{,6ա�9o�B�B�F�e^�i��lw��Pc�����f�1��e�SY���c��ȧ0Y_P�Ԉ��?��E��|lW�Q���v{�*:6�����RϊW�
$upjEO,�
Wx�hKJF�fc7�=��jͲ�O��T��Y�k���Y��W�7H��._A�NU�R6	��3ߔz�|gm~<�h|� ,�^R�9ZS}�"��g����ł�{+���u;| ��
�i�=uϡ4>��W��J쀝�W�'��!5��-S���b��c��塺��걝���E�K�\*C~�l8D�1ن���囯�)�vW=�9�Ɠ=�+^T�s�Q�Pc.M���Ț*��J�톱�?����1'�{J�[�7�3�DfC� SCdJ�v�Ʀe��~�C�.�2+��c~w7���E:Ɋ�t���h�R��VT�| !��&l�-L��:\��i����,�TiY\�3�i��}jL4"����l	i4ŏ�i���K�\���C�Y'���<�Wox�I�U,u��j$�Z����Q�e��d��~x��y��c��l��k�F�jE���v���D��֏���Q�9�(�w�`w�������dp&(t9�*�L�j�ے1B��B	h���v�*/��.�̤��pL������4I/;B�cS�&؛�U�����-��c�'Vg;�>�8�C'|��ɐr�d���1j�jA[����X�&;����k�|�xl/��:�Y"�p�SAb����Ѓ_�����xQy͉O��>� 5�
>��#UH��hg�Z���^��:W�88�{Ɩ�����3�>��$����z�x���:�fN��N��9�sP-�ü������W����
1O�k�����s7a84]�.,��`��I��b��q�vs�jT^-�{�Va��Ot�4p1�I�ZYJ`�x�Yc��O�,e����Z�t����[��1��*����z�y�k(Z��1z*��N��2��i��4���JN��:H��8�|�R?W&:���&��Iv��ǐ�9�~n!]����E�16��n8Y*���S�?���3'�m��p�즢8c��z@I[]�6����zӂ9��ɾ/�w��f>����'
�ߒ���@��(�2铛��ų����V)x"j4R�2���-����>5�z���r������г^���}�*峄
�'��W��j�J�����[��ȿ�v��V��\q�O�MC4�0��-�~A�����*���!p��9��:�PVGu�:����t��r+�}]w>�2�ա��d˼���������҅�������j���5���R��|�j~����Vf�q����s��0�N�s5aj��l�-o�E���:����H��kH����mO����e_����y6���ގca��XW"L��¢�|T��P��P������d�ʇ�1p�3+�.[��/v�S�p��Տ���^�a	dB9�iςUM����2%��糡�1�����ξ�h[/_a�)�:��|J���	l\0aݧ��g1�\V�ڠ:sjt@D1ʫ�T�1����&���[���X,�n|K�*	�p+C�nH�b����N��2��Y+�v�e�~n��%8�Q=�B�a�ӕm�a�2s}��F��Z�l�{�����nL$�h�������QpU ֯��3�����羘�sl:B��0�Mɰ�?��H�ź�^��+-4e��"�ltS��dWJV�fxo�j9e���7!
�G(q�̿����˱�y:o�\�K�ٛC0E|�_�=5����}DT�G��c�$--������QT���!T]5��
�y�̛���>F�₴j3��w�?��P��JڛV��yh�zH�b�j��}}\�dN+��WO\���9��i$��|�~������1jL���u�q}#�|i�6	lM א��a�0�����H��BQjC�W�ǗN��2�ld;�<6A�)=�ƐYD0�� J�����ف��uw5��di]f��a�����keF��F���L����tq�G�Q���:X�����]��^¦���!�H*����*���fy��̷����P�`٧��ׂr��{vK�nls�g��E�>�v��o|�J�rI/e���ه>�����~?�r3�"l�d��Ӎ_>�m���9v_l	��X��+��i�P1��pVgh�w���ܴY��^�0|��s6~����� <�����s����1Rg-mpx07��9	����Q��5j�!Y�F�Ju����̄o*�Sc��{.\���j�i��?ڻ^c������X�/��S���U�-�O�\�Ԛ� 1T�=f���4�dk�*"L�����cy��Mw��ωc����84�W��k�05�ʪA��v��$t�H���u)�JC��8: ��/ä[
�1��uhN�1<z �Aj�.@�I
���C��SJ�v��82��y�j��qd�V�����_�>d������NG�6|Ϧ�/XRX�b񥉐.n;)yDW�
"�1u��`f�-���L3r�4p;��8�`.��S���@��hLUe��x_'�����;_B�UV��rȏ���;j�$�Fq�����?�aj\K'�Ӟ��/�o��z�^���8TjL�Tg6�r��Ʊ�*8W��\����+N�h�R�����ۄ�qP�N�z��X+���(5e�Jy�Ɗj�̟o����n�05��w�ɿ�M����֕I:̂�*�^�oJUU<��Dv��Qj��.�����������?������Et/N���Aǹ��?��xt���u�|�a�f\�ygh���86([�V�ر�S�7�2{��(�5 �aA�f��<~=�2����
A����p��Շ�
�HC���8((�LUW$��E� ��ם�Ra��P����S*Yi�֧ƱA�f�}*ט�۔�^ئ���QV���Al�����8��vu*�;��]���*��5d�~�W�� �>-�R�����OG6/�O��=EpF*��Q5�tj�8Ĥ!5��Ǧ��ITxs ��^J�m���!L����[��sQ�o�+N�Y�#l�h\�T���(�G��Q�eL�P�����,�K����>�ï���T@�gc�8:�t���c�6> ���P�����n�%Z� �!5���\�8��Qޤ{�J�E    U�*�����8*�$����C�g�6f���S7l`��/������M��d���zs�ZΪ�����#�Zc&�={)YW����6���ģ�8��,�^�=�R[�|���q�X���>XCxa��o�R���7L]�|�Ҍ�~�s����J�G��5��d�U���Qj\���:�7l������Iu>��׸���ĸ�ޅ>J�C�������F'�\R�2<B�S�K�P���_�n_B��[�U����,�ԟA���'����V��δ������S{6��6�y��W���֘
�ft���4k�3�g�]ό�;8���<�� %����To!�a�t���m;S-�}`yz>5���ե���xr�%!DwM7�\]���C<3H݆���
�J^59޴[7�7z�cRLy��!�2��3�T�C��84,W��hݭ5�S�p�m9�lb�eԛb��^u3�U�}�q�etM��m�����qp�NM���!p��5�������88�99ؚj�i >�u�Q�ϩ���q�i�jDPCV%x��ր�ޥ���5���� ݘ,Ȁ,��.c��{7��֧��A�}�n_~%�|A��z��݅'�yL��%���e�h��ݨ�0��)��t��3՟��񑗽�sm�W�Ԁ���r�%��߻)��<������6m7���u}
�U<���z,�n{�Qj�ǰ!�z���Uu�k���)�ZR
�@=xV���X���R�ਛ��Uv�곟��h�>?�1�Z���K���)XI���:L�3������y^�A��H�6bNV@t�}��qx��j`I��� _�i��)��,��O���Ԫ�1i�x�
� :V� 7�� ��qxP"j`N.�֎�qk��EԂD4c��S��fZ��˟�\�U��0+H�Ã1V�#�mxz�O�:�<��H������
��tx��0/|��ex�+��^�������!G�������s9�iAj�Lڏo�|_m����<�pO�Z��~p
>�;Yaj,�*d:n6�6�[��_y��dnPO�ơ�V聲[n�!*5��5�B�Q;�_hajL԰?�����t@$�J��'T���S㨠y�Msw�0��wj��7��V%<�R��w�x^��E'�w���j-L���څ�x�w����j;�$�ftT;���<��C���B�9�F�Y�o(�7���8qo�9�_X3���ՙ;C�,�HB������6���tN�i�L��3FKx��� 5�քs<� ���V������ -�
��y����PQ����S���(�;pU�V5d�x H�����U!3�������&��\���� 5>�_b5�h���~�����մ�D�Gf����������"Ƈ�It|,�?�aE�t�������F֡Ł�:�ᝌ����~��Xa��S��`
]P�Y��ơ�1*ݪ7�S���ӭ�AhzMG�U��9�Ԝ��aj�M�ٻ��)������<�>9�F��wJ��05���
����r�)V�cq8�lM_��h':lh��5E�i��'B��R�aH�8�{d�ckq�{��\���3�[p�>3'�S��?��:����{���Ԗ�Ŷ䢌���E&��y�3����8,Xrk�K>�K��z�΃�����]o~�?�N�\�o���ӪIZ��P*�T�yZ�V}���5t��o��m��:V�Ge��O�u���R�p����}�n����ǯ;�0a�Mf��}�8�����E�Ըj������E�z�9���Y�@m�GWF�Q`KK]d��z޿�t=�j�jS/���zV'�|S�Dɬ0H���P*:�2_��Ds�M{?Jh������־'���	�0��z�ay�\�S?w�µoY�F�&#�N�(WK�֧�I����@�
�:{Y�z�H��"У�W�r���,��:�u6�Ȫ�D��T"x_s��q|�:[�y՝=��{�l���6G?���l��T�&k؇rh՜>��޾g6aJ��obM_4��8(�&��%��9f�;�h�p��(���R�� ��Q��r��3����<4��i�Y�_h���<�>+,M�Gi�*��D�@�{��(5���r�~�
�k���R��[q����M����HV���p�� ��9�ue$���$5���m��HF�� 5��I��V���udԹwc�}�����P�s� �[���M:X�Aj���� ��#;E�j)1�Aj"�Mc�_wU?������ø��q|����7���)���A񩪮���Ǆk6|3vY׾�f�7���_���ޝ�RT$�RL{�@J��)}�����j���z�Cv�㥛����f�kGBm��e���w��VuÞ�w�u�}�v|Ԓ�N����Ҕ�^Y���)!�,0�?�n�̽��Q cS�]��'m��%�n��(5n@�;*����U����@o��t�η̖A��]��=l��,�mH�bSX�X�U�Ӭ��`Vվ�ZWW���CחeR�#m�z����0��O+SVL��XG3|��߬OW�yu�-�A[�A*��{����|%�%��W��Z����V�٥��,�����M�e�h�'_���d��N��Si�	ueTMגj�B&|`������뛚�+?.g��-1���w%�wBS��.��@-H���nا�i�9������1ŵ��<����/��g�;���I&��*'��}�����ܿ�7����U\�bEDR5ؠ�ǲ\��y����RέK���3=@�ջD�!b|�!��7��@�7ڶ�j���5w��W9J��2��i��X������jqi>/\'HJ<bG���OuUw�˞	�-j���]�8�G������_�Y�ۋ��bpp'�_fw�����)�����6)�?��u��Ŗ!E>��9d�)ߘ�5��<���¨s,̕NGnhFֺ�v�9H��?8�S���0t+��z�q%+g2|�e���D�Aj�c�i�{0���mu{�<��������_ʝ_c�7f���'��)".�g˃��<�xN���89��� L�#Bd���n1Q���4i�}����&|%	�lj^�ԁ`�B��8.�}��.�x�U�ɟ��"�:�]Ajl�L��
�J�yEWy���!R��8t����
�?E;f��p#e���Л�5��Raj��;k���4�Ʋ+�Ȋn�A��գ�q��Kd�j3��J:y��<J�����q`��R��~��vڭ&�F�iT"���(��ݡ05�ZU�06�Ɵæi�F�߆�86�"�F�� �F�W��_5�{���A�#T�S?m�\t��u�������~i�!5����Gv>��Ot�՟.�*��t�91�קF�)�*\�����Ooo�~}�]�t��wן�c�)Ȗ7������N�.���t������?�r;cڱ�18�������P"t�]`��z�ǆ��$�ɏ�|Q;�j���s�@ϼS�n�����Q���v>S��X�ռ-�������z��؜L��<u�7���4�}w��ۛ����ُן�\�
��PׇU�-)'�
1ӔJ�c�xF?��FA�Ր�a?]����'`}�������_�|����L�����}	�3�T��߀3so�[	'P��wp�,�T�B��F�g�e��o����a9��]��u��Q����sv���v �H]��F[�x�FI7��QFN�q&K�Oۯ�J'?.�o�+=���^Z�с�IJq��S���OX����d���O��a~��^���u�G����}1�10(��:L��@5������!_�>�����}��L��`F�0��I��L!؇�i�L��;�8.O�|M����b��nI�8�F���&o���X(,�|��������f�7��L�g{wW΋׋u?�L֋T�+k0L�$��$o�:�a�/آ�7I�{]z���CP��̍�x��3m��������l���b���_�i�×�k�Ҟ^�9HcG%d��=L����f�̾[�h�ѕ�ܯ�S���_�p����⤘�A� �  �i.v昂��{YI�ꦠ�I��{���cZ��Lu��g�JI_o(�{���vN���Qu]1kɠL�e;E��Z��!��X͟f��m�Zn�==�^�ݶ���D�6ܺa�$*-��=� Y��ݞ�b�ÍX
v8�T��/���O���H���}�T.F%f�����K:y�����~���������i�Nc��
ʤ�G)�<j�|s���?~��i6c߽�~��펚t?��km���W�Pú ���=i���e������ͻ�߯�����|~�����]~,�;ߙ�5����"BȄ�fRV�E��M�r�(��>�'���z��t��w[����#Ȣs�M�s�0:5P����·�œO���t�I����
F�����"I}&��t��� z��]�Z�\>2?�eO:�/�ft�k�iGrh�y�)k��SeS>�@��Dݫ���>��8F��eS����Q�/w�*k�g�>�>�ϻ05���a״�[�:��TY�:.zФt��X���oA��84hM�B���sy8��+���ZN��H��v� 2M�`FZsи(�)��RCxaS~�j�;�|=,�[e=��pP������� 1�ɤL�u"!�T�s����z~�<ׅ���,~Zu���F�g[���6���]�5��Eu[��ů7��yhL��\�$�A$��
�﵅�u���fΝ�x�u�&�U_噺���(5�J��_�jN׹eс���6[��/.v���1k�a�W0����"�u��4���F�ZH5Z�O����sY;k}�j(N�A��%�����Ŀ�e���;��v�BR�n]�c|��5U�0PSew)���=�٧��qS�U,�W���Rt�����n�[���+��AoJh�E���vڔ�J�_K��|~����nw��>��||����i�b�bg�CL��6�ç���?-p}Q�u��=$�	�`ڬG��5�/���3�C������bn:�
�{xf�U��ef�I݈����N���tJ"uj��ͪ�"��L��y�E�J0ct�W����v���R�F�<���T����tkF�qP���m��	=l�?��N�n���б�\�ӌ����no�Qj\'�:�Ew��E��r����*�\��8�$��Ei�E���j �sHŏ�+[�;�B|���ւK|��n8#|A����V5%J�o��~k3+����/���� o��8ou�c����)�~�m��Ri@K��+HmR]�(M�e��e�_��ΟL���`D1^�F��[�A��Z�pa>�t�� ��/��@r;��=�5�Gg���1O�.ݻ��Ğw}�:�W�oA�ay(���j�<�/��3��|:�/<O?��Z��/����b���Y�/��N"ި��"�����-zt�������	_���m����^�]Lj�e�1�͒S�^~*���6�o�^w݅1KU�.�XA"��R�l�������ר�������Ǝ����D��@��Ը�,��V^�W�WWϪ&��t���S�lB����|Ul�O�Sx�^v�D����1.eu�r�ʣ[�4J��ʨ��f�<����%�q�O�"�Z�FQ��HS'͹��f��b�������&dȾ���:KT���,X��eR�2V�T��x쪚�l��*��h3��:��{ߌR�F����}��==v��|�aK]`S�|E�j�[}_7҃6�%��DGu|Y��4�Ԫ!.tJ���CpV������ϊ^w~G�Z�#��C�k�!5�Z�x���o�����������ZS�2A'$Gp���ajY7�]������PR��N��9L�C��@ ��$L��W�Vt�*�GVT��ϟ�Q��2nk�N���l����o`u�!yR�x��!�-<��G=��,'�	Cj9䯅G���	x��fUȱR�x�;A�K��"E�x8�sԟl�|����8$8C��`��� u3�������ͯ!sH�C���lP�l�
�p+�zl�+Fe��=�Ƒ�λ�j
?����B��Ð��8$XmX����A�ݒ��PJ��J�)G�;��}��}�\R]��̖o�g/���=є���`rȵ�%�In���^n���
��0s��K} A �D��o |:��O'���o�V^����I�����둲      A      x������ � �      C      x��]K�与\NQ�����x'��;A���AE*C Ȉ�)���<(�	���Q�>��)��;��(�"�|q<r/��+�=J��<�����`<�>���Ӵ�N�W�/�_����%n�Z<���W�G��M(q���/3tY�#����Q��m��<������{�	%���yP���+c��	%I���_1`&�R:Z���CI�E��;^^ow�J��w6L%}�p��]"��ȣ�Gr��WlG)�'��$������0���P&y(I}��MR��b>J�t�$�ѳ%��W̪�Ghv�]��?��D�n�(�ζ�R	�^�]�����ʻ�(���u"5�x�9��y(���ͼ6�b>��7ǃ9Y&��A1zT�e�l��R�8>J���2�`Ĳ�R8�Y%�(1d��;Q�%�fґ�u .JE�H�1X�����}�HA}��|�2y$%���Ӵa!!O��C�ˣ���&RQO�y(]�qRdU�%,�vDa��=���)yLX���"��0M(��/�M��m��~�s�_����\���t5�}�i[�7�x�X�	%Uv��=�ŋƂZ�@Ra�0��a�sVGhW�%(;�8O/��ӎ��%wLΠ =�f��(�0M(A�1�S�e.���E	�V���9����x�8=����eҩa�}���tQ�p+����
Oψ=&x(!�������jJ���NO硄 {��ķw�j��՚k*�~�6�����e�s(5]�abj*a��)G�n�<�4�I�2�4��/9&�	�d�
�Y(���!f�-Pj��d��0#t�X�Ө<�����(f��R����R���v�]�:]�+��9HN�N(u<\�*����\��\��Fv�`�����}��PB��n/�1Ə=���C5��1�<O�F�#b��	�(!�<��4ƺ��Ө\��2�O�iԅ���G���b^<�}K?m1�U��	%z�/��� ����R����c�)螝��[�4�gI���c�x�4����c.L��@I��(ţ�nG��ʂ4B(������'��4��R9�[��m�.R� >�A��I�n����aq�Ɩ�C��9*�eJ�L�!&F\��b,�g�ɘ�
&����$�#5�jm�'%5c�tF%
�=7�䡤�f,�0�8�ܤ2��]�4ش~�iL
�<l�<�(i�GU�_�4����jqQ�X3���6�cNM>�@Ic�X�].�1��B\P�4ڌ���%ᗱ���碤�f�V�O[ѐ��]..
&���y��TǤ���<�F�j���6j����%� i�kuFu�ca�ϻD%7c�D���{vKpQ�p3��>���W�]�.J#�la��0>���ޫ�PPA�m��L���IN
&h�%�tV�W0�4���Ei��-[���`��2�V(� �f}�Ӷ�2ۧsQ0A���L��s�&@-P0A���3c�3�/i<��mL+Ly�y:ت��Q���Q�arQ��������_My}���9��ө�X��,$ ��CA���Qa�'uA\ġ�PPA�=����}{Z��0M(�D��y{�m��~�k�LT��2��J��hu�`��5NU�͟u�OB�P�Y�__qD�Q��<T�S���r4C�%�2�(i��I�T3蒬�\�"�E�L廲Sak'�E�a����#L�6�l�ν\�BIS��G�4)�~H�Մ���)�6���
���g2(i�B�՟�?\�?ݬP��3�!�(����05���%H�-��,����P�����Q0!2��0�(�x!q�&Ly��C�A�Э��FI3���4��j�CdA���,�X�Hw�̸L�䡤�p��0őz!T���/�EIᔬN۬� �R�p.
&<��}''c��ׯ�kLxj>���#���k�47O�[�Q�-�57�䡤�y��ܨ�xK�WFD2�EI���L5>����`g�EI��۞K�,5߫ck�4;O��TE�T.�;J��'��\�6����v%�ϓn|U���KePPA��j!�-$h���^,���	J�<�M�4���0M(i� q�	~.�:6H���ӄ��V7͠��6 ��qҧ��VϢƺIʑۤ%M�Ϣ��/�l�O��CI��ĳ�Ncu"G6>o�����gQ�g�/;ʤO%M���xT��d�G�ς��~�J�K4>�E�D�4�}�]U�U��:�[��FI����&�
�(_�YU�(� P-�6�
/;w�Ov��(���dr�iT��j}��}@�.�1?��`b�����(iHu��ʇL̾>$-h$�����Q��{�%-h�|�1�!X�⢤��Z)}��� G�ɠ���T�e:��-� ^�LJZ�H%;L�W���f7Q%�g$u�����z%�g�R��p�"(�vQ�z�?���}e*�JF=m
�\����d�.�L}���36L9��tGI�&�����3vLH-�'%-g,��&)E&O�`�[&x�4��C���LH�B=Z��dP�
ˆIӝ<�%��,�ʨ]�Ř�(i�eǄ���*0(����D�bs�Z��W�}������3O��8�^�CI�>�M>�ۖ���_�%���6��a�_I�(��`�ol�F��D�[�f�CI�G�ٴ1��m-@d3͓��V�R�}�f��md��V�rHvG�#�M�!M��P0	��ˤ�����`*`�f|Ա��J��顤��?m���(Ӑ������o����{=�����7���»��cz(i1+�{<�G��5N���]�LL�2����0���JZ˦X��Q��H��0�(��#�h�����'Jl��CIKl9%�i�3QM^�@�]&���� �N��ز)]���`��(i�-'��3�+Ƚ�k���ز)D]�]�n��5JZb�9�LiDGE�.]L�e��ܰ�8�}�ɠ`�.s��X[��<�
&�2O(O�yR(.�A�]�I��w��-Fo�&�������<	��ӄ�	
Ϟ
��	<�'�
ϓ(��I0mGk��8�y��mŪ2-:%-�f�4P�+�H��<�,2Oo��~a쯓o�P�2k��͝=}#��<��CI����7ן���k�	w@�@�bg���i�����ks�o.����GW�~�EIk��X?p���P+�>����js�.��Gr�i�sQ�Jm.���\��K�nB���V��i����.:%-��j=�Ӗ��X�,=�CK2�7?�Vaq���EI˴�N8m�Y@��n i�6k���E#��:p%���*��+f�ޜ���h��޻T��&颤5�\M��4�B���Y��5�\ے*�#ϯ�CI�����m q,�������PJ�yO����4M�w7�BI˽��">m�h�j��4��uՌ�LL�Ќ�.���
%��{�xي��U\&��	B���j۞_�c;�=�^������.��H=���rQҪq�C;*;�.JZ6�z(�oPA��㳣���EA�k�ώ�N���V��
�TP�
�Pm��)읹�A�끀Q�2];1�����PA�}��ɹ�(iE;���?����^���
*(��^�K�gs@��a��b]��RB��a��"��(}��K�5��ַ^�gOF����?�bP�Q��+�g�]8�Q�ݔ]TTo��)U�^�۩������?$���^�u�`��Ԅ��^�SA�q���u0�w��s�+�n�Չ��r�{�L�ǽ���W]��Z*�Wz�:�z9B�J��
J�o���U?�B�h�S*�=�Q��T�8�Q�~	^k��7j��
jOoԾ��W�zB(�i��-����Zo��|����N{�L�����v1_�:	����?����^�m�~2x�B��Z��*#��z����8[F(�y��������z�.��+M?�q~�����E��7j�FW�~���F�RA��Cߊ���j����7�� ���iߧ\WΕ1��j�.�1�=��TP;�=C߾��C&GU��jM�C�*�8���k��
*�D��F�����P��,i��v��t�x-����#���R㵞^P�p�\�����5�p+\�c�ۙ�Z#������q����xxWA�F����&�,ծ*� �  �k/����<dW��zw�I?��.'���
ƴ�j��"�5J����F����y@�,o�§��*���OFU���p�`Lu?������A���<�꼈0�]�����J�-�w��?Y2J����L��#�=�E�M`��Y�@/(ĉ���ٲ֑�J�L��ͨ��:���\���{��(]��O�.����p{��ϔ�1�>d���1�]�^���w�͈dW�U	n'���/�+����~�	ۥ|uqh'��>�:FUތ�S�cT��@?�_s}Smw��O%#���FW�ic�}i��MW(�1�� ���;�&��T�:Sob���򏪐��~��X�HEʛ��C�Â�~TSݏ��Hc�o�O#u���Q����V��܏w���D���d�m�+��~)�b�7[ć�:%�~�z��8��w��"\Tظ��D*;�.Jږ%�~��]6.Jڗ%ア�}�.J�P%ㆢ5�u"Ġ�6�<Ϡ�qy�Զ⢤�Y���t�����Z!�(��!l��vt�f�kW(i���m�9m�h�jS��EI����[y�
��2}�vQ0APb�N�8��F�/�N�����eɽO��#�q�A�3-PҶ,�L�R�b+�l���-K�'La�7�ȸ�.l¼Jږ%��j{^\.���NLJږ%�3�O���䩡c���e�t�4�-�z��͙�Jږ%�~V���6�xH�3]YR�
����L[(iS���x^Z�F�y��<��'K��Lqt��z�6=����dI��ԾOB�#&gL3Jڑ%e��8�s޾inX��YR����R�5�Lx�@I;��X=�s��qb�l���%Kl~���Ӹ[)��(%mɒ{���6�C�haz<%�ȒjE~ڞ�L�.a%m�v�����x��~���cI�"?m��b�Ҽy�P�v,�V�Oۨ���t�,P�n,�V�O�6�כ7OJڌ%Պ���`�F�@I��N�<m�vf��J�?%����e=3���@��)i�.�U�F$y�6���S�<]ʸiD�zj�P��)i�.��DZ�]uJ�9%���8����Eo�'��uJ��K�����,H�9%��Ry^2��{� i۔��]Ƨ���>�ٞPҮ)��.��	���	%m��>i2���־���y(iϔ�I��Xb�� K䀤S�'M��c!p��%헒>i�<�|v���䡤�R�'M��E�R� �EI���O�<��E��3�V(i����W[=�ױΧ��P�^)链�9�8.��}��<��UJ���q�z\�}��o����0��?/sq�������I�y�`�!ӻ�P��r?d���8ք�H&^���1�~���Ů��Cq�J�S�w�=m�^r�7I����3�܏+��8��HM&�@Ic��n9���<��_�l�\��/��>����P�$\v�]LL�2��m\�h�=|��9��lx��ތ7u[��=�� ��q\��4I����qk��?�/x7��      E      x���W����.|��W����B��ZHB�#�\�'� a$�������5�㛞51{2v�d�t��Ű_�;��LC������G;I��D��K����0�Պ�d���ı֨X��\�.9�2?J_<G�F?_q`:j�Qf�g��}��0=��,���8A���� �?��C�(���q����? �g��?8�� 1���ԅ�TڐK�_��?A!9�@(�M�0O���%uk.�ii/-3�������|s�0]�}ٹ��d|�*�/��q�8�̍Ό��+~�������C2�>��@]��B����!9��R�Wo�	�v<흋�^�Wx�.{���n�[_������H�m;�u���)�c��ov?|5� A��?��8�	����!8�!������/���b���FNj��矧�[q�򎹗�su!�s�Gtz�|8X���=:��%ݟ��^�\e�c^����$�y��.�+��� �1g�P�S�C�T47����\��������9\�c�]�#a�7���h���'���>�-Q�u������~�Վ0'I��� g����Ѹ���b4�׶�Oԅ(ݗ \	�1U�w� �M
9����@���A8��-�û\,�l8Z�xpޞT�>Y����=����h��sc�"@r}������h�����s��p����n�����W�!R3�i/�V��Nt��kO:�;�Ah��+�ӭ��+)���7��q����g~���ġ��}�c7x���C0�����1��j��P%ln��6Nn�J%�8P�A}zC�)�s[�Ƅ������8�{���Յ��l����!�����f����-Iq4�s��a����T9��`8[���jJ�\i
N�zP���2m�w��E�X��V�B)�}:�����{i����y���5��_P�E�Q���3z�� �� � �8
<���Z�O�D��{.>4�4�c��<��ϊ�dK�p
�(s	��6J�gc���yw����x��Xd�N��QQ�;_;џm��D:Mpy���J>˟��搠�ޢ(d	I��~���ɔC�ލ����G{���}<��OՁ�]G��9.���g�ܛa�]|�� )��h�a �
�[]�@��7�9�	�-�6�$S��� �mo6-�<�$Aw?�mDAۥ��NO�$��mg�0��B�H;nW��r4�P4IBV�g�44�4��/c��� \z"y�ڪ���_K��g_�s����E��Z��v6T�
�e�`/��V"�9�Vi鋣y�R7~q�f��l?�A�h�,�����Ԛhb�_�=ffƀ�������U��L�;���tX�]��L*�uo�� ����C�.l��8�A�2n'��s���RG��+=��i�j��冀�N1�gZ���ɲ7zfr��P�#�L,;��T9]	��BvF_�;�2��^��wH��/�eX�qħb�o���<9�Z�癶�bU^���A��.I�נ5�<��E��fntj�e��kF;3�B�f������B�H�Xrܙ
�������!��Q�K>5ο���4+jC��5�=�JA{�[�e�8� �f��[�'�c7�����1o2}	�Ɏlz�L*f�No�uE�t��翁�ݭ�A��I��X��g>M˃Z�+����\����8��&�j$/�.����K�������0j�ul
ҁ��KG�+���EQ$N�|��99,Fַ��ԆD��9a�Q�	�9��	pȏ�^�g�;��y޾�N�m�li��.i�U��=�S�<2����������4x�Z�nF��uyxP'j������=��0+���i#^G�eɒA��iBdʄ��q}n1\B&���f�����a(��D��1\v���?�q�iyPb���W���c`@t�)!�{=�$6Z'=o.��EN����o��3��xsQ���ǝ2���O��_��1���9*��㟩5�0�.͡;5H"5,9@���;�g|$�)5Q���t��&爩������і��Wypr�k�MH82%�&�_.+�(�O�$ի,AC��y�m��>��
_SϞ-��#?K�8�$�d���`b%��C9ĂE4��/���_$_�yf��Z�!\`��!��>���%��j�&*<X��i	�]i�Y��"4/�`i8k]5�I(S�
;:WiDr����p�Ƹ�σ��g��`Y��{_΋�"�����iҀ�8���<�^�4�.�4AZ9�˼��쉀�z�E��n^�A�M�wS ����ܩ�XF�d��Q#�0؂��M�Q�+�uT6�O
�{��dZ�(�����XG�0�K{F;2���NG���I�K>��f~�̄��_e���j�ڐ��9�v��ɈU#R�c��N��<y�`��3��#׋Vڜ`�s�hӛ-�S��K8s�P�q$��P�L;H�x��L�秏�ڙa�މ�JSC)��5�%�Gu)0��(m��.y\<�ܔ1ٙb���jM���z�L`����X�n2E�%�'�����G��`^�2^�R=vL3P9����p�g��°cۢ6��r�L�抟vWL���Qoɷ��CNym�����ed"�+[�s�����{�6d(�J[?�"7�ݓ���#���&�F�r�h/���7#�t�*T<��ӌX�s��/�N6����67�Q��N�|��d���!~Vc�Ԇ�'�ܝ���R3:�ܰ$�ܕ;��_��f�����֎J�#I��6+D!�[�Yc�ڪ��cd0�%�W��"�f��/|��=��Y*����j��X0���J�E'�ӛ�`�:gד0�P�]��0��!�G�p{��>��!]��*�$J>uֿ�5��y�6�����{I�qw ]�
�ڸ�>G'>�	}&��H�2C����E[tr1��J���l>�tЖ!H���XhQ�Q~.��@���?�3�۔��['ν�U1-r�$dp�g��؊ks�;���v,_���<�����Z�it�f�8P�
��Đ%���?�7�~a|������?S�@%4ܞ��`�&�>�v���>��G6fy��3��gZ�C{pa���@�#\]�^�:-a���U�X���d��0A�<=�Ԇ�)c�Lu5�g����nWwSæ��򞝹�+Oo�x:�ۘ������u��O��=�y!ҒK�2�H,��%�&�����c�~�<���*��Ӏ�;�ө](I�r�º�П�+[/�v�llb��ў��o��<��	Fy%�������Am�R5C%�|��95O�O�w��|nY��׍F+�8�2͐�SLSj���6N��
��-�vSJ�%��6������07�^�U�q��ȱ��ȴ5�;^��P6��H���6��s�K�}p��`6:���ɉ²'�NA�|nL-�~r_Ԇ���zt\F�,�-�p���������d�ö�iN��m���Өuk׶Sɰ�)��J_,N�S�y��k9x���Pz����w7�=��f1����5��ϩ�wslA�� p������pp�+퉁�M�0�$q�,�<l�Q��#��},�Ǚ������ �y�cۚ�EX�ߊ�s{"��{�r�'ljؖ��Ⱖ4��%�����x�`�����ז�q��#���;��T�c��a��E�u��L�@q�%�dՑ�ͬk�G:5�i�L�*-,��n�ò��Pg!>w���������uh�?F��}��D]��/��tt�+5����Vdis������~'��N���H�T�������tVM��v��6N��?8�N��C��P_ ��o�������b�u���C��]t��);]w{��b�<��{�Nj���LUWg� P�©.�}@ʢ����7V�O�ƨ3U�FqN���S'r�^�-�\yk�Oy+�}&�����t#I�+qu��$��|���R��(��VL����	Љ)���h�Q$ѐ�=�!A�C����:��IOIp�^FKJ2�u;M���	��T8[�ב��_&��WJ��)t�Fs<_2�8�*͠��$������@    B�s+�!*���D�n�C^j�"��o���M�y֣�iqqË	Z�!g�x��ٴ�0)�ZT	�~��S!PY�����C�K�ǜ��(�*ţU�����+;�ı��P��#wQ�yÓ�4�g��V�Ƒ���Ҧ�������MgJ�-=�W��]ACA_��V<z��	��� xTAU97��~�Sk뇩2�e�	��E5�syמ׉��0����jM�촔�6p�'�+!nR�ɂ�7�9������U�F�0T��b�;����F�e�"���=�.
`+Q"��0�}y��.�%MnL8�,L��Eh%��t?��h#����A�r�� yH4M�$#b���zBE8:n�H����zBT���?�] ޕg��Y�+{���q����y��!fZ��&6�`ҝ&�|��p�QFmr�w�Yl�<�S�߽����a������\�Q���߃��U���w.KV�餳6�+��y�3��v|#?��0�I+0v��*k�M�����x/��� �q�F�WjM��G�t���]%naK�d4 G+]REg!o���a�YPj�V����Ռ8Њr � {*�㪢�����R�i��7�_�Ϩ)�V?z�!��	H�PHf�'��	����>cJ��m�% ]k�>�yž������F�6�pS��
�F�����N?Qk��<Ui��F�h���F�W�u̸�'�����Aݙ��ycN�p�o$pR�\X�.�v�}�"9�!>ό?�Q���CCW�M9�Rkr�ߵ~5QP�mgG�`>�׭�js�=�e*5t]���4�7.[�v<���l�%��K(
��O��/�!qTY�0o�i�e!�Ӝ G�^����=G�*7n��̳.R3S����b�j[��g������NQ�Űl��翆�r6���jU�jM�R=���2��~�����%n��V�fL8�`Me�Ims<�㝘���H[�u�~1,�(�|����eM�� ְS�*�`�G�������P�d���	Q�7�؏t�rG�~`^��U���饩7g�ԣá��1�j�Ea4O��ݠ�p��3Jm�����F���nF󣥬�O�Wq�b����Ì�uȜ}�ؙ��lik�Oz�	-5��+��Y�U�4a(;�ody��d)]�(jHñ��Z�#���^"��[o1�?�[�Q��h.������X�f���;����Mħ��7�Pp�cx��^�5yn�Ș�9�[3�����C��C�=w���w=�,S�-Z��%��~���jS��˭N>S7��Ô|��B�����+�{���Y�� ���{�+G����I�!�ypl9�@Hi�v��	�Q,d�<����0x�n�ޗ-��;��Ʊ�[{פ�
W�v�ك�ٛ,�p:4��i�6�)���i!�/4��;����3k�����?W�=K�2��` �l��Ԛ��w���y|�t��zk�/؁ے��xͧB��KL�.��c���n�v��x��U
��F��Z����u?�:��2N�\X,'�b��da��Q�.���rl�����Y�zb�l�|������4Z3���jM��qO��r�0e�����t�˦���J�Ӎ6�7��L���q�٪�(BV�����/R�B�| A����Ԛ�
�Dx���ք��JY^�f�ɝ�9�A����z,Q�kʷs��W���B��)����4�I�_QM�Lu��wǽ'<���>N魖_��������31�����u�H����r188y��*o>(����i
e�>]X�Qh���M7�祉������?�M���z��s�e�q��5�X��Sc0�Bu�!.��~/�����{ f�(
jp�	���ǫ6U�M1�
A���	��c�����M�둯���>؝m��<���%SBw�[n��RF�����oO6"���.� (�D�%���=�����9�<嘗1K�#��m�ӛ��p�)���U�L�3:��L����sՃ#N�N7�t���l#�#�F��Ш�w��_]� ���h�6�S�K���=5 �g���zB�ٵaO�uT�"��\�ۘ�Sk�n0s8�\�����_,Nr4Mq�e ~�Z�U����E�ș4Ƴ�[Z���+�n�+��k����å��-��G���[�� �'����x�Q{&��e\ZFv������c��3n�eg�������Q����O�@��8�"�G�Mj?]��%|E\���W���ݢ}i��Is���;8���痡����r�Cw���OP� �|b�/�J�I��%���i�A����<
�SA�Tl)�a�\m��TZ�7Wj3<��q�Jқ�g�C�&¯d �P4���f�Z���	=f��+�4sz�#wja��j^�$��p�
W����9�1w��೧%�pI�nr!8�����y�֠sw����Q�O�Q�Tk%d�\���9�}L_�"���:Ң���%����;n 9�(+����A�a��}M��(>�)i�����過���i�:p#B�\gn�lc��0YL�Dq�v�x��q�C�*��Ir�{=�m�A"O0p��$��R�Š�m�*Ƕ�hD��a�KԂPOJ;2�^D����9R4�{�v����3o/;G�.tDr�F
��[M�J�IA?� ^��A{5�BlP�����ق����0���E[l��:�D��lw8s��y�}��+!�?8�����&B��8z�/���-'xC�?&���P��	F����\k�T�����\0K����҃�"���r���?Pk�3�����u9�{
�m�9?X%Y���2����Dt\{��y�_/��f��g���2��}����e�(
-N�l���z�	��j�Wg۷������<m(*M�I��u��08�܂Gk������?��t��D��_F�-���z���Z�0;��7J2	&ڀ�#��;�P밭���cn����_�񑌍d���?������^��;b- ~=�zVD�������ow��ͫ���Bwv1�������@�ȏ��F�"����y /�y�Ô���$�<����23r-�4�P]N�ղ�p��X.b�Y417]�'���	37�>'3N���i��K���39o��R��!���a��2+�bK�9ѐayz F�)������c�i�j�SfL���ݾ�����΅^LY���g�`5��v8_�`�&U��89Юl�h�L�#[�`��	o��Ѕ\�n诟����,S	�{�w�3;6�S+�-����l4t.-��w�W,�|j0��[o��_�b4�P�&������Rt��� �ց��_��̨�(�Z�C��{��H�8��!�16rۚ]���`���d^@Y�vm�D�������4��`�y�T0!8��jM�}��ܛs�3��é;p4y��P=��Xo���. ��"O�в��0�/v������o���|�B�,���2�?8��Q�|�sԔIU�[n��N@�4�'qX��.l��(Q��~�{��F���kf�b7`;� �3�x34���o+:J4����J�zo�����4l����VP�ҩ�Q��E�0�����5�ۼ�mpе��n��Ds��ف���� e�
p����88��V�M	�]�D��j�2w��d
�j�X��%6V�1��q>J�!i�g��$,r-�����<�j�y6����Y ԃ	�!y�*Q��ç�'�t�{�O���=g>����OS}{Y�j���h�����6�c���BWW�o�b��N�C������N.{�����U����\����|(f��r�~�mzӃ��6XJ:Z�g��2��b�	�pά_6�x����$2�̋~O��.������\'��e q[N�ώ��Ej�ly��N�3N�Ӈ��X��/���֮��Q� �
��+��/#�H���	�g&�d���Ծ`�e�OW���|{���n��3�,v8�V}*G�߿+�����j����-�S��rp�]͞�?{��Z��[-XW����E��d��\[��W    ��, �jW�<?<���7�_�G�3�K��O���+��b,�)j}�w��{y%9��1F3����Y`p+k��8�h�����)��X�0���b�-O�XT��4�r��e�P��45�go��GNJ0d|Vp��n�c'Hc���!�y0�a7�����Wc`.`8�^Rd���|�Nd�٦5�tyáA��]�� F
�yz��T/ilFh�|#.þu�ͧ1S���d�d{h]ƅ,q{�����d�D��ó��R 8j����b'�~/p�7�+vi�y��UE*󻃶]y˩ M{���dbj�-��6Xl���0}{����8���A#it�����c��}X!r
u��e���r!�ލ9���6U5Pi��/�a�_y��T*s�]lz�I�g�۠��dy�'�b:������,�bH�S�����]�jh�"qU�|m'���(ެNhܫ�={4�:Y���쪭�n�w�H�5��ը;d��p�K�N4Q[���$#�x����o�������
%U�p�f3oe�
sX�#޺5���{.�M�.o��Uc�vf˱�<@w�t[�G��ೳ��90َ$�N�J],��C�H�	�25V�/+Up4�����C�Y1�����h�=٢>�N��}4�s�2�Zۉ�u���
f�A���n�7��\_w?��P�/�(A������R辣
(���t,t�1�`j�p�^��J�.�ǔ텲2���3ٵ�%��Tb&�Ch����mɻ(pf.3��?1_<OA�/���	��AeE&�bm��s��o�s��-UO�$��m�'��.���taњ��%wLS�ͱ����]����h��¹�]�>�]���4���&��,?ݪ&\�p�ċo��[�U��.C��;���"g�aK\�#�Y��n�Ɏ�T��)��)ɪpSW�.Ԩܗ���S�%4U�^N��Z�����Ҳ�}.]j����R0SQ����D�`Nf����Φ:�o��y��Ǜ�~&8c�(�彐��g�Tٛ�B&���ٲ���r�Q���4<&� �N��}�/:32�.[���Օ�M��vG�4)ק`�K��C�l����3��X!{��x�_V+���v1Tu��H=���Bf�	���A^���@�nt�'�q�|m:�M��.�ت=ˠ��A�}��7#�<�O����5'ss #v�m��Q&�Sq����/"�νhgE{E�FJB��@����}�r 8����} �z2��]H�=�`�5�'����������sG��С�yq\)@��4��_�污-���W�F�B��aⶨ�DK���o�L h�@v�M.��A'�d_MerYT�Ű�;��b�oE8�E�绷���ͼߡ���M�@�3��'���i�Y���B��椾��(�(�}Z���ſ�,�ߗ�l=�ɕz)}�= �ك{����W����Rq��:�;k m��y��/��ؑE����a��<�&B�?m|vn��9��U�r�P���0��UD5ўD,Cq��u�C�n^����욶N{[÷N8���uB���x�?w�����0V��h��/����"H�"��{�Qכ��G��̈́��� o�uHP���Q`�\�B�f�ͺ�v����Y��Dge+ꠃ����f�Z��l��	`�������v��Z>~���!�-Ae�{��w/c7!�v�u�3iI���.s����6\��h��g=���5�H�& ��WP칾�����`J��A9�F�Wj�x�U�߭���n9XW��8�b��T0es3�w�`H:�^�f�Q��I�vw���!�H�Î��2jw� 0�d}�R�P(=H���������z�O�y�G-�s(��	L]9���y��D�[�=g3�;`!�(�kZml�Ϩ�xÞ���P�$�j�߄H�xѰU$����]�s�}�� �z�wYn
�ǆ6CS���`B//��2l[N����~�w��v�P��ʒ����qe�G�.Q Á�>����f�έ_�ٵ�,��}�yB�v
p�`;��Fca���%'���u�����iD��a�pŐ�jBJ�an?�7�tQ��<�D�~ߒ�y�P��W}�:���Ŕ��n��-[����9-YR[LbE�X*?�I?���AXH{i(.�]f޾_�����Ĳ�7�4w 2f:��ʴ~Ba�O�������.3��p�􂃣�� 9o��옺�k�@����|��"L��W�G��AS}�~W7UC������PF��^�]K�c�D��1�Zo�b��Ɨ� &��ΦNxخ��D�N[J�!g���Q@Y>W@�J�;ǿ��p	Q奸fڙ+����#�rC�QU��W����4�Z�V��9��Ő��	��9!��Z/�����f�\I<G�*��LB�ǟ�se$\�����?Q�c_�.vˋ;����!.�.��F��='�v����D.�q��_wWx��� ��ǔ��ѩ5ǣkZw@�����boR�{�*Z4`�qo�=鬱�E�&�����ęmy�%~�v�
����+��rm�B":��Е8��_Z�������F���;bc��;�ǥ2�ӗWv��`y]Z�"�6���S[�tV�ˍ��J췠�]�K�D��!7����ѡKcC�{L�Z_�!o���}�\��[�j�b����v�8M[�s����{����{0#�7�S��L9������	��p�Q �l�O�t���j�E�aB˛��Kw��cײ�i�:HL�	&����W�'L:�
|�_K���J��!�(ڢ�c����np/t�3w�O8�z�a�����<\�}��	����p�1Qc�!��o�BT(y��9��s{Km�P���D�I�yv�!������I�CӘL�E.��nwϰ��O΢w�e�a-�Z�85
����U�7 P^�l]�D�C�NՏ�g���	;�)6����L���8���]Zlϭ�� R����h--J�����`��gx��X�v��F����U1.U&>�kY�[jc�K	��<�0���^� ��g��q�#�t����?0xz1��bI�<`���<����_�(��0D|]�o��	�����	�����Y�sY�СZm�?�v���+4R]1�̓�z˶و.��}�7��߼����H���I����ꌷQ�@ǒ�]�̙w/�9nRd����*
/��0�0�<mv�,����}NбN�IS8�x
赼������$F�>\x�w#�z�}�@P�\�0<<��¼k��=Y^��6���ks��#���CALQ���MW8ZzЅ�>>I��b�yݗI,�t��/��{j}�TG�N��T���g�c����6���m�Ԋ�6�4a�|,)?<��u��'��4�����o��(q�R?�oPo�T�/j���系�K��Z�������V��	f+z48^�T;Z���ˉ�k�y~?�Fu����˥�Ɨ�x����S��denRky�u�Z/�ϗQJv�U�j��k7lux��;tV-Nd�f�¯Ƕ;A: � ���o&�-�:ɦ��ڐ�z>1:����8�S'2CEH�lpY��"I�|{ �Ù�_����QU�̒� E�Ձэ���&M���j�n�R������A�4�?������R���b�����sT�ı5-Ԯ��Md����!7�z���8~P=U8��m
Hpd<�����aO�>Q�����h��X��7�"՘Ug#q�<���Ξ��i�3m&�����,N;�G��Ƚ}����ݲ�k�1/�O�����dI5����~�����G�N�A��ma�9-�b�i˧c'�����!7S����+Y��r�V��a8���	]�~��T�#6<��Y/�11����w+Vr٪�lH3��]�X��X��4w&�7�����
�N���w�[:p��`*=9��v�n�I@bW�_{�{]d�|�����lZʥ}4�Jq������d��O̄;�ދ��@;P�~p���W=	��AmD��    �y��/��������)�zf�=�C���v'��Þ��	��(=�JNJ���-W��~_u`��&m�4V�̄.Z��>����5(��:�O՚K'�uY��P�#bҹ��tnhb��Q��E�y, �g�V��.��EBL ��O�r����鷲�_/w���8������srj��2W��y�f�B#
1孺�+|�	�b�+ e�b����pbl�/���&��M!�~s
@�J��SP�݀^A��"|�V8<ͅG�f�;IZw��3\���)W���lC��J��wQ�M��֨TC��
��n4��`�P�z�Z]7,6޳��i��T/s�G��]��l����L����q���#OXk�I���I���i��F�$��L0�j��,�@SV1D����E^�0�|ؑ������W�KO"0����dm�����9Y���]�]d�Eg�a��d8h�rYj��J�B'�臢+���OR���5�����F��}>>*(���~'`��8N2�ٗW���b$*���!��Qv�$��Zjq�7��W�KDy͉��:�=��:�W��iE���[�bF�:C:ג�T�,�,�0ځ�}qN�<>�������'	G��������D����بs����=�!@�
�Qe�t~�m۔��<�BH}��g��\�� ��z�W�F���,�V�rW�~���籯��o'��Ԇ��H?�)�@��%oq�5����%#s@�q�MF��f�B�t[~&A��e����9�t��.�ݸ���f򧢢����ծ��}���o��dAq��I�G9ۣ�B��C�ou#�t��J��@�h;�͹�0S�ݢ�\_���u��4�8�T�c�S�X����ou�s�c>>\����[�;����
�}��)=��&�<�K���^��|�׳) V?�����ˉ?Q:��e���I���=)�:�P�%�)�]�h[��M��,�dϙ�tK.֑�M���<p��.5��	�+���Պo��롓F�|����_.��p)��W�[��e���J�sO�Up���<\μ��asi7̯r��d��������C�G~����SSZ~�6��j�:3�].�#NYw<_����T��(�����08-�٘�G{qq���փ�tJ�����Y)��l�G�,�>�4F�#��[�eK�*mU��ޕ� '�:t ��@I��x嘇�Kթ��̹��d�����62�+8_��e$���e�5O��Wj}���[j��-���ҵc������]������J���:l�Y~�wta;��jB|�� ͢f�%ß/�~�+;��e���6�S����q��O�6+ԁ�����З��O[%��C{�;�>���Ů�����D|w�e����q��2�I���,w�\1�F�pNT�7��\�7�,"�_2�	�qВ�݂n��� hQ1�*l�$b��G����ҍB�N���Z��؛`���~�6`s�ӡ�p�~:�g�=��o6�d���.�L�<�M�k��-s�\���K����l1Y~�'������in=��#j�^��[j��zL�ZtK�y�a��"=�.v��E`'�����MimV�������ۗKKKQt�p��6�Mr����iTp��������k��.d̗U���BQ˞�g�Z���C�'٤c�3+��/�=�%_<��^���N�m������&����L��/?��A���(^^˥1�j��祉9�R�/g��Y�����Y�ݡ6�t��]����9=���ߣ6-fŇx�Kw!@M���L��9�zl��1DC�G��׃�%'<��Sc�I:��&�#fk�dq��%�GrM�cp����{����h���t As͝��ڐ���Q��(�i{��%���ڮƘc�K�� 5N�.��:�mK��"c�U�ڦ��N�oC���\��1�7���S���һ���7���Es��á��v�8����~E���pĂU�>�ag?:�����Wl$�;�J�n�o�h�k����:���5���TQ�$���sTѓ�H�_��k�a���H=��#;��h59�"���L�G�}4�F��/�N��
ZS	�D�<�;�R������9.��Z�`۸x�.vbo����n���H�V�4�����]��e�b��ƣ����j���`��(#�Km}i�����d�����a�-;�^g������!�X ��h�'Mo��������~ʓ�_�x�V��U�˶]4����7�՝@F@���ף[>u�ן��}_+�˛�x-�3��٪ڹ�	��M���Y�l����';m��tK�����dwʒ�v=e>�Ɣ9=�r��`@��І���w�(��Co�M���U��|;����E�;�9$�<�<�+V�pp�Z�T_b�|��	�f�<������v4-̕��B�p�1��^./զ�BX���z�B��[jU�w#I^��e�+�n��R\+��:�"��բ{[�}��K���v\,4r���_4���mR�ϣ~�@I�&x�ԯ��z�:͹�WV~�/wž��x2Σ��[�"O
k���M-o)G��=s��h/E�	X�Չ �7˟�A�J/�dQ�zE���@�?o7�i�я�8��'����ޢ�GjCU�|���@?0�x��/����[Mjc��,���XA�_Is<����6k͗Yj㛩���/�E�����~'?� <�Õ�X���*!��~��S�.�K-�9(�*����QMӝ羡����^Q��f�>�l�ལ���d���a+���nt
�T�����Zk}��T}��6朮�y�Yg���#~t�)t^s�F�V��k�z�Hm��j˿47�J7P��>�|r��^�#��������; ԣ�̆�&#e6��<\�j�����Z{B�N�j�����|@����v!��
�p��S��)T⫪Mh��$h�O�1U��o��3�v�yl���z�V~J +�<�.�)ڽ�x��x~$k�vS�����)�	��ʦe/+ 7Q�u��	J�ڹ�#E����Pm�1��k�x25RyK�]-ͮ�A_W!�V�x�pb3�ȏ��w2�y���4:�c�Nl�@?�@BȻ|<�m}��{�N�p��r'�۟m��{��~2��l�\8�L
4v��$���F�����OĆ̳4G�6�7s:Ƿj[HVF�P���Tx��'��l33�{Y�]��k����.�=���:`9�jC
�i?�u�<rӄk����Rg���Pd��4e�C�]��Q4�2]�0�[����<��L!���"tS)�%6�.����h�'��M�r0��ݸ��A8�1¹���(���^u\�y���խKnD�|�N��G}
ʈG��U���Zv��&����F����4��0�x�-m��`8?\v�X�͘�N�n7;\�_ӤO8�ͰA�-��K'l�� ��hOU,Qȏ�|�*������V�&�n����2π?z�N%��"||��E�Zb��(�R��+��ȏ٠ہ�hǃ�%$�����e���u���|z�����6�(�/�i���+�|ZX׵�
�t<k�wb'�L����ߝ){��1o�;����h�d�4�a���F|���w���+U~&ַFu-��s��K'#ij���+��~o�sm�������v���[���u��3N���S��IP��n��Hm�B7dA�9֎���6�06���췍�.���N���$�i�3[^���c&dk!�E�|��B�@�����zKmH��%��<�ߢk�7겓LJ�������ԕ�$\$W�0e��E�:�����a���$A|��F�sb����R��I( ˫KjƁ��G�$ᾳ+��+`c��63mb�..��T}���K�z�z�C���7�P�c��%KmH�5%���c:ޒ>����F�SZ]��`f��3k�G����/gku��y0*��&
�S��WYйj�r�dy�6d�베_�Dl?wJ�O.IL��*�lv�X�4k��"4�C}�*�Y!6��}N ���HQ6z�_m�[j]    ����s�ۉ�v��i����3����vk�{�L�}��s%����a��t�Nq)�,8��ݻ"�g�����
(�W���ڐ����򣵶���"@�>3��ìuV�t��s'��ܙ���k�����k`�Ļ)A|��~�� �/p���\U�9�6�iB��㞫�� ���;s����A>o���f�w<F��j��{��mJ]nh��z���X��_%(���E��L��6$(-��$�x
r���Gu�B�2`֎��	+�}��p���Tv��9�͞�S�}�%����E@��Ȧ�����]��!�'/d\��$�3�o�}؎�f�2����?�B>�B�8dW��)Z�U����c��4�1��KU.�)�L�;O��RU�xy����}���5��v�5��h�M	�N�Ǯ���*�V�>	�/(���h�.{�=8�?*�A}���oR���y�}�+��7h�g6]�Z�0P�ĉ��gt��țe��[�Y@a�M���򋥪�~>O���������#��Z��i�N?v�
��|vJ
������LS"͓u���eD�	;��<%,���!�;w1 �g1~%Z��ex�4��ਞ\T��x�����%��m�;�(Y)w�w'�����5" V砈t�[Gzt��MT1��$J�<8�7��G�u�~���:������7_)�С�V�~���k/}R��(��^�O冀�ToDjT�����}w��,�o�� ̱l��$���lÚ�l�^��؎:ѐS�b8ǡC�T�?�C�ˊA����{Km$P��B&��
����4-Z�2�&���<AttGtG�1`�`D����<�b{��W�qr�?�]˻4�i��C�������T�_�0�#���/�"��i�?���CX.Vݑy7����V��1<A�����jF������D �>���ߠx�y��o�쯷sY�M�d��S�;���GЫżL�[j�#�������Q�	�/>R6-|���R���G�'��3����P������=����)�by���hR���FlX�a�W�Z�ȯ�p�
z�ū��G~���.D���kPk�.`ߏw��ݎ}�ߟ��s0P}�lȃ�������s�7�# �/�Pj�����y��	'�%yKm  ������{�>��������Im@x�������o<бB�s�jY����������r�'U[l��=���ؘ\g�Xd��3]a�����˪*˺��y����k� �((*j������	<��q�0N׽gƊ�c�\�IUeWY���%q� �.o���%��ݨVz���R��������d���$KmC�[v%��\���^2 a-�㈏܍z
��ڳ�]�ʆX,KA�;&nq:�7+@�o�&� �v�w���),F��R�����?�m%��|��U�����b�ߨρ}We>qG��ew���Z�VY�e+�*�΢��6iUI�`����<�J��V���·����m�7��Z]�8�/�ϻ�+��U�\��ޞ��҃/�	:� gvFKy>f�f��0jV��ۯ&s�"f�7ǁ+7	j�a4l�g����i#�C��">��)�����
h�k�RX;&/�@�	8�)1�hi�ٰHU,7���I@��4}�aě��`�h#|�y��U��������o�g޻������1"ps�KDtDrJ�6�T�D�DE�N�����r���`�g�F���M�Hd�t�/�VS��o�!�*�n���q�m������~�r����Z�Șد�-P���Q6E=Oݼ���
��(S��Y��_�Ձ�k6�hXG��3���条ڶ<{�R{���Yl�$�՘z�aqHe�������.X�QMIj��J��q@��94�9D�/��?�87�?Y�CP�����A��1�<�P����;ɮ�C��������k����UH�_�5t0���PͰ}>�`��Iz��f���ь5.9��ˬ{L�8����L#�@�ߗ�5�Y��r�#��g��t�X�u_|t4?�'����63T���:�����l����0���1T~uc�k[�=ά�7e����x�0�/��ME>�E`���GV��ِ�&�`$P*�<���
�������]��RDG����&���P��f���g͏6�Sg�7���^_�0�y�-�,[Æg�@�BXUؔ�]�t�ɛq�)r����t-&9H��`�ΆX��Q��T�����P��n;قЏd�KjϦ!��N�U6wYFS|�X��eiw0��慈��0��l�m.,�/.՚&J{O�#��&@cvI �9�����=���rwք=o�Cx�l�<�t"(�=��ڸ��DEeW8B��M�ƚj�j�Ws7����|\���ؾ6����z�m��=+�Lh0b�	��Þ�L�`=PxD!E�IZlϻa���\�Gk�saw�OD���~|����!n��(��u��8j��l6)7"p�5]�С�M���(W�@NA'��	��\���Zp\��j��<!�9��ߏ0�o���|��ײ��d����A�۵M�
��[g�ΗKT<_��2˨����� �#���$��"LT6j}$jqp����R�lN��qTW��f��H����@(��0��J�񨚡��R=,'�$u%��LʜSe��A�T�7�Z�+��&�}%y#��ړ��:��DO�&���a��#S)&���Q,��>�;L�.c17L�z����i�DXs�"4u�N���'�w��N}��6֎<�o��o�x����WK:yje}$�k��U|�ť8��\�s�&9�lY�����s4�LXs��+���o�=J�G5�O$�� ��4\EU:ߩ3 �:`�S�gF�ie�Y������Ϛ� X����^��+�i���ğ'x��>�!���1m��ߊ�q�*b���u��[���Ej�V�Y������@ojj{Fq`����q��ty�Z�����<!j�G`���5���m�]r��7��-v�R�������씩14�L���_FɁ��e��Y����j:�ꠗ|�����}����n�^큉@��@�����L]��f�]!]�ɲ
DRX3�C00��|P����?0��wo�0 �d/��7]k���y�c���HL���l.
Q�&ΐ2&]o���t2�`m���(څ���cy���lD�V0L������;�о�Ae�s���oOK���.x(�� w�*�d���I����EI�'�A�K�,��"`:�v��/���S�uE��ϻ�J�����̀w��zM�m!�A �.��A���ã���x�A��l��Ֆ�k�v��"u�y�ֆ`y�T76��[�.��XS�����OjO�.� ��X^�J@V�Q��DO[`�K!�7����q�E`T!���o���B;Y��o}^S{2Pw�?0t�@d��.L,c�l4рS���Z^��el��V�ӆ�ř���aM ��_�m���{�o�&h 
��O}�+�nK���O���m&�d��lTNIc#9?Fl5��3P,�4�Q1����(��q�(ЬD�ip�_�E=������k9��=1ZS�9a`z��$�d��P+��֓1+����* 09��ku@)��P8)g���xz�r�al��_-�{މ�:K������2�-�w��2�@�{��d�"��p�_V8�EG��� ��^�S�D7N��F�]��C#��U���K�������oԞ��-V}���ɾ�Ww�Ey-8��i����~�k��VǠ�����|Ղ>=zs�&��L4�V�.�>3�A[��_�7O|�IC�2
Z��P(�}h�f%#\��u:���|�����-�@:�����$)�+��]ɫ�C��ԏ��ވw]�ч���m�+�[�1�f䒈mMNܕPyJ0Y��-~0�)s`UF�W^�_�����՘��'��g�.�h*d�����	�U�Ӡo�^������U�sg`�ىX&�у��Q�'"    �a[-c���y��ĉv2��h��� �ڊCF����r����*x�i����\�X !R�lb��̯�u���Ce���)�豸FS�����!WĿ&��O�����^R{̣7O\�O�w3��z��1��Ѱ(< �Uf�K��F�&�X�w�Vӡw�؉'�_�M1��	��� �%�Q{`��7��O���\ϒ,�,v�L��'h5����w4F��<�%�N�jv���}�9ټ������8p����q���yI�{��7a#�.*@
Ȍ�7N�{l��E�F�Y"l@Q�,��l��� � ��W�z�����'���+w����ɩb~������^X40�=9�c�����)�����o�¸��,�<����wy�6�[�[�G�7n�{�>��n�C6Ud��~�%���tEz����y��H�sFR�ƸRN���<�0.Z.�O��&ޡL�\�T��ƄP��WwE������jb��#��i?�D�">?�q���R�KM���.��0ϙN�,�s_���r�E�\*�9�L���kמĠ�(��1��K#��C7s�~���^iD7gDӡ�ۀz���,H�N�̓��P�����*�\'�w��Ea�waC��I]�4�$о�}M��e\[E�Ns�N���e�DW�с~V����]��P{���SC�8޼��b�mȅ_���g6��C�f��Њ�˃\����K*.1
/�m3��`�z=�X�����E^[$A$@��}M}޳]��XM�O�v��FA�����ƅQG�HQ�&��h<��	ōQM�F���eN:Vn�h�\'�/���@�<�L��� _�0D�~t���:�z{�RssKOY'O^�8u&��Kj���!��� kp�:�p��V��Q���$	�8���ݩ��)���)��~���+ׂ(�=4�$�0�#|bMmn�
��
Q]LOΜ'A�f0a���|8����ws?���'��My|���5�'�\5;i��P�>�T�)(81�1�U�PL��<��V��:��q|����퉈f���_�C����?�^5��m]~��$"��#6���
ݞ��v"��`�����w���� ��y��dqb�������-��fsS��P����}Q3��4���LH�����n6���v<p)p�D����7) G8;H@X>�O��R^8+�m)�H�t֎#��������W�a���Gj���o(��i���AM�¦�η��0J	%�aa�^-W[���~P�9���e.O��jX��J��Jx����S�_�=R�/�@���`M��U���c����'vB��Kn�
B�)��XvqHk��ƞJ[���� ��܏~���Č�\��K<��J��&{��䁞偡��hә��K� &�L/\d-�0��li,d����A���eV͚*	�i�����14��� 
P�x#ǝړ~V�y;�)@�U���$O��K+&� �^��K�p0_�W��	%��lKnP��y(����1���#I0�_��ړ�:� �ͪ�fy��[&�b,6zB�Sg�&Bx_)�x����/��80�q��W�sC����q����T\hW�R+K5���R�nn�r�0r��~�(�a^��bz3iy$����������xΜ׹N略.F�����N��V�N�I�l�)��wlm��bJ��c����Y����HG�y:"��[��G�z���B�1ތ��^��S)���w=��A	��_�!��d�J�]v��FK����*�W#l��2����_�XS�`|�P7\�=tV�N���M=їQ��5v�ۗ��WF�v��� �k�����r�>�Ue5�M5N�Uk?�����!��"^Cʺ(a~�^.��,�d\{Hb2�x6Χ$���^~�d���o|��H��ҖGjo�][65պQ��z*�0U ݟ�S1�/rY�伳�9o9b�����9�::�/�nkq��#�#�v����?��B�Y�u��˹$j��O׻�T��yc�;É���&>����2�1�D�bq�Ih�\�f蟶|�*MX�B[��2` �����[�k�z�T@�� �=_�������]
��-ה���1����,\�<M\�]q���6���q��OB-N������k:��O�s��ԞdݛY��4XS�}���q ����_����-x<��V���Ys9�Ǣ�s��N�e�U�*hp:��@����H}�z����
󻻖UF�ֱl[@O��EL?�VS8d�[������E6�n]��1lq���-���`0 ���u����N�ƞ�Lo�l�Pr����R6�gmg��uxU:0�_�*%�b!*��8	���y�x����@oˬ��11�50U5�I�@M�Aj0�څ�4�%ȅm�r�*�Ⱥ	O�����6�|�]X��m?'��Z�'���y���,]�K��fwO�<�i���,�r�l���/3CfswCi�NT����a�L���P�&��H
o<��y]�e7շ�N�DA����@�zM��a���୑1B^;b��gH[�b3����uw��El�	w�4v�h�xW���x�����E`dm<`�����k�k.ng96C^e�R�^(ԙ��u�V$�7C��r�`�;GCd8t�=S�� ��ȧ�f�C{8�����.�FS�T5C�(��Z�܏����=R{g�+���(�S �CCOך�y�1���$���J`�i��lL3~�p9�DN�� ejw�C)�"a!����s���->{RtY�Pmg�w?H�����H���|��<��JF��Ty@r�9%�c�A\��`5A�0Q��*w��d���񚠿ǇĞ,�Y�.Pi��mz�G#`"#�u�4��3��.=c���v��.���J'x��g���"��#���P�Ħ�Xևb�|�����芠�R����Ӿ-j�io%�.�R��ZWl+�;���� ��3v�/1�VP\��s^9�j7;"��'�ǋ����ړ���$����T���R��qv�x��%���2\��rI�X3�$���="��94�6�hqK���cwjO�n��10�(��fk��yS)7s����J�Nl�l��9c�Id���9R��4E񜌓�s��>���_�g���.�Wj��֯j�ۡe9���[�~4a��LSͬ���{ȁ�L�y!��1p��5�����1��+7F�l<�����"�wZ�N�Iu�"�������C�c�pQ�݊��A!_4[���>f�b��1��eb���_��n�N�8ߠ�K@�S�wjO��^j�j�j}h�[���ꭉa����IVK�X������%��8=��udK���@��KvkT�! ��8��J�  �{��ړ}r�A��o�;Lb����M����jR*�i�mF��\̖[�R6D�:�-�ݱ�����Ͼ����<R{��S-���9��+v���cC2]`x����y�'�:���"nD�
�8���* �lq�����# �F�=R{B������{u�z�tj����U��3�Ѕ�|�����c���j� '����	DX�&���4}�[���OK F�	t��jh�`@�ށ��e��p6�V*�rd��_,�^J��w��I=Ke��y�H�-�-hp�:�����L�v!���Ԟ�L����B�X[���� ��<��5�L�D�SZs��4�*�۵��D���v���'������65�ޭʝ��5��F��MG���Lsrt�G��-z� U�	�K��������O�q�*���hq<��F�O�hC�on��Ϭ#]����~�F@��1k�[32_�wH�ℱ�2rJ�L[��X�Ku�%�����Mav�O2�H-���#���6� P#����d$�9mp�&�F��B���Ig�$�㵌�#3]�.8Q�l����e)H�p�s���7�|�8����n줪)Aݫ��D����@^��� ��L+�	��n%v0dv<���?�E�i��    &���ǋ��3}�k�׽����n't��XX�<��P2��]�3M	�Y�;��*NK��F:�8O�`X��l��$��	��Y��m�#�'г)�p�������㋩W��76�frfxI���/�U�Mu~�Ћ�O�eD���U���V�6���G��|�m_�_F�WHN��579"f�G�-x�Ś���)1'���.��BBtZ���_k�p]=Z��O��G��~w�=��k�����	�޷�b`�>]
�f��A��0�%�H�r6yG��0���]�o0d�.�����G�"ߝ�����")Ճ�f0�5�\�)G��!.��dN#v� �L�dM��$/$Զ\8_$����|�~(
@o��#�'A'���j�j��p?:`���&�`���(.>0_�ꢎ�6�Q��ȶ�=>���|A�(k��fAj�g�ϥyc����t�.�2IM�4�۞щ���h����BD	8�Nv���&K�$�G(s�X`����T�q��y��g/�	��GjO�����T���muά�S�������7b���yQ�"��"����d����������?��8=쏗!~��~����r��n��
��6�8���`K��ZO0x�Μ��*�'�dU-B���)�W�%pX��l�;6V~� Y��-�#�Ď�z�<�q����d��K��Kt/��_˂z������(y�m<k�ˊ�dh�k���Y��pʌ��"�̌-���t������;zĩ�����=R{�\�{M���׈���wG��0�=��QĔ4��&��N�|��Ra���pGM��\.� ���E-��c��]�p֌\U���qO~'�9T'�#ձh�qɥ5�TM":�1>T�1��~�1U�jM�x�ݚ���ǒ��;�v��$��v\�p��g	G�ۊ,i�ʳ}nL����¥�s�q;1�i8L�D�: X�L��C��ӃZ��	�cY(�ݪP��U����@Ү����(�0o�����D��"�.W~�g�X^J����Q5f��43wJ�F�Ɲ!�z�8=�/��7�#�'ϵ�K�^N��5mab� on��w){��N~ŎUD�
*��ʗ����fʊ�Y@���N�(���^@kq~�,���J�ԞT]1^vRյU��C��7`Ӊn��"����N"��?�5_G}�@������t� ��¥�yB��EG�r��ny���®�`��G5l�dm?nF�-����2V��ދ�˽/��z:��B>�2�+�x���}<�qpn�vp��y���0C��H��Ԟ��.r�����]?�"�ޅ�i�ͷ�Ɗ,��)$���B���gߛn��ʑ�S�@H��!F�T���O�7��T�WjO��
Y��(��0=;�/�hq�0�N���"6�,;��4�D���괜,��iVS&1W�M%R�v��y�c�\�"��k�L�/2�V�6��9gf�9��F=�0Y�NO1M���W��!;b�|��g��B������sބ� ɺ��lq�?��;A�_�x(���8u�%�ft�-�y��lc\Kt~PE�J�l���l�_�ɥ�h@���|`Фz��0��:�>���+�~-�Y4F�"թ�[�����(H&�QΡ����yð��Ɗ&Hƕ�pΞ_��6�`P�sC�4�\���3GwjO�Vq7�z��F���?O"#R����-��F�b1u��\)s��~O���iXs��������� �M��#�'EW6�� X+w��'�a+�
 Kx�Wc~T�����I�^���a��\`N�34��xW��8�?��ƀw���* ]0�)P���	`�^B�M��t�.�y�Kr��HU�6���y*!��I�T���9w�ڸ��[�G��ś��bO�Kg�@�:��&�{���� v7|u��-)mi��3 %���eX<cCb����X�8np]A;��<C��J����`�<�>�im������L��Bt�d�"%2NF��%-9
�r\��F��n���|��WB�@Mׅ���	�Q� ���=R���Z��5�
�a�^�,�ն䄩��&<�G����@,�X�R �%n^�K�.�"��7�&P����"�8=��@o��=y��}5�Sxtj��f�.o�%��c+U[�XŎhɥ�l�"�B\نzt�L�]�-�6emQ5���P?�|�!���K�&C�h:z6q"D(�Ԩ�͓���dX9Y�mO�����Ґ�Ϩ�X�r��!��M�O� ��Mق����<!,����ړ�������������[)�J��|��q��xh�Pь��LH�P�=��b8����r[�߽�[�'�O����m���6��+���z�{�lGcC���8��}6 ��V���ޖ�5g�=Sy��3���%�m�V�!`���Gu�����sO�#~UbݳB#��8�@���ؕ9>�"~�Ko*��8TD����X��0���x��ᒣ3v�*cv���\1?�L�����-�Į�����Q�,8߷�P6�Cu��Їh�y�=5d ��^�s��+c�!I+[��W�I��/�)I��y��d#� ���,DWUy�$��F���|�|�pw�+yi��P,�hn)f0Ix9���zĦ Ĵ�T�1ŖK�M��D���w�`�:mf��}��Ԟ@]�H�ijF!N�瓞1��9�1P�1��ښ�t�;<nDq�(Lv����D��:�^��-����z��{\��=�ȷ������!��+]0��H3�X5���l�O/`-��h0�-��1Qv;g�2G'f��8��-�#�ǒ�?審=I���eM-�^�h� D��p��ݐ�Y>!�9v:)��i����e;��$����,�3G�w;��a��z���c�~���j�Sb�'�a��D����>�W�؝�^���4[��J�C�!����,`�G�]�0�E��t8W̏���g�%�{�;s�$�ݎ�:dM�;S�I�$2���b�'}�G݁�1&D`�X�`�ԧk�6��W�?���a��Գ_��M�=��	�k�S=;��ў����t�+nQJ�Y�� &G[�ĳ8�s(��N�^�v���vp��w ���� �n�sP�M�+�пa�yh���J^S����c:oEF���A�NO�# J_���&��b����8���x!�%�]���z%Z�Z �x3���ܴx�~?�_�=�[�A��ո�аy�d�K
����g�Љ9:n��fS,N��*��P�_�������[�Z�6�:��PI��������WH��zI�ID�$���$݀��\�LI�`�T�*P��ZNFa���sx�+YD�yy�`�K�>C���8�CS��>�s�+k��}���F�eaU��Uq��q�O�Je�7T.�Y��(f+��V�ԯZ�Q�
��s�m�6���)!��vG����^S���}*֍.��D�%Mti�&P��y�#�ʐr����gzJ��hK�&��)��u�E|�©��L�p�ho9o��_�����'��[w֚_��pg{@�[�Z/1�xB�������DRd�r��H</�r�����%�+��o>������w�6����rn^���A}i���*|�etrn�̆�y�a�����:���a�ڃE�C�t��#~�?ڴ�{G�7�=�ҷ]`�I�y�c���ܧ�qIL��m&�D��6�	7תڝ{g:�d_��`kf`wp��8��M�\�Q�H�y�vQkZ6ֻ���4c���4׸Oj��Xʋ4��h]�r;>S��:"@�s�9n���G,ڔm��$83���U��'ֱ�FIM˄�c��qi]�ߦ�b]��q��F�)��@�O#v�ov�d���KJgt;n��4D�ʡ�b�t�M���o�C|}�ٱv�s�w_��$���5���1O��ؕ$�T���'�v�(��?�`]��lJ[�Po�Ļs�3���q�7��$�J�����F�\�|�|���C����4�Ĵ`����F�-(�%-Й~��9�--�V��-�ȍ�w����v� g	  �����F����co5�������H����cfA'�>�,2A�)4�Ņ-\�6ڰQ�'|�G�^y�o���7߷��8)M��%s�`'�/�la:�%�{Ja��%���B�g�+�r7��#�n�C{�����NU�_����g��w��n^��,\l����tcg��F9LjW^�Q_�3!���)���%�)_T�q���^���"����?�=���Tۗ���_3ڡ���	b������Vpl5ӵ��`��"���	�]��1���^j�M��Oi���9Ԏ�	 &���5���tS����w�C�2X�'�cGG�<U�R4 v<7�Pu��x�H6�	X�p ϵ�o�9��u\{��+�]T����������;47���_��<ޝ�8�8s���a0\g�$"��{��2
�`�:D1�D��f�7�{��AA�p��?xI��u�3���Ŏ�Nz{U����V:jfQt��Ri6L3��}�G�@$�c-/�Tox�@���)����wjl(��7a�%j�H��^8���T�XO���8�Д�bl8U%�#���,�q�Xgb0���6�O�0����<࣯��G���P��^A���꿶s�OE���q���v�t��x3���rVڞD��Ebt����f�0ƹ�Y�S�S��0\R3�1���S�P��Tlqn�o2 �:�C�(�q�I}�����vvl|T��/���h�#sA�E*Fḱ�	0۟�kF;���T�:&ew8Ҳ�j	��ی�x����?���ݣ ��s(��/�c^��bׁ�(�F{����y�������u��ú`�1�B10uYQ���p9"g	�+t�gG�����X,Y��WG�bP(��W닷c�! %_-�O���"oA�-�&�����b
q�1KK��_�sw�/��8�����V֒�Y L}�6���q7�P��L��P?����:,5>:A��Uo�^ǋ��1e�try|�ԥ?^�f<X �r��C#�sQk] 2��|fcFh��`8cw�SHPR7S����$��	�~UHD�m$Լݷ��
p.��]fecF(��������iN�{������� �����;́/�����"��G`x�Q�~D��[��I����N���]y�]�#(�Mϰ�<�Y��Ɯ��*R@޳G2��ƌ��й��]|����4�@?�n�N՛����WjO�vE�m��[r�[j	D�,����P	K3���z��q#�r�i��p��!�Ҁk/�f�#�x��(؄��K��'�g����\���:9�'�
א�&�^18ir6���� ���s�Tvj�nG|ę_�dxm��f�L�ޕ�]�RMQE�9o�m2��:��#n���%>��U�{���$�^�-�Z�d���n���@��#�gC���|wk�>��P�ۜ�_i���ކǯQ�-;�9{Q�H6}�/��ba���`2 �bI&�tTE�<���V츆�v�|���H�	0�ң>sM]+Ӝ�t�/�������9k'mgn�Ų��&�a~2�X��[�D��Q&r4�p� ����W�����4�N90��?�����ym�l8�LjT��2
>�����H6��A�w�a�#=;�皭`	N6 ��ͅ�f���/�C{�ŉ6zȏ��M^{\��۰�֦�t&Nc��ad]�;�&�u�-��R�	�g�_�w��f�jj�_��ϗ�X�\���`�$2��d����IkO�8�n��T�E���%�(�"��74I�2��S���d�"�6I�.�7)��E~����a��^n&���1����I��-�M����%���[��m����oyf�=' C��צ���d<�l�4�\�3�N&��c����f�53�QA�Z����(u<��S����_R{�ZFn3������vW��`�#�pwH�7�Y�J�@��8�q�3�@���a��B`h��|�%�E�v�4�) ����������qo�N1 bl@�JC�I����X�f��83a�D��#r���#������6���I]Wz�k�R�p���Ѻ>ۨ�VF׼��4��+�����s� KPT�&��:0���:<v`0���q���[��ܷCZ:��d�I��ԏ��7j;��~��u�����)�����[�[v�f���X�`��3�Ĝ-����8�ջ�D�p��w{�ԟV�+���ߞ��9��(�Δ�\�uF�x/����&���q�(E�ݻ�$���R_#M]Osq�NZ��>E��F ���#��k�������l8�m�˫�%g�XV{���ydn���֞��5��u��<̍�S1vR�����~r��-�`�
��z��<���k�o:' �k���������&�      X      x������ � �      G      x�32��22��2�ˊ���� ��)      H   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     