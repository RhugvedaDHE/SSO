PGDMP                      }            sso    16.3    16.3 W   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    279   b�                0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   ۶                0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   ��                0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �      
          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   ��      R          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   ��                0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   Ϸ                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   ?�                0    24778    QualificationTypes 
   TABLE DATA           q   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt", institute_type_id) FROM stdin;
    public          postgres    false    295   �                0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   ��                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   v�                0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   d�                0    24803    ServiceRoles 
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
    public          postgres    false    310   -�      !          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   ��      #          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   3�      %          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   ��      '          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id, lateral_entry) FROM stdin;
    public          postgres    false    318   ��      )          0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   ��      +          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   ��                0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   ]      -          0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   4      /          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   V      1          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   s      3          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   c      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   s$      M          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �%      5          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   �)      7          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   �=      9          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   �E      ;          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   v�      =          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   ��      ?          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec, annual_income, country_code) FROM stdin;
    public          postgres    false    342   r�      A          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   }�      C          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   ��      E          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by, country_code) FROM stdin;
    public          postgres    false    348   ��      X          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   �Q      G          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   �Q      H          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   R      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
          public          postgres    false    359            �           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    216            �           0    0    Banks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Banks_id_seq"', 25, true);
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
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Notifications_id_seq"', 164, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 290, true);
          public          postgres    false    278            �           0    0    OrganisationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);
          public          postgres    false    280            �           0    0    OtherSkills_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 75, true);
          public          postgres    false    282            �           0    0    OwnerTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);
          public          postgres    false    284            �           0    0    Percentages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);
          public          postgres    false    286            �           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);
          public          postgres    false    288            �           0    0    ProgrammeSemesters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);
          public          postgres    false    290            �           0    0    ProgrammeSubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);
          public          postgres    false    292            �           0    0    Programmes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Programmes_id_seq"', 74, true);
          public          postgres    false    294            �           0    0    QualificationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 7, true);
          public          postgres    false    296            �           0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 18, true);
          public          postgres    false    298            �           0    0    Semesters_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Semesters_id_seq"', 11, true);
          public          postgres    false    300            �           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 25, true);
          public          postgres    false    303            �           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 5, true);
          public          postgres    false    305            �           0    0    Sessions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Sessions_id_seq"', 662, true);
          public          postgres    false    368            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 33, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."States_id_seq"', 173, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 583, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 132, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 492, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 124, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 251, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 176, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1835, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 428, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 441, true);
          public          postgres    false    347            �           0    0    Users2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users2_id_seq"', 1, true);
          public          postgres    false    366            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 626, true);
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
Mg��t�^M>���&ٝC�QÌ��W���/�X{L      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �     x��\Mo�=�~���`�s A�$@�\��q,���v���b���d1Hf8�E�3\���c}6�P?�-���ǇO�O��Á8<�����������ws��7�����O��+�q��[l<�;wDglI������G��L�
h�V�~z~��������?�~}:�v�����~������XãG�뭥ڣ��`�Me�V��~8�����Y����N/o�:|~|9�x:}=||>=��~:����O//�~�����{"����Vc���"��фz&��o_�~z���O�_O/��__�=}�B�������������)��LFB��Wډ�z��z�$�ӓ��!ƞ���Ƅ^�J&��Դ,>�k�h `~-w@ڔ���nT0
�����v��h����(f���OM[��ûQ@�,<��vT]2������".,e�?�s|2R	�pq-��Z��tD�S�KT���[�_7[��q5�L�(8��\^*�n�����!0c:Fz9��r�ȫ[x��=Ky�+��&�y�D$���D^��K���z�k��)�'�nX�U�^�v�=�'��n�͒�[?�����Ap"������m7��~��(8W�^}��Yޫ��F6K�DE��������LǐM/�p!l]�鈕.������E҂[΄���jR�
�/�^�[��J�{�}��M+5�l��"�/{&
>�eM*��@w���83|�#��aZNEg�G�����o��H6u<;
^�-,�qm���Ƨ��Q��޽�9
^�ư��[�i�sj��>�L4����-���1Z�T&
a��e���
�f�ȸ�=��i�`�b�E2���&
A46.��Vs@8��M�Î�P��q��lq�MAy�٤a��(�ظ�|g�s���U&
A46.�X�U�i�^d�_�	
A46�T��T4�c���<F��kZ�f�6�̒Sfi?Ǝ��B}Mk��r|�[kj�
�� ����~[�3V.k��d@!�n�+��<8<�7=��w���ko��.���[o�l$S9X9�//'�""�w�NyAdʗ�P��~Drs�����I��9!Έ�G!��)-|@m�(�xO"�z�WQ��nDZ:���T"
1ߓ�w���+ҡW�J�K2N�#
�ޏ��V-���(${?"�5-e�"{�*"����֌���Ȝ���W�=~�V!׋�������l)���'@E!�C�閷��>�4x�*
I���2>��3�&�^�T���ee�%���	����$�sYc���G���㫢�����s�]s��(�{(��*�c���aE4�=�՝K4>�fiDrS4�7k�Hb5q��K��Q�N����V�b/Nc2���0Yd��tt��A?�W����@\l�SO^E!Ga�X`[�3��bw��BN�dq�)�"���OC!ga��W^�<m�^C!7�u�\B��-��9)cqv&(�*LV^:������y���L4�&+�DH��(�Ο��PDcq��������S��DE��Ʈ��yo�~�׉�@(����_L����&+�G�����3\�����>�R��(�[y�m��
�:��"
����b�sa�"�P4&
EvA��ȄcLkB�uME��º��$7/����9�3�P(��~��o�"��E����މ������ �?�P�"�뺐�-y�61/��&*
Uv]�;[� �1/�L:�H�N�w��瘷�ΤC��Į� ����S���7A���N���3�7�ׂ�\�{'i�B������^Z�d��c@���N*��������33��k���<��Q��)?���B��@^�^��H����~=TЊ��/Ƶ�gWI�LDE��$<��7æ�^Y�*D��H�3��zz��Luڊ(��g���"1p�7�{9f(pT#�_���vk7��d�QQ""%�I��"�nE��Wc�Et�hHAk�F�d3�-x
^r�CC����:�6���`�>)0C�G~�u*��$[�&��P�9�Fd���)9���o�	0_֩�$$2+gp%"��E�ή$�ww��FC���j�#�+��A�PY',D4P�|Y����/��(t%"��e���֣����*DF��l�+u�MI���jf( n�szl�n���'cX%*[��Jm���)F�b�&*JD���Jmur��V�wI!2�Dd+i��4�'r���.C��t[6`a�y1&>G��.QQ����W��r�xwhRv����P�0�����;�J���T�0[�f�M���ARQ@�
va��X�?�	�=
(�Z���61-����q���VXY�|3�9��v~Pf�¤ z���,�m{VE��3��n�"'e(莾��T��T��^�b�E:!�QP@++�o�|kϚ�(QA��^���v���PC��*����dj���=JT�ֆI9��������)
(dae5�b��DK����(�L�\X޺��k�6��Y�T��|=�5�"�y9k���2A&��+��� ���Â( ���\�B��&������Iy�J"�M��)55�����X�ԧ�$�[�7�V�w� en,�bm�9�(��
����0��_��*ϕn�A�5P����!�q�6�����24��\���qbӛ4z%
(3ca�4p%�6�Z�Ӑj�@@�/��H�G�qX���0���MD�+ݸ4��
(#ca�Cq#:6���21&�O��H��qN�kDPz����)�qm�q�S3�Pƴ¤��&"� Qu;P��¤��VѤ0��ʈV����H�P6��DD4կ�T�d�ď�ʰ 
(#Z���Գ)
��7��yNP""��ש���-��-��DDTu�_s%��Y9�w�+��DDTu�^s�[G-=s����(U�t�\I�}�����{QQ@�
��\I��N�gQj鏯�QՕ]>d̷��Iy.�Ǝ��Q�Ic���&���&Z1����-XsPƣ��C�qe�v@L�Ŏ���xT�|p�"��s�;���d�� �}�O      �      x��}Y������ۿ�\|w���jDAE���@A�_߀��Ω�w��E=�œ��5���������`� �f��,oO>���%����2�\���+9"�#�����,�f���C�(�������Ŀa�_��~������8F!����������_0���|=?_���5���ɕ]���:ğ���fS��j�-�)��pFpnqx��� ��X���|1F��X�#�;�,�=��]�@,�H��YJ,����m�v��a�#���c��@��fE��` �?��`lǙD�qc+�|qvf冄O���u�x�2�n����`�<-���^�)�-$=�t��[���� �b������}���������{#��E�|_p^�$�v�_��"hM�n�,C��b��-w�3o>��j	)�C�%Oa�/��#?`��8M��[�%$�;g���aI��ޞ�d�� �����X�����Ǜ�-M'oTT5B�B_�#!��82)
# ���n,�;g
|�\��+�%��<�S3���O2������r݅�l�kA��d_ݳ�(��I�lDd��Ҫ �z�ڰB #��~����w�ޫ�2c��n��MB Zp�JVj��m�b�]�ī�̴��7Rm%V�tOJ6�j�iP|G�ӛF_���O@�V��(Ͷ��+u���y�\��n犌e:U+|\>bHu{��A9Y�ݽ� ����-m� �Xw|���H�L�}���fɏ�����aL)/E��6�z>�΃-;GEĮN~� #�y��&�X�F> �! O.���W�<�N�aV	�<��T�ޚ�U��y1b�1Ӡ�0�򲎤r��Gp�z�7�s��嚟�Ğ�� �M��:-:C�c����Ģ���!�b�W�M�>}�RY9+�d)�6�3Kdk���z�aoAeMGڇ���0t��_(L0�}��y�]є$a
uy5��F��ԩ�qE����Өq�7�"��l�i���΂��9E��m� ���C_�B��u%���%D�V�Q`s��Qe@��N�7��9��{Es�%!�FT	?_?�v���� ��;:�~F�k���[�-W)��L#���P[^�S�Fq|s�:��ѕ�;��oi�~I��:U��l]���iV�y�5���i3D{1ߧ �/ʭx@�9�,���I�qW��0ep�����:]_��g}�/@ȭ�byZ���������Zz�]�oَK��%/��,8piٌlJ���9b��9$��KA��d$�z�ε�^k�Xx�q��9���@��B;��`�9��ư��]�%�L�\�KPq3O��Y���/+�:��F�Zƽ�B�!��KF�a?���S���yh�CA���`�X5״�l�/K����Mt]@ţ�8`�%Iǩ�m�4�|�6�S�T�§��-�q'���q-�_j�n�k�|M"[�4\�(W�(Y����� 1@lV]�N�\���S/�P��Y;��uj%BL�l�@l�I��m$� n������i�����}�fT��q�[��<�U~;�w s�B��k���2L�M���@ B���O���6�>M�m�K��wI��9Ȫ��/({S�kx�Х��գ��O3\��ɠ<���m���Yd� E�E����% ���E{�9��r��_\��݆���{\�!�vBlå��~���*E�wV��w�Z��ȭ�u��#�펄� ����4�#���o�2`K�@���lRY�e����\1��0]qL���_���f������<R�d�<����.ڎ}i#i�3|� ػ���$��=���q�y�dy��`H���٩,]������L)$;�� ƺ�=K@�Z�ق>��m�� `�:ۋ�@����\���
θ���V$..�r��ҜXJ��d��n�<���d����~z��
��P�"��D�/�x�Fq���n
�'��u��	���ng��]\�x;�m==Z��@���g���zl���;��
 ����O%��$�c�^� �%��i%�5��=P�&����\g���up8>�g���0$j����� �#c�`�H�	��h{L{n=�� ���)�2�ѫz��,rnl�Gy�.�����<�xiʆO!u�z�5��2�UA2�s��~Y���k��@����a�n�5���9�}sݐAdE^��j��XA��R!T.Q�%P�8���%f�83�>�T���V�Q �Q��m<L}D�ƾf@��`�W�!9�ǐ�O4����ٹY"Œ<L��lK�}�f��a
͟VIb����6.2�U'Ǿ�0]���\V(�V�<d�T~G��X�G���t.�J�d�k��V�������}�b7�j#��HP^hc" E��x�k�䶡U�0��R���ܷ��^��\��l<n7���By��:1�6s	a$�C�-hP�U �s���z9�T��&�a�8=��i����5���"���ȷ��U���p0ϰ�c
����K :YV��06Q+ ��y��� ���3����uXr<�d.����L�|d-瀺��a�";������hk���	LQ�Қ�sv��(6=�9�j�P��D�x�k�����N�D�=qPL��kA�%�wU����7΍'o��/.vaadw��w�ASQ� �e��kd��ёtM�/��Y���U��/�j>R%@�T �[,38����h0��8H>֡��������H�"�3�/�X�Ɂ�'׏}_��ڴ�c�b���u�%�O9P&�����m*�U��l��)&!am��E}c�~�8i�¦�r�}����]#g�R7�Z�������(セ��2�U�<��eA'W>�@�A���� T~G[�Iӫ�vV�+�ɱ/���	2�ѽ�X�����4����r:P��WW�BW��(�ugq>_�����#1#F�1�U(:-��"��RF㱯4��kF���(�+�c�>��1���e�]T�˔Y�R�|$�B�4h9'V������$��S���G@?�d�cߘ#��T��n⺆�3��kh����í�'���S�	JV�`A��1:�rsڰ�	���6'�P�r���M,>���
D�K�r;K���(ge�) v����Ld�xե����%�aY�����թ<|���&���߆��t�"H���b���ݻK�ҏ������
?�h��a���H>?7��X�_.�͹}�;H#�`��L;h��ϯ�ΟǾ�\���1cla%~m�ȹk���ê���	��?@�V#@��A�ܵ��V�4�b{�6+B���m E#_�������\@-X?�/�Y��	��4w��pO�h@����n���ّm-��� E�8#]A6pܿ��2l�߹ӊ��bf�9)Xm��;b=Hi���VF]k�,��哙0ز8�G�]�x�01�{��&�s�4;��3��#h�cql��H͜��͡6��8�Ւy�� h ��;ؼ]EKG���:W�:*�:�~%�'#���XWr����[�&O���k��r-z�à֒����/��s�������Ń8�ij��\e�������٭̭��nP�&�G�ܣ`7���3�_��oV
��
��%INW%��$m�%6�"SM����uru�?|�<�だ�W�M�;^�v�ʣ�����%)!�m�!��0�Rn�=�r$ޜb���4�� /�-$6� Üo�M]m��|[����Ys����R��t�d�@�q�Fb�-(D��K
�DB�-{���^9_g� �T�S�c����(��8-8[-�9��%�K�j垍{ƫ?3i?SiSY��#�� ��Ƒ�8ʤM��)<�j���˥H�q.wC׾�2����{F>���T
�E7w1�EĘ`��3@Z_�D�/������M�h�<N�q^���ʓ��z�.���    Q��QB�7���י��C�J��x+��x�&�'��96pk憨â+�O!z�g�W<�a�\W�U��r��lRI�h��s�Y}-~��cm9�d��:�}���|A�<}�p�u�gꢱ�
S��3�����he�<��s�'B��_�?;�����5�A_��I:�! �2�O__6�<���Ic:!��2�%����pFo�~ҫ{f}q�Ho_zcz����ʤ&їc0ԕ�H���gZ�,N )^ݞ���9{p����r.(֖��� Ӧ�e��.z&>��}���:��f0T8�� s������[JhEx���H˥��mf;�]�v�K��we~o龩#�/צ���ĩ�;:���ї��������ȃ咰���ˡ�D�yfA�������{�@��?p�O;Í�i �O���h[���R�Q�Ǳ�3����[C&Wʏ�t��qz��	����nb�r�C��j��b���$����u,xZ���p]��aCy��MF����7ט��j~����2�=���7���\T��8�p���Вc�G�
���i��H���q�ǔ���������<8%��ˌ=?{���3�[e�Ǖ� �c&���E��2,�.~$�������g��8������B_��[)�4�np"��&�GN��5����%'E�TBRB��'!Hj��8�S(��c�T��b�,�}q�L�Cnw��9���ܦP��[-�H��'̫�U�;T�������"7��-�-�A'���C�A9?��l��r��8�)��2K�!�9�A��1S؅��i{�"��-BS���Å��0x"j~G�j���~�8C��ذ{�	�v�nLUV���݁�m���Y�đg@`�z���GJ4ƻ�P>���Бr�D��o!K�����,8.b��
w��nN�	M<�	��ύ��h�3�&z8���x�9�`��pg�)d�>�:�&�h�w�=��kl��~Ǜ��Rz2r�Ͳ̛�@K��^Fg`>,R��!)���F�!��T]�:"��'=PR�Q �����Y��s${�|�q�d��F��F5�5��-wnH��o�6�����gt��=�%Ճ@�s5a��{���f���Kj�)r`��f�v�U�w��Nւe�"���_R���%�m1
�Д;��r��h���'��$�6_�6�*����d;�S�Qg���l��G�~�7�y���Xkf�q���aЩ���_����������zB�l'� o�'bn��慭��VGk̍O�"�_�U>��P[�#R�X�� :b>=���p>{��b���
0}��Xڼ�p�~ 4#����͙م��X{3��9t���G[� @�t���M�Q�ezh_��N�f��d_����|�7���eM��ˬb,,��-��ZO��蹭�.Vr�j&G1���}��=T��`����7�W �|��!;D9^F�Ъß�=��2�8�)�Z"�`� >�����ʙ�"���Զ+�t��@�����6��(��%�0���Al�6�$ܾX1�b�
DcZ�gw�����i����1�T�;Լ��"�(M�+�8_��u���{`].8:�{1!����Qz�۲�H5����gúb�A���`�-*	4 iU��>iU��Y�P]Wb9��IS4�b�|_�Ha�������
b��ǒb��+����N>���`OY\�Rn�Z�fn$K�U��y��G�C�_wM�ʭ{~졨8���bA	� 2`����Yq&�Y�g� I��xlO��r�8��S��y#��$G��1}���%��%��!Jk�ּ�G]����m|����URa]-NRC��@�9�p����>r!���"mZ�ײ��k���u`&�o%�mYPi���t��������R�0��C	�ڗ�4*^j�y_ވ��|���zo��F�v��^�����\ց�xBd�.y�ฬ��t�xX+0��;
"ÿپ�>-���6�����d���_��|z��ӫ� �R���i��'��7�?�'���K��%�i�_c������n����
*i�׊���k�F�d��]v����~���z��G	�U��}{�T��JE�\:��
Zk��'NP[��������-�[���-���a�NG��K��I�}��D�\Z�����z�p�I�.A6mð.8�Z��ab�W�� �LOl����i$��b��<�k��O�vS��Rr�Ã�y�sP+��/��ڟφx0��?�_?��7p/�h�L`tX����� ҂�y��ٝS���S%�TK����Y�|�QY�]���w��f��Tc1�	 ����u��ưB A���Wi���#��~�	?�v�FJ��f�Lݗ��ayXd�΁�m�s�A�j������������
o�0�~�����t��}�?}[�K��.+��������=l/�j�kkU��Ɂ��*�9�S<&1Ke�ZjdD�-VFbp��T8�%�"����al/�'EÝ��[�@�9�<ؘ�Ύ��������e�
�|���V�h|tl���G�5l�
P�H8:�(�V�݊���]�Ed8���8�
�:c���]H�̿��FY��e�2𡙲cCX����I���~W���	�c��U{�� �Ϫ�=����֛��s8���40�Ұ��:�4��?#\��f���+�<��d	!1%q�'i�s��Μb�Y���l7����8���w�������_J���N{����WH���f'~��Y��&�W�juh�ob�f�v�":�����0��`F�mrl?��,��s�D��<9 #�� PH��r\/J�B@�'��A=-8�$������J��č��鑭q%������6@{��I�] �-
Xl��:L��p-�q=���?'����Z�Wy8��`֥�Qq��)�Hj!�'Z���&]9T�h��������>]9?�$�'�U؋�Z<�s�Jx�]6ŵ~)�H��޲=�4S{��5��p����T-�ڨ䛣F�|U[�b�Lq}#Vs�g��'	�
�����a�>7��	BQ0�j��TՄ@��CGW�{l7&4Z�����A��!��Tf��3j��7I��P*�Y��F��8��L��ͨΉv7ߊO�u>�B�n��z����
�y璘� ��F����\���I�+���:�. ���R��4\$f�S�(��p�_�I�E+Z�8�'�����Tz�r͎D�?��8np��4
���;���U�x� 6�p��Up:�zZ�iME+:�����hk�(���ƜѮ�8:��Bu�v�k����~�?]:�t|�6�Y���
Fκ��X������-X�K	z�\������Wj�`���Ϥ�z9���m�G�,?�.2�q�x5?�W�z��~�ʧFo�t��䰀�Z1�d-k���\ی��÷F�W��N�y��p:�����G���О��P:��JQR c�8��k�.����\�92�PW�S<�4�?��"�&��r�~��3H|��y�Cut��V��UT/�K!̋�%owaq�]n��F``��uaRq� !0!l��	�ܘ�)�����c�'=N���c�DOP�D"H���SC0�K.˘	�.���l�gHtQ�ʲ ��7ߍΥ�:7�q���6<�Q���3��|q^��y^L%5�
|� c���3��G��ݑjp��J|"���mBL�y�ݕn����hOzpD��v�9��w�jJ�f��!�)�ޫ�c�������]�
�3���ܫ��>�Ad�%`�����ў���5=���.�{n8�y���Β�Z����pw+㚐����K�2�5G��ޝ�����������%ȡ��ړw�Qb !N���G���'`��kk'�}�h�,)�x����h!J��5���`o"�zp���F�w��
�@�+�G��z���3T�wu�an��b<��F�?�Gai��Ŀ�u�����M6���#��� ��r��SM��5zt��\�    ����6��̥��&t(�8�N��/�}r07s��"��hk&�)�m�2�D�/�^H�E�+X���4���]�9r��y���k�����b��~��*�� Q�(�d:=٦��� 6����EZ�r�9�Q�/�'v��h����XDA󐆾Pǽ�����]I���q���3�Jes�=]�*���pmc�mY9�����5�=���\fH�U}!��򃋚�4w�{lZ��		*�<_Q��$�뗠�]�����@ܨ�=�a�� {V:<�Y]3�򸖷`��,�����}if�P�I��7N��X�mt0�z<�/��N�P o�ڐ�/�Fc�K�'k�C��Ԙ���c�q���Y�W<umc���6�-�G2�d�ڔdwۆEM$�`��k�z��J�+ׄB]��A6���~���
��)���@��z%����,��s����5��7��X/��F�3$G�����^�����ޛvL������)t^2堁��hr�� �X웼�ށ�QF���2�M��桦X���@|2��q�J:����������ji�D1�T�zd��~����8��x\����Fsg�HvVt[�mm�h�3j���ڞɷ�#Fr�B��rEM��ƾ_�^��@+�0; ����K�W�[_cH��f�����P]�;���a<� �S���r��!?�أ`�уlE��aC9��6v�����'eo��[����E5�[��v�ޗ���r�H�U�N����ӛ��6����o����z�e@Ĝ�������:�.Q�Hq�ۻ�j�F�X���­nNQ�PU��� �T��������i5'�����~�6O8I'��r���B�]�¶�Y��|Z��ۍN�M>.
���g����6ƸU�O.�b6\0 ���/p�Ŧ�~��D@�F�Jq��8�+	�b�8���&兽'n�+����٨�im��Ǚ`ݽi �R��Oe�re�~�~F�k=���
��e�=���Yގ�T�Á�-�X�w@��E
�?��f����dj�-�O`�k%����T0O�/Ͳ�|%;n�m �v��q]�^E�P���|5��/�O�Z�'���;���@U��]wquۜ��s���1%�@jb{��tpR�Mu&�g�����qfM������Q�o|�A��о/�`T��ގ6X���hl�n�@��8 -}���k���6��1����ş�^Z�
�` ��X�`���[>����M�%%C�x���C��p��ȖE&i>{U����{(�+�X� q3���@?��X{AjK�G��7�~&�H�Y��XE!�=�
+�@��^��4D�§��i�n���1����_��Q�t�*�C�B�8|X�_|�_c߭6Hj�*��c:+�$![�x��U@�X�lyU%����{k���Zp�Z��a0D���#���idwYvRevhk�)��k���FW&_TV����B�����k�sR�l�j�ʇĝA����!m萶��I!zg�q�Ƌ��wh�{��ׅY�w�p�f�}� �r�p�$��k�({�O�p���L$'�ؼ�~&�P�-�������#���'=P4�21Y��HhV@]�4gc/\5�%��4,��ZA��^���ę^l�_�7
�24l�����f71Ar�U7\�����ܹf��t�~Պ�;=kb�@�ki�A����ă|:�?i.ё����>�T�� =:;�ă8��C���|�/��a#]sX��r�T�6����ш�����B��+�m�(>
1������,�k�99��-i��9�܅x�g]�!����M^i���o�3���!@$Q��Ƥ�V�a#/�;h���q���TҥJ_*��#uEj�ͪ<�2[�;�y��֡�yn�����a\�����d��5!p"��k����V{�a�*��u�t-������ Gm�)s��o�U��=���5IN�C1�Mw7�-��2r�@�������ǫC>�2U{-A3L>-e�5;X���Ʊ_s'y�Ԋ�Ev��Y��{�/��;:�Όў� ����C�R4DEB����.V9^��sI"�wKô�u�,֧�����7j��w�Ne��'2�K<�B=dk;����+����n(d���.D�#5��0�G����E�_T:$>�+����zo�>o�u��K�qފ�_��i�-M�x䷹sF#ɦ����(%[��]#��::� G�����9��Sy��=i��jPF|�����.��Ra��v��P:�q^�3z����?o��	,�	�������iS>@@S[�o�~"����弄��U��N��,��Z.姸��J3��̄�&Btl���(�O��D�.	�S;�:=�!�Od������3�����S�Ul�����}��waz	~����a=1���k�!cC���?���p�0}i1!�����y�\�v�*)���!��1 O{|�sDq�;���8�6��"�ă�d��oў�`;3z��Ml.oP?���`��{�\��xS�k%�RW�}�_,�<{9u�����m�A 2ڣ��#�S`߇q`�]r���]���p��
� �K
��i��Y��)s�{�2J�atģ�J�@�m���վ��������B�o��������M�����k�~l�x	�4��m�Cew���)A�cğn�?�=�o�=��ڄ��^w�x�%x3�뜃���5����q�"o�PO��m���`�ӂw|{U��!<���Б͚D{H*B"�2z�͇��u��H���悬�˭.���A�=/!ǥ$��Ǎ�m�q���@����=�a��j�e)4C7��Kæ���˒�|�R8sq�ilW���Pt���[��~����C#	��3�㉪��h[�pMQm⠯h)u"��4�mf9U���k+,z�\������z0
�(?��'=�n�����t�Á���3D�Y<���qy�jV���خ���
��~�-wn�aw�i;U6zxdZ����%0����q/ò�����y�\�Yk�������ÍxL�z�׼��Mq��w�������-ړD�B���@v��-��n��]�2M����5�v�EDY����Up�]/�����{b���8���Sq`�J��c{�S�[ؽ��ELب>{��_��=��b�"��5Jҩy)�&B����q`��>q�����3q�S�o�}�߁�d�ك����*��6^�ӿb�^�d��B�g@��U�w�L�5f�W�/�
k̸+�!?��ߡ=�A�gj*���8��w�nU`���>�v�1h�����m�ZD;�-842��ն�?�6�^���)�7���s$���eC⁘�t�0����|���3h+:�5�񹬕 ѕ�]�Wc�m�C�S�Ѷq�!�+�'=��گp��y�ͲM�A:���y�6K8��p�lty�X��830��*�/�͑��
-�uj?���g>��`6[,D��x�o�QdΫ�Y�>����U��v��;(��YBn���|BXzH[߅��������o�t�S�Wj��
熂K��$y[�������mg�=�H�+ys�|���!���7���� �>,I��wО����w��I����)�u�ti[56[�B0��H����	`4�ܝ~jw��D�k����}yN�A{�gpOѸ�Pf��Y�P��fr��/�"@MR+�[�TH��ԉ0���L��*#����F��X��0u7��">p�����a��H�y]�h�r����հ'P^��+.*��=0��=o�g�(�@�!h,�m�
������ 4t_ ���p��d�ފZ�{*U��������G��<���m΢�g��VF��Zt�	+?ܔP_G�" ������$�s��$T�g�8S�.�����x%l�!i n��ꍆz$T>�qo/6Rd�g���#�m���v�"�iQ����8lzlOz�r�I;��=Ss�W�P�3�A�Rzu�C`�:{vS�I0ub̻���u��c]���wȿ��v%8�Uw    -���.������X�bú.��3��
'�J��E��Z-��Uobb�т8E�͒�S�?����X�w��:-Cñ=遏��d~B��|xn9�Y2�9w.����I�ȣ+�0��	%�	�J��aUM��y�_�SP U[~����۵���9�W�Q�hQns�RH�3�!�omJ36p��V��AYʀ�k�헨)�8ܞ������OZ�9�Z��؞��I)�y��L�k�Y�8��eA0rF	��! �5j%I�V����=��ػ9��&r��b�u��&�x�}�)�rYA"k���K*u�"`.#��R\)��b25Yr������]]��G� ��s�R%[����g�:>�t!�8"��3�L�3�u?��m����)��
}��2?v��4�#�M@R 46��@{���� s�
����>+���%��N( j	lYq�#>��\"�ԫ�]r���E��;x����=݁e<���:h�0[�
�͑�J���Ӱw .�x�^/�hD;V(ω{�|�����o�=�A�.bK�D8�����x��$��`���Y�[�m�T�O�g��Z��ݪ/=w+�h������Y����7О����@����5�/SrS�-P�M�+��#�e��S(����\���V�m%�Q6��1p�,�m�I�Ez�"�4���ȟ@W��bƵ,k@":���<e�i�%���L��:<��B��~�}{�,d������1��3�37�a��>/��EƋ�����������q{j5��>lb|y��
����i��F9��=�A8s��v�T?�<�;��'���-u`����L�yd�8��9��^?��0l������j�§����z�p�+�?���L����:����w@�*��I��>ٻ%[��BG��Y����3E�M���o�=�A�֕� xf��ĸ9^=�����N�5���f�P��d��^�A~��H�y0 GG�=�v�I!��ǡ!G�ݖX��{���ϓ/�B65�e�ꌯ� �vn�=�Kh�)@�Y+$������_X�봘P]�!�݉eq���S��lb�Y���a�"�{=�.%`S>;O%��g<䑜
:U�_<j��j� D!$1E�YY��7О� �� t�Y���P�ī��s�ޮ�X����>ۈd�YbUw�xQ��,�;	o��&�����m���m	<���=������l��'��|j���{�̒,�{nA���D�9�;G���橥t7���B��1 ���BG�i�"_��(�o�����X2�v)˪�x�xPv3�J����N噁gٲ�� A���6�F�<���;D{��M�ҳ�V�u^��<��x���1}��- �3�t\Z�j8{��������O�#�/��6�0�B鉿.w��=p\˸�	�Y� �y7���������0�0FCW�[��\%تL�y��j���}������4Z�a����Ԁ���L\a�M�F���������jŬ� �-3D��4��rֳ2MK�� �;}�' ��c�(=��W(�\Î�A(kK춽nR@! �p�%�n�E�Xk��^ƻ���/�dN���(�TƵm�7�W�B�$e���>�}ޕ��U���<k;�Bҩ\,����ګQ�8�^n�V�tg�u�'�&z8|i3z�3��u_(�_�=��}M��9͏�����)A��R.ShR��K����v�p��X[�7z1k���5%`���C_��aC]�`\}�[������C~(�G�s�r���2)�-ȬN�"]����������t�Q �Z�m�M���� ���%}�o&�+Գ2#x���Q�� � oxX�<���f��Qr+��D��
����!8%Oc����R���Ji�OΎ?��E���&˩�%te5"��}��-E�kY�a+�F��;￙�`Z2��~}{op	��XC( b6E��Rm���\��}T���L(��Q�gc[P��;�����g���]OJ��� ����O�h�
?���=�Aj���4�;;�v�'ei��d�4;%�����(K3���F.���1�Y���%� ���>-���]�LzU���b��3DF�j��:k���[˗`�K���BR�3s��j/=M����^�K۫��)ҍ[M}��C{���bnpR���*���oc�\���-s6H9K�{h%*G!F`јѝ���`�q�	�P�IG��gG��6��iv��;���g�=�Y6�t$�A�k^�����@�S�f��B�i���w�!�Y|���}?�I�=�'=pѩ'��i.��e2o�xN{��s����Y	ɕ�`goB��ܬ�L�\t�-�i%�ݭ+��5R���Pԧў��K'�w/�rMkRF��!E�@�g̽���+(�g����<�Z�V�Q�H������������&�����'���g�}q&�0�{\�V��G�(VE�[��Z)�aj���cz=��X�wT;D�R�B�[O8���w�_0N��7�3�Aa��B�3V]�KY(��z�d�d+%~]	Z,��� �*�в�F4?`����F��&g��!����ZO����kfE��t�i���i��ɞH+%�v"Q�aA�P��:�.���۔m5jA�����`�'������ﾍ�h��^��:[o+r�p��P�}ެ��`�Ƴ��/���Q�z����������z��ú74�����r}�Q�M��A�)��}{�c�r5|&\7�&����KC�-�ԞU�a�A�ey�1i��`c���EzxO��(��Gݓaz�V�:��\���t��*E�}
V�|�(<ͫ�T? �6���w��B�=��b�m�}R�}�=NB�͸��,  t�(6T�ZA�+�Ng[���4P�U�f�����Ѷ��;�*��=��ɫk��[�h;3D�S���ZV�!I����R�%,3������q��S�
8r��\+�#��;�4N� ��5���wWP��qZ���l9��^]��Wn�^Ϋ����)=�����`�~ԃoh�7��k3���A�U�<��\1d	[����.�]Z&(�
�)�v�����G6%���C��iUP��i��uu���t�})��M�����΋�S,VF�M
'���+�켷��z[���z;�/W�o'������dX���\{�F���Ct�z�����
;�A��l���S��e��KJP�[g����Mȳ��K�	����A���"c�X��d(��A{��p�`�⧘�3Ļ!�R&JZ��`�JR/������� �kI�/V�k^�t�;5����D&�~"�3��8���/�\Y<�6 D$�%E�vy5���,dw� M"�`��OM����v\ok�G�������)S�*�ћ@�9+�Rq� �l��\��s*��M��K�V�����F�n	���i'�_�������v�=
��]��鱽�GZxB@�{1�sy��8�3�䵐�n�8�_��W����r��j�i��ZjͮO��pL۠��S ���^kv�#A�}�b�s����3�7 �
V�5'����L���f��R�`���ֳa��������h@p��~}ٚ@�H�-�[(j���P,C��K�(��m�z�J�-�����n3d��m>r\�7���_jhX��B�">�&��̯��h���V$��'-���v!@��{\d�-�Fh�b��W�[�t��a�С��
����aR��hC+�B%�X.���d��9)�Ⱥ�Pn�|�jyHA��P�Ž���m����DXD��A �t���{�F~�|���'Όr��
H��Ͳ<Pӱ��l����*]<E���KKδ:�)�mgx�a�v݃�e����`��K�#^��:��,sO&O���[D�d��3D9&f�c]��C�^7s9�m��_wd'�)|-"�����i�hц���y;�v��u����+���J�]!��\9`<�w�T��a����<��β�����[w^�{�4{��zM�ߡ=��97�JA�; G  (�P揳E]9�.��hN �]�n�+H[��==9�Ω�K��'�qpZ�����]X�/K�������.��S�s��=���MAS��+.��|�i��m\�旓I�si�ol�%ZħQ�����&6( �Rq�s�U;4�=3Iv�3+��ѦG.i�D(aX>�8���[!�ΒZ������#�kLwQU:�D!���m��_j�8�^Í�B|�[湸�����=,P��p�ǷV�]�|C<H�S����9򠸇����m��]��hw��¦�G_����=
g�v/��M!�Uw��I͟�;C��Н�]�.�z�0j��Y�`m7Q<�v�Oa�CǸ�^A��/���DK^�+���r�q�����n��T���&�j1B�Oݎ®���>��ݣQ����FD�����о��sv�*+C�+�u�d1��h�:�����f��5V��#���[�M�k�]Z��J�B?x1���h��`{N��kϧ�:%C��L|3��gW����DǷ~�"�A�"�҉ĝ�tJ#6�_�����[NW��l�de������x�:W�(!��f��i�QL���pG��8�N�N�^��_�F,�C��6;�-�:$�<S���x||v����mM�e�Jܶ�O�B����	�o�}ݓT��,����M��E	.>_D�[�g�$�)��UYzdk{������Ct�բ{񣱄�_�w4I����IWYu2rń%V�a'p��4�&�.�noDG�5�P�fiV;��׳`Gn��3�"�xx��oi�O�>g�?�I�	JB���
	N(!y�;\�s �).N�Y��if�rn�,�D��aѧ���j�8�MFk�bA՛8���I�9��X���q�����.*�%ۨ�D�n�d�ᦌ�N�����5Ҽ�����C�d��Y_
���<F��
��\{_4���>o%6ڦ�B�y3[͍E�.�����0<3�mM�.Q�7s�����R�B	�MF�0 ����5�����)�%¢'%��O�� X��Ja ���2�[�Ta��8_�b����*\��q`<�{�ȧ��0���W�m�;�~�&@�I��7V!�
\��M��i�L���%j_3�f�aU�xXkX��oc�}+{���^��u�F��0>�;�_z_��PF)�ώ�� E
{ެ`�zL|���*�[�����,��7���|��0�N��4h����طjO�(z�A��!I�OF��Sg�5Gһ�f�C��>�!�^��SX�\����\�5˶���g�t䎽."���Y�؆���m������h�'�p"=��RCee���0[؅�E��$�M1#<?�(-�JN��類��O����F�|�.��z�'�G�k��Wtw�H��n�ڵ2��U�ŕUJFůȇ��c�
N|�U|���� 9u�­��G��zu�gX;�=�1Ҥ�`�,G�Iȉ�)��RR����?,�\`E(jg3 $���������b��WC�	?+�a�X�qa���������/{����ѠV0�H���������ԩ#�P�iK&PHjO��^?"uM-�0L�)d��[F���0@�Qu����0+�����-��ъ�r�{�K�K�-X�틩AR'C0i;�G+�|�ؒ��xǛ!�u�]A�d(3���q�]�Y�"�$�v�1f_��@�9C��35N���Zҩ7-�V)xP�����m5��%�q����ۣ5T�<�^��Ty����5ޑ�(J���9�d�-�,���?_R���'�<�+�H�x���e�b�%���I�ۨJX�õ���v�����6f�kk^r���<��t!pU@�yd�"��$}˱�3������76�'��#����`�˹��~����e�V�91'T�%|����Ps�����e�-C|Js_�2�EM��,w�����7(6��I�����6�z!����<&gGS! ݑp��z4[%��
����*���p�ǆ|x���<��О��(��2d���6�-_�#:h�YښȜ�H���EVi�*���V�!{���P�L�z�̾�_r�}�=����kC�~����I�F          i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�            x������ � �            x������ � �         p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      
      x������ � �      R      x������ � �         `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3         �  x��Zmo�6�,�
}:�	�.;�ǭ��Ř��K���X��-��!�~��G[<��
�@�����;>wG9�k��t]r���,򗊥d�̲&%5+��|�/<���ϻ
�O|�����*p����ϖg}{?v(��e���?K��։ubo����=��9�Vԙ����3B9�V�2%������3�EM��+F��V�=�t#k�=�"��sö�rC���B��uS��n��i�RV�w3A�֠p&��X�W:��H����`_�c/R�*'U͉C�̹�	����N�[Rh�t�a���P�!��<�ki��)�{�&ֽ��v{}G��F�<�*�����ȳnE��8�E�U+ā�l(O�)����P�/@����a�3� ���pō8�B��_Q��������iYT�?_��GgVdeV5K����J���v5��wϏ��ѳ=�O����<�þ=����������w��J������ͶK2��O��}.�CO"������4g�Y1�<І������CoF֢�j�Tm���v�J���	9�J��uY��\�ئ����׳&ww��g>��=͝��v�0�-�]�5�_�C� ��>:�fC
V3*����ks�L������K�k�"s�$��&�_[^�v�х�]x��EW^x�/}�f�*~�"/6]�{�r9��톥��0��o'�5�?`;���{�4ޢ�n�6�&���ʡ>Bh���؀DG4p�Y�ťJZ#�n��D��8��p�D�ԁ�ұ��.�o�%�t۴Of�'	�Ir�s�����`�����5�A���o㝨~�$kD�8$Ն��U2�v���-%:�Ikx�5���@���NZC*d���ZddA�ʙdV�]�_z�0�j�@py}9�:���P�N !ܥ��Ϙ~z�������d�
F6%1u}�b)+Z=x=��/Τ`�;��.DQ`�c�V��@�U]��4g5M�k�)B�li=�:
2���h�^"T���{�НZS���"�g��ZPA��Ә�, �����?�lw)����uae�Oi��d�����P���ف�i���<e��u�a��kP�{Gk��؝���t�h�ƑU>����&�S��h�/�#*lUa��Z�A4��9�h�Pt���Q��.F�TZ��=[(�T���Aãb���06	����SRs�U�U�X�C�=S3k������@%]Z5�2.���C�@3�*.�q/&�ǁ�?���f�;��e�i�>4f���Nn�}US����Ƹ�Ž�&A�Ŷ�*�rĕ-�3���`|U�=�����'�##�к�]�=�k;yC�X�|9j~�LV��`���q_���v�W^H���!�9tm^WY���ְ��>� 0�%f�>�=P/Qq��Ԟ���r�;�鍏��]�jݽ�
z���z2�0�{$����0���{�P�ʥ�Rb����`� �s�|[�~y+�6'$*d;�V�v��\8x�!�6��h��\��@�i�8�W����t/�*F~�G|��Q��o>���*���/Z�����9JP�V��/���;Yq�6k�֍�s-���C�}*ΪM�sO�<ӵsO
��Z���&4��gq�OeSd� |9��	�)b��sVdMU��9�5�v_�:�͏�o��m��z�D         �   x���=�0����W�/�͍��ťRpu�Z�ڥ��٪����Cp[�~}C� I�R�RR�d �DO�$M��O���~ܧ��e�ӞE�T���詸m,~�cF�M�� 5:C_��m/	�i4�Y�u��Xy�u�5B��a�eݒ�����C���k��ƌ��]v���P��oa         �  x����n�0�竧�^��忸�i�[A��"�T �}�8VD�lm��<<W�p���X�Nnk��)�j�kõ�p��°�?���l��@�L�ݷ۝f-�(�(�a-�2�樇÷�/<���m��3�A%����.�`�pk�v�wv�y=oH�tN��v��,`c����a���]w�g%�Ay2H-��$霵a��a��+��f�Jh��/��q6�2�)l��rB���%�s4
6~��0�V�dZ���⸾��we���P}��Ɖ�qs�_N���n��9���Sq:�`�J"���i�Gc=��[2\&��"nD�a��7�
mDM�59uD��!+x���)��V�
�i8=�Å����)���Y�eL�<'���H)�|��vonxM��D+Is����E��N\��hL�x%M�Uy5<>?�./�4{����ߤ(��
�b         �   x�}��N1�g�)�Wgŉ�䲷#K;�A�"�V���O� b������=�./��+l����ɅKQ-�Ig�;-��O1�y��ؒ)�ٴt��m[�Zbq3q�c�o�N�1��P�bYz�ܲ��m�H%	V��bj���\Ҵ�4��X��\�6cS�p���X�X���)��T�0(i�,=Evp�:I�'���(2���ގ�v�L=E���s5'G5���L������         m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�         �   x���Kn1�5�"��-S�g�1r�d��hܑZ��,�	l���$T�Q����/��V���������L�4��)[[�Q��8��!d���Фѩ���v�q˘��uH4wۙ{��lg��$5���(�%'$�W&yA�ntv\�����Q��>Y�F��?�:eD!}�(J�v��SF���+�2Ů�sʰxE��ğ[Ջ��ǔ?
3��         �   x���OK1��ɧ�{�l&��(B��c/i���&$��~{S�J��z���{#HӬ���u]��&e��.��k2θ�31�X��\j�`!��)-�j��Ct��ק��Fp����8E��NMQ����\��;��aL٤�7m{�a�mie~k� ��JݼPIV�ޤjmRj�ʲ�j.o<O���%J@�(8�
��?$P�q��#�֛s�۝7@)� �a��      Z   6  x��W˒�H]�_��	�̄��DPy	1`	(���O�L?����T.�$�=�d�s��艇Oϭ�F�833m�thd�z�_�x4a'y�rG�@�E0Fn��9����MY\|[n�����+M�C�$�mE�ZLvz6�*��̝L�]�.�ί'���^��qgJ��Dd��x�ܫ��+e���K���e-��}ۏVI��-[ģ��@�P�_ ;�܀a)��<��+��<��2�w��4�zVIS���N�ĕ���Z	�a<�%+�'|�|����E&b���d��;fy�B�V5�feq��Dc�����t󣗝�V���!D�F�3�� ��vA9Z΋`��w޵gL�Ŏ�9V;��p_n�y$���t��&~@��b�'&r_Q�;�g��vB��]�b>�~T�q��س���s�w����f��[Y��ku��'��(����U���$����II�hE#��6y�赽d�B����$Hl/����+A/ZSe}.�4R��7�S������ C�yt�����ߟ��El�2��U�0����Iv�3�i/7��4�F�I�+z7�q��a�.�a��������chCJ��-����C���G�u[o	͆�i��,B�xJӶaa�φ��������$I���Լ�?�`	_ `~� �����(��
��~:�ȗ|�
%"�b;�	��i��/_������vR%k?4�%�X<��G��A�g�z;$V����)�����+�����t{��uų*~�#ҙ|�K*P��Q���[W��n��r�2�7��t�ΪK��I+?h�O���Ⱦ�$��x��L6��T;q��-�Olhu���q|)r�?��/���@܅O,d?����qxda�d�,H�����$w$E�j�W��MP�
�b�z��8�Ja��4���q'���<�{d
��[�H�0` �0��L�N���Icڮ@�a:.�W�T���U�o�%�Ϛ�N���KwQg+��b�-"�� �|���r!��ۙ"����rp[�ƴa/Zҁ�����q-�#�=��!֌h�N#t1Z��(�y���� a �ތZw�~YnIL��]�Z��t���ݺu�K.�|NK�D�7�'�w4���cHc�|t�jm�UE��K��*.�<DJ�K~c>n\2C=n\҄_q3:��K"2_��4���;`�^Xl1�T96�y�}�}o�O��U)��ނۭ�����=��-H� ������Ϭ�lަջZ+���l�be>,8�[���-����6<�3v��g�c|���C�!޻ |�áծ�Ł̖y���o�D.C�jQ����k4OQ;����a	�<Ys]c,��뮝��|󍆷����8�GWo(�_�<K  ��"��tI�u!�6�t��bH�t������Z�#v�
������x:�y�	�u�L��M��?�Д�_��cZ�dH������ō�[@C�P���(�kgíγ�vM�5��$�^�4w*�����Hs��x��ѽ���T��;�.O����Q�zK���}Y̮g�����K=�q�UZ����T���څ         �  x���Mo�0���Wp���Iߪ
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
f�=΀1��(��s�Dܗ���u7z����9�����/(�7o�N��K��d��x�"�~�k:h�&��5���Y$t����gQfw��0��#�ibF/���K|%*����ؙ�����p���@3�a�,�ػ���[�d.�{=��[�c�� =���_e���e���2�2-�LESi�Qm��(3����9]�&=y�V��ؒ���8�kY�~]����PVt����O�e-P)��Pl�<9�x���ȕHAi��)�=.'*��=4k\T��]+N0׵��.������*d�����Y]%eY~���/���loo�o9N      #   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      %     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      '      x��]K�%�m]����]%�uw^dc�� ��nچ`�x �>$U�b}�\�==ӗ}�$��CJ]���ϋw>|w�O���\}y���o.���ZH_�������q?ե����Ú���ZJ_�'����58�"���q�R�z~K=xp� �\~ż�
ܖ���#p��8����5g4����CX��=���+�����8�_I���:. n@�o��dj}�覔��=�W�__>�!�ݐ>V�D��@O/�k��̛��3�	=�Y���z-X5�)���G���^���
dLʚ}Я�ݻ���Ut/���P��ҧ;��C��=�2�IχZ�-�������D���^Ѧ�~��+��p>-�[��"��Z������,]��il�YҘV��mȞj�'+�܌� �������d��dLhMc�ѕ�1:Y��=�F��eu�$|�M6.��Y��Q���M����)��zt ������B����N6�Ď���Z���� _c�̓�q��X�<Eky7�OG�>��ɂ�v&3�UΖ>F'�ZƱ�J�f���3���^���+�Goq����I�>9Y����ٓRS������#'+W�@�����ݖ>;Y�2X_��(Qzt��M�㱓�+��G��w9N�Xq̝.��v.���أ�
���ju�-}<�d�쉟_d?�A�kƠ�M�St���;�[�K)Cq�_J�=8�mCS�@�I��ҧ뎞|�Y �GG;ǡ_�Y�FJ�sͲ�����6�WRx8�a�G֊�x�9?A2(e��п�>^u$t?�����õ��M�c�H��#Omt+��������L�y@��{{�")itS�X������;I)`L^��-�
~=2f
Ne�X�#���a�4��)}:�H>�uy>H^�ɇ�5�E7�O�<���n�,���5��O��ĥ|�y��!3�}�0��cok��cQh�-;��@I�|C�����o�P*-����}v��Hbdﱇ������������n��w���w8
WF=���R58��1�J#���˖ ��.鑛R��}�5/�9��JAT�e~8�섌�I�D!d��O��?4������y܉B�w���Ȳ��в�4+k#W�lK�Ǯe��Jv��4��A�ƻ�(�b������>o$kFj<�]yWE�Aa�i�B:�����v4�2�0�~֐i*��B����x g
���5���Q�X�ܙ%�%��}qH&�'YJ��X�Rn[zkg%zͤ�̱]T��J�h�I`J�1��>.�����J�L~��q]IoMx����N�u/��+�*ڢ�R�~�<�~�YO��TG�z��R8-)�����33h:����0rIyi���
�fKoM<şcڽ=�X�VL�2������bZs�H�v-my�mylo0FPfKә�͜]@=۶��c.�!`�%U�c�Q�����ơ�1�p����-ER�J��������,g������F��Q�3�Z�ժ�m�[Nw������?���)�j|n��d��\3��2r^_H��뭱{�$�]��g�v�z�0-�-��+ZM~�q3�l�.P�m�\Bʄ�%� ��]��tLף�4ބ�/^@S�]��6�t��K1�3�QR,J��X=�4ܠ��dM��ZД�R����҇�x	��h͔>��&4�e�SllJB�M�=t�K	[�`2j���4�ښs�	���+���嶥�s_5;��ͅ�Ø�`hP��#�¤��x���aL)�]�B֔��CgM��r.TGkJo�s���\��%��\ɕ��>���=���l��\�s�FU҆ʣ��/8�8�,�8<Y��5�b�V�Q�i�����cT��>vt� �2C��d�L��-�I�.'1���H���-5��F�[A�$d�g�@�W����F��G��eG��ÚTt%���'��)�
5x����������tt��O[˗?I�Q�\jr%�=�?�&I�ͤ�r1���;��D)yr�� ��q�<kpS��C�͙��� :7��NX鼒q4"�Yz��:p<�)zj���1����@g���qw#8��L�據uR��g@�knKӧY�}ŏ� ɁF�Y���Ư!��R�R�P���Hj���%Sn/[���|23� o���s�-���&���a�#���!xv��d�0�J�?��MV��|�|�3���h,�=K9��4��Z�IX*6tf�Q/�G!�3�8WN��E6o�@V��똧����u�]��29�q�ew�4�ti��A�#1LS��C�rdX/��� �]/�Ij��[���-%��8�C��1v~d��7kȚȴ��{�V�L��:q������۔��?ra��8Ӫ�t�#�u��&S�l�}�2�]�9����-�9n]+d�R7�V�pB�Y�i�M�3pOyKȮ����\��n�-�c[��-(�ӣ?�N��-uC va[�=�R/�rZϰ��I��&�4��σ����޼P���+�@������]�(�2jg��f+ɓyh�&�fJ߷R���aH. ���
^&���Y��XT)Ju��Bj���C�НQ�7���'hV���x�˜I�91��a�a?��:�vW�������	<��n�-�).jpS��)Ƣ�>�A
�q�T-{�&{0HaZ�CĽdN�j|Kx˄qg��mOqcp�n��(g)�ҟ-�?%?Ҫc�%"p�ѮKh����=n�_��� M"�`1��֦mQ�S�*J@e��5�T���86pTE	0�I�"�.�"�-��Qc�}�#v��yH�ZpC:��uyU�HW��V�� w�pU��0$]@k� �nBc�{�M(ї�5N$b덢)6p�N]�8�9�3���P,�M~�s�)6�H /B�Q�\-'g���s������~�j/��j.��w���/;�9נ�*dT��3��Q�)̐I����Lv��� �o�[P9>��o*��W� Chx)��I�`�2k�]�L��Y	
�֊M��޲�8�IȜJ�S}~�E����ar��3��O
�vm�p`o��2��+>��2�'G���틶���Tr�Ѵ��������?Gu;��F��]U'hX��fKǚ�w�k"���M���O�J���Ė�R3�+� ��|c�I�ҊS�����?���j���3���jz��Y�ǥoSJ2E�!�D����b>Y{%�>�lU	(�?H��[QU�����UR;W�Q�|䛼�4����0V��2��O��7�V���+!ȸ><ľɸn���y������^S����f���Vlv�9�fJɔ>`�}�6p�7-]I� S(Ұ�ڳc`z�:����Jw�o/�@#�!�x,�u���2���}˪��;��lb�|��R�O�lk������U/Y�q)��{=���g�l׃&���|���3��m�i�A m�q���t՘�ay�����oqSj4�hT��K�(�Y�>T�eO���A��g;ډ��ِű�z)m!KB��V�����R^Kh	hM]���F~��<j:�e1�3���ﱥ�{�$[�^(�_�K�-�Xt�����@K�z�ܕ>R�u; Bc�c1�R��cڹ�<��'�u?�������^���8N���9���ZzwI$�wLj2�yhaW �HM�a�4�0�L��N��a';�ֶ&������\]�(=���K�c�6�;��W��I�#|MOЙ�-���p�ӄ#9�X�~�ħ�=7�MFΔ�\q�I�9_�?sO�E8=�rz!O�L�l�_�Í���ϑ.�G���r��;p��9E,y~�Yx�����Wv+�y���FG>$���V�,2�[^W�t�~R��t����@I���>�Ȇ��c����rw��.z�j���L�Kej$�t/p�_�Ȗ��lu�S0��4�lǣ��
��e���6���Yt�� �v����b�)��:CZ�0����?f'9q����8Ԥ�-}�	)Q�:�4۱��� V<��ŵ�YH�4V�0FI}iß,�h;e�h�!M�[h�8�l���ܯZ�^p[zk��i����WT�$����
 �  a	������S���h���sB1�q-teF�OvL^ޔ���q!O�O�������v�Ĝ:��!�5�|I����K�YM���[d��`���
��*r��#r�{'�f�
[�[�ɧ�4��o��'�?�����-rQ������ǯ������7�N긘���l�����qH1��� �h����r����[���XW�X�5i�=�����jJ��RQuat��ѭ���m��tt�7���	�ドn	;�5�����?���o��c������o�����D��a�t���f��)fw�5�0���&��õ�_I�%����t�۔�킮���	qPao�;�
��-���{߀4Z�D�!-������j���s�c+l�M�Ұ��G�s0n�֯W�:;�M�3�F��ӞЦ�Q���b�0�6^�K�-mG�U��dK�����~��sH��;��d�|���	�0h0@�X���
���nx��W�=�d/K��8����B[����X���?������]ndq:ػn�}�-gA��V�S�A~�DO.�a2��e�hX�������P�ը��9�����ڂ�x�S�t�E��O�;���.�0m�h�&�0���r9�ut
��[9Jn�Eo[��Eg�f�Q�Z�p4���-$�2�����t!���Mv��+�F�I l�u r��4jd4i�-�F����xi�T(EU�"��<,_���*��UHf����XE
e
�M)�s_h�ȃd"�wܓ��H�X�zA2)��1倅W�𵙜SEoq��}�t�&�PP\�`�qb�M�=|9H�j8�MÚ�������ig9>tH~1�0,Q첵,z<����H	z�=��H%�B�ѹhK7ʇ�.,|3nPTs�k���:��e�G��K�8��&�ҝ�������rk Ǿ���$cJ�)��NT�6��q���\U����B��o͚Q���H�a���ԋ��5�ѧ�s@�����&��r�@����"6��G�� ��i�㻝�z��G�����j��QF��2xi��N�ظ$?���A0��߃K�>�}�_�m��}���}9��9]�ݠǧrwN�k�-o:�g�r�n�mq����:o.Szϙ�=ɼ'�/r�3�ژ�m�iօ�@�ڴ��;7�	u
4�3\��r�Fv1	�đl��8.�]��io���{�#�w$�D�1��h��;��ӮL��r�5�	����sU�-��9��,��k�����t+��.��xк\��G�$�}�O�!���i�%n#�e�r��ޮ��Do�������+A�&[7sJik��1Ϯ88g���h[�����B|���N�*������8���Uk<�G�m�l�2���l�/OI|�=es�G��6�Ch'm�LD�)Uvɗ{f�7Y�(i��S�zl�Y�{��c�o@*�������Ȟ��$��J�w(R:�������M�$zosI�}Q�UB��_sI=�7�C5�rM.��5k�������a� �Sّ��F&���c�# �?@߰ rWCv�c�F���Ϭ�p��x�����Ú�{q��V˫���	$�j��q�2��}���{��a����G���@K6w%�R��l�\7��R�
�좜�
O������P>_���P�m]�@�f�!�Z��sȷR[��,}�L���2�s�2�9Y���_T*��4�R)�4�6�x�AV�ѓ�eT(��e��̆��R՟���Oڃ˲ݓ��)�;��
���5���*�&��nv��H�2�ub�ʀ,�#R����`]��
P�'ϻ��e�	98���s(��9��vcǊ4�`f2��duL�]%��֗�5�d~L���L�-���|&��M]�_!�b����mpA5�{r��F]�F���R�p�zB�t�1F� 嶥�Ȅ+�-��1��r�V��oN.Sv{%��|�(	l�����/�u��oS���}��%!_&5S��(1�P�sW~l��9���Y�{kj�K\*���y�K��V��Oh�b�9ƊkT�3m-��΂2�l۸��[��������s+|U��^M.�(T��� ��G�y�V9��tr�4���m+n	���\����	��>�G���˼�X�p�[��ϡA�[@SKu���c\N=�a ��@E0 7����G�������ؓ��s&���ⷳ{���Qݿ��2�|a���?�������      )      x��Zے�F}��
�7ZQ�R��3k�����Ǳ~�z��ڂ������R�^�ػ�\��QV�̓*g��������<��s;�N��f�XeLn�e_[�:�����!�t���;��汩�S�����Sy�\��tag<���wB��-�(L������B���WB��d�3���p�F��A>���+��|&�t�1��9�$S
������N8|��a]�t�tI�T>F&@���B�L�#�"�T�f��j7�����{���pd^^(�	7�%��X�%��9�7l��#�OW�,w�ñuph♺�gz
��*����k3F�VB�a�4��E�M�U�HO��O_H%�ߟq����S�������ԙY,@�@pd�X���xx�s�g?֧]S��є�}xq�wO�S}@�橙�� K�H%晙�� 5�!��c}.WĞ�'���x;�[�r�:�8��k(c+�?��ϥR$��3�P���h�{�N*�/8�E��4�.Y�U�A�c�\d�d�T�d�?���n�|q1�aߗ��W<�B�B�L�<�ii%O*x�1/9{{��O8�~W���������uK��Ȥ3i�3�O;����x�B�����1������|�}a\�-*���]�:�B�K�-/z�^<�Wo��bt�̔�/!�X{b�Xۥ;����3�Wh�\QFx3ga���6�^-��g�:�ɭ�Z��J�E���[f�{��/P��v��MۈHv��{���k�����;�������|����<WG���7�N[z�b
�|���P���Y,��]�1Ԝ����Pۥ��턛�KZ{x���DD���V ��}��I�q9_ߨ���ISǚE�D��k~�?hq��e!lfԂ��+`�z��X��at���"�W��X6��Ȕ6��H�X�oS�ʕ�0m�F�n:�>D0�7M��h�����E�>�	�(1�+z�lч)�` ��UƹK1�s���Xe f�8��Wx(ο����L>]aE�ڸ���s��C
�tcÏ���u��2����K]ť�Q<�,�s���\��nfl/1����w\QU9�$��"a��;H(�¨GUb�0<E�=Qn��3>tO�ܓ�A�A&����ؗ����q��".�D��΄���\��$��f��唤!Ӊ�+�������h��Ի����C�y�h*�Jҽ�<A��cD+�����6�2$�Nr
��)DC��(�\8{�p(��8Nd���p�GQ��\c�B�P3ߗ��(h�ؔ�(��Lc������*A#�Cj1
B���&�m��t!x(㓛r�B��p����I�09g��F�
(el���?��6�������Ь���=f��t�'����=���A�v��#��1���
��}��	��Ak��Q=R	I@7v�U��#�Ci�}��* �2$Mę�dY4j�p6��(l����B���Kyڭ"HBA.�.٠�5݆�����dma*�W^@錺ӊL�f�����\5�(��� hj=����FEo�ۨ�~�|8�TUw$:D����UK�2q��dme�l��FXC��Q#԰��LI�oY�m�N�����N�.9�ݲ]�piW!��f|����f�7!�T��OK�?�X���r�ԭ�Д�yi���	eH��C�P�ӊ�d�>�>��<��$k��1Ȯ�4!�� ��Q>��6�q�QFj�(�0�	j:c�4kf�8b�5��u�)M�%�I3�?�5�.�z!Sb^E����誈5��2���0��9�����ylAH��-���	�S�u��i��R>T5M)R�r)�"���L�5���#V�bؔ�c1GRG�fh�_�Z
�6tA�R���vy+�A0�5�:��{\��&�d�ѐG�i��O�S!+r�g֪ycE�v�1l�ŕm�[v��'�����/(����3{i���\�JO�A�� �Vt��/���g�t��X{\~e��h׶ϴ�_ߐ�\,2#i폞w�'�$������
J�1���u��(};�"��-����r$4g�V���rѯ�M�����2[@�`��"Jy��M�E�
ɸ��df�9'DL:��o?�U�u%	uF{��0�k}.��qJy¢ʲ�fS��C�w?>���nX[��@\4z^���Lۥ�,��s��X��>�4�NZR�N�s�i�վ>@,SC@��\3�D�<��	���1V.i�����wA�����>G->U�W������V�a_Ϋ�W�C���^Cl��w!vIF��M��Wm��G_Z�K����{����:�*bGݬ��͖�螞$|��_(0�.|� I%IR��5��u��{���w��s�q��j�!�=�kd���GLf�v��[�~��V��\��?��~E��|�l�'Nb��H�~�V#i��BA#�Ⲅ�!`����Ǿ7?���%D��d-
]�]V�K����Sz��s������#�~6�x�?7��~y�Bu�I���=IѠG�����Xȫ��}�唲�N"s�N���ܰ]�tb깬i��6$�#��.3\�=�W]����q	WK��Uޝ�c�˦:���J�;X.������kYȆ�t�;�&B�G��\^]��t�������m~����.v1�����C{�Fz��6�}%����Ì�h""ъ+��	1쟊 RR���]�����%,n��6n�f��ї)֡�m����y�ֽ�����b=G)�P����m^��~����G��s��yF�@�U�-g@[( �ެ�2x����}����K@���|4���� >���4Zz���΋���eo޼�/�.�      +      x��]ˎd�q]g}E |�nlX,iW��`�6�1	��+N�>#�f�tW�<Nw�$/����=���ȥ?��<RH�=��}���
-1�
�I����ǿ���o)���O����>2�'�ϐ�D�'Q�N�A��3I�͒��-�'�WYBI��G=
�A��5�G����=��?oy�k,��F��NYL#=�G���dΆ����nO��DKz�b���h	͌��i��2��yD;C�������2]�Н"ѱ*�AQH:�I�yU�[��؟�.ud=�V�?ƫq����u)�;�ϔ���
��U��|��#=yAbX�%�â�00�L�B�eI˸r܀,��ک>�޹�Ǧ�,��	���g)K*��f�eCmi��R���P[�G�k��6F^U�w�`齝YnQ����������8x"�仹�ӑ���%ա&�G�l����Ď������	\��`A���"ԖM�!����e��(Nk��a�����O�P��M�꣋�~R�@"�<CY�gW�x�Je�#9��
�%=���DsX��ғ&�Q/PQ}�xK2�Y�P��|C&�kr�!<]�II�!��Kҷ���(a��
-фut)ƙ��Ov)�2/���.z��ß��$�#�Qv���Iy���p���n���c��;�(�a=r4�8�b-��:̣��0&o`I�,��3�-*�g�@�؏�%">e��6���%��P.i�-*���/�i�@b䁴u �^�����PҌ�	?�y7hׄ�)�R1��|�Uj�#�ڶ��m��s��G)s�z	��Y�O7�UZzH�l	���Žc�<�ؗ�y�	)A7�9/�ˠ|'���_���u��c?�������ʛحs.�?�8���(��f�J\��E ��o��?�.�l؍6��_#�F�
�"K�jQ#�Q����a~�Ij�Y��l��5IIȗ�G�D�Id�M�6Yd�#_�m��9H�i��S�#�6���x8������H<�濪�`���a�S��!������C	I������������'��>~��0E�.�]���9�{Wj|����[���/+	G�ww�XP�� �b�9i�NW���`'k_W?#RF��Y9��Q��G����s+Y��?�)�ꬓ�(*<9ojz,>zM���!��b,��s&R �;�l�-^^�����xF�r�ϡЃ#
G�G�O:�<�I8җ8�=>�krv94zp4ᠯqH1��A�=8�p�q _���ϕF�!�k]��~3W
�9h�U�*�o�tע�ԫ�U�ps2���ԫ�%�ܰ�/7��у��8݊��RK�d$o�,�sY��JV|�QQH,��xseQ�ػ��	[�[&$&Y�Am����GSK�4�$GE>qb�<����#7���ӥ���i�
��]��}�I8�8fm�x�ެYtׁ&zO�&�L��Z�1X����ǟ�����3��2q�ιOڻ��L[5Ky���ki�|�2�����4��`��x�⒏x?��J�(`r�s��C�����2x��'���z�S��L�P�!��l'x-@C�Q>"g=�@���3M
pX%#;�u(U�� �ZQ��Y<�4�DEE�QXb�#�у�N�&T�nڽsۅul�Jb���@٧b���ޯM1�mh��.�wL50Ք�*v嬧�i�ZoIa)-j�ǒ#�W^����c��+�5��3�d���\U���҃�Ã��V2��'U��!�d34DbB8ډ�H�,-���F2�����Β�z�_����.V&J>�BO$$$u[��6�һ%��[�v3��H���-�$�ҤX�?�gٮj^uI7����,s�2����c�.GNgz���$�-�X0g���H�p���h� )�E�M�`�:�& 䓼�n��3=
��`�&�^f7͂����<����赔��p��X0]�.�ر&bPռ���G��j��0UB�����(��P�C���j�t�,_��8,j/�Z>�c��>a�Zު�%����9�i�2�[mK������$�9z�M��Z}�*�X���f�bYTs�sܺ��#���E������KL��wCa�C��clfᆫ�D#<���\#nѓg5����^��d�UR�.�F�*�j�E�[�H�[�y�e��{��?��[�ġɠ��)�?uH�ŀ>]�Q�l1Ge�q�a%#��Gϛ�1ɪ��a(ӈ�Z��TU�{�R.����I$Y,���o�;�!�ϓK>�5�t��|.���=�$Gz�u2E|b���i�n�+��&�h#9�gQ�vD}@�z,�&2�t5�ɿe�|��Т�P��c[j7�뢆6
mb��F	名��EO�-j��PS��$�VO)�!JN�1�vi;T�8 ?�<Q�?u�u��,L�+���즠Q���0I�)^�j��a*�ĮUO4UvG�Jc��䠽ތI���
/��`���~4L9ɉ_��I���;
GQ�6$o��.�W$
Z�j4�碚k�Q��@%�T+���5m��B`��/�6.+�3�)%i���2i�0�����4���/� �E��Iܢ׌��O�n$�PtN���^��b���5�ތ^��8��n}-�o��QЅQ�7s5b�����yC��X8Hz�fѣbđOoξ��%��.ٮ�o5$��/_BO$o�,j�o�0h�������<�H�-���	�.j����"��ӹ�����#�F��XTs��+��j&cqQ����hJq�l�q�_(8la{��Y�ḨGHs�:��(�90��ʑm�-��~�F$�/]*�v�>l��<��1��2��;0	���ߢ`Rc=�%�L!KTmmn[9g��3�~U3
5�m.:���^A�����Ų�ٯ� �TIR����8��|"8䴌j����R�{� =�'(�"g�E��X4j(�N�A��
�8_��_�j

;E�QM9�)�K���]�p�U*��2��EIh��X���t�2E�=ҩ�s�'��Y���e4��u4�*�r?&�pQC��NM��54�W��edO�,jh��IDoJ_�0.jH���̱j%K��ml��@4j��_����z���t��^Ţ�c\&kUg�����������ʻ�3E�q���ikm8�WO�-z�ò���$rm�쁆"}�"J�U�E��!��>g��H��#.(5V7DZ�p c��r�K��m���e�����8��J5NpfDKӱ�BUY���,j�x��T�Y"�ï�UNgUʹ��L
4D]��$�I�v6W�ۢ!%�\�EO�9��P&�i��h��ι�@��0�C��(~�uOD@8�����i ��I뜏*��T�?c�@����}��[�R���B�Lت���*͞���QKLz�|�s�x�v�T��z^����"ͼXv,Ք}T������Wֺ����R�L���2����*cS�M�|��8�*\���U-%	�0wu�E�����dQ>j&O
-0U|�N�0�& ��!�-Z�e��'��%wE"QY� �n�����?E���:���Tǌ|TQ�	T�wm�Tr���f�*�Y�ڭ������=�_��In�hk�QC5���G��畛�+79[*������T�eal�q:Q����q=3���1/u\�s�q�<*��D.���IjH`��ZH�G"5�%Ѩ!���^^��)��[Ԑd!����F��@�2��ofK��C��p�29�������w�r�$�C�����֣�>n��Kh�t�
P��Gd�w�v�����
u�N���mgI c�ı)���%B�ņ�%��Y"����'�;=weݧ%�5f0.�'qی��9F��mL/$u�bP��_�z,4UzpP�5?���m�����eW�̴������='S�ڦv)�T�fU[�-j�Ĉ(��mmR�竑�0�s9��T�TE��
�2��i��?y4=�a%��Gk�zc�5�������FY4�����A�&}�yy�6�5.�Hc��NM�+M�Zg���MP��ͬ����R��B��5-9X
z���d �  <��j
���?��Yi8V�\t݁�F�����i�/X��`�|�j���Z�g��͛u���NZ��=����Ù;Tm46���&��R�TբM=��&���w��GN�9��M���E�]H�'o�d�ꖈ� ۰�'��m����ۑ\PC�� �Z�Y4��[�%�:R�?A�����`6�q�I��x.j�[�s�m5�=�l��I�j�-A}���W.j���5�:���@#���[g��.j�{�!��p��A�+�n&�[75o�X��h	��YЈcŐPq�"������'9y��Mc=Ј�{L�x}&�;Ʒ��xg�r�%m:�Y����G�M]��آ����8c2����wv��G�h5��_A#��'���Dŗ�QC�Ί7�)h�bᢆ��R��R4�Dm좆BY�G u�2LJ颚��7rY6��Y�ķ)H��,j���|���s�4�)pCP��K�.��F'<t��>�j��Gu���E����M Dʴx��,���{��"y���:�����(k��۹NF33s�JH���N:JK{�*]�z�}T�S�L�����l�z8����f��zI�U�F[g��*n���{T�.s�+k��%�<�V��6A����sh��XT�\�r*S�/Z���Z�څ�ҋ�i5TY��V}�v��j#���f\t�˩���-e��t��v���-L��F݊q(��F�%qi!�\�Pu��H�*��A��t�rAC$���k����Ϙ� .z*��ș局�*D.q~S��,�c����L%5U��c]�]4�KgG�<�E��K�s�(�'��{�E�*�CV*h ��G����fL
�D�(����T� 21�]����M�W�Lȵ
���y�����9�um�,wzc(�6���$=ͺ"�+�$u�磆��'���z�Y�����	w9W���\=[;^2{����L�۔�P��S�
�*ާ��!H�	�IrS�֞�\_�u���s"�A����ѷ�����oY�$�V�|�aaS��%=�lϒ]�a�LX��rY�|�c.�}���冬��fq:8O����}�y�nK�����h�4��En�Ct��.��Wdvp�����^[�R--f�{��j�1��%�
�)��!�{r[���U}�"=2EƬ�G9:1NrH�/���{�pH��,t ]Wc
�}%1�C��j�Q���wu%�����t��8Ȩm�G�
���sY�'�Vau}ka����n���������VG��o��q+���u����C(j���h��&�M�C�Z�᛬gc�·iù�j"�U�t����R�&�Q#�[���c�Qϝ��0Tj+{Uo�-�yi�2� ]�sS ���z>폻�8P��J��$5JNXSm�x\�JK��+��V�T��pU�\#�*%�N�=N)E�]K��x,z$�	�Yi`�˕[%�V��z���[7ejݔ�f<&�=G���I�\��P^Q�i�IR�cS�-W]L���ak�]���2�|�B�G�i�Me3�2+��r�h�X�<�k^)2u�NM�͎CPN�����G�:7�4d�X���C)���o����e�!��9�'�|���y��J@g@382�vj���,/��;���וV�&<�Mt�f�@>�F���ly�����p��TD�ڹ}����4'f<���Y�ǿ(�����l�u���2��%��	.�cH��qvqI.�r�.nZ��]�<�ʀ`�
�ȕ|Z�^��z�.e��	���!�����@����tg �I�`0���f(�I��I������*/�e<@��&��ű�w���fU��H��耏�F!��Zg.3^�}��4�,�v���ęC���T�>���� ����         �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`      -     x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�      /      x������ � �      1   �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����      3      x��ZM��8=��B��,1D}�oN��xӽ3�b/���Dd�KI���oQm�ngX����k�"�U��H32��j)V�\w�#Q%�Y�>��]��*�fi�0��C���j#;Qu��up۬�3cc��1���ڪ���!�F�҄���~+�%�P�JS�a�y�<�}��F�J�k���j��Fh����k)G-P�K�����":��(��9�/`#o��}+��������T��	�)�M0o�h���<xզQ�Z#�"���嫩������֣X�
��㖯e��d�N�R�40�脖��੒��D��Tn��C�.y��{�I4~-J#��E�dW�ưE)�Nɂwתi;�W&~'�	�0�R�k����cI6¸i�e-Q�Ҳ&GV�n�𯴐��q��cC��|���t���iD9��Ab�ӿ�_T#����������8#����$�E�Զ=|dr��5���Ei�S/��ť����&[8�a^z4�W7�3�g_O��5��Rk 3�;9�����n�jP��cQ%�y��V���7�� ��(%w|���m3�-*��0���&f��;�7+�c*���ՠ('�\���Mq�Ҩ �;(hT6~.4�-J��:Q���ka�eD��t-_H>6�bN� ퟍ�/|%Up���zH��$'�9hQ�S���7ޯJo�YM��7��0a��pX��	yfތׂ��)�1X��	���8#�j%t��W	��9$�_�KT),J����s��6s�,���9SI^����z#�X+���:0	߰�>��҄Y:�nT�]Y��Ci9:$]&�Ŗ�τ��Ci�������3��SDh2wJ���Zv�`޶0C�[�ɔy��ݲ����>Xg!�=�IN��)�N���Ǵ��4)�(0�_´���:/)㡋��[�������uRY��x��4<������)#����>"4�l��?6�Z�/�%�iL��6��:��4!�YI/g�iJ���oP}�Dh0wU��khv�DXmp(MsH~���^��ß�MH��k8Cc�����@4�<CӢ4ɓ�$��S���:�xy�д��E䃄6s�{�"4a,J����b���-.!�Q8�7�١9�s�ė
"�㵷����������V����K��Ei�CjuЍp����`Q�A�d�/':�8��0���Y�j�Ein�&Y�V���S�`Q�C��/kX�|���i��%N�5�A����~���~��:�{ℌ��*
�yjҹ�UlЕj�	45lf�9��棩��$�L2������~�jr�j�Ei^���{��M�ʖEi����Xш�ڽ��M�������6/�jH��7�6!*`�[;�1�8�EJ>A�5�|+�-S3ʋʍEi����Q/&����|�"�Q�ݳ�>��f��&ҕd�)�Q%�(-��_�)�5��O%c�+}��s-���5��2:h��X��4�ao���)��W�x�1%����I��I�ʛEi��;����T<k�"�W��^�v��D%3q�i۷7�rðd�F�5��c�?T�T�-JKHC���ܽ<���h��������W�5G��_����f.8~.���C�ߧ$�l&��4����9��\	Yhsq)�|h��[�n�2t����6�n��F�Ӣ`)%�}��4=!e��f�����w_	*��{��(�*��77#�s8>t,�ZE�6q��aq,�C�U��cL�Ǻp#@����4R�9���\�qp��~3׆�mQ;�z������C*=ru��:��W`���\a����c�ĥ�,&��ѓ�l���nĠ�}���~�y�C�6%��\��>���c`d�~��%�4���?�N��MQL� ���}i�U&��#�J�&�hL	��M�>���_�����fJr�S��ܗ��T���U��<"������Or�Mx-�������Y �]��,=�v�`!&�����g��@�A�-!����Ne�XM�$�e�+�tA��������U8      �     x�}�?k�0����St/9t�?�<�])��E�MbH�����Q���/<H?��S�`�A�����6����w��א؏��t�ێXb5���-��E���k4�����<�2nS�)6�QuE1�>~}�^��ΫTUQS��6䅢�׫+��S��)'��T쌡F�׻�(^R�.�4m[l��2�}Eq���0σby
֩VUQ�j�Ӳ~�MJ�Bl5��(^��I֐U��"J��T>S,o[��z���!�/�d�`      M   M  x��W]��F}~�<�*��Χ�oc�c#lڦ��4�U������l����
1��9s�HR�8��� EV��nK�E��P�ȰV��Dp�&�L���c�c�X$�/?���H��+qII)� qB���~`b͙Q�������a;�o&ͤ�����T�	���1m�0h�z�o�<����A�~�j���o�qC;���A-y|��?��V�0�#��n�B�n�A{��n��ݢA^�ۉ ��\���e��b��4)�]�?��|�W4�eEA���d���i��}�~/)��q�:���MR�#��2Fj��&��L}�%Irp/�ђ��K|:՛|ě��P7L�[��ƒ���aO��Y���Wd��Qi)4wD�>�5��,�e��sU�,��s�lʼ*i���h^���#�iV��Ǵ�~*[ʛ�H�r6�덧�&�i��e��(������i�dc��u�h]m�9Ż�WVyI'TqI�H�*��m�j�̀�2:���((��̙�\y��X*D�y �<}���c�s&��f�Q?�i�\��,�鴪VG�&m/�S�F� Z��BR౎ba����r�Z�r���9MP�4��_T�l$�~S�F(�V�imO\`��@4Ŝ�Dڋ՛�U�%������q��(�u��ҿ�I^%�z�!ܥ�����,�r�Q(<oΔ�'r�fSft^5Yqrh��[S�v��ͺ%��|����|��Z��<F�G�;�q���}4��pE�Q'	��oH}����iG��(BF�sr�yR��("�NrX
�.4��Q��M��g�����)�B"�ޟ��S_{�V5�E��}\f�7����җ�5O�{Z��R9����x���?����I��vomNLpw&�N^4d�D�}M^���A���-K�`���h�����r�=�}���^��Xb�9�	7�c��[]�0պ�N��1L�~��Z5L����c�78wqV���	Ǥ�!)t��V�,�0��7�ĥ���uS�N�w���&��E/t��.Lf��f�^m6~a6n[<�9���ϣV;��!1bceX����J;�1z^54��f����a��*T��1�sp[�l4���@�      5      x��\ˎ�]����!�~ܝ� ��N��ƛ�%k$K�@R��ϩb߾�d���m�`�g|��z��h�����_/�v!\������Oo/�z|������q1���������/���=���Ÿ�.W�N�����W����++���߀\e�|�%K�/|������.y�\L��x�F�\�#1�A��I��:(o�}$..���U0�?߿~��񹕟L�{5�U9W"?C���B�;���.@x��`�M<�h�̯^+�w��f)<wY�q/D���4C��M���LC���Jf��~��d�?7��`�C��HE��򝀤GK�3���V��Z���d���,�(��ݢ`OK�+-�şGi����4��S���RQv6���%���[G����-���YR�����.�P����Ư5ɼs	dtPX{u0��]QO
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
�h�K6���RqM�{��3��������|ޮ���vu>��9���ņ"W�ϡn" 4��{��/���y����d��F�d��P�>�La����*��_y��F���B�;!�şT:�Q� 4�1�R$��4FУ, �L%bLA�_�l�e�(	�?B���L:��n/T-��8���X��p��{����I�����GY ���BQ�F���.�Q�+� ec鰔�˨g5"{7�囧i����ǗSV
��L�a�E�ݥY�+�]_zjq(ۆCdz�q^tc�PBe��xd�8�[�`�EH򡍈2ʮ4�y�e����c:,5�pr��=�?��,?#��q_��L������o��Aqu      7   �  x��ZK��:[���F�G?/��.������Ol˄�p��(0��U�ݖ��,�Y��hT{����G��*���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$����!��K���mV�G<74�-�x
�mWq��� �T���?��=�r��A�Rm̃�k�)K+'�򊩯D�k��~�Q��$�َ窋D��N�eKu�.W����Ntl<�u@d[�M|M>��7K�G�A#hZ���K��MP�Al��4D�"�KD�?��Z쮵k��hP<V��%���W�oY�ڕi��K��YO�Ծ/��Ij���)��5�#"H(����D��ۦ�J�����x%�#�CX\��+���/:&*]��\m�E~�Dg�K�n(�iP�Р�P�ei_�?FY�|���Ϳ�ȱ���NmLtF����"���o{NגODOh��uL��S��`�hv%�]tisC�J4B��&����K|w���U�kߞ�`*R�/e�"��A�������Q�_.�v3��!�3��V�L
��k�qL4�E���~�n���i�n��h�
��6p,-۾zm��l#4X�ݞ��Vߺ�}7�G0��}̃�B��hC��X�i����vK���]ﵶ�C/c�3�!���kۼ��	Ȑz�:u3Y��Fh@�����J���M2�A��^���+�Mz��k�ݰ�u4���n��S�pZ�>�H�����C+�V+uHuA2d���{i�K����nD#4 EmHd�ۺ&�:�����",h��$}��Dy�z����`�[�|�ɶr1���}�t��������`JL�ׄ�Jc�3�kV�|�r���2xʈ���u�9�nhHL����j���T�'�E��z/MI��O�~BCj��+Qc����l�Oh�D�D���~�U�=w�J�@����]���n�]wm��i�_!�����]%j���e7%DBh>�H�f�̐���12�Hi�A$ bI�&R��D�D����Ȫ~��AĪ^���`�Y�OAѕU�4QW4���%�3JW4��$QC���%J�錵+�?���+���4QW6-��,�@��O�$�-�h�3h�P��$� �E;G���Ju$�D����!��$	U�q����c��v���B5)�(�zL�I�o�\�*
.Q(�[=.n�L�t��{�u�L�N�-}� ���Ի�����P�gjJU��
p��ğ��@�l땶8�{�s�x�6���ҌۑqI�N�b4Ov�	
H|61j*ǙT0J&�T��}�-ׅOt�>h���J�v9��h�N�brڝ�]19MӴ�!&�57�r��*�]=3q�u9�L�;/ݻ㵂&�L;Դ�!ㅪ@i��Qs�'��#K��*up�D���s���q5)�rN/�=N�LTFk��E^ͷ�Z���w~ܙt9ԜrG�6���)�8�A�*QDt�5��Di��� �8㹦-��q8����4��R��%rx	���=�����M��f� �����vxI�1�κ��Le9�O����=;�B��4;�"�ʝ�V��|��c�L��.b��F��Ϸ*P@�zӳnU�Ԭ�?�H�H�V�^h�.�jh���1)?=�z�׸3�};>2t\w�Sf=19w�)�ü�O���6W��k��1�w�3b�/�+.!&��d��G=n��rC�Q-MV\��	t�/dH9�l�a׌L���̈́��g�19����)����n�wU��I�iv���2w�ٙ��<ߓ3�!�ߟ͞Qṅ��Ψ������7D�_�L�Q}W=F5��ћ=��<ѧ�<��/;N�Ĥ�ܖ6Ok.�<Q0���=a�z��#�7��/Vnk��`���)����`&��'B"��2I�O����'4�]C��      9      x���K�m����ǿ��	�Z���M3� �#.;t�F������D���P��G�֒D�%������?����ޗ�r�-�����Gp!���.���_�=9����Wt?Q������|�?��?��sk�%������+���X��B�p�ǿ����o����c	��������ү����/�|e��J��.�N�q{ubq���/_���R�4�j�Zs*��_ŗ_C�Ż/��{j�J����G�{�9�RZZ��U@(��v���n��=lŗ�\�1���|���J7��j��5@[����=�T��	�����_���?�5����^��_�=��xRW�
׮�\(w��n]kS�"w���z����P��������������۪V���r���)~1Z�P5R��ݠU�{����{�Wi����sӣ��.u��m������-����WnO�Wi��؄6`ˡ��3`!�����]���[��|]�d9�/��Ԥ�[G�.�fb5">}��!��۫N��g��:�F%=�FX��*b�QۻJ4Jʕl�V%_�D��-�EӁ�����S�6������<�c��؞��/���e=Ϫ�
y|��]���bJ��ъ��ƽ9%��:�O?h@���� V�}�1���?����������W/-�W��wI��y�����|��ǟխ��Uzu[�V�������1��R��쭓qҗ+O�Au�bw��wbm�]j�*����ӣ:�^��o�D��43�'��'��;&*u� ƍ�|j�:��2ib�4�R�D���A�d�[�J&"��ꮃj�Ir�DX'��!MSA�Qlc��Ī�T@�R��X�����b~zG����1��en=�<�������u����4i�N�N��֢s.�:y�;�8��q�`ԭN�R���G~Y�N��˯����_(�O���ל���4��kV�
�oU��\��f��=��A������>M�r#׬���ԥ�i����|��t���������C�j�{i!H3���8���ռ�����Ӣ|��\�g{N^Rֳ�.���F��H�{��b�W��@�y%��K�{�yi���[�.]��>��g
#n=����.Uy���j!+H�/�(�j$�:|r7f��6T'�ؕ��Ef�y� T���G/*����SL"�8�fcuV(�o����}����E㎞�I�������\_�������X�2CҶIH��S�\���=��#*���A�z$�z��m=!��H��b�`�8kD߰��]�C���)�_������忄�����3�1�is��aH��,���1�{��ꦆ.�qKa�&��&��~��4����7l���H5���;��Y���	)DrL�!HK�$U�Y���$4!��P�����UF��6�dH��������ŷH�ƴ��Q�5�d��գy�J�$�B��Ӻ�d�Bf�I�cn#�]R4�%��ʹ� �TX��T�ȇ�1���dHKq�4�wqUْ=����Q7#y��PaC�k���E�b5�S�c,�z}��"YU���_��c^).)��L�<�j��ì+�M�.?�NP��8��E3%U���
�X�:�û�q'���	b�
9P��<���l4-�K�}Ǥ�@S�T�N����qh�?ێ�a��Ɋbb�P$�|��1 b{�C��H�����[�$��?��?���);y��){ڣ� 1/u���>�I�+�&�N��{_�[��ZL�8��+���*UY�{�-4��K�U)���+�bU�'�o��\q\S��<׬bU����t
&Q$:��,�E��Eș�ۼ��Ƹz�Uǫ����������������翚QU�)a���/���N�����]��l����E�\~/,\ԁ����!��P�<����� 1o�Kgq���<���jh���U9� ��B1@��D�Q�|a�J���ۉj�Yq���E$���Z�&Y9o?পj���'$V��'���"�TM��:�`�>���z�1��[��%^��
�us
�T+�g��X�KԔ͊T'*Q�\+��vd�߯���b�U�N�R&'�L�!���J3�n�]ݻ`�7T��LE?;U�$-q���):����݀D�ǵǣ>�wR?���Čݐ*�:�=w������\)�0����&��^#��RH�%�DSR�P'uLX��!�7�(����4�v;!�| 
������y'�����h�/^a�2c�-�b�V'�CMO>�U������{���
�ZXaqlR��xߥ��[m��m���x��,�@-�2}]�ʍ�����������?(:;���vStR+]Y��ČYTߘ��s��S�ȉ��H}��9�=[�L��� ��9�:_(�溨���1����Ka+͉4��V1ގ��A���I��U�1R.#�l�b-�+I4���ga�&�LR̉&_�@�}���Z9���j�R����u�'TKh���*?�������b��Iw�m[����(>x���
�/��w�Z
M�W,�C�GU��ܦ^�zH��]����%�J���X�?V���S�?�Q�J�s�๗:��ߏ���+;���G�w&��OTZ��OTt�g�U\�N���#CXp�*����}��!�Ha�'�J���Dz�Ӱ'�<BG��Ds�ϯ���P��G�PC��Ug��:�T���Ǫ�_���Wt�h�]UMU/(��� *%Y�>��:Q��<&�ʙm)95UU�~!
�$q��������Us$h�*��EΡw�V@u�T]f*�|3��%T8SY�lNTJ�aT'%�.�ǔ �,/��IZ�(IhVL�{�-L�jU�7��E+k �f<��!z��Le�@S	*S�*F�����ө����7�=H�K�p�5���]��J�!gek�L�%7T�JJ-{�	����_�þ"�Z>77�`�L�ˉ�@���WO�T�N3c+6U�
1�9"�+&y�*_�&����PU��}�9�����s$��d�K��⮪^�n�B�8����t��:Q�5B5
������va�:P����C��(��K�R�D�_��S��(���ݫ��Չ:����59�|5��WJ�t� �9�'"�8�P���Չ:z��*�s�����df�]U��B#�Z�SL�������[j�Q�h�Q�Q`�j�1n2s�V���# �gc�[�	�y�����U��1��Z�|��*H����@vQ�.��&+G���J��C*�U}�t��h�l�_�(-��]�
��[��s��f��d��b
�H@��^?��J�Ȳ�d�El����}���c��I�Qx��R�.�<�@�U��U��v��ea/Ǔx�<ɛ/��}GEA!/���z�����J��z�b�#���n��3Z�)�Y8�َ��7��9��ZX����H�S�	���=�yT��Ȗ�}Q*��\�H�a�*y�%A!M��kӴ�{�"/��j޵춱�Lӌ4�V�sn�69R�+(�r&�T�e��#{��>>Y�4|R�#����f<�����7^�!��1�:��O+$)�Bq(m�#+����cwU}�p���Y�|�UZ4�V'�8.VuV����J�):(���uB)�Lx��C�jiu��Du_�+��j����z᷺��<�a8��;9U�X�� r���A���=�����|i
���V�s�&A�ň��j�;u��h���Q�uR��as9=\2��{2�����jh+�S��J��ڋf.Nˊ5yς��9rW�~X�OY��Yz]��T��Z�&���%�2r�G��w怺׊ӲZ�㸒���������4�K�m.����C��ŎH]��RJ��<X�Z���bQ0O��cs7U5V���BSY +��Q�fo�n�k�5�OBP�,M���ꮪo�~ʂ=c������]@r~	A&��$kt�:X����n,�el����thp���� ���0��Z݇q��Kh�'V��b���7����[<:�r�E���2���	7u�2Z�X�쨱�m-�p�;�d�c    u��-_Q�Go�q�r�Zu���07��*�����G�飪j՟��_��񷦆qk7ϋ�x��3���OYKUø�HB�U�c�����5U��twttk.��Q��w�KT��8�BY����xQ$�1|��^��{���+Q�4�J
�d� T'�=ŨXk���=�S�7�V�aՏ�SLʑϪ R#�J���P���(�'��T�ޠ!�O��d��@u��T
*Bu>[�J���:�GU����x�.hK!��q�RǵZ�>5��)��]B�/��㝙A�:I�V�Tr	�S9畟bW�6u�����>�jL��ZIs6$��D�����Q����a�֝t��Dm�P��3�~Z���W`T���|J��h�����G-;*]Q|���?)��M�^ T'*�*FѨ�nt�g( h�L ��vT9�C��%�v�Vq��U�+>����T�E�aw�7?��Ԍ��V'�]���R�~<�WPsW'�f+ȉ&��#T��(fS7���+�8^섨��b�����dT�P
K��R�D݌E���4���r��5UU�x\-�q@���M�wpr����wT:��N�S��*�&3��:Y��2���,�������Uvk}i�#V�)ČP��z�|�&��h)�/I�X@�����P�o�A5��2�8�h����������+7*�hgS�<�	�ɳu��y�2||2��U'*\P�Sd�*��nh���X�K����r��z��J��4���:Q�n!+��f���1@lՉ�7Tp\-�*�F�M�T���LV���j&��?�Խ�[̡���㛞��Nu���f�6c9�$����:Qg��/��u��Y�%N�|l��	:�x���KC-��si��-U}�|CEO1#�S�Sp:wT���)їQ�O^[T�>>sl١:Q��J���Q�=��Bu�����BVa���3����7T���)$ʝ�Ŝ���n��1)�Q������|�k��N����s���tF6��TS��o
wR�z���#��{S�xE�B�0B�.O��V|�}X�tC�Z���Ga��lp���&�$K+Z�66���o�i$b��;ox���P���,w΄���yDr��ط���e���8e��vb�O��GU]��X�'-�
!�e�z�Z��u7N��X�&����>�![\�Yc��`ew��!�*{>@
P���QF�[U$%�ࢵ�RV���eՉ
W�1l���}@!@D��G�c�|�&#T�d6PS��!@����:Q#j��L����*HJ���ju�fw�B�f�{\�V��j�Hwu��3��+�m�)Y_�U�N[u�ъ��*������idY��>��^���E�5R�}p�NV��Z��οK�������Q��1Sά聛1J���	-�s�����2��4��8I��Ť�ܴQ9��\��:Y�Β��1�g\�gXu��Ղo:�t��<گ��= /���J����u�:󈶋�����i�|k�G�\���)U����	�C��8ߢ�י5s���uI&aVjN�#�Һ\�����j�Sce2.�U����,�������������Iv�7m�+V�&��#�X��t<��L/���M(]�7p�׸Bz����O�5��N�S'8_�e��ɺ�]�va�+K}�z�W	>t�����.�G��	-�N�.�Ԟ�����GU�:��������]X�U+�a��"�j5VE���V�(m,b�	|�Һ�e�����9���^���K��ޚM�mF;���K�������r*�Zѩ�X��Sd;��,�v.f/-��a��:��,�6G��T��I��r�_.ݬ}��7�K����Vo�E(���5
�Zu�n6c�ʹZ���Tu!�\h=��T\n~��h��y�@���jS�v��gTw���P����ԉJgEsqϩy��)�X������H��P�]�Oif����=^�T��m�E���٤A�LG�$�+��d�l�r�יm���>�٥�E�X�*�`�;T���,l�Q��s+�b�'dB�5�+x�u��ju��2ש^�趍U��Z]0��Cj�n��%�;>����z�P�|JE�u��P��X��Q�;�v 6Uu�|c��a�r,U��e��R���U���RU5�I],��q��e�e�.��p,­ޗ�[D/�~�2�J�=qW��H���)����I����X]�z�y��Ty�8>J�_. V��u������CRs�(�o4����l2
������k/^v�ՀΜ=@�!��٪�b��n�^��M��g���Q�������c�:�[�@�V�	�u����9����F�A/1�R��$�d���x�5E����(><�μ��rd�?������.��C�N�x|ѿ��Y�Ɗ��j�g)-T
���kյE����%��VԾ��k��.X'X>�_��>����� J�h� ̪Ə�r�Z�@�n-�F����b �ӻ��W?L0��!�,�����Fs�M�d|�]Us16�`a�adC��)�4clW�U�I�z�x�`w������ٴ����p�W܎ߐ�as!�o(���=�,Wbu����`�qff�u�Z�r��ɕJ�>��ئ��9�+���g	��������=V,�ƒ�)�$��2��'��4����n�UD.�}���[*/#6F9a���b���α2��F`%>��x<cu������-�XYn	�f�����h04Ĩ��N�P@�e�D�����,�0+w�bE�Lv�yW�M��	V9�!X�T��)u���)`�ł���i19�W'���]UAK�
���rrM�����8-k_ ��u�J�a�v|�W����O�P�*��HGi�Z�Z0aĦ�z�^L"�ț*�#Vf/����]��o,v�T�<K���j��&�OXn�H�N/��)����F��7-	E��s�v���7������FWo��բ�c�%��'�u����wC=� �s6,yp���/f�|�Uy7��r8y�����8i6�f o�2�Ο�6~鍜6��1�K������vU�+�=��'�V?��W_h�������ډc�&�4���;Zz��j�!ԛk�)���Δ^v�����eąj�z*���4y�&���]�e��JL�e c�3=���Ҫ��\�"���`�ᦪ~���]�Yw#�g�[�>ۮ��ÍUE}֣����]R�.�q�$VrDӫ{u�BO��?����l8�s�:.�+G�"����G�;N�Ģ��y��1JK^�A�T��Xǹ�Y�����ȥ��q6��T���y���a��`��Wτ��%�]Uf*����c��"����ԄPQM*���Fˎ���K��]�U��.�#sp��Y�g�3��#o��寨D.}o%��j�!T,\a~u�`m^�����@u���Z�m�%����`u�.�3M���X!�����{P]�|��Ģ�� +� 
��z�.V9�{��_��*.��u\1�.X�~��S���"�&���]�����Pg�r�?x\3�.��� X������c�&����'%X��2#���fC>�.�?wFrZk*�+���&o��Ν�pxI��n�G�m�;�r�FxWU����N��H�X��'=��n�����Ύa|�Ԭ�au����X9����YZ�ǂ1����U���7�T�7�a�j���(��M��$���;�!���'^v�.�L��b�D�f,V�b<j�����xx'C�/��~�f�����������"���ƙ�}�$.�y���K�ŏ��-���Q�p.���#4&-L��8��{�V�+���j����/��|�b��ꚥ;�z��T秸.� ���[U�}�WV��&��>��xZ��*Vt��'ˈ�����S���4/�4ΑE�"QоMuT�	Y*b��r5�c\�B�L-��o�d��#͘n��軸�|Y��+ju���x�S�7��k��ՍJFU��^��N�:�fq^.+6'��kv�:/�,�_���jV�^����e��E�� 5�Х�+,�=X�xU��Z��f' ���滸x���;�FUƪ�*���#�������I�}�7a�    	�ǵ�ƷO�3��W�K��_9�>�̣:YmxUh���k����0�W��+��.��h�v��m�U\��ɬ���܄��k-l������'G�dV]����0��Bt�Ty�:<)�Y�v��V��|�{�\���b�lSuŎ�0����"6}5E�`�u���Rp�;`�$Ѥu�����w�]��s�=T���O��-�(�?�э߅���ay��#j�e��
Wy�!bV�Y'�[\�x%%�%$�<�]H\�t%eΖ�$�tߚ�Mլ|ge�~���ά�z�z�n�bZ>#�Xm��sh,�.�m�J�K�y��5g���b���Y|�k�5o6�x�A��U,�x��sS�߶����q�YX���Y��84U�\
cV�`6�.�O}��p7��b���X����Ң�31�K��o6���x��'~��5�!Bu�Λp�쑢N�l�:�V���2,�R�G0�@!T��a� ��G�+L�Lط�Q�������1�ׁ�YX����zu��.�<����KW�S��V]�����t0[��
���c�TŚY��'2,Qǯ�����o����'��G�0K��=���B��fF�D3D�9��E}wu��K�-t��i���@������Te9�y��a�G�adQ�s ZU�#�w���φ��X]^XI��Cu��;U�U����Tw�;�q2���:��犢�M�T�d�������I�~����j�m��G�� ㌀�����>c���ދ��*��
��:�P]�����~�ϧ��긌�L�v^�bXc�}�$��{���L���$�U�]�Ə���x���]/>��L����Ϩ��X���
j�<O��A�T�A�m���Kr���TyK���}C#N��4l�K����>ez/�q$y1Ѹ����g�\X=��1�76���~Hj����V�a�aP��K%�������s*I��Z���`��_�<s�C�IhF՟�<=sww1�� /G}\�� �����83��>fy�L�Q�HN��Y��j���4��Zêr�9pf�%4Īl�ԛ�Gu���/��k�"��~t��R�d�s�L,N�p�h��f���u������%��|0����]U}>�����2'�n��qqE<��go�Yb�U�`�D�3��E,��Z��>#�Gլt���j9G+��z�{a��:=�Z�E!_2LJ�����T]�vfQx�r�v~���HQ7���د�F!&j��9�7�|P�$γ8�( Lz��7֝��L+��U��X�ӧ� �7����ܨ��pc��ҙ�4�5�f���u]4��?����I�fJ��b�ey�/&��3J��D�#��Z]�|cQ��e�������b�+�{��^r�9�53
�b3�ufS{&��C0
T��m!ߧ��r�sBe4;����S6x��QH9����5��G�8I&MeWղou7'\f�X4�����U��EQC����N]��?��W��x�ٗhXE���o�1�f]���[�P�W	ɚT8�Xu�.V�(��[�
F.O�s�GUְ^�F��9Z��K^$��u4���X�Q�.`E�=5X��u���~�:j�(o^֎��U��kTI��^�Ԃ�؃}ު�u�5|
���Q�Ƹ @zZ������ކ��7}�A�(����fRF�"�}"�؊ھ�e�g�z���X�j�[NVy	�#X���&�tW�D���/!�$�tg��.X��"�'�ZM�ݷ���+�j��`a�՘�+7_�������r����+�w  ,Io��Ԧ�1�n�Lz֮�(Nކ.f�rSu��Wu����UZ(#�a�	��+��(w��z�U츂(��[8�hv��X]��
���E^
`e�����yS�]��|��^���'�u�2��v>��U��4 󑗉�Rm���]�2!�I��`���Ux���Uc�v�Mլ���_��d	�>%�����W��~Æ~E~.��~�r�5J0��X]��#�n)Z�*��^R	+9�o�Hz.�ը`}��g,�֤2��J�N�{,������VJ���..x���vm��D���`@����fz=V,������۪�m���q����K>�H���,~� #V��o�a���J�|��,�k�����b��桦vgi�����#��b���}{A,9ӝ�X]�*,p �a!�j0J�?�cyW�X��R1i�Y��jp��H�B���*f�|��n�S�^�*Vp7V�1�$�Y��ިf���召;����^�~�d�d攓�Xg����s
b�w:�.��l���Ҹ-p^���	�������:�by��[\>�u9s��7��b��FJ�Օ���ߥ�j����Xg�A�
�)�l{�[����ʱ�Y�Ƣ��/g�ƧΟ�Q���X�j�]0�׷;�?�E��k�Gu��Fs�}�Ɲ0�'Zu����&����({-%Ri����Y�A���X�r�kV',%�_���rRl��2,q`����+�`ߪ21��՝n�����)���`g��Z御�s��W:>�˪���#&x1.�`�&���탼1%2Ԡ+��U�i��5Z\���j&��Vk�|���sSo1�-U��%�`X�H���}ŏ����R1�r*.fes��Q]��C�!�6w�닸���=��u�p�U�Ew����f��Jg�X�����Oi��]��}R���+�IL���ˮ'q����(s��:����b��f���vt�\���b�K�.��FK�rˏ[up/��b��b�ȇq+���P�����XNQ�����57��5��X��)*�y��\q^�5��b]���Y�a��rw���z$_�F�Wz`�'�3�NV�Z���Y���(�`�����0�uY���������`�k�B�Kő��r��zG�Yk����%A��bK�_�f9|�],4/''�ǽ^��u���F�,f�{]�Ѭ�źY�%��<_�*����X7��ɡ�����'8�뵺X7��3�'�0*�7���*u��rD��u�ST��]�7���6U�*�	a���^�-N��O�a󦪏X.n6?_��v�?�ؑ�[g���˨�w�x����9[�7�JAu�����S�8I88���B���Nߩ Ը��XZ]�r�q"?m`��Es��.X=â�T7�A{��|��k7qWU,[�F�X���V�����+���FF6��4�fX���n��\��#�\ݚ�S
Ņ�7�
>iPr7�l����]�Gt�	���ͫ��N�]��
�{,%9R�+�ą�؎ș�|�?@Q�ωlM�8X]����[�CΨ^9�Pn�bKհ���g���`6���$�4����Z
�\�v��Ά�P\���h��䇨��4�>�r���v�BV�7�=�	>��2nV'��l}�D��a���i��|ŷ�Y7�ѝ\��6�������n��g򸝳0����f�tS5�6�:�;�S�ҤM�7�
�vc�*&�C�T��Y6�)V�6�z�cO�X�]eggh�.إ�'���ݾ���d�-�]���K�gX�َ��.�����Ƿ�,U�t|f����J#�.���.�e"�m�Vj`.^'�|�j��xe�����'�d�a��`�a�x��%���$���V��e�%��;�`rYw�f���]��RTWԭ�xN�Vғ�`�Ɍ`�^Y�0�^.IG�X]�1�Ahˬ�נ���lW�K��E#IX(�X��[�(�d�3̇���������q�E�Ѫƞp9�<��W�dE�=7����M�����XUn(���U+	7?A�K��L��Q��˷��k����/�/B3���]��G��5L���8c������5%�1T~�a�U@ͪb�AV]u�p��K������A��:Y�]Y����]��d�7U�1�o,��ˈU�)2�Ħ���Õ�K��^��8r7�&T�{}=�b�Σ����M�V+��Jn�ˊ`M6T���ꂕ��bi�oI~�q�i��U����p0�7g�J��,��,�$ם�sь���c�,��jQ�>X �a��E�h뽙��0�N�����f�]v�v��$	o0���$�a#z ��    �8�?3��{�#{��v@ݻb��=}�J,վ��9Q�'�XQ�Eɰk�{4�SZ��|�0/��������T���9ȁK�, 珪{G��b�.k*��S8K��#m�FAṹE�z���P���Ugɰ;�h;a�%�r��S�5�aL�J��c��$�bV]�~k��j��T�G�]�W��I��Z�Lq_2��(��A�!�[�,k�Ba_���G>/�ț��*�W���0�oc@�%-&�cWU��r`O�U��ęi�O���\�.�0pv�bg�U�Z[^�T�	�>�T�O�`�d,C��b5a�n�k�xVϖi.1��lԦ*T��.0~��a�7�o+UdI����Ż�N�����`�9�.����M/�ꂅ�;�@��{ʾ�xЅW3L,��W�ê����bC>�.X04���+�⌡G�B偂�er�uz�V��*�ծ�l���X
C99��,��\ܸ+>�9�`�T',�E>�b%�oIE�(�ZN��4�&jV9�|�D�sV��\_k�[��dQmjլzc��۵�=J���NaP]�vc�:�˟$�P,�.�y�Y�����N��t�MU���J!/*�hY�K�}����T�:�=0+���Y|�خ%Bu��k4�=o>���%���.YD�A��T��3�~[�z��ٳY|�TKCQX�L��q|��^�l���ʣb ˞/t)��������|6�y 5c�1���H�0���J���Ǚ4E�.ؘW�WVcj����L�ப��z�"�b4�8#-���B2�g�nUAu�2��Vl�J1��fZ��Ec��#bu���2Y�����3HO��v@u����G����ǻ8�������=���R�ι���,��E����A���`pԽsE��������j��w_0ll�X{�kW_/�;Vq|���Ƞ�`��S�9��g�v�x/*���]�g��/�b�4�aA��fo5)���Zڥ�3��5s��I]�p����ȅ�9v��L��WV�]2fq��ݨ�ꂥ;,���>ֹdnO:�����Z/I']t�,���t&���uv��E�EJ��u����FŪ׏�O�:�`#�4�	��`��W#�:�4���F��d�D��ƣU�U�`_wn��bu�x�����@���b+��1���}ŏ��=����J	�4�<3Vs4������A&�=��օ���+���_��4����ꂥ̻JM�f1sD^�T,�a�7�v���u�6U��%���[���)����ǈ=�#Ҏ\J;�9��g3���X3'��,tl�Iq�̌:��e�]$ϣ��6�sێo�	6Uu�$(xy�X���߀�J���nާ:��<�Ɋj��]Zz"��b�Q1�t/�j��8�cu��a���}X�S�g�#vQ�C�"8�:Y*}8h�&>$�1���s�++�P��gэ���b���R=��QN�������R��8�ȷo��(�@;�Q����}<!�������x}v��N򮖓+ ߃��.X��x�(`�o���u�OEI@�Μ@k	&Pq���)ou6Y��Ip��T�7�G�$��mVVlg��R��#�W����� ��D^p�c��K{����p��=��B%�j��co!�^︫v���PP�r߂�5e1{ݻ���9?W`�UK��
���;��2�q�V�0j�jt��`o�<{�w65 ��y���NX>��3�s�]l܇gbM�.�9AW`4��,����C3�T�|TMn��t�Ǎ1�1�ꂝ3�	F�I�*&�E�G7����(��]m[��$y�Z$.�9�_P��� ��,��V�j=�N9�ͷ@�n/�.��zd
�SG�wp�+�.��zЈ�-9 �r�K6�X]����Z�Q��^�2KpX��r���ڠ��r��م��B]m9����Ɂ�P���:V�j;j��ﬡW�\e���`W�Q9�P�ˍ��U� ��[u��֣�¢��dN�惘]�G�R��O��x�v�-u�_�	����̪v^��o��Ύhy-����V�:����������6`��bS�U��F����y��NV=�� =Y�����I+��bS��!��[�����=�'u���̊�/EA�,�Ako�Ŋ7V�M��7Dgv%vU9����Bk��:�Q8�k�*���aqf��W�4�:l�V�¬�[���;@��0���b�w@F1t��N,�9*~�f�.��p$��������m�ź��x��6�<}ŏ�@�Ԫ��λ��� g[R�]y����v����ze@��g�
0��hUWl�R��^�^��37+�OG����t�
/8"y�%�Y�ȡゖ��XIX��8Y�`�~F�G4Y��aY`� X����Q䜧?�)�.X��� #X�� #�"�ﭺ`�
|7w0>���e��f�k��X�'�����V@k�P]�~��H�&��1�a��?�V'����ph�MV��er���_�hmT�R3�/%�N]S����=6��Ľ3N;jx���@���}���[j}&�n��*�HV\3�Z���O�՟T��sŊ��P]��DV_�MQ��W���h�8I+	,����z�+3J�|s���5@X]0���抒 9��w&�e65)Mc�*G�����<ޔP����rP�ɑf<�Wq�zo��+�R�۱b�JV�.�t�pŊsQ�}0��K��2��Z�0N�hx���kzB��s�ܖM
��b��B��$�D�j 0rri�7�Au��r��hn9�E�;���7���"q�����8�����Iք�t��0��XEAE��`�(-%�����7u��(D��: �,~�иH\���M��h�eD�����a<�)
�R=�Fq�c�����<O���@w�mF��_�&�u������b��*��]L�.X08��١�]�]��ꂕ�}Db�>b1�Ӱ�XuT�:��5��ҺX�C�vq��dt|�5T��>gP����LnV�_a�/��]^��}��z�:a|T�������r�Nʏ9YŅ�w���v��^����C}�ln��/�5��5oo`u��H��.�X���z�����雪,]�bu�j�����|s��P]�|�e����*�F��>T�\a5�ƣ���1�P]�z����U<��e���t|�.��|T��m~FY�j֥����G外��~�O����>wu���|PT���{�Qk!Aq����u4��w��U�oT�ե��̻��/�������"�2�cޮ]��&T|��0�N�e[1��R�a�]��u���OP9�'u���9T�h�t;̻�,U{Td�E��K��2g��XI�O��?�������3+��g7�Ҳ�VPf-U��ȯ����ﻊ�8��,�/�?�����&Ǹ�C&T�ڤ$�ԭ�ZUݣ�3�_
�K�ql�0L�毰���d��)N��f��f�.�}�"؈�ʡfJ]�x��i��6�y�*'��.X��z[�wq]�-�]�����(�l �-1}�N�j.��
����j�$�c���`�
k�]�`rZ/���k�]�5���xw�6��R��jFc��`k����+��U'�MB@�u�aDRUS!G�F�.�?ފ;M��Ox��Z^o~cU}�6u�4�"9��j�(��+�x X]�t���������I$=U�P\�1��g�����_��]��Ǜ22VV]�1��g�����ɂ��#�V]�9�-�c��!X�y�T�U]�1���@$�����6�Q���2�[����1j�Q� �y�.ZG
���!�S��s{4>Tcfހ�?���LRCi�T�ݺ�h��&�y�7Z KI�|�W�H���d��P]�z�G����w��|zj6��v�zX0m��⌕��<�2/m>�*_�,�1:��.X�~F���v�.X< �&��E/>]1�U��ڤ��P�t: Q��;��U�˟?���Aބ(f cu����o��̴wE���$�秧�]U�{���ʂ�z�5���`3�|�	K�\3���I]�0����D�^��٧�UP�=��`��?rI�7� �  ���k��?r������T�B\���l�{��2r
��"h��'��8.�B��{������7�.T��*��"���^�6jU�|5r�p�����^��:<8cW�	&o���Ѱ,`z��J��'�w4���L�Ĺt���Zu�ڬ�Tj�Ê����8��׫W�⁪`���r�!��!��sw�wq�II�hx��]��.��5�a#Eu_�����q5,�.V=�O+�����"�i���.V��:A��x��vq���D_/��j��H�{ϕu��cY�ɻ��e����E���qB����Lu�uؗ~Dt�*o�N�O������C�m�;'KTL߀ꄅ(���s� ��S��������͛��G3�(f�a6����[�?�n�[���;Y��a�����B���6r���.��3�a���%ںfXؿ<�����?�>�      ;   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      =   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      ?      x��}[s�6��3�W��9��,���J�Ďc�%%�=�v��M�i�m�"G���[ ��1�5c�R��-|Z��baAf,��X��Mq8�%;l�e������!ߧ���:/W�|�f��k�`"M��Ծ�,�W2�J���/�UNg�H-�b��ݱ#����R���WWZ_)���߃�^�?l��Uj��L��q�������?�������bכ|�`��r�] 8����)_n��p)`�?������W��W�^I�(�B��R��,�i�tz��_��o��j��O�;`	7���$�s=XajV�g7�c��٧�|��|�,R�]f:�D�$Mi=�����~�e��ǒ�W*��2љ� >S��W<M2ݚ�������߸5�_�T�J����*5WR&*��5J��4���!�b���L�R��¤��󗅀q�J�3n�c�&&���1jtU9�2참;��}k�3�U*��J�J�ׂ'	��E5F�����>V��2߯s����������j����ZR])�8c:�g��G�* �؇�jQ�[~�/��v��p&3��D�),n�pg����88͸M����kξ+�S�v��Bէ�Q�e�$y�K�H�����(*���C2��21Z�e�G��b�,8�K2��ܦ��e`X��&Ϊ��}j|`�*�2������Bs&3�>�w����b#�>[�v��v�*M�˄0�[U���K_qGVv\fI��V>L����{s�|��p}s��������y�'v������笱'����(�),������y�O���U��/�1?��}�Y���m�?�<噑mm���06�LB������j�#��>�U:<��}��}���� ��@m���P𠴘�S��35��H�4��[�۔+��2/w�f���,�����C��V�6�¹l�4���e ۧ8�����3v�]���Sq����j���kb�g����p���Q��$S\�djvs���Oon�ه�>~�����~��$��|s|*�����X�wwg����%B�j ������,xO���)���|?c��#����>_�!Z��~�^ �i
�i&�T�� �(r��c��I�_���|�!mz�޺�ͷmO�9 ��.���1�v�u�x���!�}�� �9���|��=�]�ޱy��PO'-Q��h�$�`(���U�g��8.ٻb�/�ib��h� C^ ET����0�
*
�D4U�N�4����Hk��)�.��hx��>C����-��:_T��_�-_��@νy�}
��$�qQ�(x��]A�xڟh��*$������}�~ؗ��#�!�I39iE����I��K�5�-�eI�h��$��K��6@-	��M7Id�`�)��������5�����_���޼�������f�������k}$$�g�Vf��<��pj�t�}����هjr�M�e���n_n�%��MƵK���d�Ee{Rh&%f,��e���I�;|���7���sov6���i&R�M��I2ӡ���?�9�������Ϝ-��V�26�ܤ)΢r�M�k�B{S�C�U9���/�`�~_�[v������U���;D��'U���>F6�ǐp�5�XYBuS>�ҡ�sW��SY�Y���Q�"��[h(�4e�������y�����u{(v���φ��r�X�)0_$���I�*n}`�3�3��fS̮��[����UBTM�s\(�I�_$� �6Q���~�?�+�����5o�׀�+J�OBe���\�b�~c[���<zU�Yz����	���2�AX��:��|;�fo���'ľ,����v�t,�K�����G�!��$�z�������og���!ǒ,�m�t���B�W�A[*ݤT�K��>����a�a?a����MѶHV#X�X��������E�,S�BH� �Xϼ;7�����ds�z�[��Ibd�bd&�,����u���;Ы�bQ�ι���P�{^R��P���ɢP��$E/�;�{�����p8�W^�w��?l ��K�f:��mTw�I&I�I:�#��]�+z���(Wk��ܪIK�E�\������\��������8�;�����`��nR.�%�Z��N��O�E?��&;�����0GXΕ6��Q��"G0v�/��Ny	c�����?^2��!�T|��}\+�@��O���:���-��ݕ�b����P=!�-n�7)�B�Û|]�|<�ƶ'V���g�PE퇛b?$<������~����̫'n:)m3��?���A}ms��x��[�s�x�R]��o���%"W��7������v���3���c^.�:8\̗��P�]p�?�*�:X���������}�ۇ��Y��ò\aev�{~���2?Q�6ŸIe��0��X@�`���#�v`��n�l�-���"%�S���	9�:v���;�y�믿����̓/pi��׋b����C�E�2�O�`�v/�b�h{X�>_1��w�?��EY�v�,�2/.�$��-����贫IN�I�tNB��8�$7����p�ð�6ek��O���$����'9����(G�^~,g�%"�U1�9��|��@K��7u���eӶ�^ 0�0�0���ޒ�d������?<,��%X��qr��L�i�a�[4�"m��v_߾{�n��ݼ��-��c���em�[���JO�\��c&��2��\oN{r+V˟N{R��HU���i1K�*�)V~�e>��9�c�i��w�}��\}y���	M�{�;U��Ƽ��1�v?�C( ���%e'>��E��ϗ������g�'�B�v{Zű�K��ǧÑ�G�����8t%�Y5���#D��I0�b�jk��4_ǦJ�zHȕ|}X� ^�Hƿ�6=�p3,';9	�KĂVg��kyd?�{�9^��+�&�]ǫ����iE/�������k�~��e��1�wi��O�����8��"8
cI	��K���d����Q�P4t�$\/��0�>mvE���~���zFz�G��v��y�h\���5�<�,~�-�*�9�;��׏��*�ְ�Y����P!�)b�5��gZ����s�r��C�4�3G\������HЕX�m�ߋU�c���c�_�bW�C]��zZ�Ë�0�β��
	�5����[�O;IE�vڤb��Kl.Z�f��|�,هb�zs��8z��B8+��ŗ�V����/O_�s*���n�z}_����ȴ��)�^ `���$��O�l*l�-���;z���J�"\Nj_"Z����c{_�Ԝ6vO_��N�@�J,�I�^b
&���=� �`ٜ��esn��vZ�FkS�OҮ��Q���IG�r�ď��O��@rX��=(��i9�	��U���x�9bAnʢW��r�b����tTJ��������{���6O9��q�`[���ԟ�.5b�z~�`���i��k�	�1���ע`_�wEGZ��ܦ�v_"a�o�/9�dRr�����U{:�ZM-�x��5�M%Н���X�.��%�������6J�"d}(:ɨ`�3c��&^b�M"�����R��ޝ����{�|B)���/��x��2�������Ǽ��;��+��c��r2�&�jE͞�d�R
���D)�
�d�߰��I��l(��.j�&���P����u^���?�s��>��?y��֟��;iS��{0y�g�Ѿ�X����v����J���xq�����i����~n�cq�UEq��iZ���`��Yl��iOr�X��l�7:�Bf���Vi�"E�`�u�������/��oo>]z����W��q�y�)��|���ñ<��u�5�\�4�<���`���TO����Xn�[�������n��`9N���o
�g泌����$��'�v���,�qh%'Y*S-�������i�F���-M��7v�T�V��w�NU�u'����Ř:e�]�\��!_�Q�����6�dk��Âjw�}�eYg=���In���6�C��cI�ᴤ3Ƃw��Q�?I�p)f�|ZQ*x �    /EJs�`X�Ѭ�4W���.A( 4�� if-�Y����� <�}��n{+�q��"È:�$#�Qc�R�58��e�x��l���q�Eix��WB̸�J�U*�u=�1jtYA,���=�����t:���搯`�K���XN��9������"�T
��>� 5Q "|P���ؠc�����������j�Օv����1j�2IG���CNg]�,O��-?�s� X�HC*1\J�	��wPt��Z�^�ܵ��S�B_q�d�����&�7&���ē��?����W���屑ޜ^wNX��їp.�[:CM�+Lb��t�q��Xd����?��/w��C��K��DPqH敶	�!TCj��A�-��c��|>����,E��V+3�6��)�ax=b�:X�M�P����zC���h})��E(8�*�.BKV��+�%�}Ԡjנ.U��4��"�̑h�^���?���I��B1��U�+�!#B<R�LE�a�{���aμ1��Ve�Z������$Wzd/2������@���(>x�F�6�+W�/�Ꝗ]�Tx*����L=�n�Yңݩ�Yj3�m{"�o�"��	M��� s�ԋ�.�%#UH��J�T��`��v�؛e��Ve��F���?n{y�3J���Z�ڑ6�o���_�n�ǭ��/�^�7��ԟ|�Ʋ��U��D�琈^��5MH�$��`����o�#���4�v�>S�J��j� tU�sl������1T�kg}�n����T�ꆣ��}�s+ � ��C����-�W��O����Ah�B!�wΨw9��o�ʾS��R�u����W���:��Η�f�os��Q���7���I��	�mI2F�- Xf�~�������n���苩��x�Vt<C�d�$��I�u�+�� &��:����὏L/n���.�<)h�^VJ.S�����I)�O����0���zМ��*���}~�b��C?��?ֆʮ��Ѣ�ZE��VJ��W8f�唐��c��5�y�r27,�}T�&��&B��oЛ��4�^�,�U�ai0��\��|
��5L��q�<Z�z�7�v����o��������-��XpE��AR�V�Ă�Ѕ�SE[*�P*024���)OWk����>���ϊ�][|���R/�z �A*?t�

ep�2��I@TO�����;k��yE��a)����њ���?�h�d-T�[�|�����hhW�L3�{eӞM+�rv�NR�+�s��f����{\���1yo��n�zl�$}h:�R1ׇ
_&�jL�a�����|�>e���6��x�'vŋ�|nA:J{Aj̥I4�=YSŕT	��0V�gY:8�#�DvO	yk"��ƚȌa�dj�L�����ش��tc���Rf� 1v����t���a:HV�Ç�D���ꡭ�B� B��M�$[�d�u�(��Bi�Y6��Ҳ��g�,l��Ԙh(D2*�?8
i���h���Z%Y!�0�&��ԳN�'y���"xړ��z�"rڷ�H��)i�!�Vء��ĥ��.L��**�>��e�M���1�K��	hd:hA�X?�W�2F�#�N�����-��V�O'������y�d��>0Yz��nK�5�0�}n���髼@n��2�r�5�Y0�.*ZJ�$�L�1�M�`o�V���O��W���XX���gGv�ﻨɐr�d���1j�jA[����X�&;����k�|�xl/��:�Y"j���B�(,G!�Ѓ_�����xQy͉O��>� 5�
>��#UH��hg�Z���^��:W�88�{Ɩ�����3�Y�)��w����;�(�ׁ6s:_vb����j�����T���T?W�y�^SM�%�h���	����zva�,�MM�# {�+h_����P��j���Ӷ
kw~�링�I�M"��R ��{���R�`9({�c�}*s:����-���]���z�ö�]C�꬏�Sy�v��\�2'�ϭ&�+���h>����73��"�Om��>*Μd��Ss��&x8c	�z@IH��}���,j��b��d5w˻�e�l��D�"��Q-�!�K+H��R,�>e��z��_w���*��F��*O�Z�'�<�E�S#� ��:�����mO��M�g��S�}�{SX�2���(�1]_�Nt�.��8�[~`��nPmϵ�����0���ݲ+�˚����Vi7
���lɩ�,9�r%��+!���J�A$O�X.Q�(h��Q��\	�e���f N���M۷EzD{غ35Rk���-Rc�k0���j�xH��~���ꊂ��ո��fҩ~$L��2@��8��l��CVC���C#���!v�1`�a���hT�о��?�I7�g�9a�#��s�aj�����:Ą:@����  �� 9L��S�Y�w���}�[�:否��A\��4,����#�,�Y�������Z�MI�F�Yb(b�~�;��_n�����-iJe�,:��)dL��1�YL.��6�Μ]��QL��U&UaL=jt�A�I5��V%"�bXw�%U���愳ZwCj#fX6J�E�����x$X���G,{Uic�(H,9��5ʢ�Rh�)tf��4�Wf�o���(0X+��roיZ`�ڍ�D�M����>5
��
D�5�zf�����{�ܗ�u#G�Qf!�)������XW�������Y$��4��Aɮ�����1UH�ĉ�o"B��P�v������c��tަ�P7ǯ]�M��p�c`�Z���z��匣������>�FQ�wZ�Pu�H�+,�3o�{~�5�Ҫ� /��UHSC�b3(i�W����!5�	����q��9��~^=!���q��ۯF���q�g;=IϏ�F����YZG.�7���h���p�Q\�&��WX89�-�k���
R�����y��\��lr�Ǧ�0e�'��2��z�@�>�P�9;��ڿ��M�p�,��,S>L56'}���hڨ�X�Jx�p�.����$m�sC������*��k/aS���b$�z��j���|����0��&Nt0Ci�9d���_ʰn��-�e���y(U���N�+�������%�DpF?�f�����{��+���`��>=<�N�h� �5��g�}	#�
�b�_���uBŤ��Y1�}�}��Sr�Te�{���A3�Y�Y��K q�o��w�T��������M�h����eu@�s9Yu�ԸQ�R��%|
63����Ԙ�����7�����]��^�1>����">�������)l��%6���9W=�&B+H�O����R3M+ٚ��S��`��@D�X�y���?�s�X!~;!��U��Z!L�C���j�@���:ǧ]�&	]%�"�x]���!5����0��ed�Cg�[��O��|��ơb�B���Ъ��R��3�l!C޷�aj����Y�bк�׾c:���)ѵ߳i��|��X|i"���NJх|�2Cj�\�9��z�/�3ӌ\m܎ 1�?�K��L�!p()P<SU�"���L����q`��/��*+�m�?��z�uK5��W��η���i"��82��NB�=�+6_��Vy�P���=zq�>Ԙ�NB ��:�-H�c�Up��Ź�;��=W�<����_ ,l߷	S�`��U��Vl;��Qj�r���=���?5������05����ɿ�M����֕I:䀿*Դ�oJU�1�n�Dv��Qj��.��������������x`(Nf'/9н8y���VW�#�ѱ���U�1�͛qE���I�R�ؠl1Zm�`�>0L��0���\ ׀�E�Ij���T���^�����T�Y�zT+p#aR㠠d3U]<p8�z�_w�PA�EfBm[�KN�d�m[��5�i��\c.WlS�{a���|GY�j'����
R�p�v�թ4�h,w��,�gWf�O�k_�����8Kي�>?ټ<>G�l��_�Gմө�����8*���'XP��Ox)���I��+�05
��o�n�E1��b��fQb���qMS#o�TU�    G�1UCUzX��ò�.��#�������gP]��Q��h��֗y�Z�� \��C����U�h����88����I���&�{I�(��|TDէ�QQ%I�>���ʹ1���j\3�5xMS5tV���hz%&��80'|כUHV��d��u��3�Kɺ��;�wdw���Ƒe@f���!�ڒ��o���ƚ������۽�j�E��aꪖ������uT(<�,�٥%���wW�R�Р0��T�y�a�E>??��O�#�i�Ƹ�}����u���Qj�\�04�6:�������YZ�_b�*4|W�vS���گ:o��`�d����>�xמn�ҿ6p�ux�z##w֞M�<�|�.�U$����B��~C���mXg�3��	��7:�78�?��4�[�}��Һn��L������,�j#W�f�
`�Ʌ���5a��ru�f��� u�Ɨ+�*y�:x�n�����cI1���{hˠ�j�hS]t�N�R�а\a{G�u�� N�g��f���qh�QǇ�
v���V5��v���5�	�Y�֣��9:�0N�����\�7����&�R��`��`k��] \���exG�>�F8ף�$���AY��i�Zj_x�v7�#�(2�Btc� �0�4�~��pd[���}��T�ݗ�^v��01&�Ъ��q���7���B`�T3�k�T��G^�rε=^IS[�������?Pt+�l��X�k
�R�۴��];xG�K)ح���6���M�F�qÆ���eW�U�=�N�yj�(4��	�zx2bU":nH����V�9`�OT�G�U���ƴk9v�-��`E$��k�05�8�"jPc{_,�y�Ї#�Ј9Y]L �U\�Y�������%i�S|M��Q|�SW"�0�>5�S�Ƥ�O��*\Z ���[g��05JD��^��q>n���Ȃ{��fR��`�ՠ�K^`r�3�K�*�f�a�qx0�jp�O��Q�gu�7� �Ը^��V��)|���_��H�P��qp�zzе�. r��m=��oL�1���������������fkY�w��U�ﲦ����Ƒ���B��fCh#����7I��$Ajl�(���R#�_3.�5������Q�D@����9C�+: ,ADb���{B��05�
�W��4w'	���p��zx�hU���!5z׌��U]tB}�U�g�����8:�]h��|�i����v�SL�lF��M���K:�o-$�Cj�����x�o�������֜���E0_�^��3Tʒ��$�qlP�P��l�9�N��d���+*��=c��>(�R�РoM8ǳ	"]m�؊��J�⨠k�Q�.*>uX�05�L�һWU�iUC6������/\��1��8H��k������ߡ�	R��%Vӏ��1}�7L���XM+Ht;OF���_؟I�!b|X�D��R��{K$OGn������)adZ̡!`�ɸ��!��P)�E�>5���5:��hi�ҭz�85
1ݕ����tZ�ћSJ͉~P�ơ��d��+ٛ2?��Aٞ�sG����j�,}o�t��Sc�h�P*�~.��b�>�C������v�Æ&k���.x��'B��R�aH�8�{d߹jq�{��\���3�[p�>3'��Q��?�蒣���{��;ʖ�Ŷ䢌�WmE&��y�3����8,Xrk�K>�����6b�P�SHۃZt��u�x:�s]l�}k@O��c�7�DR��i5X�1jg�&�K�m���*�X1��t>!���5J���j���y��Scp���� �7���Mؔ?�/���R�!c�6�>?kD�Kc�xk��g��	�]!F�	,-uq����y����t��uWL��Fr�Y�H�%�>� 5.�B���|I;͍1��(�Uk;#$��2X�N�CG'D�c2����=���r�M��9׾�`�oL��:Aj\�\-UZ���&����*|��e�[�#�
�@�_iPʵVZ����L��٘"�V5�S��}����As�pl�Uw���5t���O���>T�Aj|Ra��a�=�Us�@�{��ل)�~��5}�S� �p�tC��嘥�x����j�`B
wH�C��ZG]��]~,�Ъ�>4��Ш��;daj|�)jN�����4-�I��M[���9�Ը&���5�)(د��jK��oš�	�C6ejGs#Y]>��U�\��֕��˗�8��KҶ��#�ԔN'Y:�ZAj
֑Q玈��U?K�C5t�=��o�"�6�`��q���~<�� ��5 �e��@O�q�Xd6��~�U�<��k��BB0����b��,��Ǧ�/ŧ���b���-�e]�v7X�������d�;bR�N��K1��S )�;���N�;|7�������Տ��Z(�͚�/���;��߭>Zսu����-����Q�g:�.�>JS({e��;��Ĳ�$��o�U3���NG��Mwi����)kw�DȺ��Ը����n�讶K���վ(I;߈Z]�zt�˰�N� �!5�Ma�b	�VO��*�YU�>k_<�u�u�6ti���%��˂��)+&DF��>sp�o֧��μ�˖� ��m�]�r�ޒO�+QG-^t+H���Rq��J�ayDk���Gܲw���/��r_2�oe'��4Ƅ�2��kI�e!>�Hajt�S��MM�E�3��Ԗ��F���;���~��A���]	H7�S��S���٘���n����[��3���HÈ$}�_�V�>��VMy�_�`�me�*.B�""�l��cY����\�nd)�֥ty�3=@�ջD�!b|�!��7��@�oi�7ڶ�j���5w��9J��2��i��X������jqi�.\'HJ<bGW��OuUw�˞	�-j���]�8�G������_�Y�ۋ��bpp'�_fw�����)���uz��̓ںH��bː"R���o�ܚ��S�f��a�9�J�#=������݁yR��8��Ga�9�ʿ�^v\�ʙ_�xY`�_�#Qz���'G����1�s[�	=��G+tsa�A��r'C�Y�V�I}iE�H������/!^�Agn�+N�u?2S� ~�[LT�c�"M�r_��*�	_�A#��)u �� 5�~��)b�h�鼬H�lW���%� �B��q^�21z`��(0�%���B�Oю�de�HYq34�&mM���T���F��`�����J=��;ul�q��q\0�R����҆N��&�R'r�a}jl��5ú���v����w�H5J�}w(L�c�V�&������iڳQ6ķ!5��H�l"ȹ�K�.�W����qt����D�O[,]w��_��<�����C�cH�#���ᑝ�$�y��˷��y��GNLx���Qt
�
W�vvs���ۿ_߼gן>]����'�Xn
�卸z�.���ӡ�[�=]aj3�~,�������ǂv�f��a~�f'�0�]����Ʊar3�n��&_Ŏ}@�Z�}�<�3�T�[D�i�C}A0d�9�����<t�mK>�y�xu���=6'S�8�B]��M�`�3�n�]��fv��{����7��/9���a�K��ɯB�4���+ޅ���Q�p5df�O׿�}�	X��:�}���7�o.0�}y���D_��L+��7 ������V�	����74����:�Q;���gE��ۻd�x�|X�>n��z�/f�.},��]�f�H5R�p���=^��Q�M�d���f����R���k���ɏ���JOk���ut e�R$n��88�V�6�5�����/o؇�>�W��|��Q6y�Fn`_L�F� J?�S�@� PM=)���y�W��.o��~� �3�.!���D-L���!F0S�a��-���nd�-���>_S`����7�[R=���[�� ���i)p
�>���C2{��������/?����ݕ���b�O0�U�"��ʚ9��w�)������(�M��^�^36��"s�)�.���L۸�$+ �  ��?n!�c�X���Wh���������WeN���Q	��{Ӭ�$��'��'Zt%�c�k�������,�v���8)&r�F�d���9����^V����)�i��G����+�X��r1S F�1;���A���J%��^콯���yT]W�Z2(���FE�Ne�V�w�~(V��~[��[vGO D��z��km0�nX�n �Jˤ`O"HV���Ǣ��p#և��4�������Ӫ84���\;��Q����!9�h|#�ÒN�c��������n��䅥��z��Ә碂2��Q
0��.�\�y���>~���w��߼�g��&�O���Z�9�e��@.԰.�#�uO�l�hY!�zs3{�����g���7��~"ò��;{����wf~M,m���2!����u�)w��\)J����	���t��?���]��d������g��1�N��&���t���=�4lR "s��ѣ3=��HR�	./%:9�^�x��V;��σƏzٓ�K��mڑ�w^o�Z��T�Ԅ�9P�?Q����C���05�� ��e��c�>oaT��]�����7ƆϥF��.L���e�5m�ַ��%U֭��4)x=;u�[�05�ZӬ�n��\���/=��S�6��F���?�LS(���4.�uJ%��^ؔ����+_K�VYO� ����}�:H�b2)�p�HH!��u�_7�ua���`�V�p��������q��M���i�~��}Qݖ�w������B�d��S2B6�+�d��q��i�{maf��0��s�-���r�Wy���31J�ä-����unYGt�|D���*ዋ��.��q̚z�̡u0��e��3M���F�Q�RE����崀�B��Z�ž�S}P�6A	,+��}�F�t�B'���]��T�[W�_>aMU��T�]ʠ�x<D��jz��p��#��]�w�.������֬>���rP�Ǜ�eg���6e5����Ҽn;�_�#��ݽ�����-_;���nZ�k��ؙ�S�M���`:�O\_�t]�fi	aB��6�mhM��� ���Ё.��&t��������YU��qكقgR7��}�e��-��H�i{A��H��?%s�F�9��]�U��y��]�c�T��+�}�.���6=�ڂQj���n[���CBE����ӧ�$5t�u��4#|w�ۛi��I�Ntѝ�lQ���?����<�`C*N:I�nGQ�E%�<���R�#����N�_8l}���_2��_Ppa-��UM�R�[����L�
�*���#8�":��!5�[E]��.xxʻ�z[rF�T��#�
R�TצJ���C��p���7��'�$;7Q�W��=��}����~\���:�Hk�F��'7���δ~Dy���Y$�9B�-��_�.%9��]���[��eX�l�����-���K���1������鴖��Ǩ�š�ظ�0s��꩓�Ă7����g~�}p��,��/�:/z�����c�:�5��t�Zu�w�y�䔵�߀ʥ5����ƛ���AwaG�R�:V����8[a+a�&�5����3s��#��:;�p1� 5�����W����ճ���3]��?��8� í�=_�����.�-$�u�KYݲ����V �R�2�Y,O{j��GIg��SǩȠ��QT&�É@sn�9�����:��4B��	��u��ժ/>KV�u�T��U5�`-���=�&����p �̧��r��7���ꃑ�t�f�:�rO�]�:�i�R��;_Q��l�V�׍��Mz��3�Q_ֿ(�3�j��b+�����&lם_�ѹ%�H"��Py�Z�iH��6&��[�-��|�1����F)�L�	I����t�E���@uס�C��:�T��ӾrS���;��	�?�U������U����c�8.A���ڹ��*��#{��X�|�EH^��8�u�l���Q��!�I=FCAǃE�k��=<r�Yr���8�N����H$���'�8�� 5	ΐ�;��s=H�� f�}?t�k��R��s8�6��#�ʦ�7CǊQYh}�qd�󮯚B��<�,㻯�!�0�>5	V���syPu��95�������`�Q��~p�2z�1��@�f>���ً�x}O4e��#��r�|�A�o�[�꩗��'���9���RH��2�������Io�������0�����o����K      A      x������ � �      C      x��]K�与\NQ�����x'��;A���AE*C Ȉ�)���<(�	���Q�>��)��;��(�"�|q<r/��+�=J��<�����`<�>���Ӵ�N�W�/�_����%n�Z<���W�G��M(q���/3tY�#����Q��m��<������{�	%���yP���+c��	%I���_1`&�R:Z���CI�E��;^^ow�J��w6L%}�p��]"��ȣ�Gr��WlG)�'��$������0���P&y(I}��MR��b>J�t�$�ѳ%��W̪�Ghv�]��?��D�n�(�ζ�R	�^�]�����ʻ�(���u"5�x�9��y(���ͼ6�b>��7ǃ9Y&��A1zT�e�l��R�8>J���2�`Ĳ�R8�Y%�(1d��;Q�%�fґ�u .JE�H�1X�����}�HA}��|�2y$%���Ӵa!!O��C�ˣ���&RQO�y(]�qRdU�%,�vDa��=���)yLX���"��0M(��/�M��m��~�s�_����\���t5�}�i[�7�x�X�	%Uv��=�ŋƂZ�@Ra�0��a�sVGhW�%(;�8O/��ӎ��%wLΠ =�f��(�0M(A�1�S�e.���E	�V���9����x�8=����eҩa�}���tQ�p+����
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
����L[(iS���x^Z�F�y��<��'K��Lqt��z�6=����dI��ԾOB�#&gL3Jڑ%e��8�s޾inX��YR����R�5�Lx�@I;��X=�s��qb�l���%Kl~���Ӹ[)��(%mɒ{���6�C�haz<%�ȒjE~ڞ�L�.a%m�v�����x��~���cI�"?m��b�Ҽy�P�v,�V�Oۨ���t�,P�n,�V�O�6�כ7OJڌ%Պ���`�F�@I��N�<m�vf��J�?%����e=3���@��)i�.�U�F$y�6���S�<]ʸiD�zj�P��)i�.��DZ�]uJ�9%���8����Eo�'��uJ��K�����,H�9%��Ry^2��{� i۔��]Ƨ���>�ٞPҮ)��.��	���	%m��>i2���־���y(iϔ�I��Xb�� K䀤S�'M��c!p��%헒>i�<�|v���䡤�R�'M��E�R� �EI���O�<��E��3�V(i����W[=�ױΧ��P�^)链�9�8.��}��<��UJ���q�z\�}��o����0��?/sq�������I�y�`�!ӻ�P��r?d���8ք�H&^���1�~���Ů��Cq�J�S�w�=m�^r�7I����3�܏+��8��HM&�@Ic��n9���<��_�l�\��/��>����P�$\v�]LL�2��m\�h�=|��9��lx��ތ7u[��=�� ��q\��4I����qk�������Ű�Ks'�^��5
&(��5l�8(�a���]��F韃��#��      E      x���W����.|��W����BT��j�"���qo����_��rH������ٓ��'ˤ��*�����W�k2���?P����r�u3Զ���<򗋧`�q��IK$k�c���Y뇜�Y-[�/��P��W����r��G9ęMO�]L�/��՟��?8����?��A2��� (�J��p�?���3 ������k���0���%��CC��C�e_C�\尡~b�Vo��;}Nksm�I�9�L�3͗ˈ����	�e|X��cO:A�q@��3W������p�����C��<��@��W������C�x�7C�mO�B�,68�V�%}ڭ��A�}�b՞C��f�5[g��l�5�l/GS@R,MS4�~��i��%4��H����x4'���p�y�+���h��y����F�
_ې�6vوs�3؅!�c\�<��p���f�^��͎��׿�
B�^��l����P4�^�{�㠳��K(��/?��]�K;���8���X�-P��e�N,G�t�e��+3�Fֱ�"�'	�d�W�f�8C�E���>����?$��"0�'�?8Q�@�p�8є�}����G�Z�Y�b�{�l�R��g����WB�`w �19lmT8���f=��%>�8�-�! Α��h����?��V<Z84Z8�]��r���QɥeW��gvVEκ�B��z���]j�r�eQ�<`�X�����/K�h'����g� ������˕��'e�u��o늆t��ȼb7GC�>j�$j����<������Q�<5]$*�NL{T��-��a�+�"q�aE}��rAИ?8��y��^�� �uK�5���z$�"�<?�G�x��B�vv�%�c`=d��(r�;ɼy2R�1b˜ s��]�2��� ڳ����,��l����J#����P��rK?l��ڛX���ά�30z�0�i�S'����\�{3J7�q�u�/ I4�l�GK~������8��cd�`#�*��r��=��t����B��+�n1\�r/�}N[��u�\,�l����[F�C��ѡ�,��G#M��s��a�r��d5��`���g�m�W��ʃ8!�/?�;������LBc�V!�!�㖈����I�g��y*�Fц��/d�ТaI��s�=2a ��� �c,	��H}�Xo���R@���c��c�{h
<*����`*�v
�0�!�u����)Չռw�NS{*��S,����(Ɏo/�b��[we�>�ĸ���Y���O��,�R��%�ҁ"�'��#�i_t5D��7�W��3��h��dr�K� Y�<���2>G��;{���3m�^��gA�$�M$i���U�%(�U��Q,ۄ���4�]��\!Sw1/vk�~��o�me��;{5��=v�����y��SwB��x'�_4�R4MR�X��?��'Ea,�2�o�����)���n�T�s�T/�Z�Ǎ�~�s��2�-$m��tth��鎇�vd��b)�����_'���?�o�D��	�q�F�W��Ģ��2�vz�G�b�����і�y�-q�����ƘT'\u��Z�0r���"c���ڎZH�1h;��ן�z���ʡ�|m �F$����I�r�ðUyt�U����9��<P\�����N�M��2l0*[�mC��a2r����/�/���!���,��b'����ʅ��n�/V�+AR$�S�%��Ң��'��0�b��@#���i���Z9ӆ��
�Os��B�w	L[����u{3��}_
��"U�y���Y��O�r�6d�\յ�8��r�|K�.$�E�b�c���a��6�Á4�tz�c�t7d�NF����v��H���|��׷C��eۏb;NbB�/�p��i�S�Ea+���Q��A۾ G?�N��׃ހ�D�m�8�1����H�L�6�p��`m�#���e�M���d���a0�y��HmHT9 �D����h�bA/
q ȁ���>p�C���;��PVz�^S&���+y��N���B�E�T�i���<�L&��>�Á:���LO��@F@n�3RO�����%���R��0�f���7���D�-l�ȊI�P�P8+>��ѲS����%>M˝��
�O2<�\Er7��C�3�:�*�����LH�_�[p�q%\��zù�6���F�*���O��_SW1���Y�����O�)��&�Y��ǡT( ��{ܛ�3>���I��ۆ�)��Y8��n8���8�\|�'��)�	�F���d��e�b�I�j���&��%Q�s3��ݼ8�A�)��5���-=�g�.��	1�1�2�X0.Q�N���U|���Dj�دf�&�ݩ��j�<ٷcC�߭����Xdm~�ki��*�38Zk�F��M�*bG��OH@�-x_,��[����p,�#�a�y��Sȡx����
?��KuB��
��������}ڦ a�*p�nv�>��y�,��.��S2�7���MrG���r�6�beĲ��GK���=�`�KW9&=�t��ta�$�s��N��~[&���8Z��g�e	���*�_,�&���4x��z�+g������D����#�!qu"�$L���Z({�Ў,_�9����g�'��+J�a�儔�.��)���5�%�I�(�|��'_��y����G~�������Kֱ��r0�23ٚf�yTW�|�N����v~��}G�Zg�qKۋ1���S��}"v�^µ�&Vn2	����_[I��y�0/l���Y���,�n�~�2�V���i���d��gS]��=��X4����w�9�l=�d�'�&�����{.|�GjC�ʭ4��)�}�>�.E�A��,�Jan��*<l"J��DF3~3O�h.5�˼�����B��+c�mp������ �'Ih��{�6�=�swr�BTC����h�}S�k�ܦӁ�Fj2�Z{2YOx	�:�P����s{�A\�ɡ���`�)��W������_�0ܧ	�SV�RpG��e?�KcQ<�R��\F9��|Im�\t϶�c$��}���Ǳ�z�b�sH��gr��qR�������׶r?o�GjC��Ⱦ�CÛ�2R`��nY*v�8��B6!ϧZ0�.�����dI���3���-�$؊�}��A$��5��[����ΰoSB^m�(wS[ƔЎ〦�M����b���">�B)w�N$d��t��Ng�a��<��R{�KG��zb����5�;W�~a|������?R�@-2ܮG�`�*�!�w���<�G�y�>Ѕp�[�3ʘ��u`�˛����J�D�p(#+>5��?���B�����HmX�*�Ie[A{��0	�v� ��&�L�s��]8jG�y����.#M�ח�~8;���t>�ڡgaKG"1CU|���MS�)p�6D"��G��h��f!�=�f
#c0\�"�mVj'��6
���h��=���w��
���EQ^�����g?�SF�R�HI���~N���Q���� ��a���'i�h�e�)��!׽�����2����=��J
V|^���p���#�an*�ɪeGёe���t�=f�T�H��6�������˾��a�`1q�s\g���@��2+>W����a>�/wjC��z(-�E� C�C�0Xo(�d���<��n?����n?ϩd�+,TY�ܴ�3�5�=��s�<��X������rp�'��6�0|�)$nn�}��j���=��`��
���פŎ��I�p8ȕv�>���(�$p����m�Q�#�}����|nʉ�Ӏ���ƴ�d5�4�w��ܙ�Tr�enN{�$���H��s��l�����H��Gƿ��Ӈ��ظ��Ȓ�RE�(F�mf�k�z<���9�d�׷��F�D��:12�2���3�ue��*�ܸ�Z���z�>�@���q��&a��d�����Ѣ/�h��w�$��S8L�����dfv-�/O�(������X�R��e�@��6���?8]�d���E_�    "e)���F���i�*�J�ǉ]R���ݪ��u��ٻs��γ~ �����Y��,�x��ES]���T�J�!uY�X9?Q�N��G�Y�[zEO���f�tZ�.���9#�%C:�Z�L�z�����߅��1N�<_���gɲ2�f�o�>HP��R��0��	�ST>TY�pS��~<�d�l�&y��t�d�y�N��g#��:�W��O3�B�_Y��Q,�U�>�;�kJ�?8�qTsŔT� p����/�L�MCqg,�W�Ƿ����;u.�bl��]Rdv��� �-�-�����u�'u@� ����~�**UQ	N�!q�!��V�L�,B���5��v��"���%:�T\&��!���i�/��>�����:���`��p	��w�.=("�.�!���u��	\�dq�y@�*i�sn\s���>����V�'p���!��=/3aObF����UzZg؇MM� �Iq�"�m��2}xi+v��AQ,
�j��fGV,��_E�ʲ����E���,
`jQ��
33�u���͚" ;��4��ڭ�5�nny]p��9*l�5�EA��(".�}\Oe�^7���
��H���s� ��+�^��fROpiK��\!&#��1�-g隩��^i�U.�G7�n�I�ث�{]Ө+�T&z+�������3��NW?��W����֌Qqw�oD��{y�ׄA��zZ~ҷ�3������H�C�w����x/��� �p�F�W�\�1�������.BlM��PTy�o���e<w��)M�oy-UN�CI��Q�P���gEMV�����ԯ�G�$��_Ao	�t|B�A/�D18�C2=��cD�)c�(1H6�iȲnq��,��f������de���JUKr��N?Q�F�~��8���Py;����MD����K8��Lϑ��F�SN[Rp,�-NR�E��jl�WY$�����#��rT&(�J�)�[��w�ߓ(e�ug���\�V�:�Jb��L4UUp	�&E�l�R����|&�o�DaP�P�i���4^����[a�GY x���Ѽ��m����B]f��DX�F�w0��c��`0|ZlŎ�N���a�ӛ���!i���|��W�k��1�y#D��V%��Р>	Q��j�96M���Ȟ�e^�q���t�#h�1��f�8}:]�݈���DY���N��
	Q�����	��"0�x�A|�N~� �f�[`��l�@
�0�,�[aR&*g��0ҳun�(�I�.���(K�e��S2��@�����'ܕ��*�R�Ho����nEˣ!�#ߣ�K��~W���Ŵ�eL�=���E��gIG�I�V|�Y�U�2aev��ody�>�R�aؐ�en;���XFn��n�mv�5�
��$���z깻x�b����hG��A�JS�i2��<$Z��)�W�<�bdLV,��GH���5GG���ݸ�҂� ��c��y�%8l{�"�'{����y[��t���/�U�7`^�XU݋<�ҟ%��]�}]Y� �|�[�]�ǖe��	�����2�?���@�cl�@1�G�L����W{��=��X�{k�ԧ�՛�~�`Y(��U;���)uZ������ż���������̘ (H���|��>�G�%���` �l���'�nơ�q���H<@���W��n	�~*��y;�z��O���k���^3�_�x-�{�����b �R��xl�"o'`dW�D�d/۫�L�4;��L�8Jl�;,�cg���t?���1�'ZNg��1���A�k�)����$�Æ�%\�\v�4ޚ�È��鼵1�D���pK3��5�Eה����R[�ܜ?�{��"��@��ܽ�>9��A���[��9g�����уnnM�%
Jv�1���<�\��s�(�(�M!�7�noĠ�]����jRŠ�ώ-���87�(�vJ~9�;7�w[�b���%���Zz��	���j�X�����`���f��Yf�>u�ԁ(�ѥ�M5�祉���ƽ�ݓM��KԶ{\���t��%�@����6���<u� o�� �&��\�_$�54��f��G��I��T�$x�rp#�W�е���_�|�x�dӃ�?K�j���
R ۽�~�U�k�=�5�\g��C�0�� 2j ��&��}L�!lU�?Ζ�S�~��g䵷�|z=���N>E�w�H�Nv'ǽ�[�=a��^TO��A���OSf�moB�*Oi��N������6S���E�����ق�2�A���;�`��we� �,|\	v����`o1}<Ql8�IS7�/'X�"Y���J~�\�U����M}d�
�1������+�fJW����ߢ�K�+[L�F�oUN���8�G��N:�~�gs?kii��6&�5
�,��v4N����N�+Ұ���< �� ]R��b$|�7�O��'�7_�+��y��<wZ������cs9aF�V�g�e6��3� -'�`e��M �A ���2T1��z�>I@?Kp���>��P��y������ZЃ`-nw˄_�r;>q���R<X�]�I�_� ���P�f��$����@�n�2�M~a�G�����E�Hq�Y�sܵ/���wK�%"����҇%twI�nr8��i���J}��ޠ�k4'��G�0�&Q�-��B1�'�d1U܇�G-Ŷ2� �Y����;n�t�ˬ0���	����5i�"��#�ڦ8�b����5�y�r�	T�����;�<ǫ��^��c9�زZ�:�~^&�^g�b��h��_�Eo��bP��6x�c׵�'e��<���I�z<��*�%��9�O��ڸ]u��H��@��]��HA�0�V�R����R�W1p�n��
o���x7^�a�t΅64�4�a�^Ϣf|�Qӽsf��*s�WB0pc����^ȣ��p^�wl�{�1n��&�&3��=����!vdC��{/�`��}y�����ן����y������-)�˺SW���%�Fb�9�,Ъ����mN�}a6��]u��x��B��62�7ǟ-3[$Y-_��[�z�����ԋ��e�V�i���$�$��lp:���q�=:�
�WGC'�!�����?y< $ʦ��K}�O>��|�����[)��3e�n�	�8&�:Lke��F�;:[^+<:�����G������˺G|
�_ϡQ[��A}���^�{�y}���e�.FϪ��VWz�(�#0�q�
�����<J/�y�CW���D9y^�e�چ�k�A���X64�77�i}��mO�I�ToF/���
��l�!�S<mH\0�:�N�i"y�9��?L ]5��el	Q�C�V�' `$w�����+�j#9	e�zȌ)��ۗ�ߓ�ɹP�9Ce�p���	'�s�����Y���i�P��o�(�J֗�����b'����_?Q�zu���
9w{�c
�F]3ҬS+f�e��-F%�dle�6)�s�XM�Ā(�1;w+�_�bC��Id�*������R����� �>���(9�au�Du��5�_ۙ갌%�q�Ec��m����НuA�G������;j���al_�^�����˧�������B4�OBP̃�fߜ���Mp�푥�tl��:`~��'n� D���h.��uړ�ͬ���~7�M��C�C�W� l( ��se8Jy�'eRW�V���)����((��>���Ha��^̹Y�V&��8�%5�I�1�t	P���x�	����t���%�� �n9�R�7��+m�k�~r��a+H�����"k���G�Rd��.��T8���-Y�)�H�]��	�}�����VD,cd��M	�]�DT���en�i����(\�z���[+�U�J>30��'�2&��΂B"6���k���,���F�GS��I(���t�������'e���-L՝-�!p��05�f�$Qw�����Q��R� :T��w�o�T9���X�	n�r|��9~����-D1�s����N���#;�S�e�"Q/    ��`��`�%��$��bf�)�*�X�?>�3�F��~ �W�~��(�0�b��S�qW�6�~= W	}��|ПF��������z�hSX�SȳQ�DYӘ��C<L������_׻��
�����V����R��sU�ʦ�<`_��,�6x�<����颳���,�q�b�B��6�s����6�G�e������̷wS^�����-�S�/���+t9}w��Bb��^\;X��h'��؎��/6F���r��;7>
w��7�_�/Og�K��O���+�c����b��cD_r��V��vD�"DK�,<�

�o�ƊƘAqZѪ���S9ݑ��A�s�b��N�����n\(�|��"-CQ��>�ksE~;r��1�1m���W{fAhC@������~6��s��.�H_�p�ɒ�B�\��Y��f�>ᦪ3�T�Q�U��	P������+��DzX��o���|<4.��<��'��^0�F6-�=D�^�f#+\�� �i�9��$�˫4��}T�D}�S]�G5�+v��0�6O��r�o�Nt��62� �o�O:&'���^�^��݆ٱ[z���8h��t��쬮��U�X�V��,/5�e�3�r��s���l��k�/S��-���^8� �\KK�^m�Y2d�;��VA��1�b�ܸ��"��������^�zh�"qU�x�N�-�Q�Y����}�h�M<1pM�E�.n���P ����8���8������F�>K�G�?��3��tl˯Q��'��l��ua���[S���riou�t��� k���XO����i�TM5�����UO�ξ�t�~�D�dfx�2I�M����\U�����l�:�<+�þ���%[�G����8��A���T`ec7ӕގ��b;
���"�^�������WY���-EA��}��~����e���tr�1�O�p�^��R�.nǔ��$jkf	tz �i���l���9�`�n&���,�h2~��8���^��u�'�NU�؋���G�ͽm�x����q����1���{~R�����Uk�Yn麰_bC;gz���n��Z����C����AC
 UJ��3ˏF�k-_dxKm�:�/�z�!��0�`ٕx%���.�-at����V7�p�G�ns\q�9��hS��.Ҩ�b���S�%2U๜��Y��J>%�m��=0�z�nk�[붞�y�kt���`��-��N:W�C�,-�=<�.��5ž`�m��Bj������|di�9��-{Om��6�&��>�O�c��y�
�uhzEwAX��j��.��o;�7a��:�Al��PJs�Z�?���Ui���}_�ϋW��8��ju�{5R���}e%��	��#��	c�O׎���̗Ӄΐ�u;��<(���W3�H�C�}�v�=�Ys�W�{�����N'���!�/0���e��:��� �{��)��=�gs �/ k�ekn����'c�rc��ɑ��J�ܓ�Q�{�֭g��x�blQ��8���+���/(�HSV�h5(Lm�A�<��ٚ)�z6��	�Bb����1r�	�E��&�)˲h�xgrA]L�h �3����-��|�v�U~t�:��ⱽCz}uW�d��?)V�ه�d��%�Ok=s�Z�[�"�ݜ�f �`���l��K�_z ���k�.�#+�n�8ݺ�����;�w�&���=Q$��L9s||��;�y����p�3�q��27�da�l�����
`y�f�'� �&����g������1;�����T�L�3q�����üsW8^@_ܷ�Rϟ�w�5?^��3ZC� I���gı��� �Qp�f"��U���g�<��	�~��9����|���ݢ���?�`W4%y�Ŏs��%P.6�F����H}O@��i�rՖς��AmH@~KP�����lj����w���g->]�l��؈�)����
�tAR#�7�0�C�W涂"���X��.]9@4
ʙ7r�RƋ����S�?�����������96�ۺ�o'�^�	+Pn]9\��^o?<�,�E�w�q,SE�v) 
�?Y_��;d��P��H�sUx*U����y��Z��P�y
�ţ��b���g8,(�z�u���}Pg[7:�x���%p�5j%ߡ A<�0�	J�1�a�H��R`�{tQ��wO	�z�{�3���M�"�K/�ڃh��mRİcX����	��~�[��J��++>�>����:^�]��^�y���6�t�sC�ծ��e���	�:	�5��R6N��]��-!������v0D��������~2�%�/WS��h���ycK�P�DTW��l�g���pk�7��=	7�t��E���~����˵�Y-��[tl���/|/��0�ұ�^�~�_W�ʼ}i��8$�����oH7w@i���)��
�z٢RE̳*��)}� ���;�:����t��o�Ğ\Z��3��䓁�=�_�E�M]��𛺩/�j����eT- ��O�r,�ɦ6���n>��C/��m��1J��[���l&��-)��]���2��^���J�ǿ��h	�US\3��V��Lu��]n���"�����L�a�d7^��H�4�s�a��*`۹��)q����ˊ\��x�PGyy#˔&!V����*�R�h���s����c_�.��Ɲ�cs~���M��(�z�ja.a�Lp|�̈́�li�(ަ'�=�=T��`i�tu�qyj�re���P�ա.͂�؛��[-j(�]�=�n01vq6���%<���/�X�E��'E_�l.9��%#�~y<ǖ-q(�e���.�����LY���2�A�n��Me��/̬39r���6�IHLz[%w��,�[u�9R䵐�]�k�B^.dC��?���ЕMc�=��J}_ʕ�"�ݕ�ȯ���� ���l��{i�$-�rL	�3� ܲ�q��9z��C��U����LE����Kx�Q �l�O�t���j��$�NS¶�m�N�P=3��X۷�x>0��X�l%���Bڳ�_��
|����>7�Dm����zKm@5�����-ڝ�I�dY�ٚ>��#X�u���A�v�@=9���9�p7	��*D��+W7K�xno��][�>h{hg[c�X�l����7ֵ�LZ��s��h�p���^�i�l��[�G��������7 ʼ�8�����>U?&����Զ�n)�En3\
�ir���؝[c{����o���Y��]�����h�dP,���&n���Ÿd���eo����$�= r? A��y2x�p[�4��d�d���|8�8j5�`��4'�i��_�oo�p���/^)�(D|]�o��	�������͝�s��"[�;�f��J{P(�,Ҷ��f�tF��Vb���+��o�C)���{��I}F_�,� p��8��=}���~����N�CO�ꛔ��$w���(dF���G+D��G&`��?��*	˝�/��{j:��E_��|4�Cl/�q1?(���'���i�JQ�څ�z���G�Α}�l�Yy����D���o�Se�!�ߠ6ޢ��gr��ǳ��M��F���4�d��I����ٜ�k���?3`=��-��o��e]^��3�*�Y�/�q��p�S����v�teL�+��<g���	b v�Υ���4`��Xb���=�˱c���:H|`��	`��H�iy�S��'.'=�
h�9�B=��#ށg�̈́����a�uF��j�0���{�`eə���HH�.W��7/�4E �O�A��z�6tOe�,ݓ��af�p���E�$
�@���t@�goO�<����ch��x��my�D�_yo[��\��x��O`�%������i\���*���[2�<}%�,��x�[$
-v�<��6��ͅL�,\(�s���dQ���C�{��;\�,V�#�c0��}���2�������2߯J��S8{�����p����^mO�a?�v�ӱ��?Xy�]Hca��Ϣ�v[��ȷ�*�}`���T��#?�e*��~��8��#��    ���"�۫T�I[B�fO����>?��{M���É��۽nQ���w�X9@��0j�|��<��uT% ���s�m�ou���1ơ;��mIY�9�I��dꟕ���L<�ۘ}z�L�n�:�-�Fv��}�����{���ߠ6"/��|^���r�mg�*��Y�ߥB ����\bm<��
#���LG�r�//ÿ�zJ�ٓ-z�I{ƍ�_%���<���?]VG������7���'+���i+ی�+�����s����X��%'�L�9���DX��_����|xI����������\�Gj#���tQ��^�q6V�M��7�Y�0D����􅝼A+|�/�zP �D�g<�v�W	S�&s�U!�~�E��J�秔�wC������y��T��{�ފ%�����)鋆]V�Z��&��n/���9槭I��n���g7��~p�l�{=�����oY�Ѽ�`
�-�G�]	Q0N��vgc�gw�N*��	k-Y��V�0���3R%1�P��b����\��id�j�ed��q��(V#�\3���������%���a��RG9�p@��\H�V	f�Y��Ӫ�n�o�iY�\�;f[��ʓ��j���O�ey�k��=��»}<~)H��i�a�g��q�	���w.���ӫI_��@�֞�K7vZ�Wy%[�we�~]��6!H5u�{j~}�-�O��!��!�D��u�T��'���Z�A�K3�N�0=23RBf���F�_��d�P��̽*��� �1py��&�����rF۲��,�<��:d�l�y�hFX0c}��
t��eп 9�F]k��|��(�~W�K.~�\�d5�?@oP~��E������W�������#(D�.�D{�]h��<�}dx���2J�*�l+�N��z3�e�{3yRS��H��5��e�{#�7�i�"������Mrf@�B1'�v��*m��N��;ڍK��^�eoN��,��/
�~�:�5��:��*{s臂�����tُ�u���p���A~nm���'�g#XM16$ռ�/���=괛�����jo&񲀮��y�p��{o��~�6t&������ƝKzpy����"^ΉN�`����bN�L���J;3��~#�7災���\'H�?[y7ϭ	�~CY�V���c|��e��py�?�"���M��.��PJ�c��>!V\-����5[��q~�|/�ڴ������>T,�����)��<-?RN�m�L���.�����=]�A�b2� ��;�C�vtpF�5��2���_��Q~���W9�_���YcY�_�3e��0�ԧ[W���Կ>e�)˶o"���{@J��T�tgq�yn��4�.���"�c��L�8A�
���}i��ƽ���e�o����<���-2�#�7��r��K!Z�<1���;���%�����!�O,mO2��Y�3�ŕ��QLyYy���F�opU�~Y�@����Ԇ���Qw���xǚe�����!��mn�T�tI� �%�t���瑻��_�����/O���;Pe+������</�V+��ψ�Y��`��+ݖ�Ñ=�x}���G-�د�β#��q�Ĥ���\>JYdO�J1��uR%�ϫ����!�l���ڀ��NW�É�銚Z�w�Y��ng�a���N��͏H-V�>��p���k�b	�b5[������Ҍ���&zX���Z+���R��c?E�p!	+�V�i�����N8�����>?	����=?kY�N�����nK�eu�j�9��W�TY�\^,�soпR�_ۮ�Jc��+o9-s.��K��"�	��`⮞,����F4K^��o���%=�l%�6ʿ8
�k���b�]���l�,�.񪭕�X�ھ�6�lHqk�M}��������ڜ����T{�fXgj�95���q8 �-Z��P���I���L��< �sl��1�!�=�`��0ˡkB*�f۸ۖ�����������B�#�!�)���E`E��v{9�e�Dy A�͝��ڐ����s�%����҃�b��)fi��%�t�h�Scƴ{YN��!e�P�乲���	�m�s��>WI����N����j��A���$��-ն�}}���*O��4���	��A���|�Y��	d�:qA�0qʪ���W�ŘY�����Я�P�m������>���)��齡o�<q`�}W��0sw����57�$Ftu��ǡ8;B�8`uf o>M���/�7)�-\M%���0o�+�%�O�rc��m���Yo���_�`�eW6�O�P��7\̵���\���ƕ!9���=�_�;�}�ER�_��-�1�����M��&7��������RX�$�%�p���k 0U�Ձ�ݹ�����/���T'���Z���V�����H6�/���:E@�,�����y���?ߛ�]�OU���S:�g��f�k��'Pn�L[�f�"�	����Nf�9�Ɏ��7�y��5���r�MI}~��h����F�q}Q�#�*QJ"-V�A��k'�����v����U�Z�9$�<�\�-Dc<:�i���Tp0rF��BѪ�����u�e``6_z*�v�����i�k��[�ݴ�G|�����_�/z��H�c�H�� ]�7��%&����bP��9/�ra�|7-V
1��/�f��kFJf�G�ڀ�K��7�_���R��f�nU9}k�������4z��L��6no\n�v/1$�%�b��]ޢܤ��g�[� �Y��~G���	�L�����R���F>l7���GT�$�^����8�����.�~��c��~<�x�
�W�q8�C��x��[�Ӗ���Y.uN�M�1��41���Z-�Y`�V�m����OD��r�r��#P���W]���p�_/cGW���J�W$7rPD]����="뺽�=M�[Ce#�M�`<h�|p�Qe�|6r޸��Tg~Dۦ� *�$!Knpsߵ�(� ������ژs�Iͣ���u�}^y�G��,�kn���
R�ӻ�?R0ا�_�d�(~tN�S=ـ?���#��]K�����,[jO��8]i�`s��-=d�V��:�6r���!R��� ����;E�\�����O٠
_]mBqu%A�{�S�,�o~�F�w"�e��`28��SR� Y2�1��z���Sw�qAQv�b�3���O�� 6%��h=���#�!A�s ;W��D����L�z��J2�͵Dؑg[Iҋc#�8����MdLߕ�'&���h}'�K>w����*���x&6d�e ��M.�쎺��G'���<�Q��-���>F�0�g6�:��8m
��@l#Cu^��:�OĆ��K����%��;�X�䈌�"��`��>�J��18�M��4�tꠐP��&�>���ly,���{!Ԇ��~@똾禡�����k���O�yBwM$���%)(���8�T�.J��@��_H ��B�����w�C�џ��t��R��]�F9���&�RV�es�����R��ĶOWς�)@B<���OA�e�6F>?�M�n{G&����F��w�׎i��?���P[(���E$�l/�w�=./I<�d��62�x��ph�_H�(�TͲ���_�e�V�
ž�I}6���c�g��w����0vB|z�V�U"�1���	<y����c:�u�*�s�g�㬳5���U����\�*G������Hm�Qe_L]S�-�V �.Ink��s���q�K�����L��KO9��g.�O&q���=6�n��#��[��.�@��c�����Q��<~�||)d��M.����<��R9x�֎�݅QJ��NK���r�ň��͂���<q��$e��X�e���6d�����kW
eB��x�mwஇ-�z�<���^'�Ja-֗C.v��h���(��#�_Ha�p_V�[jC�Y������z�p�ٞ����>��$����*�` 	3��]����p@!�w������7��>'�����ڐ�iHBp_^=B�f���<�{־ �v���;��o¹�ʰ�.{$�Y����.	�    ��7���c�ԋ%KmH�6%���c4�:��p+E	%�{�_�����I�N�=�Ƌ6ct��y4K��*J���_e)�������,�Ԇ,ܳ,�["v��R�N6�CZ̷۽>UX��0��
��X��X�+_�����os�����F��$�Ֆ��>KQwi�>��o�=��=���ty^�w;�;�z���K	fn���j��YEVlp��ͻ���_�Q4Q��qKm���@V�~5� �!�nH���q���r�,�Cve������yl������3%%��������4W�{jC��M,�9*��{���3����=���#��j˲S�=��\�uԁ�1u�ǎ�� _� �5V���T�P�d͙xOmHPY+�	�������]���4�����'�(C�e]�o���?��7D�9_�V�!*>��/p#�P^lF4����:�(by�B�E{ޝy�g��6?�P�b:.�ċ�32�">hǌx\���F�9��tl��&W�})X��*AN7����g_�.�Nti���|8�]|̙y�5�������^-n<{~�İ-��t�ތ��DOq�B�ꮰ;�_�/�v�{���oR���y�m�ӚL�,hqg&�,Z|{$�!�b��-�d���<���T�����!��z<O���d�/�.[�H�MG�=�Y
�y:}�2�'��).�⨢�n�	L�xS��|��8c&@��S�`��Ar"�{�y�Wr��������]�l��;��f��q�,����#aO��l8ڴԩ}`t�O�q�&��P/+f�(S?w���M��/�u�~���g��ȕ��|�ʟ"�YE�����}z)���G@����}zO}�H�Ƃ&�O�vRX�~��������%i��X*�&Br��2��X'/�v�n8f�m]��YǑ+˩�~���.(�<��_��[j#���2�s��grg����x8��2-J8��շ'��gz`BLچ�ylD���S���8�o���U�U�	�1C�U�����P���'��{�9v__I�GQ ���_��Z�T�#�n_���H=bx�@���7���x	��S��B �|��߾Ar����R�_o窐�x�T��>�4��)_u�H�e:�R�?��An.����'�b����T����wo����Gh�#~��#��#��b˳�����п�HU���}粪j���y���@#9����(PP�:U]DA�$��?���t����ZݽǮ�1x���keѧ>���[��! ������x�Sğ'F��>���[���C"�����G����n����}������;��m�_NR�z��#�|�7>�jzHC(޴R��C��{��7P�^���Kj����x����?�4:i:_��>���=�&�n,`,`a����Aͳ�S��7�'�έ��<�����r��d��<���(D��X��K��f$�,����vy�7�x��/�F���#�'��h�h}�?o�ߨOZ!�� Yj�Jܢ+1�sl��%s ��3�%v��8�#w��g%W{�y�[��e)(|��-N�f��vnB`��{�o�Q��b��Nի������[�oпJ��f������ٱ��'㨷Zv�L��VK�*+Y�b���,,m�V�$�f!*�LJ���hMa�}`+|s�_��o{��D��5��C����{�TI^uMY-��V�X.I��'�8��-���a�%�¨Y�wl��,̊�U�L.��$�5�Ѱ���6~XЦ�������2?����-��(���1y�s����2��	��ˀT�rSO!�t�p�A�GF@�i+� �N��6�7ޛڄ.�l�<$~#>���P��6o��Ȝ[�\"�#�S�Q��$h�$*2uL��]�K��;`1�05�cjC� �K��m5U������M��4���������U-�o���D��^��@�{�F��,<u�B.��:��Q�nq�<% 4�j�c�h�Ѱ���Zn���;C�ny�~��8oM��<:I�1�0��ncqӑ��\�����>�
@ŕB�q`>'J��t��Ȧ3���P�d�sU@����1�b
�)�P���|w�]��	t'R= 1t���!���+�����`B�C5����I&'�A$x���zG3ָ�0�.���lq�����F��8�1�_��� ���>ŤKŚ�a|���℞Hf> �^����L�(��7���W��À?�P�Ս�uYW�Y�o��������_{��|Z����Ǐ�Z�!2L��H0�T�4����������]��RDG����&���P��f���g͏6�Sg�7���/���м��Zs[Æ繁��|]aS�6�ҵ&m�U S䂁��ZNrų�v��z��ש�3B�ᡶ8�v���ޗԞNCؿ��l���X�ʒ�;�@`���0��l�m.,�//���}'Ǒg�?�Q�$���_R{tS�^
�I�;k�=o�Cx�l�<�t"(�=�l\�s���;?B��M�ƚl�i�Wu7����|�\���ؾ6����z���=+�Lh0b�	��Þ�L�@��QxD!EȈ(.���0W�s�\�Gk�saw�OD���~|����!n��(��u��8�"�[>�8>lRnD�k�b�C=�f��Q�/���*Nn� ��4�cݵ�l'���yB�s�a"��;��wղ��d����A�۳M���[g��W+T8_y�e�f�X��� �#���$��"LT6jm$jqp����R�tN��qT���f��H����@(��|i���Q5C7B�zX&N��Z��9��0&� ��/
n��8W̛N��J�F�;�'A�t�����M|���G�RL���Ug�X�}w��]�bn����2�S'Ӽ�\�Eh�����OB�T����=zmLy
߾�޸�V-�ۯWt6���.�H0e��U|�ť8�
���9K�U���d�S��9��*�y������7�R�^�c�����1�Q�.v����X��Q|Z�Cud�B����YS@�5
Q���Lޘ�MӦ�����7��{��?�M��-�G�"f	ߗ3��b�l/S������L_��zSS�3�S��܌�/��K�wP���B�6~��8^S{���%��n�qc+�bGk��+�ހ���N�C����ew��%�*Z��L.��:|e��S��V;�����7���Ç�w��jL �Ր�������ԅ�I�k���Ř��@ �2�>� 3���%�տ����{���%{I}~��Z�LL�;�������a� ��|#���bƤ�f5N'ds�F�.�we�˓Hm7� �E#r��a���>� ���h�u*��`����t9�𐊍�VU�(g��k`'�FvΖ%��q��X�����Q�ٓ��nBM����?�B*�gn��5��~@�5����лB�G�*���˳��[v��ۅ��E�1Z��!S����o	���g`M&J��F?�=	Ȼȃ�cy�*q ]XqF-�5<m�uD���A�d��,� ��A%�@�|� ~� �p��8ޯ�yM��@�e����}�8\ ���0�RY�h��rɝ������(b7�7��3�Î@�۰�����,�M� z-@��,@��ݦ~�͟����L���?٨���Fr~��jƝg�X�i*��b>�	�QT��.:/Q�Y�.�>િ6�zdi���r<{b���s���|3In�"!��bɓ1+��V_��mcYP�d;���pR�b5.�����.�ؔ�_-�{މ�<K�*�����eTZ��ġeƁ����EF��:��qv��<9�8.|��>�	n�2��@���0F��M#���)p?��ߨ=�o]��f�/�}�Uw�CyM8��c��g�~�k��fǠ������Ԃ>�9�Ѝ	�&�a%菂�ߨ�LtCĖf��&���{������V:���>4T��#\�g9���a!o.&    *e+=σ��aD�5I��
��oW���� ����]�x�5}<�ƮX�ފ��5#�Dl���p��]	���Q��3�2Ve��J��"�%�*���_�JA���$[������M���_R�7����v���"���*�+>�v���a@v"V�v�`p�z�	�V��,k{��-q����63�;�����Đ��x墳X=|}�
�bn1WS.a,�(f61�X�� �ksݱ5y����O)�bP�2�J_d�FP�"�5H�~�v���%��<z����dy7UNˋ]H�)��E���3�\�6�7���0����h=z��x����dC ?�����x-A�ړ ����ݻ�tK�Hy�d9d�d��f�0A������0rO��qx,19]�ٝ{�
�	�dS�ً��J�q�`6�[q���yI�{��7��F�]T��#3B�8���a�-j=�̒�����o���	�}|E�W�Oj�}���ow�6�T89�C�/�{X�K��'�a�P�0��n
D�f=|y��7�i.=O�yC}�C�MS�wK����?����R�M~�&���o��>k�.�A/U��oS� �s�H��WJitٚ'��������;������7�1!Tu��=�a`}up5�߾�a�4��������apwMy�.,5IV���T��<g:ɳH*�}%���f�,���T�s֙* �;�]{�n���x�O�����̍��^S{�ݜM�Zk�Y?� ��o:�7G�����k�e��N\���Č�Ć��iI��[�5���qm;��:���A]^F�Y^�?w�~C���v���q�Y���ېK�p��l���>�v��oW�to×T\b>^�m3%�`��<�X�����E^[$A$@�x}M}޳]��XM���v��FA�����ƅQG�HQ�6?��x2����R�R#˜t��NѲyN�k[�����y�x�A��0D�~t���:�z��RssOY'OZ�8u&���%�����ph�M�5�%���:�p��V��Q���$	�8�������)��Ŕ)��}���)�(�=4�D�0�#|bMmn���
Q]HO΂'A�f��F;w�p�Ź���~⩗O�ٛ��~��kjO�9k v�����}৴-Rp�����	B1!v�Lp�X}����1 r÷�'"^��<��(�����j��ۺ�J�ID\#%Fl^�	����v"�{�XYXLǻ��
�{ �q��TB�<�M^
���ts��Km�y)�Q��yB�������N�;�'MWĚ��n6��]�x�R � ����oR: �pv��|p�`���t�
5�R��H�GP{�Ny�������9����P���x���΅M��o�7a�J�ar@�W�-��y?(
�ng2C����V|��R�)UB	oq~���`��'�G��#>��Z�
�Ap�{{`���Nhsx�͝W!CHQ E��`��FN��i쩴5k�>b-���'�)L�����;�㯫����d�Ԟ<г<0t[m:e�D�襋Ȃ #������L�PRr";H�l\fլɒ���]C����  ň7rܩ=9��+#o�>(���4���	ziń0��B:�"1?����k��Ռ�cb�)7(��<�����yf�$�O|M�Irf�fU3����[&�5b�6z��dL�1����Z��;mg����x	ŠƁi�K}�87�����8�������e�ԗ���[;X)b7�Q9�Q9x`�`�(@E1���:�cwwwkra�a�`�r��{��˄Q��y����ոS{�<�z��o���#xVLQ�u�46<�3���4OG$��{�Q���<-(���8]��U�?�r��ozף��0>�E�ݝL�����KÎ��h搟ZX�j���P�T{�5��2�Ƈ
uåp�P�C'`���c����'�2j���np[	Ze�G�lW&�� �[;l���	�Z)�il�q� �Z۱�;K?"_-cR䢄�){���,F�qA�] B�����8��t��z�EPL�-�/���.#��S[��]vm��d�FY�����T�t�N��0�E��yg�5s�j���/*3�9�::�/�nkqm�#�!�v�����C!�
��O��\5j��]�����É���&>����2�1��bq�Ih�Bחf蟶|�*MX�B[��2` �&���[�k�z�T@�� �-_��]c�S;w5l�l)S���B6Ʌ�Y�^x����8ASm&a�矄Z�v}4W?�鬿?���S{�u5�Ns�`M�������@�=;���3�<ps;����Xj[_�g��0���iZ���f��WA��A~�.0 ⿟�G�3�гF6O��ݵ�b�0�%ǒAl=!�0�<ZO���l5�*&��l�&�T c8���o�F���Z|��� �N��M8P���;��{j3	��fSl��K�D���<k;[e���#�ҁ��BT)KAɏ��IЭ0�΢�[�G���z�f���Ѯ����Nbj�R�q��.���X��Tx�f*��r�	�����j�:�h�̗��Ѕ��#�����B�����?�]xC}��x�q����'>�5��e�V�-��@~�ef�lN�n(��)��@��0<왉2]je�x�I�E�a�=���D���r�A�{
Į�$h�6>��#�#f|/C�B ? 63i-/*^wW�,`KXH��X���E�ƻ��ܦ�ׅ/#k���o�h�?3\c�p;˱��*�����B�Nm�����ER3��� �ƻ�q4D�CW��3�;�ـ�|Zl��:��SIܩ��Bl�1ŉU3Ԉ	��y���, o��#�w�������h��ZӚ#�6Ɩ3�$�pZ͙l3�<ӌ$\έ�S),I��]f�P̾HGH��y�����[�Ğ]�4T�Y��R�=�6u7�!i3?�3��ѫ,F�vN���h�v8XO�*L�}�J]�0��<C�&�����'Kk@V�	T��e�6�ʿ�0�m��J�	s��3��.=c��w�%�Z`��B3�h~�M�oqn�b�p,�C1~�+���!�$h�T��D�ik��l�[��K��?���m�sy�.| �F#@E���+��/(.���9��b=���H�������w�ړ����$����Tm��B��qv�x��%"��eʺ�ZQ��ƌ �l��Cl���H*$͆@��@�$Z�;��R���؝ړ�#zL/
���8z�d
��܅�lo%����[|*�?F����Eɱ�x���6MFQ<'��f�=�h���/���׫����� ����vhY�n���&�t�i���Ar9���9?�`zj��%p�/'g/<m���J��!��y��x�H��-}��������y��!��v��a�.*�[��?(��f��ڧÌ[.��4F�CCl�����`���s	�w��ړ�ӗZ�ھZ��գi�zk�C��heo���>|v�G�iI�3NO�a�2p*�p�8"Ŋ���EA�-�3��  �4z���A�{���ƛ���&�\SQ�vF�s��jR,�i�mF;y!d���R6D��-�ݰ�����˾����<R{��S-���9���+v���cC4]`x�K���y�'�:���"l���Qq�.�� 0�Źb��#� Л;����Dt�]ݫ�כ�S�U�:����>�̇ ��>��N�p�z0,�ݜ���\+���}������`�@wjO�V�v��;P���B���ZD%�X�l>S���+��{'ʾ@�Y*�����F�n�fhA�s���Te"�	���|���x.0��4�U����Z0NG���N��f*$��Қ�Ƨ�PV�Fخ5�N�Qhmwj~�Z��jU�w�P�ݪܩ=�Z��i��$p���hN�N����Eo ��ym��-+8g�br��{�a �Jm|� ZO��:���S?�P��G�3�H��;����(d�̝tkF櫘��T�0x@Fn�C��h�8�|�n�    ����[��I�N�I����ݢ|����¦ jD=��������(�_(ё6��̓�b,K8:2S�>�p�	bdk�lKA�[�+��}���8��%��_���wc'U} H	ꞥ�&�H�w�j��8.fZ�D�gv+��!����iP��O,�Q,pNvh6�@?^����_k��F�v����@�=+bi���VB�2W&g���wq]�V@ɍt|y��݂ai@X����[�'��5�7�q�Ԟ@Ϫ��q�n#��F��S�*aol�����i=^�����ء�#�Pˈ:��U���U�6���G��|w۾n��vUHN��579"f�G�-x��j�c���Q~fW`x!!:-s^��	����F�D������������Gj�u���ߞ5�,qt��mE��ȧKA��J� h�=��Q[͆!�h�y,#n��9�~�ŃX����B���
�z�z�H
BC� �)�A< l�8Wp�Q�l���5�ӈ�A:�+�e5���<0ɋC 	�-���a0�8ߠJ��e�H�I���''�����>���*&�I>7��\w]X,%uY{Q�(�cd[��y��t��y�5iuH� 5�3��Ҽ���gi�QI��������k��DX����X�h`)�';[�B��T#�9A,0��k2Upjqp�YËf��������"�?����z[�3���2��i�;��ō0�xQԾ�@��p*K- 7��ӳ���h����xy���GjO�.�鶙�@;n�)����[B=����G��,�I��<a&�j�<�Ma�Z���rWf{߱����%mq��$vl֋�y��Ƨ,�'��.Y�5Y��h�-��~R�c�����Q\.)���}��B�gu �)3��:�,�23� �b��F��k��1�Z�g��
�\�H�Is�5�g�_#����P `�{ ;GS����[:U�A���9��55�r���H�&�87ԏe �w2�/2t��Y3rU=Fzh"�=����P�G�Tǂ���%e��0�D<t\`8|�fc��,�c���W4	������?��D�]lwjO�kka�ǭ� p��Ȋvp�<ۗ�����!\
8������K�s�v��9���P�R[zPK��<!,�[
z�*X���Aڥ0��%��2��h�Z�|���/�K+Q��>�ƌ,M3s��d��a$l���A�����q|c�?R{�\ӽԮr*U��iSx3�/�b�K��t}�+v�"BVP7�־�76SV �sd��щ�"����b-�O������W�ړ�K��Nj����5o���l:ѭ�R����I 6���B��K㨯]]��r:�.D"��>��8O��<�^�7�-�ԞX�5��yਆ͗���M	��v�!6P���{�b����Co; �3a)ӽ��e���4�6i�[�g��5�=��zO�Ix�"�ؾ���S����]h���|j���k`�B�j�/�^�L~������Q�4���zbI�8���y���2�R{´ZȪ�FY����!��|�5@����w�/�H*b�ʲ��NӁN(��O��ۙf5es-R��d"5��#��������\�oe"���J���93ϩ��>0�Ɇɲ6z�i:V�>O���=3.�D�x�Eh��&TI���d�������E���j_�S'HPjF���G(�6��H�U ���֑L���`��RM.�0F�$���A�����`�p����.U�5U�d�(u�T�6�n�0^Բ u�X�F9�X-f�i�N�+2� W��9{~!L۸�A-��Ӡr�&�Nݩ=!ڋ��Ѓ�6�N7�y�".$ȷm!�42��$��3����� �H쐆�3�n+oq��� �d�?R{Rti#I
���r�Lpr������{5�G�0�ENB���4���s
���,ǻDp��� �Q�4�[�_V�_M�Zw�N ��l*Ӎ��/J	��"U!؄��-��\4@N'=LR.4L�%k�6nq�?>o^��=9�.���jl ��Ԛ�D�]Kʂ�����Q䷤��a
� ��BО�ª�9LŎ�r�q��������2�?(�WjO��N�My~}�Z'i={�p'��F�EJd����/�Zr���qm�U��������^�[�j�.4i=O��8�@�w[��,W�rXmǜ�q�XT��T�9ZmKn>5؄G�h7p���)���g�����"�˴H'�M�	�z�5��-N��-G Л��GjO��m_��)<:�QS���6r��c�؊��9V�#XR�+��W��^��&�d�y˦MY�TM�87ԏe �t$~�ҿ�������QJ49�ߵy"<ѐ+'2
���4<폙+I����6b*���4
BAې-X����ǲ�or��=Y��g��n�����"�T�؎��C���fDf(dB��j��:�@$G8�/�m���nq��?y�#޶m$~kۈvU���5���2ɎƆ>c/Fq
g�l �㭰0��-E2g�=Sy��3���%�m�f�!`���Gu����{�'��#~�ĺ�B#��8�@��)�ؕ8>#~�Ko:��q����X��0���x��ኣ3v�*cv���\1?�L�[ǒ�ͱĮU^M��(j��[i(��P����<ﴧ� 8���˽w���1F���5\~�+�"j��DZ��O6	 o���BtY��!�@b;qh�7c�������x%/-֛K:ZX��A^�j���!�.UrL��Jj�}(���@�] ��DG��}[�5�'P� f��Q����gE���wN�e�j�Ĵ�f,]��A,�]��уVhpQ�'?�Ź���YO\R}��5�'C��֖Q���{�"�=�C�˚4�U�L�f��r�9���q!o!_�����9�9:A0[�m��lq�?��(M�I�_U/kr9��G� !�|(�NvC�f�����餐����R�4�"e�����\�9���q�S}�[���K��u�5�'U����>��7#����	����"W��r�W�Q5��e�<mh貂a/�H�ùb~�?�?�/����ߑ#'��z\2�!k�ޙ�H4&��(&P�{=���<�$�1! �ce��rP�r��>�$�_���g�i����~?G4��ȏ��ԧ|v��5�=��K�'��>��ܲ7��+�L����gq�P(�?>���44P�)���|�@����; �ݤ�ț�}W~��TSh���J^S����c:oIF���A(��%v� �/�Q��t�\oa:�7.��F�f��.Ċ`x�-Z- H��x�nZ��d������ ��j�Zhؼf��%�ٹ��g�Љ9:n��fS,O��*��P�_���|{95���-�$���C%I�z3���3�v^!��KjO"�'ѽ'$�d�dJj��jU	�*�����d�p8a�0�w>���Z��F���q0��.��?n���gq�se�8�Op��h�`�l3_W��j]�bz��өR�F���~x�>�Ċ�U����I���y�{�9Զ��I�͔�^|��B��t�����T��u���$�oA]\�	-qc�Ȥ2�\�&=�6Ù�R*2ڒ��t h
�r]c�ǿp��/S�-�[Λ9��Wm=���Iy��݄��n� ����ְ���P�y�������R�K��0���p^�ȕ_���w��6��܃�W�3ߝ������ɹY�;
KJ�E94K�4U�(��$��8��`�R����uƇ��µ�6���HuG���iQ���o�g}օo;��֓$<����Fˋ�OE0\� �B5�L��8�m�N"�\�jsb��t�}�[�a���������7-r��zGz�}P�E�i�X�z��Ҍï�\�v<�]�b)/,�;#���v|�.9"@�s�n����#�Kmʎ6�m��n�q������w���e�ֱ�|AZ�)�X�y�����cJ+-P�ӈ�#������3��7pL�J��h9�$� 
  �&T����!�>��X;Ĺ���$���5���1O��ܕ$�T���'�v�(��?�K@.�M6�-p��J�ݹ�����8�[�� ~u�����F�\�l�|��"�C����4����g�y��\!,q���3�/�mi) ��5Ph�Fn\��n|�{�xD�+��5�}��>�V3��|�z�����f�ñ6�,�D��bI���C&(9�&���E�k�F�!�C����(�K����������'�)r<�$N�ۉ�K$[��e��RX/�]��f�T�C�ʮ�ͤ�H������y�8#۩��k�'���.�݅7��U?W�.6\�co����a�&�)��/���D��E@�ϑ����/��q����6!ۋ�P�dk�Sm_^�7e�h��z��6�'N.P�B�s�V3]��`���F�C��8�2xc>�����!����)��8�ڱS �d_y��>+�n�r����|(RK�z��h���<���"T�E<^%��xs,rF8��Z�7���گ�����?*\����|M�q�횛�^��/����.x� Q��c��0��*Ɂ���^C��ą�� ��:D1�D�b3��=��� �h�C������:٩M��b�p
'���C��p�6��N��Y��Xڀ��ƶ|m���%���E�K&�!�)<��A��a��[
6�M���Z*����
�[������['"�2�U����D~x�A��2�LF�J�f��f�ܘ|�U�h��a���_����_�9��E���q���v�t��x3���qVܞ�9G��0ram�ͨ!`�sg#�S�S��|��fc���S�P��Tlqn�o" �u^��Q�+����$�E�Չ���بE=>}'�pG��V�T�d́�	0۟�2���S�p*Q��;i���BĿ;�6#%�~~|�O�2}�(@���5������u`'
���-q��/c��������6�XN!"N=fe���t���7`g�PV���Z�;����ݦz@��z3J����f������I�9N�A���	�^Z��}�Q\ζ�)!��Kョ���R0�� VK�i ���� �;Kg6f�M�	�#0F`p����5�h3q� H{!AM"�(:��a&�Nq������<�2+33B��~���O
�e��g�%����,��a|��\B�� ? Û��[�/���̋Z�����ߕ&ޅ?��0��V��4k�C[Ę�pVE
H�{�H�����P��y��S�������Ħ����ڻ����_�-�̭��yN�MN(���`[I=G׸D��4�c�Kǐ[i��t���o��Wl\)�����Sf��t�[�����n�2d�ɶ��N�����-H�u1'�����qfƗ6�\�������W�xsO�T� O}�jHn:�¿�È��|��#h]�+A�8��{C���X� �b7�P[�Hm���Ռm�;��h�|r��N�n���ކǯ�-��9{QΈ6}�/��Ba/��`2 �5b�&�tTEr�F�d+t\Ch�W>,��H�	0�ң>sM]����t�_D�1t�
0[s������U��L:��d1�hw'���Q&r4�p� k����W���	���.30��?<ؗ���ymPl8�(dT��2�|�/�Mm�o,��z�(�00GzvX�5[�
�l r�K��Р�_D����w��k"~l�W����6,ú��.�ɒ��i~Y����IT����Rʡ5Av��y��1l&M�p������|Y���9��1���L���Kjo�����S�f׋�T4)�/�D��X���Ib�)��
nM$�5e�Ɉju�{����_�������f�;M0H?sg��h[*�p�p	���_R{_�ը����_��gv�ssd�عlڼO�#�6O�1�U9s���d� +mn,]�����,�f8�"H�|J���)���6�?v�KjO�����hy��}M����D�6��7�R#���l�g;P-C,�g�F���%�*�E��F8k�ژ7�q����n�f(`?���Ԟ��A�:�MC�I @���^i�=�C �W�K Ԭ|	gF,��hV[D�"��v�/��_�o#�:�ut�~�f-�vk��볎��L��q͛�H�����Ԍ�L:K��l��*/>ؠ��c3{��^�eh�};ः��A��`J��)x����P엁DX׬Z��^��kn��ak}����4@kC��5�|w����CtS�r	ǰz�9�+�_yG��>��'��J}�5ݸ�F��JI�D�w�T�s]g���303W�|�4N��{��や|�P�2���4�N���W!km��;�j����__���.���6���\r6�U��w{a0Y�G�f��o�;Pcؑ�anl�����������c�xo��0Z��k����z������� ���=y{3k_^�5�M���O�2Y�Y��ɑ$Ϧ�n(�r���7�86}�z�ٷ'K��#�k ����>�"c�k*z=Mú�;�������_��E      X      x������ � �      G      x�32��22��2�ˊ���� ��)      H   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     