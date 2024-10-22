PGDMP      '            	    |            sso    16.3    16.3 E   7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    16398    sso    DATABASE     v   CREATE DATABASE sso WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
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
       public          postgres    false    360            ;           0    0    AcademicYears_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."AcademicYears_id_seq" OWNED BY public."AcademicYears".id;
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
       public          postgres    false    215            <           0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
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
       public          postgres    false    356            =           0    0    Banks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Banks_id_seq" OWNED BY public."UserBanks".id;
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
       public          postgres    false    217            >           0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
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
       public          postgres    false    365            ?           0    0    Boarduniversities_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Boarduniversities_id_seq" OWNED BY public."Boarduniversities".id;
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
       public          postgres    false    219            @           0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
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
       public          postgres    false    221            A           0    0    Cities_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Talukas".id;
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
       public          postgres    false    223            B           0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
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
       public          postgres    false    225            C           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
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
       public          postgres    false    354            D           0    0    CompanyRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNED BY public."CompanyRemarks".id;
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
       public          postgres    false    227            E           0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
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
       public          postgres    false    363            F           0    0    Constituencies_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Constituencies_id_seq" OWNED BY public."Constituencies".id;
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
       public          postgres    false    229            G           0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
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
       public          postgres    false    231            H           0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
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
       public          postgres    false    233            I           0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
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
       public          postgres    false    235            J           0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
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
       public          postgres    false    237            K           0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
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
       public          postgres    false    239            L           0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
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
       public          postgres    false    241            M           0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
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
       public          postgres    false    243            N           0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
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
       public          postgres    false    245            O           0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
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
       public          postgres    false    247            P           0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
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
       public          postgres    false    249            Q           0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
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
       public          postgres    false    251            R           0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
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
       public          postgres    false    253            S           0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
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
       public          postgres    false    255            T           0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
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
       public          postgres    false    358            U           0    0    FeeStuctures_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."FeeStuctures_id_seq" OWNED BY public."InstituteProgrammeSubjects".id;
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
       public          postgres    false    257            V           0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
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
       public          postgres    false    259            W           0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
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
       public          postgres    false    261            X           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
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
       public          postgres    false    263            Y           0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
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
       public          postgres    false    265            Z           0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
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
       public          postgres    false    267            [           0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
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
       public          postgres    false    269            \           0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
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
       public          postgres    false    271            ]           0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
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
       public          postgres    false    273            ^           0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
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
       public          postgres    false    275            _           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
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
       public          postgres    false    277            `           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
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
       public          postgres    false    279            a           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
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
       public          postgres    false    281            b           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
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
       public          postgres    false    283            c           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
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
       public          postgres    false    285            d           0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
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
       public          postgres    false    287            e           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
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
       public          postgres    false    289            f           0    0    ProgrammeSemesters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;
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
       public          postgres    false    291            g           0    0    ProgrammeSubjects_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects_delete".id;
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
       public          postgres    false    293            h           0    0    Programmes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;
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
       public          postgres    false    295            i           0    0    QualificationTypes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."QualificationTypes_id_seq" OWNED BY public."QualificationTypes".id;
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
       public          postgres    false    297            j           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
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
       public          postgres    false    299            k           0    0    Semesters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Semesters_id_seq" OWNED BY public."Semesters".id;
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
       public          postgres    false    302            l           0    0    ServiceRoles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ServiceRoles_id_seq" OWNED BY public."ServiceRoles".id;
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
       public          postgres    false    304            m           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
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
       public          postgres    false    306            n           0    0    Skills_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Skills_id_seq" OWNED BY public."Skills".id;
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
       public          postgres    false    308            o           0    0    StaffRemarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StaffRemarks_id_seq" OWNED BY public."StaffRemarks".id;
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
       public          postgres    false    310            p           0    0    Staffs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Staffs_id_seq" OWNED BY public."Staffs".id;
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
       public          postgres    false    312            q           0    0    States_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."States_id_seq" OWNED BY public."States".id;
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
       public          postgres    false    314            r           0    0    Streams_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Streams_id_seq" OWNED BY public."Streams".id;
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
       public          postgres    false    316            s           0    0    StudentAdditionalSkills_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNED BY public."StudentAdditionalSkills".id;
          public          postgres    false    317            >           1259    24845    StudentEnrollments    TABLE     \  CREATE TABLE public."StudentEnrollments" (
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
    board_university_id character varying(255),
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
 (   DROP TABLE public."StudentEnrollments";
       public         heap    postgres    false            ?           1259    24850    StudentEnrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentEnrollments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."StudentEnrollments_id_seq";
       public          postgres    false    318            t           0    0    StudentEnrollments_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNED BY public."StudentEnrollments".id;
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
       public          postgres    false    320            u           0    0    StudentGuardians_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."StudentGuardians_id_seq" OWNED BY public."StudentGuardians".id;
          public          postgres    false    321            B           1259    24859    StudentMarks    TABLE     �  CREATE TABLE public."StudentMarks" (
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
       public          postgres    false    322            v           0    0    StudentMarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StudentMarks_id_seq" OWNED BY public."StudentMarks".id;
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
       public          postgres    false    324            w           0    0    StudentRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentRemarks_id_seq" OWNED BY public."StudentRemarks".id;
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
       public          postgres    false    326            x           0    0    StudentResults_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentResults_id_seq" OWNED BY public."StudentResults".id;
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
       public          postgres    false    328            y           0    0    StudentSkills_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."StudentSkills_id_seq" OWNED BY public."StudentSkills".id;
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
       public          postgres    false    330            z           0    0    Subjects_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Subjects_id_seq" OWNED BY public."Subjects".id;
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
       public          postgres    false    332            {           0    0    UserContacts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."UserContacts_id_seq" OWNED BY public."UserContacts".id;
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
       public          postgres    false    334            |           0    0    UserDesignations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."UserDesignations_id_seq" OWNED BY public."UserDesignations".id;
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
       public          postgres    false    336            }           0    0    UserDocs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."UserDocs_id_seq" OWNED BY public."UserDocs".id;
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
       public          postgres    false    338            ~           0    0    UserMenuItems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."UserMenuItems_id_seq" OWNED BY public."UserMenuItems".id;
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
       public          postgres    false    340                       0    0    UserPermissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserPermissions_id_seq" OWNED BY public."UserPermissions".id;
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
       public         heap    postgres    false            ]           1259    24929    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    348            �           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    349            ^           1259    24930    dummy_table    TABLE     E   CREATE TABLE public.dummy_table (
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
          public          postgres    false    352            *           2604    41925    AcademicYears id    DEFAULT     x   ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);
 A   ALTER TABLE public."AcademicYears" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    360    359    360            �           2604    41926    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    41927    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            /           2604    42048    Boarduniversities id    DEFAULT     �   ALTER TABLE ONLY public."Boarduniversities" ALTER COLUMN id SET DEFAULT nextval('public."Boarduniversities_id_seq"'::regclass);
 E   ALTER TABLE public."Boarduniversities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    364    365    365            �           2604    41928    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    41929 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    41930    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            #           2604    41931    CompanyRemarks id    DEFAULT     z   ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."CompanyRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    354    353    354            �           2604    41932 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            -           2604    42008    Constituencies id    DEFAULT     z   ALTER TABLE ONLY public."Constituencies" ALTER COLUMN id SET DEFAULT nextval('public."Constituencies_id_seq"'::regclass);
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
       public          postgres    false    262    261            (           2604    41950    InstituteProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);
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
       public          postgres    false    298    297            �           2604    41968    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299            �           2604    41969    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302            �           2604    41970    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304            �           2604    41971 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306            �           2604    41972    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308                       2604    41973 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310                       2604    41974 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312                       2604    41975 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314                       2604    41976    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316                       2604    41977    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318                       2604    41978    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    41979    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322            �           2604    41980    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    41981    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    41982    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    41983    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    41984    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330            �           2604    41985 
   Talukas id    DEFAULT     k   ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 ;   ALTER TABLE public."Talukas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            %           2604    41986    UserBanks id    DEFAULT     l   ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);
 =   ALTER TABLE public."UserBanks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    356    355    356                       2604    41987    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332                       2604    41988    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334                       2604    41989    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336                       2604    41990    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338                       2604    41991    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340                       2604    41992    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342                       2604    41993    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344                       2604    41994    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346                       2604    41995    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    348            "           2604    41996    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351            /          0    33738    AcademicYears 
   TABLE DATA           Y   COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    360   G�      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ��      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   >�      4          0    42045    Boarduniversities 
   TABLE DATA           f   COPY public."Boarduniversities" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    365   ��      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   ��      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   I�      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   �      )          0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   Y�      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   v�      2          0    42005    Constituencies 
   TABLE DATA           p   COPY public."Constituencies" (id, name, district_id, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    363   ��      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   V�      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   ��      �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   6�      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   S�      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   �      �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   ]�      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   z�      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   n�      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   ��      �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   V�      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   ��      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   �       �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   v	      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   �	      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   �	      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   s
      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   �
      -          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   �
      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   d      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   1      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   N      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   �      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   �$      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   w%      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �%      �          0    24738    OTPs 
   TABLE DATA           s   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    277   -      �          0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   �L      �          0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   tM      �          0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   �M      �          0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �M      �          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   .N      0          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   KN      �          0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   hN      �          0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   �N      �          0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   �T      �          0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   �U      �          0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   zW      �          0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   fX      �          0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   �Z      �          0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   �[      �          0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   e\      �          0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ^      �          0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   �^      �          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   �`                0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   {g                0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   �g                0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, board_university_id, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id) FROM stdin;
    public          postgres    false    318   j                0    24851    StudentGuardians 
   TABLE DATA           '  COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender, death_certificate_id) FROM stdin;
    public          postgres    false    320   pw      	          0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_sem, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   �~      �          0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   ��                0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   p�                0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   ��                0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   ��                0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   ��      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �      +          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �                0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type_id, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt", constituency_id) FROM stdin;
    public          postgres    false    332   ��                0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   ��                0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   ϳ                0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   ��                0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   g�                0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec) FROM stdin;
    public          postgres    false    342   ��                0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344    	      !          0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   	      #          0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    348   �      %          0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   A      &          0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   k      �           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
          public          postgres    false    359            �           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    216            �           0    0    Banks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Banks_id_seq"', 20, true);
          public          postgres    false    355            �           0    0    BloodGroups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);
          public          postgres    false    218            �           0    0    Boarduniversities_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Boarduniversities_id_seq"', 43, true);
          public          postgres    false    364            �           0    0    CasteCategories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CasteCategories_id_seq"', 4, true);
          public          postgres    false    220            �           0    0    Cities_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cities_id_seq"', 15, true);
          public          postgres    false    222            �           0    0    Classes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Classes_id_seq"', 29, true);
          public          postgres    false    224            �           0    0    Companies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Companies_id_seq"', 24, true);
          public          postgres    false    226            �           0    0    CompanyRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CompanyRemarks_id_seq"', 1, false);
          public          postgres    false    353            �           0    0    Configs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Configs_id_seq"', 1, true);
          public          postgres    false    228            �           0    0    Constituencies_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Constituencies_id_seq"', 41, true);
          public          postgres    false    362            �           0    0    Countries_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Countries_id_seq"', 194, true);
          public          postgres    false    230            �           0    0    Courses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Courses_id_seq"', 2, true);
          public          postgres    false    232            �           0    0    Degrees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Degrees_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Departments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Departments_id_seq"', 6, true);
          public          postgres    false    236            �           0    0    Designations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Designations_id_seq"', 1, true);
          public          postgres    false    238            �           0    0    Districts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Districts_id_seq"', 1, false);
          public          postgres    false    240            �           0    0    DocumentTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DocumentTypes_id_seq"', 35, true);
          public          postgres    false    242            �           0    0    Dummies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Dummies_id_seq"', 2, true);
          public          postgres    false    244            �           0    0    Durations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Durations_id_seq"', 6, true);
          public          postgres    false    246            �           0    0    EmploymentTypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."EmploymentTypes_id_seq"', 3, true);
          public          postgres    false    248            �           0    0    EntityTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."EntityTypes_id_seq"', 5, true);
          public          postgres    false    250            �           0    0    EntityUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 183, true);
          public          postgres    false    252            �           0    0    EvalTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 2, true);
          public          postgres    false    254            �           0    0    Experiences_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);
          public          postgres    false    256            �           0    0    FeeStuctures_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."FeeStuctures_id_seq"', 274, true);
          public          postgres    false    357            �           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    258            �           0    0    GuardianTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);
          public          postgres    false    260            �           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);
          public          postgres    false    262            �           0    0    InstituteProgrammes_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 221, true);
          public          postgres    false    264            �           0    0    InstituteStaffs_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 34, true);
          public          postgres    false    266            �           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 6, true);
          public          postgres    false    268            �           0    0    Institutes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Institutes_id_seq"', 78, true);
          public          postgres    false    270            �           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    272            �           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 98, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 137, true);
          public          postgres    false    278            �           0    0    OrganisationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);
          public          postgres    false    280            �           0    0    OtherSkills_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 75, true);
          public          postgres    false    282            �           0    0    OwnerTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);
          public          postgres    false    284            �           0    0    Percentages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);
          public          postgres    false    286            �           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);
          public          postgres    false    288            �           0    0    ProgrammeSemesters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);
          public          postgres    false    290            �           0    0    ProgrammeSubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);
          public          postgres    false    292            �           0    0    Programmes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Programmes_id_seq"', 73, true);
          public          postgres    false    294            �           0    0    QualificationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 7, true);
          public          postgres    false    296            �           0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 18, true);
          public          postgres    false    298            �           0    0    Semesters_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Semesters_id_seq"', 11, true);
          public          postgres    false    300            �           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 23, true);
          public          postgres    false    303            �           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 3, true);
          public          postgres    false    305            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 33, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."States_id_seq"', 172, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 366, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 103, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 310, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Subjects_id_seq"', 120, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 184, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 170, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1307, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 354, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 366, true);
          public          postgres    false    347            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 513, true);
          public          postgres    false    349            �           0    0    religions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.religions_id_seq', 2, true);
          public          postgres    false    352            �           2606    33744     AcademicYears AcademicYears_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT "AcademicYears_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."AcademicYears" DROP CONSTRAINT "AcademicYears_pkey";
       public            postgres    false    360            2           2606    25007 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    215            4           2606    25009 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    215            �           2606    33655    UserBanks Banks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."UserBanks"
    ADD CONSTRAINT "Banks_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."UserBanks" DROP CONSTRAINT "Banks_pkey";
       public            postgres    false    356            6           2606    25011    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    217            �           2606    42051 (   Boarduniversities Boarduniversities_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_pkey";
       public            postgres    false    365            8           2606    25013 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    219            :           2606    25015    Talukas Cities_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public."Talukas" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    221            <           2606    25019    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    223            >           2606    25021    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    225            �           2606    33638 "   CompanyRemarks CompanyRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."CompanyRemarks"
    ADD CONSTRAINT "CompanyRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."CompanyRemarks" DROP CONSTRAINT "CompanyRemarks_pkey";
       public            postgres    false    354            @           2606    25023    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    227            �           2606    42011 "   Constituencies Constituencies_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Constituencies"
    ADD CONSTRAINT "Constituencies_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Constituencies" DROP CONSTRAINT "Constituencies_pkey";
       public            postgres    false    363            B           2606    25025    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    229            D           2606    25027    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    229            F           2606    25029    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    231            H           2606    25031    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    233            J           2606    25033    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    235            L           2606    25035    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    237            N           2606    25037    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    239            P           2606    25039     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    241            R           2606    25041    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    243            T           2606    25043    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    245            V           2606    25045 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    247            X           2606    25047 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    247            Z           2606    25049    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    249            \           2606    25051    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    251            ^           2606    25053    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    253            `           2606    25055    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    255            �           2606    33702 ,   InstituteProgrammeSubjects FeeStuctures_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_pkey";
       public            postgres    false    358            b           2606    25057    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    257            d           2606    25059     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    259            f           2606    25061 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    261            h           2606    25063 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    263            j           2606    25065 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    265            l           2606    25067 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    267            n           2606    25069 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    267            p           2606    25071    Institutes Institutes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public            postgres    false    269            r           2606    25073    MenuItems MenuItems_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MenuItems" DROP CONSTRAINT "MenuItems_pkey";
       public            postgres    false    271            t           2606    25075    Modes Modes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Modes"
    ADD CONSTRAINT "Modes_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Modes" DROP CONSTRAINT "Modes_pkey";
       public            postgres    false    273            v           2606    25077     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    275            x           2606    25079    OTPs OTPs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT "OTPs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT "OTPs_pkey";
       public            postgres    false    277            |           2606    25081 (   OrganisationTypes OrganisationTypes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."OrganisationTypes"
    ADD CONSTRAINT "OrganisationTypes_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."OrganisationTypes" DROP CONSTRAINT "OrganisationTypes_pkey";
       public            postgres    false    279            ~           2606    25083 #   StudentOtherSkills OtherSkills_pkey 
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
       public            postgres    false    346            �           2606    25165    Users Users_email_key 
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
       public            postgres    false    324    324            z           2606    25181    OTPs unique_keys 
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
       public            postgres    false    360                       2606    42052 1   Boarduniversities Boarduniversities_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Boarduniversities"
    ADD CONSTRAINT "Boarduniversities_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public."Boarduniversities" DROP CONSTRAINT "Boarduniversities_state_id_fkey";
       public          postgres    false    5286    365    312            �           2606    25189 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    267    223    5230            �           2606    25199 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    249    5210    251            �           2606    25204 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    5336    348    251                       2606    33708 9   InstituteProgrammeSubjects FeeStuctures_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_institute_id_fkey";
       public          postgres    false    269    5232    358            	           2606    33703 9   InstituteProgrammeSubjects FeeStuctures_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_programme_id_fkey";
       public          postgres    false    358    293    5260            
           2606    33713 7   InstituteProgrammeSubjects FeeStuctures_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_subject_id_fkey";
       public          postgres    false    358    330    5308                       2606    33718 7   InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_userdoc_id_fkey";
       public          postgres    false    5314    336    358            �           2606    25209 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    5232    269    263            �           2606    25214 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    5260    293    263            �           2606    25219 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    310    5284    265            �           2606    25224 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    265    269    5232            �           2606    25229 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    267    265    5230            �           2606    25234 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    297    5266    265            �           2606    25254 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    5230    267    269                       2606    33751 5   ProgrammeSubjects ProgrammeSubjects_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_programme_id_fkey";
       public          postgres    false    5260    293    361                       2606    33756 3   ProgrammeSubjects ProgrammeSubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_subject_id_fkey";
       public          postgres    false    5308    330    361            �           2606    25264 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    302    297    5266            �           2606    25269 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    304    5276    302            �           2606    25274 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    310    247    5208            �           2606    25279    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    310    348    5336            �           2606    25294 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    318    5336    348            �           2606    25299 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    320    5220    259                        2606    33723 .   StudentGuardians StudentGuardians_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;
 \   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_user_id_fkey";
       public          postgres    false    5336    320    348                       2606    25309 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    328    5278    306                       2606    25334 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    5336    332    348                       2606    25339 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    5196    237    334                       2606    25344 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    348    334    5336                       2606    25349 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    348    5336    342                       2606    25354     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    346    297    5266                       2606    25359     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    5336    348    346            �           2606    42039    States fk_country    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES public."Countries"(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public."States" DROP CONSTRAINT fk_country;
       public          postgres    false    5188    312    229            /   d   x�}�A
�0D�us
��2�6jrמ��cEp��f��D�ô�[[ƒ���8|�E��zJ<%}H ��/�U�]������:P�MA���>��ED��*Q      �   s   x�3�(��JM.�4��,�4202�50�56P04�24�20�3�60�26�'�e��W�Z�W��Y�ihI�IƜΩE%�i�ɉ%��y�@��f��XPP��W���
v��1���qqq DB"      �   �   x�}�1�0���>{Uˎ�$��^���ĈX�������{F��}�%M>k̮'��[���4���ʉV�$�����ӆ��f��#gZ��*�ᐱr�:�Ij��#� ��X��+���,�k��P���|ܮ�#&B�,�+_�����l�      4   �  x��W�r�@<��b���VO;���������2�6֖���jE�����?�K� �:).�]5���pi�W�Z�w�^��K�"H�Gq:��PJ!�q���hTDy�����$�����z�A1C�J4�b�N����£W�/($, i�c�����h|)&�mT�v��@e0��uX�C29B�����,�8U֭5�3�z�;�@ K��[�@F,@���Y�hcu+.����i��k�k�g	�pQ�'������'�T��
�⤣FHyhHy �R9���h^���8�u[��n[j�Q=��t�F{[ S�B�/���[�F<�38_���i�G2T�b�~U�4�3����n:rC4�=zM�g�4�P�]e�r���-\�Z�
ݍ6=
<�Cy�2m�������P��)m猂����P۟T�3��@���1e��j��GQ�G��R�]w�W�g����M���6(�S�/\�.��T{	?�bb�%�`�Dd4k����#����U�)��<*�o�j�����ˈ�S	��ɘ'p����[�G�xF�$�l�3u���9a"Ϝ�e���"��f�n����[����jg���������]d��@��������Wͻ��7L2屾$�ו6��P�R��K�����}o7k��+l=��q�LU������`M'�N�T>3U���#�al/�Z1Ǯ� ��^'Os�Ho�J��h�v��t�}9�t,��      �   m   x�}Ρ�0EQ=�x��u�ih%$$�#+6��YK�E���:�����O��B}�ةo\�Hْ�ַ���^YiƇ�ESٸU��		j5�Z9в� ��ŵ�&����6&      �   �  x�}��n�0Ek�Wl���Po�i�ƀ� �f6�Q��Z�Ԃ�����C��|���'G��(���uT�1ȗ�#�}
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
5&̆�	����>�Jw�.ӷ��3	K��}a�rے\U�B- �v��|�3$0�u��C������@����z8U�$-"1���'���gi-�hcr]H�\�;0��E�>�-wa3��jp$�j�!��mi�i�1�3O ]�_����G�=�q"D���3�`� ��~8'''�q(�      )      x������ � �      �   C   x�3�LLNLI��L��LM,�4202�&�%������������������������~Y�=... ��      2   }  x��ֱn�0��x���!@����Q%���VJv�`�>}��@��>a��I:�非H���d&�TdiV�����6��R��xɊ���=�(j�3@0���}�q�����m�_�����N���x�labM�l�~�0Sd�Z�X���{kp��Z6|p��3�Z��i^��qf�4wqb��5~���y`��В�!$b���M)����2�O�M)�ua���=��L�0,�E�y��8�Ft�n��a�&��ٴ���'��Kz������5��5k:�E��p��n~>?0S�O%c<�IR��ڰGVG�t�EC�"��t�`��D؏,���;2�U�eX���v�@2�"�����g���2��I��_��      �   V	  x���Msۺ�5�+�l���C���v��v��Nf���p)�$���u�_�sH'iݼ3�	�d� �`�.�hv��è{5��<�ϒs�'�oV��4�����U��՛������E��h��j�>�(�c��\]�[�=�V�(ٸ�2�G�F�L:��6��~=mQ%����/n���7���2k&�(�X	V��bF�[�h}��9�,n�.NƯ�����W�FI�.�Nwz��bI�3N{m1U�-�oN�i��;�p���m�u��`LڣP���~����\c�%7�V��'�R�b��t��,��D)�w�)(qu�Z���٢ E�hD�a���'Ӹ�(h��R,����0cQJQ��ɶ��%�x�So,�e�Y
Ʃm4j�^0�)'�Lw2~��\Sw�83�[P{��]�+�v�㷘���{8��q�[�-����3�;�	�;�l�A�'����Mrh�_������O��n0��GY��vz��w�5�(i[PWa�т����%��R]��ukTכ1�nE��y�TA,f)����_g<��m[�WPA�V��9Ck��u��p�l���N�������D"E�q���1e��w'�ف���(_������oy�Oj��~�k7���˂q���h�hFr�#�m�ʨյ���R�Bl�8W��z3т��7�*Q��q?b\�DM�u?��V�c=S��'=����Dc8����Je����ѣJ�+u=��u1[��>��c���@��hU��qg�U���V����+CL֔�[Z3��^ƽ����6���;oz��D�Д3-���"�4l2�>*2uc�oPl���)�;�A.[Q�R7;�V$�k�n�1�N��sT���-!�%���h�Ӡ��W��Z�e�-��٥=a�B���A!7a=�)��2U�͉D�f�뷓m����z?�������x�n76�Ζ�QY���5p64ʒS<f�ܠ�]�[�jdH̚��Q�wU� �.�O�*Q�����(�j�nG�b:,KܢU�~םF-8f�ܜ�{���ǘj�~w~�b��V(ԝ>���nࢪTw�?bW$�l�kko�.�juG.�����#�őH��}T�/<ҒS�H�$T��^0{�Biթ���L¨B٨����7���	չ�נ7��I\�(9�^���Bݛ��A �x��KJn�a���+�+uoװ��E�Ps4L��/�9i6����h@�iV��'�۸�`�T^5��T�O�n�&�`�WN*��Zv4z�h�.�-�;��K��%m���5e[0��m���t�9X[���k��G�伦�v�m�ہg�����p~�v������$sނv�gM�T=�?�4�2%,���x�Z��<E�k��4=�b�����Ta>�O�G
�6uk���%�h7��U<p�y
L���(lI�)6݉�㨅@�p����'gz\N��`O�Aw�9[\�2����$j�>���,^E��s9%ǝ���4nv$�H>�_�����x������	t�[��,MF@0�5�VsU���o����Ao����U�3��h<h�NS&�������b��u����w�{���(ׂ��E�6�)��s�5߶e���9|�{���rQ�*��#&v�>И�P��f����������q�w��ꣃ�~D�&f�sҏSzl�Gb�������<���`3�٢��g��4�楁b6W�t�@�P̮ԣ����q����b1��MY�Yaås����L?y\@9����C�e�|"�����j�C���9���hMɞ��4S�L�I�X��Zq��O�3�D�6v��,/2_�*�촵�ר���D����qg�B�d����
ō�S���^ރ��9;Om��:�7�@��(�@l�F�G0k�S���`~F��`�V��}0�(�|����M�_M^\�c��*X�&�{�p���e90�����z#��'�ZP��QG�$瘒�����^�Ϡ�Y4n�U\{�h	
ω�r݁�s�Ħ�<��ՙ����;�dہ�Â��Zڊ�߇��'m�;(i�2��7\$
GpJ����.7F��v��nc����5�YC�^�(C�K7@��(B�Voe���U�ٝ'�A���TOSoQ+��b���6��2S�e-i�j׹%�_t�Y�J��L����
�����_�b�`�OL3������\;���#h�0��*_
����ց>��F�S���?���_tf��T���'�~�l�\�ϧ����\�/���ھ�g3GtM�(�z\��$3%5�i�|��P���xB+p3����Ku��e:�$G$��:S_qͿ�͓:W_m���f0Y0���[E�+؁4      �   j   x�}̱
�0@�9�
wiI���]\]D��`���স���^m����m�f�vu��@H���(,�*��3ǒ���(��if[�|�Wx�A�T*��{�{����)      �      x������ � �      �   �   x�}ν
�0��9�U����'Q�M��n�nV��Z���RJ
���9���2�mݖQ���E��(I@����.�����]Û��I#� �>��a�2�
V�}��f�RJ\���r���uz�_���2� y1T�~JT�U�ԟK��R��A� EH��� �|�W      �   E   x�3�t,.�,.I�+Q(�OK-.�/�,�4202�50�54P04�21�21�366�60�26�/����� �S      �      x������ � �      �   �  x���͎�0 ���)|�"�OL��A*ZhQQ{��MpI��1�}�iw+ [�&�D�F�4�3��,�� �`BN�t��"c2S<bb���L�QFb�����T��8���.��(�k{�f�O"��~�9���0k��:g�����Be�J3�"���y�D�f��Z�C�G}��J�[�Y4&	�n��<�{3cd�"ѯ��9���� ����۹�����տ�w�`>��0�u���V��ܼ���1|2M�j=�R�ȇ+S�w�m�N����������C���`iz��M3�N�l��\;��q�EO+]����͖]��`�nx�����OS���"&�R.3�2!#��ŷ��+��r���K����H��Ca�İе�����O��Q��h���#��g�H7���1��+Fأ����ըՐ]�v�O����V�4����PS�Z��O�.��a)�`����t5�|�B� ʺ>�      �   G   x�3����,�4202�50�5�T04�2��24ӳ���60�26  k�e��Z��K=Cܦ��r��qqq ��      �   �   x�}�1�0F��>Ewd����i��� ��@b	R���I���/����I0��*���ؑ�Z��7l~䂟�����6���A��P�4�#������bň�/J)C*v3�����JE�J�|Lu�e���]	      �   o   x�3�H-�M�K�+�,�4202�50�52T04�25�26�335�60���rq:��%&�($%gcgne`�gbh��8TY.cN���ҢT<�Y��4I�+F��� ��3/      �   �   x�}б
�0��9��%�r�4mV]�\]���X�(��*Vh����N�}�K*�E��Y�n��L�H����k��Hl���c�1N�ljβ��t	9͡�k^ìS����`�1N�t�g�v�Mk=ZŎ~�J+vqSb.�H���;o�"��S��I�yO�      �   �  x��Z[��(|���__���E�
f�M�3��,���-�1���,�/a��?K�!����ʛ��5��y٢7�.-� ��[�+S�jty� r	���Fe^)��kue�uQoN0Q.���|������RP�8�(l�n�֫3]�#Z��.�R�jt ��I'��~����9��ku���W�M�i����!�(n��%߷յ: 1Xse]����z�Y���ۙ�b_y�(�P���\BR�=�k�;J��4��[���.?8� ��5<ص����_��@zN�%�Mq'��_0q��ҬL�XS
�*�.8�8�XUV��$�Vx����H=��KDg$x/8��\�#��.@��NᆄL�Đ������U�O8����8�Ե�P�$��$.��J�fu����o��<i<���X��XPj'�NHT���ߐ�V���^kK��Ũʮ72�.�/	d_���Q[j�ݬ.�ޭv��Rzl�gu�*Z�(?�$h@3��ݵ�z���ȷxr�x�� ��.�ݥ� ���k�FV�Mi(g�V<YP?W���Գ�wj�R�!�2�����AzXR	�x��K��e㸦:@�c�����3RQMI�v
?\�Y#�U�膄( ��>޳:�n^�I��Pv4��A�d���iv�B�!Mb\W)����:�o���HU�Yc*��|G�Y��7d���ҿŚƴ�A(�r/�S��V�	P��Z�ȫ�ЁzX#J�� *iOƹ�t1:�Tz���+�J��߱�1�s(���Bk7�,P��Z�,m=4��Y�#�=�@(�@h�t52�ck=����W�,��OTD�+�P���3{@�Y�K�fuz��= tyД�����N�nв[a�G�{V'�6H�b�1��]�N� ��	]�J�m�auf��]�6�Г�=�0\z%�[N�����H�j�'oU�;P��8-wB�RTz���֒:@�K`6(@{�}Z
�`����tlu	̮rS�Z���v�H�ku	���i�ހ�(����kuI �%����?ZV ݬ.�%�$Rm�~���>/@}�ð�ƨ<a0�Ԕ�8W�K��r�!�`�}��ѡK��*��J���>�pV�=��(b�✌.cL/��rhyo�$Y�F�1�~f�t��4A>+I0E݀�V��?��Tx��&��D�>�*R��H�uU�I~�Z�z�c�=�]��bm���f�4"�	�nwG|	sRl7Q\�H�D�u[p�Us[G|I9�g'��M"Ņ�v[2>�l"��-$:g��	�4L�H�Dڛ����$�1�&�2���q,�I��K��-^��i|r�D�f��fx�$�2\��>���5��׽�a��p�ݺ�0���r�U�1�@{3Q�ܪ�8��,�M��"������ا`"��j���qE�{�
$�Iz���54P4��� yMJm�|��p�*���@1��P :��9�sb��P`�>+-2��,�R���a	��R���Pg���w@������Ȯ�����7	EJv�x��ER���u�@�ǐ�M����H�zl��k$0]o��4.1f��[��&�q����c�5���4�����{$0]���8�ٳ�� ���q��I(�tn����l
T��q�7h6@r�Z#�3�^j�Y(M�-��Ҵ^����~� �s+5�o(��U�SHf���@�'��C2��q�K�'2+i2��l��y��P}?��WٛSq2����s1�O3)9C1;�l��q�K	>}."�>��w��^���4L/�,�G�#��4��<��'1��XE+�Ǘ��
偳9_M�Ogbo��l���m�Y���i�i���i������xZ}��ٜ%3�##Kq{�Oc&̩Oo��y�������!Gq�i��i��)�H3���h��c(;TG���ʛyZ~h��ت���	V�>�>�$�Rx/?8��e_:��5P��S��o�㡙h^�N�^2��I���Ϸ*c���>������������c���V,}jם<����"�J��t)���[F�����i�+����tтW���hZ��*+��#�j_��kִ��T	���tϨ^s�V ���ʌ����"OI{L1�֬��y{6�@x����=�y��;F��^���ib"m_���U���Ŵ�U�Z��U5֦%��"��h�l!>�>d�N�.����{�l�B���R;���#ڭ�����*��=��խ�W�ܿ�<��      �   \   x�3�tvp�,�4202�50�54R04�21�26�3�4�6 ���rq�%��$��B�2�50�50Q04�2��20ӳ�0E�[�+F��� ��'      �      x������ � �      �   d   x�}̫�  �|�W��> 7>�f1[l�R�{�A�g;c^T���aJ�����;
I�_Q`([��.jl6/E�)ץ�f?����ձ8��սg��\�-�      �   J   x�3���/�H-�,�4202�50�54U04�25�21�
i�Z���2�tK��1ƜE)��y���� �,�      �      x������ � �      -   j	  x���˭�6��R�Xok�H)#�#$mҳ�C�����"�]�L��K����o�W���Z�(�g�~������5~�[suP��1�ߑ~1��vL�ZsO���Q�T{jjC�k�3��6FA��V�8c��^k�S>�B�k͛���� ��B?�>�CXWXI�+ޫ����L�X��:k�� l)�502��j���[;��u��_�����1؝V���T�Dn։�5g^((͚����J�fz8��g`U`8��bܬ�6�Ir�#0��;u��B�a�L�H�x
&����;�6v'Ҍ��Y&��=?���#���`d�5�g�A���(��f�M��K
��ڬ��u$OƂ��Ox�E��<w@�o���t�Bm~B�5_%����e�P�9�f��*.g����	㳠�5wvy��F��f9�e�4|T�b˘�����ݾ:"Q�ި5wU��~6(ͦ�+��b�5��S,r���S��j̓]�;�N��%s80X�i=7X���1��$둠�5s�g���)�~��ߗ��y%��p2
+s��
eZ�yV~e�TYR�xを��<Iy!�Œﲠ�5O�s\�i��ɾ_<���]TC��y�]<щ�֕�ςjXm3���Uq�dVy���������~%KnEL�yIyr
&�_������]D��%��!��"��R�򾤪p�"
�r�	�Q����fh��a-5ޥ�,(�j�7W��YEY,���� �+����*�Z�-��)�~�&�j���<����s
�AԚwI���B҅��ּ��w���Ж28JC��G�b$.���Z�2��(K��C�guK S�Zs�d_g:����{]���'l���Î�خ������(�+�"j�m(Ni�6��ju�s�k)m���J�����yⵕ��h�D�F����n'���Fa����	�ۉb�H�O�,6�A�5�-���Y�k2/�T\�m��1��zڄ4(��D��(Ң(�jL�j�0�u�KC1�U��dҢ5|��SM��iQ�֕�bt`�5�Ci(Fô�D�U�oP��w�D3Q�iF���@��|*^�8����ȊҊ�`d��`��J���`,Di���(���?�`,�c��J/�i�6ul(���~��/=���SQ;-M�BA3�iVX(/Gi]�b���QL�n�ޢ4��E)�ɴ���5��:��]�9�ֶ�P/�;�y/-��_��iKiH�ô[i0������VR�(m\JC�6�V��c�[��*7L{n8��5>1��rè��;My���N�9&L/���oF��P\Y�ՈX�\Pw���ꈏ��;�6�x����2��z���vao��=v��aA_���}�S��4�Ȃ	aYB�u�{�+̚<�oDaϥ�6���˲��|nRyc���K��i�F� �M���޲���=�ޠEi���l:/�k&lK
��6�°��y.LS��Ԓ���n�O���Q^�#�����n(޷�7�W�&�A�M��d�C�[�,�M�J�m�Ak.aN�*�x�MaۖY�&K�hT
q� -ʒ#�*T/�0:o�N>9��wDaRM�����J0�/4��6L�5�7�P7�y�l)�N���NR��%��XM6Oΰ��ڨ��m�f%��e�1k#�P� ��J��k��EiR-gGv1ί�qoVZOЂ�z�
�h����H���:ۥ�:M�D���Zy�ɢ��s�,�J49< <t	Ӟ�1?*p�ڬ�y����-yq�h�gJ4�چ]�f%�s��'�{��qE��U,��h22�_>8��]��>�59bj�/3��f��t�P�����<�] +,������2�-�[��=[Enb-�G�~i��/jHW��V��Ү���9U��5��/��6����6��⢴����Y��G��8p*�`��:j�s��%��Q�,zs�!J�_J��՚�h��s❔0�I6uiP⬵�����*�8��2:56�gs��l�5+�zr���0���4���J��ީ=C[�G	Q�~v j/�2�dކb|}8�zΔ]�}��^��{|p�W̽;��b��7�!�}�f%�d���pN�8Y0���pa��I�C� l�6+��dy��R�0��?<�3�N]�|V���Q�s��|U(N+|v�|Vh��l�MV��h���#9vh��h�/��`��`��.�J��O�N�_Wti05X�v��⳵S��C�@���(�o?n��G�D���2�����ѭ�[��J4��ʷ�К2L�5�|�h��m�M�)�Фs�I�4�Аt� �X�^����#
{�s`��m�f�u]�ױ��N�V��bt��´�~�����5����=PX�i�ˣ�dRاn��Ϗ��F�L�      �   �  x���M�e'��x�G�:�C�%����~�� U�t�eR�?ƅ��K*O�W�Wڏ��(寜��ϟk�����>\�b����)B�P��:҂<�?Ti����2Ɨ(�p�PƗ*#M2�F_�Le�qt��Re)#o�򥊮h&��Ὢ��(x>4�W����gDW�.�n�^�P�U%�]�B7�U%�T��	���Q`��,W�<�B�n��J�������Y��s�Q�*:�Bb�i��*�J)bh��*
h�LiPʸ��Z%��W�R���D��Ci���4FW�ғ�M��;h*]U�.m%��IpU)3�N(4�*e/.���m�h����UE�������NHìx�O�J-�n�I��Rk"i4�v��Ԧ��'M�J��I��UE�L�B��R���FBi�J�d䇘�t�u@Cs�Ҏ3�`��^f��8)z=$NtF>!�Hq�h&]UZ3
�Т�tUQw!�Ǣ�tU�#�����U�������tUiZ3�t�R�vٲ�l���Nil]h]U��&�#Q�n�ERz�{�����dQJ3
�5MF����d�3�D!ΘƀA�1�[�fS[���^�d�)�1
�5�����u���(F�c	R�Q��R���ݺ�.;>�t�xPo�SW�1��$�	Rt�2
u���Ђw15����	u��sU��a��995����K��J�ؿ/h�� B<�8F��C&�t��	=�\�����&����U��(yL�AnFB�֮�܆)��b����7 �kWe�{����L��]�U��fG*��v}���嵫���%�C�G������܋�1#���54�n:-u_��1��v��!N��o��ǌ�`�A\Uv�L"��W�]̫���Ue��YfWt��3����"���/��ʞ�׆����^�<�Q�Kx���������cr�R�L�S��c�]e;yj�ʾ�!�iƁ�����'O7HE%Z.�m���?�p����Á1/|Z����`�9�8��!��ߗ� ���ɇ��E-��K��?v�)��f��U�	��g37h_a���guӫ*g�&$��L���x<�O�?���m�)G�s���9V7bb���U���{�s&E�CM����mw�����
\��Q�����~R)�vA���a���i�6|q�ձv�o�l��IQ��l�r�0���Q�U���;��Nu��z��}�4��s�����{�����#�u��	F�J����e<�F��y�Wk���b�Ղd44��v�f�|8�a�=Ptoږ��h˩����0����'�>ZX�sU�)g�C�s�\��>'��҂´q)��K��Ú2��m3�h�u5�.]ݱp�C�}T����	M6�9oU�i�4�b�P&�U�uN�:G�A1�{����8� e�å�=f��1�y��8f���j�J������9�x����hOx�ڇ>�T��O,څ�r�ݮ㣦���Kv���/�g<0�i_���9����	s�m¡��ݿƩ'ɼ��ߛ��3u0�x��|��R9�)�JA�C����j|��3�4����\��)�jS�=�%�U�Lsw��a�2�˃z�p/���{����*y��/���3�K5/�12�1�LL����q_���p���f�}�ex�m^�88EÜq~P��E-�y�:5��e2-�����IY� g�u��CW�y�u�R�Z&M���(���j2�(��y��:��:���$?y�sF���h۴�ʙf�$ZQ�2vxڀ��r���_�S��\tcuT��.O�k�o��F�?qhS���9M��z�s�<q�z=`�C��]U�y�x����~=�U�SwU9�{@os���<����%�_���G��+fi�rJ�whӻ��Qon�Siۻ��9}D�Ün���C��;����yO�3�d��U嬤���r�����^��E7���qL���Rig����O�ҋc�      �      x������ � �      �   �   x���1�0����Wt���%giV'����B4�֡�^�
������&���5�R��� vB�j�R��8�Wd���Ѧ���!ư�I�q�[W4�dvL��滢���>�����n�dgDQ%9p]Q�C��r,+Sٜ�������k��__�*D||�_o      �   �  x�͚�rۺ���S`uo;�5�/';��-�"���Rw���1E� �Tw��st�uߢor��(Q���t:'���	"p��;��\��>W�2���.��W�nx��^�nH��n4x7�t����~��ѻA����1xӻ����s�//JQV%'���rEl�>�����D�ԎD��y���*g8��oR�<Is�����tx!�9�E��L�[�V�Wr/Yt�]�lWj>��o�pa��wgĞ�f�K�w��qD"�s�%4p��|����<$�{�G8�:�w~.H��?�l%�e��u����l�J8������F$He16�vtN
`�FUY����E|�؆)���|��b��{&>��RM�3����y����Fn����1�2'��HN֘��H���ǁy{���"�\�|mݱR�#��`z��(���؛�GR箁]��J�����f��?PQ��S^�\���JK ͗B�4.r�:d/}�k�C-#Ǹ��`%Y0U�g�N�zU%�2G"2� Ewzw�T�I����� ��)g���,G��AAѐp�gq�r��G���B$H7g	)S�쐷��#���bݲ�/2�~���HZ$�נlܑgBw�z�`V>KًX�X�vT�+��R��
+���/�7�p�P)��idpxEK#��7��]YM��;�\�cŷk���-e��T6�5^��]�=�xzH�P5:`Yz@ �v�n�w�o�[�I�XΓ�0v,�ƻ�D�+��F�+h�D\��_O ��[�7iИ�Rsr��@~k�%ə���2�=נw ,�[p+XQ��;2�*9M�?���8YؠR���=<�,A����X����J���S�"K�$�1�:����q�'r?�?G�QO<ui���G+kKY�	tQ�HKŠj���V�;Q��8E$�� �)D	�2`�m�5B��|����
��X�_iK�[�I�c�5��Q���D@C�D�g�On{�5cE$c�����I��ăf��S�8�5��Y,:��s��3T��-��_� Y�W��M��!w�ͺZ	q�=4��`��Z�����l���`�o��,��uv*�����t��V��bY!U���F��gk8�.�D�x���q���/>�˄�Ї>�S��E�1���=��"x�um�Ǳ$�۞?��h�	< ���|��J���>I��Y�]�Q^���LixKg�k�-�23.Ԝ�[�R������YU��A"R�JE.@/�>���
��ؘ��M��l��*V6���M/S�X�����M1d;^�_`���/��^�IB���y<K�&6ET����&�n)T\d���쌌E �^|�B����a�;2�	ē�c��mU0D{'���\F����k����`ꒆ��ּn��$�#i�ȸQ�p,!o?�5f��U}|x���ŏj<'N�Ϋ<�;��{���Ӻ��㿵7�1�e��D,�������/�9$��3ࡉ�ȸL�ൣC9��V;2�nA0ի��]G���b~c<K�����{��r/,�X��β��ϗ^������䁆'Ҍ~@�zۦ�;��6� �'��q�T�8@�v�{1��q��nȐS���[�)#�3cc)��w������z����#�,�ۏ�������_���xke��EID�t��k�>�ՍT�L��aQN��9�D�i>
�h���3��st�%|�'qH�#�1����g�pOW&��BS�2��<Zx1��G� V=μ��O�f	Έ�{��c��HO�5$#�AFO�v+%׊mS,�A���'^?0��)^�����c� �A2�O p�D�L��g��)Q�=��GOz&%���q�I3L�&7z�=��:��s����2�������(��('g���.I+����iKLn�~�DVH��c�͛7�����      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �   1  x��ZMk$7=�~E�,��w���7$���g{�������gvZ������x��{�J��$s��������w���a*����������?����g��{��n����η�Og��A�S�Q���g�g��
F�X�ܽ���w�秛w�/���������ӧO����|/���e[�0=�8;�tH[:�����?_���Uh��߾�>������t���;�>L�����_��B�d��Ӭ�Ҿ�Y�S�/2!�������p�z������qZ~=L_����`zxy�����Q��ѫ���'���L#s�7��RI�������[%
�V%��#�SFM�b=-C#D�8�a����PP��%amD�g%a�[�~F
����P��൱e�
F�ܭ� ���c��ԭ�fƠLh����a�@7T	�2hĲ3Br�î�~��T�iwxC%"
Ȯ�c�u�3Z�9�J�( g-�C-���+�-�n�a��8�8���s��'+�%�6a�����7$�u���X�*��R���J��7JD����_�w%eZ=��j�%�;�Ld�  [�}{��:|�F�m#DD�\��c�R	����FTƧF�������p�}��E]�DB���93P����0�LIv�k6P�li�+��,-�ଠ�C�����I��E�@)ů�-,{��iĕ��l>Y�*�P��*s�K$�\g�-����Pڴ��d��eg��W��L$���	���eGy��d|jl�:<�X�m,��nX�a�Z��>�QiZ%
v��ay��E�|��V(*�Pp���;��jfѥ��`Z%
n��a��v2Ԗǈ����e@�H9u���.b%{��+W鼩��
6��ŉ��c���2��-� 
��4(8�X?�c�+��Ej{�zN6Pp�~����q�X�����1p�a�ʤ[S+2ME��x���ƮL��V9XAI��còߙ+�+J�,(�P�q�ӧ[4��MK\m��(`]�v{=ve�������Z�\N=�yq�$d�6ugPDT69AH����	��sB�(x{M!4�`̖�K����T�#�H�����PY�z���WR���(
iP��B,R�#�H���#��r%�r�4(�|=!X��rj�UD!��	��iJ3�F��rl��z�U_��X)�=�j���/�U��u�*����)�X4�tE��B���S�׹�#ڠBW��(�����To�33��n�LD!p�F�X�EC�rĭ�'�Q\?��=qվߗX�@h���B���bm��-�v�m ���K��fo�nF$�5�OW46�gIB:bu4���J�`5�V{u<��BDV2��*\�\��%%
Ѳ��MV�
3��fel�
ѱ���8s�Q'�J^D!zV2�`�ݧ�����X	�X��Ɠ�|���]��P����Ź�?w��uV/����W.������ٖCm�{g��Y�Ȥ�ϞByɂV��[%
I���~�H�R(����@!�ǚ�~�\u��Rn�DD!�ǎ{�s�U/~����@H�f�>S���7fd�Bb�5#�p^��[4���H|���#3��Q�KT~�J;츷?g.[.��qIRҡ��a<t镔S+Z_QH�88Nb�R�m�B�V��Bb��c�~����e%k��"6�W$T�:��N��Bf��
�r����i5��0Q�l��^!]p���5����;�%������FVҠ��bǽ :s�eԮ���@!��n�:�o!�t�wq��Ѧ܃�u���Bf�ݸs�~�᥹�
::2��ƍ�[t����'[(d6W/���ԑ�5�����CB�o �^�<5      �      x��|O��ڳ���wpg/.�f�GQPQA�E� A�O7VUw	ؿӧ�39+�X�I���I��%H����	���Vy�VN ��ft���R��>Ϙ���Қ��2b`b�k&���������������?8�?��/���?�Q,�p�'�wQ�� ��n; ��.�\��蘎|5��鉓7��yXm�ى~D*9�{C��?�\Xúc�.IS��РK��i��;B���`��@�����$�Br{��ʝ��S��1��	U�½�JBձo�D�&)����d����p��'��� �߾�X�Ë���E�0�,p(j�	
�N�$�Gyh�T}J������zST3θc�<I���qK��>�@���߈�i��:�?8�_��d ��n��쫛es�Hƭ8����n�$M#�+���WR�_��0�TbY�K|�6�9
}����J��O��h����� �W�Gl(�V��]���.Z�,u�Y���"�I�ӻ�FMH�do\T����ק�IC���;B��$�}��O��J�fb3S^:��V(��P'�*?�8��|�"�yc-Y�靛Iɦ*�?���h�aQLt�K��C΀�o����ۏ~�~%��FϷ�>��R;�r�M%�K�J��!��j,Ƈ��H�įM0d(���#Ero�����3O��W�}g�� P����t���Õ!G���:Y���LW�}Z��u5�z)�y/���7 E�cg�wAH�=��7�4�'!���nv�B	c�Nf�p�ܑ�Xݔ����Z�g��BI;9�X?��C�⶛�9�VΝ�U�N���{^b���� Htm���/��'耣_y��*�'N����j�*��g+�ˡA,���u�棤��n&&�m����iv�q�'�c�ꏕ/�?VZ��[��#B�Q,���}%�R�KҀO�Tͫ��bE΢���qM4{4�'&z.oae�s&����O��(�q�
Xpo�������e�J����������E��J�nQ�Z[w�'2�Q�tf~�?��G���NLC�&#���Я�p�͵�qUr�O��b	���
R�0�Q&S,jo�����1r��W(�����6�'1�z�^����EY���dz�i^@�|�$W�ڸ�`<�酃��j'�;O+U�<�N`M�ؙ�Ti~��!��C���W�qA����Be����^��'S��YZ�N~�k��(f�40I�2;?��zǟ��b�r7�.Aa��w�_����������q���en%��]A۫�ʧ%f&���&���A9T/u��G�����Q��H������� �'�l�W�D�Tj�z�~�N��$�̓���Yb�YH�+�<ո�f�P��!�)�p�m`�kӍ��3�'��6�}��D�A�u��u9��b\�"	?Ọ	����0����-��=�z��((�����oiC$}�1��#�����z����ž��4;|��N<�;�7ǉ(>�~Q�dΰ6G>�c�4�;?���0��I��a���IE2��'�F��x�X���>P$�x��|������A0�y
��LЅm�Ǘ�{9osB�M��q�� =����I��� g~����1���y�O�,M�����|���ᢾ�1���7]OO;��1S=k�Λ��s��g��;���vz�
���U���˾�!T�PQd0�E�_�@��T;eqN']^�k���E�ܕh�_ƞ6��Y�z�qpzl'2���P�A���v�O'R�k�P�i>���A�{�^[��[:p+�d���Y�z�d���b�z�'j!]�_N�y��Kz�2�*��Ex�l$��j�� uVx����@A'�}ë�s�E<V�P9��6��(.��y���hi��P��W��������*矚_�0t�:��R!�������#=�d#I�k�@R�1lcKD�x�Ǭ,y��>6�,-��!�u��gu���?.y���P��똁���(1t���D��c0@�A_mQ���P9�JΆvx�]�6�{�Q���W�1��u�=�&���p�_c�ߏd���$~R㘶H!���񦿤�N��g;�ߥ�(^��I�H�	�6q;�l�Ѫ/��p���Js�̱,'�ݚ�F^?x7;$ �w���ZX�l7j�	�lj) ������w��p�tXN#mnw��Q�����V>�eBW�*
1����X�#e��N騫�׉�4h$UQIC�nH�d�z������@f-�2߮�[��)��5+��:��[(�}G��α0�������� �8��H��}�>
�şJ�d���m�%�V�Ʀ+c��`�{Ѩ8"�XM\��nI��	Ş`�T��xS䔝�B+������c�4aI��)���:�ޢ�m$�J~�U��l/�	�0��(�đ�sNde�����Ǥ�r �`s�:��?�G?M�:��B�@$����v@��">,����é1:�.+H;����؟���|����^��ĺ��t��-�\���A ��,�D��R?�A�/[vldk�m-C��i��P�=\���b�Y�M��>nv��B;뱒�p|3K�X3�$(��	��[�jR�$ѭE��k���?{mDk��l��?�SDK�s1
��mH���8ϮԢ�
{�@(2���-_��O(j�F�N�)�?q�l�������H�@^=���ё��Ȟ�0}|ZՖu����r�L��:(���wJ�G�x���5��8�o�D	�zǴ�њ���Y2���9�G*�sA�x�BWl��Ƌ�Mfo�v�u9���(��0	�}�ǵ��i�N�yE;�ԇ�V^�������]��M0��r�����0)�E&h�.���㗳G�l9;�/3��G��k��5?�Q�迯O�_o�D�r}a4Ϯ�hv��C����NG��&�.ꩊa.�i���,��,x=�/�ᛜ�:I6�JP}G9��VB�;\.k�����֕.��<�K�Ϊ�6�?�Z}�I*_T�:@m���M*^�M%d�~��g!�ٰ�v@��-�(�k<��s��<.����2@l9g�6�,���q����<���ss�ל�P,)�C��������`S[ ۗn:�В�P���A���T��w�i�ߍ�����09Y�1�]W�%l�&v��'�`���"�W��oN-?m�H�\��2n�Y��Z����7��V~�8�|��8���M��]�y֤��S��$U�5�d'K��?�"��`���)�Nf)�1�����Q�I��}���7�L��D;�˰:���/�߱}ʫ�;�\�{�3���/uF�y���aK�bd�������&�m�&	v�pZ�Sz��$�H�a�id��/]{;��H��I�8!��
�(`~́�l;�����u5�]W EU�Ykv�ٹ�9������)�/������Įޅ�PC���7s��kl��LG��=:���؛pƍP�}^�되_�G���7�D�?�xL56���n�~�^�;�)>��q��s��j	���V���݃��d��ۉYxǻ���xS].u�Ŕ
ܹ��G͌�-x���|H����K3���P�hO�������J�ԧ�t��*�YH�T��8��cr���[3��#Q�xC\���H�%�˩�W��O��X@6))V�t�?'/��"Q:�6��>[�M:���	��#ċmm���H�s�t2�`�)��޺�[E�������,��:���{S~MӞ�.dGj�x�ر�g0߉S�_�ow=�2S����l�]��ʏ��c�m����q��ŝ&;��Ǹj��F���>�တxN�A��D��-}�v~'Mj~=��H�,��p��.��e��VYy�e���X
��d?�:�LU�N��U\e��d��h�o֌�6�
�G�����L���l	�j8u�����是�_OX��W���cy`ݼM$\�sJ;s��@�l�,���?G�.�J�m�"k�F#��&`�N�6�b�q@a�>1"��k$u���k�r������y�gO=uլݽ�9�m�F��c�Wۯh�-�B%�z���8 �  �/i��)
R��W���J�(���2�����G�Λ��G��(�Ĩ����Ɍ=��jI��57�ܛ�	#���K���ڇ�g�+U���d�-.�v�{��G�0Q�gM5�`$�@��7�G����NQ��#�-������AƊ�-�
?��6��ƈ�5�"��,Q�4���݄�s��<�ǉN�=:�Z�\��Pq�e�(�9�.��k��{�2����kb$�#�E�ɉ�W���[�t�-�<Mu%���u�Cl�⟣eꌎ�!ْ�s>���8���*Z����Xn�3����ﵓ�/A�>�\�����I)}�m'Dm��$Y��������	3�	��:����V#�co��j��^��ܭ�����7������}���`���#�Z������DT��OL�N�C��6�W
�y��c�d�I�<Em��%�g�$?�T4�y��iV��|g;`Z�zOn�E��pX��?���2�RE�h��A��|ˏX.�=q��P�P��C�m��!
u� �B�4k_*���V�֍	��m.�;L4<�,��!9I���S&f��`�a���(Dt���'m�$5�`������q&A��H�v���``��\+'� ����<�H�܈������$����lg�DVP�<O�� ?����sa���ST��h��I��e��Kp��d#�Y���u#�t�=
T�s:��̤��$�K��HBVV%m}��,P�C�4�e�6:������p�3N?QWk#�2s1}���k�K9�%���O� ��8�RIz����Fҟ��/[��V)$F�����A\k��h^ �:l�yf,�<v8���MM)q���3���Ar�Ez��h2ۥ�5��z�x�W�k����D�
[�����.b�V7��� ��T=�kh�4��LS���-r-�twܸf	�.m�%�z��K2���i@O����:�>���	sE�oQ�å8�B=ۻ~�T�M)���6�v�sы=��W�oW���V!�]yؓ.��k�^-f�rsyU�1q���+����3����M�_���V| a�4�Ew
/h�@���ͭ�\��]>4)�cI�ć=��	X��y�3e��K�X�!�J��sy�����<L5
i��[�������"����[���N�$�&!v�}�<�׫?Z/C����<:b��v|!�5y��Jfd���6� F�߿G�V��ɺ��E�j����K�8F�_�ƾD��+m�hT.���}rs�@u���d2�IjT�1Ǜm�����BT�NK޶f�Ӻ����P���b�r+���:��4{����R{,
�93�ҿ#��z�G6�1��v6�^�~}�B��[�M��2gS�M��JW�u0Q57�/�Aڇ�R��<� �͝�X��_~����v Ϯ���8�[��WŲ�BK8�*q������|�M~L�ڥ�8�K�`�ӈ�[`�N`��=�O1��;�?�I%�7��mi�-�.s�L-rrN����iWQ��9<��O�4Χ�jc��8�Gw�+&�dP����i"�~�2��4Ic �$��h����>���tb�(O��UԂ/�w����,�g���pk9��ь�b�8V����[�D���7'5Գ�Hb��S�v��v��C����������2آR��4g�5/�w��h�g���s�e�ȱ�Su��o��~�%@g��m�k��jf}p������;��v��y��)��3�kx��!�0C��'�����1moæ=��X���]��s��"0�e���t@����S-��J��.���MN�� mRs���1u��w�k�b�w��T��l'�]�v��V�s6ڜ%r��f���w�%�m}��Z��$�c�K^?���;d�<ޱ���X)�a|ܕ�JE�Ad�����Y>��nFu\�a������}�Mw�S���V�Y���*��
�yTFڱ������f��(���ua�ؔ��D���fJ��=����{�%��4�W�FZ��XWo�c�B�Ľ���[h��&�q���N�Vh�f���6�Ch�˘$���X�\`�R�h��Ye�������r'�Xh^X�{�����Z�t�f6��wSVNW�&[[�t��d^."�4�tm󼓯�c�!��v�7q�`X�d�,l�7�b8`�	5�#˲=h��m���.m�	6���\���F��"�gj���_��s%R��P�&�hk��5�SN"}Y~����xÈa;��w����-����݈�c!����C��27p�L0�>��SXsu��P��u�ɟ��ݺg��P��P���B��BT�j�z�)�U��;�Ա\S�|����Xa��0�w��7��&7�\x�"��Ͱ��|$�+��� �(�����ݳ�:�T8�y���g�oOe��]鮿�e�t�����Һ�w7�>���9�s>���"�b��ޛ"��6�τ�mH$��6'�D��]A�:���ïR\���`�ugzP�\�ߎ*�o�5�N�#5��g�i��b��!C��l�/&7f[��m,ES��W�Z�`��w�"�G����)u�h�_�;��yq�IL59��|E5���^[D�U��y�����&S;�j�{�e.���Q��B��wj0��Y�9��v_�?��.O�G���a��خA�E�[�28��)ׇJ��#�r*�&U��cJCM��Z4���ߌ8������� �K/�yj����L�o�A�����D���L��$��֋�ET
�lg��K���vK��ΦѼQ,���-�����p�m�	
��'�7;<�/h:�ȵo��U̧S9�n�p$s�j���.9�fX�"���R]�K�H�w���yC��<��.�%t�-J�v)|�������Iݎ-���$ǧ��(a���g+�l�In�����o�l��L$�Tr��&�J�y�s���F�ӡT3e��Nl�υ@Ь��_F��W[�YOZZ/��ZYZqg�,�
O9��sb��J�� �dr �Fd�;�7±G+6�����Z A��/�j���8�F_l���&���^G%�2ũ��m�;{c�)�0y(��:�À.ׂe)�y�W���B�w�MuA}]G�l96�̠޿s}��;x������7�\'��X\��]ߦ77	�Ƈ��raN��&=���4���#��c��W(��b8����lѝ���xl,��4��H�H0uZ,w�ɒ[�c<��Ӹy�K�������G;�n=��~g�6q���8A���+�x��`)=`�ks�xŬg��FW��-�t�/�`���K�O3��f��<]���i$N,���%�!�w��9:h�bh���t�%+[_9�0��QyV*&�Q��%"U0�Q��>����gi󹱋"�nu����jr#�8�����5�QO� <���V�����l�z�1�.���0܂�^����͐�4�C�I����u��)tE$���7|jr�QG��z��#���l)�xJ��FN���s6�PsP�@�~j�;�j��\��LQf:6��dg��rei���3�1�Ňx�.��t�g�X�DW�Ύ!=]�	�
�6&Iۨ��6�+�	>�2rAϔ/���'뷜A������/QD����U@��v��!�WQ=��wet���j}����m�(.��ﹸ���q$��{�� 媾|���������
�����/�9�`ahl͋���s�i�s΋cP*�,W�T���-�c~h�5��u�3�Akf�oQt��_�g�BI��~y�6KpsKL��c��d�̄�R�Z�İ$�������"��"��%�ݗ��E|[���_;#Y߬e}��P��D�H~�OvW�n�bs�.E yf�I�2Eo�#�o�6�������E�[o�_|]���'h� �Ctֶ63b:��[O�4a7��P����2�x10�簀����:�z�&�LX���_��o�ԍ�;�l�3Ad���t�U���:
�eᚺ,n�c����&�qs�\���^b�� <��BG��t����`�A���      �   i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�      �      x������ � �      �      x������ � �      �   p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      �      x������ � �      0      x������ � �      �   `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3      �     x��ZMo�H=;��O��va>l37�0C��DCv�2��Z6j���m�S]eC)�B\~��]�z]�:�tz7�e�q8}����n|?ϝ��v��+�s��2����?�����|�u��]��������?:F��'6)�<���o��l�F���<�"�D�I�����ۖ(�97<Z�U��L�w�%���`���wO��S[Te�T�}Uy:%P��=��B-e.��P�#��,���� *Ƿ�O��1���!��*�E�s�&�7�����8��1 Epv��7o��Yļʸ��e$�K�B-�7��C6���q�(]����|�IA�]P�
x���Bg;7���--�<犰P Enǈ�I^V���Z�v-�P�k�y������� &Y�)�#'�IN�{Fԗ2c��u�s�䯰��,��t-�ϗ2:�Y=OQ#j��)��j!��g�7/���,��B�J�Z��1gQ�C>�.����J�U�#[���8�J3��㒫5��!���4�������d��>��^Tȇ:B[������8�������Ne�o����S��zt�C*\�
���I7��Ɯ%��
5��M������~d�+z����!�#��������a���S�b��Jg��4{���a���}��6�tj�
�}��nI�Q_����5 m;��܇�P��5Tl2�|�0�L_Y���'q*2[�T_�I��#�#<��h��4_
�7�J��̄�̸�(*6UQЮ�I	i@|ĀX� �.>lrm�r�R������ڟ�ݬ	T�\+�[�E��O"Z&�*]�BH��C�ӂ���&\dz�2�?FB �nu*�rpR��]R�js���OZ4�hMdP&,�.�=�kt�Ҿ����yL��}U<.x.حܬ�5;���:F��ېOz/߳��óL߅�=����PN������Ɯh�Α����{�]����"b6�vuw>�{|0q>B��} �S{�&(g�ܦQ�o�r�f�f�e���[���n���L����\l�F}��n�t�#�7���BɨXQ�> mL�, ��|J%�uU��+6�	_��H��iK���KZ$���m�.��	��9�����|V����7&^k�|(��EK��8sH�`�c|(���-zC@�� �*Hw�3Й.���� !���J�єzd���Ȁ�T�y�q{[�@!��|�����F��
�$�E ��! ��0~��Z�M��=�"$��2����|[ߪ1�g~Я����=5���a#�مz�Nӟ�8��8MrUE8�N.�2�tB�R��Y{޹�[2�c�b�!Ѷ�=cj�b���'ڈ�����q��U�"���P� 	�	����R)ؽ(T��Y0$���jL�P���<�ْ�����jɥ~-����W�cޮ��ΐ7<+��I�26ł	I�!�޽��֊
���q�]��3���>C`}v0�u��
L���j��(kخ3y�
db ����t��_���a*����cC��      �   �   x�}�1�0����W���r1&c���\]D�,�v鿯C��>>���|����b)U]*.�
��U�ٜ�FW4�<S�Ӳ�ȋ�u�*�}�X-!ml��Ֆ�@�^�6d3��"Zh���ʻ,U����8/떤�'�}��+:���{�@�9^���!��kj|      �   �  x����n� ���)�����m�7�E:��Xn�&���Jy�!M�f$�>���n�wc;����(㘊��@�0V0"��A���?�G�ن�
�fݾ���0k9fP���ŵD�T[��U}���p>L�႞[hh�ׯh@��v�n�������i�)�ڣ�C4K�q��9|]�{�]�y`A�ʨ�?Kc:gm� _��p��Ǖ|����FM~�+�f�,��ⶹ�� L�R_:G�������{��k�.2^Y�R]�/�*���n��W1��RM��4S�F�0mc����фq�����V��{��ӱi�s��H��1%.���\�Z���3y:��)����y�'} :?o�.pI���.$4y;��-��XI	�Nh��1d��no����U�85I��|8,���_�Nuv.Κ.ㆀ%iB�,5���)g��V�%4-�oRU�_W�b      �   �   x�}ұn!���~���Yl�ؓ�K2fK�R�H�S��/K%���?�d�����x���dra�RT�zҙ_����WpZ�:V2�8�JWQ�p_��Q���c�E�C}7��8eS�*F8֟��Bɋ���Ͳ~m��H�$��K_1�G�����i��ĺc-��Wr�ۯ]1þ~,c&(�x��+��Z�a$P�l)}Evp��$�W��LW����v4��PK�+�	�*�=      �   m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�      �   �   x���Kj1еt��6VI��,9F��(Y$=�h�xY�!Y� ��E��#���a%U�#����ލ:LR7��)[SÑ}e�S�v{)a�Q�l�Ѩ���ѩn�!1��d�)F2ݑk���}�ܢ�[:j$��t�m�{л��M~�ߎ�~���2���)��Թ�HU�J9��X�6W����sʟ���%��9      �   �   x����
�0E��+ܥ�y/�`F7AD�c�ږ$E�Ф�oAP:T�ˁ{8���ٔB�y������r�	������B
�m��R���=��pb��W�\ m�@�NkB;�fY���䍇0��0���������\U�*
q͹�ՙW�9T�O�      �   �  x���Mo�0���Wp���Iߪ
-��
�{��E"����.�~î�P��D��536��b(�l�Ŕ�%%���,�',$�ߤ]զ�T�(�.��&r�唤�/�2x��Cw�q�5��i�s�,åH�_���S�sxU�Ä�Lb��"b�xRs�k�s�y3Ɋk	)X�7ev��i4��z:�S�6)��g�w��9}B9lT�^&z�Ue;��C<w�Vj둹$Xr�q�H��4M�JXl�o	J��2��8һ�u�#�q��G�]�ʅ ���X�^�ހ~ڭ~��y�I4�Ko��u1N7�}j�z���)�����^�B�J�3�������=��
{)�t�m2�������'�a�L};C���J�$v�K���{�8�c��`�������S$I4�K����~e��<�Z{      �   o   x�}�A
�0@���)f_�Ʉ�f��u#5)FH�~�W\���๕�(/{��ҷ�ꠁ���c�\0/Ʊ�<X��}����:�J%�K����hz���_ŹG���*`      �   X  x���I�Z1E��*���K��Ed�E~$�|L���=nd�T���o�����r��7®�3ƌ��.�
T?��֩F-ŵ,4hڷPG�M���4d�)����BZ>���sj�e�P�֏,���Z/,3�
�X��x������Be��,Gnd�m�c��Z<
��l�ߠ$�0rfW�P 
e���A6X�Rc֗5�(���5�<z|.�h<
$�nu�G���[�53
�}�e4u�����f
���@o[ʁ2r�v���$�!P
��9҈�ڙc!^%�i�w��SF��jLTW�G�l*�Uf�$騝4���/(P5�V���s���HD^�ͥ@-P����Og�6z���/(0*��9ˉ������Q`2���<�ʨ������ͳգ�I4����rv|,f�ݝ3Ȇ��]���,[����R$M�f��)Pݙ�YM�ύ��ѴhW�zA�y�K�.V�X}�L�����`$�8�ƫ�K^=������փ�V�4./|*�k
���~}$�~���H����A{��q&q; �Xr����5� ���d��ڥEr</���~<%���"뺹D�l�=tTԸ]F9uJ1�4�+
_ ~�|      �   n  x����r7�룧`��g{w'ɶ.�$Z��8��p	s!.ؕD��'�����b9 �'M��3d����\`��z��)�H%*�O�L��eR����ʛF��/����"1,q�����,��q�6p�!:��|v���%��y�;����L;0jM�t��5��Y��㼙&t��_ ��t"�6GTt:��4�Ӿ7�\��9�ڹa`I��� ����
O+z��0���Y�;7��ueC�l,�U"@����q�T�!pۍA.LJѹi;�`�cf�� ���@C����@T�ź��%�;; �TUt�g*T-�{���ar«u�p��o"�L��q�$K��s�hZ��Ԗ���%��х�C79b�d:�b�L~�Kd�f]v�Ւ.��Lz���*��z�p�/�i�������6k�ss=9б�'t�Ɵ�Wy�L�U��F��4���@��'�����W�G�W2TpȒ>Q��4�+�e��v1 �*��V�a�7��[Zg��Y[$t�q+���A?�^�H����Л��|׏����E�I���̷�Џ6<�v	���ٍv��$~��, x�3��|}�|��x]��:��"�=O�[7 �XӥX/Elh�m��������I	��L�0�̯������7Ba}����`��^��2��f��{�m��<eW���~˽�/\�C{�7��)��.�@��Y�|w:
\���V4�����66�J�s8�
��J&����ۄ/d?6c��#U%�)*>��<�J�ס����h������B��WС���x%u"&�qˮ��1�V��xǞ����x�"�	���Oɡ:�3	�����T���偗8d�VK_�s��n�xQ��,.�ݎ4B��j���κ�s�����ʚ���q=�n��ӳI�r.�ت���������8R�0fF�f�4��4�蒕�'<aЂn�{�MI7>V�XчA�@����;.C�q��I���GQ�$�ԍ�20�Cm����D�8��
���xg��E��mq�BD�T��!�]����͗��^��2�sz�q�NE�i�Klb��Ph��SE'#t� ���V�ɹx��]'�\�Y��*�r�PZ�;��"�[ZӅ�V���{Av�[�J�c�@g�4"-�i*�e"��B��F`)�r��2zqHrf���_��6LUѧ�"����N��l�Pd�ݿ}���^ʹ_P��.�%B��xCF!�{�&1�����v6"מ	V�4��\��
kd!S=����o��Ι��_��J{�d*�������ǭ�o�\u�����Yw۳f��m
a���)�<��p���*���8ƌ~��3q_vx�8pF7��E
 c����.�/���?�}:�/)��C����G��������3,�H�`�맯8��.�$;a@EG�=�Č^��ӷ�JT:��ӱ3O_����2���?�f��pY��w! �Տ��\�;�8z<�&�ڳz��)4��$���We�eZ����Ҟ��jq9Pf45<>}�s�2�Mzr�V��ؒ���8�kY�~]���#��������_�k�Z�R\+ ���byr��ғő+���'S{\NT"e{hָ<�ݸV�`,�k��boo�@�v         `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�           x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�         G  x��\ˮ$G]����GSʈ|�$�
��z3KX����Y�|D�T��xd���ddF��d��)������/&|��I�a�yN�7�?�y��^~S���?�hdu���(��=���wy�L�{bzx�pn�V�wD���61M����|�}���q��:b�����<e?�z�9F���-&;��s�B�����iN�7�g(>n�fv�i��'��ٲ��zf�������3��q��qdV�[��l��p<V[Eo�v�o�cq^��9��3�(>�f�`�s*c��E�Hs��0��wN3���4�I|ț�9�3��S�f���%F�Ʀ�:f=�3O�����¡ŉ%n}�=#}I�Pms�B^��F�<g�c�����|E��}���W��x5#z3����s�����-fD�@
3��{��Co1#z�3{T�ш�/bW����d|2�'V����jf")r���9QǬ��lF��9�#,��4��k���/x��ƻ$��Fub�c��ُ�gFT��ѻ���bF�L���uy�Ǧ�!:��緙���K-�,�z�U�ň^�6��n�p^T���e�e1�Wr
s��s��:z�fD��D�2�+U�7��*z�fįtD2�rj��u]�Ϝ����"~eW3˩�+g6�w�:zk����F�N�"X�9:�3��f'������'�Ct���S�3aP�0/�;���gV�;�������@�pb]k�	(���J���J��l$?(IB��J7��N�w�N�6,}�C�Hs�M~���efn�K��ڜc�U���뙽,�73է����\sl�ݚ}!��YEoyv 3�n�6�ICq�'Nkdy޻Vowp.�75׵����°�*z�b�A�~��M�Gc�8�~�U��{D/6#���vf��XG�0K�
q��T�~��#�#1/��-@�F�<M�A�3��篟�����O.�4�����A&��%�7�����̮f>E�e���"<�V{��P�����h����]��o�8�b�X���Х��[��e��39�	�=��c���(S-{MigP�yt�H���z+�L��&�9l���e�$��;V�RKXsǪ����X)�~u8 "dX<�:*s7����lj����1}�?��r�<K9�`n�r���A~���WS�|1C3��gc�nj���4�t�r.|�O���W�\�*q��}���з����K0ȱm�8E�&M�W�{G���s�r�z5\ԡ��)G��.A����YSru��57�r�57��XJ��c��YG�Td�Є�25����T�ָ���	����z���뱙��f}�]-D-\�轥�I��2~hԦs���I��~�Ě�)-��+��4�u�e�s��a�����Mv��?���@��a�Z�go�쫣����4�D.���?��o���_�?~��n���J����8w�Q�S9�S�Q3�m�[���~��?��>���2���~d>�Ԫ?/������̱�!5,Qz�h���Q���r���~*�ߕ�]�]�9��[����Av�{~��ù�ڰ�����v��Y�}m��ev�\$�*�����yBܶ��먽&l�\�g5Zt����
P�A�Ni�V��Z��:�p��x�?U���_�.71EC45}�� m����$�|)�۫���`9�s�^�X�Ҙ�N]��g|Z؃�-e|��)
�iJ�R���=�Ҳ@N����R�����Ϋ��\�.����i�)����o%M\w�'�ٌ�:q�.�b���d�^S�6�B���8��HN:u.%�?"��>vC�t�hɳmڦR�8��b���i�����6A��NJ2�#yB<��+*�ry��e���m�ܿBi�h]j�轿fp�ݛ+4���9C���#�0j*ˮ'�}���#*�$��Q��g�S�J��%J����_��R��q�l�*1�(���>/� �H�Ȓ�نxi2J�E����� V�>ƗVϘ��5Eʍ3��R�諓U����aaf׍��ҵk}�~�ٯ�f_k8��6]Ӕ�N+
�~�u4\Xi��0*�����ڢyI�����+���h�N%0��Df�$LU����~�T�՟�v�}s�Q6��ݩ�P�\�غvVZD�pT ��T޲9;H�*�<������ۈ�W�jӞ����� ��W#�\1��r)�.%��Sѫq��H	�W�XJW�:�\��U��e�$�B�$����e�n�~Q��Be����B°�*�>1����T���N.��ы�����
�0l�a��u�Թ�����|��b��9J��5�~}P&E�+O�l.���F��^�JQ��w�`���L�Ŵ}�����x»\̄�b�M�B��\5�Yޯ5q6Q'^��^Duċll�~��V�hC�\qE6ɍ�ڜ�$�ֻ��}y�<�Y���#|�t��^QY=I�s^WY{�W�{*#I�8�����	}#��غ���r��I����u^[������2	�I��΁�\����܈�s�ߙ��b����Fy+���9��6b�afZ��3�=�	ڰ�B+�	���	{�6��:;���QŢ��� �����K�i�m�	3��7��
����#	H5:$�I�nAӈd�x𷳷�"ۙ����Q^X�y�N��������|��_��G�~�o_���V=|>�7-��J��&g���7�o��C�"43٣���7=�#U��9�ԇ�E���m1z5�ۆj)���?��]��-�*�3��`�s�:ڪ�l.��\�f�	(�Ғ�xt�C�D��Z���ؽ>0�U3����E��Y����jRG��E�C5C�ž&^u1�Oh��PG�㗾��(W�J���.r����\������;=w�R�a�����\9N��s���/}���	�����ۖǏfv�e������\�Ӌ '�VD�[E�7J;���f$7s�����0����RG1;��c�*�>Dh��m��(��>k�}D��[�Wҥ:�f�~}W��Y'M�����з�A��М�e\�E�s6�~5���^=I���<�c^uAt@/�˺�^��xM?)k�و�+��궖_�M�� -m��i��CR{_y��y9��AU�/ɹ�m�ZI�:�\������.��ɞ��A�#��������/��I�|��2`y���8�<j�u6Cǲ�f����!R7������PN�ҡ�ߡ�ϥ���Lhy�c��f��Q��}�c}J���Zf�[@/�!ϲ��Q���>�P�@�I�g�ӡ�צ,5mH�=$ ���}9iɕI�AC��M�?xTV'�1?W�Tu��R�lhk)ܺ�rV�BX�K�`
VYv�,B���������Ҿ��,�6�o}���(��ٓ李�Ϸ�������}V��         "  x��X�r�F=����Q�/8ي;����S�ŗ�	���� i����v�R���	���~�@X�ȗ��Y�/�ᔓWYY��H��RViM~T�U���}�K��x���)+�쐝�������{�)n�'\,�]2�`:�,U6�R�BU*h+��RfR�QOx;(�&|G��U�cA>��(�UJ*k%��P~>w��JX�ts<����6R��)>��J��$�v@� RD��|:��mk�"�����ki�h*D�L�8s�V��.��\��5Y���ZM��3��+m��R3��2&�Pf�K�EcL�B���Fh�T���D
;
�o��g\p0���|��xت��G$M�L��5F!:��.�Ñ�~O����]c~����>�e~ �Cs*2p	Ї6��IiP�h"G>�'�h!6/������0f��� �Ƈ<Z��5��r�8S�=<C���R6���/p����~�I[/F#�(��'i�&,�X�z&��&^YtFx�{��=���\��$��	Mc)jA�qI��rz���[��������6c���p�����&�X��S�����n�b������]P�*�R��nR��W� �/�=^܇��ㅤ#b�O��s{҆2�v�������L�Q*0"��0J��:�N���
�:y�1e�f\)t��S���o>�$ڀ[��3���AQ�*�J���+�(��S�� j�%���)��~��I[x&z�7�S�o�;m��l}��Z(�E�L���"F�`9g���p r;7X�3Cx������M/�=���%��~7�NYl�(�7���j��b��" �K�p~�s����D�cU��������|��1ց���	t�|��G"���c@�9�m�PVȁ���ظ��oo-h���]�ڧh����&�2u*al�bT���٢1!� ���2���P<-m�,�À�� G�'�n��{m���}���3h�ݐ���6c�t]�����	2K��n���K���B-%��!��`����.�p6����	gK�5~���� L�y �=��@fX��_����\9���6+�^V��ݮi!�\��')85%��	К6P�hh6apV=$n�)f	�ϡ���D�H��\p�dw���k'�m�p�=Ў�B�0t ��@���c	 ־g�^���[H*&���wp�:Fq�D�u^��`���'ϊ����a{N�j�Ƥa�L`��+�d4N�R�?�m^�����.���@XHz�c=M�R��X,z���|�;V8e����&A+�paҮ�����t3}��pD-����ϸQg4�2q��f��o���]B��5@W��QQ�L���CV�cW��@HR����Y��{�4���YV?	Q��h�h��!,vAi՟�*xE',�]l�j�e{_���ੂ6Q���E=rl�ئ����o<�E��������v'�6=�Ae���MwR��.T�&N�I��4�d�z����c8���20����w/�4*���N����Ҁ��]����XQ��l7�!�͆���Iq
I��ѱYo����T���v���F��$� �b	�G �]�#yu�`ݜI�������Dr-(z�Y����uJ� c�t�i\�Q�֭?�z���: *� ��xf�Mxt�2��x�ƞr�򔮦`x�>4>��
���PS�.����n!�v���@S�x�����P#<�w<��u�u{���.$��jT�$Gq�'��P�*F��Kruu��֚R      	   �  x���K����=�B�@ߏ�s� @�F���I��a/��sNu�~���d�X�n�Ūb������˒K_��/K�1}��o�B~Ă/r��/���Q�v���>E����ۏ߾��>�>|v1u2�;$����)�iH�B|$|�K� �jA��K� -����%�����?|����p���y�^�,���������8�>p{���ɕ1�Y��Bz��H����)�5m����vB�������.�;uG�t�JYRH����O!<B���ȳ�j�J_�+;0�x��J���#v��+; ��|�#>� ��Ԣ���a�� ��ۤ�F�XQ��ƕq#b��jǺ��z璗��b�.[ ��?Jq�\�j����k��R�d�-�G��v��������ۙr�b�o������88�|7W!s:2>nu��i�lu�-�K��YM�q�!���� SU�������:@��r����5߇�sv��fC&Մ�ձ��[?9�O2Ly��RϦca�J�Ԗӕ
����s��9p��z�!�j%�T�n!��uKE�6��sMN9�5^A!��9�Ѫ	���a�� i�Å\Pi�M�8#.�de<bƲ��n�$�Ŀ��Df��)�Pʋ�[�v�?�D>�Ed�|B�#����A�q�	^�*|V�#���0R(n�z�ܪ2�Z1$V�#��O{���Lk̋�y�\ʒ[U���o��i�!���^���O|L�Gt�G�"jBI��N������9Si7�#�W7R����2P �s@<��$(zJ�?`�#�!j8�l�Tb'/�n!\��Ve�����{����6DK��Ư�O��¹�R;�Z&Kl����B�̀ԎYz���5�D֙�2�$`+FN�,�đ�ӶW�>W5m�z�d�F�Y��f�q�$�lP������ɞM,�$uh{�fO|�a�gA'�r��L.��[� ���![`o� 2}9�(�83����w*��ٱ�lD^�ws�0P����j�3�T�Ӆ��׾�~f�0m�ط���0��[]c�/�IdE�����W�O�	Q��.%��Z@��6���[��E/����g�X��F��c<O��fL���`D���yo1�z0�0�	灜MƬ�&��1�41R)6cRFF��u.�=W�z0�0���e��7s5�;#�~U?�`����j�`�~�>�@e��ڈ�z0V��b���r���Y=�ˣ�//c֐�#~Xs�՝�e=;@�Fe�d�b͕V������XOD}nI,L�tQ�K~�%�:�Z�x�8*�#��0(Z=�Gm)�ӥM����T��&�Kʗmu��CF� c��$j͚Vwh�g������\[�e�V1�����뗟�g,�KB��'�9���Z�Δ�>��˵�lʤ�����a� ���eY��[p���c�J���
��N}�H\���^Tt��l�:L�-2Cu�U9N`-�Ie)�`˰������y��HT,�؜I�pd��WBܖF1Bg�G#�q��İ���T ��zĳ���0�g�-�eV�cb���;�rl5Y��v�Q�0��rɻ�祱�UWT�f����`��<U�w�>sHt5�r���08�4N�rgS��G@�*��J�ܠ�|�gL�.ѻ���1�ݖ8~Ųt�Wk�©�)rt@J)�r;f����X�`�l�T^UiTc���KT ���A\�^\
�o��o�6l�����$�)E2�'HH}����,r�kH�!9�K&��q,4�AϤ[�K�,�aӫ�x�8�z����ܧ�>D�s��Ǒ�msf�D����s6�	�'z�fVH�r�=]�9�π�¸Tע�g�ztBي	M"'�̾�g
S��q(cU���k/� Y>)���.��U�t��F��V��j�8U�`KwKuf��olV�1���Όx�,{|�H"��Q�V���nJ����8s���muf��<e�Sm.��9�͏h�1�;�ga<��nm�:UJ�(��q�t,�Όv�[w��NcX���y�����<o8�%���λn�:1�s[��*x������܅q����N.:��^dmŚMȬ�*�j�%�r���a�����b0�8'�*��n+#��>���7C�I��P�FJ�'a��u��Nd+�FM��nu���w�x+�#� �WF��,����@�ד��2�y�ϯZl�|2+�
�-��s�F���C��������nU�+H*s��i�t�-��4s��x}�}�Y��fPO����SʹV!���왛U�Ө�lj����s����ӎ�v��ζ�,#& #O�~���2.c�Zf'����\�*"����"dė!c}yZ��]�
��4��`X=�9�PrԌm�E�I�A�`'BBy���4u�ٕ��oUE�BB�`;[��Żf���U���*ؑ���p���Ȃ�XQ^��fU����4��K�*�"&(R�r��e�UE�BB�H(
�acA��w��"�5��S�I�Tg�X�B�`�U��JV1X��qÚT�b ��"�'��DӤ��WN&iVIf#�ĺ���_�j$�J�g��:�U֚?�A�U�f5����Q#$?��T���S��"�$�	>��:b�Q���xk洪�s��Q�Z��mp(H�֤i�h�mF����-��R�[��U9���%��d͕V�����r��O�?En�4y�7T4U��_�J��U�3U�_��̣��?Z�Y�%+��SU,��[�_����bؑ�5d@oƅ0�G�M���㰱F����}Z��+k���a��J|�^�'�$��KwTO\����r>���%C<�U �CD�!�W���� 뒠RȒU[[���/	�mɌW��df�*��˂R!���Dӄ�g.��~�2��d�mo0�q�b@�nTGM��>b?�{�����(D���۶̪B�щ����"�7{efuF$�#զ`���7��e��MU1���ѳB��w٫]i�
�X&Vx��Nm�c��H�5XLu�)���fͨ�[��_��0U���Մ�U�|���-Ӫ���(dJwY'SU�c��Ə۱�N�۰OmCfU9Y��1�LG��C��QE��1.�����a�_}K�����}DY����Ӷ~wĴWˏ�z��r����\]5[�B�!����
�VU��ϙ-��e��[�c�H�*�0O�-��;o��'�r=Y	E�*9����Λރ%���U�p�n�.�*�I@=�%�=��1��E�5z&i��(���)�ƫ|\y��BY�J�zڜ��6o�o��|Ԧ������:�3��Jlvԧ=�	�|��@��j�}�V*	j ��3��(�:�c'sH��o�2U��j!9��YŤ���	\kV9MT�ҳ�U$�b��� �uY+���F6�TS�PYAҦ�����T�\>{^X�7r�{<�Y���EBv�:��z]Apq?�x2bǳ�
�V��I�y�«uz�����)*�8D�wϮ�r�x��>A$c�R�w�:c���{{{�?��dF      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`           x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�            x������ � �         �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����         ?  x���oo�6�_��B��CI�,��?M�5�Wg0�-36��()������8iy"� ����IG��Fd��W����nHC�0N�E�8��}����I��~����Ҙ�u�/�V�*�����ŜE�F���F��JT| ��c�&d~h�_3'h���Q�������$x{��-���]�,�=k��P�f�5�~ufJ�L�(��L��e�=ԅ7��(����"����j��2�aYN�]�S d0��א�,���V�Jm�T��QZ<���|��>��kQ|ܱ���|���QH��A����ZH���\�<xo*v����WL��alʈ��1t�r�[X|
ޞ+Y7�-��*S��)l�)9W�}�1���L-D_��i��}=~J.X�,{kF.�l�ֹ��m�F�����nG�	QR�5�#|��)'�-�FiT����'�U۵�c�&�#�!9�B��پp��Vo�4�^�?v�d+ڽ�X|�����"�M0J�=Y������:{A�ʙ��8~�Qju��G'M���6��l8;���&tosT�l��3�A�r�o��.����Ӧ�'��De2�ZN��=(�*�ѬX��&ن�I��Q�[�uZPg �^���B4����}�*3��6J��i�W����Sz�^h���J������5�����Yrd&�� -G_��tfogFnԚk	f�N��/4���n�~Ԍ���)[��hޏ-9Y0�?�T���?+y�t�p��;�H�j��$>#�cq�ũ�T���PͲQ��=;,�����&%d����0���W�Q��Q���ϖU�9��.��Yn�~Պjm&���d�4�Ȳ��?���ܜ,��¹a+����J��-�_��&͍�I�2�(M��;��x�"r�a�j,��T��:A�b�4��VY��$�Zȵpb�vl�q��ߕ���`̎�ꡍ�4�㯛v��ڽ��,0a�ȕ����
��it�00�xg!Y�R�}��3�0馠h�t�3s�9�⦤�/V��IK�?
�j�tv�F����J�n�������:X\]�|��ev:}9a��(�ep��#3*UE�	���:���a��^�GuOtf<��T��@����]�0��
�q��	i,���X3o4���-��iׂ���J���lJ��/*1ǹ��Rc�4K�e���a�<�Y�	p���n&�<6J��\~�%8�wW�D��ǚ+�w�=���F��ʆ/-ϣ�b�l�8���<�U��7/dL�V@��8^�)��L�7wKr�b��Gi��8�_x��8����|�V"1y�4ya����/�����7��V��랇���Q����oL��a�-�c:.��I�7��>�[|�1죴�Q���Ez��'f����'0!��=�걆�բ�9����QZ�9cu��n|,s�If�"8��߹������9�!��}�p|l,&7�u��5&�}��j���A����|}���b�G��V�z��
�h��;�a��5��B�+K�c��7_�u@����,�)�n�~j�L�����ǁ�d��51K(����w�A��)��onD�[>t reE����Ξ���U%�����I.8� ��*��'lN�`"��|ZǮD_D}o�y]�J���z��+�<Be7��F�i�ޚ��y��P����>��@?�P��Q��9�U%y��[Y�/�{M�\�b�˺�:t��hJ���#|�Qv��7�P�Q�7{�U���x	ͥP������KB�Zh��"4S���"��2x����M.���/Q��8$�������%�g6I�kɋ(�wB)��WO�      �      x������ � �      +   �  x��VM��6=S�b�	j��Ǎ��6c�2$�m�\8��I��;Ԯ�X���8C��{�fސ��#�q�?�?Wd}��$_����k<V�L�)3S���L�L)���v#��G���%%�$��Z<�,��M��"�@{)�W�>���T��k*c9
:��A�]�i�S�M<:��A�=��e��4棠����8��n�R��ez=����q�{�L��Z�$)���v�gZP��8� ��E�kS4�뼝��v�P��l4���VK�@^sX��7[�5��k�2�����px��}��()���2~U���MR|@J�������k_�~�0$�x�-).���"z����O�qT �s��&�RȾm�Rf��Lرe9CX�,�O$T]�>��$���34~=��l�_{#+��mM69v��B3d���@�T�/�DS�}�Q%3�$>�v�]�!�~	�8_8;�'$x3���	���7�S޸�p~>�fc�ڸ�V������a�ɬ��	��(���[ �Y;SPL�����gn@}W� �,���F� Τ�Y����@����?�����k_�7[o�9��ܲ@O�D�����%%���2�F���X�ȭ��/aQweuһE%�(^�n��|S�մ��[i{aQV�aW�f0�v����(_�n~E�Ip��4�?��!��o�sO��ÅL��Z�W��4�����J�Ji({��!�8���r��� yn�;y���lk��[��������������WW����[�Oln��q�9��᧡������bv&d'ɢx��T$&ݢ;o�\���}Y�0����=���?93�O�s�\�Ra�OGn�>���)3�(;���~�*����"�lU7e�>����W�XL�6Dѯ#����re��T�<OT�M�J�����FQ���_         �  x��\˒ݶ]S_q��A�����Q�l�,��l�ۊF��IIJ��9��C�b��}F��~wtr��|�v��嗿^c������ק�<���#����ǅ�ܲ�[��b^�-�:�`���W[�!�g����?�_7���o@A����>_K-���>�������˟��B�WJWGƖ��6^(��h��/O��B�&�@��?����񹕟�\�]��uM�GM�"�o�5d��ɏ��� ��ES:_ш7�klؽ���ʻ�BBL{!�_���b\��?��W�L���Ò*�Pn��`!�z8R5�����h�v��޴�Ll��i�4���j|�*w��=/�m\�t�5��g/�ivkobh���0X��Nv�q���g׈i�-��2=-9M�'�K_L�
{����׆d٥:8��z�dN��nh`�u6�^�/���t�
r1�_11�s���ďK&z�ɈKq3
��ࠦ��QQ�OK���0p1��L��&���!����*��a)� �n�P�&Y��\��� �e!g��?���IJ�q8ޥN��y\-��t���yT��U�:co%��k��j^JG9�ۥ΄�J�j�&�6��(�a*yďrK�?�=���e�T�d�v˃s�:��'���(�"�q؁!H^�OE֍-����.�ǴNH�%vy�ܢ���������&
p���umW��l^t��̛����mPV?�Ǎ�
������M���U����~�}V�|���&��P�GF�㼷2$	�dJ

�2?�����3�	��z:���i�q'v#���W��P�G'���J��^ܡSﴣ���=�%쉶�S�����IE��%�k�}�Ayi����G^r�vK�_Am	��2h)wm�^�ȵ��a�GZ*���oO$�S%�Z��1�Mt�`�9���&��_EYI�;��LbV�c�e~��Rk��4��ĳ-HP��	�IY�z��tطNe�$�=���__l����a}��I]�xÀ������	o���m]�S�&*5o����6&�m<�1��w�k��ø���G7��+]�RQ�G�f2.�,N���N��(W<�|܏qM�2ݢ,x�)�e+��޲�ݟ~���g�c�|QqY"��\/��i�A�v�����Ѭ֖_E��ף�!q������Gu�3:�1;�HwT5g�=�oP�H�)��s"�nr*zFjP�~���2�N����a�_Z��d�F`��ߢ�8$��_�&ה��k��3����i�?W��;�DN�oPޢ��8;�&.��n�vUYEy��0^s@ò�C����vL:��H�a�#�2{x�'���G?L��߾|���oR �B�===���ڏ�-���+�j����}����d"��	��YOx�8Ǽ�d����2?� ������E�����q�w�ʞR�m��2?�X��� â}#c}��UQ�G/g�������ի�=����q�3�a[L�O��v�:��ȣi�3]�&Lj��3�� B*M�g��88u��@�-xg������Z_ݣ���4�E�D,hT0�k��Q�B�RH���h���������a��ǧ�?uC[�����ȋȶ~Z9�s	���:��o������'Π���e� /��k0���֓˪٬�t���������Eے8�n���<�m�Kd��-k��Ɛ�*OE��������9�HqW�>�����%�_�yH�Q�6���6���]�ۻBs�jō��mt-���� �թՙ"L�m[�S���<q`P_��cl�IG�֞81 �<!�(E$�V�:����đ��!K3�F�
2;|�)�<h�myJ��u���:L���"�"1�z,��(����쉗[����r�))��r�~�U�}�_�z/Q��tk�o�2?rT樍�7~<b���U����;3��5,/Q�4�)����x�f�5��g۞w�(�;�θ@�,`����q�p?C��g<�o�0���d��_��p<�>�=�Wƾ	������ҫ(���@��v�!Jű��.c��2��|��41����]�!�D�U0}�b��P�f΍H��G�^L;��^1HoBJ� �7��dߕ!H�Y�c��&UT^ �D7�SH+���2(zT i�kBA2� �w3���" ���jG���®�yed���w6�?��[�d���uJ�r���Z���n鷕��ڴu_AE@��!�������w_��]#�����7�Q�YY����D���[e��a��A�Ѷ�h|�g��L�/#��A���ڗQQ�����݇[��"��Y�L�����D�/�:���<[Ļ���B�͓�z~�82�!��u\���'}L|*�r��0�ŕ�� g���QG����GK��;>r
���ޠ" j_�$�����3��I�c�:�!�pO� �/�+���-��~z2v�^��R�<��[!�U�<�7�����ĹR��[��S��" >	�N�n(K�=*.�֊�Tn-K�[8�Z��Q�b1�+�(x���^Т" =dw>+E��'z��A�� 4y�����MPk�.�AE 
�h����^��:�!�Fc��K��9�蠸PJ�W���$N(G0��y���4�i���D��3B�m���@Q���g���6m�)*Ϗ�9��=�XW�����:�R���6���!ض��Q�����čSdjZ�3T���.��ҔZ+�x���" int�gO!W���w�� ���ś#��g�@�ݼ9R�� ��tT �M4�{
T+�v�:*��F'�{���W�IР" �"OڝC�?QQ�� D��,zG�A�?��]�VQ���_]�?R��u7mQ�H]��S�_ڜ�i�� D�萸��&����� Dr��dN8�db����QܞB�`�np�Q�H7�/U�8��ZEE "y�4�)�?�A�� D򸣸S�i<�����@$�k2S�ոH��u].RQ�� �4:��S�@*�A��"�����������j��\�K>&UYos>u�x��u�q�_9j�K�� ��3��~� ��KG1�\��}V�+j�S1
�P(����I(���쭧�k�f]t�� <����,w���ષ��@=:"�Q�?}��**�CO�&+-k9���X��L1��>�/G�$�vjz�3T��o.�bDB�m�.g�4�M�0^��v@��[���� 7�8�g�]��]��L,M����t*"�K{ݶO|y���HE�I���AV���u��"��E��� ��N%啂?��]�}%�h�;ܕP9ե��(�y�~ܢ��t�)��-*�I�T�	E )ݶ3�C~������:��P������K�������?�PךG�� ����e����|�7tB�}ĳ{R.����XhQy����[�,��" �:q޶R���l?˨����S�(m_�b�Z�@����H><�|8�٠GE 򑟍f���Ͳ�4��G���vR{���x�Q /����)��V$�-*�E�O7V��]���8�
�����_���+��V�Hy���+��I��?C茬�" )/LyQ�>���ZT���Eq��ޮ8��o�_�Q	���_c�Rj̼�:��N���Pl_cK�ķ���#��Olao6���͖��5�"�&�ڶA�Q�p݁�SHF��T=*�;�Ū�Н$k��#�'6�w��]n*�z�7o޼��Ma         >  x��Z[��6��Vq����^^DW�et�(� >�-Bq��Q��#g$�-EY��{�wѨ������?�U���f����lW��F�ĥ8����H�4oQ�2_yFhYJ�$۟X��ѥ�g�յ��bKi��e��U\<74�/U�<���-iπ�\yFh��T� ���A��ʉ��b�+��Z��_oT{<	y���"Q�D�i�R]�˕hG-n��,G�}_�x ����Qi�����%��}sTm[�0Ѡ�E����U�ݵv�����y��T{���-�X�2�� yi��#����E�9I��<e�|D	������|��Viz!�A���D{Dp�k�|%�AQ�E�D����Ѡ���,��b��%5M�*�,�K�`�eʷ,�Р����K�L�wjc�3$���}g|�s��|"zBH�c"��֘��E�+���K���W�L5��7�x_⻻��T��}{F��tH���5��nh0Uz�¯����g4�F-�����Ͱ����h �Z3)�>�Y�1]� �^��M���c���ݶ��`D_m�XZ�}�����Fh�"��[ۭ�u��n��`�[�������цD4��Ә	�,mM햤���kmo�^�Lg4 C�w��:�y���!�:�Au�f��{͍Ѐ��&� D'0 ?�dă>o���<W0 ;����g׸9�a��hdG�����=�>�z}�!�Mw/y/�V��V��dȾ���Ҳ�x�K�݈Fh@�,ڐ��غ&�:�����",h��$}��Dy�z����`�[�|�ɶr1���}�t��������`JLxjBA�1��5+��	��q���N`H<e���{��ƜD74����dy�K[z@C��ՓТ�h���$�ݧt?�!��ڕ���}��Uw��'4�"�"TIK�A�*���K%� C��Ǯ�Om�J���6DC���A�M~�Ү�5J�Qv���"!4�y$wU�hfHpB�I�4� �$O)�hn�R�O�U{dU?M� bU/�y�	�|��꧉��ʪ~��+�U����+��h��!G��%�t�ڕ�_�Y쁆ڕ�|h��+�ld{�Mх'{��^��4T([x�Ne�#BSt�:Z"�����h��*�8@@	`�1�};G�Ms��։L=&ʤԷ�������
Y&Z�J�N��Ӻx�{�Ԗ>hC�f��J]@��d(�3��*�C8�{�oGU��
p��J[�ѽ��tG<~��ki���8�$N�v1�';�$>�5��L*%o*��>��'
�q4`bw��L��m�z�]19�N�.����i����u�^sT��.�����κf�̝����YA�E�j���BU�����9�

�Mӑ%GD�:�q��	]��9P�����t9�
��p&�����!�����i�|Ѐû?�L�jN��P��`۔r�� B�(��I":����^�4��} S��\�w�8����c���I��
�9�rt�KM����&�n�] ZJ�qg� �$�fg]�[����'�w����u���c��uS�NI��~���c�L��.b��F���U���/��g�&�̩Y��	#�#��Z9>x����~�Ƥ��<�q�^��D��������2�q�ɹ�Ly�e/|ҝ�8����_�爉~����(0]q	1�/'��8�qs�*�ji��N�;7x!C�if��f|`���n&��<[o���m��L��wΨt����N2�xL�3�������w����)/��l��
�-�D8wFED�{̴�!"�Af�������3��������牾����5�����            x�����u���ǿ�B���T����g��#���؂� ��T������$@Ы��&Y,V�[%���G��������Bo)`nϯ��R�9ԟ��+ԯ���~�������]l�#F�'#:��+����(��ND��G�J������׿�㗿���L�\�?X�_��'.~�����W.O*�ú��:eV'���j󪓾byB�:J��«CjE(!Ԕ_ŗ�S�)����Rxj�kQ�G�Ѣ,s-��n�W��ϣڹ�oU_�$�/��̏O�g�< N�F�C�?b�h�"�Ԡ������_����N�����cE�WjT���M+]MB*�7-7��`�̦U>��c��C�����������?<���]�6~8~!|���(G�V�f���Z�!#�������W�bӣ�UW]�K�����=��������Wi���1	`��z�-`!������G�^���/b@$��cy�6�<�w�!��&Vq �Ӆ�'�۫N1�v�b���X�[��*b�QۻJ4
`%!��h��޸�P4�/��O�b@��	IX^�5ky��� ԇ<�cyV]U��h��)6e �6Z��ؚ�����~ЀJ������I��G�1������׿��i�~���s�J��A�����A��[�PKϿU��ګ���m��f�����6��%(����c�&�
��5)���I�a�$ֆ�R�W���lӣ��q_m�Djf��D�I�b��J]�4�Y!B��,6ˤ�1Ҡ����,������� �X=t�B��HA�h���2��*�1�X]Gb�E*N�� ��������O�ި��M���5/�p�s�μ̅u��S�d�$!&I�N���rl��;�T�d `TQ�R��+��N\C޲���sn�<bJL2�9�3j�0��5�p�(��EC(�����Į:.�۠���E��B���Щ���)�2���i�s�9z9�L� ��B�j�Տ�R����BR�W�(Qu���(Ң�y{.2�?�(	��/�(ymV������.�~�I4�W�n.q�Y�[��d�up�_V�����f���:m�C���j!/Hѯo(j O�?؍�wՅ���Sd����"q��p *u������SV)'w2�<��f��P�m�e�J�x���o�xф�'u�$�7��D!�%��.�}>����e�i:�&,�"���氹4V@z���VgQ9^}��3d=d�b=�Q pZ��+�Q��+Tr�^�R~������_��O�%�W97�_��P��ݱ�NG�-H����s-���5LM}$�ex
㸄e�h�(ڐf���k��Ώ~�߈T��P�(	����M��)0��0z�&��ͪ��.B�"	"�S�WH]mV�<q����-(|�9�Kl��f�aT�f��X"{Y4OY
�2F���
�U!�E8A� �@6�G�����$�TX�ʂ)�h,�,�i)��f�>BU�d���~T��2��*	T
X�%��.���� \�̱F�u��e���׸"����x1�PD��@�͌'��5J��a��M��l�W]�<�M����*�۹������jugt�$���	b�J�,\uqes6�˥��sR
����7�V��H��q�h�?����i��dE9�Q*�4b=&@�y��ҷ*sspN���_����M�)���� ��4r^2����$�k�y/��ޝ��^hc-&q����*C�:V��q����}c�H~<�'���rUc56��i�8�)���"WT��VU�m��I�	���.�rQ�}��,-�(�&�9��+A5�jki���/�ÿ������o��U����mA�ʝ�)8�)^
ޠ�L��L�q���E��.�DQ~Lѐ��T�"xl]��FuHF��t)RtA4?CMm���*g�P*搬�PiV
/,[�]Z{ю�%+O��"'EI�Z;�$/m
UUf�MH�֡p�b`�TS/W]6���e��k��5�x!�)�?�
�T+���AQ.Gքf��U*Q�B+��vdџ�����b�U�$ᅄđ�2���Xi��]%Ui���P��<�l�T)��E�-��(:������\OhO�l�#JR?�Du�ݐ*�:�=w�Q��\)�cJ��M]���RHK�@SR��:',ނ��E��y*FQ�O�	b4%RE]��5����&�7��KT���XyK���Յ�.����(�*C�I�u�����
�&�z���ܤ�=�Kko����l9�u?���� �t�*w6Pg�9J�r� �|??�(;;�H��IWtR7�,�4}�7C:��:Y���̦�̈�J�<E� o��˲hFHUmV��fE#�X;��!jې�<��hC�Md�ɩ������rn��A5u(UM�:���7�v
_�м�������f�m�֡So�.��φK�!t�d�2�� �S���x�7I}T�|�6F�	�7�v��?nQU��H-���H�/i7F���R�l<���~��̦�gU���MԘZ��&*'�4������.�-#�T�$U^���In��Qe��oH��'��Dz���e�{�9[ �O!�k��+��)8i�c������J5��z�������*˓M�!U�U��ℛ��A��J��n���x(D������J��P��A�Ca�ʤ*��.���|��*䘈���p�5S�1S9)}F�eK��L�ƚb��D��yd��� pA1$�b�����ˊ.I�5�v�4+B�H�����OZjU�7����\������u����D9]5PH��>��{RxR��� �U�B�[�"�N�<J)Fh:d��4��T������-&*)�H���p��"�H�'�J�{��T��L�kn��� �y�4��JYF8�WU����1{(WL�E9;M|�	�C}T��GT�
�<�ws�^(9�R��(Ue�*4�S�Pd��k�u\� T��b1��|� ��W'*3B�56� PJ]���Ey*�����𲱻�P��Q�BPKJ����J)q�� ����d4����B#@F��L��g03�T��G�6D�У��q����V�D�F�F��W+�q���ZU�v�X8�=;��J/����S{�RW����*Q��Ui݉O����*h�
��X��x�<����QU��%.�I�ض_�,ގ���Z�x�AJ��9�����Z�ċ��5MW]��)��n��+eV���|�5ޮ,DS+�v���Ef߬,[�U���U&���*G�'}�U�[-�(&;3#�;%%G����9���Z��P�1)*�wi�)�+]4����:Qy,�e'; ZP)�5����4Q��f��#�>�Z����q�L�_�q�PńE��@9a P���o�)W����`US�I�(�J<Ԋ�dŚ�~���[((�����z�Ӫ�P(IM��a<O�rПd��TU�c��ͪ�wi�L$��X�dn�j����ɂ��g���؞F8
#�
��u�ZZ](��rQ=�J4���'<�xV���Q�3E��9ȼڏPmg%�)�g�U�w���!ŷ��$[-��MLz+�W�M�kd0v���|N�d�i����4nٖ�9���;�q쪋���բ�(�W誋����\|X
k.�$�C�s�T��MV/g�^kr�I��[}�Q��K��qg�GP|����*k�Ǘ��RH)�@�8��t�K�>�wP�爾!�r�H},��RJ],��C�(���cQ�M��'�s��:��X�)�+ƆNA3��*�{���`E�I()����Yj���,�2fi�],M��Q�3I~2��t&Y�몓��o�e��J�o+��-�gd>p���
�`�U9�����~baB�_k\59��R�ŷ|@ǃ��\e����	�*��:��������iv_������=G;��8@�X��G��V�.#��E���`�e�=��QU��o��/Vs�񷦆qk7���q�4�#��PL��q?&����ݫ��iٯ�RU8��1ЭX    r%{v�:��5���Hǧb�Rٱ�.�RS`wv��
�J��ǧC��4�
$0^�U�xʈQ��҃����O���[�ê�1	3���H�|*�Rf��B!�<� 󩑣AC��9XAʸ�"�Q)oP�����e��=����R��~��fI{�QX��u�V[�S�<���r ���k>1��U��*K�FQ�}(|�]�����ڌ>�j�^�Z6%vՅ������萀�yy��Q�$]<�X���Pc�'��~Z]�W�(����8�C���7~?j�(���R���07�F���Px��E�N��m����3�$��(��%�v��QU�*>����U�NB�iw[/$$x*���Յj��������{���Յ��

�).�
�d�M #T�P�{E����.*o�S��W�xk@F5�Gap�+�.��Y M��xÊ�C�p�PKU����b�+Qn���0��rG�P�D�yw���Wi�v�������W:��j�P�����Ukci�{��S��3��bգ�
QGѣ0~,3�ma�΂SE~uū�����mU�^
gT�($&m��J�f;BU��&T��6�Ƌ�e���[+�.T��(w�� T��ys�P��H�����p�����Z�U�bc�6U�P�	'�wՅ�7T
\-U�h�o��D�"y��3�Yظ\����P��b����da�"R<4�R�$�o�m�r@�c0�T�B�N~$/Wyg|��I�'.����JJX��S8���7�VU���#�^�p���9�*��\N�oU���Ee^�㻹v��U�^Q�'}����.T����,d�՜Ӫ�~C�D���B�x۲��Z�n	���)	�	�,��a����B��� ]'��0�q��Z����$�z�0|�ݑ��*�Wʅ=?t�@�|�G��
����&�q����o�ɽP�_��vwO�(.���Ʈ[��~���l7Va߮O�Ґ_r�F򦫏*�0����Xt�����j6K1�:Y��!w`��ۑ5�������H�J�)d�GY��G����P��'k�$<7�)R��$�QeȎ��$B�L��몔9R���*�.�L�ܵbuޭ��*������b-sw'b�?Ͷ�|E��{����4�u"̯W�3�u�u�쌮w���e�peU
o�Za����0>���E�u�4����I]�tg�$OL���l���G���NȜY9:��,-�W�(��u@�B�4fi��q�n��I�E3�0�-۹Vou�ʝ5�!�Y��w:��b�+����y�]Do[S�2O-���HyQ��8�u���9��~^?�)2�#�5o��ƃG߅Q����� :�L�q2,~��_�j�⺯.������ܾJ���p`MUU+�:ɹ�V�:��e�|~X<���.j>N&"�mR+VY.��ۇ��Xp�<��:*����}��Q�Eb9oiUN���+�ˇ��Pe�'u�.7�]Xxe�&��z�S⑟����6]_Ѣ2�v��@����^�>����e,T�f,�0�U+�a���2�j5�ӛg�V]�x�,b�sn�Һٌ֪4�v>w�]/�[ߥU��P��h�
��?��&���:C�U9E���f��#���Z�U�A�Yb�T����'u�ʵ^�Vq��i|́�7(����rp�z�.B�!w��faݳB�.��gLV9W��;�BUw��z����E��z�'�⺾2�զX���ͨx�C��a�R
�����b����b�32�&]��F��<}J3���N���� ��!ۯ��ۆ4肱wO\$��*M���EWP���9��	�!�z� ��5_1H��]u�.1͆��5�s_��<��X�	�P�Sw��8�}+��b�e�S���"vq~#ju���U�Q3��Ux��QU+������2�ߊ<�3���f�_�`v�b~  Te�xc��a��ت��� ��K--����j2�Yc7�m�ͪg���]u��wH��j����xC����S��D�JK$���:�V��p��iԍ�Vo���[�(`�7n�+�զ`}�<�`�jn����ɉ�|uu%�9��ib��K��j@#o��o���l�U1j�[��J@=l�~:��fm��+VF�|�-���h\�9�[U.8��r��o��	H]u���17J�V*v��2��<���Y}�|�1ΎF^y�F��s�U����b�6ș��s|��Y��ʡ�j��QZ��{ѯU��O�Ṏ�!�j�4>���w/�oRUN�m������0ͩF���㐪��������2R\/N�U��c)J;�Y۰@��9�6��!<٬���f�ن�q��;�U�J��J���w2Mń��#�+��$O�����yzz�^�W7,O��!��-��Vq��*����یq�X���U�C,�=��iw�.��nֈq�{���QdⰀo�<�d}��Y3�q&��=���p���j�����a���$���t��DZ�;L�6*gE�Y�[R��J��LvqT�E�.���KTy�*��SŔ�{l��T�K�_�c��#?WkVp����>�g��2u����Dq|
����|u����7L�������#�@��&�Hg���,��Z��L�+T]�i��Kd��w��<�V�!U�_xcq4���UZۄ������P��^<T�OJ�Zp��!���F�FF�5����oI�ĥ�FWo��W��=�=��h=�����ʋn(%#�a�ϒ��b&˷ZUt�!G)�EYa^�͆�d!*7�9j�/^QЦr��G��L� U]�|�8�,B��<��W?"�k�&/�R�d96��)������U�̩�B����)���O�&/#nT;׋PPjV�X��ot�Y����(�V2���#Nx�y�U,�+�����|V��C�*;���+� �2#n��lC�IU�bN7VI�%я�����{��YǙ�X�����e�ІU�!��"���R�=S���bǩ�XHIXT�fi�A��e*Vݬ�\ɬ봆X�C��	6��n�s~|�:���4~Z$=ŬHU���.���j�E�5���>��Tr��F���<VG'̶�Tպ\<rr��G0����w��V��/OܨxE���y��1�\��ꆥ+�ү�;��Ǉ#_�7a��nX��Z�I�m�8/͚���a�ٙ�K^"�.��{�ɦ{��ax4{bQ�"&��� J��zWݬr�{�a��!������WL�V��XBj�cWx	4���W7�x` �4xƈ��v�~ʹ�a���?��+��͏"��#��`�1)�:%��o�4���ų1R�Z�8���N|���g��Y�l���K���gC�x#�v�RU����Ai�L�90�����^�����?FLsg�a|�Ь��ꆝ��{RS�*��Rɸ|��z�+��K�
ǻ���V5�y��,�dY#���������� �5�4�<X���݌����8��u|���<b�_�'����U-��K�Q�?�"2����n��r7�\��̷�"X/�-��g[䒛Q�p.��[4&-l�V�|KZ�V�+���&�*a����A�bZQ��fp��u�o�}����Z45{�*�/xe����q��%���Vu�ʅ�C����c�x�X�TGu��y��q��`edAr��nX0�S+���X�|J��Z��U����f� ��.n~2�W���`��<�gV�/��k��Ջ9FU��^��N�:%��lVqq<Fk��U��t^6JX���g��**�Q/� � S��l�x��e?���:u�x�e~�ȅy7��,����)��ޏ||����Q7�rVu�����z&g��� (��/��ǵ�ƯS0�~7�K����ߨ72��b�Uy;���0���b�k���U�qT7lڇ�E�a�v�.�g�ˬ�[qm�9��k-���Oq������2�n؊��3M+9��}���� 8���n�1f�ȭ�/�~[����`1]&T]�c$�,�iX=[d���G-Qw�y]��'�(9��ae٤�ު�S8�.�BL���x���#��m�(X<�э��'K�`X�<�L��ò�f�+��Ŕ}V�KE'�[ �  ܤ|%�E�݌.O�$������$~Tݺ(�j�Yh�����	�����7�6�)���M��WX���ͺ��Rit�0 ��Qsy��n�m�*��)�5/I7�D�դP����	KqP��ˇ*M�&T���o,�b�Y����2>�r�ƬN�,z&ϟW�P)�f���JV���Eߥ�0.st�^Zݬ|��G��|��f#DWݰ�&�2G���g��C�ꆝc_�A(%D66��U7��a|@Ƴ�\Ƨ�I���l~��C�>fN�I�
�c�$���}W7j|�΋�^,]�Oi^Zu�ή#Qb��d��8)��M�&T�Z�d]Kd��W F�酨�0������-�5>�zb�ō:�͌�@���>���;.5���4N�Q�|�8�n#l�*ϑ�[U�8FE=��U�8�y��Y�Y�P<V_� c���a�*��֪^��(To��;���Y}w`)����.۪�|��	Ƨ�������a�1F�8N�80>P_����f̷Q�{�h��>UAc6٠�U7�85`M�I�)�%��~�iu�΋Sk�y��5�hw#\u�.4Ð?���*�]��s�Uť�2A�w�h�`�۪�ԌJݰ�Ɂ�ʩx}���?���d�����@>++��:��X�Z}��Ј��I���K�����2c�H��"�	�����&��:f�>�76�(|(h����� �a�aP��ä�8�(Ue�|�����Z��?p�."��˩�ChF�Mx����C�j9 ��>�Z��H��Ή3�"o���h>hT5��8�=�Zj�X�^���U
�9qfKh���S�D=��u��B+�c�k{��_J],<g���!�,������f�3gf5�����|1���Q�*���6�0�䃹��1.����ݛf����:�����X"�֊a���=�G�,8�Cb5ʜs�+�p�M|U=��8֋R>0l��#oͯ�Vu�ڙE�y����,��n�K�jC�WV����w��犋��,�$JAϔ��!�W8�W+�nV��(���o@�~�ڨ�K���I����k�͚��n�et��C�z,>}HAR4S��n�qZ�aˠ������P�跡V7o,JUr����vh�u���Y����S��T5_�53�'n��gP̦�*l�O�L(��Y����l���:��f�W��?��3��J)�)�wtͥ��%NB�S��Z������<M��:FU���ʢ��U���c���T]�ta�s,ٰ�HB�~.ƨ�u��m���*�JHޤ��U7��5j�R�e�``y�;'T���kT��B;��W�($��Vݬ�ר����a���g���n��oT��#t�����a힗��f]b�:��u[/~J��smު�u�5"��� Q��| `XX;t��j�h#��c�I�,����I�7�k	r+j�f������fM�����U^B��]Ns�T�j�l�
k��<�8|҃IR\u��˔8@��ZM�ݷ���+,&����<VcF��nX�����<_�)����nX��x�4�7�HJ�z��IGJ��Ʒ�ٹ���~e����vi�PN�9�.XwX��b��=˷�W���,����
_ݬ�
��E)�jݛ����b���[���"��ʼ���6�?���>����LďBh_�ƹ��L�Ĥ��axlEb޺�X�,��(Tͺx���A��qqi,!קdӊB����&�)(-vɲ����f��ꆱ���~�06��G���������w����}D�
         r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@         j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$            x��}ms�8��g̯��{�ְ @�2�$��N��d��ڪ-Z�%�z[RR����4H�|hM9�$����	N�F��F��K��̊�M�L[��'���4_��%��Ji�C���_{&B�ƿF�G<��*�Q�Bu��H�RT���Q�ˈU`.��Ls��f�u��7�"ma2��X�؉��*�	��BŁP���'m�Iͯ_�f�f��"{����������#�_y2��Ev���	��5TLKd.�b�;+���E��Z������b� �fyX�y��v��Q*)�0M�	�.�,$��b�D c�[H���'5�L�����"]��sZ�wl?+��:h����∋0�:U�[B�Թ��ds�K��\�i�<f���`�݌�RU��Q�k��pLB����'u"�4������6I�B���[ձ.P~%2	⤿��R���㜳�|�o������Ve��n���|�����NV�$80�	t"z:OR��R�Vy�Ry	�n��2=6���O-�Қ�R�n�����I��/iS���tJ��g=��*��6���2g�i�����������$i���vC���B� ��9��	͡��n��%�}���CZ<��-x�C���,qh���*bZb%/��`-�H\(���&�QE�.��t3O7)&�;&���W��r���~*�-�S_H�Ic���:w��I!�\��o�~�[خzlϙ�%<�G�0zN�̯Ӛ\(,[(�z�����H\�֜	�X���a��nGi>���/��(a�I!�H�QH�:I0�N���}@�>���]����ՇS�/�K�gG���
I�E�x�ܧ��T]_Ն�c�?�7�;af#���w��N���i�1x�ˁD+	��^A�m�f�{���R��'���C��I���j�\<E��ɺ��QDL�c'����4As`n���)�s%�����R#H�׶��d_��R'���a�)���R%�QZ�g a($�k��R$�႓���k/���7���?Y��7G��²���=mv
�FG�!��g�Lh!�6Ư$P��qJ�p���bW�aC.�j��>�Ј�b+�����,MQ�&�`��-UUd�B��(-�����-��o����7�B��	uͪ��.A�����bJh����2qn�:?_f�7�	p
O04�4]�G��rJ��R3���m����O�"hs�w����{��:��a���뗧`�ǖm���+�����І^"0*郳R^q�ur2a�[d�����x�n{�P�2R2����B�`MQ���i=aޓ�@T!3�}lA\���8���[K�����9]}���(�����|��$D�×��G�S3Al.�)u��H�8��l~��_,��k��ӏ4�ښ O�:�H�D6u�W������,���<�^�Y�BDW:��;�՗:��T���&��o�ǲ�p@��<�MI�A���8�N�:˕a����>eoV���-8�>q�S�lTڤ?��� ���C�����2L<ذ�(�?����+������=��fE<�f���{�E�,#[�:a=�-ء:Ab}��z�a2�C(�1�V�L)Ѓ��qJ�Kc)C�^/�p�j)��C[�,˃s��������R7�aB$���Z�+�o�ǱP;P���iLDQ"��5AC����ٟ�1�4�tW�?�5��,yӐ�:[(�L��$��n@Ш�{Bɇ&!��$���:���R7a�LG}
���nu(;<Ϫv�����B��sDĆ�\�s:�]NyIr�-'P[�Sb��Nw��B��������pl��(��Q,�[�Dl���<����XGUp�h:�������)����'u+�S$�J����>�;t˟x'��M~�ҭ���9�}p�;u���?�Ƈn���e�ԍj�4󞅠c
�M�T6@[�d���-u#����|�:�PJ��73�h{�v�b_�F�(K:��U��� گ`��
 T���tK�^Gc+���)�eO���:@h,oe۟%��|r!���O)?F<1��5����v��Ձ��nߡ�ƺ!��9e�B��+����Q��9e	P�����1k�=���H��pzR7L��N�*4���~2�~�G�}R7 �A���dub���s5\D'�T���	�R7�(��~��뫜sZ=!x���(�}aF�>E:Jz��'uc�S�Sg�5�s��Pq /� 4���ġп]��I�fL!)-��:䔺�z�ܷlH���iP:V�4��Sꄤ.���b�]尕)+�am?wO�BpM��$҆�GX�R��%c9�y{
F�DH�GXt��c��o����P���娃����t�}{��bBg��h�Ŏ�:0����X.v��|�(�Y�[:a�=Hq!UB�P�qj��Ɔ~4C&��k�h�aPA����)�����`������;S	�\��E|>�l���|!(�$E�a���è3�������]���ݷ��2��}�įҀ&v.Cau�s�^m�u�K{`�?j:I�M��3�����7�|YkbA��"�/;�F ����pQ�����-u�b���_vDiiI\G�%��s�zF�sD{���-�g��xq�G�#R��!�Ml�U�Q���:ekz�-3��)ݑI���f����e�K=�@��~8��Y�k@��"�V�b���I�H�I�4�J[Ǎ[��R*�����o){���ǌ�術��~���oI����0�z���DD�*����ͬ�Z���ŤU��zLEM�}���z��h�>����h쪇���=Ǥ�M�}w��z0��h9H�ݧФ��.kG!�T����)��kVF�X`0-w��e��8���mG�)50�N���G�O��}a1U�Ջ�RկqH��e}.�z �1�"���[M��c�E*Ev�=>���yf
"2/�r���܄���}V�����FUg��өf��l@�Bό��X,ޞJ��J��zv�zc�*[$vY�K�Acnl�4)g�yQ��Z��Հ`;��ӱ%H�
�k�z �����1]��2��J���s�hu��)}&AX:(@���S�{n��S�uJ�{�QVoPY��mW�ɩ[�A[n�-������ه�q��ː�OB#V�58_�ԃ�h��S����uw�T�ь4��u���� �^���M��~͊�hr%O��Ti�\)
'5xZR��KQx�`0R&w_��}OO��+Xlۙ�$l~�@Y_+��p0[N��%��=q�h�Gd ��g%G��H� 4z��R&�B�}�|M�[u*�6�ꇛ�������?t�J=h`%i�+��y������%Sؘ"���N���8eܥ�NP}��d��u�Ʋ��&_��gI|�;9��B�k&�)��rbS'%-X���5kTM�.Z�G��C�H�2M9�G��l���{5�px������*�?v�J=plZ��3¡4���K�!��8�M���nT���ͩP���~�#\X�?��8h��)M�A,e�S�҆xr`��>X�ˬ�F�O',n3e���`Gwg�'���sd�XE٩C�j,t�֨j\A�W&���P�AEef��Kՠ(-��i��Q8P��	N8}��$���@.�:k^ۇW��]�b'!ޘ�%u�ѫ~�J=����oTZ���SV�$Z),Z�Ppi��o��RH�M��iP�%K���b��*�O��X\^��e(uC������y�Z�l�ݔ�ꘕ�m�j�6T��k�#M�SƲ��)�`��y���i�a�y:;=����
u��ܕߒ�i)�<	� �o�[������Ƥ��kW�Q�7����G�b�!a_s�|�Y��b��`��(�x�K"������}{e-e��:�U}�6q��U}r�)�y��ֹǀ� ;��:V&��H�����S=4��BX���)nA��[�T�n6�$�Ua����%ن,)RR6�(��ܫ/Dw�c�WIӜ��*���R�Jb#�&���H^l�(+��rbu]1��J����    �]�7"�`�J�Oz0uO�JFϠ�I�=�a�_����ip#�����,gUu/Y�����8�$q��I=�]��\��gP�t.c�FՓzP�3E���2T�4~{\C)0#=sՓzV�K��s�G"�dɔ���'�#R7$���|�9�C,���r �s��R*X0���E��l����^�<K|�G0��@r`c���8cM?��v�œT\X���S�S���� ���T����+JYՁȚ>S$�?
�6G2�.~8
Z�S�,�Np}�gVa��I���l�t��3T�=�H�#9s��N��u�Jݨ�u��U�
��cf���/(���W�=�ojiD����uK=S�/Ź�l>K�\�îQZ�3YI]�)��O�S��_)>��K��Z��(rTA�����`XE9p-`�U|���	!pL�G�n�l�8�'\Ź�A%u55���zp�m����.�:�g֑�h`���qJ=��8��b_���,�'u[��f�ȜR����&�;��9��{U5�m�����)����R���'T����NSeTܐS�/����o��`����r�'��u	�����-�@��QN�J7ņ�"�&��Ԛ� 1���ԃ	V^��r��Hk�5���Ln��;���qnxLT�z'��#�2�e3�0��z��t�L�r����~�ƍm�x�B5�zP�p��̳t�]���l�:a�7On��&��C��W-�j��.�[ͤ��H��ƍ�6ؓk��nT�l�eZtX���{ze4�����.��T;���;�P����(hӹ�d'�R�k��z*T�;(}sJ=�`0cwbd��ըjPI�w`�2K�b'х�σC=���-�@�N�pĪ�/�J��)����ֈU�x�wtJ=#&kĄ"�X̆S�Ѹ##«��IpJ=#�3"����vWy������N"w!k_�1�[#V����)����v��:��~ �zF�[����趈�zF�[��E�!=s	=�@[=GZf�{o�a۩��#� ��6;mx'�S��.�?GFXh���K=��;�әR���c��l�u`\�ƄhBg�s����d{�)N9C#��	�ԉ)���ך䟪�6M������*P���xs�z�O�Ԣ�*U�پ�l�Gi{�ũ0�bw�O���:�T�B��5I{���<-O1A�V8Ft4fb_h)�;B�SS8�@��Ή�C�HF�c��d+v���ٚ�݇C��nZ��]�(���K#R7�i�)<��l~���(���s�Xqz#&ZS�s����`N�G�#����]n��6c��a����XIA�X�Z�v8�~(�����E�"�0��#R�jс���m�����������]}���Tݾ�.�X�O��5d�K��?m�MME���i$c����q��Pe���mq��\��>���>Ո�V��v
�}<N�g�'�{��e�F��~ϊM��g%���vO�����C�#t#P���-�C�_�B`�a�D�S��N��vh���>2�Գ����+1�%��4	��z����o�٪de[���K���������S���sg���fn�a�Cd�wrJ=�먩���_6���}跒�����(�ҭ�=�G���iiS�L'].]��J[�������@�$ ��s��0_��jF���o�tJ=�o�c�!/��Z���;"N�X=�踿��Rl8��r	��^?]����y&[�B]/b��J=��ﴡ.��.��'L�c4�yLQ<����e�����i���4���#J��h
&�Cw�R�EҰH���>d�K���R�O qqXo.�n!����r�ǡԃ侃&����2Aű��y�-�	����ԳB��8bww�/�����j
��4+@�U��[�z0@s1�M�̆���Û �U j�0�j#Ώ���rJ=�4�_yw`��5�W�+��9�lP$���u!|ԅ�CK�5b��oC�|m���8��D|������Ğ ���GuO������V��
�g�R�V��"�S�K��:MIUu�_��`<���'β��Z�*!�-orz凫I⩢�W3�?��ueMW.�n�s�,1��_N��7�TTF��J��z�M7�B����Ӟ"�T�17�3IU�85�Uq�t+��R�#u7T�X����v�n�j論Nje��\9)r=����Ё
���
L�w�Y�7`�ۇ�$)���4"�#ګΦ[�����H�c[�<N�WL�����of�۫W���mW�l��4��l�8Ѯƅ��Zt�b��::�n?%%"��#�:����Q	S��5O��f��8۾������)��F��8����.�V=�Se��T�W&hS��r���1c:gWy�3��y'�aǱ�]�l:�T�eQ���-u�s���}�S�zjk��M��l�[�ږ���N��`{�]g�k,����؏��O�4�D?����+e��JZ&�D�]HUZ]{���ѩ�m���Ԝc�`�#U�a��>����4_�$!�ڄ�.�3}��"$\B�rb�
�Fm�֪X�_�y@�6�k�U"���HC�gA��b��j���-V�*O{L�#t�Ѐ��#�Z8�7���.Qŀ�~pY/:��{�7�%5�WN���/T�����nr���~q/�|A��N�8�v͛�N�n�G.�0�z,1v����vkAg�i��WsDt��K��,OC*U����zt��U&�r_������Y�M��|UJ��AR�)���8CVl��y�����n��b��`����s�������>��!���YZ���e�wn���7��v?HpK=P�-��0�3�+����=�Co>0���!5MX���KН�o>��M�H�(�-�`���B��fG�ώ�ͫb50�N�����BTA��hLQe������NJ�~r�-� �	B��w j7Rh ��6���^����'� ����s�d{��UӮ�խ1�ک �LQ_�A��z�����s�FV����}f�AB-�x����P0�Q��]��s���H횩��
�#2P�9W�9XU{G=p!N��5"C����M��˄�~�r�����.C0�z �n��[H����LZ���TEH���k<�[��R7,�����L�xs����{6���^}z7�f�|���m6�����<`��M�?��J�b"�۬8�e������&T���݄]"���9��|��PX�$b7�~���y�e�h��z杻�_�pWSX���H�-���3N$�#�g�6ۖ�t��b=k3(��p��:B�l`�̉b�羚��L�߳�������)�p\���{��VӰ���>����sK��@�$fL��ys�o�Ln߽��t�az�/(򽝽�G�<QR���.D��z3m�ɗb��M7'32/�:u�߭��ZzC�.�~�[�7�vy\M1mX]�ۻ�>]��I\׳Y��ۤ��	'lg�8n��9HC5s�������N�3X�QE�Y�%�Oz�)�f�#�������u�,�f��1�2�����"-�9����>�딊H�w�е�.U�z���5��7��]" ����6����;VO��~���}�!V+�Λ^u��1	w�`]��n"�r^����*�ev���� ��M���3Y䰊�*MLo&Ø�A�8Gw����]� *�0��^_�Lه?�^�������7״m~���c��������SPE�;�D��A9��ICi̦�����f���ŤnS��rMm���]L8⇘n֞�n4q�� v��Խ�zPS�}��;=��W��lۮ�1�t�����Q�7�"��d$6�UL>i��c_��.�^\�|�o���\B�ó�P����6��f	��f��H�����6E�ol�l>A֯�?޳���{y<��a�l�����;�U��Vk!�;��;j�GM4��eL:G��j;�qa�7�Ws|�k�����Έ�������u�Г�.oŁt,�WW������]����\n:WI�a��u   fts��R��<����eN^�^�m;PtTگ�$Z�D$�<d��a���5�����?]�������~z=�L.�Ln?����lu��Kj��;��6:��Q��|7b�b�����t�ZG%[�F�'Bݪ��ʄJ��v�ݱ�]D) 1	@���R%%{M��B^�nNa�&��D?LD�|��c��;�sa�%X�o����]f����G����걕X�����?j2�[���
��)*��.[�3�"�bҊ"�﷭�ؖi��X�m��t%�δ� �(�:H�z����e��?tw�22I����qG	�x��$�KMY�~�n�l��f��ۖ�nyL4�V���v���h~.��������}���l��4��} ��lU���V1:��u���gS{��&��|(6�C�"ReFK�ۮ����a��W2 1:���E��^a*��W�{kYһ���������9s����c���=_��v2e���BK�.6�j�]=�+�`�T^�'�D��ĝ�6������b�n'��	�=��Q���>�{���)��U�?���k��r�i�� ��o��/�
�����Y���_o��U��}
��X�5���
�"�@�։�Xo0��y��W��Y��T_��lN�Z����e>�q��蟄����0ܰ��CZ��yY���ǻ�,�r3�?'����rz��� p���� ���tE7��s��Dr-�R���T:��闿���^���O65P�;
�U�m�)��Wf�A#�4���_�5#��7Mm]=I�)
TBsNF��6���=���Y��eZ�A�s8V�I���)I\��g{A�(0e1�������m���>�e�B�!�@g�3�ƻ�R}���Λ�}T�v���+*r?Ψ����]KC/��=��ve��}L�'w��D��_�)a�ٔ�f�RA�n��u>=Ǘ��5�0��sq���1�%�𿟧������؂�L�q�O�yV�`�ٲ�E���}��Ƈ�	v|�����on߱�w~�8e�F��|�-��t�c��5uH���n۩����lS�U�WG�v01�n��lKԼ���<l��<������a�}��~�^߼���+W�<�@8��W�l������z%�9G]����0%C�O���>��?����I��eOH�(���π'GWx�G5S�Lʁ0� 3L)��Z���}�p�䭕�,�I��K���5��X٫2���	{�D$�ʨ:�~�U_ D�׳�ʴ!��ß��_>�Ғ�-�?`�C��]��a��-1�I��Z`]I�z���8���x<�՘J��������&�͛�o�^ H�ٲv��;��9�~��c�ѽ�L�����n��U���CA�*jm^�0�Ȟ�Ň N��R,�1�Ϛ�����mQ��Vw��|?�ј�"�0:o�F��3W0���S�e�v<2"�ٲtM�����J�%�D�t{Xgپ
��f��N��fx�������{�Q�Q<�<@Vgȷ��2k���C`�b�e���`��6=����k;�".
W6�����tk���xO�x�������s�,��¡]��÷���ص}�3�g��&�A�\o������r���*��̓]��:�OX�F�������`��XUI��B��t_�̲� G�n�&���>�c�$&ü��}I7Gx�t
UE{����ܫM2LYi�n��s�2�C�>�ނ!���e�����#������,6���!e_�U�c��q_c��!�e�H�O�w
��p^�hv�]¾�W�E�;�[A_����A��=�X~�A�F V�ه"���#}Y>��e�0���/;"�o�J���&�y����V�٬�l
�
��b/	�4����es��m}��������<:3f|QLFG�!�k��V(o�æd�����M*~���,H/:���)��Y�����d;�Λ���B��}O���90G7�8��4Ѵ]�>��제�f=�%��yA��B1��*�r	#���n�P�M��J�BN�Cd�2`jt��U�G��U%W�ǔb�t?a%&�_�If,�L{ދ�sC.L���G[M��)�Z�eԈ�~�}M�������ta��?oӻ���(��ֳE�0[�� ~T��J���^T!��i�����v���ܰ+��h�+&�����N�Y�dï$���_tv!��k�S�A��N��nԽ�0!����/����e�e,�j�����7�����}�'�xBod>ڨ���*���-(��{R�������.DǸ��j�c.uʡ+�7p��� �}���a�������y:�G�O�s����4[t��;��åE�	U����l���_��J�����v���z�7� <9�����uڌYq(H�������Щ��J�y5�/+3Ąi�~����/����on��חon�l��﷛W��@ ��r�����JǠ�q�n��s��(��?��|d�m�|�ܲo�8���],vs�i��Sϓ$��f�no�i��T'H�Ci��As^3
Ut��03�	�3A�BP��-E(���'��tI|��T� �5Q$�;�zQ�
EC��[֪T��U�p��{�Ng�¨	�����1�:�SEq�~L��ɟ%]KD�G_���UL$�c�#�/��2QN�-�L ��wpI<���^͊���/�W�	������tI�5�7�^u�O�w!��М��^*�s:��}t>6�MMR�O�(d��3�>o۾,P���h}(;[��xR�_
X�n����3TTx��a��&>�|�Q����?��ͧ�TdS�����HT�(Bu�~Y�«���y���ۢ:��ݫ��Jl��P�"1�]�{Q��P��b��]��U�H��p��������^� 0�Lm#��K[�A��1c�|����n;����P�2��8s�^rԁ���k^�OJ/g0��/��z�-S������`B�:��Jm�=��G٥��2Z�W���(�P�<8���q�������	H��]��i�4�yg/���Ƀ˺=m�×t]f�,�aslT������`��ek@��ݫ-�P����S�pfF�E!��������_^]O&������7�S��|�xXo��TQi��X)s���Q�+�����������>����su%s�����t������m�`����D��X��FQ��Gع��{�O�}��Ɲ�jxم����f�>����yA�(D�Ҙ8:�����F��Zl�ӫj;8���sE4�2��"�d�玿M���/�����#�            x������ � �      !      x��\K�+�����V���"�
<~+���,�:*�t��G���"_R��(�Q����
�W�Ey���xp/���%	�S����`1<�<���˴�J�W����Џ^�h���G-Qy~r=znф��G����C�%�|pL>������T���ޗM(�����ӂ�ۓ�"τRN����b�N>S:Z���C)�E�H:��]"�R�GKәӜ�!��KdP�����\"~�v�R|�;J�<�<b���[�e���R����M��,O���IGJ�=:["EV��z�fw�E)�G�>��M>J����T£��n�_�u?c{J�Wޅ�@��G�QVS����,��RI��̱���T��d�<�
�&<b����g��KeP��(�j��n	W8�Y%�(	d��;QW8�tp��EI ����# \�D��۷�4v���G*SD�Pȑ�^��p�����G���&R�H�y(��8)���ܩ1�=|����<&8�h�H):LJ�<Kn��K���1���mM�_�0�CJ7krQ����{,9m������4�����.[4jAtI�ô"�.���z�%(;�8o��(��iGMՌ��;&gQ���sv�&���y�T��s�rrQB��<�`Zu��!N硄j+�<-�԰f��(]��܊ebj#�"�j�IJ(�b�r���5%���N_硄9.�շ��jR��皊��?��m�����JM=7LLM%����[&%-pR�L)�9㐓arQj�@J�U`,��K�G6^�@�i��3UVJ��O��Pj [��Q(fZ��RC�cq��(�
��u��@�uEU���}��R��q_P�|d9�ZU�(�D��`���q�x�>Qy(�H�b��i��#��#Jq�&�:�\�m�jtTla3��%T�Qf]���{nG�V��G��cL�:��>b��<�P��[�)���V�V#Zt�&��蕾`�#A����RK6�a���SМ�&�-P�sN*V����JZ�!.����j,P�b,��Q!��q{�� ��d�mV[ԓI��4��R9�[���VC�|&��	���e�W��
M,���	{T�˔P��#�q����D�I7cj\(� s��3SF�Ԓ��i�<��Ԍ%[��*�R��,�������hs��8L"wQ�b��ئ10)py��}rQ�Z3���?�i������(i��U�i����(i�K��r�,��AI�͈~�|�hP�2\k:<%�6c��|�f-)k���`�����MLul*O_�4�V�Ğ�Qf��.�I��X������B�w�JZn�:��_����\��܌��ߦ����:���(7[��4�ϩ��wt
*h�M"q�I��m����	o�0��<���&��\�F	��2�^y6�i��@��73_�u�a�~���	o6fj�^.�L�@���[̌a�t����ۚV(� �v�t�հ!c��Q�arQ������$_�x}���9�=ҩ��v�����PPA�=xT���!HJv�&TPyg�}�ʳ�i!'�iBi4B]�靶�|�5\&��	*��2�WJ��hu�`�ʵNU��/��<�Fs���k��(:#�uR���
z
�|�N.�6`��r�L.J����a�-��$+)�(j������T�ڍrQ0EX�}��(��fѭ�չ�kV(i�B���6�ҏ�C5���g
�du�bW%�L%�<S�Ӣ�+�#����f��v�)�	AƘw�4��!|�-A�n1�dyF��F�r���l��	�A�)��z@�ӄ�	"��2ɐq� t�m�Q�6��0�����8D��a��ގv�LʴKJ�	��S�J�X�,��\��N�*�e�P�ڏsQ0A����ws2m~�u]�`��S�Գ��^j�Q��<�n��L'� ��,�����Ih�Q��V�OFE2-�EI��	t���8��N�(is�4��T�R�>[���yҼ�RmS�,��(i{�4�Tm܌��v%�ϓ&>�*��@��RTP:[-đB�N���2y(��ty��.�4F����	%$�?��e[G����a�PҡA��YT�%N��PҩA�YT�X�d>�MJ�P�f?�,����@��}:>%���̢:�5�lb�%m��̢�);�I�J���&I�G�ς��~�I�K4���L��P�~�CUW�`�`t���(i�����iҘ`���ћU���
�Qis�p���>Y�sQP���@Ә^I���D��.
*h=���}y���\��H#W�I�|����y �@#e��Դ�I��A�QҁF*�g[�..J:�H��7[�D��J:�H%Y����(��e�P�yF*�0���v�5�D]�t��4|zL�a���.J:�H���p٢(��(�<�����}g*cJ�<m*�\�t��d�]n��%�gl���k�������_���Z��䡤�%S�&��)�y(��	Q1Mz�P0�%��P�V�5�t²a�v��Xࡤ�%S���X�%�����_�Z�q�Aԩ6wQ0�5~�r7�5nPҩOjS�<m�p�����}R�b�o[ѧ��t��3��ޒ���C��8��2��f9j��Ҵ�J:=JͶ��|��T6�>y(��(�l���Xe~6�FI�G��u���rH�2=LL�2�_mG���`*`�v|̱Ѭ��)�CIZ�?m���Q�%9 �4��T���HV�{=�t���[�hy]�1=�t���^��1 ��#
�tW�SS�L�;�L6qn����k��8��A��&?8E�4�G?Qb�LJ:b���~�D5}�t��g*���&$��]����s�t���j�l�C}�|�FIGllQ�mׇt���%�1�)��d�Kt���[�#އ�2L�%��$��(�;�`�.y�@yE�Bq�
&�'�׻c�n1z�4���HfO��%�ToM
&(�=��D2O�S(��I0ώ�(�p�e��-�aU���CI��,���	E8Ҭ&����N[}/��:�&%��L'w�����&%���L'�_/�Q�������ݥ�=V��-�"%�r�'�Η�#F�l㮋��j��8p���6w�q.J:���}]??�G�2���Nj��8���P��}݄�	
/�W��_�$����\�t���Fޗ�茱XYz %�����z��
K��'.J:��:i�m� �'���3Z���N�_!E7�]�tF�5/�FVd�N�CIg��O�]*DDS�tQ�-W3�=�ǥQH��ͬQ�-׶��r�||J:��v�>��I�S��o��
��2�-�ڞ7�Mۤ~�+�t����e�ƣΊ��8LJ:We��eb�f�{�ώW(�ܘ�-�e��_��dP0A��Qm��F;���[�J:��v���"�/R���P�(�Ԙ�G;*��.J:6f�Q��A����=?t�o|vTv�]�t
�����
J�l��[u�r'w�7��s�A��(n��L���=�;TPz�+}
..J:��W��TPz�+��b��
J�{���+�$�J/6T�(%T�J��*����
�$Z�>h}~r2
	��-���ڷQ�8C�"��mRvQPP}P��TT{�o��g���Z��J�{��m��ޥ&�@�J��
J�{��m���9tN.q���0�K4�K�+�k*(=�^���z���r�{��m��W�A!$q�������A��X�3mA!$�ֿ�����I�BH���]��AB�>��[*�=}P�6�^�J!I{�o�~�����z�:��dD/s$���5���Zo[g�^�$�B��Z��
ZO{��m\���Q
	��%��k�m���s6F)$����T�:�޶ns�J�9�Zߋ�]TP;P��Z���蕜��K��^}+��#�]�'ط'�Nj����[���bC"��ڇ�+^1�!�}d��
j�}d���^�pT�o��4?��Mp���PPA��/QA�y#�nߏ�P�{^�i�R���v�x-�7���Q�&N��ZOo(1�������~m:����v���z�$m��x#���Gv4}H�]����3V��
��:J���*���x��@�k� �  ��I���
ִ�j��D�FI�4H� ����| �X��·N�U�Mj�����~U_:�T�k�۝�~z�H��>�s�΋k�M��}?�BI�d7����P�>&|�2	D���{��
�7��jf]��'i���֕�J��DʇUm��鏾ܐ�_U��G�Wb�֑���[iT��ұ��EƟ(k���x�y��A5B��dU��M����{��D먆�>ӄ�+_�8�%�����:VU>��[�cU��@��_PK�PSm3��N���H���ﴎ5�nڦ��+Śv7H���~(:�պ�ԇ�j�*�Qڵ�O_k�H��?|�uXHٯ�ˢk��5}]�cM�C!�m��U���~��������*�O��U��%�}6�B!� ��]��Z=�V��"����>��e1�E      #      x���Y����.|=ϯ���M]-D���x��FiT��''b3��#ޚ�k�Uc�O&#G�����?���T�/w϶�#C�놺@f~�_T����	�x�N<���,���Py�wb=�D2�f8��j9�9,���E0�!0���c���?Y�'
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
�O��7ȩ�]{*��D� ����������˚�7ӿ�o.�C!���'�==�4�}���#�~�z���	e~�ԥ������̳Y}��?U����/{bA��C�_�U� 4p���؏���X=�WkB�EU���e�9���o�pN�{a�ml!���t�'���=,�B��]��Kx=KM-evQ=��W=��t7v?��z�����-4�`�**�}������R��¸z��Pm��
]�Ά?_�h�Qhzf�bǲc@.�	<̔�8
֔EҐ�Z�ի��G1���������ț�T�~��|�����}��Ŭ�T�j�:+��XCpK.�Cf��uٟ��E��\��H�ا0җ��)A�[
ɵ���e�V��E��x4�?R;�k�*�]?�=a:�K��z�9�s$j;G����b��+����mIh2�(I�ȈMG���i���r�7�|7�!�|y��=������OSxO����s���z ��ib�=������:�H���m����<BP�?�l�(Z���N1�q�e��k>���=�Cȶ�_L�y���=�>�M)�����wUl�X;C5N.!�M����'=���7�KY=��[m~���b��In�_Hm\��o�'����A滞\�(/��-�#H��W`(�}�z�
:��KK�w�=N�"�X��%W�hTؽ�H6���0K��U��A�5��뿦��qخ�+az�Q�����
R�E|l���ͯ� �������EI�x��dc��He�)������('Khn5$������b�����"r���F^2�o��/�R�Ao�%JO�̏#R�"ԥ���P�I�#���cGB$jA<�.����u]\&�G�_Y#"^C��������|8,6'c���p!0	����@��)�\�Q��tJu|y����"���%�~��V���ۙU���7��[j��j�� |��{��f�d���8~�R[	���	��ԋ��G��1f(S������=Տ{�7Hw���OT��D^V�-��a�P�x�qM=� ��m��N�D�"��}P�&�3��|>���%Zf�Nҫ�Rb���ypФ�_�h�����_7>�}���a�ީ��Z�~I?ت^q{)�t6��������	/��14&����].6;b�N���XDt}wЀ�����OT�R�<�;�y!�׾9޺��v�g_0�h�7�"
w(�t�<����V�y�hC��&�BE�K��������\���Hͧ��g��yq�Of�d^�.�4���/p�Z��	��A��a*+3i��c\�� 3�"����/��g�)[��аa%p1��%��ύgk��.8�}@�v�7�bSO��rc߂3�r��:�z�jS���lKl�!��e`�Ɵ:ņ�t��F0����V����םF>Y�;�E����>��k~B�C��^��9�s�;���d[yI'5_�^�;`�h�tXZd�6J�| �]���U��y?B��kݜ:�o��Yh5�Mk/�e6��
ߣ�&��}�C��d����z��r���� .ب��N?x5�^��ta��9���V��ËYu��m@&q�T���^̸��2�v҅,��9�lmF����>�\Ƕ6(��&�Td��P��Թ(����ځ޾u��/KK]�vK����p�9�i0��}�'HճC�ПoRr~�)>�/S���������)���j5�Y��z;B �@:��-��`r\ئ<�/���^7W�b�e$��_�qD�_X�S������X��D@�SA�'�����1�� �>0��{:P�AD�2��M���N����Tm>��{�T�w�qK��".�M�ଗ(J��C��"�g���R���ߝi�����*M@������ö��EE��S>+��p�Kt���S?`p6&6�t
�_x�8����˧dG���S�Ub ~NӼ�vĆ������� ��]]����@������J��j�2sYJk��b���"�o��=�;�D�;�S�D��AO��c��[\�R�!A3�l���+hq�瓜�pˠw�5�+�^�G:���z���_?RB������~��B�����:z����kK]k���Ɨz��/��2�"��{m�I�<�p������W�Y���6���U����w�M�tݖ�W��R��f��M�B9W�hk�bgi�yz.�ư9�m�C_'BZ��ֵ����i�C�h�8p���!mv������9<;S�U}�Ǒ�v��9(9eJqT�AV����">d���OT�Ǭ���d2A�b��I1JF�U�l��/�Us����!��H��v��J8Mv�'�c'�Y��=SǸKq�,Ha�s��C29u��y�F!ȇ$�5Mf;E^6������o�W۽�?Q;��o��v����窢}k,���~x����U��x�����z/��'�|� i�� P�ׂ�����zм�6����'�����A�S6��6�t��P�o����7U���/�)���!U�"�P_э�ǯw�jXu��y�z�!��y��u�ۼ�T1�n��/*�&x�ۉ�@�}J,ee�"wv4�w��O��E�i.�L����U��ڑ��}���kT��/��R�B���U��s��m'dy�J)!6%���	�(�S��p�	�2&�V�<��������e���������n$���~��w��3n`�=��D��SALe��vgf�hk���4<^s}�W�� �6�tl��#W]�#E����g��p��ZV����D^L�[j<z�bE���u�gb�;%3    �xh]��
EDb�3���]10��;�U<[~э}�	����ky��}Ѱo��x�@�o���ML���k�&#(X�=�,�3��P��LN�q1�EJ��}� �wX�}u��=�'j=��k�9Z�sZ��q�)6:scT�%'�1CnX8�q�}	�I�����������j�:��T����A��F�D~{�d)��}�V[��Z�DS��'ؘZj~�:(����t����2����6���(��8��z�v���o���5.��>���i�_PhkBSv�P�����9��`�AG\�Ί#��~7V��"���|��qX�V�����ڿ'>�e����V6�|)u���Ma�٩��Vxa�Yܩ��w1��/�\��u|�Nii��`j�Y���
�9�����c7D�T�<A�Զ�R�k��DF��eVn��"~7߮�����̢�`�=�w�;���9cn$mT���h��@�a�U�3X�.F�/����ۼIּ��ֳ{��?�fXh=�g$R� ��[�qΚNr>�v숙lD�P�}����������;�Z�uT��?�i艹|{�,t�i����!S�OXv`	�Xf�����();�B-������DK�!���WS&``�v�Zz�},�S�塚#vV��f�ݳ�-/3L�F�������W{[ʪF
�x��ތ����O&_F�]syZ��J�~ʼz��E)��v�}�gx��b��+~;=�����:�v�3��
�nŃ� ��Ѯ���Rs�M�S�
J���=�ӭs�34����[���n����u0����}�h\�7�M2G�vk�驮P�A�^C����V�yKꍇ���+D~I[��Al: ��9EzR_��	���b���?Q9�Ds#;������/���1$��>Ś4��Xn�g�@�g������$�����x��;�j�[^e3Ф�I
"D⋺�ޘ&�5����Ǉ-X��z0��������N=��O�"�zh:x��A�Vi�wGF���s4�֍1�I��d:��CF�ƺ�2���3�;g/Ë�	��s����k,ԧ�"�z�k�[�M���ͺ4
��]g,,ɜh�:��y}lh�X��6,���z�D�9$K�2�\l��`�Fj>]ƿ��~(���J.�ЍA2T� }u�D����H٘���X]^�-"��ĸ)g{*Ѱ���D3NM���ܻ1�a��4�T�I�[��S;s �z?�������kO���lx�b���WdO0��X�I�F��
�՞Jfv��/����]͊������.��p7(�P�ڪ-r�A��/�G9��ٝ���S?��	��a���+��G���E�����Iw'��[��c�[Hlv6����"ۉ�x���
ޟ��bs&:�GGD+]���(4�|B~;t�O�|�	�}�rka�ԑaX��?ă�9@�#w�ǒ���"�v�v�I��W��Lf!��a87����s�0�{v՘:Z���4Z��v��KA}7ξ�ԇ�V0�*��!�1���e`% �:i7K�����*X������oK���C	p�ÿ}�`��(������+����wF��x�G`-܂����:�-2�R��y�����%��l������0�8�k^�~RX�[k�G���B��b��#^�ϼ��cS��ZP��MI�� 9B̠s�gWd7�����n\䧃yY��>�	�8O^Lݰ�KE� �[������g#�(���2_��I²e��@�!e�Hl�V��D{����nMB����$8pFIpnrq��*��C�&��Lqq��i;m������L�"���S��4��-�2���@�aW{gO������Y	�A�33��p��k�_V���(��@��\��AԊ�:���@��*�3Y�Q���
���!���%����0��4�2١6hU2�ap��o�m~�Oꈋ�"�"�����f�%���E�>O2cka&_�,�w�t�6��R���h�L!�����~n�)�R�#+�_��b$������]���{�56ݼzrOVK{k`��0U�*�U���/�(9f�-$�p�P!D`˜6�p���g��1;��4������T�[�h� �S�'���wI�N�jeniyY ��飏��8��H���R�^-痋`x|3���bB,�`�[ �r�^���"`�p~���OI���5��Nֽ�X�0O�<�-���d�R�䥐���x��\�[X��������� �=�y医z���H�X������B^I�{k%��kNgW���E����/<xC���f"���2�Ӂ�E-�̖��v����yj�Z�k	�o�+$4�|��nL?���,�n��+��Iqu+�������vW�v`ci����Ο��%oht��.+�V���",e=�)\�5K�k��� �� ���֘�\9�Y#!���/�n��؇\2	0
BVfd��N��~�N�����̥��C�c88�<_���m��=x����'�����=) �:k-�~�(���Kl��<�^R[9�-�wU(�j`�^��$����b�@��l�7�
p��oo�2��n��F���z�ke｀q��������	��R��׉.̃���@7���D[ך��n�h�C�.�ә�O�o�t��،�7����=?E�r��qr]��������8���9��i*���k��D��0=��BY��N���,ERx��0�ZO�~�n��v���sb� ڙK_�9�?yob�?��d\mh^Y�^7��v�A�xX(�+јs�)���A��-w��S�����
����{��g�����P���ߩ�
*`���vF���qj�y̞2g6E��@��k��6����z��@��ӥ$�4�t!�:Kqb���@pF�o�}�hSGg�VRPwV����G�W{٭&�M�����.�S-sƩ+�f���jn��W�'%�tY;�X�!a!�g����GלF�7O`�iN���Q�3Ӻ��)����uȅՕ1ڪf!P�O�ua�I~u��~��I���&�2���3��{�ͩ�#q�ǠL��Jp������h�`!!���
6LkT�Lz='ګx�CS텹��;d����;����7�L϶�d�{����7ײg^���������>��Q��s*�ڇ��ɛ�A�P������O��t�G�1�[�ٳp� p�ÿ�)8��Q}RG�t'�(�"�� �QN�����	��9���.9�nG�gXgA��|5�T<9�R#qh5��"$1�<a�� u�����Nl�i^����g�}����H�W
���8!�K�d���z���3��g�1K����,FQB��D)���]�q~��;p_Z9�J%���@�;�߶=��UT�-���5�j&4��k���զ�饹�����u���4� �z!B��`����m"�W/�:�dХ��ڻ�a� �UF"|f��E�N��M颻���j9�8��&��3	���^W+q�@�����'^=�O�h�7Y��i����}�G�&�"g;�X�w��l��ٝ��-�[��i;�+d�T��� �n.���������or�  ��cdLq�~R�A��b���o,��Si�nE�6VCu�x-��~��[����*-8.���8O��·���y�Z���1��xd�v��^� ���9�gYS�`z��<J�ʺLՅn�6ǴH��GO7������#�;�\�>���臷��p��;��!�j��wپ��k�06)�E`�S�Y*<�j� '�'ӫy�IsZd�0��8_��-\F y�̓:bf���Ğm5\��B���v/�a�f��Vpw"w ܓx�ҨJIc�l�2��X�(z���dF�P��t���pL1�|�yq?+RC��{���w<$�Z�.��q)�.i�Cs&\�J'��ޤ>�2
���Ai'l�����%��
�ڍ'u�� C����� �I��M�hE��R<ߴ�1I/���<o��s�    *~�pB���f�#|��/��c�s�ȭ�zqwَ<(T́�{Mֻ����RX06xFfAA��h�ɜ��iG��N����s����"�k�c�h�7'��ŀ�R#�P��Z���Y_ G��%uh���Ilك��3�<�gn8AL]�^�}`$@x��c����[�_}z���6j�Z�%A=�}�$f@ݲ��@�`�]H��eq>��ys�I[���f��y���?8� }�����]������1����z�6���$�%T��\�JҬ�ȋ�}��+73p>[n���Ӏ>�!��'�8���M*/"Hcꈙ�"��q��]ݣp`/�Ѷ�j���Rđ�_L/ξ��Ɗ�h~�5���rgd�E�\+J�����{Gl�VL�z٭��CʜT4��8d��\'<{����L�l��	���+1G����<�'8=�����.��썩�e�w��ᖏ��3��^�r�x�/��w�AK�',k*��[O������ng�)���̣��b�7���E����	:裰,NL-��!&��pu"kᒣ���c`1�l~�p�,�vq�N��"/�|�?$��8�|���z�^�1u���}�{��;� �lt˛0mNr�zc	��i.��%��,��`6�������=���Ӫ�HC���p>C����6�>9�M)�EiE��=�ls?�	{�x�d�6�t���ca�U��nuI,Ea;C��C�p}��C���Z�����c���6��L�Ħ��cW�y���q����G�%H��|�t��@��Z� �@"a=���4�������ۂ�Y��/7ae�V��4����C�Ȅ�wo��3X����a�,�-�D+X.a���3�Vj���	��9����nnu��^��~��.�
�?�o�i�/Uqw�}-v�%�Ǚ�t��%�O���)���`@�dXJ5@d{�V��sl�Ta��aC�@�p>C��G��$�1u�����w�~��KB>��R ������̕FV��Eq"ӥROjTl�5MO��l�;ލS��2�<P�^?A�Z?A���[BmՏ�՜�H,�x:�0K��`��
�!��Z< �D��"]A���s�f!�d�ֹ�S��{�I�_��=~�}��=�#.� 0���I��Q��;���k�^�G˘_`8Hીs�#/��2�X���̙�&�&��������|PЫݠ�ﻁ�2�c-.o)s�9F����e��$/Uw|��R����U��N4T�VӖeҲ�N:J�+F�^E!�n��/�o���}L�rO7�n5d��}㠜"���{��꩜��{?j笆UCUܲ�G"x6��y\� � j�A^Z�D��3>@p�ÿ����;cꈣ[X�k��Z��+�g�i�0��ĭQ��/�P�r!��[�t������'�2%� ��=�1�|B���n^d[��#�n�C-��b��~����t�LR=��c�'l�N&�V�� z�9�"�|k��D��J4����Q��@}{K��f�����{6U�� GK��ɷ���O;y]!.p͵)���v�F���P�RF��RUb�����Ϡ�0Ɇp>C��Il4��5u�ݽ�a�F������F����˵��sa������.�qu�:�­$�JqV��������`I8#�1���.�RG�R���÷B7G�N�mn�ġ���	Q��qWUY,ˉA4�
�����,�]2���\�3z��g�������n��K~����kŹ�UVz-<���|&��"�,�e��V�lq�ܮO�ڼ\(q�itm[��c�L��f����˃�b���Q�q��(�Sm�QJ��pu.��Y �l�}z�KN=�p�k��:�ј���ĤI-�Ca0�p����˫�J�Ǵ�ۼ�^���T�:E��$��eB�i����o=`�][>�^̏vj2q��&�ea���ǂ`Ѐ�@}�I�-%.���p�4�!g��e��Lq+A��
�B����,���n��VKU�'pEb�2���(�����?=0�x��>��8���%v��Sg��E6�s���VU-_�Z�=������?�΋�bk	g�b]�il��A�Sf1���?|}�f�DZ	t:E��0�L9��`y�vѶZ�R��d�m��VB&�J¥����(��1I�r�j�	x��}	^D�F���Mj�Zn��u�>����yp\����IQ�a
� ����쒶Yq06%��9&��c�ݒ���3�{���:�RG�|���;>t���d-1J�Q%"X4B�3�"l1�H���Њ�w�
�Z8��BS�Z>���`XA}�>���?'M� ���;��#��Ŵj����S#��;�/��������V�� LZ���g�x!M�*�ɠ�c9�<P�<Z8 �P������gUr�K|����!l֤�~5��id�"v�T϶��YX/�Y��e�i��A�K��C��2�o��R�\6��^�(&���������zE���n�x���'C��y� �D��-��-b�=3�c�'�w{�=6����#��2������=�Բ�EQZ�<��qE��{�P����	V���B�N����ן%���;�����v�ur������O����_�O6n]�}�(�FRuJ�����G�(-�G,��������]����l,���,Hr9�?@a�\���W�77� �oi�?SG�J��&Eh��P��	>�S�"a�BY�?��ņ�y6��)����b<	s��!T��}ͭSZZH����ۼ`/"=c��1�(�C��#�M�y���8�	|	��-��@�&8Y"%}p��t�ڀ<���߉3��^^m��:r�2��4q|�Xs�,KZ��ϪL����PE-(
t�Ҡ���H���P.G`�`�b68�0l��A�ِ���oL}���8];���	�\KL��<y��>�3p-D�=N���l�!�J�|�uf�� "�����((u��H�U���o%x��O��b��^��"���cO|{NX��t-���(��{�my*7�
Yn�4s%$@��w�D����?�p���$֓�HދD� ���$��On���RL�"Gjz�i/4�ͺ�d�Xx)��lh�\&j��m�u�N�	E}��>	��y¾��JR�KRn=�<�)�i��U疰�$�i�3a�4>����R�64#vg_wڞ��,Y=X�i
N�� �N�xSG"�6}@�k/p��Lz'=�Q��)K�I���G"
���'�9��|�P��mM�21W@�i`���$���8_�������1u��:U^�~L�̵(ȇ��z6����k/�{�������ָ��p��Q�/ra�%4s����B�b>���#o+(/*"F�o����Ք�g��w�;��.��ԯ�[Q��?xn��>��Jcoe>N�0��҇�#h��à���pߖ��K�� >nq��(\ˊ5r�-b�.S9��ƱQ%[K
��X�gx|�5+Q��:CxJW"?�.n$��N��q��k#/t�1u��[!��>�����jn�_x���
+"E�VG��r2_�ggF�%RS�is����5�g�f���ߟ�1u$�o�H]��:�C+�<�zG,B���O� ڣ��LD0�0Q�JZsG��B��bRg����I˝��\��1
p����߱7z_t�ǋ�1u$���!�jq��B�츧�}�����SZ�g�r 
k�:Agx���hݮN>ڽ�[-��&X��Ax����,�_�SG�|N"F�[��u�x���>U�!
��s\m�Y��\���:�N�q2�A⺛�40B8�Õ'��_?���2C:%�Eʘ:������z�e��Ѓ��[!��4�����ǫ�OႥNqVPM��	L$>oN�������ۆ �'��Ow��OИ:����n�?���%?�י�	��k��B:�p�'g���Q����d��F20�;V�ΒB�俧h� ���ǘ:�"���w�������!�,t$*�ѨЩ�eC K  aJY�|1�����I�.��=2��+����O��#��+��^�k�_�#vn�9-� �9}�w�c���ڗC	-D� �ޘ����8��U��\O�.�Z���a�����}1���Ř:"�AI]��:��Ԋ�>��v�g����y2��`��M�����Q�a����i�:2z�eo��8<�|C[(�/��1u$NnQ����(�xN���f\���64�/���)�f7�yX���'w���3��9-� d��������c�h���O1��v����%���(y��N�N�f+��I�X�8�,	���u�T�i�<��\J�H|������wL�������3��]��v��1�U�ٻ{��A�'�.����&�w*q8�9`��v}:�x�?[��Kه�$��[�O�]�2-"�ze�]��������M�V5�%��젫)G�G��8>�#6���M���z�1���K��_�#{��mp�?�^gS?#���b�3�j�<t�vK��}As9K	��J�J*������N�/R�{�z����'_�Oc��}�͆��Z>�mP'��06h+_���d`�I��$X�@�)�*��UU5rE`9UzjƱ:��
�k��/�o����~�ݷ��ݞ��5q<�|�AN�t<\�}n���ʞ��`K�H9jML%�"'�5��X�*��Y0Cb�y��o0��D||<�������Vn'�P�����M�:Ra����T����T�8%�5��Ĵ���?�A������|�/<$c����4���${���n��)��	ZA*��U��(dAZ��̡=�D$g8�|�?f}8���s~��E�4�
��<��Tߥ�Y�-�)k���l�d�V geaka�+�&�w�����$Z��/9P��P����_���4�^� �C���tf�yՂ�y q�\LW�0���ݲ�"@�Jr��IN�gv1ϓGW�S�j�uK�!�;�ۏҫ41�41��+��0���&#���L%�0�N�}Nwa�Ԕ ��Wì:�
ǘIBҊl�}�v�� ;pF���Nz�(�S�o����/0n1�      %      x�32��22��2�ˊ���� ��)      &   O   x�3����K)�,�4202�50�54S04�21�2��343�60�26�/�e��[Z���[�i��������1vsPe�b���� ���     