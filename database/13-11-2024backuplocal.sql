PGDMP  
                
    |            sso    16.3    16.3 N   N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    16398    sso    DATABASE     v   CREATE DATABASE sso WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
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
       public          postgres    false    360            R           0    0    AcademicYears_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."AcademicYears_id_seq" OWNED BY public."AcademicYears".id;
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
       public          postgres    false    215            S           0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
          public          postgres    false    216            d           1259    33647 	   UserBanks    TABLE     �  CREATE TABLE public."UserBanks" (
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
    DROP TABLE public."UserBanks";
       public         heap    postgres    false            c           1259    33646    Banks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Banks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Banks_id_seq";
       public          postgres    false    356            T           0    0    Banks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Banks_id_seq" OWNED BY public."UserBanks".id;
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
       public          postgres    false    217            U           0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
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
       public          postgres    false    365            V           0    0    Boarduniversities_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Boarduniversities_id_seq" OWNED BY public."Boarduniversities".id;
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
       public          postgres    false    219            W           0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
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
       public          postgres    false    221            X           0    0    Cities_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Talukas".id;
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
       public          postgres    false    223            Y           0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
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
       public          postgres    false    225            Z           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
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
       public          postgres    false    354            [           0    0    CompanyRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNED BY public."CompanyRemarks".id;
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
       public          postgres    false    227            \           0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
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
       public          postgres    false    363            ]           0    0    Constituencies_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Constituencies_id_seq" OWNED BY public."Constituencies".id;
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
       public          postgres    false    229            ^           0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
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
       public          postgres    false    231            _           0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
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
       public          postgres    false    233            `           0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
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
       public          postgres    false    235            a           0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
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
       public          postgres    false    237            b           0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
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
       public          postgres    false    239            c           0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
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
       public          postgres    false    241            d           0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
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
       public          postgres    false    243            e           0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
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
       public          postgres    false    245            f           0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
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
       public          postgres    false    247            g           0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
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
       public          postgres    false    249            h           0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
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
       public          postgres    false    251            i           0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
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
       public          postgres    false    253            j           0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
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
       public          postgres    false    255            k           0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
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
       public          postgres    false    358            l           0    0    FeeStuctures_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."FeeStuctures_id_seq" OWNED BY public."InstituteProgrammeSubjects".id;
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
       public          postgres    false    257            m           0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
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
       public          postgres    false    259            n           0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
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
       public          postgres    false    261            o           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
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
       public          postgres    false    263            p           0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
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
       public          postgres    false    265            q           0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
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
       public          postgres    false    267            r           0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
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
       public          postgres    false    269            s           0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
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
       public          postgres    false    271            t           0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
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
       public          postgres    false    273            u           0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
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
       public          postgres    false    275            v           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
          public          postgres    false    276                       1259    24738    OTPs    TABLE     b  CREATE TABLE public."OTPs" (
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
    DROP TABLE public."OTPs";
       public         heap    postgres    false                       1259    24743    OTPs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OTPs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."OTPs_id_seq";
       public          postgres    false    277            w           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
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
       public          postgres    false    279            x           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
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
       public          postgres    false    281            y           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
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
       public          postgres    false    283            z           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
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
       public          postgres    false    285            {           0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
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
       public          postgres    false    287            |           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
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
       public          postgres    false    289            }           0    0    ProgrammeSemesters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;
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
       public          postgres    false    291            ~           0    0    ProgrammeSubjects_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects_delete".id;
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
       public          postgres    false    293                       0    0    Programmes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;
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
    board_university_id integer
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
    phone_sec numeric(10,0)
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
          public          postgres    false    352            0           2604    41925    AcademicYears id    DEFAULT     x   ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);
 A   ALTER TABLE public."AcademicYears" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    359    360    360            �           2604    41926    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    41927    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            5           2604    42048    Boarduniversities id    DEFAULT     �   ALTER TABLE ONLY public."Boarduniversities" ALTER COLUMN id SET DEFAULT nextval('public."Boarduniversities_id_seq"'::regclass);
 E   ALTER TABLE public."Boarduniversities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    365    364    365            �           2604    41928    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    41929 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    41930    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            )           2604    41931    CompanyRemarks id    DEFAULT     z   ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."CompanyRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    353    354    354            �           2604    41932 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            3           2604    42008    Constituencies id    DEFAULT     z   ALTER TABLE ONLY public."Constituencies" ALTER COLUMN id SET DEFAULT nextval('public."Constituencies_id_seq"'::regclass);
 B   ALTER TABLE public."Constituencies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    362    363    363            �           2604    41933    Countries id    DEFAULT     p   ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);
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
       public          postgres    false    262    261            .           2604    41950    InstituteProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);
 N   ALTER TABLE public."InstituteProgrammeSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    358    357    358            �           2604    41951    InstituteProgrammes id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammes_id_seq"'::regclass);
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
       public          postgres    false    298    297                        2604    41968    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299                       2604    41969    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302                       2604    41970    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304                       2604    41971 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306                       2604    41972    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308                       2604    41973 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310                       2604    41974 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312                       2604    41975 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314            
           2604    41976    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316                       2604    41977    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318                       2604    41978    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    41979    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322            �           2604    41980    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    41981    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    41982    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    41983    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    42206    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330            �           2604    41985 
   Talukas id    DEFAULT     k   ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 ;   ALTER TABLE public."Talukas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            +           2604    41986    UserBanks id    DEFAULT     l   ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);
 =   ALTER TABLE public."UserBanks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    356    355    356                       2604    41987    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332                       2604    41988    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334                       2604    41989    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336                       2604    41990    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338                       2604    41991    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340                       2604    41992    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342                       2604    41993    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344                        2604    41994    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346            #           2604    41995    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    348            (           2604    41996    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351            D          0    33738    AcademicYears 
   TABLE DATA           Y   COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    360   ��      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ��      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ��      I          0    42045    Boarduniversities 
   TABLE DATA           f   COPY public."Boarduniversities" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    365   $�      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   "�      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ��      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   o�      >          0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   ��      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   ��      G          0    42005    Constituencies 
   TABLE DATA           p   COPY public."Constituencies" (id, name, district_id, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    363   �      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   ��      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   /      �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   �      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   {	      �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   X
      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   �
      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   �      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   2      �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   �      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   B      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   �      �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253         �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   �      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   �      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259         �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   m      B          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   �      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   �$      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   0.      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   M.      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   �.      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   qT      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   CU      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �U      �          0    24738    OTPs 
   TABLE DATA           s   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    277   �]      �          0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   J�      �          0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   Ä      �          0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   ��      �          0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   ��      �          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   }�      E          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   ��      �          0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   ��                0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   '�                0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   ��                0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   G�                0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   �      	          0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   �      
          0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ��                0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   V�                0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   �                0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ��                0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   7�                0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   ��                0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   =�                0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   ��                0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id, last_completed_qualification, board_university_id) FROM stdin;
    public          postgres    false    318   ۡ                0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   �                0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   T�      �          0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   ��                 0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   Y�      "          0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   {�      $          0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   ��      &          0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   ��      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   ~�      @          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   ��      (          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   ��      *          0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   ��      ,          0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   �      .          0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   C)      0          0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   �)      2          0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec) FROM stdin;
    public          postgres    false    342   ?*      4          0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   ,Z      6          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   IZ      8          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    348   m      K          0    42158 	   Users_new 
   TABLE DATA           �   COPY public."Users_new" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    367   ��      :          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   ��      ;          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   ��      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
          public          postgres    false    359            �           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    216            �           0    0    Banks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Banks_id_seq"', 22, true);
          public          postgres    false    355            �           0    0    BloodGroups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);
          public          postgres    false    218            �           0    0    Boarduniversities_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Boarduniversities_id_seq"', 45, true);
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
          public          postgres    false    250            �           0    0    EntityUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 187, true);
          public          postgres    false    252            �           0    0    EvalTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 2, true);
          public          postgres    false    254            �           0    0    Experiences_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);
          public          postgres    false    256            �           0    0    FeeStuctures_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."FeeStuctures_id_seq"', 313, true);
          public          postgres    false    357            �           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    258            �           0    0    GuardianTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);
          public          postgres    false    260            �           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);
          public          postgres    false    262            �           0    0    InstituteProgrammes_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 122, false);
          public          postgres    false    264            �           0    0    InstituteStaffs_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 34, true);
          public          postgres    false    266            �           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 6, true);
          public          postgres    false    268            �           0    0    Institutes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Institutes_id_seq"', 598, true);
          public          postgres    false    270            �           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    272            �           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Notifications_id_seq"', 109, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 163, true);
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
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 440, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 109, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 413, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 123, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 195, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 175, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1430, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 371, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 384, true);
          public          postgres    false    347            �           0    0    Users2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users2_id_seq"', 1, true);
          public          postgres    false    366            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 558, true);
          public          postgres    false    349            �           0    0    religions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.religions_id_seq', 1, true);
          public          postgres    false    352            �           2606    33744     AcademicYears AcademicYears_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT "AcademicYears_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."AcademicYears" DROP CONSTRAINT "AcademicYears_pkey";
       public            postgres    false    360            =           2606    25007 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    215            ?           2606    25009 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    215            �           2606    33655    UserBanks Banks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."UserBanks"
    ADD CONSTRAINT "Banks_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."UserBanks" DROP CONSTRAINT "Banks_pkey";
       public            postgres    false    356            A           2606    25011    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    217            �           2606    42051 (   Boarduniversities Boarduniversities_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_pkey";
       public            postgres    false    365            C           2606    25013 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    219            E           2606    25015    Talukas Cities_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public."Talukas" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    221            G           2606    25019    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    223            I           2606    25021    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    225            �           2606    33638 "   CompanyRemarks CompanyRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."CompanyRemarks"
    ADD CONSTRAINT "CompanyRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."CompanyRemarks" DROP CONSTRAINT "CompanyRemarks_pkey";
       public            postgres    false    354            K           2606    25023    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    227            �           2606    42011 "   Constituencies Constituencies_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Constituencies"
    ADD CONSTRAINT "Constituencies_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Constituencies" DROP CONSTRAINT "Constituencies_pkey";
       public            postgres    false    363            M           2606    25025    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    229            O           2606    25027    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    229            Q           2606    25029    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    231            S           2606    25031    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    233            U           2606    25033    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    235            W           2606    25035    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    237            Y           2606    25037    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    239            [           2606    25039     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    241            ]           2606    25041    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    243            _           2606    25043    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    245            a           2606    25045 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    247            c           2606    25047 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    247            e           2606    25049    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    249            g           2606    25051    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    251            i           2606    25053    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    253            k           2606    25055    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    255            �           2606    33702 ,   InstituteProgrammeSubjects FeeStuctures_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_pkey";
       public            postgres    false    358            m           2606    25057    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    257            o           2606    25059     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    259            q           2606    25061 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    261            s           2606    25063 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    263            u           2606    25065 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    265            w           2606    25067 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    267            y           2606    25069 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    267            {           2606    25071    Institutes Institutes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public            postgres    false    269            }           2606    25073    MenuItems MenuItems_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MenuItems" DROP CONSTRAINT "MenuItems_pkey";
       public            postgres    false    271                       2606    25075    Modes Modes_pkey 
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
       public            postgres    false    367            �           2606    42173    Users_new Users2_phone_key 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_phone_key" UNIQUE (phone);
 H   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_phone_key";
       public            postgres    false    367            �           2606    42169    Users_new Users2_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_pkey" PRIMARY KEY (id);
 C   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_pkey";
       public            postgres    false    367                       2606    42175    Users_new Users2_uid_key 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users_new"
    ADD CONSTRAINT "Users2_uid_key" UNIQUE (uid);
 F   ALTER TABLE ONLY public."Users_new" DROP CONSTRAINT "Users2_uid_key";
       public            postgres    false    367                       2606    42177    Users_new Users2_username_key 
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
       public            postgres    false    308    308            �           2606    25177    religions religions_pkey 
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
       public            postgres    false    360            #           2606    42052 1   Boarduniversities Boarduniversities_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_state_id_fkey";
       public          postgres    false    312    5297    365                       2606    25189 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    267    223    5241                       2606    25199 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    251    5221    249                       2606    25204 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    5347    348    251                       2606    33708 9   InstituteProgrammeSubjects FeeStuctures_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_institute_id_fkey";
       public          postgres    false    269    5243    358                       2606    33703 9   InstituteProgrammeSubjects FeeStuctures_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_programme_id_fkey";
       public          postgres    false    293    358    5271                       2606    33713 7   InstituteProgrammeSubjects FeeStuctures_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_subject_id_fkey";
       public          postgres    false    5319    358    330                        2606    33718 7   InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_userdoc_id_fkey";
       public          postgres    false    5325    358    336                       2606    25209 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    263    269    5243                       2606    25214 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    263    293    5271            	           2606    25219 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    265    5295    310            
           2606    25224 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    265    269    5243                       2606    25229 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    5241    265    267                       2606    25234 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    5277    297    265                       2606    25254 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    267    5241    269            !           2606    33751 5   ProgrammeSubjects ProgrammeSubjects_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_programme_id_fkey";
       public          postgres    false    5271    361    293            "           2606    33756 3   ProgrammeSubjects ProgrammeSubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_subject_id_fkey";
       public          postgres    false    330    5319    361                       2606    25264 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    5277    297    302                       2606    25269 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    5287    304    302                       2606    25274 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    5219    310    247                       2606    25279    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    310    348    5347                       2606    25294 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    348    5347    318                       2606    25299 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    320    259    5231                       2606    33723 .   StudentGuardians StudentGuardians_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;
 \   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_user_id_fkey";
       public          postgres    false    348    5347    320                       2606    25309 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    328    5289    306                       2606    25334 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    348    5347    332                       2606    25339 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    237    5207    334                       2606    25344 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    334    348    5347                       2606    25349 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    5347    342    348                       2606    25354     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    346    297    5277                       2606    25359     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    348    5347    346                       2606    42039    States fk_country    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES public."Countries"(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public."States" DROP CONSTRAINT fk_country;
       public          postgres    false    229    312    5199            D   d   x�}�A
�0D�us
��2�6jrמ��cEp��f��D�ô�[[ƒ���8|�E��zJ<%}H ��/�U�]������:P�MA���>��ED��*Q      �   s   x�3�(��JM.�4��,�4202�50�56P04�24�20�3�60�26�'�e��W�Z�W��Y�ihI�IƜΩE%�i�ɉ%��y�@��f��XPP��W���
v��1���qqq DB"      �   �   x�}�1�0���>{Uˎ�$��^���ĈX�������{F��}�%M>k̮'��[���4���ʉV�$�����ӆ��f��#gZ��*�ᐱr�:�Ij��#� ��X��+���,�k��P���|ܮ�#&B�,�+_�����l�      I   �  x��W�r�@<��b���VO;����������2�6֖���jE�����?�K� �:).�]5���pe�W�Z���^��K� H�Gq:��PJ!�q���hTDy�����$�����z�F1C�J4�b�N����ܣW�/($, i�c�����h|)&ʭU����@e0��uX�C29B�����,�8U֭4�3�z�;�@ ��[mAF,@���Y�hcu+�v���i���+�g	�pQ�'������'�Pw�
�⤣FHyhHy �R9���h^���8�u[��nSj�Q=��t�F{[ S�B�/���[�F<�38_���i�G2T�|�~Y�[4�3����n:rC4�=zM�g�4�P��me�r���-\�Z�
ݭ6=
<�Cy�2m�������P��)m猂����P۟T�3��@���1e��j��GQ�G��B��t�W�g��.ћ�o3mP��_��)\���v~&���nJ���&hVHwG/HGL�^k��SyT@�\��6��?/#OM$̺
{$c��Ib�wF|F?lU!�m��������愉<sJ��[Q��f������+�&��F�-p���eMW%��%9����6���eA'-15��wqGo�
d�c}Iү+mvá^�<	��a���}o7k��kl=��q�LU�����H����L�r*���*t?���0��?��Į� ��^'Os�Ho�J��h�v��t���^��`��#?����"��)Z����v�      �   m   x�}Ρ�0EQ=�x��u�ih%$$�#+6��YK�E���:�����O��B}�ةo\�Hْ�ַ���^YiƇ�ESٸU��		j5�Z9в� ��ŵ�&����6&      �   �  x�}��n�0Ek�Wl���Po�i�ƀ� �f6�Q��Z�Ԃ�����C��|���'G��(���uT�1ȗ�#�}
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
5&̆�	����>�Jw�.ӷ��3	K��}a�rے\U�B- �v��|�3$0�u��C������@����z8U�$-"1���'���gi-�hcr]H�\�;0��E�>�-wa3��jp$�j�!��mi�i�1�3O ]�_����G�=�q"D���3�`� ��~8'''�q(�      >      x������ � �      �   C   x�3�LLNLI��L��LM,�4202�&�%������������������������~Y�=... ��      G   }  x��ֱn�0��x���!@����Q%���VJv�`�>}��@��>a��I:�非H���d&�TdiV�����6��R��xɊ���=�(j�3@0���}�q�����m�_�����N���x�labM�l�~�0Sd�Z�X���{kp��Z6|p��3�Z��i^��qf�4wqb��5~���y`��В�!$b���M)����2�O�M)�ua���=��L�0,�E�y��8�Ft�n��a�&��ٴ���'��Kz������5��5k:�E��p��n~>?0S�O%c<�IR��ڰGVG�t�EC�"��t�`��D؏,���;2�U�eX���v�@2�"�����g���2��I��_��      �   s	  x���]o�8�k�W�r�)�o�wI�i3I:�&-����6�f#�.%���9�PJ�,��
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
�0��9��%�r�4mV]�\]���X�(��*Vh����N�}�K*�E��Y�n��L�H����k��Hl���c�1N�ljβ��t	9͡�k^ìS����`�1N�t�g�v�Mk=ZŎ~�J+vqSb.�H���;o�"��S��I�yO�      �   	  x��Z]���|�8�W_���'���2f��2=�NX���y8�Q�1U��Ȗ��������P��|xp�s���#z��Җ	 � !ĺ3A�F��"��(Tᝲt(C�+[��zs���s����K3�:�[-@��d,��p�zD���m�h#� �{{JC���Q ��&]`^�C�!��@���(n��C_6�F��Ww���x����okhu$ b��ʺ4$=��Y�����������P����BR�=�{�ehu��[���.?8� ��=<8��ු�N����[��6Ńt��č�J��0�O`M)�W��_��L�.��bUY�+��Z�#�^J�FV V���H�^p����#��.@��N�CB�CbH{�Pot�`(�N��� �D逆V
�D����ŲS#uV@�W����Ǔ��#~����a�vr�DA�`��p�4���wz�-	��*�vd�X]�39��{)�Gm�e�Y]�[! �7i������"�U��Q~ IЀf��=��z���ȷxr�x��ͬ.�ݥ�� ���{�fV�Mi(W�V<YP?w��GY]�;�E�vH��#�.>�V�TB5^���Rde98����~�0��TTSҺ���FVǈt�0�����g�GV���k>	��ʎ"��C;ȷ,0�:�n^�@�R�$�u�RH��������T��5��\�=���4�!����5(�4��BQ�{!^5�:N�
C�ԒF�=����Q��&PI{2�c���1Ȥ�{���o��[#�1�B�?)���Y�`��������C�l��?�=�:�����LW#C?�6�:Q��~�ꯥU���(~�� Y���`�H� ;{uV'�7�9B�MI}�����-�@�V~{dun��C ����1��� )�@�e�A����V'`6H9jC=�=�:���'P��U�ģ�=�.a��(P+=�`�2�@C�K��ԥ��H;e�%�V��lP��m�e)��A>^{ӹ�%0�J����>G��v�����&	��l퀐(���{huI �%����?Zv� uV��sC���n?�Ft�7���a؊YcT�0�djJc���%L9���q0�1����%�|��k�J[G�F8��@e1zLq.F�1��x��h9��7I��rK��˘h_3�༚ ��$��:��ա���%�"���n"@�X)ҷH�uU�I�	�.�&���>�C��bm���	�niD�[$��u�i�5$�I��Dq�"%�ۂ���<�H�q=;��n)n�ے��e�-��@�k��-� H��a�TL�wSR��<��"R�R<�e��T�t+��Ë�2�O��H�7�^�G���W6ũO��ޚ�J����4Jk8�n�Y�RiG��*��L�w3Q�ܪ�8��*�M��E��Yc�O�Dz�n�q�/���*�T&�[$}�᠁�y�̆���kRj#��P�x����P`yh�j��S˘�<'f{�
L�g�M�Z�R��t0-��P���y��3���|�z�^�}����&��-B��]3���V���g�+��1�|$����$P=�v�k$0]o��4/1f��
L�M����
��6kN��e(0]�����t����\4f�"�<"į��9?��ҹ�Χ�e(P�[�9ߠ� ��j����z�y�W�4��\�=���bnД��P�[��6xk@QO���B2���� >�]�Y�΋^�8�YI�Yh�g}��k�d���I��ޜ����t2���~�I��	:���Yg���_J��u1��<�����D�iz�f�;�8��5'��W��}>�)P�*Z�<��IT(���jQ~:{[~f{}>n�͒��-�OS�=�/�N�l����f���,�i8�iY���}�3aM}z��ۭl_>�9���N��-�O'H1G�e�%HFk_�C١:cU4Vެ���CK��V͚��%H���e��%Q����S)�P����X��<e����9������U!��^�|z}�2�̪��S�ϟߝ/�^�>�M�j��g�v��Ӡ/�/lҮ��W��!��rˈ�Z���,@x%ռ<[.Z�*�9-^�bE}�c�S�+�y�Z��*��=[�ի`�!�
�W�W�9�y��<@�)i�)F�ZU`T2oϖ�ڝ޼'60�H�ޫ����@L���c�\U �J�|�XV �Jb��/+P����ڲ5Vd=��-ćۇ��W�e����V?[-[�^j�P��cD��y]^�_T�ǿź���>����Gt��K��H�I)�H�f�V ��D�ohu��P6���Z�߻s�_M6��      �   \   x�3�tvp�,�4202�50�54R04�21�26�3�4�6 ���rq�%��$��B�2�50�50Q04�2��20ӳ�0E�[�+F��� ��'      �      x������ � �      �   d   x�}̫�  �|�W��> 7>�f1[l�R�{�A�g;c^T���aJ�����;
I�_Q`([��.jl6/E�)ץ�f?����ձ8��սg��\�-�      �   J   x�3���/�H-�,�4202�50�54U04�25�21�
i�Z���2�tK��1ƜE)��y���� �,�      �      x������ � �      B   ^  x���M��8���)f?��k�1'�c��1$m���%��i����H�����u������������r�k����wm�������]�g��TP�nc���A�ܚ�V�V	
���U�r�&A5���ilm��:D��tl�sր�ۚN���	뀬ۚ�Vg��u[S�7�cc?!l:,o��3�ѧQF�f�����$sXޫ@Xq�8}�0���2��q�W��<��9:�[S>6��LX�aݚ򩩢��Ӡ��p�i�������P)�$(�d=Rt6���̭I�H�S�à��5���4�ƥ[����̭�X�o��:�2�&�/��0�ݚĿ$��2�nMŲ#~6����i隼�"L� (�nM��;EAsk����]̭�Z�CP��ܚ$S��$��˭I�|�K,�l����5�C�%ԩ_HXp�c���3�:�E뮤����[��]�H�x�,���$�s ���N��m�|c\oݚZ�od,�nMmlW)�
L��4�ʲ�l����7I�[e����)&�&aH�_I��
S�o��9`�qk��֎�`���H���]�WH�Z�0	fC���nOY0�5���F���WJL�'̬nMc7)�VaY��M$L�g�*��a�Ȓ|�[ŷiڭih��e������4��3s1�ݚ���[�S�ݙ$�s<�-)	��[ӱk�*�%r��kS�a0�ݚ��[�L\VuKJa0�ݚkk�3�/l6a��5����rFk�ꝗX���(F�[�1�� �b°tk:��!!��ʺk������t��j��p���qj�_��h����b�GN�.qj��p�w�wN��)����S���I\fi_��P�k:�h�!VYs�&g���4�n#߂Y��=u�ee~�y���Yݚ��}�	l���~gފ�aXӴR�y�"�J}�B�0�i^;\���Q�����`yW�'5]�Q����:+ˆ˴�M��v�V�Ve��
�9��*�;��AN���8�g�?g��:��5�̈́u�[c�N�N%�uV���qp�A�����g��#@�^�u-�X�/ӆ6�^���H��F���|:�e����λH��M�Q���G�n��`Z�7��`ɑ��_J���
9�ui�h0NWi]w�B+����c�/�0N�*�c-���CVi�>�8��^�u�:d�/E��>b^�Y(�Y��*f��\��5�@q�L���W���?���v��|��Jd����PT-ӆ�<��lT"U_2�S��Jd��kV�e��	'���Q�l�|M8ḭ�<N�0���m�c�`6*���m۩��Қ�^y��4��`�,�)e�v�P_�NC� �4����B�m�5��r��֔��:9�f��R z�����>W"��JA9Q�/�l� 5\a���
��4�k˴�4U�rX�f�
��*�W�Ь6�k8n0�ō�,��a��M�iץҰ[�mQLm�uj�UMv�+ցb4�ٞ�ٲ����k�ݵ��:�7Va�n-�m"ЈO	$�3�f���f��t�5����{�F���O���E��\�?�gJ���0+���P�����c�a������
d'�S�M��,Æ��Kov��K0[.�nBω;� �L���0��#*BJ�z�y�*�V��hU���5�j�,kI|�J*1��]�#�B�cf����t(���<�Hi��v�f�c6��0+��A�H�΍[TVaٚaoъ5O�Uq�2�z�&*m�u��C��t�h�q�o�ޛP��A�s��Ǎn�=}�i��A�	x3��f�e[��p	��0�v)B���F�����Ӧ4���i�s�s�h;5N��8��% ���ivp 4x�%S��L]������Vq��\�X�8F�A��v�
i����-��8�q���栒@]ce�NT���t�5���*��#�����^�U�NV�C-\X��4ꛆZ�q=p��̾n�Jq˸�UTpj��*���,2`6���qp	ńaM�:S���7�P�V��8p0a���\��B�pVa�5`Q�p��
�/}>�D ���Y�UhOT�Uh�M�*��Uh���$�(/��l�@i0JCX�~�`�e�a��6b��*�wEe󓶮�h.�B��5u(t���]�`�P����i!���f~��ԕ�Uh��0�B1XX�vi���a(�
���D��` ����
�yp�wC�T.I��J�v�yC�TZ	��'��p�fk��w2��U�mTߝ���p8#�UI�C!�=0;UVQcFY���*8;V�=/����Si��d��"��
̎��
u�R
k*�.�_�P[V�]%>���
qQ�u�_�PV�U�Z����BJ���"���W��c!�AR=W�44��%��$(
�Ю�-eU倂��
����G��i�[JCAV����8�1�z&�B���R(U��P�V�Yc��Z�:��e+��[�^ʥ?>:�R�a��ƐiL �hXvXχ�
Ѱ
���u�B�VȘ��b���/�����9�����Uh���^�����DE��*���с��/N�Uh�I|��~�f~Z�֙�G���j?��:�����?�B;��Ǟ��?�B�L���ܙ�Ǟ��?�B�{OB��I0������*4*���?f��V�� F�/�\Cp0�^�I%0_Ѩ�+��|C�T��C	�T ���_�`Q�=�����T����U�����O�Ш\Ş�����Mϻ*zG�*����5՝*V�y�*�!X�Ь����?G�����an��`%/�UZc
��h�V�|>'� �Q�+�>���+��d&�<���CO&2��a�G󳆜���Ğ�5H4?kޙ��+Zf"{f�h��\�6���U.�t?��]���������Z�      �   (	  x���[n�6F��U����u�g-]F���jD��X� ��I$?��x�t���[~��#�?R�#�_�����ןg��O���������LÅ�f���.��o�P�rՃdb|CU�;����e��0���/k����Q��eC�r!!_� +a6��e�T�?�ﲆ���Wv-�kM�P
�xYC��@�`[�ˑ
PxB6���E�eYClJ���pY���a0`��P�;����A����}��AR()�tӲ�SjHi������˻�!e��^±�Pʑ!��hYC��<��m�J��,m��`,kH�((���P����f>��"��0(���
[+�hMH�,w����e9�OwL�e9�F�eYC.��cJ/k���h�s����8L�eY���$Þ6W��Ό�s��2 �9���Le�)Э.�J���I���?�lBR7@q80��5��wBiY��iY�liP{̣eEd�ViYC���q�"�K˂ٸ�A"�к`-k��^Gv)�Rzp�Е��@I�K)J_c2�Kg�;�瘦wN1FW��=��K���P�5H�T�MJ;�����w`��Ƃ견�%��c٤d���J-kh�Q;>�T�$w��P��5�&&f�"�KT�eM
�A�eM&T	��������\9���C�CɴR�'����"OD�'BN�H�0�]LU�?������K�+��K��6k�])�Әm�8�(��PZ�5�K1ɫxw1C��Cym�0�9Y����o�f#R�E�S����'��P^�5�z�t��՚5yi�s�mL;��ύ̧�NCԗ�{"�1bya��u��bY�5� �����J�U���\�p��hfg��#F��eW�W v1mb����^�p���׆v~��kL�+����_`��x�U̍��*�1�R�יmN���r���̇T����9E9��0����
�^��M����M���ls��>O<�{^cr\gms.�W1��%�_�@��9'N��/��d7UzS|������U��"���+�`.�|msf<?+PM�U8M��y����'��A=Mv�':X�ݧ��W�r�4. b�m`V����}�3'�AQ�ƅ��q��ԲTo��c3�a65�W*���.�
�i��9�+ֆ�^m���%R(`���V���< ��	l1�p�������Mw���ǻ�����
G�8�����%�
��n��:%C��o����)��Œ<k����]L�ZF�I~�������������r�om9Y/A��s�S��o����),�<*��ӔS]���H����m���	c�R��f�_uk�]��M�Ѡt�.Y�6�.��}T�	uj��GU��)�w1R(�~U��)V�H6�AWݞj��z|�ҕRݥ��x��I�����}�51�6��5Dy�'x|��V��B���z�׵}�SNV����]xfN��u��=w�dU���ms�����hV���K�����~Uӯ6�I��&��`�uF�����+�_*os��R�xP
�Ia���O��9e���t�y��0gX�MJ����l	5�p�����ۜ�?�ja3-�s��c{T��g_�ʨ֥��j�m�l&�y����#���]LQ�J����Q���6��J�y�dX#o���3�BŰ��8�'�̛�k~��G��-�5?��st�"�24�FlQ6�p�r`N��r�yF�qPy��9^�����>��ۦ�*��������
��f�5߰��o���st�TT��Ng�c�o��F���`S�Y�3�$���ۜyy��g�3o��[�`{�Y�3����λ�y�ܣ�S7�p�vs�y�sM�����֫��>�%�F#�+���M�,y����w�
G����bۻY�3��|-��T�t<���A���ҞmN?:5`3�Y�3)���]�59���ZC~�@��v�}L��鮤bg�Y���������Y���q��X��l�x<�(��p�;QLS��<��*���Iȱ�J����c9��7q.^d��]f��e89�9�pr,��K,w����<�'r��Rˣ���$�Ľ�����y<�ùG�^(��ƕ��E�'1)�'��Q��ѥ�|���r��g�_8���������G���I�
��*���58-ˋ8̊�u�qF�My����>3J�E�/�
��(����˩/�|av��F��h�Ya�	��=w�'1+��T����r��˾J�~��p0K���T����$f�}u��:_�^�_�-�79��V�֦�2��rݬ�ae��p��O�u���~����w      �      x������ � �      �   �   x���1�0����Wt���%giV'����B4�֡�^�
������&���5�R��� vB�j�R��8�Wd���Ѧ���!ư�I�q�[W4�dvL��滢���>�����n�dgDQ%9p]Q�C��r,+Sٜ�������k��__�*D||�_o      �      x��}�v"I���)|�U}q���!\����="P�No�%J�K�Y�Y͙�}������&�$c�B�88uNv�TR�}�����gf���������7�U����Z�uU�]�{�^�����խv:��F��jퟛ����߃���?4�Wiկ�{�ҡ������8MT���n���u����O9��@�wi�'hB�{�����D�����O����L��Y�n$�1�fx�8��e�A�� ����[���]���D�%;�,�����}졾�Su{*���0�+����� 3bm�������		b���\؁f����*��R!\o ��g�������7w�����]Ԁ!���M�}8.!�EcF�!�`�#�V��.�� 	�G}�b��� ԧS�DO`A0oi@Ay:n%�(�\R�Ɖ��`�4puH0�(({�ըKq��"�3<�,�CF����hJ@�8 ]������T�9<�B<mOG�$��ώ

o�+J��< �qB�
���r4��r������%9I�IGAҪ�Y���b�K��=&�	_UEC����~��u1��_�斧[���l����]��TGMC�8�[�~��t��q�V�����V'`�"$����=$�&,%&���N����VP�<{J�g;�����q�L��"=Y�YOA֭)Ȃ}h��(W|�\�r�wK߫�+�ܽ�ח��ׅ�U��r�_b�5ķ�	��!����h�3	)X���F��×��+Ą��c�<��b~��Sx�����Ө*	�� ���B����4���4j��
<�ـD(���/X8��Z�E~�<�_E�.�8�ԧ�=��YY�B��� �ÄX�T�u��`���	������1�Ã"ʨ÷O��+;kU��#��/ o��I��5s���ʏ��E�k�O0s�4���S��#�x��܄9�0���}� ���Ȕ��]��Ȋu7 #������J|���X���)�� g�xz
��-C����%s=.��XOO���l��K)Vʿ�{�P��Q��O��-�Q�t/.�P�^\z�6� K�Q�:�������m��H��\|�.���
���g=<//�d_��^/�P[V� �`k*���ɾ��`
�f9.N"��_���(T������;uA
�V��
�PqV�(	|�9ӀQ�8yv|�+�z�Mfު��,V��;���5�5+
�oS��(J���ξ.R���˽j�d�[BƧ�e:p��z��>90����]�j������b���)]\�gZ�Ӭ!^p9.�ׁ���@��y�\�Y��03���Ǹr����|����m5[�WS���,�h�L[�t_�_f�t�N�l:���	�Z�'�Ϣi7>EO�狗��{�ҙ�͞����<��O�����3gm�@ǋ���7{�,�%�A��#C��c�ő�!�{�~/G7!Cw!\;��NuP��?�����8�ׯ4X��L���,^_�ˇ)����b�x�=X�����9� l����[v��e i�L_ӥ��
x��t�u��i_��#�/ X"���m�.�� �EK@*�Ƽ��k9��B�]�Q������i9{X���˩0�`��i6�N���S�&]-��)�ɧA�h|�h�4Nb���^`�>�%.#���Y�I �"z^���y�J�|����*0��e	��"7�*ڨ����%�˖	�1�����8]�MO�;{��~HW���"a�����������_o}dU�u����Y��>�C��`AA�Y��9�]�N����{��~�=XB�;�`��._Ӈw���z���ʥ�O_���;��m����ك�Y�R�P^SX��~_/�M�X��s�m������)h���"��6��f�=s~��V���4����"o���#,W�m=�:��ǭSQ桱+{�F�m��s��'��;X~�!�j՚�Z�����kM;ap�n!��.�bi������U����𐟁���O� ��ۋԔ�`�s�^'���^�p��ܸ2�\�z���~k;:�8^�#���-v=���Ma'v66X/��ܮ���"Kj��<�L���z������S��&)�$-a�a�=�� ;Ŀ�9�#5��ǌd!�Yk�4kSX�,ӷ��2�[;{��ǵ����y��"�d>5�6[�����׵�J�#q����[+K��)���$��-`�V�Jt���uS� 3^?�~�A|O��'Ê��#��y���eU�~Y���i�����0�*�qN��n�+�[�#��Z�?�'�k��n�O��Y�b �%��8��������=q�g/�jHP�o��|�ϋ?��/���+�^�[�X[��-a62��3x��4���"�۽���܇��2l�Ɠ>���aU"FјF8��8� �p,��%�=�@�J�T(�V��u���/iS�{u���}���� �z���>��B�z:E�e�/�� ��ߗk�AE</�g�苯����8�^E�̢.몀G�k���)f(�E_=Ë�CxDD,A�Y�>}{�N��]���0����+�]�m.�6ba��s'}U���K7�-��A��z촅�� ���m�������bh׷~�9]n=!A��~K-�Ƕ�Dф�e���R|�>�_'0��O3}�f�h*}jIw��5��HAqL���}�c&���Ӈ���
~K@�͉������K/���Or�Y)p�+��o��jR��QʉN{�k/��"����熹f	��2نgE�[]Q]f��_Aa.��/�:�o`Rm~ax&Kn���s��`|�o����Vg�E���b�p��ئ<�<|g	յ�jc��,ȟ$�ө�U>�����"˞q'�i�D���:B�o|��ݔT-{�y�%eY�v{5C���?��_�����_���^	������L��$�sH6jX�.�%~��rؔ]u)���HPp�^��y���C3��BAZ���n��+	!V�Fcc�ӎ��I<p^j��N(�[g���=�>�,��7��n"��q�xZ�_�m�iJ8߸s�u�0�����o�r���V�;8^��m�w³�ӥ%t2����
�'���ܿt��?<.���*�zue@�Hߍ�U�ݎ�c�a�YN�ˮ!b���ʥ��h	e�@
j����<KW���]����s?k[�K����J2쒾�F3r�(rq�"����8�+��Ƚ#���8��a��G����sREkǟ���	o0=Y�(��L�VeP�h��9��7	]��� d��(�p.���_���x����9�E��A����P����?���2R�.�֏p�AyJ�����ْ=�o�A��	u���VS6b�N���_��?��e�u����}��ķ�B������5��ߣq҇dK�(|�v&��kzh�a�X܏�tu��=�m0�-����cM>���z�YV��{<b!;�8�������]������|���q��jJwJ�0�04�H��+�0юYCts�2�|�ZSFK��`��&��۠!��O���9�1x@�}�b\�0��$�G}BJ�/[R�hx��F(�����צ
<���Y��4@6�L	x6�[���Z�K'�`��OቼZ̧��DF���G����������Du��������I
�Lp6A�@�u�Q�C���e,���s`��Չ�=6ECz[l� ���$����η�l�J^��E�Hx2by�����F؄�@ ��O��_���@����8�\]IS�N(84|x��7��5=���Z��!~Ul��b9��C?N�_~H����<
y�y���>����p3�c�G�oF6�m�ӬZ� �R�f3bn���恆��x�d��q��̷���}6'�4��+�1�o)�:�_��^!��7�58��ƌ��>� ��h���?hh���G�|Q0�H�FGci i��6}�G��`�a���Ǜ�G��KORgi���SM���0�zY�0��OSN��č�J�V�+�����>�7���    �q]�����ٻSa�k*���:�[�@��/6�sjK�&<�Lٽ��d:Q�� ���S�d#0��f�s��s�0M�����vQ@�S��(�V9d��2OM��̺ga?�R�1�gM�ր Q�(C�3f5@a��� ߽0�mϾ�I(㍗��w�ěM���ȏ�λw�nC�9pֆ	5�5 ��{��V|�����X��.��-w(Z�s�4�_b0����F͗_���;
�W�(�^�'�W���;��W���{�/��5��]��?�Eκ.�/rC
v�ose�Dx�����9�-^���TmMZ�8��!J����@ O�D.���Ȓ������,o�U<�A�� P#`���M2�?r	��IH��:uP	'ի�(�����/�{¡|>���A�(� )ΐG��#����f���D����P�r���r��U�"��3J8�_x	��eP�Ü�9X]�}�0-4罴��\���
�G���M8����	"���`T^�u���.T���$�sdN9FR.|���1@����q�#�����	R晸�HzIF.�(;2��)h<?����s��9��8�L��a�nTG0C֢0���0������ѐޕ�#0�7��0����xZx�kZ����E���竚����VW�/�D��#�]���]��@ń1�  ��G cN�����#�JχQ�l)O�f��F��{�8DdL±GLP`u�w�p6&q©�b	̙U4�.h�]��-����²	�-��s3�A�U����l�AF��h���l+��{R6���l6��C#�K�ܝ�����2��W��vo=��pR�ǅ�2ʻ�%'Oc<X�&JI�Z�Mi�D�.��j�G ��Dnǡ���'������JR��F�i=�'~���Y�Z�0�x}��U��9{<Y�X/ �L��+�N�Cz<"�.��7��~���N_��P^��\3n>L)��.�fx�ɽ����������%�"{)�Aa��I�Ѐ�h�|�Jȷ%�YIߙ��va���Pŷ�#�ٞhTp�h���G�#s�Bе�*<�ċ=�.I��,	�Z��Y�Sg۝�����T1�G7��y��>��գ�Jt�M��@�\N�.���`���� +<@${Mp@��m��շ��/�0�>!{I�qe.zeJ)
H���1��/5\\E��#j"�.�9���C��T #w��=�./����U� x#<v��H�������-�oԷ�Em�O(a����@nÈ�M��������.�����5�M#7��V<##�c��*^L���yP�Dx��h�T�����N�i7'�.F��`t��=Y2�����xQ�:k4��{�3Y�Di�p��>�tpc�ۮf@?9�j��3U�0���A&r���9~f�.� R���<�GY#�����e��	?��T~�n�d{	��Y���Y(: E0B�0|�5��Ý�	��&�( d7�	�hO�,L&
O���J2�tk8��X�k���֟,�T�|��)���
g4������{.f>�����.d:8��q�7�+X�V�лG��g�Yt�_+�E�\�K��*A��~Ri[</��HeJ}ÞU}�1����hJ�8�
'+O��f��VS#6�7��5F��  �������bR/[��o�I"J��X�
����&'kU���͆������9~�D&���@v���{|�#�\�Dp3ItcU"���wl�['��}UAe��T�4�*������l�L[IW�9Ĉ����H]�Ϛ�F^c7�b�PZ%{���������a�m)$�ts7?�a�>�'|�F��"cf�*C��[ۧ��Fb%,�l��g�<�s�WhP�E��D��.˵��6�ȭr�q*v��(�f��xt21���}�1v|<�)C�7(����̥�`����Ȑ+=@������J3�9�/��ED�}S���ո�(�I�������)�˃�I��1�.��!w��8c'D!e	�x��:G��9�	3\3,��	o��ڀOu���JL�4a|�>��������I�9m���‘n�AVkmY �{��ŧϐ�����h~�!�]S��rDMu=����
����<�N��s�%d�aYW �}�ag���5Jք�J ;�a#��Q�{�{9�U��ã�<MޮIt���0��Q�ǅ5(�8a�#~��HeK�i����CcM�u�HU��[��QL�n)u��vMa��\+�d/ɲY���Ƿ��X�H���U�;*���,��4��������;)̷ry_�-�x_2HT�K!y��es�2��]D�\%�=0�ѿ���YF�VV!���^������͹�`�
��ǥ!iȖ��g���	�O�����6g��2��i}�ﰑ��'-a����To>��Ƣ�Io��!�����۝z�ġ�ĺ<ԭ4�����ERA#2>g�������Ɣ��"��Ӑ�#Ou$���Vrd����ng�>'p�yO*uXZl,b�C[i|�����8+,V�4�ЋB���gpO=��v�$�o��S��q�Q���^������%}�8�^}��b.���)!��_�+���xF��06��r��'1 .K�����	�K�O�%��B���k,k!d+
��V�U�j4��C��L���_��� �>\�K�	=7�C��}�[���;�ǹ�F��N���N��[X��i�W��[a����O�M����N��c��Yg>xa_�����Il�����yR��-/j�0�D�41��^xzv�n������$�/Dn�o"\S2�dg� O��Ecl�Œ������a��Ǉ���l��A>���,�n��&�\J�O��UKޗ5�%H�UPh��e��y�Xu��k��*O8�&�k���,��f>�IleP��ľ��k��p�����:]5�o`�9͏0���5`�?� �Ƌ����ޞ�Ǳ���#��;`F���0»����������<\^�^n��f��y���:һRz�x̈��FS�Z�Ԕ����/�PJ����r�ΪV@���3�M�lґ-��~�Q���!iE;<Ѵrn�DC|W�O2�l`t
�].C���B���=:��<�����J��JA��<�����jK��O�w���Ɨ�0�^lk�������\�dc�܎h����'���ي�=��_M�Î���7@�^�Hn>ǂ��M�߄����֥��E%�F�g�7�����I�dU��M�-O��>�ᙌ��ED�R��a�� /9�@�e�[*c���7$y>��w�/8�P��c�j*������ �����N��>�/�[��t������F1LG]�m��s����?]ALC]��nH�J��AQ�)��C�n�\��V���B�D�Bg��.�S%��Lp�m�,ڐ�߬�d;G̯n�\�Տ�(�W�ȅ���͟�$}y��փ��h�5��q������ڷY���1�[��b�IR��!��>N_�/.W�{�m���ޒ��=E���g"���$�$l.?f4���صIn�i�,+�D��
���x\���K�Cy�p`,^�G^OD�A/mෞU��#\D!>�k͝$v���n��׺�c'k:��SA��-��S�e,z�kYFϲkI;��׈���Mƥ5�U�o��B���C}6� �Y?��r8�Q�u�%nz�~{_?�`��t����Bx<UB=��%���w�������j�I�뇇�d����W&�kdd;��l�@�<
�;�ia9K3#ޣ�d�N��������C�,r�ˡ�s��֔���z)S5e>^�-f;e���CF�x���2���7h`�F�ݍ���F��&3��ua+R�� r�-��`�1pӾ�C�^z��KK��O1�"����y��������M�܉��w;�+A�#N��3��xB�'
��K޷�hFh�e0�:�}�{a�2��IU�G����K=4`��y�gM���5�Jg�C��.�i��������}^��_N���E�_ Z  ��}�-��J\�x�W�'��&+Mf��ZܗOCAB$]I��f��
�Y߇`��r.Eц�B3��/��V�_�}V�O.6=�E���r$�\O�b����JN3`)4�����������"���)�L��h�SϏ���`��#���;��Go>��,@2G�W p�Y�1'�g��$,���Ҫ��EU_�ᡉQ:s��i���w�d�5 t�)v�g�an
�T%����7�����Dc�[].��wj�ġ!�-��8뷪� ���!ۭ�Q�^CW�D1��7�{������㓐�9"��q�SK\4�6�m�榸��y�}�bsYa����Y`�j\��U�����7��(�=���Q.^V�n�l���C'F��4P�>�2l�]��	�RJY{k&UeL,�����(�[v;?<��&��ᡛL(�-3"f��kb<`������o�	*nD��ߑy�T�dX�Z
e:�����&�Rw!E,Un��5�O������A��	��(��,Ss�d�S0J_����;q��/�3�r��/�ء�!&ّ7�kT*��5�M(�M>�:���C���@pN0�>>c��������w�(d����"{)����(�H &xn�� ���JA�:Ӥ�*�����r�lG��Hq���y��k��"��!�D�J�'l��Ŝ��F!�T�S�θ�@{;@�{ޅ��m؝�,��@�j]U�&+m4�8��������\w�S,K|McE��B(�R�U��
W��v��*e�J4�\1���l��Q��g3��1FS���<F{���:7#�J��L�S�
�ئ:w���O�%و��L�O��3�Z�� }F�8���P���yF�0zP	���}�yP�����u.��$��\�q���,�����ʰFEh�> (��R�	��Z
=G�B��֡f���������ԃ�r7k� �-@o�I�NMi_X�m�$�̝Z�.����<��<�	Û�5\[�=�af�#h0uj[�Ρڕ
T�o�側>��(Y��#��M���7N�aʤ0���u4�I0�Ѧ��%#�����L��@�Q�>c����#\�ZN�Ǜ���D-�&<b��p��C��a�����	�>�ãl2�	Ǿ0��V�z�z�;/�
���=N�p=[�N���h5Ku��MՃ�gJZ3J[G6��Q�E%T3�Ny��pG�Rh�b�bF�����N�_1$��g$Y5d�܄i�������7�[T��z*-E럗g��S�NX��Q/�yC
7�QQCrn�/D7?
8�����E�����t�6[�é�C�:�Gnu��N󺱟��@�߫��_��l��      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �     x��[]kd7}v�����B*}߷�@�>N؅�}qf�;�임���R�v|����j���Ǹ��ҩU;wꍳ��O���ߝ����p�;��x����r:7������9�?��om����p	�84���۸x�A����	~E�ً��O���w��ǛO��O�?ߟ�=���o��?W���;�{k������������ا��N/�g���a3��/}t�z�r��x|<|~>ޝ�_?�����r������["����b��qX�+�`r\iB���������͏w�Ǘ����/�?N��p���+�����v�`4��=��PW/;�b�~x��o���r^�s�g���|cBG?��s�j��:".?�9eXBQ�FE�Ea��2�h������(f�������5u8����iW݂ɸ�_U'��a*L�hD���������8�Ia-A����{���j�\]m����u&[P�橒�u��M���ĴD:�|9yŉ��ً�W����hf7��h^�����K���z��tQ�Ǝ������˶J�Үb\�c� E\�Dg]-!G����
�i�w՞Gl�H+����(�������e��}5������1QQ@��01ܰ-�ϴ�lr�h(x���&2q-�p�W)�no�
^$-�t&����U��W�(xѴ01��"O�����
^4-��4�U��d�x�3�P��*{R����F�=|�"��eZNEg�E������CK��M�e�"N �����
[�
ߜ�>
^��0-ꈭ���=��X�z&
~��iq����e�֠�d@!�;-�"��B��h(�Uc�ï�Z%CeyΨ0P��qZ[-ᮃ7���Dc��lq�MEe�٤�OT�hl�����0X�ʤC!���iK�ʥ-�ʋl�{��B��3��4�KD��K�c� ����'Sn]��,%e��1v<T��k�{2l9�[kj�
�� ���E�W[�;V���Ua2���[�L�/��.�MO�z/QQ�v:���z�zKw#��r�%-!p�����p��Dds6�fPD�|	
����#�[:v�lQ���Dh�ɹ="oQ��zDJ+��#
1^�H@�C��*
1]�Hk'Q%ҡ�5�x��Gߑ�8KGT"�$���t(�z="�OX��ʪ������Դ��٢g9wDB�CX3&�#s�"����k(�ڭr�^4��B������|�7$*
��NQ�V�#�dҐ��($����
��op�,�`{9SQH�;��5�آ%S:���}���ef�E�Z����뫢��������خ�OT�5�uM��A?숆B������g�,�ȀBn�F�3��4V�ڛ��>
���"�m~,��5&
���E�J��W���
9������U�L^E!Ga2Y`��gl��u�X������SlE���C��P�Y�L�ŕ�_*O��P�M`qޔKh5�5�=7e��ޝr&3���=%�dAo\�=�b��L=���&ʩ��wP(��n�����j��)�{��PDc������~�׉l@(��n�~5U������"
�f��6�x���k��PDaqf$��
�
�:��"
;o��Ֆ�E�dBј(Q�	�.#�1�	��5�"
���$�,�_�"�L4�(�������%�Ũ3٢P�'��M�P�d�"
Uv�R��%/]�&���n��PE`�M!���\�:�I�B��7���V�\�V�3�P�"��&�^m�uա{��A����:��D���sq�������6I�C����9��G+xi��
��*��������S��Bq���}'��N�8���CC�J{ �<��#�9�������y��`}�J�eҰ!*JD��g��jze)#N!2�DDZ�Y֏�5G4�P""-Ϭ��G���o�i;˱�O@5"z�}o�qc�M�=%"���|�˴"�6��u$���|'���f�ނ��%�<4��ȃV��"�}�#.�%��mS`��O#2OE��M�M,��P��5"�TDLɭ��ET�k �OP��      �      x��|Y��J����W���v� }SOQPAA�Fܠ�FQ�_�ZUK��vUY�e��b�d���'�����Q����Fu�w�/��av�����62�����+9aO�����5�C�[.�ύ��E����<�Aa�����/��#?P"h�������[���	���%ַ|5��3O�2/�`��5�QZ�dI�rZ�5�o����њ� ]�$��G�C����(�~Gg�7���	���u�H��R�,�\G�I;�K��9I2q������uB����-�� Y#���e~�3�8!��B8�F��k'4�������3-�4j�J��8��ě�v��%Y�ښW���lV�vG�
���{����0��{��E�N�ԙ����B��A!�x�����_�,��D�������j�yd����D�y�i�5Di+V�7C���z\�(�� !CF��!:A�W�2�ʔ���]�
12�� CZ���ٚG�������L,0M��L� �����@+��@���w��Dc�;�������t[*�ct�
�d�
�s-�7��cn��]����d+�f%$������ÐIS4Љ�t1�;�:��
aL�����/���J|P�#s�Q\;'ز��%2�����DI�Ν�AK��kK�:eȁ��D��Q-F��B�u��g�{�^���F�	J�r�x�c���;M���+m����MIw��f�L�t�Uĸ�b�t{~@�fXf^������4�=��_Z�/!!�X����g;����>�q%��j0L ȡ���˩p*6��`vc=�Sh�@��&�9P�FG���b��0�+���$�њV�^�θ���j�d5Ր�z��EI�,iO�ց�D��K��5�/�#���a'�u�ו:A�sxf�8U����rn�YʹI�i�JE�,�g"چ�-����\��\ރ��uυ��@�_(JC(���v�R������-Rcv�l��
J��К1R����>�G{��!VL��]Z+�T����L3�@�q &
�(|Tk����E��}˖0�[>�������*C�5't�ܶ���Sn��aJB߀n m��od�-��3���Q{EGL��=��=&ˌ%Y(�N1���y�A,N�[~`͉�O�\I��T�oj���ܴ����׀�cC���+f�A@�ې
T~e�^���Q!�%�Γ%S�4ɹK�x�ex��+j�������nO�J �@L�w��EG���G�e^U�~�I^_�b�M���Ѧ��g��x�@��3��1�2����Z~ƣ��ߞ����A��߈��A'XO��˯�uK����wB��B��%�f;˰
ڮL��ץ̜�`��� F�*x6�	���0#~�k3o�׵�DX���V�G��-�r;q��B��{߸.����q$�kӎӶ�.G�=5xK�x Đc���P�x�������{�����*dчŸ����J�
�&��9>�0�y�3��/��0C���@83�����]����E�龍�@�J`������gd�n�4�7)^nW��#5�B�u�d�J^���as�P?����-���m��Cޗ���0�4�n��N0�Uu�Gw���N�6W���j� 2�t�*G'wY=�E}Ϋ�;��������IWEf34�V���N��HtLK�6�X��?�r7w~�H9F�z��VȂ[-��2�lr��z 7��e��M��u�pw�P���c��$b>��k�"+�G<��`�o&n0%��ie~��za�3�@ZoM�s^�byC�2�,��sE��&�_bЁ��?�>P��D�n퇽��.��௼#^���%(�u���UU���2=h��h���۫<[��<�e��3��]���?�k�N�8p���ş(��o�׵@Gzf���K#�S3��6����#q	xA�Z�rj!i�j�a�3�W�s�}���t|\�d� G~8�P}��Pݫ��.a#�A:<�vB��1Q�[���$L�~���%%O����ӣ��~��"���}��3	��w3@Pzl?�Hh�g>����[Я�_�g���\���i�3yO����h@-��YI�F�E�����sb�ޯ�H�&�^�4H���$ّ���zY�3�������Uq�͏̳�u��)Y�e�g�6ȼ#Ο=�W9�,� �΄l�~���ޕ �~� ���g0|?`���h��گ���?t��X;��(@�L&��B-��C���A��j��hŇ� ̂�z��W};�Sk�`|P6�B��F������z%?�ߐӍc�t��� *r~�E��ief���s�v���C�ȓ�a�v���6�2��N�^��e�hx3]j��_0y����TO�9<�^@��z_8g���f	����3���� 
rI���@3>P`�1�Ƭ�`��U�% ��D�
^��k�s�Պ$�zy����i��m?_'>��3�U�&I���y$:�}�G��td
�'t�k'H��e��[qH��ޡ2��pL�|���C����VSxM;�;���EO�0���d�(����	��?`���e�v��b�� r�ͥ*��]�\���R��5��|��f��bs>�ؚm[�=�_&�u..�����Qb���EH��{�N�^1�V���5��$�/D�`��r�R]�LH�[�.�w{E�W���(6����w� 	c�ǳ�g��N���i� =��N��7�Y��l�H� m�@Bn�T̑�l������%a�Z��K��A��t�
��܈gE���ڟ��D۰=n��o�h
��3r���L��.��&��A�W)�����oW��8�Ʀ<��a��"�Xo��	�3��R����i��7nd�x�C(7��9��G}���MR1�`����]W�7���t�<!M��:"fh��N�^������/
�Zy1�b{5�E����K���:tո:Dq�;�����Ӻ�	A8A�Dg2|\}	��-(=fnk'h/���e�^� ��1U�$�uY����]Uػ)ӘgD�Dqu�fAG71�ߝ��MC8<��?�=������4���j�v߬Z���IC>D��<mi�m��6�Zʇ��N�����.T�2�c+Mf�8
�ê���	�9���*�!*�@�_��d\0o�Y:B�����9��G4W�?�m�K�â	�I����Ӟ��� 3p_�~	�ŵ���Z1`�܅k�E�F�sI�l<�g�p!�x$_�03��W\{w�oB��1��0B��+���YX���	���6�6�Ӎ�9��ĕ��g�YX�WM)8�^�f=��MV� eZ���x�f ��b�'s�Sjt���� �st��z�w�
k���3�� ���uQ�%�],"��,$i�<@�D�������S0��b�y�h�:�{�R/k)��_rS�<xm��{j5�!�C�;���ȑ�U�BLM���{'�7=o�;\ �C�~q����(8��ZW߫xw0I�Wi��&3��������\ekX��V����&Z8j���WQᵹ���;Z���{�9l�~�p����j�w�DG�g� ���b����a��|q��xS\�D�ǖ=]�e�Yf/�^�6sX�v�҅V�"7�����gA��'
?�����4��o�r<�b�*zZo�Ib��m�������c��l���F]%����a}\��^��NS>�N��Pĝ� �A��#�~�E��?(ֱ��.��}�L�^���s����}��Cj�^vq��.�Lj��%��O��uK���ɹ����sz���gr� ��S����k��6<����\��<���씈Fո[�U+k.��rq��^[��.���(o�������5Vj���<���S�pP�C'x/|m�K�^I��.��Ʊ�︜"{��ѵ_��@�itww�n.T��y����w��=:�{1
�,�m�i�<��8�S"����������������tĶ�_|�:�7E�������Nl/h�=N�^h236:�q7�    ��l}�E�;�0j��������q�@�L�o����x�|�<
����n�
C!t����=@'D/.YK�ڇ�R�����.�yH��rA����$�,���!������A�_��U�?�	Ϟ6���!��=#W�07�O־�<no�[�g�Щ����[����/�=:,BvY��/�o9��[ބ�/�`Xh��}Cx��Ԛ]XM0�5�x��^�"�gt�IT`��^\�e)�K�\q������qG����gRK��\�B�r��}�"O�� ��<��!�}S	!����I���_ln7�]�~�I�#>�^�lc������H��^��u�Pv&6;|#�W��Wy)�r�q"�25��[Cۇ��Ba���ĎG���t��,J����}�Q�����	�;��ak��,r�X��TV���/�ȍ��K8�<.9�6����]��/.�����{&��׉����Z��2��S��U%9K�v�a�h�Ι6�I�8I�����U������:mgh��$M�C�t�2p��:az}6��q����mH�J��VxB�1	vs�	�'�#�7"I.y�$�s���x��h��y/�q蛑�?A'Lo|)cB��P�,:H/,5�<r�J�p�㺐X������^�'!L�էtI�dp���t�.b%�L�:az��3'`��`j�֑����vo���(��FE��J�`��3�""]_�]�����KL7`��N��!
���$����t��b��$C(7�<�C�9�Y��A�j��s9P��Ŋ��������}N��H2�����	�3�}��3f��e�&w��&LѴ��hs��8���J�N"C���g���u���ݹ!�AR����
�ܳ��[��J�%1!�B���t�~�l���S�z��SV�V���.w��I���>�/��M_�B��?@՞}8���!���$Abq-<�N���7�+��Ռ^D�p9�3��c�<p��a�ol��!��s��kK���V���E��K${�l�	��H�f�V=�~N���(��,�5b���݈ˠG�W�����{l)3ܗ�"�q9_3�Ȱ#��m��˼���X[��jy#i𛙻5�&4(G���_�X�<@��{�MV㪠S��-��F�6���d;a3�Q��3b��Ӆ�F�~�����K�D�9�a���i�c�.N��q�ۺ�\���@n�P�g;�y�<��� 6��|�[1��ъpc����u��m"�tc(��dM<cK��G�N�^��O�\�b�5B�B����a��!͸����[͙ڏ36���H*N��?���?� �8Fv�Տѥ�?�V�]�߈�rC._���Qy�2���1>v��q���鏓�v6���Ii�(J�,Ľ����K���������	���'��=���(�UX�/���8?����� ���*kR���������h'G�9͍@�0��@�)��E�g-���8&~��^5���f,����x���d��]O��U��S��wlEO�7���s��&w�Z��20�� t�>H���y�#����d������Z�s��,r�ﾸ�	6i�03�}�l�E�Nq]Wb;��9�ex���P����N��3�}��%�Q�yA<=��$ ]I�IA�C���͂�hJ��Q�Ȋe�Wz��M����{�H�8����� �0�#�w�F�qB]S�iz�|{=�&M|mD&�����#�,ؕ��bwW�����:�Eu��n ��1�1q�Ŀ�}��pǈ��>���[�����ӌ��\���;OU'9�O�|c- ��17�Ui߁�Tm{(�W^����7�s��|C��P@����Gɷ4���5m�����������s����@��B*k׼�v��w*1�ݹ$��7
�h_��� �0Yh���\ܩcu���nu0ֲ�F�[�yOO����L֡����u[�j{��p���x�9+Gt��о�0��K��K�b���S$9���@0�����w�w9�^��<Μ��ZKgm��^4_��$�|���AF�7Cƍ��ŀ��w��_p���dk�6�a�.���]xd�/)�H=����a]O�3A<�?�9�Ż�:B��]$@t�&��3���V�{�&uǓ&C`-sO$� #�\� �$5i����'��h��nd�p'��|t�?h�bڸ%�	�9Qdx]�x�]K�Hl�=܅a�.#h�Un��Pg��Tkٻm�n�B�*�g��`�8I�F�W��r16�s���J.2~N?�����Ǥ��{�Ί%��F���D�,d�A�G˻������*����N��a� ����(�c��5�xցSG ��+ʟ��^���mU;{|q���R�Vh��P�d��-�+�6�G�a�Ub�qP�0b޸�]������/ƻAy�w3��R>zb̫�߭B~.R�@�<2��a��D��)n!�dIpm[�������\&��l���� ?G���."�>ˏ#�a�L�E냵`�=֜�{K^�X9'֑���x�����p\,@.�.�Y�;�c�A��F��0(Đ-���Rh7/�r�td����#�X=���gK��t�<Ƨ�;�����[��y��ߖE�#Se��z�	�B^j8���"v�/���n �����_
������v4����e&u�!��˻��	�������R_B�C�ܟ��S5p#j�q�X����/��;�Z�N�Wgˁ8Y'CHZ��i�Pe���Zԙ���!��4;w�	/f��G.�}gFw*M�=yA����{ՍLH(�M���*��:-�J����g�y9��<\I�2g�tL�ef�`�aj�/�$�y��ߣ����ew������7���P ʤ �u"�ΉD���������1ZF���w+�&�M�'ɧ~�?p�968��k'��o)\�h}=.�'���W��-/���i5�����2<�V���N�Ô̺܈"`
C`������1��н�ȱ�D,�	zT���E�/U�z�^�X��l+�Ƨm{]q�׮�[w�(�DNׇͪ���$��/��ۼE4�0/u���Z���3hH~�(��7>l�+ҽ�B��Xd��ݜ ^s�:��'	�;��%���Q���i\�H�����MSaHg�����O��i�����*瓽rŖ�Ri� ���!��nʡT������fe��w��Q�S��oƖo��ۏ|��.�Pñ���8d8�{�?�Ľ(�.` R[\SY׌|�e�������H�bYH&����匳YwSw�_t5�9HH̀!��P��	��X9{�a�M�����9��;�֬^���sbS;���6m�����e��zֺY�DK6�W��:V�lC㟍�!]��!xЕ�BA��r�k��/7��N�]6jtr���e=�/	��we�
x����ۗ&-م�T{W�r��4�U��J���	����~����<�W���(�ˡ�%�Rd3����^���e��}8S9|����1Se�Z�W*���"8�w��O�Q�H<�9j4D��3
!��kl)`�<ӈ։�\U�;x��k8�MH�Q�bKy���Cx!��,�]]����� ��[�h7�R�3���=����|���S�0��څ{}�g��)���#�_�KK>&���qf��B4#(�8�CA�3~�B�
��r����G�pQ+چJ �d:���X��k.����ۋ_�m��h|�|L�A��wߍ.���~�V�Oψ�ٌ�@�&z5E�qY��u���g%3
z�+�3�KY�^�\���Ԫ��L+$�x�>'p���@�=�ϫ	8
^�X��(���T�ޚ��a/�g��n?&2��uq�����}ZjP��8e��+|L���q*B��~�{��(����,x_��CH��Ζ�[{S^i1鋥��F�Ї�c*/�札���g�E�~u;_��uu۾}���ug�(1�������#�\���xeO��%��Ö�R�'S�kD��!^t����w_Wd��N�g��@b��j���R�� �  :�7ܧ�Cl���J�
���,K���1��t��ÁL�d䳏�cP�3�ֽ)��l��Um�zG-����Tn&��,aC��lf�����>$��v�t3k��T7�A���>�#��{hE}�ʐ�"�D��S2+��#��O3�:�q��&*sZrd��U�s�Q,]2^��
dx��@c�D�źx�Wg�D��z��'{�)-�ق3�㐂np�|�B_�����ph)�7�)�T���q>G����(�Oqu^����#���Iz�ʽ�Z��	��J�����E4w+z|��7��x�qņ�e8��:�V�A?�#�>� ��:A����$zIK(q�[Tӛ0�Nu��d���������]%bq8ѹ�Y����^���.�Ff��
��D�XW���ȃ#�o��o��=�h`36	;Y#��5�bS�!Wӝ��cD���v�?����\o%��K�\��|�9��]���O�
7E��X�K��OoP�]�㬮w:�
�k��0�8��~��}#��5w���hij��5o�9�|<�V���uU%�$ǩ����_k!i6)����V_?v�|�+�~%��c�~g3rk��Ua�iy1��8�����4�� 4���/�JGQ��^$"�śFq��:�/�5h���	��L\���byQO/F������n�xީ$ �DGx�!
v���e��c?��5k�0M�s�G���8`��i��Ar<��	K�&1����{"���U`��Q���%��:��#����zp�r:��!����%vb�a�.I����@#J�T�� 1��N������G(�Bϩ��ݞ�qs�Z^(8��$�����Ye����6c�����|?M͑-8��������X��m�
Zu{��u����sk+\GwK����
�`��4��8���W�{�B�Ȓ�۠��~ X�g�F�I�]0 ��{]�����02bo��[
9�ʇJ�D6�(:��z~P�>�
����F,��f;f�(
d[����9qt�����Ŕ��6M"��A/���+���\�2�a����%��T���L5>]�� 	��v�{&2����7����� z)�&,st������������ZP�����T�8�p?�]r�hAz��2ȋ��i _�\�罺Q{�D;���y�_k��y����W����y�h���[��Z!}ܨ��nwsf���ĝ"g5�6g�"��+����� a(��_��r/��W�s{.�㕙��C)�U��I��i�(���py�4�9J΍����3�ĉ�4��3	�f��(��s�A���M�:)s֑�0l���+<�c/\
�I�rڔ�}�b��0Uw����8�"����=��<
1���='��a��5wROm�rEI��rrtv�+�j�뜰�Dx,PfZjo��'� O3>�u=|��
h������ ���46�3��En)�{���֮������{KLߛRw��3p����g��� I��/&�D\ckߞ��]�co'����!l	\]2�*��B�>�5��/�Y��զA��3� ����&���9��"b7{G2�?G�^��G������\݂��V�0��o�xj�1�v��e�7�pVw���u�=�0�8NC�Lgw�A�����B����d1U�      �   i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�      �      x������ � �      �      x������ � �      �   p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      �      x������ � �      E      x������ � �      �   `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3         T  x��ZMo�8=K�B�E���՛�u�vb�i��+�6��dPR��Kɱ<�ɑb'@
$��9�y3�k�$Y�uέ���"a4K�5�R��8�R�<���Y$7�7��O�4\�����u-��싯�&����gw<u��5���2]� ���n��e�(�a�a+J�|X�5B�F
�	��ƌ%=GT�����n
(�3.��Z3��C���`pPp�	} p�o�U��p�]�ݑ��w@9�q�'���+�΋|�z���;m0G1�$>(A����I�%gI�.+Nu
��}z���`Ǟ�bc��=q�L�֌ddI74+/�ӗ�)���bY}���&��*W�
|(F����a�>d$��OL���in�'L,�'��jU��
_�C����,]R�S/�������
A�t�uoB(���o���'+k$r-e�R��c@H70��3/���v�o��|'��0jFS��z��D+� Re���6��;�	"�_R�r9�
pN��D]��YD�3�d��4O�dI����(W���^]�Q�R�H�E�\	�W�x]�y�D�.z�y��r�����-��XE,Cz�#���6o���'\*B�A����#A��yq�b�Z2j=Њ�1Z�ce�V@9"_��+R{�&poW������&뭨�+��E�y^���(��ϫ1�b���4��x��.�U���6�]fZ&ԇ����` �g<�o�֡�hfi��{���1�����Κ��ӧ��ݏF�Ņ\uT��1�1�^��I�!+��q��{^�P�������G�*�M`��!�A�ѳ��3�C��l#>=��_L��h� ��N	�җ;atXI��	Ј4�XB;�*�ǆz�@�D��<���f8q�m%Ԫ��JN"�?�R�g���ޖ��/�4�P���(��߮�.@�`�Ϝ4s^d��+�#���#D49����;��468Ǒv�[��6\5�њl)¦N@K����i�l������:b��y?�a����9�74~o%��[���u�������Ղ֛PUo^�t�������9߈s��,�cpx<�ҺM)9�O���?Z(MN�����#-z��赨�Ѹ�#g�Ww��� 
����~�xn
���I-jK���DzQ$���Y�:������|�8�N�{^p�-N��.lv�ػ5���P;�:��Gmx;5D�3���F`Mwa@b�4Tb�Y=r����}o�>F�
�6�-���x��gz���=�)]�b�ʰ
��0�]��a�-�s�*{L��S����7ޓ�I�.%h��4�R� �N�q[
��LM�T��Bj��;�ym��Px�!�:��h���u��Auu(+8|b��f�[0�1�4P�쫦��[�:��:4��U�#�LD3�E�-�v?\d�����%5A��^�dW\Ӌw�ǯ��)i�L�?�Tߖʴ�E�͉Bկ*�n��>���q�yΟH��6kji��uό^kh�,�h10})��U��lR�r��6��U��B�����)dK����Ϊ�%�{E���#r��b����$�S����5�����=`�I�x���4�TC��         �   x�}�1�0����W���r1&c���\]D�,�v鿯C��>>���|����b)U]*.�
��U�ٜ�FW4�<S�Ӳ�ȋ�u�*�}�X-!ml��Ֆ�@�^�6d3��"Zh���ʻ,U����8/떤�'�}��+:���{�@�9^���!��kj|         �  x����n� ���)�����m�7�E:��Xn�&���Jy�!M�f$�>���n�wc;����(㘊��@�0V0"��A���?�G�ن�
�fݾ���0k9fP���ŵD�T[��U}���p>L�႞[hh�ׯh@��v�n�������i�)�ڣ�C4K�q��9|]�{�]�y`A�ʨ�?Kc:gm� _��p��Ǖ|����FM~�+�f�,��ⶹ�� L�R_:G�������{��k�.2^Y�R]�/�*���n��W1��RM��4S�F�0mc����фq�����V��{��ӱi�s��H��1%.���\�Z���3y:��)����y�'} :?o�.pI���.$4y;��-��XI	�Nh��1d��no����U�85I��|8,���_�Nuv.Κ.ㆀ%iB�,5���)g��V�%4-�oRU�_W�b         �   x�}��N1�g�)�Wgŉ�䲷#K;�A�"�V���O� b������=�./��+l����ɅKQ-�Ig�;-��O1�y��ؒ)�ٴt��m[�Zbq3q�c�o�N�1��P�bYz�ܲ��m�H%	V��bj���\Ҵ�4��X��\�6cS�p���X�X���)��T�0(i�,=Evp�:I�'���(2���ގ�v�L=E���s5'G5���L������      	   m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�      
   �   x���Kj1еt��6VI��,9F��(Y$=�h�xY�!Y� ��E��#���a%U�#����ލ:LR7��)[SÑ}e�S�v{)a�Q�l�Ѩ���ѩn�!1��d�)F2ݑk���}�ܢ�[:j$��t�m�{л��M~�ߎ�~���2���)��Թ�HU�J9��X�6W����sʟ���%��9         �   x����
�0E��+ܥ�y/�`F7AD�c�ږ$E�Ф�oAP:T�ˁ{8���ٔB�y������r�	������B
�m��R���=��pb��W�\ m�@�NkB;�fY���䍇0��0���������\U�*
q͹�ՙW�9T�O�         �  x���Mo�0���Wp���Iߪ
-��
�{��E"����.�~î�P��D��536��b(�l�Ŕ�%%���,�',$�ߤ]զ�T�(�.��&r�唤�/�2x��Cw�q�5��i�s�,åH�_���S�sxU�Ä�Lb��"b�xRs�k�s�y3Ɋk	)X�7ev��i4��z:�S�6)��g�w��9}B9lT�^&z�Ue;��C<w�Vj둹$Xr�q�H��4M�JXl�o	J��2��8һ�u�#�q��G�]�ʅ ���X�^�ހ~ڭ~��y�I4�Ko��u1N7�}j�z���)�����^�B�J�3�������=��
{)�t�m2�������'�a�L};C���J�$v�K���{�8�c��`�������S$I4�K����~e��<�Z{         o   x�}�A
�0@���)f_�Ʉ�f��u#5)FH�~�W\���๕�(/{��ҷ�ꠁ���c�\0/Ʊ�<X��}����:�J%�K����hz���_ŹG���*`         X  x���I�Z1E��*���K��Ed�E~$�|L���=nd�T���o�����r��7®�3ƌ��.�
T?��֩F-ŵ,4hڷPG�M���4d�)����BZ>���sj�e�P�֏,���Z/,3�
�X��x������Be��,Gnd�m�c��Z<
��l�ߠ$�0rfW�P 
e���A6X�Rc֗5�(���5�<z|.�h<
$�nu�G���[�53
�}�e4u�����f
���@o[ʁ2r�v���$�!P
��9҈�ڙc!^%�i�w��SF��jLTW�G�l*�Uf�$騝4���/(P5�V���s���HD^�ͥ@-P����Og�6z���/(0*��9ˉ������Q`2���<�ʨ������ͳգ�I4����rv|,f�ݝ3Ȇ��]���,[����R$M�f��)Pݙ�YM�ύ��ѴhW�zA�y�K�.V�X}�L�����`$�8�ƫ�K^=������փ�V�4./|*�k
���~}$�~���H����A{��q&q; �Xr����5� ���d��ڥEr</���~<%���"뺹D�l�=tTԸ]F9uJ1�4�+
_ ~�|         �  x����RG�ׇ��>�k���`�ȀM���h��4u+�3��6����2;^,�%�r\���w��Iߜ>׿{��z��)�H%*�O�L��yR?��g�ʛF��ϳ����"1,q�����,��q�6p�!:����58;K:r��<w0d%Hku;�v`Ԛ^���k��W�t3�y3M�X;� (M�D�m���t�.�iF�}o�3�dOs:�s���L:u�@^Io��V�F�al����n4�ʆ��X\)�D�~ӳ�㘩0C��\���3�vf��̄)]3�8's��?�5���b�u�2K:sv@&���\�<T(�Z�w����W���t��D�k�Ƶ�,�R��iq$S[�G�8fF���䈽��T���/��t��WK�X�2��;�����u�����6l�;F*۬������4@�J�ЕD^���W��kgKи��g} ��<��w8^A�_�P�!K�`D�#�4�膥��� ,����	�܆nLh�gm���ƭ�8dJ�L{)#.��Co��]?�f��'�op32�N�C?�po�%�[D�on���U'��-����=��������ڋ�e���/�����u0�5]���2�QĆ���VO^������d |�лQ�t���j{h;}/{#V��q�p���0x�eO,S|m��ن�Sv��7�K���Ů:��x�˘���Ĭ�T�W���5]sXmE#���|oc�A�d;�c��˯d��9���M�\�c3�O="PUb���S:ϓ��x:8�����N���� ^�x��=�W�Q�� bb��슎�h5���y�:a��g< b�ЉY���Sz-!_v����ް�<�炌�h�+8`.bt�m�/���ť�ۑF��[��a�YWt��R��YYә��<�'���{`z6	]�e[u��t��<�]�-�A�����,��&]�2���#Zе�`/�ݳ)�����+z?��:�z�eh;n��!ɡ��(j�$"���P��t��m<�!�(g�C��oM����9�#X���*�;���r�r���9��kQ_�"�#zN�4nթ�9mz�M�"\��
�\y��d��< ��x�j?9o��넑z��ʴ�!��V�ְ�����tn��@g6�N��V���-Й*�Hm�Jm�H+��k�XEJ��$��^R����,�gc�SU�q��~�j���`+:�i�o��àW3�T�Km���8�Q��^�	F�/��2���ȵg��+44���Y�TA〥l��e�s����n����J�^��?8��q�)���z?�j������x�B��a�="%���
f�=΀1��(��s�Dܗ���u7z����9�����/(�7o�N��K��d��x�"�~�k:h�&��5���Y$t����gQfw��0��#�ibF/���K|%*����ؙ�����p���@3�a�,�ػ���[�d.�{=��[�c�� =���_e���e���2�2-�LESi�Qm��(3����9]�&=y�V��ؒ���8�kY�~]����PVt����O�e-P)��Pl�<9�x���ȕHAi��)�=.'*��=4k\T��]+N0׵��.������*d�����Y]%eY~���/���loo�o9N         `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�           x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�            x��\Ɏ%��]G}E�
������Kt/��h��l��v��&�F�xU��̓�s)Q�Y����H�B���'�W�/ĵ�?����5(G�g����G��Q�3/�W�5Aq�GT��g��T���żf�l�Qy<?���RKM�'�+�W�+E�}T/�q�q��Y�k��R�賥Z �;��	�񅰖;�;T�ܼ ����3٤b�]T��n���/��R�����'�&�;�ׄӜ���9��;�l�����#�����w�zq�_$���S�}�>����q��^��x�v�g{A���FԸ%et�e���{�/�q�X.��+�z�lb�����ߡ��ߓ�%5˝~AT�dA��ǈ���j�j���x��1�8��`�<%��0�"��k��2��Cn�h	n	��1����["Z�;�ƕ�d�>d�x�bǼE��5�:R���YL)Zn -� _�k-0p��C�%��n_�E�Z�����xO��������A=	�
���>��$�2rK���+Act4}�-���v����U|T��%�l���Q�8�f��C�%���OqaG��3�������V���Z�ag�G�-�tq���Vu�0���햘V��A���!I� `�ݢ�G1�$�Un�uыt�������\bZ���������f���E�q�Zn:��[J����Er�K������(��.�l�e�+�X�D�Lv0�f߀J�W�&}f[P|A�T1�;�8-xv����^�%|���f�>\mn�-CR�o����.��;
7��Q'5�����~�8w�y��(�"���Ezyn��<X{'e`����z��Rz<���s�67��bZ9M���Ϭ�2��o��`�J��k���u���af&-W�q�}�����ϵ.Vd�O���@�$��$�8�Cv�r�)���7^Xd/q�b/��B��W����8V�"rKz�~����b�sĭ�Y��,=�AJ�޷�ЏΟ٭�bu�.{��؅4Z��6ÿkv͋�p:���CC�,����)�� |e�c�H����K�~<d=���g�$����[Y�P�-����÷J9\�Z~	��q.����zXC��kh�/��F�\�e�k��(��z�'[M�������`�S�]YU�<se����(��Y�������;�:V8j��D�R��Z�@JL����я�R��z�ɵ��eqȎw�e�sh��	����u�>�-2fl�q 8D!\된�Џ�z�P�m��2�W�]S���.��:���)ʄ�H�븯|��	ᤓ��nV�ւ�wV[�*;Z�*<n-�h��<��'�	�`�^��ѧ^���!uR�=�������� ��1v��D�-:N�m��ql-t��)x��<b_c���/��.�5�X��f�FMG�R�/�����*�uަk���l^��m֖IJ�ZGb�����_���Wإi�N�B��ɱ[R��ҫT_�����Q�2�n�}�D�L�R���ýj�ElV���L��C,��$=�whGL��/�c���C;b��X�!�2�z��q��"��߄�h��4j�i�j��v�$S�X:S��Mu��>"�[��Ua.��8��L/�ŧj�Ek�-�vRd�n�)����Y�Jc��R�=�,u\f�M��9�������)U&������09�'5Zo��|�M)]��H��j�fj�&ls����6nJ�Jp-tݵ�������q���M���S}�(�5���,�념}��8��(�C@�X[K��r7.��j���V�?������Zt����>%���j^.S�r�+%{��W�
LR��~�͠X �if�u�c�K4�i>�q�ѩ�����4K�>/Z�q �66�i�f�Џ6�>P�$B��u��.�����K@��;�l&,{���j`���o9��=ʶ�4�Kt�Q���c���'�� �$Hb꨷������#���?�ƞ&Dk�B��`�q^%:5��n����C��;m���蜶���"g�k�S��Z�v�;�%�;u%U" �k�����c��q`�K�C{��h_���J�K��V೦z=�fq�>Wzs��Ҽ�3�p~0~���[O�b���(Zk���`AM?��k҄%K��Tb��j2������LN�*+93=�Z27Ր�5>��T|⬩��������7�V�M���6k��P�]�B)�\kMZU�;T�o�-G�܉%l���:��s�4T���������R��&`���RU?�(`����'�&���H�V�Դ��G�zL�E2El�]eBٮ2��[<%.�d��Ha��!.����)�G?��?*NRc��ӡ@�Ĵ�.���	��R{w_��&�}��͌�ff��N:p�� ]��Q��Ro$eYGZ�$�y�K9�t�w�7��7����2��)�9�
��W�m���V2�6!��l�P�	~vZҜxF05�`���@�>�j��݊.����
n�O�Rw������M��F��c��zO���$����͓΄�����;�=�k��2�,}A{�^B�	t�2J� ��|�-p���]���k�CՖ��C;4���ڜ���S\Cn�x;8/}�0pnd﵄���G;N�S�f�R;�C�R���6n���Ӂ��~���.�8�|-%8�����u�D�U &���֑$�{Z�?鋡z��桪��ћ���4>�5w�<�̲�#�!{�5�#s��0�e��N��z����A;�z��|e>�sp�
ܠ1|��Ý2��D�!ю8}D,�s�gϬx��'im��B��x�yb�B�W�9ln�������T�X:�ڦC'oA��R����ᜌ�6��'����YX��?�����!���<y��W���b�W�rՊM���b���!�[p=��;�X�|������J�g�;��Q�"K߇0��4�T��-�1�l"y�Cs�n �;=���?������O+j�;�:�����|��1|'�c+�����b�(���XT'���I��/��
����%�MN��I�0�>��BO
�T�[�]����'��G���� �5T�A���ë<-��((����Eُŏ�7�wQ/��6�lw�P}���Qg�Z291��d�~���Y��~�[��q��<�/�JF�&�EߏjANH�2x�4M���苰i�׋�#��7�WT�~�N�)j��台�H�lc��ǌ~d��b�W�U�YaV^\��c�է-z�j�I��ߧ�R�R����%<B\k�������Ȍ�q��W�)����~='�%EGC�=��I�3��`/���.��4Sۥ�UU�J��&�D�4lB饁�2��fJ}לpݺe�r��53S9'��lB���u�:&>:���݊㧮(�T�W���k�.��_���/�*��w~�e�'(�'к������U��}��ê��<��s�޷�tC>�u����ۍ�P��}q>�?مF�@�9��y�.�~��.���w�>�]��w?��ߕ��x��л�V�$e���� v��"��Ju��|��6-�y���n2஌Wt�l���̳�b�+J(�ot4��_(8Vy���ܽٱ�X��L�#���]	g��{�=4	*Ro�ܡ�"k��Ẃj���*n;���г
}5��'��F �I��\�#pb�v�iS!?s�c���ݡ�ߠe/�5�E�&����Fc�0���x�K`����l�թ���}��3�����e�n>`�#d��w�=���&��-{rjfW���U�%��rsj�5��k%��K�cW-���,C% ��n�Y��-vJ�>��.�N���Q��6֌��S��~��l�+���U9��V����Y�	����nk�>kJ����Z�h�q]u܃V��uz�S@e j�]��U�6�����W�>#��˶Y)S��� J��T`�6::�l*2/k�tYzp�{{i*���zw�#C�VvF�C�ͱ���I
�=b��H��
�1���w��u㱜�^������~ ����3m���>�D�ɨ�+�g�� ڦ�v��:݀�)/Y��1�l�hMae7��    }��%!����������߬�M�         ?  x��X�r��}}�SB�}0x�;�Tjm���_�2o�x�ArU����`p(�n@���"���O�i��	��'&R�����{�:��ic�1����^Y���f�ϋ]�㸧�}8�W�c�:�.%�����K~�/�Lr:�o����a3.2�&���&S����p�6���g�8��(~G�������?P��mҔP�i
��c�������r<,󜮐�)��'��	�236S.�i� U�ٷ\m�@69���~]�f��)��Μ�u�c
5;�O�5[��?��+u�:7�km�x�n�JO�0���jE��q�3e2����`�"�&�*���/����'<~>���8���A�<�:1��Gu�Q<|��g_�=��8m˼�2����~<�]N���Ks�2���J+s�� �<�ȳo�9_���p~
���]AT3��i�k�C#�X~�#<}*�� �{x����j��n0�[����(���:���Y�AJc�̲�d�԰d�
?�3i]7�*b2��~ʋ�<�L�L�D�t���J�T�$c]r��������m������_�E���-��Hg�����D�_r��U��m/b<���/�"]p��q���e7imy!�T `ŋa�����x���5%��9�=kC{�aM�N�p�u��C�+�o�,�V�&֫��8���Ǽ0��BC�e�JE����:���A��	�VS%h4ڴ��d=i>b�^4/P��rL|�Ged������\̎l�S�o��6t~���^i��*FaFI��k0��3���?W� z�t4��pCx����1Í���^J���п�DgR�t\����?Ic�X��� �pm�?�%S]f�&F�k�֪����𐗄�9�z8�_@�k^n�#S����4��ܦ�*=വ���u{��[<�5�>E�&��a�P��S��c���MQ���?�e����2x��"�]�a��ԁ#��t����i��I�V�|a��}?$�-�آ��K`���Ý�N��Y:�����U\j5D$%^��
�=�֛��cQ8������L�%i�E�\>�G ��>t����9��W�k<���p<oW%�eE�m��U+-�·,y�h��Jҫ�ހּ��I?P 6�8�+9u�җ���	�:�3��Ξ��~ՍٶG�k_x'
Ґk, ����v��b��� ��c�����j"��8�!��!�I,��Ey:�����U53S0:��RMѸ,l�	v�N�J��֠R�����mQ���&��rE�@�hz�=O�V��Xz������D�:���Kq؄ Xc-a*l��'���t�}!O���.�^����X�W�x��f���nM�K�	��l ��& �GZ�Z�s4Ol a�a$��Nw:���H�z��������݉���(�@ډ��N4j�-Z��Sa�C��<��"�$$��:^ӳ�����`S!�r�3�
L+&`��[�
��iU���<��:t{����FE�@�Ό����W����+�HMZ--7�נ��Z	=Yu��Z��*�����Be�]23��
��W��qqE�K�⼬�*��l»�4���D)ۺ�5��!��[(�J����NP�"�3���b�y�;UB�EC�R��\�s.�H��j?��Z#V��D�O�x��+䷛��qٝ�^-C͂T��ԌA֫ �� �A�Ѣ2
d�b���%�Yk� �䄵�ב �[h؈2��
%��&�6��
��Xqfcm`:b i�u����w�����}v5J�9�і߻9]	g�uޕ����;<0�z�f�ѐG��ƈ�;�v0G�cxb��f�TU�a�l�ٰ�=ޔHm)v�hY���=��IaۼÅt��<�@� 4Vta1�_/���?�p�Rh�i���\����ڢ��i�&��{:o�J�	T6*�娣֋=`�/����z���>�e4���E��^�d�,$��q���2e�{;qa�I;�^apc�����ݥ�-Qb�,>1�������X|�����/�?��]�_Ѕ��ڌ����ܥ�5�F�+t,�p5Y�%777���Q            x���ˮe9���<E�Q-%q�{�H		���j�B @�B�f�����n{�u��TwW�U�N�v�d�4�6ũ�2��'��OS
����5�/1�R�9���P^�o��~�������7����>2=C�+�9Q�!J�!1�<�ΐR����%��W�CI
��B��2i�!L-L1��P�����oy�k̭�z�F�YL#M�#�)%�!]j�<f���W��=f1}��
�E4�fzS�޴����:�h'ԯ�~���_9�#Ѕp��DǬ���@:w�!�<+�%�W�X�:�z�ҧ���x�:�ҝ~�WJ��ل���a���3_�b�OH3��0�zt�`��e�d!�QniWƍȍ^f;�)n�K�6���,^d�Uʜ�u�Y�Py!�6��n*r�2��#�5�v#�*�;dPzogʭ��~����/�����wc3�#�[�T�,_գ��o|V�u��	�k���7�@� �[f�K�X�����2�ҋӜ�Ͱqvv{͇(Յ�Ű�� [?V i��B��gװx�J�h{r�K�|��)��ǹ'�U/PQ�R��|�k(R�|Sw&�sr�!<\���;gs Vu!}^ȍ�:��MX�D1Έ�?�[��y�MTw��!�#7������9����֩����~�#v>!�a>r4�8�b+��6̽��0f&o��b�G�gέ*-/!c`?����y�|�5� �����%-�U�?���X"��H�ܑ�v��k�2�z�JZ�v��5�kBÊب�A+�O�<�J�02�m��y-�Qw� ~���V/A��/�h�p�]���䌖��z#��w��2N����y�	)A7�s^R�A������
�Ǯ���I� %V�ڏl���:����S�ˎ���m^^����ު�������=����/�F���N=Ic�%l����*8���_fH�<J��x})	�2��B��A"�m°Ʉ ��:lk�`�A������Qd��4�jZ{=w���}a����*,�:l�ڟ�1�sS��ѕ�$�Aț)��*7��� du��c�6����� 
2���]����{uZ<?�� ����↺�s�Ic\�:\	^ꃝp�}���<H-������m��?�����8��i�㛁��6I
Q��9xS�}��k"4���2�o�"�:g"Muǒ��ū�3�>`Q�b�W�.7���(��	F��t�!x��$��)���}M�.C��	�>ǐb]��z0�0����9��c�Ճ1�Q>��<���R�ΠŮ�g�ɳ]��Ů�g���d���Ů���a�_nlW���8݊��RK�d$o���3��GD%+>0*
�%s+�XYU9-����D��$K5���*�UEjIH�!9*�'��áX��l�Q��N�r#;|L�ag2����!�0�'Km���ިYu��&vO��L���y�^�ʍ���������#�I��s���.�����R�)���6ȧ(�)�����1��`��x�✏x?��J�(`r�sAݩ[J��K|�ޓ���q=�gi�b������l'x.��2���A�R?�����G�b���(�1�_�i�È���*������Q��?+��#xޒ�f�:�W�@�}Dѫ�Դ�������0Ǯ��WT]PMP�7۽����e��ߩ��qp����۽�^���O��svE�=b��L���*�o���k�(����9���%G�_yZ:ƫ���^٨���)�u��RP�Ӷ��b1�V� �.Gn�$��'��m� LR/s��"��Hƶ]��7Y���[S[��$%���R����x�ͽ[H�&9���(��v,��B؟IՍL�G���wuN7���HV�>d(T�:�9f���VO��[:Q0f#���|�Wb�z@���m31,L��A�q�sKƟ��Q�E)&6��2�������P�A4n�W�g+���F�pE�l�ǚQ�T�<��_�ǫ��P	��5T�(��P��C���jF:�߾T$9�k/櫺}���� ���j��s�:���f��8e�������(~$�Z�=c3����ʔ�Vp�4װ�����������ɪ�����$NjgN���ua�T�۲p�Ur4^H��rƭz�#�F<A0霶�j K�(��B�z@�8��&��.T��H���Y�+��[%��|��mf���KHqn�&��A���Q��خ�D5pKc��V�ኯ.(�8�c��~��y&B�/�ї�����TF�����2�y���_=����ka{.�����*{/k}�����$�9�δ�O:�-�	Na�h����泔jFP6O�;���ʾ� �����Ӫ�iT�j�(�9��:��͊rU�Nˀ����Z��?�2~Nc���h�F(wb�k7�U6
�]Fz�2�P�<-z�nU�J�b���zL���4�hJ����+	�F�N|;n/�vSGSUYu�x�R�
�#8c+��7��9$���8AG5�"$v�H�&Wew������܂�7}Ҫ!U!���N��8Nb�!�$Ǳݟ&�R;
GQ�6$���]ƯHd%��6���f��W�(P��U��
VqX�-�q�R�a�����hcq_9E�����Z&��UC����˂j~q�e�qTvt��%~H�5*�b5����s�@A��d��3Rc��zH�&p�h��YF������a���i��9����7hV=�nk'��~���L_2�;$���ͪr�5��K�䍕UM�[r��b���X;Ayni�4��8LtU��?�Eȟ��sU�?��G����Y)�L���d,��S����W��Rܑ�5����'a�9l:4����#�e��Ӣ�ȁ	�ܜ����^ۏS�$��Ku�\�7:7���zteI���hi"aI��Ʈz,SB���ڲ�����p4iwf�j\�2-�涗+n�k[,K�����$eMm/0����CN�Ə��|Vľ����{�b9c]���E�1vDBO��H�ANo��hU#(숸D5嬗VpWvn�,~W5����q[�ѳA��{9�U��_&��G:�����Ecnֱ��v�D����fT���C�G�d�j0��h�p��������Ȟ�Y�`��$�oJ��0�j ǂǉ�c�F�d��x��Ѫ1�~�c62�U8�r���*V5�q�՜=bo���(_���uψ����������^=;��)��&��B8�ڬ�"}
%̪#�[�@�e�3JV�*�J����V5�a��[.KVoo��'8�;yŪ&8.���������t�0U6���.���-K�{�5�c��E�56z.I��t$�M.��`�q�Y4ne�+��iq��D8A���pn:P=�~諺?�/B��n���Ӥ�%C��j�6�E�����NϾ�9$ʳm�rU�B�Lت���YZ$<^�cҳ������n����'+��2IK^,;�jʆ���S�Y��r�u���E�L��PY@R
�h�����G>�[\ޑ��䉪�����
[Xvu���U�n�(_5�'������~�\рd����x����s�
"QY.��vU���?E��n��~�X���|U�p��]+Jޗp��,���ݪ���+޳�p�m��\����|ՠ��xz�>��*�=T�%�t��%Y�F�3��o�[	����3���:���SD\8��:���H�3>D������ �<��8t�U����^�A�^�K���d�pl�u�|g�H����ҪaH����]�B����U��NU��$�Bg�߻��1\U�WYn�o�K�y��+@���A?���-�V��8�~�Wq��K�b���"�Pl�ћ"��)/��:~R��cW�}ZBZc:�{����!��xU�!�!�����a
oT�ZLzpP�5?��å��PU�ﲫkf�\U��x4�=����fv)T*/��֭jP��(��m��V1��V��8��th�梴�QE�A�奯����<�UcX�h8Z��猷�`E�w/   �5ʢ!�jKV�5�Gៗ�mC�Q��@ZӘ�XZ]1Mj9���N+��2�!��̬��1h+�m�n�4�`�JmN�xPW�n0#�Y^g�!8�XM@s�u����6�O��9��V��0o>sZ-�u�m������u���NV��#����̝�6&?b��]ʞ�Z���3k"Owo�#^�rzϡn��/�jօ�{�-Yz����d�]�d���p((����@ ך��O4͏��KFu�F������w����M��T�}�I\� �3@�����N5 zd���M~�� j��0��M��y<	$/�wU�π!��p����*�n&��� �j �X��$�UfE���*FoJy&jU�O�8��C�m뉦��Ǆq�G� �V5��U,ZrM�"���*Np��Uo[� �V�4gL&�qUxZ�	{���f~�W�4���RDB�ⷯUxZ�	�<�C�l��U��RA�`M2Q���A�����R�I)]UZx �+q�zVdU���䆍�j Igu>"�E���j^=�=��ms��B��{<�X�����'a��:oo�F�L�O�2S���$}��K^���:{	�GY�$_��u2.33�gB.�����\iOR��]O���q�r��Cۉ����uw2n���֯����Tx����2n���"U`��P�����(D��܏.	a6Z��MK���@���0����w��,F_ճd�>ʊ�<��gH���H���� �S���N�ે5G�����.��J�Kܫt;"��OX8WTWF��Gs"���F��*�j�D�\l�´=ĵ�k�so��\cU����h�^�`_��Bd�+]���� ؔ�<�����#ˣ� �IrE�f��ؐ)?x4ٰ�4����jP]Pl�ߙI���NX\р��5U/�Hl�k �z*����<h������i��q�f���q���q���I^���AɼD��.p�z��]ՠ����paE�x	x��N7}R���������W�      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`            x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�      "      x������ � �      $   �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����      &   �  x��ZM��8=��B��,1D}�oN���{g��^h���Ȣ��:񿟢l�nϰ$�sj��,V��"��|���Xsݑ�Da��g��(Xv�ҫ$���/az�(H#2��Fv��z���Y�g>�,�(-Jc2�;�UKY�Bt��	��{�"V�K��DG�������,x��WQ+�/�oU��x'U�6B���_^K9j���X�u��v��i��@�(́~yž��[��6���.� ��j6L�O�l�y�E������6���1���(-�gg�'[�b%+8��[���z�=4:-JYH�����Z6\J���O�S��}���J�&���(e�\�9�]9��,:'�]���t_����&4�,JYL��v׃w�%�㦵��DYK˚�X����?�BJnx�-��u��AFnD�I�7�����CL���FV-C��/��qF4+-JYIN��ém{�8��`�k MC��($�^,�������C�l�<�=x�є.\݌.�|=w��@�H��x�@���^���v�U���(_ͣ��:m�Q�Y�F)��Kmm�A�hQ� �9��61��ܩ�Y��S!T��E9���8�L���h�[�Fy��AA���s��mQ��Չ:x�_�P/#�m�k�B�Y�shh�l$~�+��;-��!������Ei�΍�@�x�(��5������T�	�G�â4N�#0�f�LeL�Ў��L��X��yT+�hW�H���!��b_�JaQ���^����ĵ�d�%���3�d�����(�7b������k�
1Qq(M��S�F�ޕ���8�&��C�e2[l��L�:9�&	Y�o�Z�<z=E�&s��?=�e��m3��u�L�����-{Y����pb��P���i��?�}LJ��<�C��%L�|)���1�(/�5L^�̚k_'��X�w(M��;��`y�P�2r/ �x�#BS�f^
�c��e��ҠYbQ��jkS�yР�(M� ���ҠqfQ���ߪ�
��K�� sW5P*��f�O����4���]��E�=��\Є��+��34&��I�
Dc(���140-J��<�J��;����㍗M�YD>Hh3G��,BƢ4��0a,�-F�����?��ycQ��#8�O|� b!:������7����j%;���dh�Z�f9�V��Z�- �tL����D��a����a=�P-�(�M�$kժ�wv�"T,Js�q�ek����1�ĉ�f6�3���O]����TTg"wO��Ѷ3BE��4OM:W?��R��"����͌<'w�|4����~�i⍌��.*�_����eQ����^�j��eQZ��*B�6V4b|�v��|S�5F�Ţ�0�͋�x��M�M�
nǒ#FǢ�H�'H�&�o��ejFyQ��(-��\�,��㛉��=���bT�b����u�=��t%�a�bT�,JK���pJ}�5�S��J_�o\���GE͢���Zt<�-h�ۨ/a
n��=�iL	�}1w��g���fQZ��N�)�7�0#Ϛ����?�k�n���d&�}�t;m�������0,�����u�C�����wU���f��Rǐyi�#w/�ah<ڴ5���lf�Uk͑>*A�ע��o����������ST6�b��vՏ��T��,����[>4��-Y�x�A��Bm��U��iQ����><MOH٩��9Bi���W�Ji�6C(J��!��͈����VQ�M�+oX�J��bUx�E����.��!��|>���`��6W��s\�Y�_͵�h[����{f��xH�G��RT�R�
̠��vc�+�z����z��������a��#z2��CQ׍��oZ���o�?�r(Ц侗+WԧP�qq
���oof�_=������	�)*��@V\�/����~r�X	݄�)�����|����TQxh�$7?��}����z�Q<��#b���ר��$��T�CA<�^v��}� `�*Ng�ŵ�1�'/��O�X>K/*J�?�����n�      �     x�}�?k�0����St/9t�?�<�])��E�MbH�����Q���/<H?��S�`�A�����6����w��א؏��t�ێXb5���-��E���k4�����<�2nS�)6�QuE1�>~}�^��ΫTUQS��6䅢�׫+��S��)'��T쌡F�׻�(^R�.�4m[l��2�}Eq���0σby
֩VUQ�j�Ӳ~�MJ�Bl5��(^��I֐U��"J��T>S,o[��z���!�/�d�`      @   �  x��V]��8}6��Z�|���!p		"aۮ��D�[�Ĭ����{B�L;EB(����{�=6��8���G�"���nK�E�A(md\��W"�Pn&BSЩԩR,�7��F�C57�*\RRJ"@���x�L�9�"�@{.�wܓ~z؎�k@�IA3i� h?zU�u�vL;ڋ�A�k@%O90ga�=��5)�m3n(���Ԓ������Jje�&q��MPH�`��0h/�ݍ�KS4�뼝�����0�Ul0Z�/~M�2�х�#���_ьV59N���/�pO�~�y���D���׃ћ��GJYe��ZKMVu���K8�����%å��\Do���cS�
�a:���l�!��d��2|d���x?�0u�}�$JVC��/�d�f��aO{��үg�&�գ��ـ>P2.��)��uQ�cT�,K�qj7U�+��jA�;�<�1= �_f��uL_�S�Qބ2�lL�O�Mhh^�eX{����b�ʴh�1�C�2�ԛvNq7��*TtB�Ԡg�Dfn7@=i@,�,��9�`S�Ы� �@��ݴ�?1�8g"8i�����UY�/��N�zu�]���K|���D����Q&:I�eں��h�ٲh�4���-.��^#��x�	L���imO\`���T(�ą�>�)YE:"{Z���/�_Ż�?_�7��:�<ғ��J�!��ʒ+
���LY}"�j7UA�u[�'�6��5�(��٬;����?_�	�(�N�(D�1�9̠���z�Qp.�v��>�����Kߐ��߯��$��vB&��9�����4����9����]��>q�o�x���(�G��p�����7��uC}<����]K��.}���C���*,PJ��g}�ί�̫��I��.��'&�����'y�����ݝ%�A�Va��`���mC��3~�o�$�����|�;���|�:zk*��V��X���#M龓}w�>��h�??��E      (   �  x��\�r�]����SD���;'�J6VIU6�P1-J�Ĕ�$���=s����e�^؇>4���]L�Oo��^���B�����÷������=�����b����ք�</V[w�˝N㮺\�W:�A����_-~�ʮl�Oo߀��~�t�%K�/��ǧO>_��4^���p5�j�ҹ�+1�N��I��:(o��J\\���Z0�?�?=|x���Ow&_���������wƐ|��>�l%?@��<_O?P���+���J�j��,��.�!�B��M;�Y��۳δ�Ϊd���K,$C����;�2WC**�w�-I�p����
-���9.�L3C-�(��ݢ`OK�)��{I����l��ک�[��('�k���0�~��4��"����Q�7K������e��ށ�zXa�^��UH ���ګ�K���z2X�c�9�d}�
:��W|��H4�֪��-2�Up���lg���@U��GD�>.���〳��5_%��d?Io��*��_D��/ٴ�_? _�P�tgs5FY_9�ˋ�zKA�����,IH7����L�g֓�]�_Q�<�k�*K�9�9��kH�y�lJF)��̸�J@j*�6��(�q*&�?ҭ�������a��(�I����n���Mǐ�����e�R������9�� ꆖ_D�_�ts�cX7�9tq��,���������
�����mU&�t��s�?^�N0h'o���a>vl�Pp xDN����/�ď��)�Y��EU�:C������ف����=J�8_7>ߝ+��K��@bG��ƕ؍ x
^mp8C����r�:jq�J�ӎ�Rp���-`O�g������N��K���]ʋC�؝�y*���yHa�.�����$L�ˠ��Tq�I{E������Tf����s�7ň{hQ�GO7Q�����bN+�:~%%�;���܉i�O�~D��q�ڴ�PuC�`H�ۂ98+o:)+Z�'���)/���������Y�x��jX�~bWC���`��`or�������ik��TUD�f7�((l�S�v㨁^�Tu�g����ͱ�ɨl�B��?�4?q�d�\����?E)������4��-҂S�rOQ:��[�����_>K��9D��%�8�>P���Ҿ���X�i�)�!�X--��?�1=�G+C�r]����(Et�cz�vd5��>�oP�H���.~�9�f7)f9"5(�C?i��v�D1���%�����V�6�IñE�oQ�?Ҍ��I�r����6��J���f�>W�H3�h��ߠ4E���qtX5l(�#���ee����x��tQX{�s[1�(�# ���lcHd�9��7(���a������gN (������,ʏ�Y��\�IxKX���2��:�5L�r�A4 �	�3~L3`t6kc���(��o�j_di��A�~�~�3���O�E������NW,�7���&�"J��%���3x0�qu"�?�t��L���Ll+G%~��8S���f*6U�Jy .���ou�t�@�-Xg����湆���Gi���8E5{�(T��K��Q�B�R��������/??}�?�������i�|��i�h��O͗t/��Y��2�w��o�P��ק(��R�n�i5@���$�VŜ�D�8�D�3y��2ې8�n
.��<�x�H��[�Fq�&�U�����4x�����Gc���	U����Ǐ�@��!�Z�4��nh2A�`[�Bs�*ٌ-�u�-���n���茯	�&^���)J�)O\��y7��Zk�Q��iO���W�$j�`�%~�g��`gH\L��.�Ď �g,5�v^��F`�������"!�rL��(����썗]� I��|� �!*�r-_~�U0u�_���(�������G�1�c��@?j�|�~�y;��?EMC�M�z�?�=n��a��H��I��2J��3NP�0������8p?C��g��o�0��~�$v�_Ǽ�p��>�=�Wƶ	�������Q�ϋ5��۳��G+㪈�
J�����'���+/\^ft��P/��U�}٬J})���b#B�6������9�^�Hz�|�� ���������4��	�&E�7�_23�)���tq�=���f`kLa��A$5T��F��� 8����ѫ���y�#H؀�76�?��k���*�5y|�r���̎��<���H�sm�[�WP�q�Y���������۷�j���ߞ��F�kd%n;U�d�(�rȋ�=|!����;8Cy3�;6���FT�d�͈(�J�-��E���+(�ʿC�3*�SY�Th��7�Y�T�b����͋�#c�Ȕ��CM�j)�D�A�m:V�C�����lK���-���+��+�i��f��~lh"��җ��ܬ7e�b�;�K���pv���z[���19��{�J@��y�,FF٭��F��q=]���e�nP ���f��� )�Z�z�eW�?DK���~���.���'N� ���x���C+$PH�����- �7�W��N�TgD�`��w��<aD6VУlrP�h��Fe��Xu��heH��	jEAS4�u��e��ø�[)"yQeii=�PΎf�5��7��:OQ�f4D�(��1��߀lC�рc���v���&ԁ�ztqS2;���J����@^����ʾ��w�M�x���Q�ǡz�%��Q��"m�G9��La�Qx��^����� �8��7
������P��4z}�Rpu�5�'�N��� D�����߄�y�e�B�@G

��P�(4zt��/l��e� 
MT�5��k�e�B�+���PqC�4(@�HS��S��w'*jP O]�W(s雑�R�����ѷG
j�l�-��ɣ�j����3mQ O�V7���t/�, ���=��Uɝ�A�� x��N���Ǡ���d����5�E��}�Q O�t5�w�gР, �<N�;=�Y�lE-����L�F//�.�(�_������b��r��PaWCI}J�Pj~�赑JGU�[�B�q=�-k^�߄���<�����z���O/_��|�cM�/�W(����A�'u �:�F������M��k� E3�:CY ֮��=���+d�Zz����UTdY�ٻ����cN��y������E����ѷ���p/���e8���;�A�m�"g(�E��_��v'aJ��NQ�� ;�8�i訜m�2������N�����QР, @�8��m8D���h�ΈD��*ݨ�ۓcK�*����(���TP^)�;�����(�(BE��aWB�P�3�@�O�s���`�ʏA�oQ�����ѭ���&Z�3��� T�)?�5zõ���XDY �Gҝ���Zke#mQ�!������*�������TM�r8�������p{��jK����ϕ��R�ʝ8[��>�ͣ�����8�V�fIDY |a�fq��O��o�YQV��^ܾ��YӞ��� de7��G����(@�s����zC����, o��XE��Q_
=�`E�����mE�ϠEY �h���J����N+k��BDY@��v��c�n�q�� ���C��b�x�ǟ�w�,�, !�OYQ�>M�	���(_� �/ƶ���1'����A���ɬ���;]H��k���5)�ml��;��S��6�x[�Z�j[J;��Q�����v#�������%��m[#S *;i��G8��#�Vx�^t[A�(@8�V�)8����.	�Q�p41$�Q�:�ݝ�2=��Ĉtg���,p��g��U�z�����E�Q��vK_��}���蠽D�Q�A���h_c��v�8?Ey;�[��������o��x��ty��)�O~y��?T�im�}j����0�~���wY�+w�s�ep0���!�|��[����7T�:bC����P�p���a|��Q�j��2IУl�H1�{�y��3�k���nm��>�X�A��[�??�7o��şT]      *   {  x��Z[��6��Vq����^^DW�et�(� >�-Bq��Q��#g$�-EY��{�wѨ������?�U���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$۟X��ѥ�g�յ��bKi��e��U\<74�/U�<���-iπ�\yFh��T� ���A��ʉ��b�+��Z��_oT{<	y���"Q�D�i�R]�˕hG-n��,G�}_�x ����Qi�����%��}sTm[�0Ѡ�E����U�ݵv�����y��T{���-�X�2�� yi��#����E�9I��<e�|D	������|��Viz!�A���D{Dp�k�|%�AQ�E�D����Ѡ���,��b��%5M�*�,�K�`�eʷ,�Р����K�L�wjc�3$���}g|�s��|"zBH�c"��֘��E�+���K���W�L5��7�x_⻻��T��}{F��tH���5��nh0Uz�¯����g4�F-�����Ͱ����h �Z3)�>�Y�1]� �^��M���c���ݶ��`D_m�XZ�}�����Fh�"��[ۭ�u��n��`�[�������цD4��Ә	�,mM햤���kmo�^�Lg4 C�w��:�y���!�:�Au�f��{͍Ѐ��&� D'0 ?�dă>o���<W0 ;����g׸9�a��hdG�����=�>�z}�!�Mw/y/�V��V��dȾ���Ҳ�x�K�݈Fh@�,ڐ��غ&�:�����",h��$}��Dy�z����`�[�|�ɶr1���}�t��������`JLxjBA�1��5+��	��q���N`H<e���{��ƜD74����dy�K[z@C��ՓТ�h���$�ݧt?�!��ڕ���}��Uw��'4�"�"TIK�A�*���K%� C��Ǯ�Om�J���6DC���A�M~�Ү�5J�Qv���"!4�y$wU�hfHpB�I�4� �$O)�hn�R�O�U{dU?M� bU/�y�	�|��꧉��ʪ~��+�U����+��h��!G��%�t�ڕ�_�Y쁆ڕ�|h��+�ld{�Mх'{��^��4T([x�Ne�#BSt�:Z"�����h��*�8@@	`�1�};G�Ms��։L=&ʤԷ�������
Y&Z�J�N��Ӻx�{�Ԗ>hC�f��J]@��d(�3��*�C8�{�oGU��
p��J[�ѽ��tG<~��ki���8�$N�v1�';�$>�5��L*%o*��>��'
�q4`bw��L��m�z�]19�N�.����i����u�^sT��.�����κf�̝����YA�E�j���BU�����9�

�Mӑ%GD�:�q��	]��9P�����t9�
��p&�����!�����i�|Ѐû?�L�jN��P��`۔r�� B�(��I":����^�4��} S��\�w�8����c���I��
�9�rt�KM����&�n�] ZJ�qg� �$�fg]�[����'�w����u���c��uS�NI��~���c�L��.b��F���U���/��g�&�̩Y��	#�#��Z9>x����~�Ƥ��<�q�^��D��������2�q�ɹ�Ly�e/|ҝ�8����_�爉~����(0]q	1�/'��8�qs�*�ji��N�;7x!C�if��f|`���n&��<[o���m��L��wΨt����N2�xL�3�������w����)/��l��
�-�D8wFED�{̴�!"�Af�������3��������牾�����3�T�OL������i�嚧!
&�]�g"LWo���I4���+��׌Q0a��ȔHL׌���B���ʉ      ,      x�����n�����WQ�A-�@��O3� �#.;t�F���II��DR�]��zk��$Q��*�G�?������},�!������/��Bʿ��k�_"~����[��~�������ņ?b�?�ѱ� `��r!9~<�B��@��D�?�������?��$�%������������X�0|��R?��:�SFu�^�\Bm^u�W,Oh�WG���-�:�V�BM�U|�5�_b���+��֭t-n�Q~�������`�ϫ�T��Q��◺_��_R�3����|x �ҍ(�C�?b�h�"�Ԡ�������o�������_�=Pq��eZ�jZR	�iA��֦
+e6��i�+t�j����������?���?[�j����+ק�}�huC�L5z�A�;d�a��U:��� 6=�]u֥����2���ù��t����\�*MU��l�Z�?�[_���~��밡3�E��9{,��Ԥ�{G�!�nb����{�0��ꄁ0�����Ě�:-Uˏ��U��P +���J�H�d��̀�� ~�m`}j�;��6ˋ���b-/�_���gu,Ϫ�
8��!�F� �F+b[���X������O�{DS��������o�}/�_��x._�>1l$����a)��"�����Vf{�ޝ�-u�Yn�o��0cIJ/��o���_�<�&e�:�=b߉�a���U&�-���Q��(�W�2���f��y��}�R'1bވ��ue��i�Aq�Z����f����B�E {��c�V���I4�u� �q�t��7VבXu��S'(H�%}�j*+�ӻ7�>j�Il����y�u�9Eg^��:���){2h�&���u�Zo���:E�;���	{ `ԭN���W������e' &x�5���BYbJL{\sRGԖa��kV�
QlU�f�pws��f��h�@n�&�O6
�@�B�.�MSe,�A�v�c�r��^zO�,՚���$����BR�wWqGUA�7*Q�E|��\ddNQ����k�j����vq��L
�ɽ�ws�K�{�E鷴�[� ��e�O��H�`�{O��9�*������¡����ݸyW��(���:Eơ\��(��P�cL���L���H9����}�4�Wg��h��ר��yk�f�M8zR'1b{kLr]b��2��Q�n_���#i�ER��=��K�ң�O�:҈���k���)� �!���� ��Q/����a?ʻB%'�%�)�_������忤�������Ӵ;���H�i��~Ρ��r����Kr\�Sǵ�qoC�6�[�L�xm����/��jJw��G{ e
L�!HO�$U�Y�q�IhB(;�B�w��*���*�';�����o9�r�-���[ou_3iI��^�S�v��h�S�[!��$ı�(�.���D�4����
�S@Y0e>�ŗ�#-%��,�%TeO�P���Gݜ\��>B���t�?��,��j> ���X�z}��2yU��k\���c$^)qW�@���'��5J��a֕d����O�S��NT�憢��*��܊�L�I��X�:�#��y'���	b�J�,\uq��l4-�K�}�@S��oT�Nߑ<�A�>����;(Ғ)���
D��|��� ���!\SwH�ꞓp�[�s��������n�N�<5e�={L���g��O�\�6�7�2^��i9�&k1�󨐌U��=T��r��[h@'��R"���P��[��U�M��(˧�⸦ QE��rU�����(J�1�U����˙Zآ��Ƹz��������������������翚QU)(ᨡ���}'�b
�}���7�!S~���(#'~�4��:P�S4�8�[�Xc��:$㶿t')
)� �����\�wY�3
Y(sHV��4*����*���hG�;+��"'EI{�V�I^.��TU--�6!�Z��M���ev@PM�\u�`g���z����ae���H�x6�Q� �P�qA�Bi?�Q�&4+N�:Q���Z���#��~�<��s�Zv^HHA�*C��f,�U���`�7T��E?*U�%-q��l��U��n�D�'�'z6�wR?�DUr�nH�{�מ�������\)�cJ��M]��d)��>Д�7�IoAqJ��"J�#���O�!D�T�CwS�5���r�M�%*�Xf��%W�����DC�SLF���$�:D���|T�Ic=��87�}M���d��6�r���Ϻ����� �t�*w6Pg�9jS�u�����@���p~ Q涻���Xpe!��賨�҉���)X�lΌH�$�S4
��-rز,��`Į�͊r٬h�k�B "���]�OF�&m踉�@"9�w5�(+�TS�R���S/�xSo���	͛?�ހ���l��m�:t���{��pj{](�L�1 ��7�6^E��MRU5_�M�z��ͼ�à�O�KT�j7R�81R���K�ō�>�^�~�	����m?^VfS��������MԘZ��&*'�4������N�-#�T�$U^���In��Q� ���RvO>
�S�����R��	r�@~�B��|�gz����y�ݪ�R#�w+�h��*�W$��U�'��cWUW��n�
@V�(�NT��:R�ٗR0ࢦ�*�/�BA:eI�p���>}�pAU��mW!�D��`|��Ι��L��)�-��3U�5�݉J���ՉA��bHŀ"ǋ�]�V'J�v�4+B�H�����O�jU�7���V� ��DK�C�:~U\e���R��������i�p2@r��P�V�F'9��$�M�컺`��TL����y��	��Zv��p��"�H��}�b�<67��A�V�6���� �y�4��JYF8�Wl����1{(WL�E9;M|�	�C}T��GT�
�y6���^(9�R�����*�Uh��Ț�I��W'�NA�FC!�bP�7�A�!��T<f��=
.J6� PJ����Ey*����𲱻:Q��Q�BPKJ����J)q�� ����d4����D#@F��L��g03�*�q�\m���GE���o���u�v�%V^�8�3kU9۱b�$��lc+���2O(O��w�J��:fVT�D1SlvT%9���'�]T�����*P�c�R�E�ԟ��GU����&j`�~��4x;�:j��i)Q�#�L3�g�os�/P,��4]u�ۧt'��N��Yc���(�xx��<M�6��,(/2�f�_��m]u�`���Z�rd}�w_�z�%�b�33�܁()�qt
s9�ݮ��uÐb�z�m0�y����v:��T���d�C*E�%�Mc���ռ����'V��a��=�y�1��Wu��ۄE����0�R���o�)W����`US�I(�J<Ԋ�dŚ�����/�PPT�1W����UȡP��Jۆ�8��	@�qN���0��oV5m�J�f"���:'s�UÅW�,8|������f�R�U�4�����Dᨖ�걄P���p?�ų�ou�8RT/��̫��vV���B��l�����`�FH�-�?�V�<~��Io���d��r�̢�{��I�2>�ݕ�mI���|,��Ǯ:Y�g��e�Қq��:Y0X^��Ň�P���K�Y0=G��n������kM�8H�z���2*�\b)�!w�y�'��W�Z���8�RG
5�C5��j7��Rw��;��sDߐz�{�.<x��R'�P+
1z�X�`�o����MU�Un,�Д����S��M��{��rM�"�$����B��f�;wU�a�)˵�Q�oS�w�(�$���S:���u��j᧬pc�(cSw�o3��-�gd>p���
�`��}����M���<�\59��Tw�o��ʃ��\e����	7u�2\��f{�3��>��}u���WT�9�a\�X b�Zu���p��,r�5T�;/��蹧���U�j��X��ߚƭ�</�6���̎��B1��Z����D���w�R�{��e�Z    SU�L�@�b�=���E���|\�"��Jee�}_[HM��,wv���Mݭ��aT���\p*��xAW���)#F�ZK���>�F�ouV�xƈI��N�Gj�S)�2#�U'
���O�����
�P�U'�H��AE��w�����h={F�QU�����͒�RX�u�VKݧ�q��o?� ^�%^�|b03��NR�U

�d���}(|�]���m��s3���zuk%lJ���1P�!'���ZG�;��)d���C�OF���:Q#��QP3�5(9�C���7~?j�QpE�@���07�F��:Qx��E�N��m����3�l*�r8�@$
�h���[%���U|TU���������6_HH�T��O��.]E�U)�k?���+���u�DS\�=�d�M ��[ C��U/v�����M�}E��dTsP
�S_)u�n�i�o�V��C倚��U>��8 ^����A�ԕ;�7��(8��NVP��*��®:Yx^�^�Jg�]M���]���*�����=V�)��]u�����F���h)�ˀ�,G�����T�_]�j�'���=�FK�[/�3*R����y�l��MU��&T��6�Ƌ�e���[+�NT��(w�� T��ݼ9dSwg�.&�Na��z��/>͵>�N��,d�6U�P򂄓ۻ�D�*���*|�ǉ7]u�����zә�(L.t�����b�������E�xh���p�Y R���%�`�ԉ:��H^��y�U���&��8A�s*)ai^O��.�o�����*G��:����9��O����2��e�ʼ��ws�"��NT���O$�(�=TW��vEa5Y�*�9�U�W��j�"[;�dy۲��Z��J3�S��Q��|- �Չ�T�NNWa��N]5�}�B��0�U����IvGnS���|EA�\�C�C'd�W|�}X�P�֤3�Q�,�&��o�����?�h�%�u��AׯTՂ��*����)�%'j$o�����~cU���y�|��\V�f)�U�q7����v;��#��;��V)^I9�l���E|t;˪��(~��N�c��"��M�u��D��ity]�2Gʵ�]�Չɕ�C�λ�^_%9M�oA�N�4ww"����l�W�*��Q��]��}���c�`a�/;���?��2J��*��`����r@�u�¢y˺)�~��sxR'+�Y-�'��K�|��y��1OȜY9:��(-�W��O�����i��\�7�$����fFa[�s���d�;K�!�Y��w:��d�+����y�UDo[sS�<���^#�E1��,_�y�f{��QUw���M����P�Kh<x�]�*��|��`�4'��G9�u�f.���d]�\0ZP����.o��k��Z��YHΥ��Y.�}����Cn���E���C�MjE�*Ӆs��W'���_G�q�~X���|>5^$��-��S��=��
���4T�I���E��j^Y�	�^%�����O�O��q��/�hQa�TKP��ս�^�>����eLT�f,�0�U+�a���2�j5�ӛg�V��x�,b���ޥu���������w�lo}�V�3(����v� ����۠nB��M��R��Sd;o�,�v}d/-��a��:o�,�6G���i�:Y�Z/~��Y�$_s���7�>�>�Z�u�����]���Y�U'��3���U��MUw��z������-���O��u}eT�M��a��Q=�����a�R'
�����b��ؐ\�y�q�.�i��g�>��I�U�e�|y�o�������!�`��'	��J�q�v��
j0�?'u5�9��o$���+�ػ�.�%�Y0��Fq�Z��<!��a�N�R�#�ٷB�N�\�:Ջa�{(b�7�V,^_���y`�������Z���Η��V�Y��	�U���ð���MUf��1����{����ѡl�,�\jiY��U����Œ� ���YvZv��:�!廪5�Rv��i^�O��wu�D�]�h��ׁ,L�nD_]�z�E~�RE�8�q�_!��6��̃a��y�d''����e����>��k/Q6�ՀF�d�ߐ��٪�b�|�����z�p�t���>|uU�H�|�-���h��9�[U.8��r���Y����`m��%b+�?��t��XSԬ.,�w��けWޡ�/���GU�+�pe���rƷ�����jV��r����YJK��b/�����;<ב 9�Wm�䳋Xx�L��)�m��rV�F�9��Ðrc���s?y{j���)�'eծ�gw;�Y۰@��9�6����l��|u��hC�8��ֺ�J�rO%�36��LS�MUƑ��K�O�����yzz�^�W,��!��-��fq�i��n��ۈq�X���U߇X�=�崻y��WKb�"�zl�8,�+O4Y��.ֈq�	�p�%�9,�ג�Ym���a0:�b�a�d�T�CyL�E�ô�`#�rV���%Ո����dGw�(���a�Ur�*O�š\�9UL����O���X���0�����\�Y��Um��<�hԈ�����$/E�HC=���b�éo�������'����O�P�ΪŽQ�:>-��wSu���;.�Y��=��[�
Į��������Ҫl3�D݄��4���R�ԂS�(9��6B52�Эa���K�< ��jt�&,�Zd�9��d������V��P$J.(FDÒϒ��b&˷ZUt�!G���Ţ�0�l�f�h�&*7�9j�/^QЦr��G��L����^�q�Y�z�y�S�~D��hN^�/�$�,rl&ۓ)������U�̩�B����)�l�y�����E((5�O���`~wUO��
+R@�'<м�Ҫ���BKمe>�����*;���+� �2#n��lC���jŜn��rK6����ѿ��{��XǙ�X�����e�ІU�!��"���R�=S���bǩ�XHIXT�Fi� c�2�.�q�dV��uZC,�c{���6U7�9?�]����4~Z$=Ŭ�rS�]XR��֋�k�*�C}D5��~�����}y�(G'̶���u�x�����r]���V��/O\�xE���y(��j��]u��F�W����Ñ�כ0�U,_a��öQ�K��p��.�ev�钗Ȫk��{�鞫.͞XT���aeD)_懲U�v�0��cȯ�>�����k+�ЂZ��^�&�������1���Nѯ�V�x�gݳz`廸�Qdst�W'�9&%X��=���N�)��.X<#��ӊ���׺�9p櫋���X8��xqw��lh�7��k'������?8(�)48����ˮ�.����i��>�/�u0_]��� bOj���u~P*����^���Ҥ�By�]��תf�#������,K�H����]Ֆx����˕w���T��`�Q�ʧ/_�#�@^��מ�oߨj	�\b�����-S�.n����WN�B���|{(��٢�!x��e_r3��%]`|�Ƥ��i%ηv�תa%�a�C�D]VwX�%�uж�V�T]3���:޷�>�u��M�ު��^Y=���LN����_?Ӫ�W��r��z,������.X0o@�2N�Ý�H�oS�k�<�RiX�u��4(�������Avq=ӌ�Gl������oE�NX�8�������v�b�Q����l�S�N	��!�Y\��h͕��]����F� ����[E�>�%``�v�I��Y�LTԩK�+,�;G.̻�hTe�����N� ��~��8H����u�*gU��o��grV�hM?�@�������:a����ua
���&si�M>��z#�NVQ��C[���?/`*&_�������`�>�-���Vq={]f�Պs��]dXki�]��/�?��.���8�9�D��S���G�O�����u���0�Gnu����U���M�;F�̢��ճEv��|�u����⍒��V�&mX�V� ?���B,Ĕ{��G,>ү�R�����������Î4�9,�.V��(    ZL�g%�TtB��E�WP.q Q������E�+	���O�Gխ��T��;MP�]>��Y����b��1�|��c��
ˡ���X�q\*�.�2j.��ź�_�7>E��%�f�����_P8a)��y�P���6u�����7� ���LN�uU��x\
cV�d=���+S��|3��b���\��Eߥ� �9�_/�.V�����#Kv>��xY���.�y�a�#R��3�&����`�ؗaJ	у���B�ꂕ;��x���|j>��oS���/{(���	^7�gaY�N��K�wu��su^�b�j}J��Ъ�uv��M'�u�I�Pn"�MU�yJֵD�~�`�`4�~U��6��*���Y�	��-.�9mfT��]�\p�<�vW���R��8MG��q��F؛�<G:oU1���|y�ܻV��H�*f�g�B�X]����]u��;U�U���9P�޶=�v^/"/����R�19�]�T�e���O�&���6U�nc�QN�80>P_����f̷Q�{�h��:UAc6٠�U�8%���I�)�%��~�iu�΋Sk�y��w����`�	�aȟ|�`��.��9Ə���|����M4�x0��j=5�R��Ar�r*^�����j�=�(~?���n�@�o%V�V��64��q�����)� �O�1�3 _�3!�!ƧI.����⍍#
�
Z�|�Fi+@soFT��0)0��'�2y>J���Z���8��."γ˩�ChF�Mx����C�j9 �U���d"�]U�ęY�7�}V4�4��pN�e����=��׷�|U�pN�����Ǫ���7Q��b��_f��J�Xrm/��K����̙X|�"�ES�}#_]�s�̬�_��X�/f�8����q�/L��`���W$��|���%�]UƇH��L,
KkŰ����j��!�e�9f���E�׃&�����Z�E)�&������Z��W;�(=X���5�R�M~������(���k|��l��$�9�3�B�3�|C;y��z���b��bzH�a��'���Z�����>�0K�]�n�,}u�.����'�c��C
���R\u��Ӳ|�-�>�3J�#z@�߆Z],��(U�ղ�������Gu�ʅ�=@�^�T5_�53�'.��gP̦�,Ld&W]�v���^6���X�Tf���?��3��J)�)�wtͥ��%NB�S�U��[Í�.1x,�v�u���U�EYC���c���T]�ta�s,ٰ�$!U?cTͺx�6j�C^%$oR��Ī�u��pB���2W0�<՝�?����5*~��_�7
�B���U��5jᯇ'pXY��L6�v�ź��Js���W�o��yy�.�%֨r���z�S�rcϵy�.�9ֈ�D�� �4�v誓���F��+Ʈ��QZ���I��k	r+j�f��@f��
]u�������*/�D�r�� �U5Q�|��ƋDL��`�W]0��2%��"�VS�j�-}u��
����z�4�՘�Vn0~g��o�+`��V�0ށpa9��FIm�c�C�Q�R�8��o1;���-�_Yd ���UZ*�{�ê��V������AA��`�Da��ҁE��=_᫋u\A�o0Q��P�P��켩�/��>��^~x/B@���{��/;`�L�����9���D�(��UM�]�2������Ux��c�7����j��{$>_z���K��\��M+n�ފ��߰#v[�?Ƈ~���5�dve}u����RoY��1zI%�����lW����pXZA�@O�p4�`��}D���R�����R�W|\Ԯ-P���uP�2�ӌ��ꂥ����@�V�h[-��+>A>Agb��X�����c%>�mOX��b���#�Z�<�giu��Ƣy����YZ���`�H}u�ʍ��}{�Xr�m��XUX�L�%�%5��8)��L��]Uc9�KŤ˲˒W��㊋�/$J.�b�䫼t��b�bwU�R��0gT�Tfir{���"_]�xdA�4"`Kf����y��)'u��n�Y���U���3`'u��n �q[�J��]�V��6�i4�_q�����A��P��uv Օ���ߥ�7?)�R8'u��n��~Slɷ`c}*�Uͪ7�}9��4�u����˪�5���&������1����Q]�~��ܼeF���xƳD�NX����bU
�eb��D*M6��\�8��5=��8@�⫸�VN�M�a�Q��,�p|�*z�oU�����A��wi�����`g��Ze�����+_�E�e���܈�ň��C��p�1�Ǒ�K5����tT�-�Y�k�j&7��+���I~�Mm��|�T�o��ܓa�"9V�^+~Tm�gOŬ�Gq}�7]��b��
y��[�/s1��.�9�aV�/v�,���aV�,8G8Ċ��N>�u�vՁ�I]�s�C�D.<V
�"�$=��t�o�D�X8�"d�xzW]�s|�,~�َ�q�<����U�⣈%[9+�Wu|+��b��ba��8���v��Tu]�Q���=V�gn�`J]����#*Тۆ���V=oh�źzyl�m�"G�ñ^��|��y������V'�^� �.��J(����b�sۺ,H������z0D�.X��V��Rq���*���爹V��s�J�[�nś���X޼A��[�V��9x��RY���:�f�.��sD�cE+�c���V��9"t�{�p���[�V��9"R|ҽF��r:��R�=GvY[�?E����*�)�m̶�jV)AXn֫l�� �b�#�]Gި��%���������5��ՙ�_�2������y=���O���R��`p�a4~j'N���PxC�ԩ���϶�K�V.0>��66������qR��a9D�YО�����xu���*�-�
�Y,�����V�����W{=y0r���t����p��Z�у�ӭ��RW\�xCѨ��%o#�֚�cV]���ȁ7�cll���`'u�.ރ`��}�@�T�S�B]|G擸�𿃢���5���]���Ҝ�za�!l~Ŗ�a�����{�h`�+�G����I]����(�h�X�!l:�u����.����bU����;b!/ܛ5�v��x�0�W'��|�!P��|G��<�1�fZ�j��y� ρ$Ê_���zs�W�)�� �Hw&����Y&�Tͺ����σ��fi�'1G�vc*B��T�g�&2�����^��������v1|��l��[ˮA������Z�>�Z
�>�[~�ɳ�oUy�~1|f�����J��.��_]��D�K�����\��|�j��V��2��tDk�����"�Y�U�2̀���8g'Gm>���U�Cpf OyglL���LҮ�`�aF0�ꉺUO�`^%=�v����+�.L����Wl�i'�eV��k<��&ە��R�`�H���
���g�|2��C+*u��c�¢��G��Wp=c��q$\��G���eE:�=7���s�������cUy�ȝ̬�X ,���tX�eR�b�8W]0��b��r2;��y�٬襁��?�=a^��uٺa�p�
�1Zu���p6��Y�mvo����Uk�oO8�dIE-GyI�ӡ���vq5��W	� ^�����ÕkR+�ߥ���T�a1�X4��'k�MUc,�+��n���`7�.��z`e�-�LΧ&Yd����.
���<����,��V�����`e�\VM���6��=''{���hC�s��`�JK�`/U�D96x�0>egf�Q�|&$���]-�������Yu��J6�y�L�&'��
�bMq|l���M2�6_	u����x���de#W��<SL�����ڐ��gV���ay��a�q,�|� Pj��S��T��u����ҽǒײ"�m�T݆xa�T�H1�wa����!�T�*�򣎖)��Ѷ�ܞ��<w8T5����4��)�˝�L���;`�UrVч�	�z̪�o=�P���~� NR�j!e�`&�Q    ��d����������~��#ʒk      .   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      0   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      2      x��}]s۸��3�W��޺5,�O�L2I&�'eg�Ϝ:U�h���k����_W��L� �)g�؉E�c,7��FC)�)�g]T7�b�w^��x�Z��rͶk�eR*�����\=}E�s�����\��B�H'����E?C�������Q�˄5`^u��l_̖�|Yn�U��d 'U�T���Yd�1ЅJ#�dS���I�ϟ�f�f7˪x�����]JF����g�M�����Oߟ0�c5[s!D����P�E�/�$�F�TN?D�o����x(�G� ��7�RIمi�8���$0�ܲ%�T�H�ܙH?�����L�����"_��S^�l?��Hzh�Ɵ�����8�:�U�L����L2�򪨗lZ/��}^��v�yW�H&�(�9�vJ8�%"�!
Q����̝��}�&K;���|�E�A�Iv!�(������_j�M��rs�"خ�w����v�X��͇ʺ+�Y���@!�&ҙpd��
�e��+�#��]�e�pT�}� �V=�S=�(ﺋ2%�º�E���K姏��x+��&����dWyy����7�����,�r�y��Io}�L�H��-5#���JX&ؗb^�����/q̡��S���?���X�)#=`�E��ţT��GQ�x��}�7�|�����<��<�z̗ۭE�&��D��h`�&,"��X�Ƹ��zW��J1�T囯����.l�<vy&Ek	K�a�L�:�3[��iK#ŕ��Z��Hdĵ��L�c�	M����D�H���$�HrI&ڌB"�ɢ���%� ɘi�����]H�'�g�>�Rz�O��HfC��M���p̧��T}?��O��� ߨ턚MLg~��R�r/���1X���$U&�?�"!ݎ��f�P��'�zTp58�h���} ��I1(�&�:�F�c	�zѸT�ф��p�?���^�P��T(�!5����%]��S�H�b0S�]Q�d�{S��Fii����T�%��R}���N�r�o��ξ��e~��I�G�ׅ�HWG�;��%��8<!���|=빁τ�.c|f�J���K�Á=�]V��+=k��A#�-L�T׆>�gi�� 7��0�uUi�X�-JǍ��X��͖O�7[����7�@u�	u�����\�YvsK������Ĺqe~�,o4�3�)~��� vq����R��R3���m��윶O�E���@M�!&�;�	Q�J�0C������%?ttp�![В�9xw����KDFe.8K�/#�FNf�p�l���5�;L^���.�L������%��$R��@�4�P����@T13�}�@\��n{�ͥ������.��s^g��o��#��~�#��iG�Q3Qj&�K�ɔ�H�x��-��ny�X����NF�@kkR <H���E#Y����_��s_��YZK�y,��f���]�(��l�K�?D�B�M���֏�cp��!Y�
�XU	����R��	�,W��,����EXU��>t���;�b�g��c��l�b��
<��,�z$�,`q�ˈ�C7�?��z��	��a=tV�#i�PX\��2����#؂j$����X/z��*�4E��2S
����x�ީL1��f�,�{�V�T�ڇ�dY/�yNJ��f����~8x㌜�F�[ao���Bq�@���1E�Hk��T/"_��?��rr�۪��\��r)�����BxddR7���A�T5��4:�͢��i�q7��S�g:q]�b�(v�C���hǈ�N~^�_w��ؐ';F'��)/If�cZ�pJLB�b���P=��}�b�}�f)ʥ���q"6�Y�f]��c�ȓNMo�R�:��`Rʡ���q�~��zJdX�V��s�l��$=�ݱI���dkH���,&�ĻN�Y�?J�c�f|�6,�/��~t+x�^1w4mS�`����*%�g?Տ&ɂ���f��2!y?rB��R�E��G�(Kz��U;�� :,`�u��
n��O�[���\<�-W<YB��8� e ���m6�h2�مL�Ͽ�H��$2��s=�>9��~��o�@zv�﹀ƚ!��eY�]!d���X9z�O��,*_
m��p�^�8���GJ��P�p�&,u��V8�K�i���a�EQ���U:H����q�52��p	�J��ܷO8���@E�ѝ�9���8�����_�%x(���֦(C�B��W��~L��T���[mG�s��Pi+�4��A	��п|��I��BRZ@e�K�#���дy ��Ai[l,{/�I#\����%�,�+sV��ھ��`��]4�^�I��glai��e�)�ʁ��]h���h�Rw�vuyJ������ʿ:Y�68=�lH��u��$3ړ��@�-vL�Б=p��4�t����sA��͂��6���wr�$DO������L��k3�4�P�p3w���'y:�X�k�ÇrN�=V�]n���$>�Y6v�Ȁ_
]��H:n�i��x):�w�>�k��}�o�G�����U8���e,�,�ẳ�N����VӉ*m* fR�ÿ����V+zI[�|�+�0�Gj������H�:?ջ���8�vDiݒ�� ���n�q�Q���Bh�.10����!��n��P�#�X6�a�EA�P�뜭���fZ-�!���q"�b	C���R��r#��pX͋bw�/�rvXm�Egi&u �sW��;n���R�`C�~�n���r^>lG�����KD |��� '�(q�)!j m�l���S6�y� R�f-d��1)4����O �'��e��Z��k�=��4�I[� ]s�0��r����!I��]эB�&A7�S��e_��P��]@��ӗ1�|϶F�o;*mH�H����R��8�?�|������y��^
�j>�!�䗹������xs��;D/�&R)�KO����]1� � `q$ӳ�	���ح���ty����w��C6�`��Kp��@+`��T��Vj�ͳ�h7�6Y8�"���\D>b ����v���ݔU��[��W�۱�NۖpbU�Ι��Mn��|�f���*o��-�+�͇�a�A�J�@y�P���n>?UZ��ډ��e��xڦq����4��Fق�r�*��}�)'���ɝ��h�Ƽ&���@aMx��1헝��_iR�B3�xg����K�Aϣ�j�~L:������+y�ŧJs�KQx]���%E9N�"H ��2|�5�޷���Ŷ�����G�������
��R��-1Lk����."0��D�%�D�1��2K�%��C+�kzݩSɴ�G?��\;��@H���̐@-�Ik<X�?�ą�о�N���Yʽz�4l�)�.���r�PГ�bW�Ӷb�r��ϒ�� sL�{�5`���A�ĦMJZ7`9�sk֨��_�֎&(��Ly��� M9�G��lV��4�p������*�=`�� �ʌ�����FeL"*�R�s?Տ����]�
u*�r+a��p���ci��R)]8^j �6ē]X��Ѣ^}1:~xaq�)Cp�^�+�ϥ5 ����`e�P|�ꨡS�D5�
rxe���R�����R-(JK�����(��	^8.5 ��\2vy�'���5��ë���S���ߘ�emGé~	R����=^�$�)Y%�:�<ɴR���#���;�]Q1*�U�#� ��4���A��,_��4��,T�}��B��u*<P�T?����P�U��M����}�kX�ֆʞ��:9�d:e*]L^j �?����:�7l6�g����V�N���[��-��'C`!�u0��LX�p���Sp�Q��F���6B�QJ5$�KIu�o{S�6�!8آ;�osI����m���;��e��N��*�M\&�pU��_r��m+�u.F�)`+����aW�}�F��)M�փC�|��;���-�T�~6�D�U������B�))��d	���/D�SIs�ױT:H;����&���HYm�(���rcv}1��I����    [�7B`�H�N0�w�J&Ϡ�I�<�az����ip"�Xs/�YΦ�^z���aq�Y��P���J|��gP��.S�G�P�`������2T�4~w\C)0#�r�E��2��|���H8i2ek�����I�VH����#+��Hy�e�K���s�KU~%���y��p����	Ԣ-��XAZC=�`���T"�~�x��+zQ�Kq*4�ZN �<�9�DE>��%���@dM�)��Mq���|�<���� �i/8��*�?|��1�<�<��LUjw#2�IΜ�%��da}��T?*jݠt���ꡰ�G���fX٣�P�kiD�)W���V������E1��M�ݣ�(�`V��@`AJ�\fy�\��r`��� o%>�"G%��K �,ʁ� \����tL�c�n1��\�	r`�py�a��� �hB4����)�F;�<�ȟ�G*���O�����)����X�yֶ�Hxd���P�orй�	��]<h��qm+>T^^j ��?��H}�=�u�*C�A���y�X�@�Bo߼����@�yd��Ig�t�A����� ��(�F��bCLIp
[RjUy��A����-�Jk�-�pd�;mD-�+L~j �;���q��!�޼rv��G�a�18�f��>����	5������k?����[�؇jH���LÙg�5:w)��`v��UO~j �&��}�+W�>S]b��Igt"ړ�팛�!mxO�E7��Qi�7��y�����ȕ���7����K�v"1�R��3�|QЦw�]�$�2�xP;%-+T�wP��0Aa�����)(Q͠�<߁j��p�,�{�>~�A5�t~j ���#6�qS�4�������o�ش~I���1�[#f�j�6�T���OVMT�������m,���ӥFsD�yH���.50b�FlNտ��o���:JS7��S#���A�\�[D�P#��
�� ��=�������*�&̼�޺�f�S�R�@���A�ὔbJi2:���`��*˥ ��0^c
H�S<��N�����q��	a�i�WCLj��Y�8��p�~�S�2��_Z'�T-�9�z�O�ET������������|b�s�l�Gi��Ʃ@jc{�O���<�T�� v�7�{W��e^����+q:Nho̤��R4��l��x���S���]�D&�c��+v	n�lM��ph���dm$���~���G�mЅ��6�[Pg���w�XqC&����s��;a^j@��Ă��]n��m����|[҅���R�Ṃ06��J���#�'�J�D�a��3F��٢U%���:8��.�߾u�
؞2�5j�BҴ��� >p�B� (Ψ#�m�=�����U$p�F26Kj��C��(�����Ve���هA>��ާQ��V�O+���Vz�(��k^k��췢��yQ��,����Nm�#J����ȧ��q�/C';�[!
lcdm���C�d��ȼ��RSXj���̖��slI����o7�B͖%+ۣu�:��0)��Ӝ�y��?5Hl�{�&��`��ZDF�8O^j@��5v��c�mg�~F�5�3J��˷CHֽ4i:
�I��O�B
���?(#�]E��A(����m�]_�Ȇ#�� p��R�k�S�������{z��gg�5Սt�.8?5��~��DC�����Ǟ�y&[�Bm/R��R��6��.ߗ'Lͣ�	��<�$�qCԀ0Ij����l@;\J�%GeG;
f�Gv�ԀF��H�����s���R�O ����d�]B��c�ʧ�� ����{h�oEݭT�����ʝ>�0%�f��&����$��K��@��V�q�u���x��� H.l�y�����Q��,�P�fw���`Qy�h��<�{�����7�+�@	y�l$���7!|Ԅ�CK�5R�[oCj lm���eux8�&��8W6WgP����fl[��m�{7����j՛a�q�S*un�x�2>Ź�x�ՔTmU��	��g������ǧީJH�˛����uI<�T������M�5������m�Ą69u#;��cIe�T*�|H ��m��W*-���X����,U���]V�Q�/=R������*���������ȤV�Z�ŉ�En��r�8�R��$d���1�8i��4��	&���`'W�fE=ۮVŢ���8u�Ri�}���9�)��.߼D�]��	��h2O<۸��0ͱZ�=?�A����̜�cl�&_�:��v���!���Rd����C�Ơr��Ѿ^>g�eU2�le/��q����?�<��iv���l����m�{��S{ z�.m����n}���(�� 8�R�ˁ��x\c:����ƾ�m7r�iW�d��L�S;�̕�
CD�pUvS�ٜ3����ɩ��G��Ԝ�oЌ�I�^,t8x_�k�5/׃-Y̹61�g��"�V?����GL'���}�6P$�Q�F��6}*a-FY!��|Y�4�&K�(��X����j5o��w��^|x�F��Ȭ6��*��B��0����I�tTN=�i;���j{��S�D����{7{���-$�[�I6_P��׸9���G�-L�#݉O�M�j��cݙ��cg���)��R����ӐJ51���z���@�J�X=�mZ���˞k�8w*�ij�(�7�A�x��ɐ[�5osx�l�[�����>ZlHm�qJ����b�>j��!�p�,X.-k�uY�����~s�ɵu�r?5 N9b���D�Х�4�8��i̿��oS���F�R���a
���>��7�Fմk3�
�� ��$�2��5�a�E�j�½T?"�������O�P�F��@��qL(>ښ��d��@��v�A��\pʓ�CJ��A��C ��M��E�ˢfִ�8sgLr�T�X�R�`xղ��%�3,��}��3{���㮗�@A-&����ρR�7"��SCj �Gb���W�9XM?E=0!^j �5"1:����y�n|�qH�݅f�)�!5 	z��B:���S��O�S�C��Ğ�I�R�R��$&>���z����L�߳�����w�+�Pn
2��Eh���V�F��F��VWb3���C^��	�,hl��
Գ��ө-���3����@a��]��Mn;�}@�W�����3��kDq�}]X=�'�螙N�L���}A��v�?����Y׃2Il癯�˜)v�n�˛����{�vz�zz	){�?<��U�-*�+i�T�8���̓��~tp�,e�O?�ys�o>On޽���������*��{O1�Hy�����X�0�5C��E��Ā�nNjd^m��]���ZC�>�f�O ��{}]N�6�.�����~OL\<�g��)�H��3N���8~j �9���s��u���/+�-.��kD�f�����CI�O�E��W�K�R�۳��Q���F�@�K���~(���+���s*ڰ���C_"�T�!5��Ǐ�Q	�D@t�-�m�u�/w�e��n�,�}U V���ժ:����k0���x{�����3�[�*wń]o�U�8�~��b�'�Z�Z�q8��6f��9�b������c�����)����/�׿����-���f�X@!���yyw�T��N%9`��xϤ�4�)�z�h3���j��e�o�|��>�Q_/f�CJGY�B7�8~&᎕-%�����to�jѶV����ٶ[3c��D��軣�Q�7ޓ��R$�eM>Uy��c���.on
:��?��K�	��L�g��5-�}�D�Z�ͪ����%{Wl��_X*ly|�[��������ky<�H`�������VZ���[��V���� �wTG��hʱ˔d����vF)�& w֯�xcw��'w��8oM�Q=^�F	=	���PH��ys�N�/N�U���*�妷p�TIg�YRgF��F)�̳�r>_�dE�k�j���ھ�w���D �  f�C6����(_C�${���7WS���_�O�����7��?���)[f���e;��XFgz�f�px/#� T�Z��Ex��_:���#��-b�ݓCݩ����J��V�]��m;) ��C��S�"����	�"ߜM9k�8��G���w|�B�KxѿV��K����l�s6����㭤:�����j��W+����h��wŪ����-�VU�~��DHնΫǣf�V�$�7-6�2���գ�8����x��{�B�*#��_p9w�o4 ��|	#�����.fy�c���.vˇ���m��	,��n����0�������s�>��n6�d��݀ϫu�jqb�43�������Ѯ=��d~:T��>_�Se7Fk�ew|�;�	aj2 1���v�";!��`��X`o5K~��Z�>�����3g.����`����2�N��u>���В�M��mW�t�t��s�=�T�Ľ�C��¹���N>E�[��r�'y��,vד�R�����wo���(��\��M����rStm�V�����Œ�O��|�$\Z��p���eM>c���ވ�e�C�u�/��=�F��<������9V�^���bN�Q����u9s|��pw��� F�0ܰ/�}^�Oe]��]ǻ���z3�m?g�3��%rzT�� p���W�y���z���T"���g��˂H*�K����_�L����65P�;
�U���
����D���&����Y3���rsL���'�{ExJhΩ��Y�F��I2UK���r�̫9���k�>F�}|JE���pN򳀽 l`YJEn��u�zw[���+gE�O�{�0Й~��
�mn��A�n��MsT����S���gT󏟤I`���6l�i�]Y#o�执��_���y�ŗŇ0JXa6���TP��l]����M�G��*����a
d�U���9]�:��V[8!����r^�!�|�tb�6��l���P�:A�O?�{����;v����,߈�~Y����6�S����&�i���6�5��Z̡*0����P7��o7��z�%׼���<l��<������a7}��~�~�~����~\=�yt�c�}5/ֻ��A�!~�;`�A8j��ϚPK'��re��d���Iv��x;+�HnQ*mٟO���xS�^��.�0��6�ՊEY�+��æ��,�hgq|�-U��v��hj�#1��u�	w�/'�%"�UA�����y!"݇�i#B4<6�y�?/	�4l�uz�����6���v����z�3�B+x]Y�N��8�zo�x��J���ͻ�7�&����o�^ ʫٲ5��3|���_��ztm<Sh�*ab��CE�U���P����zɟ'��gN�!����K������{�˶jRu��Wy��ӊ8�pL��ǮQ#�̑Gc��'�.���]>)��lY��w/���X�I�H7�uQ웰������n����S�A�K��R����������a�,��p��!�Ws����ԥ����q��МL�YX_qQ�����r�~�S2,��;z��(���L(<=o��eqx�v�o_��}�k��{����&���������x�F���.�ʖ�./_=<�����b'���}�j�L�)��}s�>=�-��BV�L��|�M��o`�>�.Ti���ӳS�d4<e���w����H9�DRx9��vx��O��1\zc��\�?�� ��dӵ?�9�R��[l�-��]�F�p��y��/�`�f��%��*xQ��~��-��pڈRi��ɏ�(���<�p@D�?����{g_V��;��-2�6��[n�B�7���n�jQ̎�MA!Q�Y��K�2��'aٜ�^���uz|zgx�w�߀'gƌ/��h�8fm�z�m~��lA�>n�]R�N \gAz�~�E,N���.��QlN��i�i���8 ����	mݝstQ�{�)����&b�%��c'̎��l�-A�(��_����k(10n��C�6e�8Ŝ"�Ĝ����P�q����Go�)��<�#��	��(����X��8\D�cC.��������&T��R�_j|e���K���q����G]���M~��vet�r���g���ďJ�[����*��2�x֡�N�q�ve@u��FQ�}���x�l����yA�����7�}�K�;hM�)��m��)Rjy^�����\����!_m�����}�.��,��i���
䳠�Z*=n�b
Y�����x�&E��ܾ1h�	�!}�z�5V�-j�3���1_�����?����k��䝝'cz���T:�`��'n�>jhC��F[(������l����~�R�W���4��Ϝ�n����������:-Ƣ:T$��Ѧ}�gЩ����y5�/+3ôa�~|���?��oo���W��ܰ٪��o7�6e� >/7����mU�N�B���%ҏO`��D�^��#�u{ؗ��}��Y��v�X�i���O���2���A���:GL�� ���2��Ǳa5�X%�3���<(��P�R/�}"����v�j��&I�y�Z/��S1�hhZ!v+:�*�r�I<W��#c���aw+!N���Zc9��"�[�s�����j�gM������'�J�1�9�/��0Q��k�� @�/�o�%񴶯��C7�5�/;W�	��>�9z��k:��=!��\���y����L��e��1��i�G��as���$U����e���y��e�����:�lQR`���PA��3�����³p���L���t��o���|��M���HE6��|�6F�bG��t����^%����?l�f?�w�J{*�L�:�9��ߋb��
��%�천��E����o����LJX�����J0���Y��
G
�P��]��n��_��+�J�3y���L�p;�����rEk�%���2e}�c��� 1T�tC{���@�-�����Q�]LM-�]r?6J0ԭFu5{��G*V���	H��_� �q�R�`�n���s��V��8N�96*xP�\��(X �R{�|�l6w/��B��V�@�Ù��`,է���w�yy5��_�M�_���������z�u��J�̤J��N�(dH2x������~7�2�8a�M?����ɜC���.�ծhN�m;^��Htz^��E^��FQp�W��sMS?vo�j� �Bǝ�jxف����f�?�����^�=P��1ir���7��b�LOw��:pD�e�hSeșE�٨�;~}g����/܍��;�J=�b���w���D�� W.��� ���]�ͦ���i����nۏGOS���r0��-?5 HPʦ�L�9���ϫ����$�*�Q]��0`ҝSQ�bvh�ߞ�v#��m5F��"|j�����S �$a~/N鬯�.O�h]�����ui�D?��2<Zz�u�G �<�:>�=�KjSs����`�w.(/5���f�&��R�5��yS�a�B�� I[@�����]!C:����Q_�A��%p
�$w�m���o@h0�49��(mK�ظͳ�� >��+�s��Yo^A�ЎG�Cj�ۭ�l�� ����7�AMl�(I���X�O��Dt���eux�T�>�.%TFkEG��18u��?��G]
H�jή�zo⻹].t󆊔�7TN�,�4R���R�S�M�f`���jѬYbb�q�6D���w���(���qB͇]�]�����C�G|7�[j�g��Am��	HC���@ZY��d�kyy�]Lw�]ˎ�@���q{�����;�Ns�K��I��j�S�nz�;����5 oj���Lb{�VJ�u�"�S���-�d�ɚڮ!~�,��d A�����P�K=��{�o:���4��zª̕K?5�E�Ax5�i�dy��������v����ܫKS'�5���(L�����Bn:l�ph�<9��N�	-.�~����3�N�. ƃX_i��$}Z&q3�*�L�'�駟�?Y$�      4      x������ � �      6      x��\M�㸎\���D)H��!�	z�N���IP.}Ү���^%"?�L� ����G}���RH�+�_1���S����O�O{�$(Oy���˃�d�����?/��+�_1?3?C?z�7�J��xD�����9DJ��>��]����1�<w�rx�6vz^P}J8:{O6����O�OnO��8<J9=Z�T��;�L�h�Z"�̏}"�8ow�JY-Mg6Lsz�p��.�A)�G�Gr���QJ��(��h�af�Oli�#�IFJ�>z�6)>�<E�&y(���l�8�Y�����m��=�Dz6�(�R	�^�]����)^y���NDYM!^hNz�DJ%=z3�[�gR�r<D�e�P*���ѣ�_Ɵ-�.�AI��[�-#F�%\�f��$�V��D]]<�d��� %���O�{ڏl pQy��o�"R�؅��T���$�#��L�<%)�*vA�HE#E��T���Ȫ�Kp�v�,��=�JS�����"��0M(��@,�m�����}�k����s>�t�&%�j�ǒӶhlN�h�8LJ����w�e���C-�n ��c�V$���5Z/Y�e��m��q>��ɡ�QRq��,
��1�b�ӄ�#/���ynVN.Jȶb�G~�L�.ހ�#���<��mŘ�%�����J%M�b�������c����ܟ��_MI�j���y(!������{T5W��皊����m�����JM=7LLM%����[&%MpR�L)�9㐓arQj�@J�U`,��K�G6^�@�i��3UVR��O��Pj [���(fZ��RC�cq��H�
�{��.J��늪j��{�	���㾠B��rp��rQB��9������}��PB��^/�1֏;�Q�C5�Ա�2o�f�#c��I�(!�2��4��s;´*�>���`�1D���D䡄��z��O[ll5�E�iBI�^��:.H��tQ�`�&9��X
zg�	y�F��ӂ�Ubo���b�T}�)5(i2s�p�Qq{�� ��&d�mV[�I��4��R9�[���VC�6|&��	���e�W��
M,���	{T�˔���#�q��&��D�I7c*\(� s��3S��)Wk�>y(i�K�LgV�� ιY&%M6c)�)�Q�&�q�Dɦ�+�M�aR���䢤�f]����=XoqQ�\3��Ӗ�)�SSO/P�\3�n��4��X�*��f���y�Q�$�e��tx.J�m�j���͚R�l��E��׳Λ���T���Ci䭦�=m�&�(	]"����VgEQ���8��4݌u�*8{�JpQ�t3��>���&��.J#�la��0>��"��M(���6�`�&壶IN
&h�%�tv�PW�4�~�4R�Ɩi�:�gc�Z+L�x�1�e[GF�ӹ(� �fc�&n���$PL�x���F�L�K��p��i��	"o�H[2�p�=j4L.JC�D�i��P5G�G:5�.���@`�<TPy�=i���	T��>��Y�i!'�iBiB]�靶�|pk�LT޳ej� ��!���E��k�&������OB�P�Y����<�h���I	
*�)�|ڹZ�!���2�(i��I�T+蒬�\���[��Sak7�E�a!���#M�5�j�ν]�BIK��G��(�~���	%-=S�]V�-v�Q��dP��3�>-����4���Y���g�oB����Eaj?DK��ZL1Y�;����8[�`Bf�aʣ����4�`��c�L2d4�z�k���M�:L��׫�8D��a��ގr�LʴKJZ	��S�R�X�,��\��N�*�e���ڇsQ0A����wq2.����u��	O�gR�:�{��FIk�e=����r�LJZ�'�@ˍ�̷r22�iQ.JZ�'�@g�����)%-Γ^{.�T�w��(iu���s����RTw��<Oz�Tm���.JZ�'��<�4Z%�KePPA�l���KtH/��C���[�w٦����0M(i� I�I~.�:.Ȍ�	%m$�n�E�Wo �Q�O%�$�E5�����I	JZ�'�E�_o4p��>���V�IfQ��D61o����IfQ�W���O%-�Q�xTY/I�G�ς��~�N�K4^�E�D�4��<���^�����Q�z?!�ǻӤ�����7�*����P᰹�|��碠���)��ѽ�����]T�z.����H!�)�(��F�.�v�P����@҆F���S�2:�r�X���T��4�4\\�����;�o��D��J��H%Y��~�V
�U�䡤��T�a�jk�uQ�~F���1��Y�6�(i?#�b.���@�|�EI��G������.}��)�rQ�~ƒi���*�5J���01��tGI�&�����3vL(-xғ���3�L]����H�`�[&D�4��C���L(�B=Z��dP�ˆI��b���vX�Le���bMw��òcBM_|Lk����N����i���-wc_�%���6���v�sT�PҦOjS��m+:Z�{�AI{>�M1s��[�|��F�P0!�7�Lc�,GM�[�v�CI�G�ٲ1��-@f3퓇�v�R�6���*���%�qH�F���C�!M��P0e0�ˤ�yV�����i����F����L%mhq�v��ՑãLKr@�n�)�9)N���)�z(i7����Q�"��9bz(i3��=��A$�'G$Z��
��j�����4�ĹJ�cӬ����\��j�\L��-�X�D��2y(i��Sr������eL�e��h�v�<���Ʀ}t�6�C��-P�'��� ��}�k�����4�.ۮ�t���%m�1�)��d�Kt���[�#އ�2L�%��$:Z���P0A�<i�����I��Ltɓ
�k��[��>M(i+��S�����iB������w�H������y���8	f�h��6GY�8p��hV���<��9�2i���P�#�j�PJ�`�N��yaܯSl�P�6+�tr�Lߨ'��5y(i��e:����G^;o����v�^ﱚVn���(i���=�tN�]���.Jګ�b��i�@m���\��U��{�4>?�G�n:%��r�q ��3 ?.�{�	^����_�$����\�����Fޗ�h��XYz %�����ZE�%��%m�r�4pڶ����@�-���W�F��p%��r��q+�L'硤=Z��{�
��/]��G���iO���(��w3k��G˵-��<���vi���c q8�uj����PJ!�^"���&�i���a|���{�^"�l��Hj��4��}UF�X&��h���{�x�����^"^�9��5�L�~/ն��h�v�{)�BI����.�~�z�,��EI�Ƭ�잻(iۘ����
:���=?t�3>;*��.Jڅf�(�ߠ������v�����ɝ�"�\?��-�u����*(��>%�hs�+�k*(��~�X�����^�e��?�	{��\�2	{�MA�A�{�^�	T���
?w2	��-���ڷQ�'9C�"����좠*����o�*��j�n��N5���%��J�� sͥ&�@�J��
J�{��m���sh�\�^�u`�I4m�K�+�k*(=�^�����V�Ľ��6��+� ��W��TPz���m��� ��A��RA��ڿ�B"$���.x� !I��-Ԟ>�}A����TH�^�[�"h=��޶�|����I{�M�����֙�I��TH�^�_SA�i����?<R!�ֿ�b�B�{��m\�>gc�B�{�M��^�m�6�T���������E���o��kE_�	P��TP���зb�?b��e�}{����v�o���j.F2$�߫}���#�G����v�G��=�kB���}C����P�o��4��BA�˿D��4��Y���y%o��T��%��ki���o�l����#Kٯj��צ#�Hݯ)nw����N�6��o������]M)����H8cU������
��Ȼf �׷� �  H��'�j�n?cX��vUM���%i��A����y@$��?D�o��*���O��*�U}�4XSݯ)nw���q�J� ϭ:/"�i�)�v~v���˒]��O\�B�����$�#�.*pH�$f��u
�B��Hˇ+k�y����$R>�j��ק?:�!u������u�>���#_��,����N�X��EƟ(k�5��x�x����!�z�*���_s���=�ud�yӄ�+_S:�%e/����U���V�XU� �/�d�R?�Tۛ�Sa�2�>��;�cM�7mӼ�
�@����?�z�@?$�j]w�CN�U��
�Z�__k�H�P?|�uXHٯ�ˤk��5}��cM�C"�m��U���>�5JŨ�d�*�O��U��Kv;6�B!� ��]��\=#W�pE|��CQ9�?Ą�����~W�X�ᢠ��5~�hCe��EIǲ��}��u%�����6T�]�t�*�_(ZSٰ�� B�����:~<s[qQ�٬���t��������IY점ڎi���|�
%��b�rN�4Ư���tQ�i�|���l���ez;��`���}:��C�����=ꢤcY�>�y��G����i���e�,�i�\���l��J:���_��V�'�߶���4o���e���j{�py�Wub�Pұ�|���e{�O��>��3�k{      8      x���Y����.|=ϯ���M]-D���x��FiT��''b3��#ޚ�k�Uc�O&#G�����?���T�/w϶�#C�놺@f~�_T����	�x�N<���,���Py�wb=�D2�f8��j9�9,���E0�!0���c���?Y�'
��?0���A����`���`���
��?�����:�����izZ�xd�L�l��_���Zd�5XtQ��!��km�Ƕ&w��4%�73b���'�Hl烽��a�u>���.KJN��[�+5�Ea�o-y P\hG{��s"k[ؔ�r��}��q��3������y3�Wj;'��G�0a��U��Z�6i r���.xys�f��z��CW�za����д=����������"���`�	�&�I�+�1�`����|^c@\"LF5���rp��]>�%�C����ɍ�W�qH�A���4�L1���J������A�?8��!��0�DmW�����sW�������7��zZ����a욌=����ֶpx�Xs�J������0�!�%�$�Q��2�<�?���D`���R�90��{��4p�lwq��押�qh�O/4갓��2M֐�%��u٘�����M�h.�4(Aj>O�1�4I����{(��4q��J�v4j�����J�\�>dG�
�'�Z�;�d`a��f"���/�����ύ�V��qخ�&�G?�G0|������j5To��O�=�>*Z4_�n4�g�v�SԳG+l�j�u��ۓ��Rj�������F�")L��s����'p '@H�"��񛪱H���A�%��*�d\F1'���|-����d,�F�eY8e>*�A�sj']I�4 ]��10R8D0�{�O�s����*� �2��8���2�Hf~p4u�Dq�9*pv\.�d)W�<�t���#������4��! z�������� ��I�o��Jm�A��H�fBS���-�	t!� ���6�7�Ƚ���}N�sl��	)�;�w��L*>��39D"��+��}SD�nx~������yH�;:�4�?q���� ɖ9C���t�	d��e��KF�;�����b�&ɚO��/��JA�"W���U��(�s`���]�<v�`v1Ɋ5FϣC�sFlN���v�ʘ�q���H&��!s�p�^C�f��~a�`�cp�������k�/4��K�r0]��L�&�q�c��1�wʬ�	���lɉr���5��;v�;��_�n�@��R[�D���!+�D��5{�bA���Ll'j2��z���<��szge�Ʋ��'��N ��P�LC�b �R�P��S�9MS��?g˩�Y�y�pm�ї�n~9��E(�B6 g2ҏ�~�.�S��L����JN(�e���s�l �5`����pofS"ڞg������ɚ�vV��1b2=���������[G�f^f����!1eo���t�ߍ�ba�gJ���-�+;�
ob�'Z��E�9�����3�����j0b;
y� M�j
��p�O��Nk��Rߡ�~L��z�D�Ƈ��Q�P�l��mIa6p|4�<`�&��fW�v]�����+�	�{g����ƻ�[�'�!..��ҳ�1?:��j����Ј/��"b�|
��J2�� �r�;�?ŏ��@��������-v�{�}BMXP�&Ԯ��#Bq�1{���15:�2�J�I[NCa�{�|����#L<�w�HVKK�Ӝ��=���]��6��D���i�����R��x��7�\\�W|-���d-(C%�ç��
?
B-�"ޭ�+��������$��H䊊7�crW��e9�i�Æ������ K�#�(s���p�}�`D���;U�Jma�-�Vьǘgq7��i�=�=cr)Mʣwt���n���Ҟ�{��ᩰA��*�\�h��O�7ӦK^S$=�)B\��-�!�B��g��h���5�W�ϗ}hv���t��W��bh���:�QQ���_��U�!�L���o��S �,�u�3�(�RT��ՏZ?��A�����hL�܉��*�L%��ށl� ��}��Q���[��Jmg@�g��NF���Ш��6����ž*��c����y�����<o�'���S��S���?0Q����_�~�&����r���@
�C�S��Ώ�.��צּto��u���6,F>�d�i+VЁb����'� 
��!�9ɯ�o�$|߳mh�&<M�@#�͵`Fjv2�I&M=�
��<�w�E^/�P�6k�2��������UL��Ւ��ȿ����r�ݮ����q���5���b;�>�o#�cG�^�����X��:܅�)��A�!��������v�g+���b7\k�4�#z�!~�w�v�zߴ-�ސ��u����Z���b�պ��4����;b��]��|zRty7�y(.g�|Tɇ�x{ڪ�q�`�/}@/}��U��Q
y��"����Y��)�r�`��� ��e��T$�.@$�,FoR���X]��E�A�qn�w�F��h����G�G��"52��bA}SW�p���C���M ����&��zh��@�^�����o[��z���8@fZߚNH[I���ב��1f8%��!�e��W�!!"�hL< 6���\�H�9~�B���hU�\�q�	�tu��8�-�K��T��K�<����#p.��׌�4�E\��b��1�����
G+*��ҷ'ٞ�h�E�un�r8�,�-t/��URE``"���Oԅ �֝l��߁��5���򎽌6�/����ǒw鱸�-�r1ar�h��m����%�fxC�&���"�\0��+���J��h'����mH^�sOS��ه)�Jg�徣\���$���h_��l�f	�0��/�dH�����~�" F �F�O���N��:.���w"V�U��#ϐWgɏ�}oE�F��
S`ҙ;��g��%K-���d`��A�q��;��� ��!�A����f��4���yV�nZ <���ű9M�R�q_7O���fLpa}c�8�^���b\nG������ �$p�s� �[��G0���Wj=����ֶ\��iG���x�8�P^X�{����=�\D���i�FnO7��7R6b�#�p�����{�ph����x�{�?H]���eGڏ�b'���nU%���B�T��:1���%<�	sw�~2�K[�������:O���$�6�U[v�#D��1����u��bd���i�Af��ӵ���u��+ )&���E���
��Q��Z�`}��N�+"����б���T	������%�\ZY`�Ɵe�-�ݵtSE�.�X8���e\��u���&5XC9��PP��E�P�r	���CN��^�~8\��f�2��q}O�c�����Amb��2�a�:{Z*?��2�WV�	*�i�Hx��ؒC�L��}�����ey\����+�� �5�Zc(�& ��8�F�4��GI����r���R�XU�9�{t� �S{.�/4U�+>�L?H9U;� ��@@��^��Z�Q�r�h�~��ڭK�Lv]Q��>7�O�̟"�Ql���N���+Ǝ'�r m���r�*e��Ћa�t��٨f/�46Zŵ�Oe�V��
���d��;�09M����w%�/9:>^m�X1}���*)��tŝΦ]nah��xQ�o��Ą��� u���&�=�.&0�[?w>��;��U�{��;҄��`:�e�/��Շ����=�H����q��*c��T��v���t��pz,a�D L0�㱆�Y;Y=L���"�l��J�,Zu$
D�e�.�o��R=���{�du��*U�,�O�I�������:����-Ah�D�����bKMQ$GHG�"������T�׳�"���^�@��䕹'���+���|�L�yy�ZL��_������D�}�`��v��I%-7Ԉ�D�4t���,%K��Dw+��s���H�,]*���K�0N�V���/��q�    q�����Rbp�H�����mCR����C�^�ֻݨ�r��(bďX�hCz-N�yYlVԆ^�#ssH��:L�w��u�M|�����߳� ����E��ۜ*�<�5���ΉYz�(�
��W�qfHڜ���n���&◆,��a:W\2	j�Hl
�J��d�S��|���v-�(	�{Հo��o"ܣ���K���[&r�����i�Jd��RǼDn�x\�+.��=�cxzF���!�Gȍc7�?�6�XU�$��o/(�F_�B���fHߤ_ϓ5Y�V+OYN��� n�f1fs>����"��D�w$u�ℷ�ǀпe�j���F����_�k�P�	����g�ȴ�4��h�0�rv�hP&�I�ȴ�l���o�)�Qr���!����o�a!ah�8G��I�|�$ ީ:[�(�
�i=���� Z����BS�%5Gw��: J���\$��>v%h�wdW.�"��K�����@����k5�����隺�z��-�*��P���)�̃�����Z�݂O�G3��#�]��6v)<ۖ�sh���[��/u�=��K<d��}a$J @]��QO����H�1O-�@(P��[jǘ6�,��({�_�$ZLcd�i��Nт,��<�B�[�+>Y��P��6���t���| К�����SH��!��/A�[j�٭e^?�ɹ+��o֎�[�v.�2�Yd��x�L���=�Ll�?i�!�ke����B�4Q9����*P���{��gjx-�a�Gz��Ǉ�f��K�cs�%�`1t��f�Ѯ���W�ӈh��9C&��[~�8��\]`����7���E�|� �j�uw)�܁W��k׼�\���*�N��^V�~$K���h��И�';��7KR���0 d&n�k��Yq��Q�e���{�];��NA�c8�ۋئ�/�gq�
�$4�P�����4�O��@���] ��) qE���K���At��P��@�d���ɾ��z����Yg_�<�Z�UCq�v٘���pG�A�Z�
����Ὡ��'�:˂ X�>�R�G�^JcJ��Ն��gS�4��7���0U�[�7�g���#�u�	6��Nghg���Y�-T'���hxy��8͕� ؓ�>I==:�����	C�j��
�cv���z��+� ���X#�M3��zg;:�ɱ-��ܭ378���ˮ@�X������ҎA���g�����[�YC@ʫ�4���GN��I�;t����U_4�'��w��4��u���w�o�x����S��(<q��ꖝh|4^nvKQ�����qo<`�1��O�� ^]���E`�_�����c�㺷�FK��& ����'��\�$S�S]Mq�aF�k\A�r�YX/�^xh��§��vq�x�����O�z������6�.���ϰ�m�%NN{�yiӗ�E��Ԑ��n�(�D���ÏV����o��JM�������@�	h��^���4����Q�Lǃxm����xG3֖����Z#	�b���������vx�x���U�%UG�~����*]��ʑ $}�o0u8���x�8�`����u�7��mj�b2:)Z@Bg����d��,�"BJ���N��g�0Gi`�����cX����+_iB^�h��W�a^�4�7����Ƚow\���a �%	|;3����fu���7�m^�Ͷ~	o���|���6 ��� �F��O@~��Ы��G\�,���h�����9[�>�L��&>�{r6Y)��N�����'(3�'���,���J���{���tѕί�.`Y��e�g���t�@OA`�v%������E�C�e��p��C^O��9�8�(,��tX�gi�.ĝ(	�z���/+4?�F�JZ�Q�Y�+C�W��0�1�E �C=��V�L���a��g%$;m,bŕr���Ǌhj	F1D��sag��֕���Y砿Q:TUyĞ��'jG��B,��P#����ZH]mf#t��Ӌ���)e��̋�U�L�٬��kL���T�`�i� �&k9�ͯb�ׇ����t�|@�5U��'�S	N�%Z4��Z�Ylw���#�b���R�D����B���%�]]�"^�+U�P���T~f��q�u�Z�x���OE����5oD�� E(��X��>��Ⓟ��Ѿ����2�K�g�7��x�1vh��`��WU{�J�4S��(�2��R�4��3��O��P~{�[A�E�d������o"Y��0M�-�B����m�r�o\�R�j�tu	��ԗ�����rݔ.���!�e��;�ʹ��z�\^�i|`��u�ƚ����}�PǓ6\��%��Ұ���_�5�J@���F��LR��:���z�+��iK��>�{�/�4�0u����tcG[m��=�ۻ �N�T�����q0�@����WGxL �`m���*�G���?Q;���w�2�h2��3B^���O(�ws�Y۞���^$�^4]ȃ�8�bv�-��ެ�g��))��ê(	�_�[j<�����0�W��f�� �i�Z���)Z�ҲB��%�(6���B&�|J�;z�E�Q���J�i��{K��ovh]��hs��N�%A�$�VC͏0"�lk:��pJy~GRe0�NBpݞ��J`�J�ah�ʅz��� �r�S��'�v�p�˶��ĺ\�	? �/:��I��ۼܜz��@sy�c��,\`���:�P�*'AH�S j���7� N^�.������ko�[jg�k�z�鏩0�D�~4(��{f��r�oQ*�槰�,�X��\־�H�� �#��x�,?/<~s
	ֽ��[jg��.����$:�̉���K��[��v�6�Ai`�J�2�ū���Xt���8�����US6
�y���zo@���=D*��2ro�_�s�Ʊ�٩S�Ad,|vt!���j�8F��)�Jd0
����w���Px-[��X���:0Xc����F��JF"�&������kٛ_M	My0WF��	|Dr3OWA���5��d�ʞk��i9�f�	�!�%�xG��M�B��ލQ!�l�C~\��,Z�Z	�R�;��4f���0��-oNu3JWd��D��@���g�`]�����i��W�H�co�c����9oO�V��y��\d���ahp��L�M��I����X��5������C��L��v��zh��!�%�~O��F��@dy����W��"�X٧c;���m��k]	��T8�a|J��j�N�/'��K������t�J�Q�П�ii�_�4���dB�k��?(z� �x�E%ƣ�e���%�"cS8Q�r�o{�f^����ʹa�z�	�u�!}V/艹U���g?K��~�%cP���8�xY�Q�r���=����ucO����3�����a h�
����Su{/�샽�v������N�vk�μĎ5v$�ѓE_dV^
��1���[H�_�B���A����#!8J4��o���_���B�wr�J�X�ڋ��P����O���R��1�j>@х:�',:�[���CoV� �M��������4�����8~P�M���1��g��w[8��k"����C�mlg����
�� Un-҆,��l�*:vThT1�	&�ĥ�4�{2㞉�%>���j��|q"��FU�A �ͧJl4��M���^7�xt��v貋�q1
�/\��`��h�����*�\o'G+�����_O�"��O�����U����%m�*%����kk�Nw.�#��� �8���>��$�ݑX�X�+��}��.�S��V���X#�;٩�I�4��ԫ޶�Fݢӎ��)Z��K�`���
�5��d���H��)�B!�Sj�q,�<�z��}���5oNӣ?,��cc���x9/�W�ߏLCsW��9B�c��+�#�,i���!�}��m���/�
Q��],����7���I��.pr��M���U
��AS�;]7���O�I�YZ�!O��S��LZ�!    L�q�bN!Y`T�A���m%PD?�jn�p���q�/�`��~�v*L�s*��v�.���.s}����Z
� o��h)`��rP"�;HC�0����_U�� ��a���7��jN��T�s�7�v e��n�|p~Ac
l@������WMֱ��r9��m���tDΠ����=����7Yi�>��Z!n��E�Amnx4�n��l�Z߸���s���J*�s~�����i'gyj�y蜍��Md���ڛJE�(p��jV��/bV��%�g?�=���ԇ��>��݊���Ʈ#�v�$�t�C��Rl�(��E쒤�E*d�ﲪ�UՈ��h�:�W͏�e��ԎW��e7)q�Z�!QBt�d,����}r1��1�͘�mq�rپG~U�:���Y~�޴[���5�x֓��MW�^<�g�X�&�b��&�IDadG��)�[�q�E���;��@M=��b:��%X������_�oEy~�.�Ww��o�4��S���C2'��v���ꈽ���!$)Y�${���g��@�"z8o�"-�렵JqTI����5o�Q��y����ג��Ƀr���P4����I���%���|���-N+�s�:a�L�Ԙȕ/I����Ϯdk4���)��Z�,�;'��$};[��A��f�W�w����j@���@��٘V��������f������Q��$�*�~�4�J�;QZj���Nk۽��&�K�~׃�)��ؠ3|P�z��?�e��ċ�.���Y�|����x�����* �Z������}s��'jG/�����9�_ϻ@�Ε%�ϰ���h߁��2�ʓ�co����^���e ]��w���3��A����ə�/P5VuT�F�M'3�4F)�Z�Jze���[��j���C¹=�KZ]('i��Asq+W�(���
��We����
v�� N�c��#��7[Ի�ك1��(> Ҍ�'s5�!�#*
���ㅟ����P&�<�	���4*N�7��@��>{U��L��WMT�%�	o=���X��L�R�뿭Bd�l��{A���9Q={���\�9t99{We�E�
��d����rh�L�/+��z�W��@���z�R��ݜ. ��{n����i��p-Uq�Բ�������� �6��/��#M����u�~1�w��D���s�7`uv�j"!_��-�c��f���vo%�a�)����<��՚���]�spq�����1��l+.������#z��3x5Ǐ���^��juȋx���Ծ��"�tYG~��%����i(ړ�ý0���vA��}m���5�oEt�����r�D�з8���(�H�@��:XSJj�`��C�L��z=�vk��e~bphvX����lɻ$6d��Փ3e1]������Y�k��9Z���U�E��R;�o*0��QT��I�E~_�b�$
a4���&��q�V�`��ѥ����K�ȫh��\���~V �ENT-��ժ0��+�E�6��*�lz8��@ϝ�'�ZR����a�Qg犓���h�N(�V���C��b`�Q`����1�Cm `�����i���P�=�����ڳ�爤P^��a~U��ɗ2����'�-�)�/���*å)�@&�W����4�1&���Y�	�=�ǫ��R����5]g����8cY��a� ����	r��1z�Ow��pT+\2����k�S;3��z�xڗ\��������l�	�Y��B�8����C�D��8�;�e�X��>3�����Ͻ�4�vN	�M����R;��ߒ���~Z�7쥹�%So�IN�MIv;��/���	%�qdbn7�W=��?_��An��]]�}e]� ����- O���>:z;�QwF���E�<]�$��`�`�w5֏r��0Ζ�HJ��i�P�mS���H�B��zuwpu��Y��Dm<�z�&����\K�pV�Ⱥ.,\��V(��]�x��>!��D�fq8Tf�FM��L%���T�3�n��-��'�̭h�
�,�[jg�k�4��V�c�ps�N�ZrB_Ko�ǰf��>���b���LU�@,���?uU�+�B�8[��Z7��O�O+���BD.��G������۟��}���/^���?�����s�3�ׁO��l#�N^�ݼ$���Gf<��+m�%&n�|Mp{v`k� D�$vc�s��ā��!C�A7S��#��GnN�,r���wܓ>]��4:n�In.�����)I�I_�Ky��P?��䋕�A`g�Hȼ�z��:��r�ͬ��{������t��~k��+�wlW��^|^
+�
s��r:�:�`��O�bi\i��Lʅ��V�� i�v3M���j�D��7�_�in����;o�����S8����!�"O#��U���������Wά��)zD�W�DP��_(��X�4�jo��,���-����n-������~\9���� Ä#O㿧��o��G"����L�wF����`W��v�~��;�b��c!/ Ngsէ����z�-��%v0-��mr�+40��$ �K�6�����
L7�e��s�s����C��9
ݶ�yZ��+��	F:����&R&8�tZLG� �z����`�T窪l����̭�DXu��q��v�3��AS}i�~�4�G���#m<�lC>@��ځ@?�zmF��}B�s��~p F����wMGD���h��a��@�FxO��K�n�.@�G~�%hMl���H�5�W�_�C:��lo���3T��8�N�`&�1�_
�J�0Z�iX����5� Ӕ����=���B���o��.�~J� ���N�☗ R�\Y�.�-�U8r[�ˆ�Y���5v�`������{;�{�����vP�/��1���6��M#�LgV.o�o�����t44c5Q�J�Q��G�L���o�|�l3�*�Q?L����Ot�c ?��g����+f>�`t$��4�����PY�H�a6��T�TzS焱��ǰ��ோ�8��#�����'h%ږ~o�>��� �cx|�=s P��Z��c���|�lbg�*zy���~���S4�~O������%��gԷ�p�@�'mS8ȡ3����29/�@U۷�SFs��9����H���Q����x֬o��a$��~�*3����hru�tQ<* Ի��h��us�{>�E�<_+s}�ck��_� K&�a�Q)#uhW��<�L�����#�Wk���-��g$I�_Ȁc�P���%W��@!�[y�Yoayxͳ!��p�@�!UJ����E�c�jXVq?\���$кk~�?P�f�?ԉ�~��L��>�'Wb1[��R����c��s�8�G<$g� ��f����)�n5����u��*�M����ڙC�zqmˬ���XG��+Mg��D韶��m��5ܞpwڧ�	�[�J`i<���,�B��_�.��[���4�x��J�3���Tݡ���cq�2�4(�n�
sc�x�M��$��'����fF���+��o���<p��,����^�#�3�i���{���蘱����� X�V�˾>CB���,S��S��]�rv��b;�����@��M6}�����,��Y �B�m�;���lE���.�*��(��B�8�f��!�zlv;ǅ߳��t�f�s
����~K�̂z�� w��1��S��8E8��%>�Yhbb�'炋�����z�c�ᮗd��g�?0��,��}<��B��vfA?ς@:o�K���A�Z����#��Mg��%{�x?�%����F3IO�Ө�<p��<�Yu�E���+�3�qկ6�:L��������ِT��zkO�pV��-bk#�j<�tf��Tܯg��[ >w���A}_�j+�R�3hŵC���Fۭ�B��?���d~����\;�v��-�r�TP&��b�o��R�(䐢����]��	��* �_��[jg�������.�[%A�=3$���     �{'����!���c�_���Ir|+���]!�"�o�|:|?�EnϯT(ȳ$��v��ڻ궧�c��5l� ��N�4�yD�˧����3�j�n��`�rm��%[���	`7�T1�+����zx�%�|K���-��~p�یf��e��HD�����n�rt F�~�
�����Nי��� 5����Ư�rÞ�����&L(=�x���qӸ8���d]��~bs�˘9����T�كD���1Y�t��*��9�f��7B�DYg��g�=��5=�u9�$�V����A�i�z���y��s�c��t�=�8Ա!�F�d̮����	~ :Q_�v���UGMu�{���v��(؊r�z�ɚFz̉�WJOdG�� i���B�CN^/��7P"2]\�z�/
o~h�[����o��W�'q����������]�uDϕcV:�uo��`=�Ѽ�V%�ϖY��Sj���}�(h#�}
s� ��~5�J����P:�kmЏ~�/y���%kC�Gr����>��p�����kQ�΁��]��RLu�.s���Xu�$�����L��˰�&_�T�͗�6_���� H�
��zOmh	���!0�Kϴw�t ���l���,;�Ϊ�bH��5e��2����s�D����4��>U�M7��׾�
��j��uzK�dK��}%y��#
�7�8+{�"����JsE9��qv�(ccֱ`�Ȝ�Ut��J���s��>�@T�(@ԓ�g��y�P�<�郿��$vO����1�a���ץ�����[�Wjg���;���_�f����^������dgt�y�s���3��e�R;�S�޲u�4��)~O��(��T�w@8����R�0�� �=Řx�ޕ�_P�c�C��z �o !�y�.�> �_�ͪ��R)yO�@�z���a�+�g�}�_�ił�H��=S��ZL���+�@��k1m..��L���9y��`��}�f����g������a�<So�(�m1D(�U]i��du��/��9��?����.��vF�:�������?^����祪H����������h�':����@��������Xb��9��'��˥Mb����	�5�*�&d���<����]P'�R=H�d��-:'���OF�.��T�q (�G����Z"�q�q��}���HH�<!��Y�;�8�'�R�@�58Jǃ��#��[��m-<D ���cԚO����3�A��Seb0�V��چ�u;��g�N���
�O��7ȩ�]{*��D� ����������˚�7ӿ�o.�C!���'�==�4�}���#�~�z���	e~�ԥ������̳Y}��?U����/{bA��C�_�U� 4p���؏���X=�WkB�EU���e�9���o�pN�{a�ml!���t�'���=,�B��]��Kx=KM-evQ=��W=��t7v?��z�����-4�`��nF�Q����m,��q�H?���&5�\���ģ����9Ďeǀ\Lx�)q�)��!��|�W]��b0Y��[1!ƛ���7��t�H�CJ�'�}��Kj�G����06����8G�����J��hx����+�,fkA�m���\�G����o�"�ezz��a{e�G�ؼ��Yj���=�#.߇W�5�F���	�U�TD�!�%����!�����OW�"VC.�W�]�S��_���-�Z����4P��uf�����A];����i��	�y c�]��G�#Q�9z,_��o\!�\_UnKB�	E�H:EF�h�8�EWa�5���y仱���c;���\���p}��{�]?~���G��(�L#��XD�ELo��D2�^oHoc='������f{G9���vb��c.���3\�yd���B���b*��L���`mN̏\��?c����qr	qn���4?�A� �Ƹ1^����j���]Or���Bj� ة�|%`�zd��u����%v�~�
E�t�\A.��R��DA���*��pɕ��v�/�Mfl2��R� U�dͧ���i�f�k�J����@��氅{��i���3��iba��dQ#8g��Xj�2Rzʣ;n4Df�3)���k	 �8�����kr��I��م����[��4�,n�[�G��/��Tႈu�lv6y���+��ؑ��EϳK���t]W�I����W攆����-��y����ɘl%�:\L�q�#�2��{��WbT�"�R_&.������B��!�6���v�v�@+o�M(��ځ|�": '��b��8c#=���V�,ox�d8�"u<��!t�J�e�:m�g}1AO��d�Xĝ�o��C"/+���ٰu�{<����dP���^�d�e"G���>(Wٙ�Q>[��-3X'��r)1K��<8hR��#�[�y������]I���]���v�u��lU/���Ug:��zI���A�����ڌ�Q�.��]�vI��`,���{���V����'�P�z_���kߜ���{;
�̳/N���t�;�tN:{��q�tY��<g�!�`[�"b�%}��xV}�cr�v�h������c����'�K2�f�i�������-�؄b� L�0���4��1��E��q���Q�
��3����gh؋���h�E��Ƴ5U��>��S;�Z���f�Wɽo�o9{}z=q�)O�u�%�y��K�20[�χ �bCt:�s#N���G���O����N#�,ԝ�"�o��G�5?��!Y�/��Ŝ͹ Ý�br�������/\/��c�z:,-2E�k>�߿�m�ªV��!w���n���7i�0����5��2�nt��QSrv�>��!B�\�_�}�U��g��Hyu��
lT�b���f/�}�0����}�b��ˬ:��vP�8sM*�|m�f�Gg�M;�BP��\��#���ke�c[_X��*�f�?(��G�d�\�yO�@o�K﷽��f����Bg���4
��>����١z��7)9?�ņ��~���`���[*��s�@���;~_oG�(C�y_���2L�۔��ְ���\�Ἄdz��]4��k\`�v��P��]��_"���{���\dhA�}�`0��t8�X��de<�'�,Ýh)9���|���6'��&�60E4\��d�Y/Q������G
B�g���W -�1o����a��>:��tX��	.Z=l{�_T+?峂�w�$A�k�:��gcb�H�`��7��?n��|��4�[����?��S;bCv��w�r��n ���.M�dd ��dg�b%Le5L��,%�5�p���Cb�7z��z�j�ĩw��J�����z�-.A�������Y�g���8��I�j�eЂ�ʏ�T��#�Z�h=��կ_Y!����{j?s�~�H+�z���fp@���Rךa`����8�|����6��B�k�$�-\�=N#8��z�g},në�E�p�=�g�|��]����/�T��%�t�P�#�Z��Y`����1lDa���׉��u-���x��P��$�����abu�=�~���jU�qd���mJN��R��@�U~e.���"k�U�1��?�Lд'zR���n-G�:����>㦾�;a}5Ro���N��I��I�G��v�T�1��_�/RX�\����LN�ih^�Q�!�xM�ك�N��M􆿺������|/A�O�|����]5��_����*C�:#��I���ii�E�[vp��`���kJ��<�� @Z �/ TIe���O�;�恷�]���h=�m�X<��2���0������H}K��l�����]l|���H9�\�!�ji���n?~��Uê�����kN�77�㝬���5Ǣ��u�w~YP�7���N�7R�Sb)+�����t~�.�N�p�d
���Я�\`$Ўt��3l��ߤj�}���z�����[�n;!˳TJ	�)�OG@������pO4�1i�*�	] \�4U���WoG7�>o�v�$�u�'�L����[%+zH��    =Sށ(���C�,U("B�n����ל�舁g؁����nLN`7����KZ?�����R;��֓6�.
Z�̪�ML�5|�_�5A�"��e��E����fr��Q?�(�0P¯�+	���7諳��P��?Q;�o�^�W�ъ���8�ψ#L�љ��/91�r���;�K�pNb� �l��w�č�oP��ϧ�����CW���&K�d�K������'�2��=���R�0���Aq�7��ח�=���_p]�řw�+���/x�7��q���A�*MS��B[��3��zl���݀g�	d��:��tV����Ы�:y|���������:��v� ���=���,�}]��!�K��-�nM��N�-����8���N�|��� �|��H���tJK�?��_Sk�W!��P��x�׾ݮ;"�ץ�'������z_��/�0�h�(�r��^��v-��6���fe+퉾{.���d��s#i��_$E�%��*���u=�~�����]��ſ���3��)4�B�!<#��PO\���s�t��y�cG�d#�����Ոe���7��܃����%/���yO���k�f��L럏L���²K��2;^V��FI�9�hj�����&Zb)]羚+#԰���S�c�����x}S�����w���ny�a:7����D���������RV5Rǳ<�f���2�2���#�ӚV
��s�ճo/J�=����<�c�H�X"O��k�YT��������wU�t,�(�����ﶗ��o:v��fP
6�艹��۽��_�`P�;;4�t�4Lױ���W����f����n��8���X�LOu�����0��1��h嚷���x�_ڻB䗴u�Ħ�NT?͡�(ғ�:�7��$�&�A�ʫ'�[���������!����S��Ĺ��q�x64z^<��OBnлݏ7������U6M*�� B$����iA�[/F�|ܢ�E߮Ch�y)���vJB�yz��cc����´Jc�;2zl]x����n\��Nʅ�%�q�2� 7�%��]�i�9{^Tutx���/SP�*s��[��sQ7u�74��"@�&E�}�\�$s����W����-bq�ذ`G3���,9ʜr�a�/�i��t�����j��Z0�CC�Pm���Չ�w[�("ec.�lcqtyq���3㦜���Dò��85���soh8�i�_~�OR�(y��yO�́|l�I���ߟ^��<�J��E�1|L�^�=�Lb'�Ag+�V{*���Ҿk[U�k�xW�7�#9|G/&P��c� � ��]�J���}�N��5���j3=��?�C6�|�H�S��W��S8)��3R�B�Уj�v2�x뽅�t�T��� �Y�|�y�>�j1/��>���ٿ;�(4�|B~����6�����5����.C]7�_�;091�@�Ξ�O96\\ �<gX�9� S3��L�7�H
pn������a���1u����������ۗ����}�-�����c�#��?H ��󤮝k,m�>K8�aڲ1��V_��>�|��P����c��9?]�O��3"� 8Ń3p�p�d�9�JS	Zd
�2$�q�(iLk�[z�@��M�ap��<˽83�Tۏ�����]b��#^�ϼ��cS����ýE+Q�99�|̠K�GXnCI�M�(K��Qm�M��Kz�'/����e�A �}U�?SG<���.F>.xP m�y���y;�[`�+B������Q�ttY�7$�+s�#C�g�G�ĕ]f��5��gꈋ�@���i�o��O�+��8 �^^��`۷�ZI�j��v�d|�h��-��d�5.�Aytrj�y��nyY!�P8�M@��t�N �Y���۟c ��b���{���\6.��e3�{�\��5Vv֪��.�t7�K�>C21�B����M��v�Iq�Y�S$����Ѱ��l
��c!�-⫾31��g���H���\f��di�B!��qC���SN���fp���ňS�_X!_�]�ؽ�NZ<����ښ�*X�3�|�
�=���V�y}��hyiQ?������۹�]���}����W�
����~��U����� ����q�.��)[5OM5�3�W;{�!���%	��!�X70�^T��\=��
q�H�s�/7;��e�
m��A0I8����'�$~O~SG'��Y�O+O�4R}5P��t��|��|Ws�:F��8t��`?[���+u>92>*�:�s�w���ՑΰBoM>c��������J(x��U�ί4'���$��u_��R��v"I��H�r��bU�
�Y"x�MX����Wh�mD����]!��vwc����'�v�^��Oꈫ[����H�O���
��2�������s�bJ[Zm��$�	W�g�K����.�J
�k��� �� ���֘�\9��"!�G�X�UO�s�:��AH�����~��p<g�v2%U�tg.q���b�x���)�z�[�{����+N��bA���z�v�Z���Q�q���%9�K>i�%m�E���ju`s��6'����ҾFn�J���o�>������e���Do�lU�q3'R�>z��!�-�_ b@��X���/���W_��T�ͦ� �k+�&�ж�l���*�<:����-&%�}��O�o���prSZ��%�[Aaf<?y�2fQ��Qk�̆�^���.�"�=Y����2�a~�:��^��-�|�o���Xh�.}��`����4}֐I�nyhQ��V�-��{��c�gL�i̮4j���p~ǜ:���C`d'\a���~�Ǚ�anf?���w�#��B�	��N�;���B<N�����՞M���+z�2�-4`�\�'�W��t-
��*qҖ#���)
$�g����G^��1ut�oY�e�U�>���[�n5m,-w�����΋u:��bI��(cJf�xϑ"�T;�?$�#$8��p�>���ӈ8��	�U�N?�E<��s�$��	q/�LP4s�-r~ �Eq6�f��q��a��q&�U�%[��g���[P�G∏��j;��1;a����?�q0��r
����V/|:���fA����ֱ.�B��=��`����i���@�'5ײ�d�{�����вk4j'4��pܡ0��A~�N��
�ֱ�0i�=��]�l�(��,���w��I��t-[�>,��TA$2�|�{Sp�P}RG�l'3��,�� �QN�����	�q�Y���G���)�k�9/�z�N�3_������p���s��:WOꈃۘV;2�$�~�m��e����3>�����NH�Z4�5k'����E2ѵʉp��0͹,n��u��ww�������}i��+u�+޳�5�\~�rus�Y�Qص��w���E=�!�R�F-�m�kc�>�kl���w2ξ/�J����3���D��$�:�d�������0D��B�,�K�B�aa��Z�4�w��9��a�u��W���A�ʌ�~A�Ā����WB�I����TuB���}Ծ����D��l�ޱ���83дD�]�iX�����4!l��/$���P�����MN �~���#N�O�9�<�S��NA�Ip*)��)(vk�Tg
M�δ�L9��b/m�"7a�BԻA;�<�s+��_X��j��oǘ:�eЍjS��A`�UvR��\�����PJ�f5=�4t���2�]z��g��<�*x��9��1��z�Oy��~�]��;����8�]���t=��b�6A��`�"��
�@-`��d�ʖ�keu�I?�`����n�/��+f��3�r�	{�֨qqA�E�Y�	c?s�Be+p�sE8�<���ΗW�5��X�C(z��l2¿(�E:s�w]8���\�?n�ϋTQ�)o�ox��Sӳ���>����kZs�ԛ�M[h��[��#�s��o0�Ip���ө�g�^�Ɠ:bfP��F��c����f��c&v��}B�O�mr���    �Z�\��ʶ@oa+���!�'��Q���c�o"�ū��\6r뺞�C�������x��!�}�0�|ͯ�xAf~B�i���u�WOX*�����س���"�[�c�h�� ��F��P#�P�Rd��E[!'�
k9�i���,I�GGgf~t.8\3��8�"��=� ����;�P�u�q�է��>�ࣦn��@��3�g��" ��(�%��!��1��D��.$a1�.8��I�!�g)ϸC��?8� }�����]��*���֝�������G��/�#�����	���3�q����|A�Ă�Sx�?�|B�;�@�xASG�|V��SO{�qN�qY�z��g�i&c�U��a5��C��uv���,$�&���|gd���9f�����W�{Wl�V��fZޭ��C2W�h*�Q���p�Ɏ�K2)��=W$�AW�B��p��Ip�ݓ����[��~7���Ѳ���ˇE���l��b)p:zUM:��.B�Z��܃���7Әu��v��ĥ��Ex�Al�����ՠ�Ww��>E}�fE���>�$��F\[8g(s3�y��so�P d�׮����L�r	 ���s��S������Q z������o����V��@@���[�dަ$�*�&�0���
�'�\��x���ı�3�	ړw��2)��4�߈�3�����mcꓓ�D���r3��g���GX��'�N�� ǣ�;��Z�N�\�w3t�A`s,k�Ϝ�qh���]��~���{L�����I��PQ}��u᳔��흧(^�W~27 SHwu��~H ������	�z}��0:�|�~{[��G�1u��-FX莙��0Ѥ/I���'�z�L�s�V��jT�=��C��!K9���=pᔦ8���5H����g�O�f�IA��j����ҫG|��G�[mW�KEԝoO��2DI�q�Ŕ�삊�KM��p���KꬃȮi
C��^�a�JA����85�|�~{��I.cꈓ{����ї�|��J  �2 [p��aS�X�s����P��e8U���6{Ή��2�<P�^?A�Z?A���[Bmя�U�D�M�x�3��+��Hu��`T�p
�Y�B���K�YB�b���I�vӉa�{)��G�osA��ؓ:����������$�;��]�j�N5=����a?�g[Z�:�fX���,�W��\�T
4:Nz�O�o�AA�v����v���(���u�%G�l�j"�D79﹔-�9�5[�Kq/�g�:'�r~ׅ�h(�g�{����p�`���/��1u��=�H�Ր�j���wR� �oE��J���^�.�*�5U0��
�� Y�^��u���-�r�R �?���؀��m� ���SGݒ�
O�T�Q���z�<�W�5���s��x��aʧ{k���w!t_a;n��<�\D��?x8���>��ۆ�cꈥ[�PM��X���28P��v�˩ɝR/^��d��I��}�G+�QMBKw�Ιq�Il����e�B���[�h�2��֏ݳ��O�jܟ�N�=�$��M�8@��S����9�i���҄��%��r�<rIvNgЖ�\�p>C��Il4��5u�ݽ�`���	�0�F�(���R���@�9�xչV��8��;ÏV��Y̙rB|ww0�����8���J�_�#F-iuǹ�������s�d���������Z�/����N�(������l���<T��=}A�3�����/��n��K~����cF�{-�,p[xTѡzL6�!V��u����uu)l�mgcTe"N:�:����˓�����3~��`���~�a�p�i�FJ@�d�G|Ԇ��dL�
tyQy�����9_8�Ԭj�)��q��4�^�PL@7���o��*��1��6�76\ Q��|��dZM(�&u��6��A���w�[°�����([��^����C�����n��["�J]>�#��k3hdCΤ�)��#�����×+�F�|������B�����]�s$���N����ċ�1u��-�$�A�s��6�	���(��@6������G!��������eU�Ld��+�ڔ�-Apn��Y����_�9$���MQ�L<S��X��}�+XA�PEBښw��(�L2A<O��\�k�S��H����K���iD��¤�����ngA��_OYp��'��V"��)� PB�Ag��ۚe`lJ�0���0���%y��g��J!��st~���h��7M��]��Zb��s	U�~��P�A�ٌ�C^�2{K���qV(0k��3�,�҉>l�
�{`�)>���:i@�w�qL�x(�Y��='�
1��|��s�V�wػ Q�h����5���h�
��sG^O��������腡5���O=���Q%�r��<��b-���4��+f�)�a�LcB�*��Z��^��ڛ�K/�;+�sHz����������[��'ćOb8MFAt��Y_���MP.�p�['8� 3��`Y��"@ C$�+�"-q�b�{f(��O�o��"{lL�1�z�Zy�}��G�Y{r�uV
���"��qY.���L|� !2�� %܍�f�]5[���,�6��1���Noj��;ߪ���>��!���d����3����3���>�~@�)�p��S�0�R�}i@G�t�^��I3��	�c{G(�f� <�|sS ����3u��`�jN�f;n�Y��>%��eC���.g�\�e6-�S�jis�����T�&5�$7��0��=��y�^��O^�ǋ�G)���? �24����7W�xƀ�<���iGDɗ��̑�>:�@����
m@
p���3�_^m��9r�2U�$	p|H����4aY�W�:O*�[P�e�2�A-ݗ�(QA&W'���U6�A6�� ���I��7�>V��J���=�:E���af�!�b�ٜ��+���ݝ���t-� �!a.�vn��( �BAY���8s��H�U���o%x��O��bx��I��"���[*\{���6��k`/.�O	���r%�6��Y9���@tH��D����?�p���q�ř��M8�8�>���r0�e`�%�H�h� e���!6+x-������<�ߩ�MgNq��}��>	��y¾��JR�KRn=�4I)�遃��Ƭ��Ħ����]]{ �Z�Z3�4#V�_���.p�A�t>���N��,���x�2��Tޭ����﨑�A2z6t�̧K�O�Z
vr"� �M|rZ�*�%+��� ���9<r2IK�?$�}|l�����8��x�SG� �]�E�T�T�t(Y �gVQ�B�j���; s�3Ad�?Dr��qⲔ_11=?�v�7�E1p~����#∷�X��j��5ǅ;郝�hW�b��ʰ���n���p�.�I����EI\#$���	4.�q0w��]�qF�ok@�� P��8A�g�iF*9���W�!�pbk[�|݈2�ۚG����d��HM�f�p�&��_TN������q��[#/l�1u��[!��<���g�j�2��66<=�y) Yq.Nh�c$������*<��f�[��9�kb����;*���1u��oI�T;�C��41�@,B���O�ڥ���׋09���aN@6%�n�դ��[ ���ڑ�m��1
p����˱7z_t�ǋ�1u��[�!h�(S{%w~�3��B����cr������ªy��3�g�2ܴ�⡝�ީ)�������g�u	�b�ʘ:��s:1�݊t�T��NV$�{T�����R�0��X.Ou�f͢P��d��D���40B8�Õƙ�6NΌ!��"eL�q{m��U-u�<�q����)�U�y�|j<m����Ę~1��0��VJw��]o�8���:>�Y"/"Ac�H��_u#7q��~ɹY���W��u�����|r�느N�/6�*�.ע�1 ܱBu�:�� �>E��<�ԑ��AP]���@d m	  �E�?B�BG�0l�
��]�&��eS�>n�}f�Xs���r@�[���T˫tbv��8_����_Q�J�sϩ!Q�>�ݞ���Ush%�G��4wdXǀ����<�/�F��>�R�����6�tx��m/�ԑ��r�������L̰�S���z��Ʋ.�`�n���)K��k�Nk��(Rb:��cGFXr�8>p���7���"��~SG���J�WUf�Oϡ,S����jCAM��<� L�B��v�r�y�6ޕMrA�K~0�`x�� }{�ċZ�1u��[�V}�:��G��bQ�<�<m%�
��y�πr��X)풄uRC��yj�a�p��)#�g��6ԋ��1u$k?7!A�g2��ǚ|�ϗ�����k^�8��=�"��=�h@^g��vסڮOgO�kOy����t~�����V��!�W1��aY�T�u�c���WA�����S��Na2\��.l�]1�_4��n�q��ok�/-6���ُ��a/�Χ~����J?����9����"�{��0�,���
3�
1_*s�¹�؞8h�N6�8Է�O��Oc�H>�͆��j:�mP���0�h+5�vm�a��3e�%�ns��)�-2�D����O�)��Px_�5�|�~�f@/o7�������<ʚ�v�9�Qp�tl�Cj��J�ݦ.o�M(��:�b\�b�I#:�V�R\?Neh�A8���S��oÏ���R1\�3؊��J��P>:�	�JC
�YQM$o����$~E���S�[��؛E����EvN��	�m>��1u��}�s�}���H�TLw��!-b�3��Eg��dF������������#����9�|B~/��j���)�����S}��gY��$KC�,*���͹� �R�w&vv��8O��٨�ٜ���*J���p�� �Gu�7��WO�ďO���tF��iт�P�/2l*$�>�6�zK��X�!�LS���j/��"��],�U��-��p�o�Wib�OibؽWX?�-I�MF����q�*�}I�A���� \��a�\��Yf�F��,>{H<�*�d�#"�����i���c�H+vF�x�- d���F�Y>xmq_a岱����dg�f�Ix?�Mډjc�
>o�6�sl��]�p����.�Y �-��gꈙ[)f�yn&1N��,c�/�iźk�]�*���ݲ.���p����m���ѨR'��|�y��<M�VH}U�?SG�5TӾ9m�1�=�I1���15)��f��
8n�r6�.��*mg������v�h�&�"9���������:��&�E�A�~0�`"�Qc��J�.��R�y�L>�X��^ԜJ,p7�� �Lŭ��<7E�ecݽp�ÿ�������#��˜�VR >"V ���W�a���&HT\^�!l�3$\�v{<45��t��j�ArK�@n8w̷׎��?�+�?r&��y�g�@����`&��J�L6��̝C��ױi�vJ��ѵ�ɒ����ھ��	����T���K߮�/F���e!�L}t~�n��t`٘ρ�h~���5�i�50�əd�x��p	�|d+����gqj����;ir}N�&�i�ì��N����a��Z���Tߦ�������6ih��(ὨFh���
�c�qX�" JW�����$���:��	�Y���`x�Z�x���~��ʇ�� �uۯ����@��]x4QvX�\XU/�A�^C�@W��>ًө�<�`5.u�`9s�m���k�:Iڗ��?m�J���*|�Z���7��#u�����D�� �y ���>�Zm�2�j��ő>��u\�JHD�v��PQ?��+�_�o���OV��������D9�A�<��<'����zm��uz�9IW��\��,߶�J��52q�?}V���>�^����������{q�݆n0�9���Ð�R5zc��^�ͩ�5�T9̕�䝹�\��br�	��X{����T,U�x�C}�n{����6S����~_]�ߨO)z��Ү�[��!�d/I{o���@�t���y�j��N�y��{\(�|���4���	 ��n���&N^����U`?C��Q�7�h�]H7}�����f����s�3?Y��3�?�%g�/'Բ[w��,�,-�^��	��+�qV�x��:��@���#���Ӻ���Dw�G�>��[H'-�ǜ�A�9�)N�C�\���K�e���r�M0���&
}��+�%��'�������庡A5����o뾉{����i݃���t�ȗ���y�Qƌ�iQ���r001��Z���V�p�#<��5������X��u�7�� ��^�L}�����?���)�]�      K      x������ � �      :      x�32��22��2�ˊ���� ��)      ;   ;  x��ձN�0 ����(��v�$[[�R		X�մ͉�F�=�9| �֍�"U�u��NOw��aE��@
�R��h.+m*Ufh�K�WJ��&n��Q?�u�J�L���w4ѰlYG����1S������PJQ��w6!��z�l�b�Ӱh��f��M�rq�cc��jzf��-96�n�ϣI����6�~�v�q��T��>?�<`K�vq�Y����o����Ϡ��vz���y�0wԳUX­��u,�C�=r;a�w~:�6R�*���Y<���ئ��jˆ��0�I��-ʹ6���9��,I�/Y��k     