PGDMP  )    "                |            sso    16.3    16.3 W   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    360   @�      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ��      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   7�      V          0    42045    Boarduniversities 
   TABLE DATA           f   COPY public."Boarduniversities" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    365   ��      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ~�      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   N      K          0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   �	      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   �	      T          0    42005    Constituencies 
   TABLE DATA           p   COPY public."Constituencies" (id, name, district_id, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    363   �	      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   �      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231         �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   �      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   Z      �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   7      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   �      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   �      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245         �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   �      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   !      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   �      �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   %      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   w%      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   �%      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   &      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   b&      O          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   &      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   "2      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   :      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   (:      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   �:      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   x`      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   Ja      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �a      �          0    24738    OTPs 
   TABLE DATA           �   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt", verify_attempts_time, verify_attempts) FROM stdin;
    public          postgres    false    277   am                 0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   ^�                0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   ת                0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   ��                0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �      
          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   ��      R          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   ��                0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   ˫                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   ;�                0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   ��                0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   p�                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   D�                0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   2�                0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ��                0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   ��      Z          0    50426    Sessions 
   TABLE DATA           m   COPY public."Sessions" (id, user_id, token, expires_at, "createdAt", "updatedAt", refresh_token) FROM stdin;
    public          postgres    false    369   1�                0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   >�                0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ��                0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   n�      !          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   ��      #          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   t�      %          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   ��      '          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id, lateral_entry) FROM stdin;
    public          postgres    false    318   �      )          0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   ��      +          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   M�                0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   �      -          0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   �      /          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   �	      1          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   �	      3          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   �      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �      M          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �      5          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   (      7          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   �,      9          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   |4      ;          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   %t      =          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   �t      ?          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec, annual_income, country_code) FROM stdin;
    public          postgres    false    342   !u      A          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   {�      C          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   ��      E          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by, country_code) FROM stdin;
    public          postgres    false    348   A�      X          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   "<      G          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   ?<      H          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   i<      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
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
          public          postgres    false    305            �           0    0    Sessions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Sessions_id_seq"', 169, true);
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
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1714, true);
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
�#Z1��ԓ)�cpu�y�LDU5�SU5�Z0�G�B����N͕D���I_<ql;���2U՝��눠�:j��KW�D����Nw͕D�o;P�l	a����C?W���(����D� ���D�      �      x���Y����5|�ϯ8���7u�"
J#(�H�_ � ��"ͯ]U%`�Sk��7{D.F&3g�9sfC���5��������Y���1���~~���"��.kb�I��툦:�!���rna��?�?�b������0� �0�o��B?`
�H���8F!����[������sƄ,_�O׹/E�=S����PG��>�U$!�Yii[o��>%5�����_s��8@��'V(|�-���w�H���G۪���ѕ
Dႈ$ ��Ĳ��Ii!���AoG�dZ�8���/>fL��! ��iV�P��(���I�/���gwVlH��ak�P�N^��MRWxΫ��w�G������3g�@��/���	�?��/�5�ɟ�_��7�@�����O������&���r��!��T���2oH.&] �r:��<���Ҕ
��y
k��w@��?0�h��ߢO#A�9���[�Jg{�K�L]�Li%hy��u��e�⇛�-� oTT�F�B_�##��82i-
# ��о-�;g
|����+�;K�ΔЍi����`]̜��<o!'�z��\���?�?N�$A�&2g�\ O��mY! ��������w�ޫ�NY1�j:v�[ww���ܥ��E�/i����kW#�3�m�UۉF@kݓ����ZF�A��a��ѧ�`���^��l�񑚡��$���g�u����\��̠���2V��p{�5���?�[�!�L�o_<�q@�� �}�
� ����d��x��@���V�cJq1)*���q��C�$h;9*"N}��0�sd�/ �������������B��
}���ɗV���cW��0�zk�v]��Ō�r�Aa�EI�<i����h�ۧ<t��5?��=��6�/t�t�h�����E�ꡈ.�!�f�W�K�}�RQ�+�d)�6�*Kd{���F;aoamOG�����0t4�_(L0�}k��y���$a	Mq5��A��4��yE��
h�ԝM��bf��q�?�~}�s��9� :i��>M�|�Z���H����F��ED���c��4�FG	��  JBf���~�~��U��
" <������ϱ��o1�\�4N3��߫+B���x� ����ޑ��O.%�p�c`k�I��>���d_B���iG�}�5RTo贇�/3߻ �.��^B��Y$+�lH��V��n��z��U` t��T��9� �N�����}8�(4=��>��z7�[�㒼���6��:����Ȗ��}�#�܁��ar_�)�KF�GA�-��7�v�G[��.�����+�g�F��X��J.Q�����7�)��:DԭsY��a/1z�1~�D�h'-�2��@����=��}��3TIg6��ްqC���<�4N��D�T<��:_R�tݦ�v�Ok���TÏ��V;�O(|��ߢ=w��]<���?�o��_���g�)O�(>������ 1@lG]�A���ʸ�g��f]'Z֩��1�
 �S������'�ZB8���mߕ��n����c�fTF��8=�W�6Ŕ�*���;������5����ߺ���n`  ���~u���7�>u��Ӓ�wK���d��؊�����| �0���Uy����oq4i��U�5�N�EvR$�Ѥ�U�]F	 ����oї�(3�AN[��y�3���cȬ���pi���zYŢ�����
��U����J���f$�A��
 �w�*G
���o����k(�����RYNE��(}��P��������/ʬ<��`��S����
�R�%і���.ڵ}z#���e	���z,	khZ��G��G�w��Y�Ԙ���źɯ�L�UJ!�>�@���,�����e���� �}@m_&3p�Mt<�|>����y�'.�b[iiN,%MUM��n�T�ª��,�/��v���B?0���X��`��(�l�w�䁢x��1�ݖP���䓍�K>�D��oD�Z���X�vf݈-�׻�!�S���D�؂�aL��?H���д��j���O��<�a���=��u����偻nɟ5KI��F!�Б�[0|$�_n��=��ۋ�*�vU����U��}P+rnn��з�Y�q���l҄�����Y����ٜKE�kE��c-�h���,���P��)����tC�y�j
���2
!2��8�.@��Y5�\DEH��@���c��]�����S��|$:SG DG�/�u�0�}k���ރY^���^C�Vh܄Q��s-�E�%y��3.'�0*��7���.��:'��^��J6d�U'�>�0]��Q-kg+m~f�T�@��\��:��t.�
�b�k��W����A��y�d��jk���P�h�D  �L9�q�g�mS	1��aJE���5ryl=s�Ʊ�ZY�l8l7���Bq ��:��.s	a$�C�Z0�X�@��B��)6�.�M��xq��s�2jG�?�k:G8�s�T{0("��WKΚ��<�6�Hwq�C� ��:�)`l�V@&��Xk�?@@�)�3n���@:,9�A2�(��}~"s>��s@]���i�";���G:gC�ќc�&0����ܓ}�@O�U�0P�T��G!�&���r���^8�9��A1y®w*(/}��M��x��x��q��aFfq�v�#L��T��$����V|���wtd]����u63Wqvu|�x����T	�65��6K�N��&.2L/���l�%4?�}+�΄�q��I�39�t�^m߇~�6�񙹘g�h}�7�\(���\;��m*��-�;._������f��=������_����[���3��F��iǵ9U��������CD׵%��.7��\�T1���旅|p�=��N��}�_���Ül��?H� �ݛ�e^J?�A�o.6�ÐN��Cկ�)�=5.�Q���t�t���NFb(F�8cX�P(tڤ1�[�`r���>�<Ռ���(!(�k���1���8��]����)���x�@0wU�Ӱ����s�'�������j������v���0e�^���h�����٢�3Bi�J��Y�&��G�O2�;�pys���0@����m�.���gϹ�\_A��x)Tn')
8��L�$`��^��Dv�eX_������\��O��I��]>z_hs���oM�^:�� �䅠�`����ҳ��2�KJ�`�4	�0w�vh$��77�D���*�'����fZ��hk?�:n�$?�
�ԋC�8�J��ܑs�.�{�Um)��~$�>_�6�F�2{����?��m��n�m:V���#�@�$FZ���`���\@-� �/�Մ��	UQ-$�[.#�1���g�[�fz:;��JE�0�HQ#�H_�����g�m����@p����{JN���W �FZGo���C�F!�jd&����nֵ
&�y�gڤ7H;c�s�=1�v3�y����I8���/�9�L�hH�! ��Nwx������V�:*�&�%�'7#���X_r����;�&O�������/�à֒�ߏ'_���S����Їˢ$�F�:��#W�� %m�*�6��}�æԧ��=�P������ߙ���·U
7��
��%I�W%��$m�%6��.D��.<yU����-��җ<�ば3�g�M�;�n�Zʣ���T�6���0�Q�=�s$��1��4� -xg��%����w�;�0���PW'ج��}y��b�m�s��c4�Ah�x�֊����
Q]���?Q�P�x�^��i�WN��"!������fY{�Q����Қ�~Sp���V��|d��3��3�6�o9�]о�`齁�L�$���@	׳��\.����b�1t��H�~dd�F��axݼ}�dc�Q2�?� �<���_��.����M�h�<N�q^��ኣ�u��:�
\�Ui�Q�    jP��Z���s���!��;%�6�|C���I�g�d��X����>������@شB��v��z��T�M*�-��������3u�+'C` �̲�B����'����M��W��i�Q���(L�N���� ����(���<�8�E�Ӷ�+��oՃа��;��`q��5@T��+}�ͳ�g[4f©��,1��z���3�zd�����K6�+o�Lj}
����D��8?�gsH���V�"'�d�KDh�5 ,/���/�^P�+e�] �K�s�G���P����f�$������3]�xyi�:������g]�"-��qr������m..ߗ������ܾ�M���]�wtJ��ѧ��������ȃ咰S�W���F�if�}+ :�
t��B ������b�]t:���b84����]�=������0����h���
�\.A��c�yG�
Z���w<�k��U�D_�	/�����<(Nϵ�iw�*��V����d� ~5}��Ԡ.WB|]J����|��T�h9u�.�&7p��I!�%��e�
�\��nP$��y���1e��8t��A����x�2s�ϪY�;�:��UV�\�P	��VB�|��Y�%׻�� 	�t�*%~+��Y���b�Pv�W��z+��8�����z���Ӏ{.��9jp�QQ5����_�$�g��)���1g��؇*˿C��y%�����@bNW��;�� rk��	)�X���]�K�C��L`�aqǹ��r�;�ۢ��t�8�o�W�1(��!:��|U�T�0%;�V����3� �7z�3�]ȡ�[�+�حEh�Tt��p���%����ѩ��1�\?N�!�k!�v�ݬۥ�*�F��N�y�a��B[ k�8�,7�O���|\B�v��&����7t��'�׀���%WG�68����^����)1��� 
\m�`FK�I���1���������~���M!S���Щ71F_|�㰻��;�b	��Y.�/#��,���N	����":���H!{��x?[�t�Su
 ��7������� l�h/^N��"ٯ��C7�4��ղ#�Jn�`>8�%�9;��{�(v���ц��ЧU	���>��"c�%v�.�]���^�9�v��:)��,Eb�Ῥ�C��4�b@�)9����c�5��'�qY�W�/W�Z��&XJ���)�3�]p!�M��R�#�88��<�q�[f�q���aЩ������m���cw��z��7��'bn����օm���Dk̋�e@�̯�*�~�+΀�)u���0���O�}J����ϝ.v!n�36��.���5�S��,�7Č�h�̹[Ȍu6�?1�C�x��j ����;�1ʺL7}Um��m�c�Y�k9�%^zg&_����򲡂�Ǭb�|�2���#5����`}�����09���VG��Uݦ
�����>	�S�Y��xM��B�.������@��g�@�:a|:�eZ_Y��r��?��nD���q��D��Vy��}"	#;]b��1H%��Ŏy;� �2={�UZ䞯��eί�(R_ox�pD�u�p_�q�&7���n�о\Bp���dB�&�W�C��b?e[�j���+~φ��p�
�aM�2[�hB��n�vl�]�E��P�Pbѭt��)^1u�/v��A�Y�����c�}��3����L>������ �����& �n��9��0�mIVB�i����l�>[�T�讯��`A	� 2`�v��q&�Yu{� I���4�i��aN��H�F�3�Ml`��K�����(��[�ʦ����x�ɣ����Z6���,����0Xw]
��Z�BD5E:��ei�7ǧ��J���ea@������lA?Y?��2a ����UR3�x���cy#�Ҫ��v�7YrC��
;�C���oBz.�L<"����<<p\��s@�Z<�3�w����H��o��@ԧŚ��fP�ܖ�B��W 28ߞ�Ӿ��+Ȣ��jw��r�c��x���O�����p�e�C���k��Os`�dpnsJ�4�kM]<�3e3<d��]v����A��z�t[	�}�|{.�T_��v�t�t�1��8A]���=?�pR�,nS�P�D��2�-d8�z/m�G#0��-�hQF0w������J��	��5�#�[à�1L�W��v���t�NNLC� ��ðP�)�Dst�����CJf���A�8H�(��z:��n=�~?~MO�����3��a��w�W�|�+�ݹ��?N0U`I�����띮8*�߰�8ܬ��jW���(�� ���`}*�]X!� �v��೴�}�!�)+w�.u����h��H�;�+����^���N�U>�����d�x��n��w�]�>88Ƀ���s{�z�m_��Q��P|���~��y��*^��f���6As�I����w��?w��ͻ�1��!���E��4������#�p���W,�r�/�:��9��#�K�^_.�X(�����O����A���� ����˯஺����D��i<,.��X��V �++�����[H�,���FY��e�"���cLSX��%�EC�;�N��X5?k��s ��٥��4��X���d�&����_��21�ְ��:�4��W.:e��"��
�$dZ�"@��0��џ��^�a�2��g��;(�	:�M}l�2��g��#����/�r��ǽI]�пK����$A��Y���0V�jui�obL��n@���xo��x�h͛l�����H�ڻZZG`d�J i�P�B)[��HX8h�w�>Js�;�y��6q��wzd75	pd�o臮��AF%�.�86,��n}N��p-�������I�t ��y-ѫ�<��p֧�Qq��)�H�!�'Z�>sX�s�[il���<#Y�<s�#)�BH���H��4����2S��k6�qS��W0d��]Ű���)�%�ڸ�Ùn��Yy�,��\]���-Y܏|v}�z�S�oR=;a��Y���Z��ެ����$�����m��p���� ��R�/F�YJN�2�<��f��
�F�zS�:k��ʌ+����x��G��Wa/�Q��$���
��N[S��(E��ڞ9�no�����
���S����o*�Y����b���F< ���U���nr�jd��VDL�70��5ZmfqBQ8()��TR�@�₎�x�`����i���m��H6�_?��j�)�B���&�|���p2�E��c�G�NZ�59�����1���{(^�w��q��:	��>�s޷��X�WJ�>�&��\�UUQr��*.������Ū�l =/+�)W�J�<(�բ���?TN��`p*���	�������^�8���y%p�n�L�ܫ��ljAw�Ux<�u#m�����Wk�p�ˮ��"��f�3�_|�J��vM};h7�y�h��+��j_1�9	s�T�n�'keȲv���a���^JP��.��S_y��x��;~fl����ۇ!�O�ۜ����G�� ��p������Z�K��|l'���3�|��^1�d-k����Ln��]Lk;�^'S��o�I�����l��>xT����E�()�1h�G͚~���a,��r��#�3����Z���]|�aĔ3�[��|`����m 5�>#��Yz��0�/my�;߯��mu��)M��nQq��"0!l��in�Ӕt��NI�1�"=��~��!d�
T4�H �d2A��,���2f�������.�gM`��xѩp;	��_K�)���Փ����5����b)��W��S���U�e΄�Õp�Y	%�^_;���=پ����
��}Jf�-�"=�*��qΫ��Z��ل<�'2��{uyȰ����m�Ѐ�����&f�,rzLJ^�|y	�|�/�����~8=��r>|7]�:j�qg�k-��az��yM�}v��K���5G���#�ֆ�_۶�n� ���;��`���8    �d�[A�]�ˬ<�\�;i��eIy����VoQ�n���{3��[-�ݒ1�������|���qd+��kC=A�P�>�wW�:�h���q��<M�[�P���3ȋq�j�x�?�� >p.�C_�+�G��|�j;��}�����\��.iB�e\��Q���Otk3w�>�� DW�BN���C�O��}ɰ�ˀ�c<��f�C2(;W�8!s𨳎y��:z(����׭�B����&ӹ�.��v`�_@d��x�H�*i���N#��ul�i�����XDAKOρP�}������F��T��*�es��ڙ�V�9pݭ|?��*rbT�Sc>F_�;jp�Q u��	�+?�hhH�6�Ϧ�\<b"�B�=��(�g���r�4�/�:z��`ȁ���"=��.Ī���2���5�A)�y{�}x��q!�y0�fe�ĺx+�l��o�������T�݇�x�=іԪ`|�}�����������]���[UA_��������/��Ȝӎ�u���Fxb@5��oY�}�߽�n�`h1τ
��|R.�ھ���!�Jq�܄
�4+ᄬw'yU�5v��ԬNo!͡Y.卒gH���Cbpw~�vz�1e��+�Ez�B�%S*��˃Ź�&��`q`�� F)�t��eh����棖X��/A|2_�s��i�������Տ��Ң���S��=@xt3��VX��`�A��������Lvvt[�]a��;�1�'�+��.���E��i51K~k�~6}xb���ƜD�sc�W�2mY<�|�"CJ��6��>O�z}��zo;���t�OS�����z�!�
viS��&Qdj'�����nv[����-R����sQ��:yǝz��#����'�*Q'*x�ӓ�琶����o���1�hk�s�yUmr}�.Q����wv��.̸\���«o�!M���D��,��!%z#�y���0>���m_ޱ��tR趫����u.l��m\0,������8dyQ(w�8�tc�hb��)�ɥ̖�S����4��� *�CPhкV�%�$q�J�l�X�� N� o������ɋjv2x�DW���'Xh|�T����2p��GWqp>G�gW�~v�ve6|���Y���]�0Wt����I��g�ºT;��MM��E_�Zɯң�#��I�w�R��*�\�d����N?�����
�HH�WSS�UI��?IL�ߡ�~\ՙv��.�o���\{ocL�HCl�������O$B����|;��~��ɝ�/��Ok�� ����d0?jNIo�.S�xpt[{[/Pw&�.Hˀ%��z����̛�k������|zM��&�hj��������禯{e�%%C�x���C��/���ȶEiU��*p�e�=�q_� q3��@?�A�;�	u�Fr��'�H��{�XGgh���
;�d	@��^e
ebp��J�4�6����Lc�~Q�(rD�u�݃�i�o��S���j�����y+Lg�b��$dKn���
���[\U�a�����&��^��4EaQ�o���l ٟT�t�=�-q������`��-*����o����t�8�p�{F�Ia��.��'�7�,�����t�Cڥg'M�x��V*������Az0^߭�zh���Y�}(�u�I��&Q�J�6�U���;�KnF�y��LX��[.��[���#���Ez�h�
�1Y��J��\M#�h���y��o�I[�v鹠�k�UwN)�wz�����k ����">Xv$�Z}Í���.0ΝF�,��W�~Y`Ǫ�!	����5�=^��0��E���t[��Hg~}qd	�T|�9��)f��xf%;���%�@����in��
1v��E7]2E�H���h��H[~�P+�F��t����LЧ�C@��an0T]Q�������\624��O�%�I�i�0�@���[7����N�B��wW_����o�/��	ڵ����+h�i8ἅx�g&}����"�6y�q���AU~R��9	�DQ��:�����w�W�5�'�����!��RY]��C���uq,d�Iw�[��֥�y����`>�C���:�܋�����_�/93��U_�Ex�ի3�Gdh��'�R���"S�&��V�Y�T��2 I���G��ѷ!9��҈�@_lJЗ[�fY�e��Z�f�|\ޕ}vМp}[ā�A��Y�R+��~��^��zp�����u����)6F_��8���q
�	=�+�Gd����x��9$و >l��M,�g�1%�\�O�����t*]��#�dJE�U=[;���v���v\+�P�&Q{]�D�+��2�=�����)����$>�+����޹��Z݈�<]PyڊJP��e�M�,���=�����㨗��U��_G�� r4o_��K�8<�L�/��nB���v�ŷ@�[N�]�
:̋CvB7X��&���Fݳy䠵��:���#]�� hj
�-��� ���{I��UZ�S�m%��į�B���F T�=xgg�a%``+��Fو�?v�3�0<5������Ӧ�Ap�CU\��p<E<�8+x-�h�hś��؝����w���� �E���`]}22^�����>�%}�X�̙��m[�(B� d�]�J�a���w1�{|ip����#q���|�tĒ�)޿E_�ә1�aasy���am�]�#�re�[��� (�뮭���f�X y�T�ާ]�� Dw��h�����O���;��G.7�{�Ӟ���.�©����Z6l��ݞ��]�:��(a��>�G�����SP+쾇���q�[���a��s���O�6�"\���A����%�P�ve�~�A��}l>��.t�ؾ��H��������ofXb�r�+����f�7�����=Ȏ��B=�ۉ�~7�Ӏ�
�;�֝)i�7t�fM�/��S*B"�2z���[҂��
$�DdsAV�����T�K���(��O����҃���a
�F�w��a��j�.e+4C�7�=
ӡ�J�e�N>e)�y8V�ە"�(t{wx���p?�| w�R�,���`�QT���G�f�k������B<D�u�4�mf�u��k+,*I��%twx����`�QR�;�� $_^/�j険�J��7E�]�݅��y)5��kcn׊��pF���~�wn�aZ��6m��hi���>�ȹ�7��a/ò�����zh��5ރ������F<�F�;�׼>7{q��#��n��ѿE_�9��+�"��.oKfn�k|W�Ed�h�遈(���ҜX�s�����%N�;��d��>Pp��h�qA��Rä�t���R��أ���pPcV��_��=�lpd����(I���.���@ͭ�{Ə�ٿ���o�}]=X-�SV�q�9`WE�V�W�C�
&s�<"e�R��e*��1�<Ӓ��n���B���;��x�Y��G�,5�������
��;G��1-��R��P�h�w���k���O��w�0������ }qd���eC⡘�t�0������L�3h;:>4��\�J����ͮ��*"��>� �H��U{����A@d5A#�����,���co�c�Y�!��WQ�F�*Ţ��Y�
\/�ܠ��.G6n��ʠg����w���J	f��BT��΋A�H"sZU��l�+�=�p�����(9�IBn���|�X^��(md|}�ځj�p�c�W���
.����m�Ζz���E0��	3���Ó�T��ʹ���߼�����)Rj�����H���K7L��Mt��4ż����f�&piо�� Fs���nv�IT|X-����ψ�#���E} ���a欔OF��6���-B�"�b��,����A�3n�4�U���)ҭG��a�n}��@RI�#q��-p�`�j�sdl�����V�*��nWW\Tv�Gh��_ݺ�Q�8
C�ز���C7 �  ��h(� ��Ay�yϓYw�kabޱP��AB�1'���&p�58�n���[Ѯk��v~�8)�W�� (:�7t4ޓ�� �'i(�� K�Dц@j[���������58j6�PQ���y��Vg���#�����ɋ�ox���۾HS���;Sxd�b͌�zV��+	!V�Q��ؾř�TfCL������yb?�8�X_^����o��Y	�^m�=��l��)`lm�a��</�Yu��'�Zs��@�F̑����p�q�@�!ǧH�:��0�X��Z�:mCö/����d~D�⤗��.i��D��nÅ61)�ytEJ^Q�J���o�]�1����A|T"��E~ Rn�z�:sh���ThQls�r� 'f=lJ37p��V5��AYʀ���ݷ�[+�8�����Ğ�OZ�r85��/��r��*R�K}&�Y�Y����N0rF	���d�F�$��:�5�C��������v��X����1�w�@_��\֐�Zt:�ӐJ]���;0���W�v�XL�pV�6�t��y_L���ȿ s�/�CG���/΃���.{8"5B�G�[���+Ӆ(�h^�p
�B"�P�ް��wķA
���7��A��H�5O���]�����}'�!j	lYq�#>i�\"��o}r���E��ˉ�2��/����pDC[�pa��ޟ#�+��N�tN.��s	�t	�ю��w��	��)m����@_|���-�#�s�^�~��,��jIV�o-�թ�J՝��:5�[v�>���F��
����A��!�C_���:u�F0��L�9L1�P�b4e��������A�0P2�r��j�}�� G٨������wt4'�'�᥂�9d���� ��L3�E� �А.�sK�m����B�2�i�J/���D��P��Â=]2�E���N���F�'۾�����P�˱ѣ��x�x����q��\��Jk C�p��ȗ�T�]^S��V�r��A_����H�%RC?<xrw�-_��<��
k���`��9r(�sH �w���z°�2���=��L�
Z�{Q�3��@�=�T�ʅՑm捼
U)�G�OH���l��
i0�;d}�����.�7��@_��fW���3_���x]):��@���=���V~��&�ɈޝB~��Hwy0 G[�/��?@&�d��8r��m�����l^�x��eK3<�O�aty�󒬲.g�N��:#��IwgBx���:m&T_���D��8�A_]��lb�Y���R������p� �������3�IN��l\<ꌅ�� D!$1E�Y��7��Az�$�Yu����W;��S�ݮ�Xŭ�tN"�F���C<\��.K����(����_�epĪ� lW��}}Y�`�����[VZ������*h�6�j�{`���]�4Om�?n�:��!4 ^">8�/t�2M`/��� 
X~* 8%�L�]ʲ�%�/��n�Q	�9 ��ũ<3��,[vu$��c�H���a�:=q���@��)Z�6�;�ⰣNkV��
�oe%�CZ�-$�3�\Z�8��A%�������5� ���¨
�E�y"x�p-�!Df��46�^��$W�9�0FCW�_�\%غH�y�">u��OnX�9)��b@&�h�����S��{p��<��Ѳ4+}�0n%�����.@4[f.�,gi�,�gE�p�#oz3䕀D�;fG���/�2�5������n��&/]r�^�{-<А]��x��q�%��)�w��Oe\��'u�/t�R���@�;�]1��[�j���q�-$��B���F_5~�Zz�sڣ� ����&�W�ܞ�x�˛a���i_�����">����:�����Zc�9���-�2�&�k���n�TF�������aX����}w��� 68�=�I^�V�3�1�ei�O/��r������>���2)��-Ȭ��"]wWa��=/���� |jD{��*nr��>�
 �\"Ч��gE�F�Bfo1�9�W @�M��Z��N�35���X��d2�=��o��S�4F_3p�5|Q)�D�����Sq\L k��� [@'P�P3�&�KmYޛ\˺k��kt�<�����WL[ƟЯ�5N���K�
��C�����o�;ջb�0��R��l�@|�;�����%l^�3����-�p6�����(�Y
~@m_��5]Ui�pw`����, �1 ivLlg�Q�f����\DYcr����Ƀ �v�4�ϋ[�2��~��� }�`U���я���}��/���(|�.�˅�Rw�J�I�8"^������ҥ�`��)ҭ��>�ߡ/���b^xTx]�ʤo���*�+�~��r��R̒�q���3�i��w������0�
Ft�&�o���v�ھ���u7{7�R��`����6�n��R w���t� j?��٨ǳ�4}�:ۡڅ�|���2`p��{��@�S�7i.j�e2o�xN{��s�΂�]	ɕ�`woA�#������%����i'��Q1���k��ѡ�O�/��N7�qg��5mH=z�V@�'̻Y��+��U���<�Z���[S�H�������H���&���ӧ��(�
�<w.�¤s>��#.Bj+�a+�]�ֳ��J`�Z����]����nP��ѡ�<�� �_��Fb�s�t]q��c��8O��<�>d	[�����<Z&(�
�)����I�F������m���b Mw	������������n؇���Ō�)�F�-
'�#��+�.��io��]�[���z;�/W�u��w�k�&ץ�g��,9J�Q�B�V���j�c��_�-8��bj3�̑NA p��c�9�,�~D�^?R8u�?2&�u52ty�A_�?^ɍ`�|Ə1y�k�!�!�2�P�����*H�� +;���H�1���MH� ���+yCG�D_$�`��.�\�Fq���ʢ:9�E���������z������X��߿nNޜ��2��nt����W��Ե���M�ڜ�;Rs� 4l��\��S*���}����@Y#����� ��L��.��Mo�~�P�  ��L�n�����s�[����<���"��	m��pI�tP��K!���ޗ��Ws+kW7ݭY}V��8��~��A �����������׿��A�          i   x�}̻	�0 ��n
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
q͹�ՙW�9T�O�      Z   �  x��Vɒ�H]�W��C�L��X��
�����"����V�������Vn9��<� ��h���t�y�2�T�U�BM֓TN�3{#in��Y)�5��ɟ%��~oZ��4���ڠ^H��Y(�����V���r�-�D`iZ��%�1\FS�@mL0W2%�7*�$�)i��"��#(Dm�����Bv��M��҃d h� ƌ0ܐ���;��(�I�Itq�X�7]�N�n�-�Ń�^��%8���S�����eg*���>���2_eN���y�i����N^d,աo��K��0��7�P����4��V�[�^��еO�Ovz��E�U��`'l6��k\&\��֭��ⵢ����R��@k.R���#8&6Qc��8>�>�2�z�ޕ9�Pa6j�4M%��q+U:�[��V����p��} �+|�a%��F����'1yɟ�=���'�Mxf�����"q�"�6����z'Ye�M/r[��+�`v6
8?P	U��nN��@.[@UU�f��"��Fc��)v�񣎁��$�$��}�7Yn���{�A�"v��/A>`G�r�Ҥ�Ε�UF�x���X�������O�O�Ƒ
u�l\y�Rv ��v��<�Z4��r��U�XE/��ղ�X�xG��ş��3S�2t׻�����2�}
U�rpG煮O��@?�o}�8.��s�Ų�Z�X2�J^HetuK���X��՚�6K<�<x"CH��P!��!C������.d:�p#�AR��EfPnU�(������*³�\0���'�in(~�,���)���kpLscHG ��S�I���"I�띨���WRs�lN_Low*��'#F���#����7�$�=�/r��0Sn(;k�i�/��!�Af���/��% �#��ӵiZ�+�����+/.�O��|_�[�h;��s4��Ɛ�=��3�9�i�!Cܾ)c�Y�t����{?:��Z��<�nQɖk�W���B�}�E�&�lzG�;>��g1e��֨��k�49�Z�b��]f����p��o�|��2#O�]�I���>�櫍�a��1K�!=d`��z�����(�ۘE�ʘBov��ª\4hrΉ\�s���+��U�]'(�L����4�:�|rH*����.��]-�bұ�sm �MDSCso��6b>O�ZQ�H
�	#�����`. �M8����0�>l��5��B�H���2z�&W�,ݡM]����pBn����K�>�F~I�M������	5�
         �  x���Mo�0���Wp���Iߪ
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
���-r���s�C��[�D�wo��� zz����=w嗭�-�'�YQkҬ45le�Б�w�|j}�ꘋ��P�j�Z�NO8߶�L0��&��|�av�����-h�｜Ɏ���|����w-Ge      )   ^
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
m�N�zՒW�&�T���E�a	ݽ�N0iٸx�F�T5</6��\���֟9����M�.z���q<��L}A5���T�!��a�Rm��1J�L.���u~�h4���!i      5      x��\ˎ�]����|?��I�dc%@d��ؒ5�%M )���T�o�n�zHK��0�3>�G�Iv���a������ǿ]C��?������˿^�z�=}|X����]��`MH˗�j�^��B��qW]��+�������?IeWV�Ǘ߁\e�|��%ٗ?���������<�b.&\M�Z�t.���B��I��:(o�}$..���U0�?޿~��ᩕ�^�|1�j2��r8�D~a����
������]����B�x^р�_�V��&o�Rx��^�v�i�>+�|�י�`��Y��n���n������"���w�-I�p���[Zjs\��fƲ��\t"w��=-ɮ\���<H�_X}�N�Z;|�.��ag�~э^R��u��a��Z�ҋ(ћ%�I�Hz�
E`�@Zzha�Z��;�@F��W�L�Q����V���ܒ��*h�nVal��)F���V��N�A�ب�3;a�vf� X(�*���(��%�yzlpV���+�D���'�͕L�c���Q��K6���7�TE-���\�Q�����X�� ���_n�$���?�Mj&w�=ugc��+ʚg�^��Rf6�iv���r�4��Qr�z)3f_	hقJ��*2
z��iďpk,~�{�p{�)J{R�'c��_X˪ch������(�"��ف��_�O��-����,�fG�n�s��.(`�Yv�H���1��\/�-4�m�2��EF�����u�A;y{���c��� �ө���Q���ݔ�T�tuQ�ƺ�P�Gpc�W"PT9z��G������1`��iy:�ؑi�q&v#��W��P�G&����p��\�"S�VGD�9@{��'҂�Lٓg��]�ɂ��)	T��M������$g���ܶ]
��q
bJ���AJ�)�h�vE���qoH��D&~�g�o��Тď�n"��ŜV�u�"J���c~�@�JL���Ю��?�X�vv�P<(ն A�ʛNJE�Uc��>u�Ka#������|��>Q�|�O�r(�
��(�M���`0��ja���uj�D�f6�(�m�R�f㨀^���^=�܏�a9d�Q�ܹ,%~$i~��R�b9Om��R�Þ��1�i��[����垢�n)7���ӯ��� i,��5�����E��շX}=^��������_D��ǣ�)�EB�}��2J�{��Qͪ�O��<�g���|N��M�Y�HJ�X�4�xC"�S�	�������KU�W�0lQ�[��
i���I1�S�h�|�%~xl3���!R&+�7(uQ�?i��

��n�tQYD��~?ns`���/��ʹ͘d����LF�2$��N�����a����ӗ_�p @
�?{||4���B�H?�{aH[(r�;�-ai�o���4U��ZS��('oD�:aaƎ��ʦ���?� �����(�E�����aal�C!M)}7]D�Q,���2`c���]��Q�G.fv������Չ�=J���a&3�~mL O0��e���G�LfZ,�&Tl��3�� L*N�_�(��Gɶ��i*ow��"������v��l�!#QA]/�~��B�bx�[��Ϗ�~z�����á���Ƿ�wE[�O��@��6~j>�s	��};)Co�pf[��yАv}����/��kP������mӪ����@��|&ϖ[fmG�u�E��6�%����k#�F��.����85x���ݻGc��	����w��-����C2�"�)~�l�3A�`�W��<�
�[��`[~��������L�nS�S��U�80(�~7��Zm�Q��nO���G� j�`��2J�X��#��!q2�Z�;|�	�Thڵy�s�e�v�e���T����1 ����ϳ'^vi$o�$���ʵ|��GT��$��Լ�D�t��-��=J��Qe�V��Q����(���wf��khj� 5h
�S�������]E:�O�=�Q���q�2܀1W�W�ǆ�J�<�~e�Ԁ��#�w �{��������
�#�3��~e�� (ky�}aZz%��X3X{��8�he��c?���|�I56���{��;��sT_6��?���D�.@�������>U
v�($�S>�V���L�޷2x�3MvlB��"��/��o�JY:��e�C3�5�0\����fr#@FY �Վ�ѭ�]�<J[�0;�l�1	~��$IGUR�
&�8��=���x3;:��ү-e��q_�>�����C���/��^�\�F�����/�a#�5�7��*��z�o9�ō���>F��r���<�����Q!�\��dD�e������p��e�o��J�T��5��M~�4���p�zsWDlj�R:@g�I\-Ŕ�5�M�,� aa�0�{ȶT٩��߹¯��f�lD�lǆ:2(.})͚�zR������Y?vg7
�i��������U
w��K�12�f�7j����ᚏY6�eX���T�� d�FR�lU������q�_@��_K�������"U�����,1�B�d��M��zq�ںR�<5S�-Q����ߍ�r��XA@���a�GTV*[p�d��V�e� ,�:�;
�Yh��(@��9^����E����(@:;��),�y�G�y�� �0�&��9n����:�586-	��(��BȣG5�>%��i>��&{;z	��;�~X�l|V�䏧(�9|.�:D^`�~�H�Q�D��8������m~#�, 1)N����llr�3� .�n�U
Ύ���D�	Q /4�c���;�m\:CY ���БB�3���� )�E�mC��� x���|O�`���BFY ���HOQ(9�!���Q�)C�(P���%jP K��(��қ��9R������ۂ#�NV�e����=E}�s��-�`ɣ���x�E���Ӽ%�ñ*��=hP K�	�)�2h�*8e��qNw�(|׺w�"�`��nO���4(�%��FA��� kQ�� X�8&����˶�E"ʯ �K����*c>�2�/Q.��*�7�T��J���6R鸔�V��;��Ż��ՇU���̃o�^~���O��������ǚ��W?�|W� ��*�LB�I�����M��1wM@@����P���)}O�� s�,jK�� $�����CV�u�.�,�`��>�`���������E������?�5\�&w8CY v`��c��M4p�MW��$�#I�+�a^�$Li��)�3@`�g#5��m?RFY f0ѽ�(2���6�����6��;
-�)����b�F'j�v�ؒ�
fwA�y�`���S��gwk�y��(b�ƹö�\]��X�>-΍S���,?��E�
��:D����M4DgJc2�3��vSv�c�s�ٱ�� 8:7��������Jڢ�C؃����.��|��k��T�>�K���=���p������QGϕv#���;1��y��G�˛��qP�Œ�� ����b��Ĩ�t_,�(/�M9�����Y�� De7������cpiz���Yw�j�;t͹����F��v���%�ѣ, Z4���(�VDyZ�@�F�T*EZ�7;���2e�������]��epy��蕢>������&�(���SZT֧��A4���#�����z�Q/s�Hh�k�Z�LM�]��\jH�];����I��Ncu���i�|�"G���[�W��mU(mVFy��/&�ȷ���M���%��m#S�+;i��;��#�F��^t�A�(�;�V�(أ���.	�Q w4�$�Q�5�ݙ�2=��D�tc�T�,mp��gl��QA�CK�)PYT��3n���a�1�5nn`�Ct��`茶1�w��}�S�g�1�⯿2��Un�O�:N࣡c _Q~`����t�:�?��u���S��Wqu�t�%	����x��x��~�G��|~�����Oܑy�|�}��6��/o��2Wm�~�V�\�&�M&��j�!��� dr��a��0��7j	���@����r�i��jX� �  �n���QzG�Pw�~�OϰV�O����O�}V�����A��|������j
)��)jL��~0��P�|��*J��5�s�t�7��W
.TuR��rg(00����a���r�(�r������.A�M{YHFY ��8�����N��E/���L�0PO+��'uAYr�o��O��լ�b#NSG���vG*JO�����f5���h�(��\��ux������Gs+��z���v�e����Gs}ᄚ�z� ����Gu��t�]��������Τ��#}k�}��-�D�+rV\8���Q��V��'�����s��(	�(��D�N�9��m�!�, �>>�(ǯmݞ�, �2>��S8��C�e���G����*}]�=hQ ݚ��e�KJ�i���(�}O��Q��=�.��Q ����Qpb�Dң, �=qKg��Cc;(�, �6q°Q�z����"J,m􁯍"��Ri�{� �^�(<_�)�\%>.q|��|�~��:�Q9w��3�$���,;�[J��(��<�t��7?�V�[�tr���łO�&8��˿�(4����7��i�:�*H&��"��U���/��Ֆ;��p�eʣ���"]��
Yep�eʣU
��>w�@DY \f�|�oO��v8o�����r�k�E�I�4=$�u�ںR��=�T��Q �:��R�H��#	�Q �Z�������Z���"J�P����j��ˤp����~��}K�:�;�����O):���=����������T/w�\Dy�0���m��R�.�Zӈ[�dO��U��g �C�_�X)��-�>�#Q	f�f��v}C穀W�u�"����c�@e�v0d�8�[�`��/�!z�x��_1��k���4��P�Q}��w��Z$      7   �  x��ZK��:[���F�G?/��.������Ol˄�p��(0��U�ݖ��,�Y��hT{����G��*���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$����!��K���mV�G<74�-�x
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
=$~�&5C�9!>�j3L�.��GQF��:Q8JK��(g3�M�0J���'0�_�3!�i):�b�FBb�b�7���u¢�Tw�Q\�!#�0�B���竉�;�M�Ϩs�}�'}u������b[pW�*&T,���l��.��ZBu����X�F,�`V���!V繶�s�QZow��..����c�*����J��E�$�)�֯�Ɨ�X����2�d�^�N�����j���o��c�Aq��Ecr�F?�����awu����m�ϭ����3���.?��.�X���z����雪?X��bu�j��敓|3�5E�.X�ò�_�zG��٘�V�����^K��8E�.X��j�ꪕ��2�f�vs�7�� �Q&��顺`7�QySKѦ��3��}u�]��|s�%����ך�3P\����*�|��~uin���Wuu�V�-�*����7{����Wq���1L����1�<�����4H�e	9���n�ժ�|`�ʢ����N�d/,x,�v��^\Ug@Oꂝ�fc�-U��֧O��	�����<PT�[�En�y��Sj�J/��+�o���@c�$�����ZU�XF'�&������UZ��
J¬�j���0�8�fXr���
��bX]�&,܈}�}��8ٖ�o�?��L[�&���,T�ZU�1'�����;��9��3Of��'���+���wA0Yj*�֪�Y83~���Xl���P3�.X���_5��7����<���'u���C�6�|��m/�͠�`�
˭�� ,ȃ[���VU�Q�VS��,d�IT�g���+��v`���zf��.�� ("��8�,o`��f���뷚Q�9ؚ%���TD@�̪֦A1A��,�|���4|���Ѫ6<:d;ёϒ_�Z@������� ������(����MȈ�K�f���(�2��T@q�F���p�7��~��wirim��YYu�F���0���S&+O��K[u�f�>|�k��2���]�Z�5;w��x�aQ��e�{���`�K������q%��UB룠:�!F-9�xc�"��E!Bu1<dt�M38��&���b�}Y �H1�Ff�T���_�nmS��?��FYJJ�	�{5dչfM��['�K���߃��F})y('y��F��Te��.jX��(�sU�����YO�fĂꂝ�L�ڭ8���:`u^�|�U�I�#X���Nꂅk3
,^`fĂ���L�JG�^TW�s>�f��o�:�5��/�f�cп|f�\��E�b�VkƠ�E��bP�u�u������'{Â�b��
ǂm��8�`u�f��V.0ݡ��`�g�X��M>��Y���%0D^>�s�ə�E�t�I��@wU���_�ξ-X�g�������	����f�����`a,�@�`��S1��镬������sޡ�q	|�f2YV,���1�`��*���U���u'U`����w����d!'      ;   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      =   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      ?      x��}[s�6��3�W��9��,���J�Ďc�%%�=�v��M�i�m�"G���[ ��1�5c�R��-|Z��baAf,��X��Mq8�%;l�e������!ߧ���:/W�|�f��k�`"M��Ծ�,�W2�J���/�UNg�H-�b��ݱ#����R���WWZ_)���߃�^�?l��Uj��L��q�������?������^�}�R�J��W���2Q�h?J��������c�b���e�_�lM�bY��f��J��-�+.f�_Iu�\�L�1j���}8�E�k����r~Zm���95�ɔ�.
N�WJ'�� �>5N3nS�y������E�T�=�Pa�5֐У,�3�^	�%M�Q}TAj����*ʰT�ex��с�8}d`�d"�M��������&Ϊ��}j|`�*�2,�}jl`�9��e��ۻd��� �`����:�,��|�Z���|��b%&�eBŭ��Y'4w3.Hs�,IU_���q��x�con����o�?�a߿{��7������y��56�q>�7E������|�?o����}��7�e�>�y�/6������b�y�3#[n�����$�.��MB혂b���|�K����>���H��{���~TB(�S-���<��L��48����6�}�������;.���/���<�U�ͬp.�'�.=i��)��e�C�*wŌ�l���Tf��c�ڂ��2ǚX���55�5nT�&ɔW�!���\���ӛ�k�᷏߽������~"��3���bqz�/����s2uF	0G<"�v���୐���)���|?c��#����>_�!Z��~�^ �i
�i&�T�� �(r��c��I�_���|�!mz�޺�ͷmO�9 ��*9��1�v�u�x���!�}�� �9���|��=�]�ޱy�-Q�H��l:i�ZE�'�C��ޮ�?�/�q���}�/H[6�@������c�Ro�H��TPQ��#�O�;��Lv��68#�¦|
������%��Gқ��G�|Q-G��~�|�kl|9���](#����*x7E�KB�xڟh���)/�_������þ<,7G!M��I+�E��M�=���\,�%٢͢��/ ��m�Z���0*2n��H��S��?�����k��o߿��t=��y;����w�V��aIaY��HHϦ�̨�qS쏔8y?nw�j���\v�o��|�ۗ�y	���$��]���&�.*ۓB3)1�`	@�.�G8D��_���(�ͫ��ܛ�M9�£D���e� �E|���t(����O�>�7��v{�3g�ßs���M37i���\g���P��T�лbU��`��-X����]fy�=���F!$���//�Ix�>F6�ǐp�5�XYBuS�@�sW��SY�Y���Q�"��[h(�4e�������y�����u{(v���φ��r�X�)0_$���I�*n}`�3�3��fS̮��[����UBTM�s\(�I�_$� �6Q���~�?�+�����5o�׀�+J�MBe���\�b�~c[���<zU�Yz����	���2�AX��:��|;�fo���'ľ,����v�t,�K�����G�!��$�z�������og���!ǒ,�m�t���B�W�A[*ݤT�K��>����a�a?a����MѶHV#X�X��������E�,S�BH� �Xϼ;7�����ds�z�[��Ibd�bd&�,����u���;Ы�bQ�ι���P�{^R��P���ɢP��$E/�;�{�����p8�W^�w��?l ��K�f:��mTw�I&I�I:�#��]�+z���(Wk��ܪIK�E�\������\��������8�;�h�����w�r/�r0v�}:�,���4��u��,�9�r����&����9����7�|��p�KkH�L���q%o�������Z�~��,�y�Mn��#����}���	��mq��I����*_��Y�0�=�N$�<��*j?��!�	(D �Pu���ە��c^=q�IYh�x�� ��h�#���|w,غ�#F��`���d�}��4�/� ̼�x� >�\���-ܜ^^�rQ���b��E��s�� V���\x��緷�����>�|�����
+����𻍝���Z�)�M*��������S]��x���v�e{�o)>�=)��"���0�H`�Ա�����k����_���V�e�|�Ksܾ^�ݶ�B-"�1|Z�{��G��*����'����,�*�{f�yqa'�_Fh��m<E�]MrjLʤ3pj����)%��oXܗ����)[�m�|�,M'�gp=Ɂ5�EG9�����c9c�-q��%���K�bX� h&��㎧.��E����A���.���& �.����O��a��/�����e�N�ޢ�i[0�������w����o��3��/k��RG�\�Vzb�3I|������'�bU���'�T�ˬ��D���b�' Z�C���?֘�͑}��W��՗�yy\��4��CP��i̋�3i��9���N^Rv�s^^���|y��ޯX�w�~�)Do��uQ���)�z:i{d]n^ϋCW��5P��i1B���.����oO�eq̫-�C���+����@�Z��=mz��fXNvr䗈)�������~��Xs���W<M�Wi%��ӊ^$"Ga?��ל�Xoˮ�cR��>�Q�@��ɧq�%Epƒҥ�&JE��./_?>�/�.�h��I�^":3a$}���h���MM���6�
"��D���"��k�y�Y�@[vU�s�w�ϯׇU��a���ӵ�B�S�Hk��ϴBo������i$g���9ѯ��7���+'��'��d��r��ڿNŮ臺p3��R�	$a2�e7�%8�k�����8��v��v��IŴЗ�\��� ��|Y�'Ċ��<�q8<����pVL[�/��C�!
_��@�T�g���n����7QC�i��S`�@�h�I��P� T��[tO�w�F�˕�E��ԾD�H;�)����<��9m잾>�~���Xx����"L*���{8A>��9+����r����*�֦��]�)h��;��5��v刉a��ZY�䰘�{6P��1�r/$/�,�(?��zsĂܔE�-��H7I�騔�I����XU�m�r
b����~Y/�?#]j�4��"� e�������cN��E��V�p�M���D8>�&��_r�ɤ�T{����"tp��Z��"Q!j��J�;Ż���]>�K��5����m�,E��Pt�Q�4f�LKM��F�D�%��yI���;���-��
��RVM�_��� \e0���ɏy�?�w��W(�ǎ��d�M�Պ�=;��ZC!��R.|�¿am'��@#5CL�|��XHx(
��~�:�ed���~X��	ǟ��i��F͉�����=���3�h_z�� ��H;LS�E��Nr�8�����ﴉ����?���8����C�4-y��Q���,����'�x��H6�_!���O����Q��:�������O쇷7��?�y{����ݼޔ�u�����XOǺ �x�F�I׋DL0xpS~*�'���t,7�-�J����٫�H��r��6���goI��O��6�]yY�	��JN�T�Z�i�mQ9q�� ��[
�Ko�ȩޭ^��v��D�NJ1m'�%�1u�(N��#�,Z�C�X�ʽm����?���"��O��˲�zV��.+�NC���
L�*5����pZ^�4�{�t���I��K1K��ӊRq�Xx})�P��j�f5��J�t	B� �!5H3k���t�X�V��iW�$v�[Ɍ�t9�#�$�<��G�!K��������ײ5{�:�����_	1��*�W�HL���ƨ�e���g�P�O������C��	{,)�b9u����V �狸R)�"���8D��A=�c���_毟��32�RP�"���VW�%�g�Ǩqd�$�;�9�u��<�÷�@��`b ��p體Ӊh    ?��D����Ղ�Z�ݟb���$3}�(�6��1i��$��������bTw�(������s�����sY��j:�o��;H�3�"�l������;�ڕ_��'��C2��M8�R����n�?�]��!6�^g)�4�Z�1W�A�M�����,���mʇ��̤����gF��H�.B��V��pZ�Z\]�,����\q��K23�*D���&s$Z���z�'�cR����B�}���
�21"��!5�T��gy8���}mU���n�=n��Mr�G�B� #QP��O2�F���4���(]��Kr[eʫwZvŦ��S������s:ঝ%=ڝz��6�P۶w ?˻3*�S9<�\3�"�K|�HRŦ�.>���Ix|?@����6Gv�:���~L�B����~��"�c�#ÿ&���J\/V�
�g����>�x�[�߁�L́�Mco���[�k�7�����q�ۻp<�d��zѤ:�M0#��2��׳c��q�3���o�E͟���2��U��b%�'�ҧ1jt4�o�bK]eZ�N�+��m�ePںP�3��JN,����T����s���px���2��l��e�Y��̃�G�oT�a��)2rҰҴI��$�F�g�a*���薫����z ��g}�i����L��J��t]��j
bR���ޞ�i����4��~9���͓�f�U`��2���?b�LM�1S�?��̮b�8���(�8?�cz�cm����-*A�U��n�D��y�c���]N	9ʀ=��PӜ�}!W!s#�2����
���a"�0�k���lL�uY�AV}����VOp�2�)L��05"��1�O�h�5�ە�Cr��ޯ��M�>�o�Tób���I�Z�����*�R��R�����M~Oy�Z���S��1է~V|���k�G�z���R����WP(�S���M�z��7�0�Y��+&K��T}��Tߴ&�E�%�h����
��ȾA�Bd�yO�s(��������;`�)ŕ�9{H3{���=������wy�n�zl�$}h:�R1ׇ
_&�jL���pA;g��+|�:��U�m���dO8�U�܂t���ԘK�h�{*���+�n�a��ϲtpjG̉���D����5��P#���������iY!���1�K�̊Ab��ݍ�l}��A�" >D�'",%UmE���m�&��$��E��Jk�ϲ�M����>s�fa{ܧ�DC!�QA��QH�Ζ�FS���*�
���5Y(�8��ur?��3x��Ǟ�]ՍQǾ�F2��HI��\v��N&.�waj�W)P9��<.�vh��o��V�/�o'L���M��.`��^��5��3:�r�v��_�[�?�<Ng�B瑓����d顶�-#�8,đ�����j�������L�)Ng��ﺨh)I��~�$Ʊ)`���*��v����1�����J�i١��&C�u���;ǨQ�mAL��c���k_ޮ9�)ⱽ���g�L�yOe�QX�C~��w��g�E�5'>)�����(*�L\��T!�����h���{Y��\a��<�[
�S|Zxj���PC��B�;~�q�_���@�9�/;�O��A�`�Z���C*_MR��+�<}����L�z�݄M��t=��X���&i���=���/��YG�Qy��f�i[��;?����Ť�&ke)	�Y�=f�Q�?�o��=�GLj������n!ư�,_�3��y橏��hu��詼r;�s��ʘ��9^B^f���D������3�G�!U�se�3@�i�y�dg�x�N���ҕ�O\4c�!��Ñ�"ȼ>�����8s�ݖO��n*��3������e�`�:H��7-�S������nyw�l泭��"���-i�� H��R,�>���Z<����Nk��'�F#�*��Z�ђ<���S#��7-W����=�<ؗ�2P>K� 2���|�1����Ξ�.����[~`��n�m�U����4D�#{ʻb�o hRu�S^[�Y�|"��:�vZ���NV�>�Ձ��<Qn`cE�/���·VƲ:��!�l�7XpW֝�����X�h[�І@jd`������oj����\5�_�Cg+�j?ҍ�א��L:��Մ�QT�����1Bs�j�_{h�"�6Į!5�V�2�=�ڗ}�g>p>���h��{;��E�c�]�05��N�Qr�CbB�*�Z�R���~(���)ά�l��حN��M�W?"Ӌ{��%4�	q�@�=V5�Wԧ@˔�j��φ"��׻��1�;����m�|�����Ȣ�)i��B&�q��u����rY�j��̩�u �d(�fR�ԣF��T�nU��c����-��$�of­��!5�3,[:}���H��z<f�`X�	����1j$�|�FY�T
m��NW�������-�k%�Q��:SlZ�1�h��Ic�SۧF�!T�X�W�l �_|~���b�α�5j�,�6%�z���#��wzA���Д!;���M�ד])Y9��m�唉�D�(����2�R���/ǎ��Ms�.	go�]�M��p�c`�Z�Q@�ߏ�������ߓ�FQ�wZ�Pu�H�+,�3o�{~�5�Ҫ� ����HSC-$b3(ioZ�硝�!5�	����q��9��~^=q�:~\��f���+�g���_����ƨQhp0u�֑������-�$�5\Cj��Iø�N#5CE�=\_Aj_:�� �����T��D�Cf�P�W (���6gzX���]�N��u�eʇ�f�6��e��5_3�����F��n�`��k~�w�_{	�:�n�#��6W�,jF����0��&Nt0Ci�9d���_�o��-�����y(U2��N��ǿ�!*��%��uF?�f��*�����T0���`���=<�O7~� �5����}�%�
�b�_���uBŤ��Y1�}�}���s��e�{���A3��T�u:�#�^���~C���y�*��HE���������$��^VG);רU�d��*�]d�'�3���O��;�p��z۫}w���h�z��ú�:,�c���O���VY_�X>�sp�Sk"���P���I��_Ӵ��髈05��
D���q�7�9�C?'��7>�Ь_����84�+�	�;jt|�u΋"��U")��ץ�*�R��`�����n)\�@�>�m�58m��D���Qh� !&)Th�{�z�N)�ڭ>���2�}��ƑA[Y�Ff�m���;��s�;]��=���`Ia�Gx�ŗ&B�����]�+����e�����(�;3���V�������t�NOǧ�ˣ1U�-P�:�TX��X��B���ݖ�C~�]��QS'5�뼝H���S���Z:	�����|�[��C�����š�Pc:�:������ 5�V�!���:��^�\q�xF��zX���}�&L���Ep��3��Z���CG�)�U�C7VTg�|�?/ w���qXз��O�l������L�a�U��B~S����&�뾎R��t	���~�����7��A�P��N^(r�{q�(5�:�e���5F����c�7��;C�x�ƱA�b���7��}`���`��#�G� �1�6����멖�5�nWZ�Ԅ����>V�F�4��AA�f��"�p<-
 �P���̄L�F��R�J� �>5�j6��S��\�ئ\��6E����Nb[�X���P���Si��X.��%dTy�!;�оJG �iq8��5�}~:�yy|��)(�3RiW��i�S�}�!&�qT>6]O"���6�RJ�k��Waj��ߒݜ�b|��^q"̢�a+D㚦��&F�>� 5�
.c�����8&��e�]b�G�~%�Ϡ�<���Ѧ���;����Fχ'���u�,����qpT���I���&�T�(���UDէ�QQ%I�>��>Ӵ1����a3�5x�T5tV���hz%&��80'|כ�rV%�d��u��3��Kɺ�=��yw/'�Ƒe@f��    �!�ڒ��o����ڗ�����۽|k�E��a���f��[̬uT�<�,�٥%����l�R�Р0��T�y�a�E>??��O���i�Ƹ�}���'�u�.�Qj�\�04�6:���t\$�gAh}j|�����K��Kh>{k��"ڃ����3(���]{���J�����}�U�_xj��봁��e���շ�T�5�s�o��YӜ�78��zf����ML��)�V��bx�\Z�Ͷ����>�<=�Sm���V�\<����&�_�����!��n���rW%��oڭ���1)�<|�mT[�m���!�Qj�+l�����)�8�6��� �1�2�M1Rk��ު�>ܸ�2����6���z�88G�&����p�������U���Qj̜lM5��ź�(����zԸ�Ĵr5"�!�<WTk@�����w�EF�R�nLd@F\��1��n�l�S�� �|�/��j���R������&��Z��2T���n�^B���jf�a��O�����^ι��+ij@T�p9�����ݔ�mkzM�Q�����k>�*�Q�f=_�=�(5�c�x=�	�ꪺ����O-)�F�<+XOF�JD���Qp��C�*;l��O�h�j�Иv-���]@���$�}M���PDjl��<�� �p�s1'��	 ���>��8<�_5�$mxj���4���Kd�ק��aj������ �P�K +B���w���8<(50'xk������"jA��1H�Ã)V�f3-x����L.ժ�n�����������6<=�'G�S��G$O��R�z�[:�\���`�2��J/H����Ӄ�
gp��#}x��|cr��ش 5��&�Ƿo��6[[�B`�'~�r}?8����05��L27B�Xί�AH27�'	R��`+�@�-������q�Ũ��/�05�
&j؟qg��i�^�`	: C�}���ȇ�qTмڍ��;IU}�;���_@�����qpлf<�B��;����}����A�B{<�NK
�L���bg3:�l�|^�!rxk!�R��,�7�����������/,���j��̝�R�T$!H�c�ʅ��g��q|�	'˴_�Q��%<�A	\��}k�9�M��j��V�~TZ�G]�<�JtQ�i�����z��qdj����
L��A<���iઋ���Ajt�^�g����M��/��~�M��{�aj|��jZA��#3B�l����L�����$:>��ܰ"y:rw�e���x	#����`���N��PވY?�JI,��P��qd0�.�с,@K����n՛ǩQh���V� 4=��#Ъ��RjN��05�&��]�ޔ�����\�{��U#j���TF�CE{�RI�s��+��8J���}T�64Yݚ��Ĵ[��FQ)�0${��=��ﱵ8�=vΏj.�Qߙ�-�z����׿�)L�ϟdt�O�冽��mj��b[rQF�K�"u��\VCj�,9�5�%��EK�u1D��)��A-���:<���.�߾���U���%�T"�����5��3j��%�6�nu����:�������`����������_w�a��T�vq�ė݋�F�qՐ1J}��5"���6s�5�ٳ���􏮌�����8�����Q�z:�պզ^`#���N$��^��Y`�J�Tt�e�����n��~�Ъ��I_�}Oء�"�1`�g����x�p�~k߲0�M&F\� 5.P��*�O�e������h�u���-�ؑJ�E�G��4(
�Z+�Yh�u&B�lL�U+����D��S���9t8���;{ڍ�:�V�'m�~f	�� 5>�0Mְ�Ъ9}�׽}�lRg�Ě�h��qPM8��KK�r��?v<�	�|�5Q0!�;�ơAB�����.?�gh�c��yhԝ���05��5'by^}VX�f�
ҤUt]���^���Qj\��g���?���i��L׷���Y�!�2�����.I�*�A
.H�s��H��K�Ij�%i�Z鑌x�jJ��,h� 5�Ȩs�������%�ա:�A�HU�t�҃�8BKg?�A�Gv��2Rb�'��8D,2��T��~U�5E�q!!R��`1go���cSX����SU]�A1�	�l�f첮}�,��o�Yݿ
3��;���Hĥ���)���R�|{Y���\՛�����K7O-u���׎����y��V��=��������%5�tg�)�����mSBbY`��7ݪ�{�F��@Ʀ��4|GOڔ�;J"d�
�Qj܀�cwT|��t�ܥ����j_餝o�-�.q=��{�D�Y ېŦ�^�|���Y}i���}������/ˤNG����#P;�aF�5�V�����f���M�Y��:��.[���$�TtK�w���JxK.<u�D�x��%�z�KŭX*-�����q����O�`�}����ȃ���ʨ��%Ֆ�L��"����O��75�W~\���S[b��5�Jp��]f�Z�w% 1ܰO��sL]�7�egc�kK�y.��_�k��w�##�L�5~UNX�T��?��o2�)��ū�Ŋ��j�Ax�e����r=h����[�R��fz�ܫw3��C��C��op���i�'Go�my�6'�/0j�ֽ�r��e���]�Zm�߷����|^�N��:xĎ.[��=~[�&\��z%p:��/��ϳ������u����N��������S��3p��=lR�4j�":�-C�|H�+rȲS�1sk��Oy����Q�X�+���.Ќ�u��s�_p��P=
;�a�V�u���JV�d�*��3�:!1�҃�8�<9�~�`ԏ9�����y�?������¿�;�Ƣo̢�WO�K+RD
\<ϖ�}y�*�:s�]qr���A�G�� �K�b�J�iҖ�R]��M�J�ԼH��@��q\��0/]N��F�?M�eEu`���8$�.�Y╎���C�F�q�.)د-`��v�$+3�Fʊ���7ik2�'���80Nw�v8� kw%hp�eW����`;��G��a�*�0�fX5�6t�54y�:�#�S��`ӥ���F���[MT��ӨD�[3�Q�Caj��4al<��?�MӞ��!��ql�Eҍ`A΍\�t�j�g�(H����G�H�&:~�b���u����E籽���Cj�?���|$���ȫ?]�U��3�?rb�+�O��S�U������������=������/�?��rS�-o��tA��]4��1�
S�	�c���v�>�c7cp6�C7;A��D�b�����05���Iv�7��(v�Ԃ��䁞y�z�"JM3��!� ��1�|��O屠�y[���ū�����9�:�y�"�o���iv�����7��߳�?����xɡ<���[R,N~b�)�f�\�.�~�/L����!3�~�����O��������7���p}s���ˣ��%��gZ�p%��)f��v�N�&'���Y��(�֡��!5�>�(j����%3����r�q����|1�t�c���z5��@����㍶���-��n'���4�L����_��N~\��WzZ�׽���)��� q�������ɯ�����~y�>����_?������;6r�bR7b`P��u�j�j�	H����C�*}vy����`��t	�$�&ja�ד1��B����o��tw�mq\�������ż�ݒ�q\���M�NK�;�PX����ٛ�?��̮o~������~��.��W�`�(�I��3LI�xu<��v_�E�o�|��������8�M�tDf��=$Y���q�`��*�ϿBӔ�/����=�*s"�ƎJȴ�{�f'��>�}�<���+	�_��|�Ͽl�fٵ+v�I1��6*%�\��1�����%�MAO�,?����]1�����0��)�����P*��b�}휞�ͣ�b֒A�$%6*�v�(õ��C�C��?����b�ܲ; ;  z zx�(ֻm_k��tl�u� ITZ&{A����==�&��>�p8��|=_n�ݟVš�G��ک\�J̤��E�a�t�����_�d�w��'/,5<G��,��<�I��R�y�t���ͻ����lƾ{w���-<�5�~:�7����/�r��uQ�{�f;E�
a՛�ٛw׿_�<c?�������4�ٻ�X�w�3�kbi��E��	iͤ���N��4�JQ��}�WOЏ�������
�&#>��G�E�<�4�atj�7�S���'����`��6���I�E��Lpy�(��A�zŻ4�ڹ4|d0~�˞t�_j���hӎ�м�zS�
G�ʦ&|΁:���W��}��q�5,˦8�y��_��U־Ͼ16|.}0r�waj�.îi���u/��nu\��I���ة;x߂��qhКf�t����p8�W~�A��
�9�n7"��Ad�B�����qQ�S*���¦���Vw\�zX·�z*�o=���;�Ab�I���DB
�X�������y�UuY�(�ꄫ���>� 5��m�=~O��kD����_o�'Ub%��6�����\I$� 4H��L+�k3����͜;m��M����3u���Qj&�h���՜�s�:��#m�P	_\�v9L�c����`��QE.뎟i�?�7J�µ�*j�ܟ.��C��v��.��P����10J`Yi��;�]5ʦ:�=w������"8ݺ����	k�:=`����RE�{�!�OU�㦆�Xv���蚿3v9,0�?�6�f��WL��>ޔ���.;3-�)�1����u���RIO����o}�?l���Qfu��]k����ԇ�
wmڇO7�9Z�����4K{H2��Y�hCkJ_���g�t�/5����t�������"L���<��e�ם(��m�D��H��UE�?��(9�� 5��Q�`��z��ͫ��"��
��Xy�+u��ͷ����R� >��wے�7*zؖ�W�>�P%��c�#�|�ể���L�ԸN�u���|g�zm���'uU�+ Rq�IBw;��,��(a�a5�@0h琊�W�>wJ�(��a뫭�����pF���ka�jJ�:�:='��f:V@Uq�_�����q�*�B�v���S���ے3:�Ҁ�0W�ڤ�6=P��w���˶�&���?�&ٹ��b�*��q���/ܵ���|����%@Z�7:^>���v�=�{ �k~��"��b�h90\��w)ɉ=��`u௠߂�/��Pd�-,��ly8�/_:g���t$_x�~N��\/_8F�/M��U���V_TO�D&�Q՝E<��[��f]p�y��$p��֙������Ԫ˼cΛ%����T.��-m�5���(�;b���]б�D8@7���
[	s_5ѯQ��CW�����U�ى���H�q�X������>��UMΟ�r}���ل n�����̟(��X��p�n!��c\���t�G�i�G�Q}?t�by�S[�?J:��:NE�d���3��N�s+̱�$]�>Йե"%OMȐ}���u��V}�Y*���ˤ�e���k��U5��6YU���f>5u������W���36����{z���NÖ��������d���n�m�Kf�������Ei��UC\�[a��\�7�cs�����ε()F���C�*$HCj����0����'h�7壏��S���6J1d�NH
�য���(�n0��e��ס�:=���s��'�9� ��-H��I�:���/Un���B��?��q	�e��ΝVU��s�u����k-B�:���`�Cf[xT�zYN�1
��8,r�_����x�ͪ�c=����w��u�v�E� �pn�<�?���@��qHp�\��ԝ�A�f1�����_C����٠����V6�ؾ:V��B�{H�#��w}�*~�1f�}�q�!��qH�ڰ�H�˃��%ϩ���?7� S��w������)���4�-�H�^�;��{�)#G���k�K�}��ZWO��\?���a� 7��@�. ����@�th՟N"xӗ� ���������o���0J�      A      x������ � �      C      x��]K�与\NQ������x'��;A���AE*S Ȉ�)���<(�	���Q�>��)��;��(�"?E�����y�G������<�����?�y���)������%ވ(q{���g��\�.�!�P������e	\���sGI£�1����ѳ�dJ�?�4����1�τ��GӀʯ0�ϔ���%�P��h�'����]"����SI��ֲKdPy��H.Q~�v�R|�;JR�1�L�)�|�2��CI�'o��S��|�0��CIڣgK�ï�U)R���l�(It����Q��m���g��Y�3�'�ʻ�(���u"5�x�9��y(���ͼ6�b>��7ǃ9Y&��A1zT�e�l��R�8>J���2�`Ĳ�R8�Y%�(1d��;Q�%�fґ�u .JE�H�1X������ᑂ�.�K�He�HJ9f;��i�B8B����Ge;��M���"��P*���Ȫ�KXN����{(S�0Y]EJ�a�P*�_r����V��:��t�S�/G(rp�fL.J�5�p�%�mQߜ��bq�&�T١����/jAtI��4"���Y�]%����<M<�<�O;jr�f�T�19�������4�uǘLE��4+'%D[1�C~�	�U��Հ�#���<�m�(ӐN��s�`����[�LLm8UxzF�1��C	W����O��WS�_uz:%8���G|{��f�\���b��GkcX�<\F1>w�Rӕ&����rd��CI�-SJC����arQj�@Jf���u�B/�bV���.Nf*Q3B���>��C�A �.��qq�b�Qy(5���.UaQ�~og�E���庢�����=��R��徠B����ժ�E	!jd�v�����'*%����rc��C��8TJS��k4:"6����i�"�ȳ�Nc��܎0��E�� #��	0��0X��q"�PB̋g�o�-���Ѣ�4��A/�Sd��tQ�`��a�?ݳ�qy�F�,iA�Ulo���b�T}̅I5(i0�xT؍�ȸ�AY�Fe��V��dbq�&T*�vK�l�Ej�g2(�0I�-��7,���2y(�0G%�L	�i8�Ĉ�4@�%�L:S�@��#4��{��\�M�䡤�f,b�ΨDCA��f�<�4،��G��T�a����֯�6��I�����'%�5���k��z@rڃ]-.Jk�b�y�f~2�����4֌���r�(,��AI�͈|�<�HP~Kkzy.Jm�j���)����`����MLuLj���Ciĭ&�=m��H	]"����VgDQ;��KdP�p3�I���`��`�%7c�-~5��4��&9�*�콺	4�&��$9j���`��[2Lg5ycKc��\�Fܲe���(Sie��	o�g�l�(ð}:$ެ���-��h2�$�n>3�Q<����#��ƴB��������e8�5&����!yL��Ք�W(����=�������@`�<TPy�{R�E�	T޳}���g��Iӄ�H�:��w������dP0A�],S{9�T�V.
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
�d�ο�6.Z4�>H�D�����&      E      x���Y��ʶ6|=�_q.�݉���u�P�Wl@�8oЃ�(�¯3qڀNk�����*j׈=xF6�ˑ#��g_�ej �����Ǿ�Ħ�j�6g�C�r	tL9l�2<���p�5�W֮�wW�y^�_< A���$�\-�8�Z���:����_6�I�?�p���/��C�(#)�p����?�������?�����.ŕ҆|X��(����䰵�����	[��O�bg$2�m�v	-�Y�6�M��Y=&��H��`�x���f8��Oد��"���CPGױ� �_�§p�bj�m��x����/��h^�fN5<�<`�҈�w�]��Ж���z���~oGZ�Z��7��B̹���)|���%	��@�p�>�	� �\4�b0��3M�M*��*�\K3/$A���Yq:�Ѣ�ơ+m���0����Հ�Ʋ���Q�;G;+��1\\,E3��һ �?z��sCc<G���!� ���p�Ե�|Hp]Q��{pgܰ�e�[���鵧�ԛ�ade�+L����)�'��7�:I�vkշ�@�<ϡ%���[hna^���0�E�p"�X��`C�*�$����O����3����p��M}C�)G�&@��Ukq1F )��b><oa&1�E��_e倉m}��|�\�GC>w���NU�N��	gk� .��Ӳ�*}t����<��닠;��Z̒&'�J��v	�9�d	�j{�eі�6���&k&���N����8���g�p7 i"8 �8�x��#��� ���wCg�Ň�Fs�3C�:�G���"Y��(�s�_�Q�<����(�;�8�&�J�`��;��Eۇ�B.�b0W��K�t����{gU|�,�W�C@��OQH�4_����H�"����nllbyp�F6�E�O�D��3m(q��etJJ�{
��*,�s�}�")����"~��(�B��`4�5!���f�d���d���g���4��[U�m6ko�4La���N^��!���t��F������I�B�?��Q�1���`
���2G�iz�A���.?bD1�V�*e�a�y>�	C~��C����h�����$�L+L��� I��Icp��Ԛhb�_C�;�Vn%��w-L�݃���\���|�/���ᆿ ���V˰C�������u�W�s�y����U���
#�ᗼ�֖:�T�=�mϰ(�eo��t/f��3�,,�g�L9^ ��;�ϫ�g[�h'���N�ۧ��e~��7I�Qb�\+���-�z�*/XI�� ɃZ��נ5�"B�E��fnj��bkF?1�����3���R)�$f�8�D��JX��)im�@�(���_�
M~���!K��g�QȠ��-ŪT\~����j���#˱���AO��3�cّ,?f��E%�r��m=��(���|��7�b��5/LR/�R�b�/��̧iyP�p�b�[IRQ�z�A�<�^��e�A������8�A���p�\&�����Y���;{���@�<���O��/'�������ڐ�r t7J|+�\/%x�gp@�
���Fճ��m�������Nm�d�K��h�h����Elm���������4x�Z�n�&�uyx���k�?N``N�A �@���<�zGU��O*eK},�Y
reʆ���>�.%SAv�9���=��<��<3������g1��4-jC���8}�w��R���,��줞����%>7Tb�p=^��j���zV��J�N��t����_�20���9m��㟩5�4^m��Jܳ��U�A���;��'|,5U�����=�L��Yp��"��x����x��v�h��pd*>M�\V�Q���6I���1q�汷�����+];���c�<��p�n�I��é��k����Ə��|���f�QbDp��j��� ЃZ���f(�B/�0�q��Zn��X0��Y�/q3Ob�\F�W��64k�Fe������A�\��8�1���`��Y�?X�gj��W��ǘǩ{���z�C�n���#M/�=���nM�v���Lw �	k���"�@��� ��f���)���|rV�ԆY���Ts��j��lA�&Ǹ]�i�*�;G�|�`1-E4jv���-M�ܞӮD*gб�űp�O���y����`��W�(�g��Lm�DޜH'�3�d$�k�!�7�p��{0����cϏ�%mM���Ǵ��W�c�l�+�p��̒X�#�+[N�}�4t癊�O��3Àމ�*SGy��3M�У����`����i�x\��^�X�\�w#E����,<F�)$�=�Upsgʕ�L������V�h^��W�+~f$�e�G�w{?�XSUv�ؔz�Tf:�d~֕�p�%�ފoE������$d"�+[�s�����{�6d��J�8c/4�����#��񧉪ą��x���d�m3�J���,��0�l%s�:�p�,p��t���w��0�g5�Lm{p��i9Qm-���K��]�L��u�0���l���T��,i�R	������	py��NhL���S*>���E�͉�_�0��	zPV�Rp�/�0ѐ�0���J#|V?�n���r��;'��cЬm��0��>��h���>�j1�_�kX	*>uֿ�5��y�<S�P׈�{I��; ��AF�^k���O`�%i���)�z��/;��m���q�Xt:h� ���<Z%Z\܂˿�1�a��O��6%D���I
?�4L��4����3q3rTnĵ%�P���N�3}t|�o�v[5��j_6�7	��B��Đ��M+8F7�~a|������?S��U*h������M�]:���s���l΋d�cJiǴv���̮u�1���]V�� ���U���3���a0@�<=�Ԇ��b�\�t�g�Њ�nW� wS�f���{�O�i2�%mL�'`�����̶��nI�'�/�zz�[��Y���d�o��t�O9��!u��4�����)��k{li�����K�����#ls88�mW�u�M�8%���(������s�p?�#S�f�$��y?e��
h��nvw_��n�w�l�y���e���pO���0�D��2�!�ڀ�7d�J
T|^���p���3�an*��h��%Ɂc��ȴu�?����R�_|��	Fkmbܛ,D?�v�[���4�-NV=�r� ��ܘ�Z���<�	�դ�@;��#A�y��q�Z�{�S&k�D�6��t��6�YAg�M����Ժ�m;Yߴ�����X�S�y��k9x���Pz�l
�w7�;D��\t{�Ś�v�,�y��z+���h��I�+�a��`PI�8Y�yؔ�4�$?�G�'�X�s/�
G�L�!8�᎙lk^����F<���>�]�g�`�P�v�_+.k�gx�z���'�
�*>όm��?R�q5+��HEz0F�o��m�)�tF(�b�♽��}K�wM�@gV4�V���K;�jg��,#�Y�ϝ�e�>�gj]����H�>	3�O������xp�5Z���V��z��U��A'����NC���ѩM�?���'�$^U0��[?L!�p�:�'�� ���=����'Zx,˅���r�2'-j��nRKr��攷��i:�w$1r:��#�W���'P�©��}@NT��!5�������Qg��GŹW��:���z�o��	c��q70ٹ՟*J7V���M�m�\/��ξV�EA_����":~� ����l�&0�	�ST>�&��ө����!���xE��p�β��I��=Nv��ud-w����΅Ҿh
����W�>�;q�n���$���������1�
6V�6Ɲ��ߠG|����3�1fJ7�y��d�ً����8�D�'���JV⶟AK ��7~/��=�K�h�D5',U�kE
�C�h�<|�&��p�����X䑊;k�b��ix�N�������zunSe��v�xw�gs%�W>�+��.B����u�?�|��Fi�y UCPל�    \?冀��\3�U�	��Y3�syמ����0��o����e~\I'��vG��(nQ�tIjn���"��5��X*]�b�����G�FEN��E��Z�`����Sa���|ޞ�+�$�	p'y���Yh���l7���X�[���a�q��yH4p������P����)�p����~��cn� �U8�NS�+���hI��㡵��f٭��X�c2�V�������2n�[��pbN����%L<�ßV���Zy�"L�U��ot�+VJ贳��r�
�"ۚROd;�Y-�ޏ��ma���n��C&��7�KE���?��8�F�WjM��G����]��<�V����F_ݥ���f����������eh9�ӊ�'�a�Tw�]k���BJ��1��ߠ~�>������Z%��	I	($��e��w�dO	%��&�S"[�����n�ۖ����F�6�pS��
�����z��O��h3OUG�u������N�q��]��eR��74�E�@�G%V����r��*���������� ��$є�-�&�]�WUp�vv�si��V�[*�a'Q�i:��C�;�1h�7��f6U�]����0p��4x�BGŉ�V��Y@<�	r4�%h���〥q�v&�}��ocV(b��f1|R�r�6&=�,7�3�U�P�V|�y�k�-g���@pP�R�ehPkBT��x{���[��2/V��3Z9X	p��e�f��5�,�Nª[�3�W-A�h_KC!*>�<1tUF�o�7�5�Է
2��p%f��:I�H;��r�J�r76x�K��u^v���e������U�@>��oP3(
�y�=����R�q�Ho@��6���u0�XlE�]\D5bǊ������eĜ��Z�!�l�Yk�O{�-5�����Y�U�4a(;ɂ7��Rk�T�F7�����n-�1vf$?��[o0w0�Z�q��h.��<�7����g���;�	v�Mħ��7�Pp�c�NA�Rk�܊�1Mw��f ����#��C�=u��Ҍ�="]e<[�N�sF;��+#Y-y-X��V��kju4�0�gƿ����&ؗ5VU�B����;����{�+W��UL�B%�Exh��P�h��.Y�S�7�DJy:��O��������{_��jGR��o�]�Z+\���g��?]
�ldN��j'��1�w�Y�_�i�m~ۋO�CD%�p�p�=�su�гd~!
�� ^��[jM�I��qh<>'Ft"��ZKv�$z;���LH;�k�Yօv�V>�ʑ�d!���Ep�R �rI���Ԛ��>��	�Q�<za�����ӥc��;ov��=Z#FLg>fO�ڑ����!�F�7r�h��R��59�6�=�*�~�୙5H�p��ZkG��ӍU�ݙ�V"��� ��&�s
(�<�;�"�/D 	� ԋ�{K�9�ē��\Z3ޞ�}BVV��u
wb-`P��ġ��1����%���I�����B�DS�M��1hh0�z����g1�녏�K]��8ֻ$�7zq9h��7*��3	��x�^��b,�d��j9ܻE�B�;8P������4�_�Qh���M7�祉���ƃ�<�M���{��9�s��w4�_ V���N�H��Z��I�K��K�>�0_58� �f�!3p�)�T�9���<F���a���=�����<مۓ�/��OS���$J�n�+U_���x83u"��SU�n8�h���(�b�1��U��8����2�o�u�Wo��V��s8����-�3>l��\�ͦs1�-#Ά�N7�.t�&�\ֱB��D'Ш�w�������4S���E����قm�����0�	ێ�٤��ף�&����y*f�ƺ�{�h����MSC}��_��p��ĸB$�����,��-�~rE�� r�?��=z~�����0�{�rĚ⤞��O<n�Ũ8��s�̣�0�0�ڭ`�0��/$��[s�)h둮Dh���	�	��� ��!8���&�������".Yr(��n�A�Hk�:�1;<�R�M瑲��r��Cw���OP��@� 4��;_�Z���Kp���6��X�t�4�cIm5l%YQ����"�/�RGG�:�BII{��<x���D���Ec,�n^�5��c�� kD���nop��-�9\���f�����w��f��d�9<|���.��M.G�P���9?��t��Q�9&�(=�wSw�d!Ւ����Ѥ<�Gg��6�0i�{&m
����}����q#���������ǵ�פi�⋀�O�6U�S!��ѱT;�E�=7�z�{٪��Σt9�����|���<��U ��(�z8��D�2��5��,zK}�~䶉W96Wa��Gaѧ�@;*��J{1�][s�h:����k�c�������}��)h �o5�+�&�����my�Gذ�gmF�%)-��Sil3�7غ�u�i��7����u��M�!Ư�`��,ƾ3/Ě�^(���tZm7�������佩u�S�9]�]��.�k�):۠z�<�N[t���J��d��O�It�V?/�@����cߓ �r�?���\
~(����Ncxjo*��3��"ڭ�m\]v��h�~A߿�����_�Q�(4�8x�o�5��	��jw3���
W�qbU�ʲ�v�;DmFۆ�+$���`��x>�c��3�OGOIt��e��Rk��'��៭s��@U�i8Շ���no�@�ö��a���a΋�n�'21��?���W�s���k��9Գ"4M��������.����p��C�;�I�U���P0�#1��W9���x/ �����'?LU�?O����.˭س=�|��rb�j�����r1c�㩥v5":*�L��u8�q��y@��>c+|�cz�Wy��9�?L S]fePl	`�C��h����(�6���7��&Zk���ӧGh�/㰫��Si�3�>c��>�Ǆ<����ٔ�JϚ�{�SB��f�d=���?��^!^�t!���'j��.�\(��;�)��Î��r����\��,��sK��m��	�� F>�n㫊�-6�i��6�b�l��^�:��w8��+��r���h�UG	���������XW&�ÔOFX�T��=�0�UɈ���:�U�۶�2�A�I_��Ґσ���s�	����hPkB����ޜ���utͼ��K�|�Eھ���d��� C䓙ٶ�ƃ���:��~�w�M��CүC�W� <h(��/�G�(M>�9j��Z�[m��v4^lL���m�֌�ąa)�O�6��.�]���U��C�0��ƛ�)<8~�[��Q�y���+��{���Ɩ�XG?K�����;�P��Z��\Ȭ5���n{Co���Ouw(��M�l ��_P������n34muݔ��uKd5�D�Z掟�L�]���-Y��XY.�`�S�J|��#�����iT*�Z8����ER<�(�l
_5� ��䑫D5N�����%�m>�Z�k�8�i��ϰ|���i����a�qJ<'�t��6B��V��{.vkm����;���B3׫$?Pk;�z�;�g���y\f�e��f{���XF�z6���<���r�	�hG�X#9��x����$2�̋~O�㮶������ ��y�$���8�<?��̜;�\��>����;I�-3���D��/p�u=l6_����Q�j��+���"�Xs��	�g��t���Ԯd�U����+�|{^��%��v��r�*�8���@�߿�? g���z7LS[��֛�����?�;~�)�g+��XW�w�����t�K\[
F��<�+��<?:H��7�_�G�3�B�'j|��)�߁�Gd9E��ϻ�nu̝$�]Rv��< I���<49��0N+[�!?tv*�;��4J~��x�V�J,�ga����Z�eh#5�go��GNJ8bVp)u�ܲS@dcK���"�~;y�,`�9��0b��P��`�7��l�n�:    ��РR�ڮ+�� F
�yz��R/Yb�h�|#'<>G��[����J��J��>OJ���l2Y͇ӡ/�A�LM�J_,KQ��V��>*v���9c�&�o��"C3o��ĵ"���A���j&@��ᅂp�0-Ö'a�]�Xn��S���9ćrg&䠑4�Y}�7\������B���F/���,�ݘ��OeS���B��}��B��c$џ�#eA{K���f��	�+]���0]�3hvˏ����C����7ϟ�^��Z$�@�������Rś��b��M�N�6nD~�e��ۧ�:�(��)��#f3��E݉�Z��������?4��s�����EIU:�D���[��9,Ɓ�n����=��&Q�OT�|$�\���j"��Н�(�1��p0��dfr
-��[GF��v��!S$�o��+��*Up4����V���b�����h�=٢=���.�ʘ9������һnk�su瓝7��̓67��>(�/T��-
FA��w��~n������3d�Lmnث0W�������Tds�.���/=� �Q�d}f:�G���m���g��y�Q���G��)�����Y!?�w:����^��>t���uN��c[32?-��w��I���G#��CFX��y.\˒�l�lw�6��7^i�pjc�h�sg��E2�&�*�����G�K��k. ^dxKm�k�{m��"C�e@1��EG���L9jI�v �����j~�����p}��HV����B��}�vH?��QBSE���?P�2\�CiǬ�Fx��s�ڨ��Z	V&��nj216���|�X���� w퓲t�D���;��@�m��\9~OU��(d�y��-{Om��6Ag��?�ϢCj	���ձ1p��3'#�|v�x�\<	W��;戾�/�1�����_�������X!{��x�_U+��|�bq�{�F��Hԗ�0'�x������Ci�{�Q����v��dg��f����<�.��o��ߌ<T� j��~O�kN��@�uOG�����.�y��s�)lq�v��[;�)b7VR0�B���\A���]�}vȪ��C���.$�ڞF����~�����^=�����#���AV���#��%}����.{�c� ?�R�E��zj�h|�d�a��}6��w��`�}Q4W�ˢ�,�%ߙ\�ZL�hg����-��L]:����:����S����@�>K:Kَ��!<�nx���ЁܧW=s�����E��r"���֓�\����G��?{p�5-��7��TﷇN���7T�4��]�d�������Thf풏�����Y�cpգ�,����B;J�o@U QCM�'Q �P\�{j]����c���]��q���ƍƻቼLIy��h�c��#.�(o���ǫ�n�-��	�!@RI]�g�u��,@u��L��
�Z�$��� 9}(n��o�]̑O� �Q�a;�A��@+׊I���0P}O@��i�ru-�#~���!�-�����@��'^JN�p�(f���+�;/L.�O��j�[��t2����YwOz7X������2�.S9@��7r�RƋ����Z�����u����6�K�Ա�5�#ҍ�2ꮣ����nǍ�H�Î��*j�� 0�d}�J�P(=H������T-�����֏Z��P�}
X�r(&��|ÉD`�wXT�����~�t�,���9uX��g$��; ɧ��7� �< #^4�5@Y
���]Ts�}��z�Yn
��FCS�E�bB/��6�2l�n�����n��tW�f�Ծ�ʊ����q�5��]�@�#^�<37W��:�~!�f׮d��}�j�37M�C{l<�(�[R:�	A�Njo ���ŀ����x�+f�&�����y�M@'U�_������[r8�5�;�k���N�wv���q;+�#��b��ܖ��ZLj��_�AAl��"�G{a���G���U������U&V����ȘQ�*��	�]�ɯT[WEw]4a.g��m���1�icZ��_��7���dNMQ/ƽp?���L:}Uzzp�4uѧ>�wusm��X�?QʨZ@�pj�r,�j�9���f6�]79�i?e�l>s��F�l�R"��o��Be��F��w��G���Kqʹ3W]�e��G �rC�ѵ~���j�+�bc;�Od[gSj���<wK �/6�z���������3q!���_,2	��|��U�p�Z�˟j�S�D����t�[]�Y=_Ώpi����X7^Νh;���S�tZ�~C���+�]R�B��p}�jl�N�9]������P�ሷ؛��޽-�0�7ƞv֘|�6�y,n�8q�M(�X$���d_T�P�g6����*Et<ǡ+q0�e���+����7XT�S�2�A�����h�X]�i{|���ee�Ɗ�9̀�<�ڰǓ2X��
�+IЂw魴
9Z,Іܐ�wG�.�ax���+��Z(��E����_r�?h��Nf&���
��$�Z��wL��������~o6�PW�j��52n��\_z�QF�hd��6����	�G)-�]�E�c��:���e�����3m7�.�^q\\Ȟ0�����Z�O-�S���D�����Ԇ tC�{�된{��>�2���X�	����R��F��#㸿̙�w�O�����K�W!�(y��9��s{Km�pݵՉ���6y��V���z�x!I#˜N�e!��nwǰ�?HO����~-�>Z�85
����]�Ao�@y�qt���z�~�|Ӳ�O�i�TU����|��z�6+7���[�L�kd)�+�y7=vt�C�H�3<�S,��5'��̏��`�Y�k1.U%>�ײ�����W� ya0D�{E6$�hϫ��&���4;�`h��rF�rE��"d���:����_�(��0D|]�o��	�����	L��X�s��ȥZm�?XN��+uR�O��h�a��|L��V�=�7��߼����H���I����3�FI���*t��{/p�"#<�vY�����!���U���.ڧ�� �H����ٺ��I3�W�H��>\x�w#�z�}�@�r�h����	��5�wd	�|�5b'd� �;�:����F���Hce�+l=���O�~@?��*��f�ȗp�=��p�G��n��Tڤz��١G�r����J��`�e�X"��*�N�wY��)jA�@?���)�f��4J\�����[:W�g-I����]�es���/Z&Gq��hs��ՎW< Ɔxb���۶�͢�V���+��𫥁Ɨ�x�\�祉���r/���ɻ#�W8��8#����!�����:������r����������(B'�5�}b��	`��N��9��6$��O��Vr/t0��̍�H��=8��Y��Hһ����hn��h�{Д�$��/��������������d�{��^��Y�]�
�0}���7�vw�Ǚ�.z ,�A6��)�2��Y�uEn";�N.��f�i5�w���깆�xզ���l�'n��l�yؓ��C��#=\�	L��tF�}N�F=s0�:s�<�90���O��͓��y����w��9ح�;��&0���������xz��:����~�����G��^�a���败�S�e�[Ԉ�+#I5œ,��N
�ڽ8�X�b!����O~��wĆq}�eL��I�{o�����e.w��������K���?ŭ'���H�3��)Qځ��x+����GCO���]����	AbW�_{�{]d�|�����-��>��n
%��8O�0Xe6�2�����#�;�žh��3�מ���oP�#�p�o��Ey�h�~h芳�[�~��K�t���#t��Q/��K�$��8�[JA�Q3�[�
�������M�6m��*�	]��	�}�T��5jPn���>�jV,�j��y=4{�Ba���O�fp##�>5n��މ�B"����;��	m0�??y@����s���ߪ#|���Gj����"��^��y�S��B[    'y͒�J1����+|��r�+	��%���hjn�/���&��M!s
@�J��SP�݀����"|�V�?ͅOV�?���#縎-ϗc&ʶ��l#��ʤ��q�O���ָRC��
��n4��`�P�z�z�nX5l�gE��Γ)��́�zv%d�>Bۙ����ڹ�G�����̥�Ee�����J_��\�6���S�@Sve�"뷏��Fa�zؑ������_,���D`.�5;������V�cr��0;?��>.ˎ�c��b8h�
��vY�B'�臢�	��Py�k��=�ፂ�}>>*)���A'd��0I2�M)��/����XTzG?2"����إ��[�j��U��X~�-^�5'@7u�{j��^+j��pbn�K��BO���bYwiE�X8g�XH�;u}!569+8����24\��ߔh�^��u��Y��6��QA3k�̂.��M�ЕgI��C��ҜY�Pr�D;�\z��b~�qWA+TB�����~i��籿�����jÏ�n�הN�-}o�pК��a�钱5R�m�q����Ij�3�&v�0�'�Ai��R:��g�n\Q�~3�s������ծ��}���o��tI���QL�ۣA)��>�7�Q�l��Ξ���f8_p;a���E�Gpqh|a �[��z�Y�q�� c�
���};��# ���ɉ�u.�zũ�>x㮄��h9٥؀2
1\���]���:'U���gS8* �r��r���o.'�Dm�L�������K�����qF�<]�ȶ�I�mc�v>#˓��=w!�.�������y�,?]j�$4Wy7���~*�C'�$�?�9�j���¥d�\-�V%�(9(<��T����i�����a��vT\���J7-~���9ч�+��n_IC����Hm8��m랭�ft�,��h�z���� ��Eqo��Kv��qE�'�4މ�S�4,N����Pq��Ϗ�JQ=g<*`Q��1�<�ZZ^�V�)�]Y
R�N�}� E@(�̘Ȯ����L��\9���|G��������f0X���_f��q�ZV ��y�͸�R�����R�?�h�.����x)e�p�쪵ö�|{�P�8jm�Q[ʋ#�x�3�i��)��Q�A�E��+�?_$�Wu@%��jKm)�:�>t��{Ĺ� �ڬXR{jx�Z��Y{��l��������f��/��koG�ݡ����Ǐ�W�N�G�X��rՊ��3�s�k}s�ϕz��Л}k��Q��-��.���������ѶƸvPΉ7�*�(���ϫ����ۼD�#����]W�CF��	�@U��N�A�Ze'��f�5��K���x"��R:_NW��Ih�~���z��D�zDm�������@����݂�"-ul�Yf���)vDl숃�-��4�cU�����-w�>�[z��[�U�^Z@�EO��k��ߠ��_�^�B�|u���_(j93�D]J����ؑlڱ���u���R �Da/�'7�Ԥ��ih�����w�凳9��ūk�4�Q���=�1TC����<dXН�� ������s���kO��P�S�Z=Jm12�ѿAԄ���$��V��~"6�4$xd�h=��;��̩�v�/�/���=�ą��u�8�k2����ܳ�ߞG#��~�	�k���Ԇ�ޏ��G���z삋��'�k�M���af�]�1�e1Nڶr���p��t���N�oC���\��1�7���S��������TZp��2v����[i���!��N��bi�b�FF����QU���+1S�I\�Y��?7�w4еb�zI�OԚ��/UT5�w��2�{�&�R�����8쾳kG)�cdǒ�p��S/f=�b{��14BO�>����5��Oԫ�y�_�� ;<y:��T�k�/8.��˭؛�Vzq���-=�?�b9�E�`>37rR�g2}4���g�fW��;�}�E��_��-�1���X�]��p2�KF%��~t)�m኱����c�D��;��g�W�$���X��S�L�bįm���uն��0и?zC}�h�(д��zt˧���s߿�ktu����&�7۵v�����&��{l^�ixr�����G&ې�t���A�ʊ�o{�b�M(kvp������y{�#�*QJA-���M�W'��#�	��_��,3�}�!9��{\)ۣ�qcO2c��������D�����;������Edc^y*4wCT�����_^��@�u�����-���Zxw#I^��m92崢|%�3�\L���bӽ�>-��~��b3)�:9\K�/����6)���Q�]��	��+��^���<ͯ*�����<���j�,MC		k�����lo)���=kS�h?C�	X��	��7˟�A�*/�dQ�zE���@�?o7�i�я�8�DN����ޢ�Gjõ���5���~`����+$^]�������8��,���XA\Hs}���6k/Vy����]���&=U��"�G�$�o��q��+p��W]�#d8ݯ��c*�U}ɣ�s#E^1t-z�@4��E`*Zk���C*���jl �M(�0����^0jc?;�m�n@��*��7�]k�݁���O�Ɯ�55"4�W_y�G��B�5�jthi���������+s�tŏ���w�''���E?R�(��Z��C�zt�Q�M:V�|i.��.�Tf�e����:}�r��yiiP.o�ڥxB*��A����lP��ZmB��J�&���Z�v��F���g{x��ĸwjǬ���H#�lY�ӓ�cg��cI�7j9�VQ��'�o
(�T�����S�HmHP���U�(��C��j	v�г�tff҆:yz�_�4�Á��d�	}M8�9]��;��<��F
�ӱ?Q'6d��e ��]>����=��GF8O��Ю�U�i����:���>���e �'����:������!�,͑���͜.���R��QC*�u���k�Dv��sso���ٴ�N��fwh��od�б ˑ�hPR�O��c摛�����6�#�س�i�M��uŞO�@�<k?�G��|�<�Cܙ�B���"tS)�%6�W.�{{��h�D;�.�prq�����hX`����p�.4c��O���P�m㑪�TϚ�)�B<���O�*"�Q�9F՟7��V���$i�Q����R��ϙ���ύ�G�N�H�93�J���ť�%K��`<ǆ�-�]8��N�=ue�B~���WA 
Ҫ�V�[A�Ժa����<��:닃t���-3y��Q�f�(��,��ہ�h�][H�m���U���u���zz�����6䨲/�e��+�|ZX���	�l2o��b'�-�ð4؞(g��	o�[����x���,�b���F|���w���+U~&ַ��Z����N�����S�<8��#.�]0�bB"��&Nrڛ�[Zdm$�·ԙ[�9�[��O��/$A��Y{�#�!ݐ]p��X;J�����K`��������ڌ���i:�Kw���
�c�dkٿ��<3��$ ���h��R�0uI��"�oٵ�:o�%^��]��l�Ia-�FQ��z�N���yo����-�I��<3��$��� ����R��I(�x,�.��{v���>�ے�x61H���耙�<c3K(2�Ν�9�yI���HBU�!�/��-�!	ה�&���W�)��T%�hM�j��jM��ƥ���^ ��kw��i8)��Mħ�����s5�,�����Jm���eA���A,n�.=��\��֚�n�YSYF�fd��p���2�A��V�9�|l#E��	�%o�u)�����o��`���],w�8-���	v����h�J�9*��~��v7ny.�,qH�ݻ���_�``4�
�ո��6� u9�U~�֖��<&�=?`F��0�['����t�1h���4�=�,��	g.�M	�������~�շ�U��ڐ�nQ�&�]<�:9%��]�'ny]b��N��r���x    =�7m��_;V�ˍ,Q�nB��1��U���֜��Ԇ�q#��OAnw����nY*3���ap��r7 ��_��`A��L����m�6D���nhPc6�頿�6p_���̓2)�Ygy�����.j�V�p�4�A:�R��#�0b���/�����c��4�1��K�k.���L�;O��R�r��D�������%����q���=Գx�̀ˏ��C�ŏ�rhL��z
3��/§�^g�����vP�����~�q�x_:ąm�'*G����签0Ԭ�HR����lБ�U�Z�yHa�C�fk��R��~>O��������F�MG�=�.�<�~� ���cZ��eo�{_�e +�u�{�U��raSۈ;e�����ϳ�����2<Q�+kpЎ*�|<rw�A����>��R��;���p�2&:	��WD�4�=>v��ey�~��D�#�:y?�Mj������7_��С�V�~���k/}R��Q=��d��Sk��ajq-��Jװv�iO��t�^2AX`��9$S���Z�|�]��܌;�K�b8ǡC�T�?�õ�����W+���H���
���+Y�ڸ�Y�:�ϣ�x�<�I��1\�����cr,�&.��82�O�Z��}s��w��NШ��6_�֫:6h��r�z��!�_��}}���<M��_�:��b���wC�JmlE������A��&`�Kx���@�<! ���s���ǘ�����@��z;W���K��=��Ӹ_�J�Q��t���?���n.����������#U����-���?�����y��?B�*������?���#UU,Ͽ7Mj�#�^�1���jR����^A��x��Z�ȯ��G�`���G���ǻp�nǾ��O��9�~�jȃ�������s�7p����&(����G��y��	'�%yKm  ������{�>��������Im@x݄������o<M�c�Z�����Z�e�7�����Tm�.��3�sz��0b���t�ew�[{��0���Yj���קZ���7��
�{}I�D�Y1������FS�=�3x>�۩Qtw�q�M�8�b�w����\nEt�t	��R\����+�3�WwJ9���7�~���b����������U+Ɋύ�_%����(f��Z�U���i���^������ev	����͎��k	�����ڗ-��,k_���6�7�j�(�((*h������	<��q�0N���y1W��+>3���*+`����4`K������·����m�7��Z]�8�/�ϻ�+��T�ܨ�ޞ�/�K҃/�	:� g~FKi1��v��0jVk���ӅY�ʛ������0��3���ڴ����_�Y��Q�HMo4�p),��/�mNrJ� z.XpD�c��1;�d��I@��4}�aě��`�h#|�y��U��������o�g޻������1³�1��8�me�<	0��L�3gW�R�X�u�FM��ڑ"�Z�_������zC�U<��!��A����������������� �1��X;�hm|�F��,<u�B.v�:���L��fyJ@h(|�VƮ٬�a����>o�w�j����J�q޺f�yt�4Vc�a��!-dek�����\�G5E}�����f���'J�gu��Ȧ�4���P�d�sU@����1��`�@a�'�k��$���N�z@b�:�߯	B"�!��}����`J�C5����I&'�A$xۡ�zG3���0�.��15��<C��s0��q�~_���gq�[v�	�~��bҥlM7a|���℞H� C/��Qm.	�(�﷫��W��À;'P�ՍM�mY�8�ߔ5R�W�m���$�6����ǧ�j�H��01�#��R�L�Q����4t+�����$�+|5�M0�Ź����D=�<�m����o��+ѽ��B;`B��[lU�ϼ�����S�D�Z���*�P䂁��ZNsų1�:b�F��S�g��_�Cm3s��dB?��/�=��<�;0V��e��Xb�x#�����#F4�����v{���Rm�a"���8���g4f�����KjO�n���M�?-����9�p/(dc@婧A�#Gm�wNTTr�#$�ܔ�`��oZ�6p5�p�٪}���Kj��k#�������+ݳRʄ#f�{0����6s��@R����su����<�X۟��~"�8<8��˿��q�F������)P+p��o�`���M��ۮ銅�h���F��R
�8��N�8a�؏uׂ㲝pT[��	��1��~�q�|s����#ܽ�=�'3���6/�ݮm�u�`�:�t�Z���"oVYFm����H���6&�a:��Q�#�P����w��zg�p굍��b$'0�Fb�M�PB��C�H�����9�J/��2q�HT��hȤ�9��90H�~Qp3n�Źb�l��W���7ܩ=	��c]M�m�[��|?2�bj؝R��b���Y8T0��L<��2���d
/fN�yS~�6���	78��ߟ�ޙ�;��{��X;� �}�3�u�Z2�_��l�!��]��`nX�S�3..š6�朏i��ʖu�lqj�?GS���5Wz���@|��ݣ�{T��D��n��uT�E������Ҁ�B83�Oks���F��%��.k�`�B�N�z1�7�D�i��_����������Ǵy2~+n�Q��Ǆ�o2��a�|/S����0��<��M�f��gd������_H���uP���B�6��8^S{���%��n�qk+���*5rW�����25�����o��JI�U��^�u�������z��ѽo�=�ч���ث=0�VC�R6ᣵ������c��Ř��@ ��>� 3���%����|��n	�GH���|�ѵ���>v����'�a� ��oz`1c��v5N'6�=�"%䔲��I��P��Z�0�w�n/� B�N4����i`��=-�jʻ0�ܝ*�(k��k`+���-Kr?=�^�f�0P�9�P�ٓ��n�N�����w)��3����`?!����B�� �]!�£�G�[��L����L���x������E�0Z��!S����o	���g`M&J��F?�=	Ȼȃ�cy�*q ]��Z�'jx��\��E�wY�F%�r���&� ��*��Ep����5�'u���C�1�pD�2qab%y�i�l��%ku/��P�2���-�	s�Ú@�۰�����,�M� z-@��,@W�ݖ~�͟����L����lT�Hc#97Al5c�sP,�4e�Q1�d��(��Q��KhV�˴���͢YE��x���Ğ�)�00=�L�[�HH��XF��d,l���. 0Y��u@��ݐ�y8)���xv�R�al��_-�{މ�:K������2�-�w��2�@�{��d�"��p�_��x��<9�8.|��f>�	n�2ۭ@���0F��M#���)v?��ߨ=�o[��fS/�}��
�Zp4c�~/��P�0���A���%���}z��8L@7&��h���?\�F}f���4K�v9n����e�Z�!_j��P͊'F��'Λt;��f{1Q)[�x�/#��IR�Wp|��W�4B�+ٽﺾ�i�g��=V���cp�H%�<����PyJ0I�~0�s�_�4�Y�$Q%R��1)^kO��{�:�]��T��`�%�y~�j�A�<�=�W9Wq1�T��g`�ىX%�у��أ`O@�îZ�dY��l��d�����?@�%�<��{O�����U��p^Mل� B����(bi�_�뎭m��=n�RJ�a���ٙC��Mҷ��@�C�����Go��^�,�f���B	�	%�Ѱ(e< �uf�+��F�6��0L+�y�gC�"����}7���O$h^�D���G�I�}    K`��.>��+r3O���d���0E����`x��
p�8<��&]�ٝ{�
�	�d󆳗�������lڷ�!���K�ۣǽ��[q~Q�G愴uJ��a�-j=��~
�eu�g��|���^���+�'��>y��7]���v�
'���E�^``�zi�����@<L
��[(3 B�#���C�x�qMsY�y���3��hm��x�B�Zo��;��},���l�� ����K����R���6ӑ�Y猤.����F��y"a\�\�M�m��L�\����ƔP��WwE������jb��#��i?�D�">?�q���R�˘�&+�O]*_c�3��Y$�6[|�ΗYh/q!�l�3U �:�]{�n��ǐ�/����̽��^S{�ݜM�Zo�y?� ��o:�7��CU�S�׾� s���i��߅-�'uT��@�Z�5�W�qm;��:�S�A]]F�Y]�?w�~C�ݎvO-�x���˅�%�~�2��ǙF2�4WNC+ޭR!�ޖ+���|(�lv͔[����tb��ym�� ���5�y�v�"c5�f<���?!����)<"J���ȑ�j�?p�8��d>4�;A5��F�9�X���es��׾H����$2��2�|����ѩ�j������J��-=e�<iM�ԙd�G.�=D�&��C{b�c3XBȀ�Ձ���,���B_$�$��<v��&���S����]�"n� 4��V ���Y�D��ilj��Ȱ�u@�T��Bzr	
6��[������~�����^>�fo������=9�突�I����ҮHAމ��	��bB�������c2�� ��ޝ�xiƛ��E�8Da-N���U�����WjO"�)1b�z9N���im'�f+��X��p�p��K%$�Ӹ�K3�!�����R�ln�pjq��?�/j�׽�z=�	��s_�͆���Վ6i�^��6��g���	vYIKg-S������qu���t�W���<��^��H�1����;Mt�}1��\�4��vF.�$?l"l���zpp���>��������[\+.\V��<UB	oq~���`��+�G��%>��Z�
�Ap�{{`p��Nhsx�Mū�!$ː,\��@�CZ#g��4�Tښ7G��~���&fd�j�]���UB��5�#�'�,�G���_Y1�$z�"A�tH}�`�>�0�����X��y5o�$��C�s���t�(@1�wjO�Y%c��Ч �V���4EB/���xhv!�s.��,|�_3tp���$�S�-�A����/��3��$��~9�kjO��0�87���!�]#ֈ�����㛞:�0�c��'�Z�'��ا�zt���bP���ƥ�_-��ww��%�S\8�Rq�]�J�,�$w�:�J1����y���q��#�Eʲ���Ց���9T���,�x��7�N�Ŷ.F�����N��V�N�I�l�)��wlc��l���c���ó�01c��L�tD�9�����̈́����5���R.5�M�zԛ��ǿ�C����k��=�4�8�����5�U0�F�~eH��]3�0L��v��P�n�*x������M=їQ��5v�ۗ��WF�v����k�����r�>�Ue5�M5N�Uk?�����!��2�@�(an6�\�Y#ȸ ��b2�d� Χ$���^~�d���o|��H��ҖGjo�][65պQ��z*�0U ݟw3!�/r�����t͜���Z��lX�9:�/�nkq��#�#�v����?��B�Y�u��˹$j��O׻�T��yCQ�p*�Cs��O�$�`!b�q�X�jZ�������r������ �)wy����Zĩ� ��0Hjϗ�njl��<��+~�ۍ�e`�f)d�\P̒��b����P��M���e�Ӟjqzصh&�~^�Y����$���:������[$_�L���`�O�����O����v2�Ϛ�b>M�Ӭv2-��:�UA��A~�.0 ⿟�G�3�гF6W��ݵ�b�0���%��zB.'`�y���!í��`H����Pd��]�K� 0��-�]#7��p����wҼnBכ�ة#��S�I��M�ͰJ.Y�Y�V��|�y���J��Q�DP,9?�'Aw���;�oq�?^�m��:&F���f;��i3H��[�0B<�R�Aۙ��ˁ&�݀��W���P��2_B.B��Gz��	���	�C�~����$K������=O|�h89�<�T���B~�ef�lO�2G��Ae��\��T�-��l"{����#�0����^vS}�넚A�{
Į�$h6>��#�#f|���@��qf�Z^T��䍀-a!a/�Ǝ��(�4OX��:^����ֿѢ�~�p�%��,�f�«L�O�S��:��ھn׊��fq�A�8�(��h���t��*{慍���.]uhg����r!�ڄbŪjD���<�~|�7���;]�v^Gٝ�z�֬�ȣ���L�I5�U<��b�g����r*�%)Q�e~�싄q�[�܏�����@�I�eMC��e�� E��nSw+�6��S8�X/+��Ra��AqJ��F�����z�Va"�3U�J�����5A��=YZ��]�Ҭ�9��*��F�DB�-��1h& �L�g.]z>&�RTkSdka,����cG�l��x�sC���cY����kjO�+�6J�V&Zh�N�������ػ��֦�`;���݅d�h�(;����
cj��~�=�S�'p�� iq~��88�N�ީ=�:_�L�8	��@���-U?>�O� �D6vY��\�(� kF�q1���TH,��z��I�8w�ϥ����;�'E7F��^ze3�5p���������r%�'v�L2&w���	���$�c��)am��,{NƊҹ}�U����/����{��+�W^��5��в�l�-��2�E��fVh}�=�2Ws��`zf��%p�+�g/<m���J��!��y��x�H𝖾S{�@ݻ�����!�����D;\THY�-PH�쉵O��\b�Y��g	���z'r3���2�-�7�����ړ���Z�ھZ��֣i�zk�C��heo���>|~�G�iI�3IO�a�%d�T��qD��xgT�! ��8��J�  �{��ړ}r�A�l
��&�\SQ�vFq�YP�)��,Ѷ#e��ՎG�Ԅ��Q��p�sw쭸=>����9&?-�Ԟ<��T�,n|������M����Cf^���f�6�T_��CyxT����n F�8W�r� z���=!zWD��ս:z�y:5[ū�`�s����|������Sp�h��փai(<��\���}�����i)��;��Ԟ@����;P�4��,�O���J���\�r�W"�lE���g��2�3�i�Ś��Ug�?x���.��������鿜��]���]kk�8���#8�fۙ��~Fk�FBYea���=#Ӛrj~�Z��jS�w�P�ݪܩ=�Z��i��$px�H4+E'vp�9ڢ��1_E�0�d�
��q1=Z�i|T0 C�6�B-���Q��h�m(�͍�#��u�k��\���2fÞtkN櫘e�L�2x@Fn�C��h�8�|�n��W��-��f'�$Í����Q>R{�wIaS 5��HQBr��m�le�/��H�Dp�Hb1�H8:2Ӎ}������)�\���8W�?N{���q��wK���,A��N��@�ԽJi�H ��ȫ	�3ธi%A��;q<��v<���?��i��&���ǋ��3}�k�׽����n't��XZ�4��P4��ݐsM�y�;��.N+�dG:�<�x�`�4�,H���I�-��?�ě۸GjO�gSN�8u�K{+l&S�*aol�d���i=^�����ġ�#�Pˈ:m�0-�í�m����,9�N۾n��v���DKk.nrD��G�x��f��5XP    BNF�y��	i�i�sb�Nqn��.�at-�hq�?�_
��A|��Xǯ!��Z��G'�{�V����t)H{��%��N�i�@Y�V�a�9Z~��b�*a���p�wQ<��8?�?>*��P�ǽ��IAh�D�7�1����
NYʜqAغ&s�H9y���J���8�P�r�|�S`����( �1v�Ԟ]�xrR�I�A �Z���耩b���) ��뢸��b)��:��
F#۲��ܫ���ͣ�)�C��q��?���{�>KӍ�H�$5�n�D�o{F'�Z8�E4� ��J���p��-4ILEa1B�4曼`�J�Z�������a��ā����OEa`�(��V�<v9�r���('��c �/�:�(}NemD�-�E��,��a���a�<���#�'O���t�LU���<����;B=�z�Y�#XuĴTg3e��j��Ka�Z���R)����X�E�d��8��;6���<�U�S���zW,��Z,ѽh�-��~R�c�����Ql.��H�>ה���:�ጙP{De�;c��F��k��1�Z�g��
S\�H�IsM�5�g�_#���" �(��1�"��.61?wt*�s>�
53�r���H��87ԏe �w2�/2t��Y3rU=Fzh"�=����P�G�T'����%7�?Pa4�8��p�P�'��<�c���*��F�5����%!�w��N�Irm-츀�����Y�n�g�2ܚ���n��z����f�0��'�3gZ�Xj���48O��BA�V��^�
֕�j�v%���Fɇy+�e �$'گ�1�Ep��.'�J������	��f��h(p{	w���}����?���x��Ԟ<�r/�{9��^Դ��)���j�W��a�>��x�"BVP;�־�3��� �yd���ԉr����D��'��RA���H�I��e'5Q][��;T�~6���H.�JO��$[O�c!^Y��q�W��.�b9�I�
"�^/\Z�'�^tT/Ǜ�GjO,�ZV�<pT��K���f�pe��g���:��^�X�}�F7���ҙ���^&�e�����s[���-�3����Fz���$�v�Kl_����)�� ���.߅�X�k`�B�j�/�^�L~����'�Q�4���zbI�8��$x��Oe~���i��Uo���ӳC���rg�;��/�H*b�ʲ���ҁN(��O��SL��1���Xm*����#�������\�oe"���J���93ϩ��>0�Ɇɲvz�Y:V�>O�sŞ�e"v<��"���yʃ$�bR��y�XG`��~�㡨�W��	����%�<�����y,��A *-�u��Sv�a�&�r�yڌ�&��������?��]�(�k�h7Ȣ1��N�xݒ7`4��eA�0���r�Z������o��`�dRK����0k��87�O��5��;st���hwc-��m��m��42"Y\H�o�B>hd&37HJ�3����� �H쐆u0�n+oq��� �T�?R{Rte#I
�u�r�Lpz������{5�F�0و�����i�9��>C�y�w��X��A���ix��������Ν &�%��l̶��_d�(%��C�B�	��;P�h��Nz��:\h�$.�K��m��<|(��={r�]:S��� bթ-5�޻����媣��HqG��(!��ͯª�XSLŎ�rͲۀ�
�����g XPʯԞ0ߝ ����YLk�L<���%�%#)�I2�� jɑ���ڶ�(0�`?wu/�-����j�.4e=O����@�w_��,W�rXmǜ�q�xT��Rd�v%��6�4R.�1�b�K\��y-/,"J�E:�o�m ����Enqz�n9���%?R{�tw�jV+����N��<"
.m7%��c'V;�XŎ`I�/o�"�B\ޅzt�L%�M�����hqn�� ��H����s4=�8��hjԿ���TC2��nP�v��i�\qH�g�@,p���S�&`��Q�ڦl���lp��?�}SC�H��B}_���h�vs�q�qC%�p�e��$R �/U4#2C&�4T{�l��Dr�3��ܕ�wo��	���=�m�Fⷶ�h��������^@&������Q���> �d',LloKц��О��Y�P��%�]�V�!`���Gu�����sO�#~UbݳB#��8�@���ؕX.#n�Ko���$���ӛX��0���d:��Kgc%@U��B�Źb~��ȷ�%�[`�]_y5G��Yp�o��dn����҇h�y�=5d ��^�s���,c�!I�;����I��/�)I��y��d#� ���,DWUy�$��F���|�|�pW�伴�_,�ha�f0Ix5\��z�f ���T�1�V+�M��D���w�`�:mf��}��Ԟ@]�H�ijF!N�瓞e!��9q�1��	��ښ��s8��`Y���:z�
.��z凷87Է;�K��q���dh#��3��w�^j�v�t��&̈́�Q��sv� �G���� _����(�`�� �/ڶ�B�8��K��H����$钯��5��z��a �I><�N���s	�˱�I&=H3,է� i�E�p'�u/8%^�;��(ls�T���'��R���M�I���ĮO*��͉�D@�9}J��;/�H��Y�\�����CT�uY�8�@[��`؋:'�p������K�3��w��I��t869�L�f$��Ld��˽���Yh	T�cL�Ʊ��d9�O9�tl�ٯ�|ճ�4V�g���#�R{����ԧzv��5�=��K�'��>������+�L�v��gq�P(G��N�^�v���np��w ���� �n�sP�M�+�пa�yh���J^S����c:oEF���A�IOK�# J_���!��r����:��x!�ŗ]���z%Z�Z �x3���ܴx�~?�_�=�[�A��ո�а9�[��^ʝ}4C���=���by��V�P�@Ani�O��rjn�k-����C%I�z3���3�v^!�
�%�'ٓ���t�2s2%��.�ZU�2�x����@��"�a�'֒�R�����2} �6��q���zI}�:W֎���F�g[~])�պ8��$�f3����ʗ�<�}3��;���W�I���y�{�9Զ��I�͔�^~��B��t������>�F�I�ߒ&��N(Z�ƀ�IeH�vMzBm�s=�Td�#��t h
�r]#>��T�_�v8[���7sJ��z�q������	k�/������ְ�KA��@����d5��!�Tyi|9L�j$��G����}�����7�{p�J}�R�_�O^97/\���dP_܄f�f2e��쀝$��`l�T~tu;���õ�6���HuG���iQ���o�g{֥o���֓$<����Fˋ�OE0\� �B5�N�8�o�+n�U�;1��t:;�-��0�������q����D�ޑ��>���ִl�wK��iƌ��i�q;����X�	K4&�hS�r
��d��:�77���#�Km6m�ѸIp6f�1�ګ�UO�cߍ���	?Xǚ��Һ@�MYź\��nW��PZi���F㉾UѤy��V���v��1i*�C��,��z�P]��ڇ��h�c���VyI�m�k2V��c�Xq��$�T���'`o��܁;�K`S��8ٖ����*��s�3���q�7��$�J�����F�\�|�|��"� Ǳ��4&�4oM��F��˄%.ѹ~���+-�ְ
-�ȍ�w����vσ����F����c�4������H��5��cfA'�>K�c0d���iB�[4؆m�a�:�O�n�B��ߨ=��o�o��qR�"'Kbe�Nl_"ǅ�\Vl�Ʌ5�:��mK9�3.+�2��#�n�C{�����NU�_����g��w��n^=//]l��'�lkg��V>LkW^�Q_�3 �� �  ����˞�����_T�q���^���"����?�=���Tۗ���_3ڡ����B�����WȎwl5ӵ���`��5"���	�/̇���:��.��Ҡ��s�; L���k���,7���Ƈ"%�4O�7��L�#H� ��� B�!WēU"ڈ�c�3� <�V�����q�w�Q�z'���kj��������~FP\�8w�����̝��W��pC������54;Klȇ����m���x�yo!D�
���%�����lv;�S8��I<T�l�[�,@��E�In���0�lm����]��O�Q��db��!����7�2�ީ�5�`�߄����"ͮx��c�S]b=��~��TDS���u�eU�ȏ '8(��'b���^��l?����[󀏾j���?B�{	�w����)?�K����~ڡ�]j�̈́���Yqwx���a���>�SC����vc�`V>
�pE�	��7�Z̈Bn+S	�Ź��ɀt��)��W��'�I�˞'��ٱ�Q!�z��.�a��1 ���m4ʦ�|�o�<���S�ꄔ��H�6�y D��n3R��7��k��*�w��ϡX㿀�y���]v�P��
7��a�2F������=�\�
��`�UEMr��刜m$X����3���c���:��B�G̿Z_�K(�ja~R�7y�nq7�%�M,�3��S�YY�@Ņ�2[�{n�Ʋ�,�����V�b0���d���o�a�8C�f�2�rC���������M?0W��z�,�;ǔ�ɥ��SW�d)��`	 �%V�4�E�u����y3|�\�#0�C��B�����D $����&��M ��B"�n#q�����5W�s>*�����r��K�����<&���e�,��a|��lE�� ? ����#����tN�E-U�p���JS��A>hz���=6̡-b�i8�"$���H�����Pw�������&�����ԩzs���J��ծ����~K��+-�hn'�և�'�D��������k��܃q��1ܥcȭ4��˺���7�18
6� ��i�I��k=�-o�l�N��n��F�]	��4Y�/&;��L�Oʊ���qfƗ6^�3��'���w%�FףTST@}�j�o��¿�AÈ���b�#h]�+A�8�w{K��V,	�q�汆�~�-Q��ȹ���jF�6��Z�O>9��6'�W�'����kTxˎm�^�3�M��V���P�!>A� g�X"�� 3U�&�G#�:�!��+�%�j=R��e����\S��4'?���2���@fkc`���IS��a�\�V٤3�OS�v��"��B�����	��c�z�_���Wp��h:�� N���_R���ɲ��3�Q��˔/��[��:"�Z #�ޑ�a`����k��8��66�~�eB�����'��	k"?��6yE�q�nn�2�[��ҙ.Ym<�#�Wh�D7Q�4Vr9������(�����jjJ_��ϗ�X�\���`�$2��d����IkO�8�n��X�KY���%���2��74I�2��S���d�&�6Q�.�7-��E~����a��^n&���1����I��-�M����%���[��k����oy�=�#C��7����t2�l�4���*g��Nd�����,],�2kf��(�4�TM��Q�xlӧ(�c׿��$h���f����k9���*�w��#�P9�F����v%P-C,�g�F���&�*�E��F8o��ڸ7�w	��0�`A
�~�,/�=1���$uܛ���@�PC���z� ���@�Y�ΌX�/Ѽ���ED#��b�;�p|���vpRו�ᚵ�:ܭ����6���Q�5o�.x�Z�F�R3s�,��I�{���`��O��]pܯ�v�К�vHK�׃7	3����Fm���/C������=E27�,�S������4@kK��5�|w����CtS�r	ǰzל���n/��ӊ�����3�=��9VL��y]gx���9��+~�9Np'�Rp�{��や|�P����i.��I�5��B��@�~$�r�7\�ޜaߝ�'�mvi]��|��ji+{a0]�G�v����;P������:'5A��-�'Ǿ��r���z���!�C} ��p����s����������_ �Ę      X      x������ � �      G      x�32��22��2�ˊ���� ��)      H   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     