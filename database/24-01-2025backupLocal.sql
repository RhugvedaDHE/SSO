PGDMP                       }            sso    16.3    16.3 W   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    279   ��                0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   5�                0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   R�                0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   o�      
          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   �      R          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   �                0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   )�                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   ��                0    24778    QualificationTypes 
   TABLE DATA           q   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt", institute_type_id) FROM stdin;
    public          postgres    false    295   :�                0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   ��                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   н                0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   ��                0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ;�                0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   �      Z          0    50426    Sessions 
   TABLE DATA           m   COPY public."Sessions" (id, user_id, token, expires_at, "createdAt", "updatedAt", refresh_token) FROM stdin;
    public          postgres    false    369   �                0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   ��                0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   F�                0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   ��      !          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   -�      #          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   ��      %          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   ;�      '          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id, lateral_entry) FROM stdin;
    public          postgres    false    318   i�      )          0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   ��      +          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   ��                0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281         -          0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   �      /          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326         1          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   !      3          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330         �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   !      M          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   3      5          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   �!      7          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   q5      9          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   =      ;          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   �}      =          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   a~      ?          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec, annual_income, country_code) FROM stdin;
    public          postgres    false    342   �~      A          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   ��      C          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   ��      E          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by, country_code) FROM stdin;
    public          postgres    false    348   |�      X          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   G      G          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   ;G      H          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   eG      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
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
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Notifications_id_seq"', 162, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 281, true);
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
          public          postgres    false    305            �           0    0    Sessions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Sessions_id_seq"', 517, true);
          public          postgres    false    368            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 33, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."States_id_seq"', 173, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 571, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 132, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 478, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 124, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 249, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 176, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1800, true);
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
����H����E����*JDDUWv��1ߖ�'��;**JTDY'�i������h���߷`�Q���� s>��      �      x��}[�������_q�����/�Ԉ�r$:��*�U�_߀���Ω�V��P#��̜9�̙	������`� �fFy��'������
.�ep�X;WrDnG��sy%X6I�-̊��� Q���?�?0#����� ���) #��b?p�B ѷ��w���`��3&$�z~��=�{���O���� �/��*!�Yij[m��>&5#����/�9�?@ `�+�>`��/��;c��H��N'�|^ˣ�GW*p�U��YJ,>�"�m4;��0���~�1c� EM�"`0��Fyж�L����ܾ8;�bC�'[ˌ��uy�"�2I]�E0��a�TkJˠ��_8]��'�\�r|$P�������O�ԿA�_�!@0�co��ȓ��뛈Ӳ��|�@��V��2nH.$ �r:��4���R�
��-y
k~��w@��?0�h��ߢ/#A�9���KrK{{NKȈ�i%hi��,�UK_ŏ��-M'3�Z5F�B_�##��82i
# ��Ю-�;g
|�\��+��HƁ)�������O2�����%K��B�6�=��\���?�?N�$A6&2gi] O��mX! ���h���}P�a���@�!�j�7�.���ܭ��E�/i����kw=��3�m��U[�\�ƺ'-��5��<�(����M�/C��; z��S�f[���	�+u���i�ܷ�u��Kt�V��(C�u{��C9Y����d��≖�6 h�;�PH|�w&۾^����GR������0�7��N��6�z>NI����"bW�?V�_�V�B׍��0��}@HC ��/���y��|iV�<��T#�ޚ�U�y3B��i�F�CiQ_�b�Gp�z�7�s��힞�Ğ�� �M��:m:C�c����Ģ���!�b�wƍ�>}�RQ9+�d)�n.�$����Z�̈́͂ʚ&���	`�hؿP�`�#���e�Ļ�)H���n̳��XN�c(�7��Өq�7�A���,����P����)rd�h3`��%��2�}�+Y���-!��ʡ���+<U�[���cS��J�w4X Q"2iL������h7�mW@��|G'��|���7���r�8�4�?�U���4���#ՑՏ�\J��'��Z�[�u���ٺ�ӌ^��)j����i3D{3߻ �oJ���w�lъ*kg�թ�M�A�5��u��׷��Y�r+^,�O�<� ���C_CO��y��(}��bς����Ȧ��<�#�ܑ��A�/���%#��� wҖz��u�£��k̉�����1F#͹��5�=m�N.Q����7�)��:@ԭ}[��q/�0z�2�e"}��� �A|�����Ş��ھ�C�
��=�r��lX�*�E �-�����躀�_�����$���m��X�57��#w��N�S
�b��hǝ��k�{��b+��{�|u"Y_h8?Q�B���z�RB
�� �}tA :��s���O=�.R%��N4�c+�b�@`���$9t�/��� p8U�۾+�O��g+���fͨ�᪆�݂�(��Wiv��@枹��ל��e������� �ǻ��Do}��[ۗ%!;�s�U��o(����r�Х�|=��2�O3-o��dЀV��4�Zav�R�"ɏ&լ��2J 8<e4��ns��r��_ܘ��^0?U��B�s�\�k�\��U(�
>�0u[� O�F:}�`;#�&�T ؾ�F9��Pؿ�}�fȀ}(��H,Ԡ�`���x.*�L�՞��c
>�H�����֭?E�����+%{�6�_vѶ���H+��-K�`���?����D��������Eΐ8k�SY�X��]�)�SHr�� �u?�{���`3!|h�=����tж7������sŧ3+8�6_�Y��$��S�Sb)i�j��@�v{�,�'�%�e��Î�4P��1Ѿl�A��ݓm�.��<�5ܮ�eHp�
��Y�����u����¸z�<�]X���&ތ��fV ��T/~:�&� dS��iW2�v�_M��������}V;��������@~0 ��/��Dx�o���Wc�`���~��&��Vn=�Q�ͪ��)�2�ѫzk��V����eq�.�ҏ��<�xaʆO!u{�5��2�U A4�s��~�ȟ�c�!�mt#8�����j�#2�9�}�n� �"�[M�����Xx�n@��E5�TDEH��@���S��U�����S��|$ZSG DG�/�q�0�}k���ރYZ���XnB�<Ѱ�E�ε�%R,��Ԝ�p�����Q��_�Q�?t���:Il���F�!c�:��ՅA�B�粂@q���vI��*��z������N�]��~��ժqV�:�5=�_,�&^m��m�@�)�:n��� �m(F8L��T���Fn��k��8�?W�?��ۍ�h��PAp��L��\B��P�<(�:���x�z�M�Mn�0^�n��������]�5]�8�s�X{0("g{��${M�`�`�r
�����% �,��
�����<�X�PrJ��۾z0�K�g��%J����d�_��P�mm�Bd����D�l ښ}j�&/~yM�9�ЇtEc EN�Z;�j2;n��� 'h+��*�sO�g�S~A��C,�B�'���^����n,���n���G�T��"�w��F|���wtd]����u�3G�wUx�x����m*�K-��v�MX$4�\$��EKh~�F8R�	��� �er����m߇~�6m�����&����E�O9P"���v��m,]�-��oRHB��@������q:
��/�Mm��-��?𙇇F��nƵ>?Q#�y^�9��ueʫ�y��ۂ��|,����k�w�A>���
�k'IL�>ڭZ��aN�}��L�y��Ų o�� ��7Ha�@���C=�C��jX�a�;������;=��1�a�C��i���v!��)g4n�J�T3ʮJ��������8���K[G�r(r���^��B���#�� �A�9��?M��:O(8e�?5�a'�o���������FϘ�s��_i���|��ɢ�Bi�J��,H�:F�#��'�ӆM����9ه�(����dۮ�`��KzX�� @\y)P��t�9�D6����\����ePݚ�����RT�O��E��\>z_hs���oM�^:�� R�����q��ҵ��2.KJ�S�m4��0w�v�U>?7��X�_9s�*�#�4�6fZ�5hc?�:n�"?�
6^W�c���J��ؑs�*N{�U-)0/�U�=�-Z���r�%��"������X�Əl)�i�o�/��=ڌ��Z �~��� 1��s!i�ry�=�Iۻ��"59ĳ#ۮT
C0J�5�t�@�}e�����N+슙9�(g�u����	 M�urg [)t����O&�`��a+ig]� ab��~�MZq�43��=��#h;cql��X͜��͡6��8�Ղ)m� 4 U�lޮ�KG��u8���������d�܌���c]�	2ҿ=
�FM��@��=ֲ�%-z�à֒�槅�.��s��ǡ���EI��8�WG�qJ��QZm��u�æԥ��=�(����|�����n��*���]����E����v�����WS�����utw���<,yh�Ak8�*��w<��5�G	/��%)!�m�!��0�Rn�=�s$��1��4� Mxg��-�.��=��`�s&����7+̷EO�=�51s�q�/�x�� 4�L�(�5bjd�݀BT����O�! ޲��p���}�He=5>F�QV�F����|l�4�W�.���{6	��̤�L�Me��h���.Gzo�(�6���0P��le#�[�\���}�e	����|���Tr�]3we���1�(�z��Z�D�/�W��V��@�E��0�X�p�I��9�����4.    (G�(�s�L���g{���z�ҭo� m�����$�1��fn�:,���tAs�l�g� l���j�JR]�T�M,�	-�i�>�����g�X[N�� <�e��Nq�/�M#H��n�Z�yB�.
,�0x>�K�|�V��c�k~��H�q����m�>��mՃа��;��`q�k��D�#��W�M2O�eҘN��&��k($���_^��#���$��/�Yz��\yCGeR��K}����O�3�q'����g�(RrN��D\���������,�dzi}-�h=�����l�D_=:yv�9^^Zց���-�h�� �}��KI?��v��d��%��2��t�Ԗۗ�i�:<�+��N	�1��7�}C����y��"VbJ�� �|�+p�YD�o�J���	�ϽB ������b�YtZ��i1M���.��~l��sLZ߰5tar�\.������'�Z����J��x�<&:�ň��~I���X���ẀÆ&�B�5>�_Mߤ15���� _���2�=��|4����T��8�p���ВcҲ��`~�vP$��y���1e��8t��A_���x�c�Ϟ�2�u&y����"$q̈�#9����g��:�K��J.�a��?�����<�ފ�N30�'2��ib�x4�\J]C�}��\tRTM%$��~t	A���p
%0r̙j�/�������A^�d8${XH���UJm
UY �jio@J*>a^M��-ء�\&���a˹��r�;�ۢڂt�8�o�>�����V>�*v��S���,��BNQ����Lar���텊$�k�,�/:�n	�'��wt�&q���ρg�c阈�着o7�f顊�v�;м�0��B[ k�8�,7�O���|\B�f�n'����7t��'�~��[H���<78����Ok��Kx7�Ĉ&�G�(�s��3Z���Nq�ϙ���w�6�Lէ�B�������qw��v!��x��
OFn�Y�x�h�ҋ�؟��vH�w3��wH�;Uׁ� ��H�I܇���`#]�������*{�|�q�$��^��F5�+jF�-nH��o�6�����g���=�eՃ@�s5a]v�Z���;���*b���u�>�v��y�C8Y�Y��*�Y��2ėi��(�BSr�:%��h?��'�aY�w�/W�J���_J��1�3�Yp����R���~�7�y�5�X�̐�lEàS�=��![?'�9�R�(������}�����7��ì��17<�>E2�N�|���8F>�ԱN�� :b>��%2܃�w�Y���L� g���N��f$A^3r�93;7�ko&b؇.���hk ����=�1ʺL7��6����ڬ����/��./r�𰼬)?w�U�]�-c���c=?zn���=���Q�6:��V��*T��S�&�
$�O�3d�c@�c�5a�
�:�Y�N*�#3�%%k��X�qug�'�2_E@�AԶ#�t��@����n�6�{�p�I��r��A*	�oVȫةѐ��ك~�E�z��R^���x���w�yO�E�q�pW�q�G�u{��#�n� �뽘�]�	uU��(��M�Ƥ������߳a]1ܠ�{XS�L���ʍ�
u���C�g��+!��x��1�1u�/v��A�Ya�Vn���cQ>���`Xw���{��?�,�k)�@�u^�$nDK�U��y�\�R�wM���{.��5?���`A	� 2`����q&�Y�{� I��mO�4R�8��Sĺ���Lu�#[���G���s�����5�5/���}�����K/]%�ղ�$5d����`����2�PQ�MK�Z�|�q|��(�����-*m?Y�n=�������_.pxh!�A����G�m�0ˌ8���m�{C�%'0ꭰc]�~��&����"u�k���e�����Z�y��(�4�f�D}\��,�A���-�%�4� $p��x��ӫ� �R����i��'��7�?�G������!�i�_c������n����*i������k�Fp)���5�"$��10��~���z��[	���H���T��JE�\:��
��kw�����σ���l8�[�(��,���a�NG��K��I}��H���(#��?ZI����b]�lzú�k�0h|�T}� 82��E��<H.=� (�yL�:Q����pE���҃�y�sP+��/��ڟφx0�?�?��'po�h�L`tX����� ҂/�b�;�R���
,��2VAa^������0��5��cf��T�b4 @D���R���
1���_���u�tv�� �J���z qc'o�� ���O�6����-�-*�=8�����띃h[�N��Zxm�Q����m?��$���|��W蜧���1r�`|�ƯϮ")�"?"1����sG��޼��R}�]iK�0pJJ����?u�;-���b9��S|y:�!Y�n+�9�)���&
�A-í���h;�CoЮ��q7@�#�A��+��.x;-;��}��p:TM��
�J�����.$d���N��F�U��L�1�!,�`J�㢡ߝf+Hx��_5Y�9����R��T~,RZo�j�A�p�B��\K�v��i"7^q�.����W&y �X"$��$��$w��Y�=����A�V�oZ�c�ޔ>�O,�F�~)�;�r:���^.-�UfG~��Y��&��W�jwh�obL��n@���xo��x�h͛l�wg`K���;W�4O��:�!���K�R���0qP�s�:Is�=�y�"7�8i�;=���82�7�C�hO~�Q���D�E�-�[_�*��$�ps��u>��Ⲗ�Uz���]0�R�(��8D��i�	����@_9�wʩ�4�_$^��,J^8�X!D�֌$BPj�U�p����1jJ�T���p[C1��Ļy
�@��6n�p�۾�?R04r�6%h��������>]9=e�#�.��u-�9IE�ˮ��ڳ��c$JQo��WƬ�)k�;ڧ�B�f&~*�x��Ms���EՖ�X,c\߈G��\�o�܉.\���݊I5C�_���,|��5h�*�B��U����=
���{�R�� �!��Tf�07j�ƙ�[�E*�Y��F�U�ll:i��N���o�'�zou�n�����?W��2
�����y�WJ3�������I�	+���:�. #��B������kJ9�����~��{M�k����k8���L!ҥS'����{�����i�8y�w�&>����6l*�`s��tZ��v㚺����f��CٖkQ$�o�9��5B�h�mV��ck��`0�[����J�W�a����|�p�`��+ke��V
���a���^JP�s�6Ti�<_Y��x��~�?�ֳtgŇ��'�n���~��]d��+&�j~��������O��G�ܙɗf�j!�TH<�� �U�w����Y�4U��O.MX-��� @#7ٴ�>xTş����A/()�!hw��k�!�Ç��\�)2�����x�ݕ�P�Hn�ɛ0	#��%��О��⯐ʞ�>T_3�
���K���|i���%�g�lu��c��M*ls=F� ��?<A�%2%~�SB`���qV����w��T4�� �d2B��L���2f���엂���.�W�`�� ���pZ=�i��S�;hߓ�$�������f*��W��.�PϏg��e��Ñjp�Y	E>�nW��6�2ټ����
7�}J��-ړ추��4����WM��l=D2��{uyL�\w��>�=4ர0?���˽J��"{/��ￍ��ո�	ܕ���A��0�IcO;K^k!���ݭ�{D�|&/�ʌ���z��CXt~m��?�1X�z��=���-}�����nA�W��f�	�F���Is?(K�#O�Z͎���>b3��f"�7Z��sb�~�O�|���qd+��k]=C�P��    ^vw�:�h���q��<���g�cWI�Ÿ�y<��v�e����О�����ѣ��Tm�z.�� Tf.�w�8�/2.�s�����Gs3wڂ8�� D[�AN�no\C�O���dX��e�N1�\A��1�?��#'����9x:��q���P�ك��[Y�ZpMgMgZ�L�.��~�a�ߣH�*I����~r���m*-�ۜ3[���(h�/�q��;�r��^��0V`�Y��)�n�L�~�����m�91����1�=���\$H]��F���.j���q��'L$X(��|E�2x!�gP�_�Bv%_Y��" 9�Q�C{�Ë��Y�P���'4(�a-os���Y�����̦�$�XoD��Xi6��=�Hu�g(����m�A�
Ƨ�A��|�@d�p��E5������%��t|���@ۘ�p����&a���L9��Y������|v��B����)��ż�c(�]�9H`|j�� PA�3�qr(�]��3�ޝ��s��3|]���\�&R��R�(i��hѭ?$��A��aG���G&P��B{҃�:/�R9h �<���k2�k �&o��f�҈��^����gj��x7�'����:��.@j8��A�~�Ӗ&M�3N��G������Za�������"8d&��:w�e���يo˄G�����?ɠmyA{��N^(ڝ󢨉Y�[������h�fG�#��a�2�����R������i�>T������/��z�4e�+�k�)�(�&!!�D��}M|x7�����,[z;���MRrsPչ��}K���N��}�H�.%�H\E�A��O1=�i�x����ڿ��U��2g�0>�:��H�k�H~�ۻ�j�FX.g{b�V��פT��l2��9�DGbd1��@Z�	�C�:ݶ����*����`9Znt!߮Sa[d�~�0��C<����dyS(g�8[tw��hb�o��ɥ̆�S����4�wc��(�hU)�]���J�l�P�� �a���ya��䎤�sv6jx�D[���'Xw|�T���]�\٥���\�z���0��Y��Z[{d���D��[�����6)�M\c�N���[�����J�3>�����3O�/�"�|%9n�m �v�Ky_�^E�P���t55����~P����P���c�.�]wa�mNޅs���1P"5�==b:8��:���_prv�Y�p��3�������A��=��bc0?*N����1~:�[�[�
��L
��>K���ť/�o��qN��_�y��5�6���k�~`�s����AhIɐ-޷�vť�+�K�F��\�&i>{U��K�{(�+=_e���rWA��� ֞u���#9���� �|�n V��=�
�Td	@��^�e%�s���q�n���1��Ɔ�~(��Q�t�*�C�F�>����W���$5n���F�Ί�z#IȖ<f����K.5[�U�a��~om��Y�IK��0�(�t�uҎ���N��m�8hj���v@z�FW&�TV����.6���'Ps�<!椰�l�ڕ�;�L������Cܦg'M���P#�ƃ��wh�{�׹Y��p�f�c�r]�l���������e��m&���PlZ$?V(������F,��Ƚ�IM��LF��GeA;z�T@]�%���wY5�[CRҒ�]|)��Z��ĳ=�Z�3=�俺�-tu��~����ɽVe�~���ƹs��WӅo�]�o���q�Ee��bOw�'�ӹ���H[;��t�wО�`�J�����'J⸿���(W���}�_��k+�S���fAp�.8n<���{<�����q[���B�o�=���>�^��4R��p�B<�3�������MZi���3�^���6!@$Q��Ƥ���a#��c[�8���XҥJ_*�[��"5j�*N����Ns��u�P�<������0.�P��d��5!p"��k�W���V{�a���;�q�u�8�g�V���E���V�Y{��'V�(:}Ű6��D�:��}�;2��ӷ�W3�|.e��Z�f�|Z��>9jv������_s'yvU��%?�-~���}£��9�wtJΌў� ����C�B4DEB�����W9\����,D ��i��&.�P��3��o�H{u:�y�[��� /�$s����D\j�'���vZOV�P�"Qk]�"H=Gj"31`n{��W�g&~Q�$"H| �Wh���zo��>3�>��T���� hhK6�4�;g�*�4�8�B���r;⏯��. 9���~ls� O�%��V�+��k�@�h���"�0�ܴp�O�p��8&g�����?3!su.Ɖ�����p����) ��)�hߑA~B�����?�*�M�Q?�3���)n6�Ҍ��;+1���� [�,6
����KB���L��Nwd��f �`��zr����q�<������O������.��a������G�����Yd����%�<L_Z̅��lm�<S� .��z�A��n���=��9"��{�H�j�מ"�ă�d��oў�`:3z��Ml.oP?���`�w���TY��8�J�����f�X i�u���B���@d4GGĢ��J�����M���g��l���\P�^�M���nO��+]�� ��~�AG��Z���_�F�j�C{��־���F>2�y�wy~�j�X�XC�5H��<\B!%h[A�Pѝ�nkJ�����{,Ǌ�hOz�|m.���w�x�%x3�"뜂n�����w|ͻ.��u܅���[��ÕmEh�1�i�;ߞ�j;�4�:Z�&ў�`+��"W�2z��]҂��
$�DdsCV�-�k.	ء�且DvG�����A����0P���;hOz�w��CY
��F�c ��°i�)�h'��N\{ە"�(��;��V�i�_W���mI#��3�㉪�붞ᚢ��A_�B<�:D��si(��r�8��-2�Vص$�.,o/����(`���wО� �]�o���5Vr�gQ�7�sƭ�դ*]+�	uQ��Y7ܩ~t��1V��t��ã��hO}P����Q��{��dE�wχ�:�Z�]h. ��?@�}و�X�w���7�׾)�a8���|=��
}rD��I"rB�W�Mr ;XfKf�k|W�E&��h���(���V�Y�
s�����Fv�;�����Jp�th��;��R���t۞�`��-�Q��<$lT�����W�|G�1럘<ah��tl�r���u��6�?&N
�z>�}�n�K����x�Z2礤�ps�� ƍJ�w@�;�qR���*�@���,Q9E��\sk̸+�!?��ߡ=�A�gj*~]%�q���nU`���>�v�!h����m�Z\w �s��H�Fۮ�4�x{:�����h�}����b�IĨ�L�|���h7�zzhv���� �;7�ï;r��^��"��w�}0��B{҃�Ȭ�Z �1�^�Y�	7"H�2^?O�f	4zY]C�z{��u!qf`�	*�/Ҡ͑��
-�k?���g>X)�d�X�j�8��8��ȜWų�|2��=�p���)�P�ճ�d���|�XzH[߅������@�j�p�S�Wj(Or'C��Vs�����R`@W���+><�;��xT���"��sS���~]H���I��wО�@>�h�a�n�y~��_�����_!��%�N{�X��:�ܝ~jg�]����[P�}p������bpOѸ�Pf�J��'(`h3���o�E���V������a��ě3�뫌��S��6�c����4ڛ�@RI��a��I�y_���o�����VÞ@q߮���l&_`�!p���e��+ '�n�
�P�@���w�yϓI{*ja`�P��A�B�&eΰ灵oo+pv�<�e�2���z�%&���qRB}� (:�7t4ޓh�}˓4P���%p�h] �-zsI�J�~C� �|�7�PQ�7�ўŤ�Fg���#�����a���Eu{G����    =�a��&�pg�DU̙^�/
��%!�JN��y���P�Y�2�`�Șw�M#���ǺJշO�}�Jpp��^h���d#�W�>ci��V�e�Ϟ�p2�4;_�:��b���&&�/�S�9>E�ѡ��ڿkT����EM��.���P
n9�Y0�9w.���I�H�w�4��	%��ZxVZU�}����GՖ�A{���ݫ��c}'幀�6�o��!c��֦4cW^��Xm�Rt�n?��X�p��v?�&�G��é��IDJ>/U�������3gq���`���C@kԊ�k\%>�fwWvA��9����^�ź�����y���<P'䲂D֤�T�8D��\F�l)��t3���$:n����yiW��l�� 0��������A{΃=�u:�]�j�^M�3�u?��m��	��1��
}�te~��i~G|��� h� ~���wD��y,.�����HF
@��;!��%�e�����S��b�~tɩ�gD��O��**���t+���AÅ�Wxo��w�ĝ��p����zA��q�q�ByN�ӝ��u���h������"��O��ϙ��+�$�7XkՔ̚ߚl�S}>��9'kUl\��V}��,��[��g������>��=�����:A-�k_����,P���;离#�%��S(����\���V�m%�Q6��1pb/�M�I�Ezx��iq�>5��L�Ō{QԀD(4t��)x�6�VKV!=�t5lu(��B��|�]��\2�E��C�g�F�'����L�b;,����T�W���]^��:����.��VC����&��WO�b�wyML��m4�I~�I�H�!b�p|�����$�w�xԁ	�33��W�ġ�!��]F�s�	æ+J__����*|*h���>g��H�=�T��
�[�ky�RnO�����-�ڵ�����tɿ�?St��X@�I
���3{��%�M��0����-p|��y�h�4�K��LF�1��ψt�� r��ڣ�ņ 2i$�}�8\�}�%������d�K>�MMwY�:�k�9ȫ�%O�v�����5�܊����ϭ�}�L��°���eq���]��ld�Y���a�"�G=�n`S>7;�%��'<䑜
:�E�G��5�������fd!t4��@{҃�vI�6�j�C9�*ޭ��<nv߇*n��}��ГȪ���wI�w�DMd��.���J�J�&xp��{ho�%���'a��]�K�!41Z�t���9���9�;G�McK�N.�'<?�D�1 ���BG+��D��Q8�t�s�1�d��R�U-�<��fA�#0��J;Βe[A� ��m�;&��)x���w���z���³�V�u^��<:+��<�ed������rWC��k��xM\��������8���hc�*����p'8���Z�uM��: pϻ)�o����ΐ�|^�=c4t���JU����=�ۆ~rú����c 2�F뾑�~I�0^)�ƥ���e�I�!�����V��y��e��r�)�R�zV�qw���No��	H���t����;�A�a�� ����m�P�'�x��[xqQ���@vM/��z��@4���%
>�qmo��U��)K�=��ϻb�Y�j��gmG[H:���p��ê�j�<$N{Ϫ��l�n�I��;���nf��u_(�_�=�������G��j�M�z��Kh1�(4)�å�mzL%�q8�d���s��5�?��w{�&`���C_������s���2�,���M#�R.�Y������f�DJyg2�������a�����x�?��( �O�h��w�M�7ܥ]! �߃K�t%�`�POVȌ�MF�"G�.@��aRBK#8P�L ��:T\�?�L{�i�[gT���=���bN��o*��(��.N���eM�c`��j\Ţ��R[�y�jI{�Vx�f�g�[��J�i������!lxx��B�)2��j��w�jW�-�X�1�%_y6��ϱC{)���L.�pw�&��@ hp~�'J�V���A۞� �vPUԝX;Ǔ�4
@�u@��"���Fg���s�a#7Q���ܬڅ�e� ��m>���F�L��_�y1@��
#t5�Q���cqح�[��<
�J�v#�ؙ9RpV5����y�!�ti��1r�t#����whO�4]c�N
8�e�3�mh���߱=�d��A�YT<.V�rb�ݮ�0������NЄ��S⍞��[�w�8�9f�\�<ۘ�aβ	�� ����|�@�B6�t1q��o��}R���Qp���������C{��N=��S�P}-��pS�sث��t��J��;{z�`$�3��讛[�N�SWHw+��	��CS�F{��N���v�kRF��!F�@�g��������� r� ���k	]�ik덩�S�a�����F{�%���n.y���?)��ij�\��I�r	�GX�V��2T�"��kr���05���w�^��9�^�;*��C+y���'@~�w�_0N��7�3��0G��B|0V]KY(��z�d�h+E~]	�/��� +�в�F4?`����F��$g{�B���ñ�F_c�d�B��l��ȝ��v�B��iCnqX��z�����/��;�Q�*��us������cV]��"��hOz` ���D>�K�������3��q�X;��E5\�n���,���T-�/��IS�+���/���DYdsuO��AZ���sC��{��w�%�1X��I,��Ӽ�O�'�����ȴ������^Ҷ�O*�����d ���yf ��F��*�
B`^�:��^"Ɓj��|�htD@0F�2�n�w8�����[���>n���<�	N]nVjQ��$9��I�`��<&������v���������� �t�w�i�8vIk�m��.?�|3�(�!n��rX	����?��66��W���P�)�����J�~t(oh?7A�k3���A�U�<�'�w�|��b��.]Z&(��)�n/o����F�����l�g(hڵc]A'�3/v_OFa�j��`׃�I��b�����p�������Jʅ ;�-/�JcA�q\og��.����ބ8��_ߡk���Q�y�_�4ڿ���WBc��ߔ-8��bl1�̑vA� �s��c���,��~B�.��pjӠȘ4־y��wО��;�̗/�)$/tE^��r)�
%-���UA�y�0x:�% �ZR����n�C���I�7tԑI��� ��7gy��`����y��z�Ľ�H�.��< U�����I�,���)p�j󟷭�Eȣ�⾇���)b���ћ@�9+�9Rq� �lp��"�X��M��K�V������Ĳ�M��4��{���K�ë�{j�6���m{W��&�����BT����qJg�S�k��A�؏|�r��^���KY|S���^~zMp�5���bzj�
�����fw�D�'-6�pY�kY<�{��`��PsB�ʨ|��O7[�*Ceݷ��}R���J�����v���5�N��[�_���Xo�\�.-��f���+�{4zk#��M��>�1��q�Ndzc!�V���ڍ� �y4 �T0�ھ�D8�-�O�[W1 o>i��e�� �ﻏ�e@ڲo\�]��ʿak�N~[X!t(b^�k���0�(~�� �iC��
�QQ!˥%(	�aNE�:��.Ԁ[/��@-�P�-Tl��N�Ch{�]Cz"�h�v�&��ߢ�a�c��>�f�鄥�3�\/q�=r���t,Ә-�������u��}}əv�?���b �bء�5��6Q����G���i���b�Wg��%���IpV����,Wz^P�	Y�XW6R���f.'�E��	��[	��.���i�hц�H���X;�Ͽ߿Z��+G9��B��r�,x.��"`i��<�β� b�y^�m|��?͞|I�i��;�g?XN�ͼRP��3T� �  ��lQW���g�:'�ۮM���-[��ON�s���|�Yw���C{��V��§�B>�����#�8����^d*��_p���L�w�oo��2���o�7�IZ������Z~G��i�?3<�v��T��w��wOL����J�w��K�.�+J�ϖ繙z+D�YRK�=i�m|����_�ҝx�G%C?Qpljt�����F��t�<ws>_�ּ�_�ʙ���֊���n���8,�]̑��J%��1h�G��~�ݱ0�
�>�}yZ޺��eo��� ���RYu�{���9�3D�������SodX ��>{���&ꁧB���}�ylx(�{��
�~��H�d�@� Z��\q؝_�#�kgF>�vcާ�x4l-�ٕ*�x�����V���qv�hi����ۈh�Xo������O>g���<H^����%��.\Gr�X�ی���f��+r��-�&�k��Z��J�B?�������m�=G�M��S[���a׶�(D��c��#�p�	�h�˨ ��7��5ȸ��Z^�R�i�r�O:} QQy2߈���Vi��,r���-p.g�|��d1(�%�A�Z{r�ڞ���W1��1if���-��e-�g�\�K��pC�P���@|��0�A��|�}?�s2�3W􀎀r����r�c��+��O���mLٔ6�57��z�bNТ�$�`p���>��\�k?�V3��O����/�'�s���T�:V��=�e�4օ1VF&K���8�F��Y�,��fu@g��m��#�����Zsw�WW�ae�;/��Oс	ӿ�w�i.�Y��m��V�pN�Y�`y!��� X1��}[�.C�`�S&�C>�\ÌL=��L�4��_M/� �#����) r�����o��f�Q3����������^������7Im��u�E������>����|E3,~c�\#��%�:F��{��m!
V��>%N�����z^��L�Vub*V�7{�G���X�A���Ө5���x��ݸ�p��?]��=�'�z��K(��}��	S�-Pe��XΊ�.uk	��2M�����9�Y�$أv 4���)��W�?ek��wH�*%q�.^�MBq�@�����Gc׀���?���f�x�<B�/�����r�E���R	��v)����*����e羓%iw�`ӣ7{��s�C��
�Z)4��8����������cr�          i   x�}̻	�0 ��n
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
��?$P�q��#�֛s�۝7@)� �a��      Z   t  x�͕I��H���)�>����,ސE�Mh6b"�.A@�\X>��Vw̔U���L�x����ޟdE0���,������������wp*�^��R6�1}	�h�%�v�ܛ��d�]�N�����څɛ|�eZ�d��g�I��lC$^ڛ}ښ�͘r�GA��Ck��1{�>O����EtNt����0+�a��T�Όgf,''���F1@ ��#�~�`�	c�� �0�Q�/����M ;a�1��_���L�I_@�:��
����&�&α��縌��U������ց�"���N��ǳ�l3Đ��?�co������+zC�7�!��x�GW$W@�L��a�/L�+|!Y��
��i� ��@	ǌ��aH�2Q�J2,�UL�{2�3���Y�_��kF}�A�1��kn��O��ލ��*�����'}TF��2E�K��:��"FZG������>
#���e�˫_�������R�z��S{sb�O�v�����\ZVw��V��V�4�t �����:��	�'�8��y�����c�WN�κ
,�V����?�T�1-y�;�)��S���r���(����p~��F���K��^[���������d��:n�W��f�Z`��[��Eo�� ��Oaj9@:-��ӊ�o#�N�D��^��uZ��ngM��"��L3�P�P�L4�B����2���qm� �ʏC�-�CK؋�]s�L��1:�K,P�� �g��)2�6ղ�꿏��,�ơ��`F���~�ygCs�S��yW��ĭ���s�7ۼ�kۭ��V�
��;�<�b���+po����#ꗊ��zG��l�Q��v�x��˫�h�>I��Q���H{�6J;*�����?;~�         �  x���Mo�0���Wp���Iߪ
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
f�=΀1��(��s�Dܗ���u7z����9�����/(�7o�N��K��d��x�"�~�k:h�&��5���Y$t����gQfw��0��#�ibF/���K|%*����ؙ�����p���@3�a�,�ػ���[�d.�{=��[�c�� =���_e���e���2�2-�LESi�Qm��(3����9]�&=y�V��ؒ���8�kY�~]����PVt����O�e-P)��Pl�<9�x���ȕHAi��)�=.'*��=4k\T��]+N0׵��.������*d�����Y]%eY~���/���loo�o9N      #   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      %     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      '      x��]ˮ$��]GE�Ѓ�#w���7�,s�6l���{��I�C�7��*W�.;�$�:<��e)ny���w����ͻ����R���+����a�?�����_��C]�����0��Z[���ۻ��_/�5Gkܳ�>�����<�o>�\~a^#zn[���xX*��<���&��>]r�򉞿��ͧ�W�kI8�_Y���:,޻��3C��E��V��#t$���=��B\c�3�a}���У��^���7��g>:�Y���z-P5�i���G���^����LʚCЯ�=��7��+t����@��֧;.xB�=z��7=�ע�m�5���x,'z��<�mj��>�>e5���%u˞�{����B]k�qֶ��#�H�8��H�iz܆����r���`->������\�:ZSD]Y�S�K�ё62���Y���16Ÿ�v�b�Y�wU�����(S=���3a��a��+t��x�aӰϽđH����hp�x�56��<x��>���	ܴ>y����F��ۙv9����k�..Z�v:��V�x}�N1�����ا��i|<r�r%���s �&��z�m��S�+`�gfk��y����NQ��&T~>KG7�ݴ>;ŹrF����E�'�8�N����8)�U��yG�W�M�:@�n[�<Ź.{����P�!jt�����G���R�Pܸ�������)G��Ť�M��u�@>��r~�h�~ad�g�9���,^��!�����?����#k~��� ���~�_X�:z������õ��M�ct$t���S�n��n���~� z�a;��")it���������;I�0����ƩbX����ɣ�
a�a���1� ���U7�OG���#_��{��!yE����#E��f��dyA��m}��!.�c͋��2���� N{�X�x�?��ڲ�9"J��7d��~^���Ri���e|fgI��#� =����_e�\<v�]�{98������W�[���y���0�e�RB���M���?�����JQ\�e~���	����($R�癲?#F�c�+�w�h��:�0�,�txYf������B���k��Rv';݀g��S@�ƻ�(�b������>/R4��gW�U�f��+�sD�'���y��q�Y���LS����������%�{}
�����ܙ%��y|1%��"�+VT�m[o��D_3�Gs�G��켲>ZnrC��G�`f��G����_ W��֪�+�	���ɶ��%P��B�CEG�jB���=3hZY��U�2���H��HYO\��<��qt0�\R^��4�z���[���1���v�,+�l����|�k1�9c�Az�6������7�/���t�3'G���m-�؁��@`�G��Xk�`>.��q�+FMlk0�R ��D���������rV�x�C?l}8s�E�Vm[�r:�;F�����_	�R����F?O���h�}TF���{�5�@'	c��陳�^9NKn[i��VSXh܌�;�������B(�Б2�x	=X�x�~��zԃu������h���Zl�:@�=h�A�	](GI�(ţ`����xC�S4��ւ����Z�+6���:[lʹ>�F�<e�76��9�`��R�'?5��~��F͹߄8�Jh�z�m+v�W�N;y;:�X�`h��%�Ga���3t�s��#��]�Bє�yͱ����p.T�hJo���M���%����+�}_�c�w��!��Qk��eUY*���oᎣ͂Ó����Pl�*� ~�d�?f��2|>c�#�Vs�"�i=�lx��C�I��t����sK��d�hƭ {
2��a��v�$y��(�M��A��פr�+�M=�@d*��I�Z�^|���?�I�#�>m�P�$�F�p���++���}��6YL�b&=���l}�IF&I)��!�-ݐÙȳ7��;Rޜ	9�й�;Q��J��`ȳ�r�u�pS�����Cj�����֯�qw#8��,��S�uR�g���ܶ�O���)����8~k0����F�KkK	�� �Ձܺ�	(K��^�4%}�6f�x�a��:;��pL7k��ȯ�w��^��#�/�Fb]	�#�)*p�O��qF����ƒ1߳�	��	�������bCg>4��h�A~g�*�I?����de�����T�E���ʕ�ũ�c.��z@S0M'I��;�T1��K��AF�z�z���w�d��KR��޲��b)9u��g��؝#�^Y�Yc�B�m}���(d�|'��W�(��8eܦ���'�P�î�L�
�,ׁ�M��ي�B2{����>=m��q�BX���q�B�Q�SԚ�۴>�����`�I�Ũ즁��;�%��<=:��D�l���El��ԗz���zƵLJ�e4A�����7d[�͋u�긲�m�^�X�v���)����V�'��脚��i}�JP�À� ��s� ��d�Ƭ��DT)Ju�f�"j�����{v@w�O�,tv��U�8J�8�9�*s�7L����RL��]�w�6�K�> p<�ݍn�-�)5�imcF�X��<�Oz6HT6M��r�h��A�i�1���dN|4�e�¸3H�v �ݸ�[��.�T������GZu��z�A�v]B[�6_�i���i�I.�$:,�|����^G�Ա���lhM�lU��_8���7�ɡV�u�ٶjl��q����>�}P�D�7��>?I�WU�t�h�����nU�_U%���hm��Mh�}oT�	�}Xq[o��@�l��]��q�p�UgXi�8X��U�A&n$L .��ht���]-�f���s������_ä�^X�&\����/;�9נ�*$*�����׳2j=�r�cYC�] �;��7أ�W9�$�[�J`����@/��NR���p�G:�/>�D���Ek�&]Zo�T�x��R�T��.WQin)�?��3��O"i���?�7QkQ��uq�ד>7p��ci����J��X�-_����{t��?lT��Uu����h�u����&B	H��۔�Īd���:������ʉ���75��(�0	l+��]pK���O����@�P�+l�r}h�.}[Rꐉ%�8
բ�H�Pb핕?��B�U% ��k�(��nUٿ���W	��`\�&��o:���7��\5���N�=�!MS�"[�k>_	A��8�#�M�u�����|������5�o��y6[o��p�b��Y�~��L�u>`��w�i�te}LT2�a{�gcdy�:K����w�o/ ��u���%~��/��`Z߷�j��S��+�Y�K��P��B�m}ߋ�A����R��z�_ψٮM�O���4(4�gg�o���F- ����ź��Ucv��X/I�xKj4T4�a;�K�$���>^T�eO��R@�ԫ��[��p��^Ze�"(P��(̀[;�+�Ė��ԕ��5�w��Σ�{yYL�LA�=��}� Ac���i4�E����{�ici_��]飤X�"4�0�.��;����Q��N�\��S0����ǯ�w�z�Q�5��ya��dSA�Ь�D�2ꌙ�L�cE�D�3�<�d��h�ON����s�NVl�|��8��b=���@�ׁ{Ԧ�cZo.���2���#�U�(S�y��dZ�E����5ܫI���92~Q� Q�����;p>8k+y�
��̖�o0�Q٭�zm�W��NL��ZU����]=28���� I�(k=֠}��59SȪ]C_8&7<���4���_Y���TV+Ҩ�z	l���A81$�8����T� }	\;A���� �kD�M�y���	M%�)��:�l��ǻ��z�f�jO�Y<�� �vԳB1U9$���BCzl���� ����}��=89I@�"��}�S��v�4�X�!a<z�\�:�q�x�;��:@�ܗ��)s�ޢt�}6����4|ni6�+TnX-U/�m�5|�:::b*�	pB�p�{!,c_W���   ��E��zo3x
>g�׸+K|�c:�M������USw!ڇ�_3����_oM=�%N,�5۬�>��-:��0���b�YU9x���=��_3E���i�&p�m�(��q|��V�[��-�$������ߟ=��������D:)�Bb1�r��6�c3����#����>�|9�,���v��*%�(-�'+10UTM�9�QJ�.��z�tk�߻~=�c����53{	<>?��-à���zƞ�������/�\���?���!Lc�Rz��Y�I�����[(�×oj�ֳ2��^��%ї|W��N��]Е�!�"���|�FX=��c[�n��7 �Vu�CD��Q��#[]��u�ql�ʹ�^Vʞ��j���ڹo:�֘p��xrL@�j�߈����!	9�L*�}i����j"��z�ҿ�����?x	Y��v>�]��L����.2��o2��VI��+��P�ˀ����d�Ky�Kd����m�A*4c�[�H7�nVNx���i:���!��m��s�[�O��+Vzr��iE�"������<��r�F1ЖU�|�����D>�H3�x���?�������u�Dk7��i�u(��_�@'B��Q�ʡZ�&���[zv�i�l�j�h��%����Qa�]�Vڐ���&�1����|�<G`M �\d&�%Mpc� oe	0�5BJ����Fd��o��R�b�**�l#�k:V�
A��i�n-�y�Lt�/��u$��]�P����X���+����frN��RXf����cM@!R\���"�$���{�r�Dq����Z��W�E���M��:*<|��ŬhX"��,8����P�7s��5	�Yh2Zm�&01�¯ƍJk�aŝ��)�W�]�
%��8�=&��]�������rk s_�hw�1G��D��_'asra��<W��t4 4Y��h~w��;)7���5ɛ�ht��gj.��*�\'�����n{�7������[g�T���E�q��v����:��i�w�̭��v�����Ӻ�g,%�z������El�[�U&�ũ����'c×��~d3H�k�'�#��ϛЛ�"m5�^c�y���L󹻒�i��1���m��B')���ќj�ж��5C�sR٪���a�[�+<�`2��Ye�J��.�a�ۈ�E�Y��쁡�n�#�b�'(QΔ1����aS�K[�,�x�<T�G��ԕ� �A�V�t{P%�+B�{���|TY�����Ձq�X�:��p��f��S>4y-i�;DQP��貔�5�tR}e�3L�j4Ka�;&;�Y@'����"���
�ֳX$�_�r��6��E�, �v�
[G�J�x��|ڶ��o�7�)�VT�	��l9[�VTzEk�ը���b��լ�OR*�>�g}���>�g2�h��~�M7��x_���������B��o!�m�g��(�*�nunbr��Ϙ�Ky��qC_�T{��[�;-���#F�BF��^P�i�����8�#`�k��AJ9q�]�kFqMS��}qܧ�^�s���j[�:ȗ���T�
��̖�;[�7�G�K�B�\�C�.ʯ=�:e=��T����&�G��⍞,�C����
��p�٪�t���tvrY�ׅq���Zr᝭^�@��B0�^��zt��H�.��R��5�БF!��^���hݓ�m(�D����$�2�eL��>x��O��Jk7v�Ti2Kr�OQǴ�u�Y�`I]��!icda��#�4�
z��W㪷x>W(�X-2�u��E�&�'o����d�U���@OHݛ�y�(��t�����z+�2���Oǡ����˔�^Yg��<zJ�O~߿�.㺿�ns��O}��j�%!�j$�C,QM8}����[c;ϲ^厩�k,q�8`��/��[m{!���YRe��+�v���+��
�۸�zJ̮������S��{M�������=+wL��n��v"E:u	C�0���q�#:)W�)p���$�
����R��v��_n��_<�T9 ��?���H�C      )     x��Z�r��]�����P�n4V�cǓJ������l $a��RV4_�s�&ř 
��=��sR9���L�����k��:ʚic�1����l%� x�ޖ�]�u�����澩v�C�����X��[&9m�7R���F����ɳ\ۿqS(~���p�6��G�:��P.�� ����\>P��m�P�(��˾��>6���/}��eIwH[
��02R��e2��� 5�� U��!{��>��_�^����2���9'=)�х�V��-W�����
u�;wV�PzRh❺�wz��UE��q�e
��� բ�&�*����醴/��0ΏG�~<�gJl큾 g4/������bf��٧r�~����)��prl���C��馡��� .A�H%����� 5�&��s},'�}�p>����n!��t�D��PF:V�~�ϥR��#�P�Am��={#�/r����q�������@9�=������%�\����t�ǫ���}_�ߟ�$i
�2�󄦹�4��IƸ���a=���M�L����E���-2#�Τ�O��>�D�_rʋ����<L�'������ܢb�i�%�����+ �͋�(/�����B�Ybt�̔��!I��б�Kv�;Ά�_��rE��4��h3��LY�`P6�c^��Z!�!w�<�:�,���+f�
ǞA���R�:h�ڴ��d�iޡ��k4�P��pt|�*8�������E�Ȟ<u���iM�φЧ�u�B\�(�̩>bt=�Psf��� Bm����n
/)��=�s���9_W ��}�ɉ�q9�o����D��cM�gb��k���� 碫�B�̨Yƚ������}��^6��9�{(��A�k٬�=S�`�8�Dߦ
�+=1`Z����t��d��[��kO�qoëM�"9�T&ĬĘ����EoB� ���/T���PO38-=!�U�a���C� O�>�����CN�|�aE�ڸ ���NKO!K4�z��P�/'p�,���gq�����j�G��r��Q�M�͌�#H�~��P�#L2?,x#9G-1��#���n���OI�{��|���=���J���H���.����OD`4y��$�~N���
��6�0ڀ�s�|ƇTsn�6�
���h�zS�ݵ�I>D����2�$-'x�R�#!���� �&Sft�> �F:K8c�-8�0�p��nWn��GH���������Tc�B�P��'{{�rdԓ����6�\%� hĀ�#�؏iتn�`��2��*:τ��5��OW��9�<70W@)c{u���� b����n�Yc�{*���7h�G����`=�g��A�V��#��1����m��	��Ak����	��%���v��v��}(m�!U�k(C �D��Q�E��Ga3���[�q��b`�^6���D���K2�xM���~x�!X[�
�gP:�.��"S�Q��`?����1b �C�'��7C[B���:���������+�%�%��zYm�����y��5�������v4%]%ea��:���GO����풢�-[ǅ��BZ���pAc���3mBt��/ߖ+~�bbNˉ�[��)#���o�#ʠ*���򮎷)
��m8?��<��d��!Ȯ��;� ��A<�.m��/���ݢ$� &R[����f� V\��KO0���D3i�g�3��l��2%�U$-=�]���TD���6L�r��i���<� ���6ɧ�o�Ov֡Ҧ����iJ�
۹��3�wR�3���>�e%1�U	L�#&u�F�V�դ�(��G���h��������A�-^�r#N2�hH��T��
۩�1�3kմ�"�U;��Y��V�5;~Û��T[��'���j��=5ǆIaO�>&�"e� ��b�_٥��<!�L{�������`ն���__�\�"#)���w�'�$��'�f_��RhL*-}Y�1�N�H�q˾b`�͉}ǰ��F�$����n����H�p@d0�BX�Rt�&��_�d�YH23�"��W�J�����;�5A�yŵ>��z?Ny��E�e�ժ�Z�_>}�p(G�amak Yp��Ӳ��`�.\hei[t��?����t�*$���P=֫v�Xl��25��o53I���
�pi�h�c弐v+(����v��u���*�s��C��$�>,����g���xU��-`)�%�&Q�}gb��H��)xxԆ�(q�����wy��^��=�����QCW��r�f:қ�.2�
cg�l���(�|���6_��4����g��4n��#@�?V�����["Y��c�0�W�[��z��[����r�������e~X��iK?qR�A���ne1�f\�4b-�%c�6<�}�n~�-FvK�h��Z���,`���g�=�9�Sz��S������#�~6�x�>7��#}~~�Bu�I���=Q��G������ѫ��= �r���F"rݎ�gXv�3�NL=�9��Ն�t�����D��EU2�ˉːq	Us�@U�ݓc�˦�-��L��X./�:I�Kײ��*AvM������i�kZE�o��Q��;[+2�OѪd���/�詅u("��\G�,�����|�n���FU��/Z������>_Ҵ3�%��h9M�Ǌѱy[e�N!Q8*���#ixԉi�}f%bC u���pS��l�;zP��:�����hN$*�[ac��9�k��=��fÑ����p���������HK>k�g/^��/r-�6      +      x��][�Ir}��z7*23��oc0��Ż����bc{0ˬa���D�5"���f�#��Ȍ{F�rz������#������H!��0���-�W*����.����=���}K!�ǿ�W?~������B^u�D�;II~��$�6K㷘^�_e	%)�H(�Ufz�-<b\�O����G��兯��z��zݲ�Fz�g���dφ���y����W���g1}��
�E��f�)�4��W��:K�3��~���_9-#Ѕ��)�R���L�ϧB�b|���u�#k1\�;�����E�+ץ���_)�Rg~'�U��|��#��@bX�%�â��o&M!���J˸r܀���S}���sɏMoy�.&�F^�,�\ϛ�
�1���wG��#Cmay��e���T��!���vf�Eyݟ��/���8��'2I�۫���?n]Rj�|T��K��YM�8���^5����!Ț��V�ڲ�8=����w��t��2����^�I꒴�X}t1��O�H�)�P��U,ުR� �$�vQ��G���h+p\z�$>�*��oI>����ohaa�{&���5ޑ4�������$}^ȍ�:��MX�@�b�).�d_e�R�c7Q�E�t���$q$�e���h|Q^b)oo}���A���/r��'�|��B8����A�eTY�Y����B���R,�(��s���3c d�G��2��O����%��P.i�-*b����i� 1� m��k���z%͸�`�c�w��qM�X�+s�ʁ�'Q~�Q�f82�m[��ߠ;K�����%H��{�[�ݬWi�!9�%(�ވ.��0���}�>�7!%��f}�K�2(߭_߯_���u��c?�ؠ������7�[�\���qJs�Q������-�@������g��|x�a7�Ԗ�p�$�E��բ$�Q���_`~�Ij�]zv6����$��ԣK�Q�$��&l��ݑ�۶	v�$̶��)��]Evm<�VM���Y ������J�,0�:�<e�'=��6����/QB�$!o��E�Q^�~�$�����eSd�2ۥ�(Ȝ3�w��w(/�?����u%�����/�%=@�XjN��E�ەफ़�c���g�A�hR_#+�9jy|t��_9��i�㛂��:I��s�e��k"4��s9�7�H�ΙH�R��d�n�j�	�'4�K�Q�F�C�G���$�t,!x=8�p�/q{|�krv94zp4ᠯqH3��A�=8�p�q _����F�!�k]��~�W
�9h�U�*�o�tע�ԫ�U�ps2���ԫ�%��P������A�X�n���g�%I2��W�9��GD'+~�h$�̫x{eQ�ػ�'��	�I�nP[(h+�Q�Ԓ0��Q�O��;�Ţ�d�ȍ"<��ti7���a��f�BF�}t�"	G�����Ewh�g����Q����`Q^��~��?��oz��G&N�9��C{�i�f)�Y-m�ϢPf��?�����꠶���|���vWJG������ė���=��׳<s���3!Bu�ĢRN�Y��ʣ<#g=�@���3M
pX%#;�u(U�� �pD���Dm6�9M*QQJ 
K�Z"=��jB���;�}���!�$���}*N*����\�ˆ��1Z����`�ypUSʪؕ��~��k�%����y\t�%G�_�X:���ن������,�q�'.hrU��Jbb2Z�`>hWT�TY��ؒ�<h�Ąp#��zYZ4D)"Y�dt�E7�%@���U���]�L�|��HHH�v>R�6�h�ݒtԖ��H��	����J�.M�U���y��٠�U�ts8=���2�-C���9�����LO�8=�HR�҉{�e�G2�{�F�I�,�m*���4!��r�%��\�h����xNx���5"W@�y����k+e���`�"]�ر&bPռ���G��j�ǰUB�����(����C���j�t�,}i�qX�^�G������}�X�\��%����9�i�2�_mK����S��/�Fw���cS��vߪJ0�UpG�W�,�9�9nݭ�+���E��}���KL������xáP�16�p�Ur�^Ȇ�R����ɏ���D�C�l�WC2�*�f�D�Ig5����BT$�-�������NW�oG��s�0d���\�?uH�ŀ�]�Q體��2ո��b-#�z �G��ߘdU�ڃP�6⨖>,U��ޞ���R�:�$��4����r�<��c�����ϥP��R�p�Ir�'���(�S�wN��l�pk�P���\�Ku|����jY8�Md�j��&���#��E+�\CǶ�n��Em�Ĵ��%[i���[�P%�"���MVO)����4�k844$4�0�v��qA~�<��2�F�5LY��W����`P���0I�)^�j��a*�Į]OUvG�Jc_+�E{��I���
������~4L9ɍ_��I���;
GQ�6$o��.�W$
F�j4�碚kL��Q��U��
��p�A�qåP��"����e�t�2�$�Q�\&�&�A\�S����R2\�Q�L�=�f��b>����C19��ϵ�%{k���pQ%8��ns-�o��Q0�Q��s5b����y�ȅc,$�M��1?�
q��ӛ�o0�d��%���͢��\a��K���E��["�Za4�/l'(�-�qi�)�a���������t.j��o�ꈣ��?�\)�F.µ��X\����oڀR�)[k��
.[�9l:l=���,Y���xEL�r�6��zm�NI�K�N�ݸ�:7O�,z�2S�tv&�K$�[Lj�'�y$�)d���Ͳ�s�K ok0��W5R��qm�X0I���
�UԆ�-�%�~����J�����C����2��.z��J���z<�&(�"g�E�,5c����?��_��?�j

;E�QM9�
�1�����ػT�E��EI��X���t�2�"p�tj�ы�ҬcqQ�2����*ͨ�&�܏��6\����DӰ�EM�4u�S1��z�qY���җl�����q;s�ZɒԻ���D�F��E�YɬW��d��U,j8�e�Vu�x���7O���ޯ��=S���N[{É��zzl�S��&ǯ�pȵY���%�(aV]ݢ�d3��Ѳz �Ҏ���PX}�iQÁ8����2;���m���e�����8��N5npgDKӱ�BUY���,j��Nb��,���0*���*�\z.�Q�#Io2�]�����H�&Wrѓq&!��p�z+&�97���Z�����Q7y"���e�O�]MZ�|�P�P�B��mn�ξ3�5ʳnK墆
�2�T�'޽S�3�	�G-1�S����{�&�ۧrL��a�e\i��R�T�6�Q-Ng�Ds��u����R4�L���2����*c���I�|޷8Ux�2"T��T$,T�¬�$�
�����dQ>j6O-0U|wN�b�M rAC$%Z�ìsN3�K�D���A�vQM#�L5�u�\������u�X��X��ο���pg�j�꣆jJ�5.��J�d�O�hk�QC5���G���#7���l���߃�{|TSI�٨�v&�?�c���q���y��*�jHą�T���<d��'Q�!��B�c I��8t�D��D"�C��#SP ��!�B±�׍�'ÁYe��ovK��C��C�w��B������w�r�$���~���0֣�>n��9�<���}ӏȠ�!����>�B�9�%���צؾj��34b�Ȣ��������ޕ�NKHk�0.�'qێ���Fǃ�"�$^H�6Š���jYh���Fk~���ӀUQUyB�]]3�梚*�G#̜L�k�ڥ`�Ryq�UcM���#��J��=H�b����<�ӡ��K�QMU�� +�0&54m��'�Ƣ�2�����j-^���E,r�sm}��У,��E�f�� [�9
��<nuG��#Ҙ��S��JӤ����r[(��f3��Ǧ�m��r��%KA�Ԗ��uQM�fd8� Q  ���4�	h.�V \H?��~�0^0�pZ�/��}a.>sZ5�u�m��������E��m'-���F�Q����
��&�Ib��=U��AS�4����{�;��GN�9��M���E�]H�'��"�ꖈ� ۰�'��m����[I.�!�	�k-�������KFw�F�4�	�8�;�9 ǁ'e�㹨!�	��:�$.j�g)��M�j�#A}���W.j����s�x�Y�|\O���ƻ�!��	����15��L�wm�h�|�b)�1$+��Y��c���/y*jQMP?Yq�����4���q�	� o�	��[�P|�b�В1o�,j>Yq�#@QW=+��!�dŲ�1�T�E�';N�"F�����Y��'���D�__����'�܄��َ���~J]�"K�$�I��
e���U�0)��j�>ȃ�RzZdQC?� 6n4��!H:��)2���eШ���2�\�L�ư4:q�E�i��F[}T��]^�(O�y�	�6-^�d��G��$=�H����ξD»�(k��۽N�03s�IȠ�]%e�=I�.v}�>��)�&x��FMC�o-���i}S���>U��֝�g��bO`��{T�>6<�};�P9x���A�*�мӱ�޹ �*S���x��/��^\M���ʢ̴�WAT2�q��.��&˴4�ZP����cy��I�]Ш["��?h�$�!-d=���.T)�S��#�<�\.h��-m�����jd�g�U =�A���򲀻.� <|��MޱXT� �챙Jz���ǹ{.�Ɏ�y�*9��6�9PZo"C�<���!TxUX��lQ�K����(Q>��T� 21�]޷��M�w�Lȵ
���}����'�s��ل���d(�6���$=�z"�+�I�<�GA�L �c���j�k'<�ȹz������&���<�ÔzL�՟<ů�U���5�3���ܔŢ���'�y)חt�����x��uP.���ҷ�����Y�&�v�|�aaS��%��]ٞ%���$.�ry�4��x\���I����rW��������<m�,�o�U��=.r�KK�Q�Z�=�����Q���<NQ���޶�[ZL�{��j�1f�l�~��(��Q��8��[���죊�p�S�x8,˘���u���I`���G�PQ0��m��~p��x�ʸ]���~�U]����k>T!�.�0�\��(�x����=�s�q�v5����Edl(���>z>�_�$�:�xӣL���w���ܶ���}�w��-��ǂי���pU�8_\�'q]��q>j�#j�����JT<���PW�KIqg�z}T)s��d4;Y㟫y��Xz���a�l'H��J�= Wn��_�c�7ݥn��>�)[�xU2�"��'=Q��tE��f�$I߉M��\u��r���R�,>���¨B>"o�L�����{F��R�E5��"�%�C0"ج�z�T=9��߶�Ug���l����>
�T�ӿ����e�=.^9�%�}���yJU%\�`��|�uR��ߩ��;��yj)�<Mx��%�B�|��K�����2j�Z         �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
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
�h�K6���RqM�{��3��������|ޮ���vu>��9���ņ"W�ϡn" 4��{��/���y����d��F�d��Pb�`�Τ^��O�ҩ��� D�񕎕� �S�I@�� D�2�)1�N��] �$ ��+{'�]Q۱�0~�@j�շ)����F��k�NE+-e�� �����'�>�;�]>"��W�A����a)}7Qpj��n��'�WC��K�!l�o��|�����a�(�3�D3VL�>�ԃP��W"��������%�ʺm��(p0V�J����C�d�xgF�b�x�3����P�A}��7��lKI      7   �  x��ZK��:[���F�G?/��.������Ol˄�p��(0��U�ݖ��,�Y��hT{����G��*���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$����!��K���mV�G<74�-�x
�mWq��� �T���?��=�r��A�Rm̃�k�)K+'�򊩯D�k��~�Q��$�َ窋D��N�eKu�.W����Ntl<�u@d[�M|M>��7K�G�A#hZ���K��MP�Al��4D�"�KD�?��Z쮵k��hP<V��%���W�oY�ڕi��K��YO�Ծ/��Ij���)��5�#"H(����D��ۦ�J�����x%�#�CX\��+���/:&*]��\m�E~�Dg�K�n(�iP�Р�P�ei_�?FY�|���Ϳ�ȱ���NmLtF����"���o{NגODOh��uL��S��`�hv%�]tisC�J4B��&����K|w���U�kߞ�`*R�/e�"��A�������Q�_.�v3��!�3��V�L
��k�qL4�E���~�n���i�n��h�
��6p,-۾zm��l#4X�ݞ��Vߺ�}7�G0��}̃�B��hC��X�i����vK���]ﵶ�C/c�3�!���kۼ��	Ȑz�:u3Y��Fh@�����J���M2�A��^���+�Mz��k�ݰ�u4���n��S�pZ�>�H�����C+�V+uHuA2d���{i�K����nD#4 EmHd�ۺ&�:�����",h��$}��Dy�z����`�[�|�ɶr1���}�t��������`JL�ׄ�Jc�3�kV�|�r���2xʈ���u�9�nhHL����j���T�'�E��z/MI��O�~BCj��+Qc����l�Oh�D�D���~�U�=w�J�@����]���n�]wm��i�_!�����]%j���e7%DBh>�H�f�̐���12�Hi�A$ bI�&R��D�D����Ȫ~��AĪ^���`�Y�OAѕU�4QW4���%�3JW4��$QC���%J�錵+�?���+���4QW6-��,�@��O�$�-�h�3h�P��$� �E;G���Ju$�D����!��$	U�q����c��v���B5)�(�zL�I�o�\�*
.Q(�[=.n�L�t��{�u�L�N�-}� ���Ի�����P�gjJU��
p��ğ��@�l땶8�{�s�x�6���ҌۑqI�N�b4Ov�	
H|61j*ǙT0J&�T��}�-ׅOt�>h���J�v9��h�N�brڝ�]19MӴ�!&�57�r��*�]=3q�u9�L�;/ݻ㵂&�L;Դ�!ㅪ@i��Qs�'��#K��*up�D���s���q5)�rN/�=N�LTFk��E^ͷ�Z���w~ܙt9ԜrG�6���)�8�A�*QDt�5��Di��� �8㹦-��q8����4��R��%rx	���=�����M��f� �����vxI�1�κ��Le9�O����=;�B��4;�"�ʝ�V��|��c�L��.b��F��Ϸ*P@�zӳnU�Ԭ�?�H�H�V�^h�.�jh���1)?=�z�׸3�};>2t\w�Sf=19w�)�ü�O���6W��k��1�w�3b�/�+.!&��d��G=n��rC�Q-MV\��	t�/dH9�l�a׌L���̈́��g�19����)����n�wU��I�iv���2w�ٙ��<ߓ3�!�ߟ͞Qṅ��Ψ������7D�_�L�Q}W=F5��ћ=��<ѧ�<��/;N�Ĥ�ܖ6Ok.�<Q0���=a�z��#�7��/Vnk��`���)����`&��'B"��2I�O����'4�]C��      9      x�����n�����WQ�A-�|���g�q����m�m�݇���["_iw�(���E�:������?����ޗ�r�-�����Gp!���.���_�=9����Wt?Q������|�?��?��sk�%������+���X��B�p�ǿ����o����c	��������ү����/�|e��J��.�N�q{ubq���/_���R�4�� ��T��!��/���w_>~�Ժ����{����XKii�ϫ�P��Q�`�K݊�?z؊/��c2?>���r�I	�nD)<���� mzJ>��R�'�?���������_����Rd�
�I5o���L+\M+�P6��n����
�M�|Z���z�/����������o��������篜�b}��{�V7T�T����rO1s7y��*�����t���Kuq[ejo%������+��Ċ�4UElB���z��������.�Gݽ:_D�3y��˫35�恽#ua�gb5">}3���h���Sv�����N�QI���i��X~������r%�U�i��޸eӡh8�_d�>�o������Su�Z^�����C�X�Ug�h��]���bJ��hEl��5�d,��_��:T�?���?b��g�S���ÿ���~�4�w�z��|��x����>Oܻn��Zz�Y��l��;��R���F�6���\�K��v�N�iH_�<�eX�����ڲ���U&�-yoӣ:�^��6e"53���	b�A�掉J��0�q#&�Z��b�L=u�T Q��B3��H���~�Pr�=VwX�U'�i`�" r\�4]9F�:�NRuJ%S8`I߿�ʊ������v�c~����z�1x0.sa�����=1i�&���u�Zo�E�\�u�2v8	T��� ��[�J%���Gqy�N��+�����-%��a�kN��b��U�B[ղ�+��9ruO�Cu4�#�A����(4k)E:u��4DQ�B1_j��:z/ǟ���P��B���(-��?��|w5�*��F����oޞ����)J�z��E��ڨZ{)xo�]��*�hr��� q�q�n^�[ؿ[�.]Ǘ�}ڗϔF���:l�C������B^��_l(j$:|r7n��6T��ؕ��Ef�y� T����G/*����SN2�8��fcuV(���{�J��>n����	GO�$�Alob��B�K,�]f�J��Y�n�N�Ñ��")i��a�������4�r����G
>�z�z���Ď"%N�������as?ʻB%�܋�C�/����������	�u��Wgc(N���Ñp�(�1�]���pSC�丈�0�k�ކI��omH#Yh	�a`�G�7"��?�6��g���&�)0�� _���ͬT'�	�섚|~�^�22}j3K��a�=llA�[��\b��yiL��0�>g҂L��,����J�3dI��=%�2�N��p��蒢!P�(�Fn�{��)IY0e>����#-ŵ�(�%TeO�P����nN.�l�
.�p�?��,��j< ���X�z}��"yU��k\��c�).)��L�'<��(�/�QW��]~�2�:Qq��FJ���s+*2�'��juGt��N,�a���
,�:�y��l4,�����I)��2nT�N���~h�?���(Ғ)���
D�H��0�c����p���='�0�$�I�����o���);E�Ԕ=��c����?{猵ɼO���A��Wh28�r�X�[�C�*3w︅:t�p�>�!%�w�q�C�RU�jl��FY>��9��(r�*Wժʿ�Q0�2�ЁQ��(%�!gjn�"h���=T϶���?���?���������jzU�����b[pS���)8�)(o��H�ٞ�g�9������X��E�1EC�ũ8E���5*�ļ�/��I�B�D�s��-W�]V匃BJ� ɪF��e+�Jk� �qg��B(rR��T�Wk����m�MU�J�a��T�	3��(US/�N�l�x��Ӿ�5�,�D85R(�?�
;.�V(��E����)�'�NT<�:�V�}mϢ�_9����\����/�LA�*C��F,��vu7�Vo�B�2!��T�R����[��Qt�W����\�k�G6�wR?�DwUr�nH��:�=w������\)�1����&�^=��TH�)�DCR�P'uX��)�7�(��
��ԣv?!�4%REw�M��<����Lo4��0c���\1f�Չ�CÓF���$�<D�`>���VX��Ծ�wi2�V�i�M�[�G��t��
�R�v�ժ��}l;Fm�>o�b�������vWtR+]Y��ČYTߘ��s��S�(���H��Ӝ�-V&;�5�*x<���s]����E6C0�R�Jc"���U��#hp�)�l6a�Z)���F�O�Vܕ$MY���0z��\R̉_@޶�$z���f�d5L)US�:��%4�w
�����Q��\����m�v��+�y������ �]�/���3�١��+��קRE�|�+�w��R�Fj.������}ԽR�l<���9�~<�ͦ������L��MTZ��&*'�3��.V'���#,d��}y�>����R���	��j<���t�2��Q�B�=�C��kl�3���Q �� b�Y�1� +�hd�*�W$���'�DgWէ�'��o ���nPZ��vC�LB�̾�����T��
% ���6 ��}�p9���*s�E��w�W@u�T]F*0}3��%T8R��lTJ�èNJ�]��)y8�(���:Q�i�cR�Q1yDjQ�X0i�U��(��T�\��̾����0���JP��W1��{PxR���������=�ޗ �k:=��� ]��J�!g�k���Ka���Zv�~��"���}Fd}�ܸ߄��2�� Z& �	��WO㽭Tb#��:����|�������A��H_{\E���P�����J�sz^9�uWrܥ�qqW�U��P7�Ț����V'�8'B�F]��bP���B�!V�3B�zHr%�})PJ�����Ey*����|����:Q��Q�&���fa�?�ÕR�#@e��hg(:Z��D#@F��{�����dF�]U��D#�Z�SL�����q�-��c�è�(�B��7�1X��َ��س���Ԅ�
�<Syj��*u��YQ��L��^d���@vQ�.��+GɎ�J�'�C*4����/]�2D��m�5����q��Q��O�U��y�1���ۜTL�'	(��P�g(݉0݉�2��a�6U���/��'yS�M�;*

Ef߬��૴lC[�NV,���Y���sS��ՂD1��I�[��8:�9uΉn����D�p
�P	��6�<>F}{ۉ}Q*ʄY�A⮕*E�%�c�kw��qGu��O��]�n������H�_�q�n埂a`�J�^v;v��x���O�@qvP��V|��׸�-��x����Z�a@u�˟f-Rt���P�֍�NaN ��s�UՄ��|��i�UZ4	V'��-VuV����JG���Y
ތP
#��:��ZZ��<�Q��7���=� +�V�^�G����y�?�j?V���B�mPw���`A#���ҟ`��e���I/�au��`A� ��)�X����V��
r���4:oA���c�NV���I���f\!T'+�^4r�Ƭ�Xc�%�(�#wu�Ò�����sMP�J_�e�2*�\b)�!�ù�}��{�x�T˰W
�=��Gb����Rw�˫��s���w�#R�	�|��R'+֡Vbt�X�`�o����MU��X�)�+��dA�dӍ7u��
�`��PR� +˧of�sWU����e�Ұ]Lm_���g�p2��p&Y���j�,wc�(cSw�o3���#2on,��L�iu��m.����X9d�_�%�Z�m8���[<�r�D��v�2����	7u�2Z�x���c5��8����s����|E����E�P P�����Ն��c������<��=rO    UU������r`5؍�5Ս[�9x��m���Ȟy��br�Z�����D��	�R�{��E\���p��c�[s�ݕ��"t^�k���H�ki���ʾ�-�&C`��A�XŦ�Vяה0*�Oi�8�xA�N�qG�b��;���Q�j����w�~��Ĥ��"5�J�ՉʌB6A�S=G��D?�s��m(�I*R)ԩ���wC(9��#2���*U��x�,hO!��q�QǵZ�>4��L��]B�x^��Ό P��~�T*�kE�^�ؙ�M��>��S��VbaΦ�P�(n���)q2���j�IO!3@��J�xb���ՉqF�y�A���m=���QˎJW@��O
�~SlՉ�ǡ�Q��t��J �3Ȧ�U[�D�uQ���C�BY�GU���
^I�:�n�6����q�iu���SQ~UJ@���^y%5wu�n���h��:B%��	`6u`(ٽ����N�
Mvn��+��5 �l@),���R'��,2���n�w/P8T���Z��l1���/��'�j���}G���d9��^��d�0T'+�g�W�eg6uw�2��a�/�t�j<�����U�F�gDj�:����b������9;N��T#��ŗ��-uo���(OQ���_����v6U��=�P�"[g�s���a��:QႢܝ2oPA~wCcȦ��"\L�/��U��}����Ӡ�Yu�.f!3��f���*@nՉ�7Tp\-�*��ěP�x��L^���j&��]?�����s�ﻙ����%h���p�Y`�h3�J��P�u8�B�X��8����#q���.TBȥ�/���qi�����/�P�SΈ��d��ϩ�}����Q�OC[T�>>l'١:Q��J�#��{�]C��D�+*W����r5�����U��Z���!Q��,�4�Vw�����)	�	�(��|�&���D��:��NNWa��N�j�{�M�N�^�~��`W�6u�T)^Q�P.�P|�ʓ"�u�V)�P�֠3�Q�L���o���e����7e/ɪ[�O�~���l7Va߮wHi�o��FB��G��p�7V���蜧ϫ2�e�h�b�:X�WC(�Ȟ�>/�z���*���bp�:A)�2x?�U'*\Q|=���"=E��u��y5�P-R�B�*D��kşJ�5�+8C�Ϋ��[�M�2nA�N�4w8��Io��Ǎe����f���>w��zE�rL�:�:o��л��eweU
o���ʻ�%`|��{��[�eHi���Ó:Y��ja�1�]Z�=	�[u���C�̊�ƣ��oL��>D�2T��1J�o�I�u.&%͌�(�l�Z���*w��y�Y��:8[u��Ղoz��*-y����{�Z�q���"�c�un������\�<FCd�w7�8��w}F���;���"����������X��˞f���t�,��}#����V8}�LΥ���^.�/����ۥq@�����`���MjE�*Ӆs�������G�~��ģ��|�5n?��-��C��s������WiYe�'u�.�]X��RMX/�*������~���t}xD��ۥZ��7��ń��QU��.c�bn�2�˷jEՍ���B�X͠��A{zCFhՉ�׏E�}�ۻ�n���|;�;����ZߥUs�ʦ�>�H(�c��6��Pt�Wtj�V�!��Hk;>���eXu��$�����4���NV�֋�En�?�����:�G�;W���E(��>�(�#+��D�|�`�s��=��,���<\2T\n~��g^#yr]�jS�vX�fTw��P27���ԉJgEcqϩy��ؐ\������H��P�I�Oif��갌/��)��}MNR�s�ޑ8I�J�4;kA��:��sRW�C�y�A�k�b��Cu�.1͂��5��7x}.TP��L(����z/[#�B�N֜�:Ջa]��Í����[)�f��Y\B��QU+��m9��a&܊<�3�@u��7{0,w\1 l�2�|�c��a�s,U=|�e1�R����K둥j2�X�q��e�e�.��)�U�ޗ�{D/�U�4�JՖ���%�zq]J�4xq]����Vo0�Wi�(`�'n�+�jS�.0d�>$56���2� ")��OF�����s���b��Й��7D88[uV���V1���.Q�?=��O��>��*V�b�{�\��v�</t�[U.�������bR�.X_F����O��O����'XSԬ.,��3�x��3��/G����ە�����9��@��ǇU��7Vt�W;>Ki�RR��_�.�����2����<��^$���r�l���è7��1,S�c�cWuw�'oO�8���#�y���5���n��rֱKj�2ۆ2����<Vˏ6��;�r����.�T�\c�or��m�2���^¾t����Ӄ�RX]�8`��&O��$50��g\���T)��X���U߻��5�e������%1:�Ȭ�E&������Mև��10��<��r3�7�mX],���}0J2k(��e�L�y����`#�3�ʽՈ����d'GwU�:.���KTy�,.��SŔ�����P��oN���G�����쪊��pT�:5"e�j"1�D^�iYbX]�s8�S��8���D�xr���tVM����l��`��M��V\"�((�#V�ᷚ�]��+�X��o�Ve�И�&�&,7T�q��j�|���Qr��6B52R׭a����[m.+�Uջz�Y{��#�,��PS���B�E�䂼�ٰ�[�3_�`�V��n�9�p� �/�
��Fh4��#o�r�Ο�6~]��6����0�8��ͤ�������IO2��x�՗�cm���|!%���"�f�=28y�(g��*g��dJ�j�#����44xq�ڹ^�J�F���,M�If�wW�@ٯ�Sp�8�LOjh���Ew�5�B���{�r0v����?�Ú�K�2#n���l�:f�UՊ1�X%�lD/����{X]��HI�䈦���<e�ʡ?�n�tv�w�յ��2��L���JbeJ¼�0JK^62:��Xu��c%�
?j��E��q6��T݈��<��갟O_���"�)f.`W�����j)�Xm�ȿ:��2!�GT�J�7�h��/��u�,쪚wHϑ99o�#]�+�4YJ6��寨D!}o%��j���0J���`m^>��x�	��`�
k-����4k6W`u�.�3�<EV!��}���{P]�|4{bQ�|��o|=T���a��!����qWL�V��X\sj�cWx
ԛ��v	<�K��tBƘ��v�fZ]�K��O�Gu��wq�f�u���9&%X��2#���n�fS>�.�?#�5Њ<��Ǻ��p���
gc,�^R��;�74�Y�k'������pP�(Sh ���G/��?��HLcg�0>\h����`g�A��{PC�,��R���M��*WT�&*˽�z�V5�y�Ώ��`Y�E�ȝL�Um����k S'C�Xy�O���8���<��r��c|�Kn{�߾9|��)�r�=j��Z�L���q�{__9�E�C�G(����E�E��c�>�fT՝K�����I��J�o�V�U��J<�(���>Y�a���F�bZqSu��F��>��)���5oj�VUt_��Cp��ɮ>���gZ��*Vt��ʈ��~�=�:�Vuh��i����dA�2�Q]�&0䩈J��XǸJ��Z��o��d��#��n��滸�dT���:a��<�{V�7��k��Ս9FU��^��N�:%��lfq^.�5GV��kv�:O�,r_2�o5+�Q/� �R��2I��"�~���u�R���#C'��,����)H��/��..^oh���Q���s�Z�둜U�ٚ~�@E��MGGu��q.������M���M����B�Q��6�*�B[��Q���������U�qTl�Z�]�n?�*�G�ɬ�Zq.�E�����Oq|���#�dV]��=M+1��}Ty8<)�Q�v���>b���� G��\�'�T]�c$�,�i�"[d�����?�y^��o���    X1I6iê�����Gb�b�����bK-
�Oct�{��Rc2,Ov�A���X�ʢh1D�
|��z����D�āD�g7���������0�/U�.jS5+�Y��ߥ�ǵ3+�^^�[?���7!V��>�R�֏K�ޥÀ����ëGu�n�W�w� �8$�l�V�B��&NX
@�</o�4qۦ�q?�~cQ�fEr��e|T�2�q*�Y��ٌL��W�P)`3��b���X��EߥE'�9:��V+�||��ȂO��^�l��;/�1,rD��>fY�=�V��2,�R�G0Y@)T��a�A�G,�}0iߦF/#�cƐ^'�gaQ�N��ﻺP�\��^,]�Oi���Xg�(1v��d��8)��MĶ��5w�BKdX"ï�8 ���o�j�p^�V�[�%O��Xoq��i3�b������"���`ǩ�:��i:������6��T�9�y��aG�a�Q�u�ZU�#�W����B��X]^�H�衺`�*��֪�[�(Tw��;���Y}���@Lt��-U}�x��	ƻ���~�hC�Mհ[�F��+ �;�k�Ǫj�x�e���W\�*���Cu�ΓSk��4����2�fZ]�����w������jT�2@3,�/Vyﲯ�1~T��� ��6����۪�ԌJ]��������o��1&ܩ��d��Q| �ݢ�*o%V>VPq�x;I���D�1�{�C��r�D��L�����n���=f�����-T<�Q�J�1�#��}�{�wU�<o%ip�V���i�������&4��&<�l�.F5�娏�2d"�]U�Ή3�</�c�7� U��tN�e�����]��--��P �gf񶄆X��z��.�9�eVs�TĒc{����:Y��9��Z8�Y4De�n���:g��j��bu>�U���*���m�0���s��Ǹ�"n�7�L1��`��wfbQ�XZ+���/��XU����Q�}��7½.4��2z�kq��|�t0)-K���Ru�ڙE��E��QZ�#E�䗻��_Y�RL���;�f�����,�$J�)�m��Ίje���7��)4������6�j�n,rRz��,MVM�����b]z�?Od��݇$y3�@u��ò<��ރ3J�-z��G܆Z]�|cQ��e��ۮ�����b�+�{��^rU5�5#
��3(ufQ{&��C0
T��}!ߗ��r���hV~wU��2|�����r�bzG�\]�$$�m*���}���x�ev�EîyPǨ�^�_Y�5��X].���Qu��K̾D�*��T}]�Q5��5�mԒ��*<KHޤ��Ī�u��pB���2g0ry*�?����5*?�В�_���d���l�źx�Z��� +ʵ���P]��ߨ4�������a���[u�.�F��t�֋�җ{�歺X�Xç��	k��Ғ�C�NV;G��W�]')��*��A��t�5��b+j�f����Bu��׈`�a��P<�e9�i6��([��Z�I"��'ݙ$��n�H�C���<�VS�j�-��`�
�>[E�0�՘�+7�3������
����+�W  ,��h#�M�}��`���C�Q���[���j��WH���*-ʉ���uw��Tp+v>~P2�|�.�qQX��p`��f�W`u��3��E)���
��F�MU~����{��=�\���8���Cn�?��b�}���<MėBh_�dߕL������H��K��5��J�7U�.�#������� S��)Ѵ��y�;b؊�o�5�ʻ���*��k?2���i�R���)��6G�MI�e��j��aiMjzX����F��=:zw���w���^n�][ ��(�P�i����ꂅ9#�����JѶ�:G|�<��İ�X����3b��mwX`u�҅��#��m�P��YZ]�|c�8��J�,��z�3k�X]�rc�~�^K��t�m��U�`2,d_BC����t_�U՗}�TL>Y�,Yp58P\�~!QrI�&_妛�����܍�c�j��,MNoT�Z����GV��zDڒY/g��f�dƔ��Xg����c
b�wz�I]���H��q[�J�>�!K��uv��ԛ߷�|J�r���6��b��FJՕ���ߥ񛟔j����Xg�A�
�)�����`}}m*Ǫf��:�>��]�:�G���b�V�V\�.�9T����w��[f�]\w� K����9l�M!V� �Q&��J��d/�g1-N�bM�a#�KI�⫸�&VN�M�a�Q�%N# ��p���#ط�\G�?au���wi����]]���h��m��\�핎�f���dunĄbD�������ޡ}�Ǒ�%�tŰ�*6��F�k��a��P��q�j�b��N�unj�-Ƴ�j|B��K&�y��G��Q�ݟ=�*o�Ŭl�t=��u�o(<���n��H���ܓ�X��Y�_�Ƭ̉�aV��t�p��K��:���y�U�'u����ĄX�q��?Iz��0�R1w y~d�xz�.�9�a��l{�؋Z_�x	�ź�(b�Rb�q��B�.�9�!V�|��������^��[T�#w�*r�M:��R��5x�Jj�a�q�U���XW�!���6,����%���W��;��X����z����^�d
�!���+�Ciu��9�m]&��!v���Q�+��TE�z-G��:��s�XS���c�J�/�T݊7���b�q99�G<�z�.��s������Mz�V��9|�mE���2�P����źyO��(�H�$<�a���b�<���t�è4^P�6T�b�爐�s���(��]�廍�6U�*�	&a�����%޲��;�FU�X.a6����v�?�8��[g���˨�:J���X˼[�7JAu�����S�8�ppb�Ņ�7T�ک Ը��XZ]�r��F0~����׋�X�I]�z�E�ndA{��|���0qWU.[�F�X����Vu����+��^FN6��4�Ͱ:a��`���G0��5���o(�| Ҡ�ndYZC_̪v���"����2��vR��=V�ݻ`)ɑ
\1%.��wDމ��e������v�rKs��+G��Wl�v�������<R�W�O�]�%@.z�ǂtYg�Y(.��w��w�CT���bU����;|!/ܛ5~;NV�L���	k7�Am�(AR�#�{yq3��V5��<���@�a�/YFy�9�Ue����z���9�}�|��L�n�f��X���N�T�4�&�G���1
��!X�|�,���v�c��� ,˪��#4T�b��9�f�jߚvu�Ɩ�*V����ւk�����}|��S���3���G�UEv�,|`u�.Om��R�s�:��SwPU�⥗%xO����8��[���[u�.�,�K:���V��[ZX�+�n��*���eݱ�A�v�fKQ]Q���a8�[IO�]3��{e�dy�$�bu�F��-�j�_��#7Y���R�z��Pj+����Q���g����������y�E�h��H�`���W�Ɋ|���xW,
~2��GOĪrC̬�XIX���t��ˤ8��qP]�|kE_�dv|��"�1���Umï�:����]�?�i����ݕ�kPs�ߥ�zJ6��TU/�o,���eĪ�=�S�u�pe��#�W�u���H��bK�VL�y�L��� �C�����beaa���P]��"��P]�2`�UC,��m#�[+�	�&ު��:�v0a��L�Vi�o���7ˆ����a����䁋h&Mw�(V,��a��*Los��w�`J�0����Xv�k��^�5a0T��}í���ؓa�y3tS@]�te%~���:$���T݈����C�8/��>f	dS5�
+-R�ֽmC9�6��?��z�v�%�{;����rh�S�5�a?E�J}�co�H�Yu����T���<�몾�� NRt�jeJY��Fi|����ߪf���*��Do]b�n�A��>���dk���Y�S��lO�Ueqz�Q�ꩁ87    I�k5f_)Vl�8�V���*ن���z��J�9�oŧy�-�>"C��b5aA3�5s*��4�c���T�ɖ��_Qs����JUYv4�P}C�]X����P]0����ɯ��ac�P]�0��^Kΰ�{ʾ�x��q��Au������߰j�qWl��K�:؀���]�q�H\�<P�[��W��si��[R�U��æ�z�Y���n��=��ōk���IAu��B_�d�-��ɰ�&z����D�*�Ԩ��{�jc.��7r�o6�6�jV��B�]ǣ�49�����j7_(�3���ꁥ��:����9�XTtr��7Ub9��P�c���%W��^zǪf�Stf%��1�O��i0�.�9E�~�y�4 o������b�G$�8J��"3���5�=�}S5,	9Da5rU{��]Z{�}W+����|�K�ľ��u4����������q�"��̷�+/U$^�7Ogv�au�Ƹ�ZQX�㩭ߥ�]o���O5����Q���T�T��@9<�v���y��`�b�U��ا4�Š�X����;>���l�&OwqGzr4�����q¢r���nj�.X0d���#sz���
��\��&G�;WԱ�Q�\}'�S@̀�`�������`�
�q�d�*�/��T��Y:o ��Y����gٖ߳���H��eE�`�C7BX���h��[M���ւ���
㚹���.X���q֊aB��a��\��WV�KI2f��s���KwXJU�c}�	s�\�sR,�b�^��/��/�����X]�s�M,
.R�䔖�65*V�6"���<��L���ꂵ�<����(N�<v-b�)^�G�|!z�,��ۜ����<z��,�<0���V�of/�jŏ���_`��Z�U�9Ղ�WX�Ql'�{
�Jf�Au���'� ��U�G�}Xu���]�&T��9#�vN�����Wq�?�V����\`��;[������6�c���cG!�ʊ��Ώ��Y��Xs;	��X�>�O&��>\d�F\���@�"E]e�A^�v|�%�	���8x����mb���~y�*���yZ�.���'+�5�wi1���F�@н`�{mř8���I
���z��2<����y��������Y��U���خj��WV���0��Qǁ��*7���zd�Q_ړ껪�R^�8�(�o�|���������}�~�������x~v�򯎊K�$���ߝ��.X��x�(`�o���u�b�-p3�w�k������v?Vl�0P3���`wN�M>�au����a=Q`�@'���ͬ�+6Fg4�ίzP	��Sp�UH�� �ꂝw{O�}�EET�ϱ�>e1�ϻ��s�y�����*���ީ
�4T�ۓa�7��R�V�2@S����`\�7��	����������v��)0�j�j�+84�p �v>�$wE�^:l�q�����`����p�t�&���#�?��[�Q|��ZI��ɶG�=��P���|(���`1g	��`W�AQi�uh�S�'�����]�G��6uԡyQ�������z�ѼJ`Yn�fN�v��z�22����3+��	+W�QJ�z�,����a(.��wP0�*��|�%�6�������15��Eu4V��Y�.��wT��]e�8��� �U��=*?�X ,ʛ<�|��j��T�n�`��I���`W��R��ź`���;ɬ�`�_��%�l���Wx+�Y,��bW�ܥ���4�a�=���P]��j��*�ݨ^|4=�W`N�d��j~�5�Гu���,�Ț�X]��j~�?D�cK�7"��u��.�q5�Y1����9/����X��J��Y�"���B��� x��>�Bh�a��V�C���R�z\�o��㊔FC��}���:.J0���+�C~U�?&V]�����5+;��Ǎ��\ܙ��`7Ǒ�+z�v�6n��ѶU��8R�c���!%~F�V��v^�d�۲ܕ'���X]���h����3rR<��y�E��bsAMa������ۥ2�t��>�������rE�v�`T)r����>�.V�`����?�"h�wUò�p@��[��Q�Ԡ?�)�.X���8���#�"d�V]�z���9��×(v�ꂵ�-��)t��8T
h�֯�)�D��C˸�:a|ܚ�C�o29[M/��a���D뫠�`���O��ԥA��l�c�M܍��N��@���) �@ʼ�$Q3�y#�.V\��⚩�*N?w{R���b%�+V���b�����e�rL�����@F��IZ�r����>�V�����"�C�xs�V�_`�ީ��"�6A�;��W65)cn�#T��$\����PB	˦*;�}9�W�0)��6z�T]�����؎�|bu�f��+V���&�Q_9��q+ju�x/D�KV��]�3���Ǜ�>]�.V,�tJ�K4� � �zy��T�<G?�斃\���_�k�/���?ܓ�!ɜ�˵&T��(	��Z�����C������WV�3��o癐��t���u��H#!1f������AaQ@�;�(�s���]q��A���Dꝏ"��gԹ����m���VIP�eV�-��+v��v�k�k}gg-��`�g�H�S#sd��UG���\[ӹ�(���;Tk�\F�'MC��Sq%�������WX�k���Kq|ML2Q/T'�O/^`��M��PnnI�1����P���1�Z����Q���`A`�6��VO��X�T�V+���b���^5Z/��v5}S�K�V���Q�|ۼL������wXv�\��9�Au��V#?�`�k����wX^]"�]\�ό�Cu�n��v�`3�DW�!=T��>*oj)���| 6�/����o�D^�#��Zs.�U~P4����AE���/�|�¯.�Mż��.�Ҫ��\�@����v)�*���S<�iu�.ˊ�Ɩ���B��鎼��&~R,I�P@Żc�n�y�9j�ʌ����+���� +ɑ&���Vu+� �Y��}��*-�%a�R5���l�P1����8���������'u����Y���d�~[�����Z��<�;����3����	ô�`�
+<�ZLV�
ᴪk�ߌ_���/V�]9�L�o0�!�y��xm�7g�M��.X��z����<�eM�����(�l �e*} N�j,��
����j�lL)�[Au���dw)�ɱd=QzRlz4�t~E���lܨ��~���`�V3�c=[�Ğ��T�Yu���  $X�F�Ad�j*�#k���Nc�N�f�C� �w����XU��F�� �&������z�D X]�tiF~G�BZk cIO�1jtiYu~|'�E~�&������UltiY�#49��`2a�􈺴Ulv�����,�Լ�T�U]���@dWG��7����Pe��n���bԒ�F)�0Z��T�CF'��c{41Tc�#��5�2Iu�1S-t��6U��h4��l��^�"u�J����Bu��V�C�j��:_���l;T���`�#m�/�y�d^|�U>��,�-z��I]�pmF���8v�.X<���L��Eu/>]1n:��&���P��8 ���u���ϟ���� /ӑ��Xs�T����Td�M���(�8��������5Rt~e�J=Ú6E�.��b�q?�L��sR,��==���ɥ�e�ieԘT,��#��xAq�?�F�X(��(8]�]�]U-���z����E~��"���L�&������E]�xCu����>��ՅJT���V��S����F�
�/�F�S�W"ߓ�@U��f�L�`�"_����w�[iu������F�^�����?6�U,	�(�uO��=����T�>~{�׺��G̀�Z�O�l�{o<��ɔ�
Ȁ�K���f]�l��f�1� `���{B��L�6r�C32,~v���"2F#.Ԉ��(�PϨ���V'��^���[��zHr��� �   �=�L�����2��LB�C������dW/�tὅ��.�H��ˁ/`I���Q��k�X�7,�.V=��8Y�}��-E���X��꜐���Q���E��^v�*��J�tg��d�$���K +�ؑ��u��s��FN�'�`�4�Yp���X�Eؿ<�����??A�      ;   r   x�}�K�0Eѱ�
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
i ����V�e������T��!��n_5���L��tH�2����Y�9��d_[��j�[n��C/x�\鑽P �HTe�Ӂ�Q|�.��m0JW�Z]@�;-�b��O�������t�M;Kz�;�>Km���m�@~�wgT��rx��f�E�����*��MQ%\*FK0ZV;Q��2��2�~#
��ay������%B�y�I�H��	�zH���7���G�V���e�O>dc�k�*U~��sHD�lh��&�e���A�p��͑���N�K;H��P%�|l]��[�,�5y�pU��YD�%�[�(`+����d�jf��
�.����P�o�iK�թy�Ӵ��dPںP�3��BN,����T����s���px���2��l��e�Y�ۜ��G�oT�a��)2r��wm��-Iƨ� ���T<��]��-W5}1�@����� =����$ݕ�?�pE�Ĥ2Q�=�� ��сi���r`��'�ޫ�J�e
Xw?�3)��	���c��R�3�]��q���Q�q~������Pٕ�9ZT�Z���J�Pc�
ǌ�c��r�{,6ա�9o�B�B�F�e^t��
�D�;�D�1`P8�z3٘F��)���K��ݱ��e�S��/�ajDP�c����"�k�	�+�(V��~��_�X}��n��gł+B�:8��'D�.�*�R��R�����M~Oy�Z���S��1է~V|���k�G�z���R����WP(�S���M�z��7�0�Y��+&K��T}��Tߴf�E�%�h����
���FC�Bd�yO�s(�����Vd�쀝�W�'��!5��-S���b��c��hS��c���H��"t¥b��!�L�"Ԙl�RsA;g��+|�:��U�m���dO8�U�܂t���ԘK�h�{*���+�n�a��ϲtpjG̉���D����5��P#���������iY!���1�K�̊Ab��ݍ�l}��A�" >D�'",%UmE���m�&��$��E��Jk�ϲ�M����>s�fa{ܧ�DC!�QA��QH�Ζ�FS���*�
���5Y(�8��ur?��3D&�Ӟ�]���Ӿ�F2��HI�����N&.�waj�W)P9��<.�vh��o��(_r�N�@#�A�B�]��Q�B�1j!gt���nq���:y����#'[�����Cmu[2F�qX���s���N_�r�E���S�΂	�uQ�R�&�ebG�ql
�{��7�]��z������c��gGv�ﻨɐr�d���1j�jA[����X�&;����k�|�xl/��:�Y"�p�SAb���z��/����L�����'e]T�E��k��*$Vu���-P�p/�\�+l��=cK�u�OOm��,ރ�B�;~�q�_���@�9�/;�O��A�`�Z���C*_MR��+�<}����L�z�݄M��t=��X���&����=���/��YG�Qy��f�i[��;?����Ť�&ke)	�Y�=f�Q�?�o��=�GLj������n!ư�<U�3��y橏��hu��詼r;�s��ʘ��9^�t�*9�*� !/�2jcH�\����r�d�&��?C�S����t�_����{H��pd�2�Om��>*Μd��Sý���j�����%mu7ؠR#�M��$���[��/��l���(�~K�g!Rc�ˤOn�����n��Z�����H��h��v�$�;��>���C�Un�C�z��%���*ȟLl60_AjL�!*��'��o�/#����?�[i�s�9>}6���Ȟ�n���)pM�Np�ͫ4��/@��Q^��N�BY�����:�u�'�l���6t����XV�2��ɖy�we����[�=�=l�C�5���
Rc�k0������r��~���̪��H7�j\CZ3�T?W�FQ��F��v^��!��|��(������0Z�ʰ��t��^h_�����0�g��k��8���w%��(.,:�G5ȁu�	��hk	K�J���|��8�����b�:u
7�_��L/�e��@&đ��,X�t^Q�~x -SR��~>��_�N�Ǽ�������V���#�Χ���
����}j���e���3�F�D����IUS�]p�nR�/�U�.��"��Ʒt�� �!�2���(F̰l��1�.#�G�񘵂ai7[���ƨQ�Xr���e�S)�:]�V�+3׷�aj���F���L-�i��D��&AL�Om��0Pb�\=���|��*��:Ǧ#Ԩ	�ڔ��S�t_�+���V@S��,��F7�^Ov�d�h�����S&N\|r�p����K�Ͽ;���6ͅ�$��9St��5�S�aj��0j�GDe }T~?6�J��R�OJ�E�iB�U#��@�Gμ����c�(.H�6�~w�#M���͠��i��v���(&�6x���eN洲�y�ą��q��˜F��g��g;�JϏ�F����YZG.�7�˗�h���p�Q\�&��WX8��-�6�p}�Q`p|�dPx.�F�c�cS�2�Aj�EC�^�dK�ڜ�a�_wwQS8I��e�)��	ۨ��Qf�[n�@,|��O�Nwxd��������9ߕ�%l�X�B�����\����/	S��[�ĉ�a(m0���v�kA���=��]7�9�3o�J���	���7>D%~��������CSE}W��
{�l6}��G���/Ķf���/�^U��˕���N��Tv8+������tnڿ,�c�r>h�9�
�NGv��K q�o���9�T�������8<��|ќ����(e��ꐬq�V���L�dqf�7���1y�=��Yo{�����]�1b|X�W�E|,�s��сS�*닁˧s�zjM�V���3	��k�V�5}�Ɓ�XY����<��;���ıB��G���@��B��se� �tG���O��yQ�J$E��W�!tCjV�a�-���އ�����=�� 5
�C �$�
��U�)�V��g�B��o5��82h+K����M�}�t�ct��k�g��,),����DH���<��{�Ԙ��s03�exg���
�Ab�0����C��T�zy4���Ej['�����;_B�UV��rȏ���;j�$�Fq�����?�aj\K'�Ӟ��/�o��z�^���8TjL�Tg6�r��Ʊ�*8W��\����+N�h�R�����ۄ�qP�N�z��X+���(5e�Jy�Ɗj�̟o����n�05��w�ɿ�M����֕I:���*�^�oJUU<��Dv��Qj��.�����������?������Et/N���Aǹ��?��xt���u�|�a�f\�ygh���86([�V�ر�S�7�2{��(�5 �aA�f��<~=�2����
A����p��Շ�
�HC���8((�LUW$��E� ��ם�^a��P����S*Yi�֧ƱA�f�}*ט�۔�^ئ���QV���Al�����8��vu*�;��]���*��5d�~�W�� �>-�R�����OG6/�O��=EpF*��Q5�tj�8Ĥ!5��Ǧ��ITxs ��^J�m���!L����[��sQ�o�+N�Y�#l�h\�T���(�G��Q�eL�P�����,�K����>�ï���T@�gc�8:�t���c�6> ���P�����n�%Z� �!5���\�8��Qޤ{�J�EU�*    �����8*�$����C�g�6f���S7l`��/������M��d���zs�ZΪ�����#�Zc&�={)YW����6���ģ�8��,�^�=�R[�|���q�X���>XCxa��o�R���7L]�|�Ҍ�~�s����J�G��5��d�U���Qj\���:�7l������Iu>��׸���ĸ�ޅ>J�C�������F'�\R�2<B�S�K�P���_�n_B��[�U����,�ԟA���'����V��δ������S{6��6�y��W���֘
�ftR��4k�3�g�]ό�;8���<�� %����To!�a��K�ٶ3�R����Sc��\]�J\�+��'^Btׄq���5�>�3��m�_���U��M�u���9&Ŕ�/�-�j�1�Mu�=�1J�C�r�����Z8%���F@�S�6 ơYF�)Fj�U7�[Uۇ�^F�tz�fY[�����8n_s�����^�0J���������vp�X��e���\�W��V�F5dU��j�}�]����P�Ȩ_
Ѝɂ���0F��w�M�m}j ܗ���WR�t_�wz�]x2�W�Ę\B��ZƁ��ߍ�kC}��R�L7�=S�	<y��9��x%M��.$�_�@�������cM�)8J�o�v3z��Qק`_�3
ڬ���G��y��:A^]UW���:��%��ԃg��ɈU���!5
��yh[e瀭>���V��Ӯ�؝��ț��d�����8���A��}����D@�tn#�du1DWq�g]������O�5}�F���b������8>L��>��pi�cEp��p��%���/`�8�vY]dA-H�@3�qx0�j�l�/0���ɥZ�3��8<c582؆����sʳ���z�Aj\���A��� ��\���R�P��qp�zz�_�. r�o=��oL�1���������������fkY��įU�������Ƒ���B��fCh#�����7I��$Ajl�(���R#�_3.��ð����Q�D@�3��9��+: ,ADb���{B��05�
�W��4w'	���p��zx�hU���!5z׌��U]tB}�X������8:�]h��|�iI៩v�SL�lFG�����K:Do-$�Cj�����x������֜���E0_�^��3Tʒ��$�qlP�P��l�9�O7�d����4��=c��>(�R�РoM8ǳ	"]m�؊��J�⨠k�Q�.*>�?X�05�L�һWU�iUC6������/\u2��8H��k"�����ߡ�	R��%Vӏ��1}�7L���XM+Ht{dF���_؟I�!b|X�D��R��V$OG�ν���/adZ̡!`�ɸ��!��P)�E�>5���5:��hi�ҭz�85
1������tZ�{�SJ͉~P�ơ��d��+ٛ2?��Aٞ�s��jD-}�t��Sc�h�P*�~.��b�>�C������v�Æ&k��.x��'B��R�aH�8�{d�ckq�{��\���3�[p�>3'�S��?��:����{���Ԗ�Ŷ䢌���E&��y�3����8,Xrk�K>�����6b�P�SHۃZt��u�x:�s]l�}k@O�&i�KB�DR��i5X�1jg���K�m���*�X1��t>!��?6J���j���y��Ss���� �7�����?�/��R�!c�6�>?kD��m�xk��g��	�]!F�	,-uq����y����t��u�M��Fr�Y�H�M�%�>� 5.�B���|I;��6��(�Uk;#$��2X���CG'D�c2����=���r�N��9׾ea5�L��:Aj\�\-UZ���&����*|��e�[�#�
�@�_iPʵVZ����L��٘"�V��S��}����As�pl�Uw���5t���O���>T�Aj|Ra��a�=�Us�@�{��ل)�ξ�5}�S� �p�t���嘥�x����j�`B
wH�C��ZG���]~,�Ъ�>4��Ш;��;daj|�)jN�����4��I��M��?�Ը&���5�)(د��jK��ošӳ�C6ejGs#Y]>��U�\��֕��˗�8��KҶ��#�ԔN'Y:�ZAj
֑Q�ލ��U?K�C5t�=��o�"�6�`��q���~<�� ��5 �e��@O�q�Xd6��~�U�<��k��BB0����b��,��Ǧ�/ŧ����b�����e]�v7X������f�{wRKQ��K1��S )�;�����;|7���7���Տ�n�Z(�"���	��;��߭>Z�{���-����QKj:�.�>JS({e��ۦ�Ĳ�$��o�U3���NG��Mwi����)kw�DȺ��Ը����n��V�KK��վ�I;�2[]�zt�/���N� �!5�Ma�b	�VO��҂YU�>k]]=?�]_�I�����eG�v�Ì^k<�LY1!2b�𙃛~�>-\u��]�|mH���=��\x�^9�:j��KZ�f��[/�TZ�#Z4�?▽���|�>���!|+;�O�1&ԕQ5]K�-���E
S����oj���������X�7jܕ��	M}���� 5�J@b�a���5昺�o����זv�\f/<޿�מ���GF$��k����:�����s�
�d Sl+�Wq�I�`���r����z�v#K9�.��#�� �W�f����9����j�ӾO��h��-"lN�_`�ܭ{_�(5>��ٻb�ڲ�o��ť��p� )u��]�:>�U�]/{&���M��v�J�tM_l��gG�?d	3l/������?~���+vw���g��{ؤ��h��E2t[���W�e�|c��,ϟ�4s��α0W:�]�Y�*��� 5����#L�zv��Э���eǕ����U��f�uBb��q�!xr�����s8�����|��W7Wk�)w"|�EߘEﯞԗV���x�-����U8t憻��X�#�05��◺�D�>�/Ҥ-���VC��$4��y�R��
	R���a^���!V�&��ˊ4��v�qH�]2�*�+�]�!�� H���]R�_[�*d��IVf���7CCo��d�OH��q`����p���J��ˮ�#+���vW���.U�a�Ͱj*m��qkh�(u"G֧Ɓ��K]3���n�i���}�Q���fP�4�w���86hUi��x��=eC|R��`���&���^�2~հ��Q�G��P�NMt���r�u��������c{��=�9��82h���H�?ёW�|�<�g�I�ĄW\�E�0�p%og7�?������{v�����_�]b�� [ވ�7�Z�;�h��c��6��b����},h�n��l�nv�C���v����aj&7��&?n�EQ����7��=�N��E��f<�4 CFAN�c��L���cAW��#��W��y�cs2u��,�E�߄F?�����woof�?�g?^zs�+�Cy\V���X��*�LS*͎��]�<_�	WCf��t��۷�������w�o~y����3ٗG��K�%ϴR�J�R�̽�n%�@MN���y�@S-P
�C�Cj�}�Q��y��Kf��ˇ���v����bF�������j�ہT#u�m��[%�4NF9i�<�,e?m�(���,�������{iQGR&)�A�6L��?a%n�_����?��}��c{%�~���e�wl��Ťn����C�05
�
 ���R�N��|U���6����>3��IM���'b3�`����2������<��5���y��%���Ͼ ����w`�����/?$�7�~��]���3)���]9/^/�������W�`�(�I��3LI�xu<��v_�E�o�|��������8�M�tDf��=$Y���q�`��*�ϿBӔ�/����=�*s"�ƎJȴ�{�f'��>�}�<���+	�_��|�Ͽl�fٵ+v�I1��6*%�\��1 �  �����%�MAO�,?����]1�����0��)�����P*��b�}휞�ͣ�b֒A�$%6*�v�(õ��C�C��?����b�ܲ;z zx�(ֻm_k��tl�u� ITZ&{A����==�&��>�p8��|=_n�ݟVš�G��ک\�J̤��E�a�t�����_�d�w��'/,5<G��,��<�I��R�y�t���ͻ����lƾ{w���-<�5�~:�7����/�r��uQ�{�f;E�
a՛�ٛw׿_�<c?�������4�ٻ�X�w�3�kbi��E��	iͤ���N��4�JQ��}�WOЏ�������
�&#>��G�E�<�4�atj�7�S���'����`��6���I�E��Lpy�(��A�zŻ4�ڹ4|d0~�˞t�_j���hӎ�м�zS�
G�ʦ&|΁:���W��}��q�5,˦8�y��_��U־Ͼ16|.}0r�waj�.îi���u/��nu\��I���ة;x߂��qhКf�t����p8�W~�A��
�9�n7"��Ad�B�����qQ�S*���¦���Vw\�zX·�z*�o=���;�Ab�I���DB
�X�������y�UuY�(�ꄫ���>� 5��m�=~O��kD����_o�'Ub%��6�����\I$� 4H��L+�k3����͜;m��M����3u���Qj&�h���՜�s�:��#m�P	_\�v9L�c����`��QE.뎟i�?�7J�µ�*j�ܟ.��C��v��.��P����10J`Yi��;�]5ʦ:�=w������"8ݺ����	k�:=`����RE�{�!�OU�㦆�Xv���蚿3v9,0�?�6�f��WL��>ޔ���.;3-�)�1����u���RIO����o}�?l���Qfu��]k����ԇ�
wmڇO7�9Z�����4K{H2��Y�hCkJ_���g�t�/5����t�������"L���<��e�ם(��m�D��H��UE�?��(9�� 5��Q�`��z��ͫ��"��
��Xy�+u��ͷ����R� >��wے�7*zؖ�W�>�P%��c�#�|�ể���L�ԸN�u���|g�zm���'uU�+ Rq�IBw;��,��(a�a5�@0h琊�W�>wJ�(��a뫭�����pF���ka�jJ�:�:='��f:V@Uq�_�����q�*�B�v���S���ے3:�Ҁ�0W�ڤ�6=P��w���˶�&���?�&ٹ��b�*��q���/ܵ���|����%@Z�7:^>���v�=�{ �k~��"��b�h90\��w)ɉ=��`u௠߂�/��Pd�-,��ly8�/_:g���t$_x�~N��\/_8F�/M��U���V_TO�D&�Q՝E<��[��f]p�y��$p��֙������Ԫ˼cΛ%����T.��-m�5���(�;b���]б�D8@7���
[	s_5ѯQ��CW�����U�ى���H�q�X������>��UMΟ�r}���ل n�����̟(��X��p�n!��c\���t�G�i�G�Q}?t�by�S[�?J:��:NE�d���3��N�s+̱�$]�>Йե"%OMȐ}���u��V}�Y*���ˤ�e���k��U5��6YU���f>5u������W���36����{z���NÖ��������d���n�m�Kf�������Ei��UC\�[a��\�7�cs�����ε()F���C�*$HCj����0����'h�7壏��S���6J1d�NH
�য���(�n0��e��ס�:=���s��'�9� ��-H��I�:���/Un���B��?��q	�e��ΝVU��s�u����k-B�:���`�Cf[xT�zYN�1
��8,r�_����x�ͪ�c=����w��u�v�E� �pn�<�?���@��qHp�\��ԝ�A�f1�����_C����٠����V6�ؾ:V��B�{H�#��w}�*~�1f�}�q�!��qH�ڰ�H�˃��%ϩ���?7� S��w������)���4�-�H�^�;��{�)#G���k�K�}��ZWO��\?���a� 7��@�. ����@�th՟N"xӗ� ���������o��^ґ�      A      x������ � �      C      x��]K�与\NQ�����x'��;A���AE*C Ȉ�)���<(�	���Q�>��)��;��(�"�|q<r/��+�=J��<�����`<�>���Ӵ�N�W�/�_����%n�Z<���W�G��M(q���/3tY�#����Q��m��<������{�	%���yP���+c��	%I���_1`&�R:Z���CI�E��;^^ow�J��w6L%}�p��]"��ȣ�Gr��WlG)�'��$������0���P&y(I}��MR��b>J�t�$�ѳ%��W̪�Ghv�]��?��D�n�(�ζ�R	�^�]�����ʻ�(���u"5�x�9��y(���ͼ6�b>��7ǃ9Y&��A1zT�e�l��R�8>J���2�`Ĳ�R8�Y%�(1d��;Q�%�fґ�u .JE�H�1X�����}�HA}��|�2y$%���Ӵa!!O��C�ˣ���&RQO�y(]�qRdU�%,�vDa��=���)yLX���"��0M(��/�M��m��~�s�_����\���t5�}�i[�7�x�X�	%Uv��=�ŋƂZ�@Ra�0��a�sVGhW�%(;�8O/��ӎ��%wLΠ =�f��(�0M(A�1�S�e.���E	�V���9����x�8=����eҩa�}���tQ�p+����
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
����L[(iS���x^Z�F�y��<��'K��Lqt��z�6=����dI��ԾOB�#&gL3Jڑ%e��8�s޾inX��YR����R�5�Lx�@I;��X=�s��qb�l���%Kl~���Ӹ[)��(%mɒ{���6�C�haz<%�ȒjE~ڞ�L�.a%m�v�����x��~���cI�"?m��b�Ҽy�P�v,�V�Oۨ���t�,P�n,�V�O�6�כ7OJڌ%Պ���`�F�@I��N�<m�vf��J�?%����e=3���@��)i�.�U�F$y�6���S�<]ʸiD�zj�P��)i�.��DZ�]uJ�9%���8����Eo�'��uJ��K�����,H�9%��Ry^2��{� i۔��]Ƨ���>�ٞPҮ)��.��	���	%m��>i2���־���y(iϔ�I��Xb�� K䀤S�'M��c!p��%헒>i�<�|v���䡤�R�'M��E�R� �EI���O�<��E��3�V(i����W[=�ױΧ��P�^)链�9�8.��}��<��UJ���q�z\�}��o����0��?/sq�������I�y�`�!ӻ�P��r?d���8ք�H&^���1�~���Ů��Cq�J�S�w�=m�^r�7I����3�܏+��8��HM&�@Ic��n9���<��_�l�\��/��>����P�$\v�]LL�2��m\�h�=|��9��lx��ތ7u[��=�� ��q\��4I����qk��?�/x7��      E      x���W����.|��W����*y�� �N�qB� 2���*�	������ٓ�SO�IWYY���ӯ�ej� ��!������rs�i�6c��t��:��z�\q�8�����Rwə��^��9� 4��J#�բHKN�^Kp�_'Լ 3��ˆ?Y�'��?8����?4��I����@(�J��p�?�����M]�K�����������C��Ȅ������٭�XҶ���Ҷ�.{<8a{\��)׍��1���P]d�}W9~����gn�-47�_������� �����(�	��Z\@��N����o��y�v���\�n�9s�.��jI�a1�Fr�����ܚ,���h�ꒊ^X�)�h�ah����4�סN���M� <��Ea8U�
�������_L+ռ�͝j���t�#�Y޵T�8��8�zD�GȾo�Z�Z��ח�p.�����)s|��2�]�%�SD�p�}XQ�?Y�9��@��C�T47����\�������,� \�}�]�a�Z��T����� ^�ɖO(�2Ǣ���q
G���0]'I��� g�������`1��k��'�B���	 ��Z�zI �&�|���@���A���+�û\,�l<Z�xp�4�9�'cW-g�5K�L����E��>��?�� �pe��ѵ���!��v;�p��������=���*�֙�uz�I'�&�?����c�q�5r?���h|,{Ý����~�	�/@Pp�8�!��}�E/���? ���9�\6��M2��6�n�*%��P�A}zC�)�sG름ț���b���{���5���l��:!��
���g~�g���8�s����p�v�0�����x_5z�2�D��qǰ�>���%,ir�V������~C���-w�^�x{���t�d��Cp�pG=8���"@ # '��1������,q� �ߍ��c�1�`��֏�g�@��b8�qr���6J	���t;3�����x��Xb���^��ț�ʝ�6��"�g����Y�+˟��搠�ޢ(d	I��~����TC�ݍ�Ѝ�{gb�#5�|���@�.���V�2^L̍�8�C� )��h�a �+ⷺ��(4oFs\�[jmVI�p]�A���lZny�͢�:�mDA�����Ȣ��>�vN�0=�)�N4ܮ�/��h��h����πihi��_��-���D�8w����������Jt�!#�a�����n�8;9��0��[��D[��/�晫��K�ܴ��g���D��d1oDx��D@�i�޴NV
h��ka���=�8������b�a�ɢr��^0j��:����/����.c�v�*>w�?/u�߹�3��& ��K��Z[�Sy&�m{�E�,{�7`&����z@�'��N~�ɕÅ`�$fg�y��l���h�wʞ�]6_,˰��ϕ�i�ǩupOZi�A`9֋Uy�JR�IԺ$W����y�,R�4sh`P��$���f�#c+D4Z`�a���\���K�;R�i)��ℴvH h�O��g�&?�ʃڐ�rM����8b�^��bY*.?HO��r���˱�MN�{ʘ�����dG����F�2���yh]Q<]����o�%pwk^�f^�g'�_D�O���E�*��[iZq�y�C�<�^K�E�%��p��]�q0�&��@��-A���-�t%�_� �(�"q���d���a1����6$� ݍ��Jb�� ��N��@a��P=�Ww����Ώm�h���-i���䃐��"�����������4x�Z�nF��uyxpN��'40'� �{�`�)�z��x7�-K&1��qR&l$���c��22V.6c5�a�GC�'*>ό�3���Y�#?M˃�����F��M����q��;�qs޵�r���� �-�z2?��5����7t?�T!MW|�,�u,��������;��ZC���Z�{֢,��*�$�p���x}�Gr�S��-��10GL�c�L�ՌL�<�.�ƃ��]�mB��4��rYq�G�~���$Qlj��$0Ĺ���vZ�q�W��vQe��,��h�m�q������k������|���f�qj�p��j��� ЃZ�T3j��i�8�a-w�m"�`v�n��� �u&K�]���b�2V�޽H#
�S����5�U|l=+���Lm��j^���8u^��N��n����/;��r�1ih��5h��̐yi;Q���z�E��n^�A��#�wS ����ܩ�XE�����Ef�a�����.tWL����9(l�{�i)��Q�Cc�������ʤbq�h_'���4x�{
�@;c���*~V[�ԆL�͉t�$�NF����/u#�ɻ����?�d���	��~B[�l)N�n�d�;�Me�&r_����r�����;�T|~�ȯ��� ��ؐ�r0u��L=�t=zT7�"����vi�㢿�r�bg����Ş���!���`��j�*7�"����_[I��y�0/\�����i���~���FaرcS��h�a&ck�O�+&R�t�[����S^߄�>?���L$te+>w���\>�b�Ԇ�[��C�E�w��~d�;�$�(I��E�nz32�w�B�i==+gn��9���Rt���<�Y����3�L�O�0��j��0��5w��`�jk���nX�e�ʀ�c�ǯ�m3I���XkG�ˑ�`i��K�����Qc��j�cd0��W��"��ħ_�0��	zPV�Rp{-(�(Ր�&`<����Vߋn1�7���:G/�0�Ь]��0��
G�p�SP�O���.��5�$*>uֿ�5��y�6������`�� D���Z}��|>K	c&��D�N���)����b�M�V[��b��-C�\��В8Ւ�\�-���rg��)!��NZ'O���˲�a�]�����r+��>�J���T>�' ����퍉����=y�H�+48^'����8�kZ�!������g������RA���n�ٴs��}dsV�K�)e�i�~{pf���'���O�/K��0���h���\Y����`��0A�<=�Ԇ��b����p�b���	ܮ< �MG���.<����4mc�jL�S�Ж��?Qd{<�B�g�eA�X��+>M���N�/�S�Am�D]��!���9�:��um�-��*���±��hg���1���ɮ+��b����a�Op0ʫ�@~�7��'�j��T�*��{ޏ�u�B�~��]��m�����V�~t:�|�b�2�e�E�X8\�+H����0L%CT|^���p|�gj��Tz9��K�=�w#���`�ǦK9 ��"�R���`��� �����`6�S��Daٓ+�� *>7����e?�/jC��_Bۻ^ #A�y��I�\�>�)�s��n<Y��nZ�y[�8��tj�ڵ�\2ma�����4�T|���Z��d�Ԇ&j6��������Y̻��|Ms�1U��Do"oI��`�L7�]�@�$lr�A%��d��aS�ۈ��hɟ�c�?>y�V8ZnZ���;f��Y9Z�=>�[�|lO$:�t�A���C��V\֒�!z�9��OB�U|����7N~�6b�jVRW���`�~� �?��SX�(�|��_�\��̺&��s+���l�j������e�:�s�����L��@���1���0�$�%}>�{��P��%l�mE�6���[űv�q�j�d? [��N�h
�A��}�/@g�:hGo�$��3�$�?4����� ����S-��?��\�t�U�2�-j��n3Kv���xj���d��$:���Y��'M[!x@%��b�9��N�Cjt��X9?Q��\��0�s�n�=u ����o�*Xc��I7�3��%M���K�[�ۤ��g'�(�}-��9�����E|� :1���0�$��6$�|(T�pW�1�)9���hIIV�n��"�4���
G���ud-�K���Bi_4���h��+f�\K3�?8��ts� *�    �8��C�Ɗa��M�qg�7�1/�v�wƷ�T�f��ԣ�yy��Z���R<��Ӵ��p)�ZT	�~��S!PU�����C�K�ǜ����*ţU�����v�MS���J�G*��>�g�aP�:�5譆3�#���M�=�S��zI�3%
��+��������u+�����Y�y<����97��~�Sk뇹f~��8��fB��=/yGa����՚6��R>:�S=VbܢV�nN��l�/��]s>0���ҕ/fz��i����Ш�9BDsQ���E�U�D{*�p�0\�ϻ�zI�����*qZYk4Ug=~�l$K£3(=�5 ��	�$`D��}\O�hG���q8�XO�
u?��1����,��<k�t�q--tr4�|�b���7�e:&��t�X+oě�2j�;��(�b�Y�����W<�ßV�����k���=�K_e�F�d��:kk�
[QX�;S�l'4�����aHڑ�+,VY�m�z����{��?8����7b�RkrU�<�n�w��"q�[2�9Y�&�y{N��fAi}G�Za��N�O+����h����5��McPM�A�J}FM����	�NDʄB2�>Y��L��j2ާ�@��\�@��}�J����I~�B#q���ʀAD#UK��j�����f��4p#�4I�O�ǫ�:e<���K2rE��k;ˤ�1o�i��J����b��*���������� �?4t%HД�-�&�]�WUp�vv�G�nu�V�[(�^���4W@�Фj���ƾ��N'J��K(
��O��/�!qTY�0o�i�e!�Ӝ G�^���G�#,��sy�g��Y��i{���q�Y�mc�3��	ԩĬsT=C1,[���������s��F��Z�z/C�Z�RO���=�~��w��y�ĝ�ߝ���J	�����7�߶��9�I�����eKж���P���7�_L ]���[�b;���L�}:\��+}�eJ&H;��|#�Jud�7�Ձu^v�
�����U%�G9�CU3�b��U�1���a7�5ܕ�Lr�Ez�m�����[���|o+�A��E��ر�ry0sv2ǐ+w�d@3[?o-�IO����p�:�����&e'Y�,�Ԛ,���$i8���[�v��9Ȥ"8c�-���rk>*z͝��ll`�3^����v��i2��<\��)�WjM�[12��.�֬=�����s{�w����0�]d˜g��qx�i�n��2^mJ^����3mS�0L���/� ��i������z�ȟ�����Ǻr�- �b���G��k��6�`�t�O��(JRy 3�q�9Н���3wS��l���Ag��0���ڻ&�V�z���,G��d!�ӡ9�KU�d�Wg�R��iw��%G�qI)L�~��z��/d@�� x�o�5�'�ơ���t�Fk^,؁ג��x�̧B�	][��.��c�N��*���!�*�kܫQ9�/�-�&���~Fuee���XNt��N��c�{�;o��y�.�!#f� ����h���!�F�7r�h��R��59�6�=�*4�୩�O�hw����*W�N7�0�j;��Ǔ�*p4!�Q�"�Fw��_���$@� �z1wo�5�<��0x��5��	+�������S�ck�R�&[F,Q�%���IӋ�Kw!X��{S��F���ޯ�&�Y�z�#�2׻'<������V/.{m�vC��㙔VVx�^��b"$d�`��n-���O���q�B��OV��(���ۦ�i���F|]y�a�Oɦ��=��Mg?;)��ф��B`%�N�����q�Ÿ����<��^����(��!'�ov��\l�A7U
�EN�p��W�0W�ۂ���a�?��hwT��hꤖ�L	��n�їKI���=و��F]5 P���+v�{[U�s(y�1/c��ZG~���Oo�.x��i��/E���h�s�3!����ňv�8�:�h@��}����N�&28@�N����B�T��D3����_Y�nhq?[�v��ͮ=�{®�a6��`�z�ݦT�۪����H�8���X�X��h����D�NZ	W��[Z(I#g��6oi���O�Ȼ@�����G���W��BFsoUN�XS��3���IF��itn���;8y��R�0Ds���tx�������PW�"4�w��z�)�tH� �Q���I��k��D���܆��9�[t(Mw!i�2g>b�V&���<T��PT)��G�cv���� ��3�|�WjM�.�}�ĊE�7�Q$Jj�aKي��j���Ң��P�ၧ�j$+Yo֟�ؚ����C�K���WjM��'���.#�49�����ܡ�9��uQ�s�.��-�s& S���1������%��Ʌ�h
3�;��Z��ݡ?j4G�g{I���4���J8�r9����1c�KB>J[��I��'�x�>O����죬0�����qg�5iڢ�"��	ܦ
8��:�Ǝ�q��F���̼|�Ʀ�a��L����|���<��U ��(�z8��D�2`�I��>�A?r��U�m�Չ(W�aTHԂ�J;��^Bx���9R4��w�v�:��@��=s�:�9~#�`��&z�֤�R�b࠽�16(�љÆ��lA��},;m��-��v]z"u|��\gd��`b�J��b�;c�B��P�"M^����n�	�0�Yk�Zw4������u�k���٦����b��YFw�� ���ן���X�~^��Zs���>�'%���q�8P�`{)��*;�y�(3���MD�sF}Q���z��7�N8n7_�����Ff���s(�EQhhq�e����O��>P˸�۾�_6pu��aCQy��Mz���h�w�������۫�h֗�|���#�'�$�T�2�o�5�����O��9���(�$��n��n�w��a[ϰL��2��E]��L�l���?������^��;b- ~=�zVD��i���	����"?�_W�
���H��:���7#?�m#`�Pm� ���i�����Sg�ϓh��.;Y�g{������4�l�ݍ�ƚ%k��@|Px#�0skr2���s��h��>�1=�F�S���9�?L S]fePlI�8�"2�!�NO �(�6�׾!7���Z�h����'h�/����ci�S�>c��>X��j����ٌ�J�g>�)��f�d=���?��^!^�t!���'j��.�\(��;�������q��������h�[%\���&`���`�h_�b4�P�&U�����Rt��� �ցW�_����(�Z�C��w6|�uW�������m�.L{Y2��r�Π�,{��QF"��<��vW�y���|�0!8��jM�}��ܛs�#��/é7puy}z��T,J��(h��,�O�Zl�f[�����M��7��ɾ^!^�DC� ��G�(M>�9j��Z�[m��N@�42&i\��.nk�(IaXa�g��G�����d�r7`'� �3�x34���o+:J4����J��޸����e:�!�ӧ���ҡ����Y�1�������ۢ�m�zk�4}���U�������P��m�������88��V�M	�]�DV�j�2w��d
�j�X��%6.V��31֋��q%>��!�3<�K�\��0~���C�2Ϧ�U�>�z0�?$�\%�qr����.qo�I���@CřOÿ7����؞W�vZSx2�rNIfd�.���D�khEҷ-��bb�������y'W�[h���*���N���N��|,����<*s�������6XN�z�g��<��r�	�PG�H��	<^��na�����qW��\�zBn���<��8Nm����DV��3G��Ƅĥ��3z��a�0�{F狸���+�+xT�@�B��J����!�7¾��I2Q�x�RK�[v��p��bͷg��`�R�M֝�ɰ�����*P����+���o�5����Ԗ��f98~�����?��ێ�[-}�+�T���Qo2�e�-�Ë���)    "�ZW�|���v���/����B�'j|�F�߁��d9E��>ϻ�nuLU^I.�r��,��s�z����0N+[�!?tv*�;բ,N��x�V�J,�ga}���Z�eh�Cؚ�Ƴ7��#'%2!+��f�ر䀱e���"��M��f���X��Y(�G0_��Xo�i7]��phP�Fm�wuN #�<��]��<��r�����a߾��Ӕ)W]Erv�3���R�8�&��l0����������Ų �Zi|�����k�8����п;�4ͼ�S�kE*󻃶]˩ M{����`aZ�-��Xl���0c�O��j��s䠑4�Y}�7\�c��}X!r
u��e���r!�ލ9��T6U�L-�h��/�ad\x��T*s�[lz�$��m�]겼
�����0�fw�PHq|�1$���|���.�uh�E�4���N�-�Q�y=��.V���D�ld�N}�vp��['2Ehe�F�!�ƣBZw����(-�''⋧�?4��s��	~��EIU:�D���[��9,�oݚ���{.�M��4���#k�z�Ζcy�Cw��(F���OG#4�cd�Il�:�᷇L�p�e�j� _U��h��-|�Ag��ro����d���#P8���d�+�(�eN��K�n���6��4V�>o��������P�/�(A�������R辣
(���t,t�1�`j�p�^��J�.�ǔ텲2��P�ӥ�9>���L�~���oˎ�83�G馆�/�����c�W�g����頪"{��w��9c���9^yǶf�AV���6���a��F��#,Z�<�eɻ9��
��k���-5Z8��s��3��"�P������G���A����0�׀����E����$�"��(�rؒlOt�ƺ�lN�A����}nJ����pjT�Kw�}�����*P/'�@��p����}�]j����R�rQ����$�`Of����>MRm�y�����:�1�ETن�^ȕ�g�T՛�B&���ٲ���j�Ii��<�g� �n�}',;32��g�H��œ�M��vG�t�0�`����C�j����3���B�
���U�U��V��|�b�ֽW#��~(�E��<�����y�@�^r�'���B}:�Km�]l՞����A�}��7#�<�O����5'ss #v|�ܶ���$��8Ü���gkA��U���c,ҺZ� `_��:w���} �z2��]H�=�`�5�'������^=��³�K_�r�R�(-"i���SS_8�E�t�������kQ���G�*�@�0���>�\�;�N0ɾ(���eQYÒ�L.��|+��,�?߽�L�n���(.��h�>y<a}<�P�O��be�gzt7=��8Ct���U��o-��f����g�@`��M���H�#����c�_{��=U]*��CGgg�-�=���Y-�Y���H�S|��	���]�1ؙ�ٞ8W=��BY�//����T5�D{��5࿧�5q�yyȞ��k�>���o�x���eB���x,<v�����0V��h�U��pΌ�p$E���{�Qכ�TG��̈́��� o�uHP���"Q`�B�B�V�=u����9���O���Q�A�OaC��\+&�
o�@�=�'��>�յ|�0jC�[���?���{{9v�����IK:--�<7�T����P]$�l<����Y�'�� ,{_Ai��^f���� ��9^���_��^-�_L�ź��7��h��S�����ٙ�!��F��%��������K|���ϱU��!`���r�ޡPz��!n#��W�1�T-�����֏Z��P�}
X��/ƃ�lˉ �}�ˣ�������ѳ�66쟨�Þ����P�$�j�߄H�xѰ�H e)0��?�����N	����"�<�<���v�0Ä^:^n�'Ȱm���.���t7�.��r�}Ǖ��=����k2ݻD�^�<37W��:�~!�f׮d�n��	��9�M�������6>�Zr6�)�Z�M����'����h�+��VRJs����q�&�����/�&z����c�����'ᮓ�],�9�E�v�p۟/}�mɒ�b2;�R��M�Ez��BR����6t�y�2C�#p�������ȘQ�*��	�]=QP�"����h�\΀�m2�|��Avܚ&H��>�F��O���bԋ��}���ңЃ�����>�	���kC������PF��^�SK�c�Ds�1�Zo�b�v��P��	�糩�ەt�(�iK�7�l���#
(��
hTI{��7.!���L;s�u^�:z$�]n���"��/�[mweZlmg�ٜl�l���[�ܒ��M����Kf��,��tG/.���LBf���sU$\�����?Q�c-]�Vw�ϗ�c\V����&��3'�N����D.���o���+�K
}]�zs7`����Ԛ��5��;��T���boR�{�Z�h��{�Yc�����#qK͉#7�F�
��4]������P�3�sm�L�":��Е8��_z�����,*�)�z�w�Ơ�w��Ke4g,/�=���򲴏#E��bϠ�����c��J���]zK�B��!7����ѡKcC�{L�Z-�C�"�����/�4�ȕ�b���֊v�8�[��;
DLB������V"��}
u���]#3�v�� ���e@#�����A���Y�q?�hy�ݴ@;a鮓c��ܵ�lڳ}�i��d!����B��Igy_��
|f��>w�$��(��X��6��]��[y��+��q�q"lf�D)���zD�q�/3&��c*?$����U�+J�n�~���R2\wmu"���	�<z�+��z�W���áeN&ʢ�i��2l���\v��_�|��?�C��B �o>�iWp� (/B6�.~�֡_O��y`Z��	;�)7���L���8W{�./����[��kd)�K�y7;tt�X����)F���xF��k0�,������,�-�1���@G(�Q�� �}~8�r��6��ǰ�L�^Li�\Ҧ_D�����"<sc��EP:�����-�1�3��=�qt�#}.;�T�m�{�)"\z�Nj+Ɠy2^o���4"�s+������7gC0��ߢoR�g��z��(i�SI�.#g�λ���(2�sab�e�O�`6;E���`�>f��'p��)�|<�Z^����U�#�f.�ʻ�tU=��y ��\�8���۪0�Z�D%K"8�v�T!��C�c�O�Ƞxu(�� �5v��
{C���'	�~@?��*�E ͂�/��{j}�\�R-2ݚ������Ϧ���m<�ӑ��m����1/4a�|*�0>��e�v&��4�����o��(q�R?�oPo�\៵4���gw	��͵�｠h�ŭ�V�h�?O�v��	02�#�o׊���~X��
�,?ï�_
���Om��w�u�Z˛Sw��
�x�dW^e	 ��ܾt�V�Wz�/8��jq"�Z�
����E耸�O,3lU�I6=��Ԇ����J���L�Ċa ����β /E�V�|{ �����Ͼj���|��/@������������m5�{��^��Y�]�
�({���ן}V��\g�=�X����GF�p��6�oMK�+bp�yot�j���C}�?��k8�Wm
Hpd<�����aO�>Q������y���%4�2יUg#q�<���Ιi�a�3}&��x�8�,�;�G��Ƚ}����ݪ�k�1/��5lG���ɒ�4��v��Ut��s�[��y8ؾ��;�bsX�ŢӖ�Na�QoRCn��)W��i�r����a8���	]�~��T�#6<��^(cbU�1�{��V��-N���!�Tu���|u)��i$�,8^�����
�N���w�[9p��`�>zr����:��&��8�~��>������F����mZʹ�7�n%����A���l�XHD̄��VE�b���~p���_{?~�ڈɇ�    |_���E����+�zf�R��ɱ��f�t��a/�G�s�=�}K)H	5�媐�j.ߤm��ꯒ��Ek���ǟA�\��6����S�f��6n����)折tlw0�Z)Ԩ}6zG�@X�A��9��Hh�i@���BU��r|<�V����n?Rg �]!U��x��C�Z���:<��,Y�D)梼��p��R.{%��^��'��B�<m2����7� 4��?U���,��m�i.ʰ��Aһ���:�8_���=Te��V.���K:�d2`�Xtj�*5t���v����Ѕ��s��uêa�=+:�v�L��e��Գ+���4���p��:^��
�֚sE/N�Ģ��>��%�$���`m���Mٕ!���>.���Î�̘��6��`�d�$sQ�����j�n�'�d�c��\���(;��%�A�U�R�V�:IE?}e�K�$��_��o�x(��㣒r����w"V���L ���CɿX�@d#Q��؈�֎��K'�[�j��U��X~�-^"�kN�ԡ���sx���V���I�E/e�3�=;H�Ų���;g�P��=;q	�Bjlz�p��?ueh��9�)��{�cl�9�zsd���rFͬ�2s�8�mJ@W�e!��!��3vh-#�Y�vv����~�q�a+R"�����~i��籿���N&��7�?���~RS:�6�K:��Dk����%k@�i��F��f&�A�t��a&Q��e����9�t��.�ݸ���f��JE7;���]u����Yߴ�ɂ4��9Ã��
�G��`~�o3���J��w���*�4t���.�/�~�:\�4�8�T�c�S�X����ou�s��S>=\�2�W[�7���юc5���Q��|Sޥ�Q�s�l�����
 �?�����ˉ?Q:��e���Y�rR)�;�P�e�)�=�h���M��(jdϝ�[����M3���<p��.5��	�����Պo��롓F�|����5\�S�R:K/B��eɯ�ʉ�!�[#��V��q��+���nX\���7-~���9�+��n_IC����Hm8��m랭�ft�<��`8e��|�a� FH���>Ux��Kz6f�*.���8�zV�B��>?:+E��M�T�E��ƨ{D�x˽jiyM[U��we)��:�� �(���\˟�\��\9>���JF�
)�#3�a��������w�^�� ���7��J��;{K����^lC��x)W.p첥b;��;v(Y���-���x�3�i�V�G�i5[��|��\�i �`0/��-�a����Q~���<n�bI��<����>�m5oٔ4���twCj;�I�]G�ڻ������la����U����)xY�D�b*�����Z�y�s��<��d�MB�gx��%ۻݞ��AԢR�S�S�����sꍪJ7
�:i���j�co�m^"��ڀ��O���+��!���#�Y�f3��Nt�e~�)l�_�laZC����PX�W�f���<	m�/״_Os��	�Q[.���R��c�բ[b��n�atv
$6�p"u�E�(٬�@�ѹ����(�E�Qu��e��W�4*�F�qq��Wj����.d̗�J�����3Վԥd[)h��^%٬c�3;����R(Ea/�G7�6i����\�O�+����� Ntk����G5C����P)��O��Y�����]��>��:c���
zBS�}�GmZ̊��Ґ�B��ՙdus`���'bc���,���sAA��d�u�/LG����|�K:�����"�#�!�,����H���@��;�=�!E�����Qf�Nz�PË�]�1ל��K�An]�2�e>J۶r�%�`�M�Mu���߆>�����c�oQ��*>P�o2�w'Y;nh�����P㡡�v�8��U]��E�0]�dc�|�QG>�*��|�f�9�k=��������V�^/�C��Z���KUM���W=W9I��9�z��Y����ٱ�(&�ɱ���g�=��14B~	u�FWКJ�'��üïTh��<��R.�!	�����b'�f��]�x��-��d�M�?���UZ��+�h<
ɡ��ͮ��v����1�����Wƫo�w�O����.�ز#�twy�+�z���c0֓�JZ�t5�=90�/���T'��k[���vE]���)�h�����	�`jZD~=��S�������������?��Z;w}��~kx�̶���݃��L�%5���F}Ir�;eIJ��2ccʚ�G�n0 e`hC�^����J�RP��7t�&�U��|;���3��p�sH�q�W���వǹ��N��Q��g:H<>{����v2�m̓��B�p�1�
�^./զ�����}��o�����лI�B�m�YQN+>-ŵb���)B9_l��%��y��/�Yl��B'k��E3��&1�<��j�ǽA�Jm��k�9O�������7���E�Z-����$�����Qt򺹭�-e�S�gm��7��:$�f���#_��,J�R���R����F=m7��GT�$Q��C�[��H�c��;߾F?0�?A<}�ī�}8�C���6���;VP�R�܀>��u����S�������ϱMz���a�8�% ��U�XWn�U8B�3��z;��]՗<Z<7rP�C��GD�,o^������z��D=[m�����V����A���bk��=�6�j�B!np�ߵ�0� ���x�Dm�9]S�0 B��p��G��S��^�� ������ڀ�Ֆen��n���9}�N��^��Gj�]Kw�Gw���F�lxZ��x�fԆ�sy�+�TB�N�j�����C@���v)�
�p��se�S6��w�6��k%A�{j����v��FO<�o�\���(����wl������C�lY��[��Ύ�G��o7�(b[E��"��)�lJP��p�_���ڐ��9���:RQ$I<^�GK�ۆ��'S3����������Q�xàm�:Q�	�D�����NF#>����F�t�Bԉ�gH(y��O�m��yý��ΓP넳M0����Ϧg�mKwbI���2�����P�W�_W��ؐ�y���H���fN��Vk���Q*�u����k�Dvq��L����_�ΦE�:E�$7��@sOl#��X�|/D�ڐ�}�p3��4�Y^�����R<��=͙�o��+��&V�g�^q���?���~`���/$ p�P�n*ŷ���%�Ϸj��~ڧ�\�����:�F��U8es�P5���H���\�z�Fd�gM�@!�X~ԧ���qTz�Q��M��U�zh2I�zo	
�N�z�Џ�L���gF���e�L�ތ����v����%���Kp����r8?wq±�hP8��ԕ%
���_!P�Vu���
Ҥ����o_��Gԩ$�3?��z1]�%�ڋ�.'����bt;p�xе������ �*��9����rTo�@/����ԆU�űL�ڂp�O�V4���g��N�d'KqF0,wGʙ�9f��⎽p{|8e�b���mk#>ό?o��T�ϕ*?�[�z-��s��K'#i���$(���:�\W�AR9�Iz��q����V���l@���������8�B�~����?R��Y��{���$��-�$�M�,�m3Ǻ˶6�{
�v���ҝ-/j��X�ZHwQ �gƿ�� ��{4��R�0uI�������O�w�E���R�X��=9��Ev� �sv�[t:��:���
C��&	����7� �#ؗ���ڐ�mHB�X^]R7}v7���ƞ��2 ��\t���8cSK)2�Ν�9�yI���HBU�!�/��-�!	ה�O��K���%�im�Ӣ����M��J�4�z�<�	�����t�HǛ(�O��_eA�j�Y˽��ڐ��˂~���D�)]<<x$1�3�b��Yc���5k*����U<j�f��o����@>����j�ڒ�Ժ    �[f���o'��=Ŧ'�w����8�['T+��x�J�96(��t�ny.�,ا�ݻ"�g�����
(�W���ڐ����򣵶���@�|�n����:jE>����{��ؙ��g����8k��Ļ)A|��~�� �/p���\U�9�6�iB��㞫�� ��"8r��낡/7F��Nx��'��j�6z�ڱ�.7�DY�	A~k,���TVh��Zs&�STč=�z<�S��i�QݲT���S���R�.��֞:]�c"{E����m�6D���nhPc6�頿�6p_���̓2.�ig'�o
5n'V�p�4Fa֟P1�J�������,��K_ȱ�N��~���k.���L�;O��R�r��D�����'ƓK����q�=��d��	�N������V�1	�a((��h��z�=8�?*�A}���oR���y�}���7h�G6_�Z�0Ь����gt��țeq�z����Z���K]8��<�SΒ�n<��&R����{j]
�y:���F��!+m��+?�Ls"/�u�{�e%�	;��:d,�U�O��]��Y�_ɁV�{�(��5�k�l>�;��fr���F��9IFv���I�nc������.{O����*fY�D���_�&Q�H�Nޏ�Z�m'����W��)t�U䟟��@���K��o?�G ����{j�#�7"L-��y��ڝ�ā���K.s��$To�a-c��/annG�d�	��}1��Ў�r�o�����ˊA����{Km$P�k�LR�D,Im]iZ���y�Mg3�y���荲}�v��	���Ef��
§	�Z��}s��w��NШ��6_�֫:6h�S�~=O����/t쾾h�dx����׿a�XitG���R[�~������o��	����60O�
�#������1�u;��6����U!7���~O��4��A�R`�2�o������G��K�?~�F�+&���Hմ�ſ{K��7a0���#���G��BŢ������G�_������ƢI���K�a1�y?\Mj�#�^��+���>P����v!���^�Z�����x��������?�Uy�vR��}���A�qD��z`�A� ��|>/��"᤽�#o����  ��{��GP�t��~4������C�� ��P���:V�u��@�A �a}������V|>ߓ�-6�Şy�U15'��#���LWXt��U�����/]VUM����*�
����QE5:��Q�Q&��o��r�=��;N�:y�1�w���AD�t{��[j������Za��Gm�a�����o�-��r�<s4%�ѕfF��XpEf 1�1{k��K�ޱ�[�ʁX,�@��'�pz�7+@u��pr =������-F��T����?�k%��|��U����O�,�Q�>�|�2�v�ew��6z��y*���5���`�X���q0sIMf�PpN�+
sog�[��Z~���$�����ӧJ�g)Z�G�2��bA��99B���Nh%�g�[/pF�z��c��dn�Ĭ�g�8�`�*A�1̖���w��怶m�\毈�����A�Xˮ	48���)J?NJ�z&�:p@�,R5�M}�0q0h�5m|�-n�8/�_yok�,T���������{��Y`Ǻ�#7g�TDGľ�dh�J�QԁI\�����*���|f�`<j��4�A6��e8Z����7�ۋ��>u1hB�6�k�����j�~��T!2!v������C=ʧ�o�W��p��V��rm�[�1����h�D��}�0s��]�jtˣ�+����4K���f��Pw3,�Y�n�67�<�[�%k��%C�4\-��� P(�CS�3@�"���`�sE����!� ͸�J����)��@a�I���ǻ��{8$nh����i~{&�8�\E�N^G�	����S&����诇:��D����:��bj��y��S`���P�}�^S�A��-7< �m��EW�=Q�����=��0 �~����L�����˓��V���?�P�ՏMotY_�� �o��������_�6����ƧX�1
dSb�����h�@�*yTǳ0���]%�L�f����'~��M0�ù��1�Ԉ|�:Xm����o��+�W_�2�u�-�,Gǆ'�D�RX�ؔiL�l���q*9g��h:��$�d�}gC���(�ul����kx�kfw�lA�G��%�I�!w�_O��w^�S\+,dY��- tx!f$k�)r�3��s�0�T���q���h�.	`?=Ǘ�'��{/��ڞta�ۦw�D!j_;	�`<��g��j��	H�`�%�X�޶Rm�����6��ؚ/����'�/�(B�1�z�/��(��iJ�x�t&'@S'Tf
O�8������J�O�zD��?v�D�5xp�ǗI}:ĝ�����d@s�C$|�'�uƍ��,O*ho��|93��9�3P�ɍ|�1�%Abx6�T݄�FCw8�Q��#�C�#|�>�Z��0�2�:#(v}�IWa��q����r�����,�ZO,���L�Y#�d@��F"���w���SꝎé�:�ꓑ��j>�W"�$�� ��?�3t-V~fDUꆱ���ѐɘS�`2�����v�B�s��ꄿ��!o$�Q�$蟎-5R��o}[س��Rˉ3�6��d���ˣ�����G�5Sx><G&�|��?�]�6O���!?��$�Nܨܣ��ڱ���۟ൗl����jI�#A��l�DK�^��.[��}�0H�T�4�QU�:Lv8ޟ�e|���'�_پ#>~�(���ܗH 4�i���l��$f@�����,�'Ό���"��h5���ݖ��BlP��H��V�Ɣ�o�.��'x��>�Cȵ�1kKƯ��8J�	K�����fCx�Y���Df�伳tПZ��Q]�*g�z\}!}\���:�����
u�#����5����`����-=��C���h�Q#o	9k��1�h�X����_�Ʌ��y��X�/��wjz���|�����9z��o��f���x9�p%�c!^Y�8>�;�:��R:��e���0�}81��mP�R���໷oK��?\������5����较�X��d0&hEi6��(��=gJ9�)��4<M0T���ۈ�V�/O"�݀�`�(��ɿ�>p�xG �lD��S�윶 ������)�݀�Tl�6�*��9@v����Ě�)_T�n�$	�T�rn�f3lK�'_�B�	;�_���������/�x�B��O[� �I �Pt������(�ꐱ8Y�a�a纴���H�e��!X�s�KL,�� �I }&��a�īm���$y� ���p��~-�3+ͨEv�����ɥ��k��I����50��T�NW	�;	�W��,��ϵ>��O2P7�?0t��@�l�L,USQ׺�����=rk/���<6C��N��q����D�˰&B���1��;�7�]4 �^�L}�O��R���O��nm&�t�|TMIs#?F-�N3Pm̲��հ����,��a�(ЮDi�p�_�Eݳ�t���k9�Obt��w���+M��"1�VR+�1+*��X��XmEP�d3N�Y�%�4��7��G۲`��C{�;�g	�OE����}w5���Id[I���gi�F��y�*�+�ݠ#_E������(�i ���d�z-ҞN�!��"C�ȥC�D�v��o�7���.��͗ɿ�������$��ش_���?�7L��cP�b}I}|jA��\��	������G��o�G&�!h�
��j��|�d�QNA�9	���Lͪb�k;�d���ϕ��B�|i��ipp� �h�&I_���J^���R?V��﻾�wa�G��+7[�޹f�HM�{N�VPuL1Y�����)�g5FhVV�a �T��� �jU
�7�'��g�N�h3d�����	�UuӠ��N�낯���jp'`���X������S�/"�~S/    �j�y��ĉn2��h��� �ҊC�F���>����U���JA˸��B����,YB,h�u�ѕ�:�
<�@�A)z,*h&��A1��� }�i��?.���'�ѫ%n4'˿�rZ�o#bL�`<,+�;��4���u��pb��t�%v�K��w�A���D��2@ �O�'	�o	�뽋O7��Tfi^@6;G��h��qAD�[��#�X^�D�
S���߸�.p�pN�5�O��_�O���m@�Z"�8e���=�LFXK���2#�[� ��dS��d�
kPT��[<�Ƴ?p&����^ ?�O쓷�+���e��mb~��g���^�40�}9��c������)��t��o�ܸ��,�8����w��6m-�5ѣ�7��{[K}7�!�,2������q�$��@�j�M$�=!�Gc\%g�ycImç�`�lQ&F�F&�sBh��"�������Z�}#úi?�D�">~?�~��MS��3KMҥdU�0ߝN�<�KkW��g��"��.��������֞Ġ�(��1��S#��C�s�~��ԧԈ~Έn@��=Y?� �k�v�o�nCU�S׾� �ܤ�i��߉�'yT��@�o��ԧ��K���m׉������2z���2��+����h_jh����>[��5�J�a����:����l{��f��K���|E%@�YٴSn1/�ө]�:X�?Z�EDԏW����=���L�,���D��4�aD]O�qSZd�mD�TM?c�ِ���КP���z��Y�kN�V�s"��"-��σ�Ļ��u�!�������!0�G���kx�>��ƩɵE.�3D&�DCgl��. d�	���i|���jK_$�$������&��S����]�"�� 4T;T�;h�Ka!��Z�*>0�bR����9O���`�Z?��p�ù��A�k�O���������'9�Ǭ��͚�����@�M���R�b"��[����30L�Cf�l�D��e|0QX�����jx~l��+�I"�)1��8N�е4�vRYف���:ٞ7v��x����őm�RX&�g���6X�X�K�B����E���w�@��3!}��C��rp�w�Þˀ�$:p�����8��^��]�����]��hCyf*g�nA�m�8=���2#��p�S����R+��;��v.l��|��)�VPZ�SBz�\m ^N�AY:�h3S(�=�p�հ�E��m�Jx����S�?��S�@���`m��E�����k�&NJ[�sam�B�
���T�$�ur���c_��Y{�a�pnG?͎Qj�N���)]%���&��>�=�C��ѧ3Q�6ALd�^x�"�!0��Y �i,�:���;a�l�<�gm�ܶxhqn�a}� (F���F}�~��1�z�3�h�Β�Q� ���LT4=�ao���:܏�3J͉եܠH�s�r�D�C�[�G�`�s:�k�$�aIa��7C��m�ab�X!�Re��/�=u&`"$�/��������9���^�S�A�=�)����p�����O\�໋_^\h���\�ZZ�^�`e�]�F�4Fa�0��ݜQ���U��g��@���)���ə��ɜ9)�A�./F�����N��V�F}��Q�S$~=�b��jI�c`����ɘ[���F�u< ��ٌ�Ǩ2�iyO!�o�Cm�z�!�KK˿���D��/���d����]�N�_GKG���X�#l��r������T�M8�ר-Ľ��>:kf+��K��6���l����]%h��	�}�\� �o�tP�3T.�'���e��%Y
xZc�^�,c��}�HHU�
���,�A�q��!c�gs�tL�	Z�A0Iv8���ǻ�$~Om��>��K˦6[7ΓP�4_��
d��f*F�A�JNN[�n��#�$�9|֘��y��5 |��qGO;i1���~��X
y�U��}j�>�jq�?��vP�w��v/'r1�����z0 �� �ѳ�i�'s�XXQp�𑦶=`1
�p��ʀ�t�{�Ӛ\�8�C���ic�������@m��0�l�J�Ll�,�|R�[�ep5�4q6��a�f�L�r���?	u8O��-�N��<�����;��F}����uۛks��}�M�2�;�n���Ş�[�ހ�C�oT|.�t��,��icd�V�u�\-N��� ��~V�C��>a~wײ�!è���&���=^Č�h5�#�_��`Hj�4g(vXt�r# ��`�s��[�R��k��;i^7�@���n�6�k�k�$L�z�M�J.8���Z���l������ f�3QgDX.D�8�B7E7���{��p�?^�m���'F���jY;H��k�0B���d����T.V�@Y/$���ӍU>��VU, �K;b���7�B�����?�]xC}��xII����'9�u���^m���@A��VĬ��v(���-��D��8�:]�e�z�I�E�c>{^}�O��Q�~�)�<������6xmd�����ɭi�� Bln�zQּ�-UE���r�Lc��N��%��/ιu㯋_F6�����~f�Ē�n�c;T�U��'�!��B����p����fq�A����h���|�gwDń�bZ��6t�SY�j��L��1�Iu;Ԉ	�ù���, o��=��,�I�E�e�~��ӳ�G>m�mw2I���|�0�"�L�\�-�c%.H�ڞg�HʿHGH�ù�����[�w�')��i�u�����[�m�%S�g~�f>��c�y&�| �o݊�� ��h���u���\���a��y��xM����;�,�Y7&Pe5�9��*��F�TF�5�	h� 
Lm�=z�u%mE[)��JGx��g���"۠#��\Q�$�����b��WzM}�蓠�Jk.=2��-j�i�)��R��V�3�e�� �G#@C��K�i.(.	�����r5���H�������w��$UokYi��a���ػ�����h�*D��2Rk���=��Q�ؒ�����\���f��It87�ϥ�����I�~��!��8�vk�E�)�s����J�=Nl�l�K��c�{Ie�.�)R�ʲU�ݜ��SW�՜���/����T��+�)��Zb8�m����[���0�y�kV^h���v�����Ԝ��G�:_MN~t\�;ϓ[%C�d����r��[�F}���"�����V�!����?k�v�����Ϻ#:c{�sn���-N2��F��V䴃e
':�o��% �]�7�����	��ж�m��k�"GKg���Ρ�㳽3-[��qv�L��V��S��#�)��Ƭ�/
B@�p�?�@����=�I����[o��oQ\��Ŋ�s/sr���jLH�J���m���/7�g�'�v1�;��ao'����}�1��i��>���O�ʓ�� ��3�:	��M���~.P����y���6�b,���]z(�����pw`d�s��'G�7w�=�I��'�C�~�^� ��.��iUr� !F� l�!���8��4�ɫ��2���ɩQ6m���	���R��wݨOu
��`@�ց��e��h6�W*�r��Ɵm�YJ�8[I	D��3Yc�'�7�n��CZ�˝e��*iL����=�I����a;�PC��]��D�xph�Ğ��b*��)��hr�U����B|$w�J��cg����@�Ө���B�V�F}�S��N��UW��Lsr|����mz� 1�u���s���M�����a�*w���p|���ffO�hC�o^�祐�#}���澋F@��3
w4�Y,��gSq���ye �{L���t(�����`Ϯa�61;�'n��w�������b�Ό�d��9}��'�Z��R��E�'�$�cE�ё�)��KN�bG�'d�X
 ��\0�����G��-������� aFP�,%6�e@��P�c�` ��0�Ne�<������:�b��s��C�� �    
��"��T�Z��5R�w0��nYېg�I��{
9�ը��J��*nd���T�J��}`C�:�LB�p���� ޼��S�zT��S7�r֢2>[F]�;s��gE�4����|X�����.��V��QQ/�t8w�����?�����u�e��BrS=k���3��l��/V'\{0�Ă����3	��qQ�R�Np^�7g`?�$zt8-������n �S�X�/.��Y#�S� �[�VK��r<���.���#aYKP���l�^�`>qۨ�`��b��
E�;+��q/�")�L͇��0ɀpt�T�GY�!.�k�b�#v �N�D��Bh�g� RjS-�/�`
�p�A?� �7���$A�'��n�jh6z�>:`��&�`��{ު,�0_�ڢ�֢YF�ر�>����tF�8o��vA�G�ϥy�����.�*ͬ�4�מё���h����BD	8�n~��.K�$�G(s�X`�%�f��8�������턿��=�I����T����uuN��S�������g/fL���y��"e�b��mE��HZ�zLOOrW�����˃�?`�S���c���X�t�6��o�}�!�csO0xkT�*f��Q�Û����/�U�\��H�l\���O�$V�X��zZr���Z�%�_�%��������G-<J�^O:���[��6�� 0 �2cjg�ȼ�rs�,6��`tn���q��y��x��7�E��'i.����l�kD[���*` �dp3����a��3��TZ�q0�RS���'��KrQ�sE�X�x'A�"C�-��#W�ClDB܂�)x��	q�Hm,��d�I���i�C�9���z6�����'��YsE� ��nm���cIH���v�>Iri-�z��z�����Y�.nW'�<\[{�a/�+���fb��h�b� �C�̉�2��҃F���cY(�ݪP��U����P�>����(y7o�?ԑ�ƻ�"���VA���X^JƎ�wq=fy�[[%C~#Qk�x�:�'���7�=�I�K���WNe��ma� �f������A͎5D�K*��*���	��zʊ�I@v��Nܸ���q^@�p~�,���J��'��d������h~��
�^����eXYEb��A"&K{�0�҅���/��3��EA$&�˃K���ϓ���x��rO}�d�5?�������*!|���r��D�;?�/w�H��t�o�|"lu�Sñ���]2�qp�vp��y���PC��H���'	/]�R'��xA��y<�����jSl"�Yt�2HԜә4*�)N�?7���?������C� ����8o�s�̯�'a:-d7[�j~���{�ܘ��͢�?
s<"ҚX/���y�l`%���r����UO��ZIT���Hm�D�s��l<��xp��[��_d괒c��{ʭ�wk���vt`�j��r�M�%įN�}~���l����'U�;����A��>)���|G`��~��.�:В�S����%�8���pE"��^*+�U����;p���s5LА<*�|`Ҥv��0��z�g���y�*���*��h��Ě�^���jQ�L,f��Cù,�3�8�a7�ص�L��ks����]�����iP�a��n�'!����Н�6�L��i��*�e(p���42˩���I��Ow;z �$�Ϣƙ��w8-��Ão2��OR�i#i���r�,pr���� ��w;-�G�8V�`�nJH��8����Bk
��ɬ��Dp���!�Q�4�[�_V靁@ˀFwn��|� ӵ��9/�)�� u):�Ƌ��F\<@�G#J3.uL���9��6�p�?>o^��Or�}8�p���m45�޺���������oHiC��(!G�#,���9L��b�q�������2�yPʯ�'a�;����Y��Lܥ��d���#��q:�(��A����q&(0���Rm'�5�:�j�.�i=��8�@�w[��(W�rX�ƜhI�ZT�Td�7'LM���<�<� !�r��<��F^XB�����ס�����y��p� ��-���$O�������ƨ��Gd��k�BV�in�z���m�
ԵV�T���Ȩ����I���Eۦ�K�&:�+��2�o:?z�_e�M�H��O�(%����<	��H�U��xsw�ܓ�$~BM���u 1�aNt����]�l����cY�79d��'Y��g�L�i�����"*T
�k�܌�-�C����Dn�dJZ����ދ�@"G8,�MU|���p�?y�#޶m$~kۈ�U��ϵ�Ʒ2ىǦ1c�fy�f�| $�8���#�
��3�x��1�&�9�M�e�!`���Gs����{�'��#~����B3��$�A��*�ē9>�b~�**��8RE���J"]�P�~<a�h��9�Q��zׅ�p.�n&�cI��Xb�*���h�����4�-e�m�	�����QC \�����?��N�3�HZݘ������KI"��'��7���G!����g u�$2����Ϸ�ʧ���ZT6�傎�j�c������hlzB��s�2l���pJt8?��/3��v���-���$P� �V�Yq����'Ũ�w��m�zjĴ�f,]�.��Q,J�](����hx��'?�ù���Y\R��k����XFI[��gf�`�L�+�J9V�sm0���P���R�@�FRu�u,sp�p6�ڎ#���,	�#P���$I|�����4��B�H�g8�Y��SbS`ǣJ���XfL*Q֝���nj~�ʂ6sug�����w8?�?�����k�T��{L��R ^�H^�7&�j�x�ʏ5\��UP�;H�ǵ����yZ��y	�~��H�s�����̿$>rG��Թ�q�D����'J�bɜ�V�Z@�[��hL#�@�[�8$�(��ƋAsʱ��`��~�h�e��K>�e�Ѧ�#?J�^S�ٱ>׈��..u�,�f��^q�JZ�j�09�X�'\@���xTw��D�c��7��m�эw��� �N���"o��]���Sm���+yM}���B؍�&�53�G�f����9A �>�C!��b���_��d�x#�-T}���f%:�F �x3���ܶx��~��R���I^W��B��u����
~Ɵ4G'��>��u�8:+�r�S�E~a͎��|l_��[�Mԁ_-�F��f���g��B�?.���'��'�n=!I/�8 �V SQ[�#5�NT%���U�Q��-���JQj^�6�R����v�8����^RŹ̕u��6�e�!��򵰪���<&�8�S�v�����,�Mc�0�����Ws��|���s�k�����)!O��
�S�1����C}*֏.r�ԸMi��P��y�c�ʑj�Y��ZgFFi�hCn'��)�.�E�©��Lcpvho9o�6_�����O���'���p����π<��ͽ&��1T��xNKIM���~<�b�8ȅ_���7��.��؃�W�#߽������ɹZ�[
K+$%���8U�8��4��8��p�R��3L�u���������HuC���mQ>�ߨ��������'I���%��gk�I`4�%��z���i:[N&�B�sb��l�5[�a����ý����-r��zG������Z۲��-���3�_�y��xR���2^\�)0vGJ��m�\�#JL�2��s�RƧ�O,���O1�8[5�*��U��ֱ�FIm˄�cm�8�t&�oSV�>Vs��53�ǔ^٠d1;6�[F�h��%e0���pB��F�h1�e��&T����!�>��X7Ĺ���VyI|��`�q��<r�b[�$R{�7	�9���,��{��, ��k6]W�ȡ�2M���g���7㜯l��H�ե���5r��j�k���-r`}.�15�{�O�,�A%li�Όd̑Me� ��uP�F�\���|u{�xD�+ o	  ��k��Z�~�n�a����Kx�b���1�l�H;�rA���#&�8�&��t$�k�F[�!�G����(������o����f܌�����9UpR'�I����+|��~ڸ���`�3���m���ݑ�	ң���rFvSU�W��O�#�}��o�W�^P6\�c�v��~��'�)��h ù��DӋyH�T�U�l����\�8����{���E�M�({��驮//����D�#G��k���I�3�,���:Zn�#`#��.�+Dܗ�����1��N�;��.��Ң��s�; L>+���G��OYn[?ߔE�`eQ���TbH����0F�!_&�e*9�/`�;� <5Z����7~���Q�f'?����'ο]s+4�k�Aq��9/� Nro�~�C�8A9q-��h~��H�L k�C#H�-6#�����
B��;���K��^'{�i:y�n�fגx�������i�P3���*p`�Y;v��� >�"��xyΥf�#B����7�*��]3`�@�6�	#?4QGE�]W��c�S}`=��~��DB3���U��4�( /�(�T�!b���^j�|7����Ykk����m�?B=�������:���h^R7N��Ӊ��Qo't~?�J��(p�H��#�w���p׊5�9� 
�%5#�P�{����e�`�sE}�C�2���^)����>z�jn���F�(��1�;��;0�d��^db��.�O���S�4���[Kژ���H�����	�)�����v��Gr��P��_���TC�.;Q�������s7}#���g%��t��b
I�3K�h����so�/���۹��W���� L�:��5כQ�ύ�S_` _.�O��t4�ܰ��ո����l�Z2b��<���2/D+, `�������ln, ���|bFhKM0�1�{Կf�uGۉ;@��	�Fѩ_3�w�HB����ژ .�d����d����NQ?�)|gV�Z�T����Q�4��E�s	�F���H oo#�ٚI|Z���<k��nq��=y��(D!Mϰ�4�Y�:���:VAޱ2��挜�й�i�c��r�6��A?�n'65F�S+�_�OwR����K�����B4�©���%���Bl�#��:7�(oo';���j��n�?�������+��48R��٥7��UWE�F''��ۑ9h��������x��D�����l3��0ɭ���] ��Xz��jo�I�j�)����ێ��/=�0�j,ߞ'��Z���ɐ,M���Y��.l.���8��Dǭ �(�X��l�~��C��c�'�j������'�i����YZ���`$�>��|�L�t�b�7� �
�%� f:�c�HF�`�{�!��+���{����Fy�>rM]����x�_$�1= J0_�k6��Z溜e��,:ǂt>�io�lE��Rr��p� �������	���.30��?<ؗ���yiPl��(d\��*J>�������6��a�w�aZ##߯���p	N� �N�E�Eh��/�G{���	�X�5?��+����6mӾ����ɂ��i���ݖvHT��T��=A�ѬJe[�1l&O�h�e���\�|٩��9��1���N���K��>��i�d�ծ�J|��r����-��C���SH?�܊H�+"�a����,����O_�������VZ�m0H?sg��Z*�p�p	���_R��~�Q7��q߿�-�l��d�8�b9�O�#̱��1��s:��d� K]0�b�|aUy;E�m>���ߔR�czD���%�I��hy��}I������&�7��33�-a6��
h�)���B#s|�RH�w�<*"3��Nm͛�8�_��6L;������K���A���UC�i(�@���Q��=JC ��K!ԪgF",��x�XD�<��n�/��_ �o#�:�wt�~�f�q��룎��L������H>��������L>��E�d�ގj�*?�;�l�csgv�-ޘeh�}7इ��A��`J��)x�v��P엁DX߬Z��^�Y+N�l���aw�jf�����&��@�7��� �L�d��X�ݜ����i�'��J}�5���V�_KI�TM��\�a0���̭�0Qc��	�]v�UNR�P�+CAڜ��ѩ�Rܠ}�� d�� �aGR�x�5����e�t��f�W�G�&|���v'&���Z/W��3��j�J��<̍�c9v3�����}r��-�`Fk�z��4��C���:� �pO^�̺��[�hNS�H�#�N���DQdznq$ɳ�b�����'�C�D�i�p���R(t����`k�����ؿ���^�D۰����������&	      X      x������ � �      G      x�32��22��2�ˊ���� ��)      H   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     