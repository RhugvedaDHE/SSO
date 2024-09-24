PGDMP  5    ,                |            sso    16.3    16.3 @   *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16398    sso    DATABASE     v   CREATE DATABASE sso WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
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
       public          postgres    false    360            .           0    0    AcademicYears_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."AcademicYears_id_seq" OWNED BY public."AcademicYears".id;
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
       public          postgres    false    215            /           0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
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
       public          postgres    false    356            0           0    0    Banks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Banks_id_seq" OWNED BY public."UserBanks".id;
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
       public          postgres    false    217            1           0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
          public          postgres    false    218            �            1259    24601    CasteCategories    TABLE     �   CREATE TABLE public."CasteCategories" (
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
       public          postgres    false    219            2           0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
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
       public          postgres    false    221            3           0    0    Cities_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Talukas".id;
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
       public          postgres    false    223            4           0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
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
       public          postgres    false    225            5           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
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
       public          postgres    false    354            6           0    0    CompanyRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."CompanyRemarks_id_seq" OWNED BY public."CompanyRemarks".id;
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
       public          postgres    false    227            7           0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
          public          postgres    false    228            �            1259    24626 	   Countries    TABLE     �   CREATE TABLE public."Countries" (
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
       public          postgres    false    229            8           0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
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
       public          postgres    false    231            9           0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
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
       public          postgres    false    233            :           0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
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
       public          postgres    false    235            ;           0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
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
       public          postgres    false    237            <           0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
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
       public          postgres    false    239            =           0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
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
       public          postgres    false    241            >           0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
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
       public          postgres    false    243            ?           0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
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
       public          postgres    false    245            @           0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
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
       public          postgres    false    247            A           0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
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
       public          postgres    false    249            B           0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
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
       public          postgres    false    251            C           0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
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
       public          postgres    false    253            D           0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
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
       public          postgres    false    255            E           0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
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
       public          postgres    false    358            F           0    0    FeeStuctures_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."FeeStuctures_id_seq" OWNED BY public."InstituteProgrammeSubjects".id;
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
       public          postgres    false    257            G           0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
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
       public          postgres    false    259            H           0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
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
       public          postgres    false    261            I           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
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
       public          postgres    false    263            J           0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
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
       public          postgres    false    265            K           0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
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
       public          postgres    false    267            L           0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
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
       public          postgres    false    269            M           0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
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
       public          postgres    false    271            N           0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
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
       public          postgres    false    273            O           0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
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
       public          postgres    false    275            P           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
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
       public          postgres    false    277            Q           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
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
       public          postgres    false    279            R           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
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
       public          postgres    false    281            S           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
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
       public          postgres    false    283            T           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
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
       public          postgres    false    285            U           0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
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
       public          postgres    false    287            V           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
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
       public          postgres    false    289            W           0    0    ProgrammeSemesters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;
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
       public          postgres    false    291            X           0    0    ProgrammeSubjects_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects_delete".id;
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
       public          postgres    false    293            Y           0    0    Programmes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;
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
       public          postgres    false    295            Z           0    0    QualificationTypes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."QualificationTypes_id_seq" OWNED BY public."QualificationTypes".id;
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
       public          postgres    false    297            [           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
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
       public          postgres    false    299            \           0    0    Semesters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Semesters_id_seq" OWNED BY public."Semesters".id;
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
       public          postgres    false    302            ]           0    0    ServiceRoles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ServiceRoles_id_seq" OWNED BY public."ServiceRoles".id;
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
       public          postgres    false    304            ^           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
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
       public          postgres    false    306            _           0    0    Skills_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Skills_id_seq" OWNED BY public."Skills".id;
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
       public          postgres    false    308            `           0    0    StaffRemarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StaffRemarks_id_seq" OWNED BY public."StaffRemarks".id;
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
       public          postgres    false    310            a           0    0    Staffs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Staffs_id_seq" OWNED BY public."Staffs".id;
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
       public          postgres    false    312            b           0    0    States_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."States_id_seq" OWNED BY public."States".id;
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
       public          postgres    false    314            c           0    0    Streams_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Streams_id_seq" OWNED BY public."Streams".id;
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
       public          postgres    false    316            d           0    0    StudentAdditionalSkills_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNED BY public."StudentAdditionalSkills".id;
          public          postgres    false    317            >           1259    24845    StudentEnrollments    TABLE     Y  CREATE TABLE public."StudentEnrollments" (
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
 (   DROP TABLE public."StudentEnrollments";
       public         heap    postgres    false            ?           1259    24850    StudentEnrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentEnrollments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."StudentEnrollments_id_seq";
       public          postgres    false    318            e           0    0    StudentEnrollments_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNED BY public."StudentEnrollments".id;
          public          postgres    false    319            @           1259    24851    StudentGuardians    TABLE     �  CREATE TABLE public."StudentGuardians" (
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
 &   DROP TABLE public."StudentGuardians";
       public         heap    postgres    false            A           1259    24858    StudentGuardians_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentGuardians_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."StudentGuardians_id_seq";
       public          postgres    false    320            f           0    0    StudentGuardians_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."StudentGuardians_id_seq" OWNED BY public."StudentGuardians".id;
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
    last_qual_year boolean DEFAULT false NOT NULL,
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
       public          postgres    false    322            g           0    0    StudentMarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StudentMarks_id_seq" OWNED BY public."StudentMarks".id;
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
       public          postgres    false    324            h           0    0    StudentRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentRemarks_id_seq" OWNED BY public."StudentRemarks".id;
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
       public          postgres    false    326            i           0    0    StudentResults_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentResults_id_seq" OWNED BY public."StudentResults".id;
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
       public          postgres    false    328            j           0    0    StudentSkills_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."StudentSkills_id_seq" OWNED BY public."StudentSkills".id;
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
       public          postgres    false    330            k           0    0    Subjects_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Subjects_id_seq" OWNED BY public."Subjects".id;
          public          postgres    false    331            L           1259    24882    UserContacts    TABLE     �  CREATE TABLE public."UserContacts" (
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
 "   DROP TABLE public."UserContacts";
       public         heap    postgres    false            M           1259    24887    UserContacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserContacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."UserContacts_id_seq";
       public          postgres    false    332            l           0    0    UserContacts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."UserContacts_id_seq" OWNED BY public."UserContacts".id;
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
       public          postgres    false    334            m           0    0    UserDesignations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."UserDesignations_id_seq" OWNED BY public."UserDesignations".id;
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
       public          postgres    false    336            n           0    0    UserDocs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."UserDocs_id_seq" OWNED BY public."UserDocs".id;
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
       public          postgres    false    338            o           0    0    UserMenuItems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."UserMenuItems_id_seq" OWNED BY public."UserMenuItems".id;
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
       public          postgres    false    340            p           0    0    UserPermissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserPermissions_id_seq" OWNED BY public."UserPermissions".id;
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
       public          postgres    false    342            q           0    0    UserPersonalDetails_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."UserPersonalDetails_id_seq" OWNED BY public."UserPersonalDetails".id;
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
       public          postgres    false    344            r           0    0    UserQualifications_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserQualifications_id_seq" OWNED BY public."UserQualifications".id;
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
       public          postgres    false    346            s           0    0    UserRoles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."UserRoles_id_seq" OWNED BY public."UserRoles".id;
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
       public          postgres    false    348            t           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
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
       public          postgres    false    351            u           0    0    religions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.religions_id_seq OWNED BY public.religions.id;
          public          postgres    false    352                        2604    33741    AcademicYears id    DEFAULT     x   ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);
 A   ALTER TABLE public."AcademicYears" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    359    360    360            �           2604    24937    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    24938    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    24939    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    24941 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    24942    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225                       2604    33635    CompanyRemarks id    DEFAULT     z   ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."CompanyRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    353    354    354            �           2604    24943 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    24944    Countries id    DEFAULT     p   ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);
 =   ALTER TABLE public."Countries" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    24945 
   Courses id    DEFAULT     l   ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);
 ;   ALTER TABLE public."Courses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    24946 
   Degrees id    DEFAULT     l   ALTER TABLE ONLY public."Degrees" ALTER COLUMN id SET DEFAULT nextval('public."Degrees_id_seq"'::regclass);
 ;   ALTER TABLE public."Degrees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    24947    Departments id    DEFAULT     t   ALTER TABLE ONLY public."Departments" ALTER COLUMN id SET DEFAULT nextval('public."Departments_id_seq"'::regclass);
 ?   ALTER TABLE public."Departments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    24948    Designations id    DEFAULT     v   ALTER TABLE ONLY public."Designations" ALTER COLUMN id SET DEFAULT nextval('public."Designations_id_seq"'::regclass);
 @   ALTER TABLE public."Designations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    24949    Districts id    DEFAULT     p   ALTER TABLE ONLY public."Districts" ALTER COLUMN id SET DEFAULT nextval('public."Districts_id_seq"'::regclass);
 =   ALTER TABLE public."Districts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    24950    DocumentTypes id    DEFAULT     x   ALTER TABLE ONLY public."DocumentTypes" ALTER COLUMN id SET DEFAULT nextval('public."DocumentTypes_id_seq"'::regclass);
 A   ALTER TABLE public."DocumentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    24951 
   Dummies id    DEFAULT     l   ALTER TABLE ONLY public."Dummies" ALTER COLUMN id SET DEFAULT nextval('public."Dummies_id_seq"'::regclass);
 ;   ALTER TABLE public."Dummies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    24952    Durations id    DEFAULT     p   ALTER TABLE ONLY public."Durations" ALTER COLUMN id SET DEFAULT nextval('public."Durations_id_seq"'::regclass);
 =   ALTER TABLE public."Durations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    24953    EmploymentTypes id    DEFAULT     |   ALTER TABLE ONLY public."EmploymentTypes" ALTER COLUMN id SET DEFAULT nextval('public."EmploymentTypes_id_seq"'::regclass);
 C   ALTER TABLE public."EmploymentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    24954    EntityTypes id    DEFAULT     t   ALTER TABLE ONLY public."EntityTypes" ALTER COLUMN id SET DEFAULT nextval('public."EntityTypes_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    24955    EntityUsers id    DEFAULT     t   ALTER TABLE ONLY public."EntityUsers" ALTER COLUMN id SET DEFAULT nextval('public."EntityUsers_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    24956    EvalTypes id    DEFAULT     p   ALTER TABLE ONLY public."EvalTypes" ALTER COLUMN id SET DEFAULT nextval('public."EvalTypes_id_seq"'::regclass);
 =   ALTER TABLE public."EvalTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    24957    Experiences id    DEFAULT     t   ALTER TABLE ONLY public."Experiences" ALTER COLUMN id SET DEFAULT nextval('public."Experiences_id_seq"'::regclass);
 ?   ALTER TABLE public."Experiences" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    24958 
   Genders id    DEFAULT     l   ALTER TABLE ONLY public."Genders" ALTER COLUMN id SET DEFAULT nextval('public."Genders_id_seq"'::regclass);
 ;   ALTER TABLE public."Genders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            �           2604    24959    GuardianTypes id    DEFAULT     x   ALTER TABLE ONLY public."GuardianTypes" ALTER COLUMN id SET DEFAULT nextval('public."GuardianTypes_id_seq"'::regclass);
 A   ALTER TABLE public."GuardianTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            �           2604    24960 #   InstituteProgrammeCourseSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammeCourseSubjects_id_seq"'::regclass);
 T   ALTER TABLE public."InstituteProgrammeCourseSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    33699    InstituteProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);
 N   ALTER TABLE public."InstituteProgrammeSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    357    358    358            �           2604    24961    InstituteProgrammes id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammes_id_seq"'::regclass);
 G   ALTER TABLE public."InstituteProgrammes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            �           2604    24962    InstituteStaffs id    DEFAULT     |   ALTER TABLE ONLY public."InstituteStaffs" ALTER COLUMN id SET DEFAULT nextval('public."InstituteStaffs_id_seq"'::regclass);
 C   ALTER TABLE public."InstituteStaffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            �           2604    24963    InstituteTypes id    DEFAULT     z   ALTER TABLE ONLY public."InstituteTypes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteTypes_id_seq"'::regclass);
 B   ALTER TABLE public."InstituteTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            �           2604    24964    Institutes id    DEFAULT     r   ALTER TABLE ONLY public."Institutes" ALTER COLUMN id SET DEFAULT nextval('public."Institutes_id_seq"'::regclass);
 >   ALTER TABLE public."Institutes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    24965    MenuItems id    DEFAULT     p   ALTER TABLE ONLY public."MenuItems" ALTER COLUMN id SET DEFAULT nextval('public."MenuItems_id_seq"'::regclass);
 =   ALTER TABLE public."MenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �           2604    24966    Modes id    DEFAULT     h   ALTER TABLE ONLY public."Modes" ALTER COLUMN id SET DEFAULT nextval('public."Modes_id_seq"'::regclass);
 9   ALTER TABLE public."Modes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273            �           2604    24967    Notifications id    DEFAULT     x   ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);
 A   ALTER TABLE public."Notifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275            �           2604    24968    OTPs id    DEFAULT     f   ALTER TABLE ONLY public."OTPs" ALTER COLUMN id SET DEFAULT nextval('public."OTPs_id_seq"'::regclass);
 8   ALTER TABLE public."OTPs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277            �           2604    24969    OrganisationTypes id    DEFAULT     �   ALTER TABLE ONLY public."OrganisationTypes" ALTER COLUMN id SET DEFAULT nextval('public."OrganisationTypes_id_seq"'::regclass);
 E   ALTER TABLE public."OrganisationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279            �           2604    24970    OwnerTypes id    DEFAULT     r   ALTER TABLE ONLY public."OwnerTypes" ALTER COLUMN id SET DEFAULT nextval('public."OwnerTypes_id_seq"'::regclass);
 >   ALTER TABLE public."OwnerTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283            �           2604    24971    Percentages id    DEFAULT     t   ALTER TABLE ONLY public."Percentages" ALTER COLUMN id SET DEFAULT nextval('public."Percentages_id_seq"'::regclass);
 ?   ALTER TABLE public."Percentages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285            �           2604    24972    Permissions id    DEFAULT     t   ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287            �           2604    24973    ProgrammeSemesters id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSemesters" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSemesters_id_seq"'::regclass);
 F   ALTER TABLE public."ProgrammeSemesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289            �           2604    24974    ProgrammeSubjects_delete id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSubjects_delete" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSubjects_id_seq"'::regclass);
 L   ALTER TABLE public."ProgrammeSubjects_delete" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291            �           2604    24975    Programmes id    DEFAULT     r   ALTER TABLE ONLY public."Programmes" ALTER COLUMN id SET DEFAULT nextval('public."Programmes_id_seq"'::regclass);
 >   ALTER TABLE public."Programmes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293            �           2604    24976    QualificationTypes id    DEFAULT     �   ALTER TABLE ONLY public."QualificationTypes" ALTER COLUMN id SET DEFAULT nextval('public."QualificationTypes_id_seq"'::regclass);
 F   ALTER TABLE public."QualificationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295            �           2604    24978    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297            �           2604    24979    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299            �           2604    24980    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302            �           2604    24981    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304            �           2604    24982 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306            �           2604    24983    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308            �           2604    24984 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310            �           2604    24985 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312            �           2604    24986 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314            �           2604    24987    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316            �           2604    24988    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318            �           2604    24989    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    24990    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322            �           2604    24991    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    24992    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    24993    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    24994    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    24995    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330            �           2604    24940 
   Talukas id    DEFAULT     k   ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 ;   ALTER TABLE public."Talukas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                       2604    33650    UserBanks id    DEFAULT     l   ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);
 =   ALTER TABLE public."UserBanks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    355    356    356                       2604    24996    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332            	           2604    24997    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334            
           2604    24998    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336                       2604    24999    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338                       2604    25000    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340                       2604    25001    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342                       2604    25002    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344                       2604    25003    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346                       2604    25004    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    348                       2604    25005    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351            &          0    33738    AcademicYears 
   TABLE DATA           Y   COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    360   ��      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   W�      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ��      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   }�      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ��      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   ��                 0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   
�      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   '�      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   z�      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   ��      �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   x�      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   ��      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   J�      �          0    24650 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   ��      �          0    24654    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    241   ��      �          0    24659    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    243   ��      �          0    24664 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   ��      �          0    24668    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   ��      �          0    24672    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   �      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   ��      �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   ��      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   @�      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   ]�      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   ��      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   +�      $          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   H�      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   ��      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   Z�      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   ��      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   ��      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   �      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   ��      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   >�      �          0    24738    OTPs 
   TABLE DATA           s   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    277   �      �          0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   �      �          0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283         �          0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   )      �          0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   F      �          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   �      '          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   �      �          0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291          �          0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   p      �          0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   �      �          0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   D       �          0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   "      �          0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   #      �          0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   �%      �          0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   ]&      �          0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   '      �          0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   �(      �          0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   >)      �          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   �+      �          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   ,      �          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   �,      �          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, board_university, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id) FROM stdin;
    public          postgres    false    318   �.      �          0    24851    StudentGuardians 
   TABLE DATA             COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender) FROM stdin;
    public          postgres    false    320   �7                 0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_year, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   �>      �          0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   �C                0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   nE                0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   �G                0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   �G                0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   �I      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   fJ      "          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �K      
          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    332   O                0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   [                0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   "^                0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   <s                0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   �s                0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec) FROM stdin;
    public          postgres    false    342   8t                0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   ��                0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   ��                0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    348   E�                0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   ��                0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   ��      v           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
          public          postgres    false    359            w           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    216            x           0    0    Banks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Banks_id_seq"', 17, true);
          public          postgres    false    355            y           0    0    BloodGroups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);
          public          postgres    false    218            z           0    0    CasteCategories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CasteCategories_id_seq"', 4, true);
          public          postgres    false    220            {           0    0    Cities_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cities_id_seq"', 15, true);
          public          postgres    false    222            |           0    0    Classes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Classes_id_seq"', 29, true);
          public          postgres    false    224            }           0    0    Companies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Companies_id_seq"', 24, true);
          public          postgres    false    226            ~           0    0    CompanyRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CompanyRemarks_id_seq"', 1, false);
          public          postgres    false    353                       0    0    Configs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Configs_id_seq"', 1, true);
          public          postgres    false    228            �           0    0    Countries_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Countries_id_seq"', 34, true);
          public          postgres    false    230            �           0    0    Courses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Courses_id_seq"', 2, true);
          public          postgres    false    232            �           0    0    Degrees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Degrees_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Departments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Departments_id_seq"', 6, true);
          public          postgres    false    236            �           0    0    Designations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Designations_id_seq"', 1, true);
          public          postgres    false    238            �           0    0    Districts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Districts_id_seq"', 11, true);
          public          postgres    false    240            �           0    0    DocumentTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DocumentTypes_id_seq"', 34, true);
          public          postgres    false    242            �           0    0    Dummies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Dummies_id_seq"', 2, true);
          public          postgres    false    244            �           0    0    Durations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Durations_id_seq"', 6, true);
          public          postgres    false    246            �           0    0    EmploymentTypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."EmploymentTypes_id_seq"', 3, true);
          public          postgres    false    248            �           0    0    EntityTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."EntityTypes_id_seq"', 5, true);
          public          postgres    false    250            �           0    0    EntityUsers_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 65, true);
          public          postgres    false    252            �           0    0    EvalTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 2, true);
          public          postgres    false    254            �           0    0    Experiences_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);
          public          postgres    false    256            �           0    0    FeeStuctures_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."FeeStuctures_id_seq"', 9, true);
          public          postgres    false    357            �           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    258            �           0    0    GuardianTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);
          public          postgres    false    260            �           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);
          public          postgres    false    262            �           0    0    InstituteProgrammes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 7, true);
          public          postgres    false    264            �           0    0    InstituteStaffs_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 33, true);
          public          postgres    false    266            �           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 5, true);
          public          postgres    false    268            �           0    0    Institutes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Institutes_id_seq"', 19, true);
          public          postgres    false    270            �           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    272            �           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 77, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 110, true);
          public          postgres    false    278            �           0    0    OrganisationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);
          public          postgres    false    280            �           0    0    OtherSkills_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 75, true);
          public          postgres    false    282            �           0    0    OwnerTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);
          public          postgres    false    284            �           0    0    Percentages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);
          public          postgres    false    286            �           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);
          public          postgres    false    288            �           0    0    ProgrammeSemesters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);
          public          postgres    false    290            �           0    0    ProgrammeSubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);
          public          postgres    false    292            �           0    0    Programmes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Programmes_id_seq"', 9, true);
          public          postgres    false    294            �           0    0    QualificationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 7, true);
          public          postgres    false    296            �           0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 18, true);
          public          postgres    false    298            �           0    0    Semesters_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Semesters_id_seq"', 11, true);
          public          postgres    false    300            �           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 23, true);
          public          postgres    false    303            �           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 3, true);
          public          postgres    false    305            �           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    307            �           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    309            �           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 32, true);
          public          postgres    false    311            �           0    0    States_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."States_id_seq"', 5, true);
          public          postgres    false    313            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    315            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 236, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 90, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 122, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Subjects_id_seq"', 7, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 146, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 52, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 973, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 198, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 209, true);
          public          postgres    false    347            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 315, true);
          public          postgres    false    349            �           0    0    religions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.religions_id_seq', 2, true);
          public          postgres    false    352            �           2606    33744     AcademicYears AcademicYears_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."AcademicYears"
    ADD CONSTRAINT "AcademicYears_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."AcademicYears" DROP CONSTRAINT "AcademicYears_pkey";
       public            postgres    false    360            $           2606    25007 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    215            &           2606    25009 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    215            �           2606    33655    UserBanks Banks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."UserBanks"
    ADD CONSTRAINT "Banks_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."UserBanks" DROP CONSTRAINT "Banks_pkey";
       public            postgres    false    356            (           2606    25011    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    217            *           2606    25013 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    219            ,           2606    25015    Talukas Cities_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public."Talukas" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    221            .           2606    25019    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    223            0           2606    25021    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    225            �           2606    33638 "   CompanyRemarks CompanyRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."CompanyRemarks"
    ADD CONSTRAINT "CompanyRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."CompanyRemarks" DROP CONSTRAINT "CompanyRemarks_pkey";
       public            postgres    false    354            2           2606    25023    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    227            4           2606    25025    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    229            6           2606    25027    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    229            8           2606    25029    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    231            :           2606    25031    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    233            <           2606    25033    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    235            >           2606    25035    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    237            @           2606    25037    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    239            B           2606    25039     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    241            D           2606    25041    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    243            F           2606    25043    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    245            H           2606    25045 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    247            J           2606    25047 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    247            L           2606    25049    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    249            N           2606    25051    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    251            P           2606    25053    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    253            R           2606    25055    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    255            �           2606    33702 ,   InstituteProgrammeSubjects FeeStuctures_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_pkey";
       public            postgres    false    358            T           2606    25057    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    257            V           2606    25059     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    259            X           2606    25061 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    261            Z           2606    25063 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    263            \           2606    25065 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    265            ^           2606    25067 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    267            `           2606    25069 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    267            b           2606    25071    Institutes Institutes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public            postgres    false    269            d           2606    25073    MenuItems MenuItems_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MenuItems" DROP CONSTRAINT "MenuItems_pkey";
       public            postgres    false    271            f           2606    25075    Modes Modes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Modes"
    ADD CONSTRAINT "Modes_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Modes" DROP CONSTRAINT "Modes_pkey";
       public            postgres    false    273            h           2606    25077     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    275            j           2606    25079    OTPs OTPs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT "OTPs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT "OTPs_pkey";
       public            postgres    false    277            n           2606    25081 (   OrganisationTypes OrganisationTypes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."OrganisationTypes"
    ADD CONSTRAINT "OrganisationTypes_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."OrganisationTypes" DROP CONSTRAINT "OrganisationTypes_pkey";
       public            postgres    false    279            p           2606    25083 #   StudentOtherSkills OtherSkills_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."StudentOtherSkills"
    ADD CONSTRAINT "OtherSkills_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."StudentOtherSkills" DROP CONSTRAINT "OtherSkills_pkey";
       public            postgres    false    281            r           2606    25085    OwnerTypes OwnerTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."OwnerTypes"
    ADD CONSTRAINT "OwnerTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."OwnerTypes" DROP CONSTRAINT "OwnerTypes_pkey";
       public            postgres    false    283            t           2606    25087    Percentages Percentages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Percentages"
    ADD CONSTRAINT "Percentages_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Percentages" DROP CONSTRAINT "Percentages_pkey";
       public            postgres    false    285            v           2606    25089    Permissions Permissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Permissions" DROP CONSTRAINT "Permissions_pkey";
       public            postgres    false    287            x           2606    25091 *   ProgrammeSemesters ProgrammeSemesters_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."ProgrammeSemesters"
    ADD CONSTRAINT "ProgrammeSemesters_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."ProgrammeSemesters" DROP CONSTRAINT "ProgrammeSemesters_pkey";
       public            postgres    false    289            z           2606    25093 /   ProgrammeSubjects_delete ProgrammeSubjects_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."ProgrammeSubjects_delete"
    ADD CONSTRAINT "ProgrammeSubjects_pkey" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public."ProgrammeSubjects_delete" DROP CONSTRAINT "ProgrammeSubjects_pkey";
       public            postgres    false    291            �           2606    33750 )   ProgrammeSubjects ProgrammeSubjects_pkey1 
   CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_pkey1" PRIMARY KEY (programme_id, subject_id);
 W   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_pkey1";
       public            postgres    false    361    361            |           2606    25095    Programmes Programmes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_name_key";
       public            postgres    false    293            ~           2606    25097    Programmes Programmes_pkey 
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
       public            postgres    false    324    324            l           2606    25181    OTPs unique_keys 
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
       public            postgres    false    360            �           2606    25184    Talukas Cities_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Talukas"
    ADD CONSTRAINT "Cities_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 M   ALTER TABLE ONLY public."Talukas" DROP CONSTRAINT "Cities_district_id_fkey";
       public          postgres    false    5184    221    239            �           2606    25189 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    5216    223    267            �           2606    25194 !   Districts Districts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 O   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_state_id_fkey";
       public          postgres    false    5272    239    312            �           2606    25199 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    5196    251    249            �           2606    25204 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    5322    251    348                        2606    33708 9   InstituteProgrammeSubjects FeeStuctures_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_institute_id_fkey";
       public          postgres    false    269    358    5218                       2606    33703 9   InstituteProgrammeSubjects FeeStuctures_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_programme_id_fkey";
       public          postgres    false    293    5246    358                       2606    33713 7   InstituteProgrammeSubjects FeeStuctures_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_subject_id_fkey";
       public          postgres    false    358    330    5294                       2606    33718 7   InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_userdoc_id_fkey";
       public          postgres    false    358    336    5300            �           2606    25209 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    5218    263    269            �           2606    25214 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    5246    293    263            �           2606    25219 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    265    5270    310            �           2606    25224 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    269    265    5218            �           2606    25229 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    5216    265    267            �           2606    25234 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    5252    265    297            �           2606    25239 "   Institutes Institutes_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_city_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Talukas"(id);
 P   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_city_id_fkey";
       public          postgres    false    5164    269    221            �           2606    25244 %   Institutes Institutes_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 S   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_country_id_fkey";
       public          postgres    false    229    5174    269            �           2606    25249 &   Institutes Institutes_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 T   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_district_id_fkey";
       public          postgres    false    269    5184    239            �           2606    25254 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    267    269    5216            �           2606    25259 #   Institutes Institutes_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 Q   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_state_id_fkey";
       public          postgres    false    312    269    5272                       2606    33751 5   ProgrammeSubjects ProgrammeSubjects_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_programme_id_fkey";
       public          postgres    false    361    5246    293                       2606    33756 3   ProgrammeSubjects ProgrammeSubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_subject_id_fkey";
       public          postgres    false    330    361    5294            �           2606    25264 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    302    5252    297            �           2606    25269 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    304    302    5262            �           2606    25274 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    310    5194    247            �           2606    25279    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    348    310    5322            �           2606    25284    States States_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 K   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_country_id_fkey";
       public          postgres    false    5174    312    229            �           2606    25294 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    348    318    5322            �           2606    25299 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    320    5206    259            �           2606    33723 .   StudentGuardians StudentGuardians_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;
 \   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_user_id_fkey";
       public          postgres    false    348    5322    320            �           2606    25309 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    328    306    5264            �           2606    25314 )   UserContacts UserContacts_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 W   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_country_id_fkey";
       public          postgres    false    5174    229    332            �           2606    25319 *   UserContacts UserContacts_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 X   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_district_id_fkey";
       public          postgres    false    332    239    5184            �           2606    25324 '   UserContacts UserContacts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 U   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_state_id_fkey";
       public          postgres    false    332    312    5272            �           2606    25329 (   UserContacts UserContacts_taluka_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_taluka_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Talukas"(id);
 V   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_taluka_id_fkey";
       public          postgres    false    221    332    5164            �           2606    25334 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    5322    332    348            �           2606    25339 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    237    5182    334            �           2606    25344 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    5322    334    348            �           2606    25349 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    5322    348    342            �           2606    25354     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    5252    297    346            �           2606    25359     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    5322    348    346            &   d   x�}�A
�0D�us
��2�6jrמ��cEp��f��D�ô�[[ƒ���8|�E��zJ<%}H ��/�U�]������:P�MA���>��ED��*Q      �   s   x�3�(��JM.�4��,�4202�50�56P04�24�20�3�60�26�'�e��W�Z�W��Y�ihI�IƜΩE%�i�ɉ%��y�@��f��XPP��W���
v��1���qqq DB"      �   �   x�}�1�0���>{Uˎ�$��^���ĈX�������{F��}�%M>k̮'��[���4���ʉV�$�����ӆ��f��#gZ��*�ᐱr�:�Ij��#� ��X��+���,�k��P���|ܮ�#&B�,�+_�����l�      �   m   x�}Ρ�0EQ=�x��u�ih%$$�#+6��YK�E���:�����O��B}�ةo\�Hْ�ַ���^YiƇ�ESٸU��		j5�Z9в� ��ŵ�&����6&      �   �  x�}��n�0Ek�Wl���Po�i�ƀ� �f6�Q��Z�Ԃ�����C��|���'G��(���uT�1ȗ�#�}
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
5&̆�	����>�Jw�.ӷ��3	K��}a�rے\U�B- �v��|�3$0�u��C������@����z8U�$-"1���'���gi-�hcr]H�\�;0��E�>�-wa3��jp$�j�!��mi�i�1�3O ]�_����G�=�q"D���3�`� ��~8'''�q(�             x������ � �      �   C   x�3�LLNLI��L��LM,�4202�&�%������������������������~Y�=... ��      �   t   x���;
�@ �z��e���$q:K=�͂[a��?�BT�<�s��3L $H[í�хc�| s�?�N�8=��>v�n����&��G��p��\�hd?㶮G^#".d6�      �   j   x�}̱
�0@�9�
wiI���]\]D��`���স���^m����m�f�vu��@H���(,�*��3ǒ���(��if[�|�Wx�A�T*��{�{����)      �      x������ � �      �   �   x�}ν
�0��9�U����'Q�M��n�nV��Z���RJ
���9���2�mݖQ���E��(I@����.�����]Û��I#� �>��a�2�
V�}��f�RJ\���r���uz�_���2� y1T�~JT�U�ԟK��R��A� EH��� �|�W      �   E   x�3�t,.�,.I�+Q(�OK-.�/�,�4202�50�54P04�21�21�366�60�26�/����� �S      �     x���MK�0���̯�]2�ls�K���%��[��e��=��xr{�'��Ӻ\�.y����B�\ւ*N6N[f�|��I�wE/i*[�㚵"O"J�����c��G)��>�8�y��Z����۸mX�����<#h���h����i���%k�.Y��C|"��[FƔ�}������g$��aڈ���b'?^6,U���ǐ�ږҖ�}E�p�7?.7z�ߚr\1�ؼv�H�~�5����9"F���c�7��ߡM�3      �   �  x���͎�0 ���)|�
��[B�6�h�F�S/.8���þ}���Uۈ�^���>�g�16�2N�gp��-��������E�H9�%(�e.U���
S���� J���4�[&Ji���3/�?�e�T:�N[�w:w�VT��$�$`tl��Q����e{�J�ܘ�i ��wQ��i���Aѫ���#�T;��2F�Y٣��`�=n�^�	`�(��rN���^w������=���>馲����3%��7;#��İ?��X4�]k�ܷ�4F�6Ʃ�t�n�9F�r���e�u3���J�>Q�K�<��OR��9��_~������U�K0�)!)���{�ˎ,eQJ߽���3XvN���)3�8!�e��g�1��g�c�|�m��y����V
�]{����}1\��.T��������?&WU�
����������]�����t�{��X�+)      �   G   x�3����,�4202�50�5�T04�2��24ӳ���60�26  k�e��Z��K=Cܦ��r��qqq ��      �   �   x�}�1�0F��>Ewd����i��� ��@b	R���I���/����I0��*���ؑ�Z��7l~䂟�����6���A��P�4�#������bň�/J)C*v3�����JE�J�|Lu�e���]	      �   o   x�3�H-�M�K�+�,�4202�50�52T04�25�26�335�60���rq:��%&�($%gcgne`�gbh��8TY.cN���ҢT<�Y��4I�+F��� ��3/      �   �   x�}б
�0��9��%�r�4mV]�\]���X�(��*Vh����N�}�K*�E��Y�n��L�H����k��Hl���c�1N�ljβ��t	9͡�k^ìS����`�1N�t�g�v�Mk=ZŎ~�J+vqSb.�H���;o�"��S��I�yO�      �     x���[��6D��U�0���Ë�
�2��蹓�%v����+�X��H��r���!U���O���ZO������������Y�S�S�~t�o��N�[��%Ui}��F�s:N�E�X1�J\�9@��t,�`9�<��s3�F�ךBpv��ZJy��L���0�]���t/]x�*����.��`���v��d=�(���JUb���{y��Riq>�
�T�v̶���8W?f�(�c�>�K�N�[^)�J��GB@�g��nB`�^ds`��ԣ��ۄpܓ�K��P�����у%�9���O�h)�L�O�*	�IgĪ�Ik�N�2���L%A ,��|'a�~�#U���J�T����Y:C+j	hI����8Z�:�G�P���<H��`8�GNZT��������Y9�PQ�Zt>��B%,�v�\��X"��8�-�T%E◼Ϋ	�ɞ��^���L���b�̑����a�7�pێ���8ֈ!�}#�DA;��NUR�{<�����]����J
w���)-�Y�W*)v3.�;��星Ŵ��L%�v�U���"��X��ҦZ	O�[��Rte?MK���6���z��;iD��z�۶��d��2	/$Tm���<S)�[�~"?�c��(��-��=��+������I���,>fB�T��V��ٝ4㚣��^o+)S)�:��?�w�,�X�~P����Jր�ծ��KeIP�J�*!z/P-�d�s�C$��"z߱���G~_�d���$��i�mQɱ l������w�oκ�;SɁ�o <�b5:�v�L%���V�Z:#���^���Tr���@�/V=-*9�cf ��)���g*9�[� ��m��Trx�LA�;�;�s�S�x��;���#64;ڦ���0e
������L%�����H8[v�M��.H�=�4�RVP�R��}5d,ŤG�e���6�������N�y��M_�����K���|��oW��T��5����F1�u+v�Rs�b�m���(���������2�      �   \   x�3�tvp�,�4202�50�54R04�21�26�3�4�6 ���rq�%��$��B�2�50�50Q04�2��20ӳ�0E�[�+F��� ��'      �      x������ � �      �   d   x�}̫�  �|�W��> 7>�f1[l�R�{�A�g;c^T���aJ�����;
I�_Q`([��.jl6/E�)ץ�f?����ձ8��սg��\�-�      �   J   x�3���/�H-�,�4202�50�54U04�25�21�
i�Z���2�tK��1ƜE)��y���� �,�      �      x������ � �      $   �   x���K�0еs��Q-�u�p�/D�B] /g��F��#�db�%wæ^�]p�(�o�J�������Rq�\6�r� ��?�J��%%ٔtJ�����%xu��RB��>�4.�Ս�s�ҝ[kO(�6�      �   n   x���1
�@D�Z:��`!ͬ{��c��D��!`���
A�8�;wp��:ܜ/�N����0��"ƪ,azӒXC�V��aD[C�,��7ނ�7�>�$	���@�V�      �     x��V���0���p�����!U�	��g����ze�����Iqh�E���%,_����EH�A�!�q�+�c����׼���}���~���~�A���Jt��]��lLՇ�Ʌ�_"g(����-��$�0�8V{��|�@�+��t�\َ]��V:h�,�B���V~�j�Ѫ�Ť�+�++(w���]x���zվ��Z�٥1�fZ#8�ι�7Yĸ�	M��ע�\E\��E$�Q�O	"�U穈t#"A���Yzm�Ny�����*�U��KqA^Uh%_�;���@c��H夢,v}���XQڵ6E�pG<FA�&�+�Y���Mz�2r���g��W�����G�9�B��e��E\�� �������!d����-
�=�q�<���p�K�(� � ��%�C�b7(�2 �� �P<��=�d���4R|EA@��*�γm4?Vܣ Ʈ3�	1S뻯�C.�x&�� N ��R<C}UMc�1�B���	���N%��C�ع2os���P�B�z�1��4�;�T[�+!��(����i�����j�*���(�q����ð�#F[a���5���p��	�G ���R7Fz����Y;��y�㛊�� �*���O����u���      �   �   x�}ϱ
�0����)�KC�.GhV'����B4��зw��8���Op��5�������25�A)8kX��j��"í,ϡl�:�9�#N;#�5n_Q��0�Lg+�oE�e�ci�8��c8�� j�k�WT8����F��9��w��_��P�      �   �  x���[o�0 �g�W�}"�5��ԌnPmPդJ{q�G��xKB����ХP0�.��1ʧc�$���=�0��jS�p��Ҭ�6����m4��J���iD`0x8f1�|0�/M�-z�0�Z�2Z�5jŔ0P�2��8R"~�E��O�J&\�J
�'*!��,vJ���\�뭏!��8&�enu8���U��q DL�q/� �*<���H	zW�*w���q���Sڵ���]a��܇�Mn�u��<�d@ �<I9�0yI>�%��DrAh v[?խu�.ë�im�iM�>��n���!�ӐД��;��l"�H@O�nO�/u�4hh���%�)�]���� ���U��B/#[�x�
I�$�Jb��?��߂�n+��~�Av�F�Y�v���&p���<����4��i,4��~�Av���ݘeQ�ҭ��C�dXxJ�z�,���(��qV��x�宯����~#�nm"!���4E��l�����]��.�qVI%;��*&���p���ڶ�j��[�ײ�\s�Y7�����r�*�,��t�l��" q4^,v��p�,��O��9��)�#����>����d4y;|>^�8��Φ����ĺ��Iv�>^O�9��%���Q�|I��>��(��)�=      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �   �  x��Y�n#7=�_1=$R�4s+P�E�[�@�^�Y�k M�w��R�8�%�rq���'�|$%�n�|�l����������?L��tw��x����Ӌ�~~�oN��O��$?h�n�|kyr�x\���h\���gϬ�������������~�}zy�z�~���Q�>��6��3�ز��م�⭱!�l�L�a���x:���W���;������8}�힦�����4����~w<>|}||�a��'�����r��W!�D^e�|���������/wO���i��8}�?>���������鳶v� �4�k�,���;��s~���*��#Yy^�s�*�PpT��яT�\^�l�C#D��������IP��'�lTW%a�ʋF^PB/��� �|6�W-�ଙ��Q@p��|6%U�-�m��(�j�*����3#$�(QQp�5��*I�KP��Mm��(`um�+W\��QWr�֪�q�����g���������`�WX[�=[��Kj&+s������j�40`�+g)I��D�,�F��V�����R��d\��� ����`]�0W}����J��V�h�S!*
X͕��o��ͱʒ�8N�������U�3,>��;%
T-ͻ�J\i��܇��Rd/��

T-��p%�����&xR�t(P�4?��rI$HI����
T=͏�4��Hl>�k�h(��dO�	� 5/+�5�7T�Cҕ\�@����ӑ%K�D3����@������% o-�/�-ʄ�oN�:
T�F?��T�ҴK��h,�V���;��r�,��U%
~��au�r�RYld0�V���_=v�0��U&�cDEI�����*`�*H�u ��E������*`�ʓ�U��F�8QQ��cyX|�E��`"UI�����<V���Z���^��|�X�l��h\sߞZ=��ky2�֕��JSf%�ѡ�૿��'��0�|k�HQҡ૿�a��+�+��YQҡj�ƑN�nѝ�7I��(QQ�r:�~{=um����Cl��4nη��z8�	�8���	%��P`�NH,혿"��-�Ț�sׄ�E��vBR�#
�[
�hȷ���a3!�:�XFUH��-�J���H���UH~�A=Fx�N�'�9�Ϊ��vBJk�ҕ�D�G	95B|����o���/)<�c5l���m���E]�j �-�=3��θ�	PQ[��Ty;�{D
&t��B�]|9���|g�����TB����rɒ����Q�N#g,�*s?�X�@h�WE!l�X�~Oy؞c��(�-�um��d���P�[8+��h(�giB:bq4���J��jȣ����u"V%c�����cQ^PSҡ�*;de��`Zh6��x�P��*;�W���d���U"W%���}ryT����P��*<xV.Α��~
1V%��x��_'O�;��P�� ��(�      �      x��{[�����s�+���vb!L��ROGA@QQ�D�@.rT�������{��k��f����3��Nd�Ǐ�_��H9�r�_L�a�@��9�=��v`����(]s{'{��D�y?����q6s_�҃y����1�}�> �p����$��� �U�����
%*�B'�ڴ��� >��)v�����.�����⣹�NU|ď饣�SqI��!i�쒈��?������݊�?�����C5�>Q�� ��ݶ�+]$_���p�JxvO;Y����p��*R�g;]��˯Ό��a]�B��P�M|�F�!�bo�W� _�:(4��.���.�������>O���a�H��n�r��Ȃ�=�pY�D��C�ɲ���p��&�|"�A�Ʒ��=��v?�1`��X�d��8v���_M�R���l�\݋1�_	^1ѐ?��k�x��98џ���$ F��0���ü�yb�bQ�ޏ�S@�]3���ь#�ƨ�x\�a?9#b^fs|�ԼYT}����J~�QE|��1ԫ��* $�yA���!�	���,��0�����;}\(6	q*�L:9�s�����Pu���t&���1,�M�ն૯U�X!�T��Z��؜m��6�$�I13�p���Q۫�F�n0W6,������
iT�0�";��BAE��ߡ����c�W�%�b�l�\F\����$g"/Ҿ�	���j<��n�X�W���>X������]��3�B���1"11���3���54VZ�fw��mA���
c/�}��E��6��OF�wpu$'��3c���vF�R�G�j��W���:�@�ܧ��ΧJ�OB��yφjr���,�s]��O�4���ٰ��"co&w��۞O�ԫ7M?��~0��ڞ(Aa�J�]�=����-���)�@���aY_T��,����ܴ8%�b���AhVn�'6��˫���@�S�h�0v�=��I�]F��s�x��f�&��&���N��!��e��ø��37b��m�J����'��'�cu��펕�#�s|� ���S{�Į�'ΉO��䟔���#�΂���pd���\^����L��ũO�`���D��-��mЯ�$e�\����Z�9��Y�dvs��Y��p��f��iW���ؽk�b�UcX�Ӱr��4�ڿB{�?���B����Rȹ+݈����b�1A}���li�L��y�\�ب��pz����º�$�fu��L0M��'����pU0���f����� R�l���b+[G�°��g�u��0"��R��z�,�Rs/hwi�UH����8��2�=3>�جd(Α��m��K�>�%� ��1?��vp�bL�Փ�����s	�A����V��fȀh�.7�h:�h)�YzUo��ɚ�\[�G���]o%u�n����V|��~>=�<�w��?!^%즄����,^/K1N�c�.�}-��iq�NY.%�cq�?���وS��^V] ����Jc�JWu��������F`�� �r�Pn�'f�Kg�3qc8��d���>�-������t���췓q�mD�Z�Uo���0C�����նG��k�5�ˌ��BT4nA~:ש�`^nk�g����\ԝau,��F�jh��x�$��T��D��n���Ǌ�������3��w��}]�G>����lI��H�)�+�SuP��������_(��v��}D�í�����������I�2�g�)N�Q ��L!S�Aش
�Ӥ��C�3�q3�P���+�g3.H�;Z�V�$^�_�iV�/��c�����^m��w�������1�q�P��=pҁ�r�*%��j�s@�o�j0ݥ���������� }Ⱚ�Ļo�m�$_�f�v���-��bz��U�N��"�P�j�u��vL�]�~�`.��.�s�*64�e���_)�J���B�/��^��I[yv���i~�/�_гt�Ýv�U*�q|rF���фXN0��+�#�����'���m�f_%�A� ���W��6T���E���#wq�mE����v�f��2	�h:�SC�.�}�Ҁg������o+^'7P5�x�q��@��hvi��O�8��q�����F�6��-8��Ch޲�
��Օv�?FTH��lm�*�Nw��T��A%�����)�x&b,l���l{$zo)X,z�qv�&ӽ�b��c(����R�LN���3K^���w��zG1�5��
�<q�h��h�7�m��6s����BI�	��9)E!u�9���Ar]%~?�ݶ,���1"&��i��D'w.�= �*5�dӹT��!]��[�ث-�	�F�/����$}�?P���;��"��	=RtM�0�o�����.�ó_��mh�OH|����M�J�5{�ۚIu���w�;�c��uD��I\.S:��N���p��ߜ���D��Zю�b�v��O ���$�*>�lv�߹���
 �k���+�;���[ܩ_��P��m><��`3	��<���"�1rn�<7	����T�nw�M��z�J2�!I�$q���^lz��J63/K�~����~���D�;u�d��5v�^�8�L1?����yʭ�bU�>aչ�]3lTe�O��*dW�����A��>�9-�9���Q��YEQH��8ˁ��)��9�
I���=EfJq��t�2��]�5$1��O��@�}��n�#�W����6�m:QD���è��4�zhNY�� v�y$Γ��H��U��S`_��W3���'Z	p��tt��Ȧ����� �i_҇�0b�;i�I��`��~�!�ej��X(�JG��`�v�/��ī�����B�O�� ٕ�[�=�q�����M)�jPI\����ٌ��ri��W��b������-�����G�b(��*R#=�:ET�$ڗd_][ϵ�V7�i�#}�~��#���6}��$������\�,��2c�W�4f0i��8��d���A�=t�QH~��.]ز��5'yq�lp�L2	����`Qn6W~*��b?Hj�־���-����o�?���:�X�kB�@	
c;��-��*[��Qԋ���E"b�tc��v�wM6ـ�f�u�\�1et ُ��s�~�ߺ&+_Ϧw��kU�W�N]h�h�Ųoϭem���TNBM��Y���)�Gl��~>:�d��x���x%��:\�����zLA�����qx#'Z����2ǁ�k���zpg%("�
7J=*C������MNy<�$�X%P��_�=���w����e����ͅ��nit�S8.v�t��jy��irVpdCu��+�T�x:��J���>��BĶ�a�m�h���aW~���̍�dRM,Ěݏ���>m6r�hQ�
�Ұ���X_j����A�-��)����`][ ӕnZ�=А�P�2p����{��yJ"��-�ӛ~�p�2�G;Q�4w�dp�k����D~l�xW��{��.���I�d���:� �|i�_�5X����'��duLRW70D�b�'�R�38F��,�|�& ���t�˶.�d=�p�'�?���U(�u��1aE��H�Ū}���X��t���� -�w��z>��gT��O��ނӧ�aC�bd���|�{3g��؎b,���x��`��x@K��|&7��ԵW��F�>�M�z�[����gd�g�l�|�*~{�,���x�d����W������P��7Z���w\d�5��UCW��v7s��kL��0�a���`���qݗ�L��'�9Os^ѝ�(��)`��r�v������
u�a!  �q�m�%K;�!��+�G7j� ��,ws�\z�nV�q��X���f򬩫��yI��9�V5�u��ݭϳi������ڄx�	����;M{������!�Re��-��g�����7�vGJ{�=��`��P4Od���)P�����D��_��~����Z÷N�l�S��}B\���'�   �pf�R����!i�
n����I�s��/�gZ�þkT�C�/��/���h6DJї,�x���>��7(=���
Z���ɽ���7 ���Y���8E�ߚ���d���w��s�:E[��"�d����T�*���J�Rf��y+v�:��J"{�5/E9U.��C����=j!����
z�7���H�5�z����FE�T�RR��|�b��|NL�Ӆu��z��g� �l	iC����K���o_]X����&j]f������P�|7SL��}��P>X���sp�����/Es��h��Ίzȷ$�y����߳F��	0�9x��v�n�=Ԩ��2�=|�d�y^X��H�9W����z�Q!m$�#�ۡLb�FQO����-�c 'ZQ��h5J��W!�^�^,{���]���c�Ƞ�C�
���tH�xW�` �/�����[�J6j�����Յ��f:���~x�)�8�隧|�0C&r�߀�GGL�O��|�!�wi~ׇd�}���|4^���'�J)]h�i&D��Vŉ:2�� lԝg�L�ky��He4R���-���\�CŰ'�ȗYP׽�sq�.������Z8l�=ظO��X��?Ώ��p�{ⰉL�;�Mڿ-d,��*ǭ|5��Q�B�[e��&���PD�������.�m�n�rr]�2܂��<J�(���&����Q���U�nL׃!��G�|�A���*�V�m��!Tu�� x� U:�+��l{L#ok�L�љ2f�-&���3�fǁX���R�#F����0���'B��uJ�i봒y��`k�����@����m�m�Aoc�߉���F�-��>w�=q�S=���嫅A���Iw�x=���
�ǭD⥇�c����o7>�K����Bk=Hbo���S߲�-p��q���沚�T������ϖ�Aa��)s��\�g��]��,,*=N1�f���L�y�K��6��t<@��j���YbaZ_q�K�)�����Ō��P�_P|�9�S@-�����ٟ=FT�Z��*�ߠ=���wfj������t�<�0;���b��k�F+��ͼ8�iY{x�b)҈iӭVU*�l���c��'�׻)��p��Jb�P0�Z*�1O�9�h��r����4
C�j��ʵէ�������������!b��%��ҥ�Q,�_��.mZM���FW��g�������,7�+Ӻ�ê���t�c+�����Z,m�=�(����i簔��l\Un6-�)&,�����Ś�yr<���F��OgP�y+>*aL��Q�&�m�.�rs�ʗ�d��E�>/������r�N���cr�����a*y�??T��j��Z�WZ�%����]�o��F~�.O6C3��NU�1uU���_.�p9��s�ix�V�5&�%y��Jfd��Z�@#a��ߣ�F�0�����͔p5=�qU��H���2`8�f���.�Z��^�i��dT��P�/Q���7�L�+��uZt�%m�{9W�l����L��Z8��_.�$����&/p�)-]�_�f��+�_���l{f��v�Z����T-�R���H��2-���Z����Zߴy�G��?�A�[k6^�~Fu�`Z~&]����+�G5�3�-��bg��XU��U1L5PR^>>�i�2��E��^�y��L����3��g���K��bԗ�t{�D}_��L�tߠ��=����@��Vvڐ��ɓ�U/��QSh[K��)J�T1�s�ǻ0a��\��T2�VA�s�4K����n��0����J�_�Tj�m�hd:���{��ޔ��ӆk١���$�&;75w�It-�1r�}����޲&�@��=@�
T��;�l{L�z?�eQ]�l�G��>i�Ģ�Y!�-Q�����8�ιdCi��ca�_g�n��oY�v2|�����(Z�0M��O�ۇa�%�C�czS��=9LW���~˜9ǜb�`��a�e��$r"��a�����P�������8	�]T+�t����쩹cgI��+7����Z�r���t�I��c#c<��ҷʈ�o2.��&/�p�����`�f��=VDن؄�%*�qu
1��_�����7���LZ�7����	�d�W{�Q�z7��"��5u��q6n[ש�xq4�Y����������,FS-v��������?�      �   i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�      �      x������ � �      �      x������ � �      �   p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      �      x������ � �      '      x������ � �      �   `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3      �     x�}�?O1�g�StG�v�\�q�(K���Kń*�_�N��'(�^��{~�p>��س4^����v�����.OD��1�i�|����R�pvB3bE=��-d$��'�4,��]��WSc|=��!�ݟ���:%�F.�I�N�H��jș:�&�@�
��j,�*׺��C9ǺLp����}]`6/E�S��f������U��B�q���(b�%����}��`o�[����R�?gċC�_�X��      �   �   x�}�1�0����W���r1&c���\]D�,�v鿯C��>>���|����b)U]*.�
��U�ٜ�FW4�<S�Ӳ�ȋ�u�*�}�X-!ml��Ֆ�@�^�6d3��"Zh���ʻ,U����8/떤�'�}��+:���{�@�9^���!��kj|      �   �  x���͎�0���)�W�|����iiw� bf,5J�Hy�:MC0�g$v���{� t����_'�u( F�Tħj���!�7*-�_�ug�+@�it�v��ì�A�2��Rm�t�������|���=���2�_р���ݻ�݇�BY/�pS�'�G[7�h�h���s�0���������:�Qk��t���
�~���>W�yg�JF5���h�M��f����aZ����9�����k�7?���"�Ȋ���~q�P)��vӟp��Y6�j�o�9�:5ڄiC��?.G�U~�M����P�k����7�"Y�Ŕh��2>����q!f�t'�-SD_��O� t�}�e��%QB�������fo���JJ�7%uBì�!k��pW_�O��$�N���~B��7:z��IM�re�ЫM�o��<=�S�&4\��IUU�_�      �   �   x�}ұn!���~���Yl�ؓ�K2fK�R�H�S��/K%���?�d�����x���dra�RT�zҙ_����WpZ�:V2�8�JWQ�p_��Q���c�E�C}7��8eS�*F8֟��Bɋ���Ͳ~m��H�$��K_1�G�����i��ĺc-��Wr�ۯ]1þ~,c&(�x��+��Z�a$P�l)}Evp��$�W��LW����v4��PK�+�	�*�=      �   m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�      �   �   x���Mj�0�t���I��Yz�ޟQ�hS���,_��嗀$�B�Uț��/k�;՗��S����ˤLӽ�;eak8�c^�=��YZ�4:����n��I==��@����ݪDͶ��ɶ���XLZi/Q�KN4H,�L�4��y���"�kߟ�u|�'K��(���\����E�ڮ�sʈꎽb(S�J9��^��	���      �   �   x����
�0E��+ܥ�y/�`F7AD�c�ږ$E�Ф�oAP:T�ˁ{8���ٔB�y������r�	������B
�m��R���=��pb��W�\ m�@�NkB;�fY���䍇0��0���������\U�*
q͹�ՙW�9T�O�      �   �  x���Mo�0���Wp���Iߪ
-��
�{��E"����.�~î�P��D��536��b(�l�Ŕ�%%���,�',$�ߤ]զ�T�(�.��&r�唤�/�2x��Cw�q�5��i�s�,åH�_���S�sxU�Ä�Lb��"b�xRs�k�s�y3Ɋk	)X�7ev��i4��z:�S�6)��g�w��9}B9lT�^&z�Ue;��C<w�Vj둹$Xr�q�H��4M�JXl�o	J��2��8һ�u�#�q��G�]�ʅ ���X�^�ހ~ڭ~��y�I4�Ko��u1N7�}j�z���)�����^�B�J�3�������=��
{)�t�m2�������'�a�L};C���J�$v�K���{�8�c��`�������S$I4�K����~e��<�Z{      �   o   x�}�A
�0@���)f_�Ʉ�f��u#5)FH�~�W\���๕�(/{��ҷ�ꠁ���c�\0/Ʊ�<X��}����:�J%�K����hz���_ŹG���*`      �   D  x���I��0E��)�O����!r�>F�_�ı((-��ݳ�� ���~~��eF�u#~v-�1f�?0u��S����%�N5j)�e��AӺ�:�m��XNR������X�7���|dI�%��|ˑB	Z?��k��)�PxŒ7��n_g.Z(K5f9� [�l[���Q e���%鄑3���Q(KU���J����̣@�������,|�xHB]�2� '<��k�(��I����Nx�~/;R -�m)�ȡ��FK��Rhe͑F����,�(�M��̞2���Tc�:{<
dS��2{&IG��Q��A��y�*�l���d�D"�n.j��Rwn:#�ѳ0���c���������Q[�=&�,��+���jI|ϑ�y�z�3�F߲��Ύ��,���ِ���k9B`5�R���l�I��9R���̆p�&��F���hW�zA]y�K�.V�X}ϑ[/h+w�H�q�9�W�<{<
\����֍�V�4./|+�k
��s����J���t$�s�0~��?<�$.c�K������ d�W���1V���B��DA�<���-i��n��ͥ��7��\      �   t   x�3��M�H,J,�()J�4�,�4202�50�52T04�2��21�326�60�26�/�e�鞏�K+S#=CSc즠�r�p�����)8������iL��L9��KK2�hd� VCD      �   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      �     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      �   �  x���ˎ�����}ЂH��x�lHv�������\�y����.K��Tsp��ϔH���L�O���s����;��יٕ�;/s��E<,�������V�BGj������Q���U.����Y����������2������)�>ϒ]������`������r�&xT�1��|����wJ����J��|����29ND�#�w8mm;��dS��_&�<�Ifg.�|$�%�N ����.�a�M��ng��#��꿮�:�M�����z'��v�Eq�SG>S�D3���w�>$~�䒏#�T�Dȴ'3k���M�d[=]��'�r'�O�CZD,q��g��!:Miw��D��A��*���V���`�æxˎ�����fd��T�X�J&wT/���d$
���M�Kdd�G� PQl8o��%.rW���d��7>�:�M��J) �=�H��9DWd[�d3�f��Z��r�+e[�������.��������^�8 �s�Ȋ�H�{��%2rf�mn��K>�c�U<^_&#wޓ�Z�Y}7�&��%���J��n�p^T�2���^�٫D�����:^�٫tY���[-�`��^���ܳy�5��u]�Ϝ���W@��qO֨	s��q>�@��K�����ht����"��H6�+䨋�=���'�Ct�?�S���h��K��~�U!�dS�rΑ��=w�;��*Dl�M>u��[)8�.���g*z!�I�L�{&޺ǨK{־!"YW�&?P/�r�;r��G��j�#�T/��8�E�S��}4?P?/d0u���u���r��T�(|��g��3�֬>M��z�ï_�����-5���^�-f��;����g\E)�&�ꥐJ cû�}�QU&��V�v[������1pKgq����\L�2�+���6��qe'�w����M�Gn�J�1�gl�WȔq�agr����=Ҳǭσc�곛M���V�R�6�B3��*�p�����5v�'�ui	��;	��é8���Uxt�}g��i�*��Al�� .(�� N� NK�yg�jPНt~?�x��l� ��E�}ݪYIX����fug���p*MUe�(8�e*vQ��6uP��(d���c�L�|͋���]Z�<y����8p������hBG�eh�-h��J֣ú9��c��S��QV��M��u�����L������{tn7{�!RF�m������'��2�R��\� �U���'�'�NS�)�33������@�L:�C¸uj����l�5j�>&TO�d���ށ/��$�fNmz��}�6�!�;��%�al��_���M�ʾ�Z�aF�鐲L�+���f�n	i��2te��b��]���pT��X-潤�n�u.��R�m��%�frY�ҭ��L�p���e�֮�-�M��2>�e;�خ��[���$���.�n��*�Y��_�������?�������V��؂�۬�*�Z�W�U?�c�￐����o���}$�Khc�����@�(���:�__��9�w(%kۀd����mѽ�Y�����ߵ� ��8s9�t�f�V;zx�^�%��ީ=>O�gO��a�:}C���4���8w�I�aP�
���jxn��[V'	&�"*�復^��Sl�jQS���o�Ƈj�T/`5���|j��D��f��Wf#a����t/E�1�:�������ܧ�[��ט�
�NC�ԩj��O+=���#�[>E�0M	U[���y�T�V���r�x?�%��ɨC�\!e����������������m�,0n�������mB	rZ�8�~혖��*����r�����Zw=F�rȅ<�[���tUn�\k�޼-�V�e�*���T?��w�"���N܁�(U+446�`��>�\O���\9�h�xF|�J��Q
�O�(�ơ������hWcYGr��CEGR��qYb_��p��PZGC�9X������T���#��n������!��[�ڃ��[¦��$����|~��j��L�/�=S@Wۻ��@���[}6��]��-��N���-Ϩ�%y��Ǎ�`|j���.����~>Y�X:Q��tt\`���Gu0^��/_Q���;d��N�}�|� ?x��n��Į��ۅ��rC�*�Uҡ�Ig�����酮�κ���	}T;zz��`��d��_��\�
QT=�t����#�������~ڝ��~�:����+'���츌>�ԩ\�#��	�}P�+�v�O_������Y'S�O�5>������_�      �   �  x��X�r�F=����P�/8َ]v*e�e��/��Z")TT����` CPR9E�B����z��L���Lx�wUW�Ú���u�f�Xe�7ֲ�,^,7���������l���~������o>�����z�$���B��/��
[rQ_xm�T�h�S!J�Jm
���rL����L���� �yc�� �i����}��k� >�q��U�cU(��#eil�\!}��(�j��~V�v�8����Z�.~-//�*���5y�)s�Ջz�`�~����o��Ν�ַ&o&ݣ;�u4�����6}(n*t�L��p%Z�(�)��CB�t�.�q!�DX~�����S�hN�y�_�R�Ľu/8�(��)�}�6���^��~��f/#�ꮮ�[-���db�J�T�6�4O�	���PM��:5׸>��Rn��uz]fmR'S�����g�R
)X< sO�i��ֺ`/�"�B�\N�sΚ����9�j_cIT�d�Eȝ�ZAE�A���j}��YJSJW�GܜZɍ�(�����z'�7�j6"�/>�I�N�[蠐Ό;Ϭ��g�q.9�`
NWW��L��x�?T�<�ƕܢ ��g�֤�d �t�*��W���Od�P�Pڟ�7�62ЩtK�푄��'ŧh�\����М-lPCO�5�S�Xa��BCY:IP����^2�M����%YM��a��6��my�N^?�D�"M�-\p4q�E���CF��&l.%Ev�P.��t�,m>=R<3�Q��s@�����?�hx��[:��N�ۨ��fxJl7$hO��y� wF�O����������Q7�(�*�-2APNѫe)la�P��-T������^W{����'�����jǔ68z���V�S%�Jg��6���m���;,�ᱱ{L�]�����hC��jb���m]�@;�(�O��EO�z�&x��`���Da�'�X���꣈�&V�҄�,0��\���D�T��/W8�!��~\����΂R��R�x���'��~<��5���awۇ/�`�Yh!��qZ�f�Nt��(�$-RN�z�#�_/'�6�EuX��������Mk(�@�
�.(6��ۋ��tQ
��;�1�/��6~M�oFY-K������b>�
#
�C���4b8�6�q��6�~Dɶ�����{���S�d�����l���KĪj�Śc�֭Bqu�}��������}}�wxS��"���x<�Du�qe���%�I�L�Ǳ��*>{�����N��2��ZuT\c�O���f��
�<E���ߔl4�i��T�cKt^
�8I4�O�֦`��a:�mE/�"�����2*C���P����ħ��6c�v�a5�c3��}W�S P��*d�����R�]C�(9�G���ú�<`(��^y����=�����rW��N_n�P?��/�T��v�j�j�m��Yo�/�p�����#f&�EC!�uS��h�"�/*�M
T?�c><֑Bz��E��n,+���@�� J������
�wPGN�r'-$!4��D�Ok�0%>�5w�ă-�Kv���;�C[����-���a@��ޏ�#�4m	��!�ck5���v��s�R��n�I� F���Ab�M�Cj9Lm*qI���iL��G�pDB�y֒�$�� � dhg�����ɖ�T�����gA���X���L&�,�l�          �  x���O��F����{��!��?�����sY(ڢ�Ezȷ��ؖ��5b#ؼ,"��[x�2�T�N�u�_�&��^c{��df�+��Q�?P�|�~~���1��w���狤�!y�8U2���
��+ ��B�B<'�4D��.�&�I�Ҷ� L�S�9mc&�/���B,;�.�2�!�:��+��3^¡��@8R�5�uHE��m���Lu�r�1W�jU�v���YrP�N43�\a��< �7_i�He`���P���ثk+��7o����("���8��ۜ'��[TP�%|�Ƅ��X�5���K(���'1�fI�a�-�j��b�Z˖r�"�������r9���C�9pnC�|u��B�!���)�G��� r����"�-��ثk;�y�C��/a`ΊaT|Ƞ��r5Vm��R7Ɗ���9jHU\c�T�q ����J�_��Q_��s``
�G��z�#����Yob8�wU��=Y��P�v)�
s�W]H��o���5Q�ݲ�DѶ��y�Di3ھ۵��Bx�'�Cc!�p���$�TOo����H}�a.�Pd��uj�~����Ar�W�<F�teH��ׁ�6��vG�������߲PT����O��Ίbq��JW&|J3�v�-~<���L���ǲ͡%9����g;ŘG��V�7գ�0QI�.����j�(��Q� _���˯�jAr��_*��!�v7K�\Ȩz�}��^'�Y5	��!���q��T��H���>&G��\4; ����ۄR?eh;s�y��&�y7�}>zˇ/��3�v	�?��D���kH4�����W�܆	]��@�Y�h�P��	F��#���At���i�c�V�j_E6�B1��X.�}+\��_�/�s���z��K	���j?#�Q[�H��~7��L"�`¢x�����K�Y�Kk��'��{!��Z��8y�^s��9�)F��>Q��ԕA�AO0�?i1z���2�3�)F� �Z�e���(���c��I�g�ʨ�!�1�n�}��jTWF�}�Q�j��A�ua����ۊ�yw�����ʳܦ�w�UW��W�)�����Օ�lcE\z�tf���E�#���j�.���A��	}���U�
�x�ګ���t� !��pHJ�֒}�PB��)�ՁT���f�M<��'fL��P����h����S�Q��o�ܱԾx
i�e_����+Ơ'��!�ٹxU۫�J��M��z���>���W��������ؗp�\�R��      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`           x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�            x������ � �         �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����         �   x�}�?�0����S�KC.�?m6GQpu�P�`i��o�X!q~���)���1�v\�B���J*�$WL+��kO$l���x��+2�g��x}�$�5\��5��9����Kʲ��]�C�0�$��?[V��	!�C�BF	-M	ZVtpH�v|3���s�=+Qs�e�	��tˌq����ɏ��x��[[mR      �   F  x�}�=o� ����Wd��8�Ö~LU�t�BU+MCD�?�d��Y�����a��ŧ��@p%/%/-H9MNY�k��Ʊ�]Q��4���U-h^�açUuz��tәU԰R�U �Ԙ��h�ӱ:;�	Í�-<�|:� �o�%�YGyz+���Q����1N�����7��;�=�O)��6_}�R,z�ja�+x��m�i�@_c�d'��:VV$	�1�ч���ش�yE"X�w<@V�(��++����1��X	��XV$�`q�kP���ƺʊ���Ï?_0��.w�7�UV$��ӏ�����ϭ�ʊ�� g�      "   E  x���ێ�6�������	�)鎲�6c�2th�"7�M�v�l��i��Z��E�� �����?�8�*O8��l����x��H��9Jُq��L�93s���T�T)��v#�)D�^�!%�$��W5;�_��T3*E|��V��~M�r�E�QaR���rRt=���D�T'T;-:��E�=�������I�q�,j�_Ԥ�M�I�2���E-y|�����V�a��@?vS��ZP�̴�(��G��M� �y9���J��b��P��\��2_����߻�m!�P�g$����#�����{�D�b���^OFoB��������l����,a�x�����⹈��w�ؔc�i���MK����.�ٸz�*�e�UZ
�"�~uk<I��ޒ��V^���J���؞Z��
�����|Ƚ��������3h\�wa@�|����A�9(;�@^����4;M�,���ABSu�
p5|d��A1	�(&��a1�J�r�O��!�� �l��l��cQ4����3j���<��'�u�%OUW��2�t2.F�c-���O�ƅ�hV�a.y�)�������Ϲ�I*����nDE�����_�>�=�^7��'����,"D�_���i|� 	��Z��Qe����m
XUmQ�:������v7MW~�+������oz3V@# G�>����S����m*���ί�1�������oHs���wxI�?���q|���ge�-�""��\\�~`�&:�����y��L���Ҥ��b5[��A^5�J��:Ň�
I7.���?:~��O���a�>�ڻ�����-:�6����&�>�(��Ċ5      
   �  x��[˒�]7�b��a����J6vIU6ތ��F��IIJ�?��=�l�ر��B>����(�0������_�z!<��ӏ�_^><���ݻ'������'��2��A8���$Vܣ-�6=���r����;n��@�$�]�Q�<�</���-��[�������O~�8�8ބ��e���6<pt��x�o�\��������O??x���.�9?��8�CM{�Gf]�ڛO&YX�7+�����q��|��[c����S�_�_���]����m>I�=߬닻91����S,�@�gQ��7�)&���)L�^Q\��	��#FqJ|Y-��q�u7(�)�]�Z���g��(���L�9f���̫��N)\ع8u��=#�[�=���/��.�P:�[�".�ڸ˛��Ȃo��!�Rl|�z�M�q�,7e��~=���Y��~\T 7�s�qďD/�)��U� �ES�g�C	l��u�8�lbi=���)�������a�Á�Pb?en��mt_�Em���1�K�<��{J�����t҇8H�uɬ�C�Q���h�3Ϋ'��\9g+G�[H�yn>��>�\	�YZ�L�-itQ�IpN#�Ț,��տYs��3�\�9��4?�TGa�8��X����P>�-��ʖ�)���*�T������l�ÁM!���}2݃=ohr���R4	Xi��.J`���y�!n]�<�(y8��=F��|�L���P�ع��,�x��hJB'(y��,k�D���(?��q�n|��8����Y�ɣ0t��i�^Y����<J^)�J��Q1��Qz(�(��|!����^�ֻJ��;+�ZP���_�Y��A�k5���	|S�>u��E\��*���B�xg4(�[�xk����?_�wwߠ�����G����� 
�X9><��V��К��X�-����)q�6�iB�h6�K�h�Y�_K�<��=��?_�����Zo:���
�nj|sY��-0�c5���у6�Ol���21ڈ�w8��7!-���!�q)�D�C����P���jCj����%�UQ��\m4A��ȞH�P7��V����O=���
�&�R+�;(�GY,.��[<��v(,K���������2�G�KQ�eߺc%��c�Yő��{�|�8�/��+������l�G	�i��V�|R���=J���:g�c�-B���J����ܧ	�k�'M)r�j�K�8�G�|D���=JH���?[�5/��|9d�J��x� ��	�բ��m��E)�c��2�.�ԓs:Q�Gɡp���_?������Q��������7��������9�k}/����G(q��6T�꤂��R��+���U�s�w��E)��ÕH��;-R�i���(�{G�*^�/�q2�C	�9�]r�I��bc�a,�C	��Խ�<�8zH�U~@)�zÕ*���P Y�c[�uQ�b�W��Y\t.`bS����X�r�v��t@Jp�t��v��d��U���g�W����5:��(��d�;_�Yzy����/�^??�FZ|����C#�����=蘯M����u��4��o2\��i��+/����3���9ݯ}��f$kK��5�O���n��Ha��vA|�Fw�(�P�8��N���D��Kk�JyJ5������2K��7�~�������eB�>�6}��:���g��6_*ު�J�� ��J�T.��]��۶`>C)�k/������[��tQB�Cw�׽!r ��6p�S�U<�گ��H�=�W�}r���j��eH���'�d�>����H�|�~H������^ ��*��vQ����N'��|P�/}Q��^�!��:�J8b.C����TM;�y���r%�����]<C����FW����z˝l{Y�E���8�p{�́ъ���\��T�E�]�]\t������	R��i�A���=	�D���J�{��ut���J�A��{:��]��w�I��lk9�����Ik"�&�N�/�
BMPְ+;�'(���߫ix��F�>�;���wh�$��C���(j�gy���	��,_i��w���j�R��,�k�Z��P�a�� &V�Zd�����J:��n������YK��h�6��m�>x�n��RIغ\w��-~�����������7�)��	.��e����>�I9n[�s�C}v���^?=? �~~��e�$����Zl##6�:�v� �,t@�P����iwh\�v�J:$��y����Ɵ�X(����Nڢ��g��u?Q\���:-@C�Ki����KT7uo��?��E^�n䈮�F:?h2Vie^�r0_%���h|S�ef�����v�]�����F^[z���r�%}(a�Vf�X�K�v���%}�(�	�V^�����}�B;�s4���;W�n}�{�QR�As7�ϗ)Q+{0z$��HT��x�;���J�I�:��{�fo[�뢤�l$^��E%ll��	J��FF/Vf��ʬ��}{��C�q:�����G�>�hߣЎ8]����?ӾEI_���F}/��o�e�.
���Z#�õ%@%���
m+_4/����(�#RӥhZ�Qv���QhG����6���Mt:�L%ֿ1zJ������=�AI9��1�V~~�~�
���5Q#�L<f�
��t=V�L�$wb�=J�BKF��|}+�u[�v��h���/��ᑁ{(�#VGcǽ<Z�S��Q��e2�;n��N����4(�#VG��Y�>j	\�Br��J��QF#�U^k�:,���P��q2O6YgSK����Q�N�`��H��	���p��� gҚ�Q�:{�pS}M�kI�5�%}��Fc���� �s�����o��h��?��ߞE}%}��Ý��5��әo�䦹�x���M����
�v����m�`�-P)꛵u���ĕU��,�ɀ=��5��0���뿋@���CI�������.��m�Z_|}�bR�\�[��;��C���� )7v           x�u�I��*��x���"��.�VP�x�W��V��ٱ>�qCz�8����D?�|$�p��"'�/���S��&�T���w��pRFbD����jv9Y׉���M%�P���q:�Ś<Ρk���T�K�MΡ[h�s���e:��;�S�sh�s��{/O%����~R���\$V{��Re��~��'�Au����b1�AK�4�}��8 �[��p ��9��R�L��|k���U܌�V4[�H�J�\ض����ZTW���Zӧ-�6�ԷF־�<���^v�t��m�E�Ӥ�I�+1�oFh��,�������e�*	��i���!4��ey*	�����!{ݯ�$���� W0��F'u��PI�P=\Z�8c��ᒧ�������L�w�>詒 �qZ���<��<@o*!�[�A6Tc��=UR �� ]M��)\�䩤D�^7C�~��v��T�[��URJ\�Z�\cbvP�Jj@�7��n��J�����Ƕ�[~I�(��'	V}����6�@��+wP�������l�����3��cE�^��y*iH�������q��U$�J�|O�%uA�J��X�I���c�I�J����X]ϡU��T	��p����	�5��锡�9s�JpH���tN��"���q���s6���w$�Ι��i^�v��'ܑ����X�y������U	�H>w��^��6������t��5�m�&=@�J�H�� ű-f�7ɥZ��ۿ ��m�jTb���T���ߑ�� tX8            x���ˮ%�n���O��A$���5�<���0�m�>v× y����^E��>����$��R������_|��K�Rk�@�\�����!�)�#�G!�[�G
����?���b���;�R)1`�h1� )>�@<!|u �#�E$�xxD�BA1�Ao%�)gB!C�ϟ�?������ٌ>�f���D;:��\�����i `�y2;w��j��o��%`J��x��y�������E�(O@E�T�`�/������������~��I(f2��ڈ�t��5�3V�U+����_?�﷯?^����*m0z>R�8Z˚�lV.�Qݷ��@�ӑ���GHQ�O�����>�`&�k���������)�S�D,�XJ�Y���ઁ�K��S�O�7b S�T_^>��{.^D�UH�6�J��jL0�E,�9QL���b�����;��:�-����F)˹5S���%��*�����۠|�h�\B cy����奇�!�K��cy�:�@}��� %D<.7�*j͈��j����@A|����:1�I�}���|���k�b�ێ'~@�b0�Y����A@��"f�飹�X/�ՙ�S53KE| ��&bȕ���vN���a2_��:�Zb.3��)��n�A��x[S%�2K��'���)S���:�Љ�1b�cd�cJ��r�]�%�B���Bug��"P=Vձ�U�0�$�U����p��o̮#Y�AbgN�$!z%��j+�U�w�^j�$�G��e=n�R���e���U��+�L2"XR��Tj)%�p�Sl�C�lPWl��fN���3��a�_����!�&��z�*@��4���
�������L*a��[T�	� ɠ1���ݚM��r�]�/\�!��EH��j��ԩ���%���aXf�s�~z5'�[�\�e� ��,�m�f�W09_��E冂;
$Ӓ>y{2�?�,���o�hy�O�܁�P�T��9�$��^Ż�ħ��Ŷo`��R�c|�S��hJ��Mj�EM��~�1d/(ٯo(�j���X/���wՁ�U%3|��}Hj>/l����t|�<U�R)F�]��7��c.G}uL��%;#N��q��f��tt�b��r'��rr��1��4�n_	ݑc����z����A�����Y�eD�|�v�KM�|������Q j��F�+��J���	q�GH���ӿ����>������W��1�����W�#��(�2��BI�$8��P5�7O�8.#F����0�5�H�5u~��E��K�FK�z6��;!IbB�i	R�.�W��l	#�K��$[�t�<�ہ�ǚ[H��R�Cn�Z�&4���&lIE��V7�֐��q�Za3�p1y]�U��c� I4cZR'�J�ʲߝ ��/�ɂ��l,�,X)s(�(_[�����1ޗj�\����� P�C��>$��i�����US�%�«Ǽ"��� m�p��hU�Ȕ^��{�#�&�?o�n+f$���2\u�RO6J"�L���J��z��`�nc�DV�O��K,\u��r	�|ؿ��Th���:��w��;�܃D��墨A�)K�h����HJ�xHy[ ���#��:�w��$��2jM���������KY%����h�Gh5�x�l�Gy��Q�x�Vg�tJ�ŀ�Q���6Uʭsw�[�@��K�.FQ�x�W����T�.6�c�*_bŶ�в.�\i�Ugu���P�TBP�x�%�����r�L!���{'(��r����O?��˟_~���ߖS�%)Ѭ��4�}:"9��>��kHR����ɉ	sto,Ԏ��X�!����d�T�a��)��s�)� �Ϙ�<]��XY+IY�sH�:P�'E�:��h�D;j���YJ��T$9�i=SM�rq]@�N�¾��
�Td]�o,�¼��U�V�A�TkNDm��"{6�RM��vP���%�hlU-'W��EUI����'K�>k_���UeK��$�W��z�1KĚ�ʪ�K>�X�=��l�2)����({��r�XA;$q=�\ѳ��hIuo5�V3օ�u׵�\=�K�_+8f�1A!�(��v�Kk�pkᣄ�dP;�,}�%�;J(����DY?�D[ )�x>�F�=O�rsS�}����>����|u`����A�(^0����! F�R't��aKk�\���>Z�岬�Q��i�}�,
d��d�ie�l��^c�QmONҲ}���QcIN��V� �Ӳ�}�_˛v�O�����UZ2����p���&u�z�5UЋU2�+ϕ�T�t�{� k[��$.���w�C��Kw�1��3�6�(x���N��'O�f/hT���{�8M��H%$v�;?0h7����R����&ԕ��u��#���g/��z���Լ�DֺIBP����Ձ:e�I�t���"_����j�{=�d���*�`��v��8@�TtAE�_MyrI܊&-گ��V��/PZ�ɿbk`nP�:P優$A�C���⢆:M�H,9��x�Բ�5�[պ��LI�ҺU�!V���u�=j�N��HR#��Fh-���1����IA�b @D$^G{a�\ҬTTT�I(�
�G*�4��>i��F�n���r2��k �2�P�Lɪv�P�	�&?QǝC�%�O*�僶SN}-���-�+$����P��x���8[����ĪuR���Hl9SF����?JJ�OIqAI�$N�\!{��:���"!�-o���A��c�}�U'�('��x(q;�B�g��-U�(��*jV�8�9��jG�mR!(mcpQ���5��-E��LIYL�����Ձ��/�J�Tɏ�@7>�����f/
"���<P�m�s����^Ũ�H<�>�p�TV�P۞���1a�J����~O�Z�6SW)
�Yi}�K����٦�l��:�X8��jB�r��N�ն*�Y��B[f��D��@�8��B�U�D}�J��J���5��:��	"�����0���j��]�dωR��
�e�W����mn%��.o��׵JY��RݻV��ѠO��¸�ʨբRCy��wV�+x���U;�ۭ'���W��f�
�,&9���s��&��E�"����Ձڞa��2B��!��[�l�K���Rk�$'�F=Z��j��1����j�(�(��v�C�`��E�$��94�	X[m �%��/RYf�z)T�:��j��Y9'��Qe���=F} �<E�:f�b�q����M��<�鿼hOB�̋��Wl�r<��R7�1��L�5�����ACy�����5|����嫃�:��NOV�b�:X�=[I�n�����ăc�֬�i��9�ˬ��Wd�
�U�0��]8��ԧb�y�,�@�es{�Qm(��Y�J*-��Ӣv�$�[|u�Jg��!fQ�buXX�"k�vw�O�vA{���sU/~U\α�V��U�>��,^�U;��/	�z�&V��plUk�L�*�Ys��;)�n�]FV�+��e�7e���$êvVzA��{��d�Q��PE��\�ͺ����3�򺄽�j�z��zI��Ԥu�fV���౤���Pa�F�6�O,��RC����܃i9�F��=��rM0��?R��â��eiAZuZ��!˵�>�oC��$��$�T����jg��!+�XK�aTk�e$4��kD�+EK��_z��j�q��kN+���y��2�v�j-��m�^çT�����9�Qm�Q���(�f�u������u_�W��:�jMq=�2X�'���K�Q�t��f���!�+X�QK��{z�Ӵ��"�ˆU�c��MǸ���מqq�Dv�V���.�NǸn�UA���՛��咟᣺:�35l�L�j���T} W||��=�q�\����h�ƀ�B`joe�bF�VQ��)�E����tՁJ'Tʙk�P���k6xW���x"Q�[���O�Rj9��:P��}��1G�����
�����Iy�JPU߲-��nT�g/u�Tޯ�#:�=E�����z�64�?��	(����zŰDW�z�21�F���xm�   ��:�oP9a����$vՁ���Kd��P�y�fK:x�����P�œ�_�Y��W�(�I�;.�v�EN[E���T�(<�������������@�6T)JNݜF�q�[
�� bT�(���$KrD��[:$+�=�x�ӤN�BZ��.�x�+��~�:P�UR_1��~��VԜՁ:�
I�%/�
[0JKcT��H�{Dq�f����5;�j}E��TTq�����ԁ:9�@_�;V�ƻ�C�Au�U�v����}���B���{��Z-
���
�f�F˸aW,�w���=k�&պ�xh�jZ�p�XEC�S3��`�����q΢�`�9����h�wZ*�w5��%,���?��jW�%�0���jTZ��N��	T��6���ʈ�"wV�:Pp@I�.�A\P�~w�b�Q������TP������eM�\u��#���>ؚٺ�@]?�Dy.B����`�ZՁ:{�GC&վ|�t,\u��	A��X�F9Y��vT:�+�XU�z���,��S��s�N犠޿�c�/���՚E:�+�:���mpRj�F���R����a�<e-�=q��W� ���)j�r��N�G'T�R	{s���������w�|��f�Jڿ�wJ�G�:P��B���0\�>vՁ*G奶zFy�P7��^�����k`L훌���9��-��F����Vs���om��:P��!`�K��`��v[5D{~�$�so�}0�`}�hT�U��(d��=�~�������j��	s����kMmX[F�~	�%�@Z���,1Ջ\��R�,'�o��A��H�@$�䅫�j�0�+Kl乒���r�2�U�,
�g<�wP���'��5z7���D�GR��V'��"���Y�:PpD�V� ܯH��� �Rm!B�gd�*IN��U�4���ߪY�^2�&aU}������������b}y2.��ׯ�~G"/7H�j�}�s��b���:�<�HL�w��ep8�����Za�;��M0^��/��$n�.��&�a~�p��Y���ђ�XB7n�Tk��Ϟ����hi~�~m��~(rM���Z�"��p)	�l�&�e����Y���>K�����U�|d�e�E����֨�N�}�*uQ����L��x�k�i��+(!���_
E��2ѤN6���vG�Ð$��ҏI�W���ֺ���&�����!���oW���Ӵ`�Y$�%��F:�~�@/`��9�������B�'�������5G_m��]?����^�A�         r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@         j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$            x��\�rG�}n}��7�Q��l�7<1�R8�oLļ���\ ����{����,PzX���"�2+�dVV[�D����9}:l����y��B����������k}������QB��½���WR��m���&�J�7��w���w�6�����|�v�es�}춻����0�q��XLὊ?H��Vֵʚ��t�N��;��O���5��s����D��#��2���t%���/F�^�0-:��j]���Ԯ�_	ݚ���7Q�&|N5������e��Swx5֘9����:]Q�L�"�*�'3E���;����"M��n�k~�N���rw�J/�Ї�GE�d8j%�J�VX�����*�������9o���ۗ��kwj��wR΍��*��{!�J$&��*.դ,"�s���[����m�ɛ:�C�+W&�.�ˏ�r�υFJ���~��o�y���fn�Ǉ�f�>ӿl���7m^�� B��l�����jn�rf����{�v/��8��@��>훋�~�(��%-J[,JV*��0����ͧ�p9����c��ڜ���j�����3����7�_��j��� �4�Aƚ߰����c��}�z�/�zO+!$�#�èbނ��+G*�feL�	L�ZY�:�	M��F����&�OL^������m�Ǆ�izY�x����E����!77VʮX��D�۩;|�������y�o�sf�F�D$��i귌.���ָ�P�k�����j�M+��͙�
աA������?��:6�ɔ����&$2���r��h���/��}��ګ�o0}%�§B��&��K�!s�j�<���>�!V��yG��n�N�YZ�ؙKY�7��1Ds��@J;k2x*M�����ܨx��TG� z�13�3��ѯ�"W�`iv<yכh,�VIǢɥ\�́k�ԽND�L���a.�␽�vR�5�i�R��Y�z~ڜ:
�UE�7�HʶQs�*�$��J��|�Q�)]p9�w6F��|]%�@���2�fV�;q0�J"�~�[��7R��1>cku�ѰRⱴ͇��BJ���t3C�4��Y;��o�,OY�Fx���g�DU-y"��eFcp)��n{U��vA�#⯃A��)�4��gVҀ,�y�b	X}���3Ir�_o7��}jNQ�	�T��KJ�O+���o|l^�}��t:��E�⨯@O�!$��IY��@L���u_��_f�I*�w���[�>#x"�^�6���T�\FU���M�	�a��g�wP���H'�0����o�h��tk�g J�'�{��Vъ&��f��:�c�WM�	�B<;]��#/V6��?�^���-�#�Z�f	A-�.!��r6eUL��h���������ۚ>n����� d,,���hLu*]�cXt�����1R
Se�}�J ��|5+���Y��e�����sp@��"N*�*����8���N��҆����ͥk~EZun��f���;M9̛Y�X���'[�^A�T�����F�J�6,#J��y�3�֛EZO��N�᳴lM(�J|����"�G�?4HR��x|X0�P��<e��2���4��U��*�o~�v_��zU~N7s�J,��G�J&O�y)	��Dbzk����y~씕X���ӘȢT�=7A��ED�k\�����ј>�v��
j��,Uː2[�i��+ɼ��Ҳ�βt	�UIh��1�k��<^��x�S���a�>/x^2m��n�y�_wLF�ɉ,�ĤN�҆��,^a*Lb؟��O/L��7]����fY��U+��8��#,���\�Θ������,���@�o�qTCq��`2)oTpO�ԍj�{�]6kƶ�w��vl�g[��-j��S˩Ç��\������5)�f�:�u�!h��W�-���)�<<�R����zZh��5{g���j�絘KyTȲ�5�%2	t��b�
 
T!/w�R>�x,EAA�ᵣm��5�'Q� ���j���D_��+�{���$R}F�A]��Z�pr	��i�}�ϗ)�v�zv��EP(6�f~���S�
�7�B۬9��v�&�1��p2)ӄ���Yz�o�Ӑ1��"פ< �A���X-�L-8��i�	4��',�<�(ݟ.ێB_������W�`���55�h[(f��&�1����cZ���|� ���k%@��'��8D|�eS*�҆X)���ɚ�H���4(m+c�e�JYH��'��k>��+��L7��z��%�]<�^�&����|�r�6%�)l>�B���\	i��E���Q}���Bݗ��1$��{�J9�~>�}A1Ҟ�0��'�P��mPp���A]����o���O��. �3�R��	���]S������6��FzR4*a�wM�r(fR�b`�="���t��J��>9�)���rH�G�07Iʤ�P�pB/�R����}�e�H��v��(��v��� 2�\
�l��7�6�:�e�0ͷ�&�I� �*�I�o	~�{���x�Kںh��E+DP�>\�����`�.wu��]�2��g�$Z����k�7���w���j΅������w��zCʏ(�l\h>l6�j '��5�t���V�����D6�%c`՜K+�@������~��<�������y<=,Wqt��J�gפ�;x�˥T�!H~;�t�ϻ��u�<�͢<������oq(q)̄huVN�I+p@D|�Yo_�jf7Cd<&i���1-94����K+��D�j~���������{�i�6&�|���/�`�(��w�����f�� ͳ}��,Iَ4K�rCZ�v��,_
�|f[CT�;�JR�U�p����$����S�DtH�����L���	A�,�B��	�	����2�!�\�Hk�/]	����s��2k00�*Q|"A[ey��es���9����`�ݩq�~�����2c��^ʻPk�Щu��j��W�����*�q�
"8�Z�`I����t�.�a-��v�Wдm	kE�3^Z�O4|�k�o�ݟ����P/����������(VZ��v�Ӻ��,_"�ZM*��|*������
��`S���28��t�pN�K#��V�D�������3x��3|{Jߖ+�XZh�VcR��o��l�2ըJyL
>����t:����.>u�[�D�R��І���DQ�V��I������g7����8��G1�j�R�5�WX�+�����0C$]rD`����8J��P!��������d�y0�G����D����å
���/80���^2�<���y�A^H7��\eSE'Y?9�%U܍�,�\Z?m�q�����1˟���䄁{(��UL+��v�0%خ��5�&�ֆ����YI.���Tp���Ks�����h�4��Y�õ��f���
�T�ڌb���.���Q)hCĺօ|��RU�5��>5�p�w<"�i�98h@7������a�8 m�'_x^_ڇ�v�4����R��̭dĊ^�RMZ�E��t���S�3P�@5zh�[T?�"�kb.̠*�T�fƺ� ��R�6�n��� M`���
jr�͇�2����t����iֱ�7�:�8$� Y�KUZA�%���3���-�T�Γ譅�c�&�;MZQ���;��
�H���<�m��I�.�Z�4Xʅ��S�R�C1�5���]������_6�������\��䓵��i��1��
&�����c���uw7�ͷ��^#1��[f�-��'"1l��f�xi?�#��2����G�T�m�|�톴bF�zH�?v�7��Bu�a��`��(Y�-���S��~��D�;�X�#N�K�W����y�:VL}.�:��\�K�"ҊL7�H��;9}�8�B��~�g��6 �aY�����*L��/�9dC��MU8@6@f�k_���]��d�uR劲3/��$�QS5��v�Gv��
e��e;H�.���Q�Ҁ�T]W���
&�$�d�r'��~U:H��9O���
&Lŉ����,��}׽a���a- 3  q�1�2iU��5T�C��@�h/ܸ��ʤT�L�ؐQ�������q�����U&�8:hP�����SH�<�M�}b��C�B������L.#�xn���2t&N����ɋə��[��Čq�a��z�ʚ�!j�b:�b����]LemqjfqV�Ш>���t�rs)�\DB��i�������'YU�f|Lb�Tj�,fTї�u�f!�+I�,J,S�I�Vi�����25G�9qEl�֬wԘ���>P�mH�隲'��$���-��yb6<�G`QDς˥�YE���OH7��i�,,P���SP�ƥX�W�9T��GE�����P��M�?�u��=Xhئ��PJ��?
k#��2UHYL�P��Y�u�� ㋩U��8�m��i��b�\�麗[s\� &���l׶:��ri�h��5�\\��ld:ڄd7��⼴�>��늋	�Rփj:X����p�����]g�=�7�H�?�R� k�������l	LW���ã0�lC�"Yi�M��L�+0f�d5P���w��y��
**[<`B�X�f�MS7�j��0�J+���~��_���МA�X$�o0�LAG0x���/�@B�G��m%&]]�*��&W��P�̰�
&xy[8��qW�1�8oD�m�1��
8w����|���W�����,���T���.x?/���넛�եEӿ���Ӹ.u�V
U)����t�j��`�ԝ�}&hG��=��
,�M8����n?��z)�X>�)n�<=W��r�'nѕR�ǯ��ҝ,zM��]�?Q�5�~��P���B���Yi|&������Ȕ��U龜���h�c�Lp��/�XHU��5�|���*p�,��Y8j	G~znV�xi�a�}Ϣ�ۧ
�J+#���\�+�FVZ1~׈�2Bg��J�/�1"��*\+��(�gDiң7<ߙ�K+#���vK4�|�K+#���?�]�VZ�V��o��^Z�V-s�|��ie�����/��V����V�W�/�|�Y���1=]����U�{��D�(�:*�����E�.+�V �w6��`0�ۘ�����y�-�1!�P�-��-1���s����aPy}��V0!�G��e�������s�y�iS,�Z����A�M�����
p ��l��c����~�C�W��T QF�S(�rq_�Ϡ�D�|+�R�N����k�Z*g��Ji��Qw����q{h~9n�/�X7E�Y���X�;8���4��RZ�;<��S�o"u��3,nH+�, j�R7=Am��h�0ՇkpR�M��,�&'��q ��}�����yn���׸p=Ѯu�0"VʢҮA6�ǐcO���ܻxXR:�d�EC��R1��"ۤ�z�o�cK�kv�fkB�6=D֤�ȶ��qm-��=�`�u��O73�1þ�k�u���{���k �y�*/O��u��9˩��V���Z���ܜ�mȠ0��B�6N�XE�.Y)���R���w�~����*V���>\�[ő8jy�������ĺU�qA:��?�Z�u��GC^�4=��i����w�l߽{���V�            x������ � �         �
  x��ZK�ܸ\��~���!�^�	|��U�)`/��W�Ȣ��W*����o��,�gn?����j�U9�����U��(լ<������ax~_��~���R~p{���+���Ju^�GD��˫����Ju]c\��/K�-���R�ט���@�UsZ%z2�R�k����W����8��\3����ɗH�2,Q�R+�䘨.\�w�D�V�)�ζi�W�i��Z�f�$$*/���=Qj�������rM�;E(�q-��įV_�����"�ڼV�D%��Ji#�i���ֵZL�w�R��!J=_�?�=~�����Q��������)���5-Q�R�kMsm��?E�[8�*�)B���9��/�g{-!�A����#���a�PHuZ%�(U�'�'��ϸI%��T!#��ԧ+q�	 D��k�q�����.�II�]F�P��c�z�NB��%��گQ�v����"�E(u�}v��9A8�ĭ�ˏP�L1!0��
�J�_�%'�o������g��N���ڗ9S�t5<s�m�57��=`r(���zր/[\4�@� I��ٝ��@�ע��F�%(������򸟙�T%7Kp(H׌X��&���\L]üM+�%t[��jr����#�xdv��n���#���F��2DI�-�iL_�{8D(��b���|���*����{�%48�q���}fUS*O17UL��hs��j�G��&�P���1M�pC�驴e�"����L"[�zϸd1L!J1��
��J�D���)�y���h
bݝ*BiB ��1��ŸSE(M�RC��ۢ�zo������8Q�A�D�PZx��ThKMeXU�(�E���Ro�3��U��T�����8?jHO\{@�PZpy�n�ntwl�4��%t�\��nc�}�)�S�(��d�gN�)k`T����"����Y�%���+`��&��6�u��.���3Di����p������f��(���Ɂ����y�Jڋ�����5(i3ƭGT�F�'��P��Bن�mj�~Rj�
*��|�l5E� f2(�श,S}Oo�<�e�P0�G=�L��4�fz�J� r�I���
&���gj���r������&�f��D[A��LJ�lry���2�N�!J�lڼ[�������S������r�ӎ�+�h	Q�^��U�m[�§f�>���&�e��6�{��*��v��y�<�P���r����&+ͷmӖr4.!
&�|�s�c۩�=]���[�{۲6�	C"���<Fp"�`G`!χD%m7y8����`_ٖ�%m7y�����*6�C�v�9���6����FW�PPA�Ӊ`�FZ��)B��O1L�6sEEI�6�B�v<�eڳ�,7�Z9�`�ħ͙o۱�0�>]��	�6gj�&��@P0A��39��)�q�
&�|>2l5mԽ�C�l�B���A"���լ�O(�c>3��h���"a �T
*�|�
�.��jo�CA��b����,jZn09�� ����۶���F�dP0A�Y��NB2Re��T�M�8*��_5��"��p�����Gt�������r6ϧ�ˬ��&�)DI�<XL�R���XI�(qU�b����΀�uT���aQ����&��bZŨ�\לP��S�D�ºR�P9�t���(V_��*rc��ɠ��������)�>_ݜP��S�Cu�yw��P(��?�#H:-
��ٹ��=���쌂	�׀���zFj�C��s�Lu�8kz�6�(�+<�]�����Ȃ�<-ώv��Hf�;/E(�$,����2�Ԫ��%�E�nۢ� �R�p!
&\�����]h��[�3
&\f̤���g�yFIgs�e��N��%�2-S�����?��~��WAG���ùh�T�e?�'g�%�E�^H�)�<�cg�t:�{!U�1���%�E_H5���j����hየd�:��ʠ��ҋ���uK���)B��׏9��V�j �Z��Pҥ�T������@6�X�J�4�n�C��n ����g��n�zQmc-�-����þT/��~��bۖ��%���zQ�ƚDR19��R���{K��������>&���i�,�f�|$��E7�!�~m�Չ*Bi��ͧ��QQ�&�G�FI�}A^�g���`��UZӪ*DA��tT��0>��QP!��K���Wu�~��}����埯�fbvI/Di�4��tˇI�^_�.4��⧦}oz��#�3J�А�c��Ҝmr	Q҅�|nJ?l�~�D�ɠ���b��w�]W)�W-S���3���i�*��9mQ�}�h�����ٲl6Q�}��n
×-��b8DI���ֿ>�����Os�T���3�L�s�Ǥ~FI��0�r>�%�g|�d��Q�}�wL-��S���3�LK���\��P0�LȊ���`�#��<��J�a��Iǝ�rA��nX�L}���LO�t��f����`:k��;��z��Y��[�Yb��t�#����v��>�D(��G�˙l�~ZG�AIw>2]�ܶ�����+B��	y|V˴�4k�����%�ɴc�ܛ�� ���S��n�d5�}�U�g#g�t{T�؊0�X�?Z���`j`*!���L�+3B����<���VGʌP҅V��㷭~r��;R �n�Jv��Iq��d�����۬�щ�ȋ�}ƌP����_}1-            x��}Y��J����_�������Z@���Q@T��o&��m��]��t�>+���\s����N�,;5���ݓmϳ�qC��cf~�i����8fy���Ǚ1���#�)�Ik�Io�7Ùx▋���p)��/�,E�<M>�A�����O'�p���7A����p��8�C��B9�ǿ�H��H�+�O3�bK��v�Sf;�`�ږk1�f�&�����j��:���"�O"�����('��H��^�!q�g�7��S�	K{���(,�%�DV��`��@
)'�6��jK��<��5�KD���?��8�F�Wj-@�jlM��F�sJ�-��r��}C����"M��jN׈Za�4Nd 4- �ᩡ`�Wٞ�W��n3�8�N�^�߈��E�xEAu�(��(f6���W�|�'�]J���η�/����K}�o�I����������� �M�h���1�g0�D�w�A�ZĹk����[@��7��z\��O8uIF��vcc[4>� {����AKVP�Kn�}р�<*>MƟe��M0H�`1@�2���2��{��4�ԧ8	��"/[��ps���2�[���5�p�[�	����	��D��p�`9���<���$�,ü��-I4>�?l�u��n��ee��̎D��9,��˕�q�qϢ
w�O��2�A�V|n<�c�����kc������I��{�O�Z��U�,������AѢ�w�Aw
�����=\RCR[��c��3\H���F�E�m��/�P��ύ�/6�PO����D�q�7Sc1,�}��J�Q��L�i���xB���<*���;�Hև�yQ8e>,�^��g�އ��c8�A�:)<x��Zc��c����,C�L���!�𳝣��(�E\�(�q�8�1K�H�1�ʍ=f�9>�i� z������r��{�8�a�7r�Rk9�J��I��Ook�I�3#�~�?c�5��rk6*z�N�}
��llbʙ?/�	`B����yf�Yh��C�3D��Z�f�0c���g�H��8w��j��QȺs+��l��l�:J����+cuU�F���P(��' �0�&�_�@B��b��WĿ	�N���(�2��N�K^{MPv1Ί�͢]�s�����`�t����(JRy(3�q��{b�ޣ���X=�������o}�3�:U�_Z�v�#��dގ��5���^e�וiٟ���6.��%G�%��8b85�عG�0Jd~��5���QxK�����wBW	��N��Y1g�~K���̦�L=G��.�SpZ'e�Ʋ�� _�!I��9�"^�[j-۔ |�@��Z֞/&[��O��k;;�;���yב�Ĉ�t�9�q`��dq�}#� ��}9�o���@��0�)���� ��4m-]5�<���V�����NݻF;RhRk��:���	~�"�8F�/��-�B���3���)�L�>�j��Ҏ��۳��8���4�>\r�S�B�^�|��%��_� ���` �^�'j-Uk2ߩ�qH��r��6-�vo��Cy�.f�a��'t�!�A'7f�U{�h�ԅm�_�`�Op��Gb��n⮃�d�Qĸ8O�s�:�����T[_� b�~��J0#�NǰS,��6�Q��t����L	���y�3�����'��9K�C��;-�����7�;��]+�tv���$u�����w���鿣'P6���yg9_�5z�}���MbG�&oW�Q$Jzc`َㅺZ���|���+���;=�������}��+�$L�0���Wj�������2m� "��x���;�0ww�/Z�c����K�����R���1ɟjsw\?�@�1C�3���6Wî�hDyq���o���R�'J.�qy�� 3�M�Q���ޙrh|"�ɻ�l����'P(@S�����Z���r�k��E�EH�'�HjıPϫ!�+'�ƭ����E��E���l>���+|���<GCK	y��@)0�W(�K	��K����-�W��Wւ�%�\�JQѧ�q�:����7�ƒ�D����,����u��1��]�e�� ���[��J�% w	�Wp��*�����a�ZR�<:��8�)Yc�n�����Mp䄑�-{�W�pc��b���"M^����f͵�RXFw4�h����r���,0K�������MA���^�ןP�,��1��_�߸�~f�ԄL���5f���P�N;ʌ�z����@�g���w��\i���.�]Z�oa�rZ�F[��/*��Z#'�����o=p��
j�alV4���ͤ��;���p�=�Qܜ�;GUGʠ�ݡ�M蟊�t�ᯩ�[j��n`��}�49�-��J�&�d;�V���Z�5�M�b�5s�]�9����w�|�����0�E��k��*�̫�3}���x��i&ԭO�l�9n�����_*F�[�:�6W[g�^�%�������R�j�p����C��&	�C=�ћRys��a�!���?qn�7�&��$*�Pԣ�c�!�
n)��ԥ8�h�_�e��~i@��8������@��ޔ����o[W������8Pg�ؚK[I&��k�A��p���]�Ɍ�/��}������ln?Z�r-�+"�s����?dU�B�\�h�	?ں���c���Åց\�j�R#O���H�..���mG��,�,8ce;TG�:��-ٌ�K�g�h������;����?���V��c����D���۾3W���o@� f7��C+��k�����H�έ6-o�}9�CRp��~�_0� `h�@+�7�o��WXLU�a1��7�_�w�UT��;1�ЏX��S���?��z*e�&|*a���;�ra:�����}&����e$b�̗�x�g8P���2W��JM���Z �F���i��2�HS�m��I�c#h�X����}�$���tjĎcuڣ���.��dPu��J��[�d�qÓOF� ���8(���F���C���|~dNҸ�M�1�#�%�i��?���(q�@���bTn����E�F�#�h��s� �[�ax��ީ�+A�*蕵�-�>�����?��+�m�[�����=^B:D`n[C�el'[o��l��6�������3�����������U7�����?�;�7|vm*����Yr�ae9?��m1q0��G�V�\]	Ɠ�Ԩe{�>�]fiq7�L�g�Z�&x kO�(���쭊K1��Ks��@��*C�7N~Ԭ��=��yn��jl��4������;�/���F�[�y؁\bH�o?w��O-S�H�9�~֙����r�.�_4���)<�ϣ27/�Uo�lo�唷��2I�Ҙ���-J:qd�������o0Sȹ2/��=���:���W�I���$"�q��8Pv�>���R\YQ�d�K[��3�a0��=S�"�_׾���8	�?��;��8A|�,*[L�D]��O��xҬ�&�'����1����ŀ�G�������S<��B�±����|3���l|�$*�x�Ѽp�P���
�8�{��*�K�N66]Q��23}�י�?!���;=�=��f��=˞�q����-QɊ����5��߳S�^4Zl��O��Ua�
��sWȮ�70�qf�L�%ޡ���.6W,��RH�9���f��'�.78�4B�@����+�j���C���̳zO��	��6NMǏ{W��ݨ� �'�1�dԛLq��ȡt�1`�"rlt�~���N��7�� �*��KG�'��`��`#��9D��B?uj��§e6������r�:�����L�����I�� �S���_����BWS;�S�R�
j�B�����+�Q��5�D�cQ�(q;�y���K�վG��5RB��T"�S�����U5�a�[���eq�vᚇg�	��-��٪+��p 0�n ց:�~���'Z$1!����f�a'$��#�8���Dp�f"��iȂ�5��0�g�9
U��|�^b����A�S��"���    V#�$<�(ǅ�����䩝 M��&|>���s�ͦ)S�]��ndWr��R�s�C�e8z�����ڻC��ei� p���}�
����V3~����!��^ב�Z�/�m�����v�`cF�͏�9v]b�^�kn���.ٕ���PdN�}����az�k��YA j�Ac�r&ٛL(r!������ʈ,#2 ���-E��(�?�J���UO��������,��n2S\3��v��J�S|�S��|��N��$#+x$_��[�}ï������f8-���[&q�lUO���f��4i�������Q�_
��ha��������8bn�{��ä+�N�,��uh��8�%�e+�uu�M��4^A��k����X^0�h�5�Q{g�Z�1�Y�/��A����T���_���&)p����q�N0�'t��l���h4�:��KGO��2a��X�g=���5�q"e5LNc�@є���x���E�(� 4Lw!G���|�S0WCS9�����h�����V��z��3�Tk��H�9]z���S����Į�MGv���?����[�����Ў���+3�@��w����^"�:���쫩��!�0�}V����Z��'�.��\"�=oMl�\x�-of��/��c��ha������ϝq�bH@@s	ȯ����@���J��R�����Fs�fd�eG���ː�$&f��ߦ�`J�%/؎沛�N�a�Te�onJ�<��Z�����3v٧ٖ!tC0��_���F�^�qȓSS��.�^9bkѶs�/w3�I��O��FI靣6t�t��J�c_dUB( �r��FI>��е�'�>S�+��<2��y���v?�����a)(T��Ϯ����/�΅�8�����2o�ER(&����r��ꈐ/���8[�&cq�y�t���&rI�ε�B����,�~r�'}k����l��,�^t1���`�}pC^1�͎C3NB+��_�S�֑�
j#�BЧ֝N1:��\T0�d��Y�:�>�8����D��1]#�
��`Nt
`NTq�P�l�F[	�]�Zs� ��L�x:��>�nc�}E���(w�F��yԗ����Yjm��p�+]kp&��-�5�f�хN��� &Z��gWJݒz�R�A��R�	1,��J����͠΢���x3c��0/.=A���:����kh���0W��v�a�塯�+��%<�W{�zFm������5�&�Γ�ce���:2�(" �f4v��� ��z';�ɡn�ݍ3���q���zAn�2�GLqI�I#kw�N����­δ�1�娨�`��ȉ��@w���C��U�f�`��=AO�[���4�WY� ��Aw��ڋG��H]&����x�c�Q�wBT7��֍F����K3f|�zCR4M��r��Ә%�W�p:�W�o�w����ƫ��fɢ��b}�&k����Q�����1�ݔi�h�4ʥfQ��{�hin�~
��ͅ��`���?Q�����>���{�5v�����I�Z��yfqi���>O�l��`�t�K�(�<��Z�����l��20U@���}#�+���kS�h�S��6,q7�b��m��j�n��Dy�YF�J�D9h��fpX{�E�hZ��2l��)�'��U��F�] Sҧ�_��DeNaL���Û�<�&��MmW��Ge͉D�:�G;�b�/"�����t0ip�w3b/�̴��By�jL���	呅!1�Ŋ^#yTM����T}��	$q�9��/"��C���2����k���b�<Af��6���O7��_/��-��|�y�9�v/XT3�IG���.�Ю�1�Y$~3?Q�ٴ:9�[+ �M���:>�Zr6Z)A���� �/1OH�7ƛ�׬>� d|���q��8d�Q�n+��<����ݬ�y�)	��W�䡶=��u��6�b��p=�-�k�}��dN2J�e�f2(ғ��}�/����Vռ/+4?�&��[�FI�Y㑣�Q+	��V���hr�G�Sۜ1s94�P�(�́Ddǵec��R�����
�"�X���`��S��U�J�A{�ls��uM�'}���0:��@��>�7�lb��S������,��`�nse���Z�'�t����������@��h�j��+����E��^WN�U?������ ŹN�כP��,֎�6�ٌ괇�ْ;�	�*^I���C��6K�fy��J�L\(�@�N��L~f��qsU�Z�����O����=��v��U�\w�pY��tT���wFv�ǧ�\�-+X�p�U�.�l�����3_hn �p<���Q�Ȉ���p�[����9���Z0Y��l�S��:;��5=#��h�*��i�nh�g�Wh��͹��L�"�r�LUٯm������¢2����~Gll6_��_F������h�G���9�49w��&�fGm�X�,�Ұ���_j� �G|��t��FV���]/�z~�DQ�����Ϲt?hQ��2��dmGm��-�\�!'�N�ѐ�`��ߛhh]�j���#����Z_�\8����j�O�l��ݤΚ�q�Uw�":	�n��2k�r�i�	�Lǋ&s�Wf�מ�+��lV�3��T���Q(K��G��� �����!����9�6���+7�;%KYZtB�}���0I�S�������5Bi3^������	��AkN:�ѷ$����r��Bɶ&m^�Ǵ��������lNi��=�w����Ю|������'P�zj�D�þ�6��eۇn�*W+��a�K�de��=n���cK��d.U��¡E�����r��4�V�M|3���k��DϦ�B$�:�����
��y�c)Lb����|H�q��������'�1,C��) ���"bpA\������}�����-(0�{�������M���qtl�G�ON.yt�c�;�-"|��[�P_�x�f;�ӈ�έܿ'���C����ȟ�5r�y���%~�N�>;�����Xb��a�A���r#��j?��./���$�����F�"ކq�f�] P��pg�0 �,C���@�6�٧���7um��\���"o-Z��)�i!�f��6a�Ȭg�rR�ъUC&q�J Ի���� KI5��jñ�L#0��*�����;؟���,Nm�Z��)!�VT���f�����cu=L�L�� �hp0P�s�9�W瑮Z�8�=^��z�~�Sq4Ϫ��g]{��TI�O���z;_­`/O`dҼ.��|�����흃!�$L�(�h��F����|c�K~��ڀM\���=�Z�Z]��2��@(�ױ�#;�;m{[��u�-򩸣������ҝ_�f`�hc�X�:@=�����-W�g#��]�I�p��Zj���-j�z8؄���pw�ҝd�����,����V��uM�^Y~�^զѾ�O>[���Ʈ�2ӓ�%�]?u�m�p��QNue5KB�ȝK7n	��ザ{j���T����T� �kE���7�V��s(���@O7[d;��6���z�k�a? �w���B��>�;CQ�K���14dogh����_M�k��'d�W���n��H�޼RΩ
f<;4����05�~َ�-;��\����3:�5-����C���ѣV��	��P�o?�I�����0����ߓ�,FS�����+�R*��)�6=�	�}�oUX���,���t�*uP8R�*2���S�\�5�{A�V�\�vAЊ3/�䵾��6�&��{��[_��8w����Q���7�=_��:�a'N��!-q�&�+K<��)�t9Z��#�5X�By�dL4^>�w�FHvuP��dW���f��}~R�ڊ�S���r�Rb=B�O#qc��O��~ �i�+��6���U$���tv��D�k�;UU��0�kv�o�^O�F�ޓ.���Zڹ���n��m���p>T�l´����	;��6�E�b�����s�͞_ ��'j#զ���7�rV^.�ͭ�.;�@�cy�+�̇,��9F��    3�[+���2�k�L���\�M�:{����c��S��S�iоs���x�P����ˡ��4�D����I6F����s6{G��lo�T�ԱsdQз��	Hc,��x@��Toy��s�?R��9��V߳����癱�꒥�-Y��(��%�hi߾��^I�n/I����.�P�@_��߆��@s�0(����B�7�v�&h|{ڴ��C۝s��o���r�E��ќxl	�\N1y��d2d�Xtj�*sSߧ	>���4_��}m_o�BCIau�x8n����$�3n�����&����sR��k͸>�'yb�y蜶��'Z��&���6�y�@7ue��T�_��d5����q�{jc�+�m�a���Kvr
�z'�f�'�d�c��\l�0/�����������_�U�~hpe�K��f _�祉����fR��.�!b�h7��T���\��^d�#Q���3���.B��/�.W����#���Y]�#���|Om@��C�f@n��{)cb��mv�6�zs;N6��={�B�؉G�e��!\�]�����������<�_���s<��^�{j|T��!���Yw�6z%@n��.dXYa%{���d�KO�F�o�"-���U:P�1���W`,��O�?�~�6b�J��<y0.�1��xK���8҇�Х{H�i��F���2`��I�0&&Q��(� �:we�9���&�]�\�R��h�q��Jr��я�0�SV����t�Q�� Y�	��ڴb�d�u�#�v�Ce��m�@�ݮ�!p�Ta���p�z3�y ��tۍiL��g98�ݑ����K��H�[.�{ű�������x>�3l@���V1�ǻ����j�U�f@�hR���𷋯o���Dm�E��4S3g��I��#Gp%Q�fS�#�2�q0v�L��(Tϛ���m���L3���;�O� \�/��h����-@s���JQͬ�:���W�6&�R%���KQ_��r���]�=�KN�+Gi��U�f��T\���>(��S������0���#�A�c��#��_��w��g��Q�#�)�gj,�� 0�/��Ѕ���� ʘ�G�8?������X_ T��f06}�fXT%�F�����_KJU�6�m9[�t dZ>5Ǫg�ˍ�Õ�wQt*2Tx$��YY����ee�����1O���W�}���`.4��t��cnw�.^J�#��h��&8m�-�Rk��;�8p�?:�BGQ'��^�Ћ�+ß�.߀U�E4K¼h�[j�1����`������Ê%г�w�+p�;z�r���:��!��tӟo�������9;���U?�7^]��xԲ#^ԛ������7���u�͑���!��?	��8��0�-���Ag�цQ�Ny_cO�O�pc��ST��Ѩ������d�}�e�#����a׎R�3O�=��V�L_�d�^�G�Ʀ�%	��eK�9���\<9S��m�
�/�r^[���Id�;�ċn��6��L`�=d�����-&���atv�H;�d��:���d��{�ݍ�-O�ϭm��Q���~V@�E��7z�� ������6��Qκ1�r�Ƒ��l+%:q�Sl&ع����y��O'�b[���G/�Vi���I�����m>�Co bD����8�8�9}Om�=�$A}��1,�U"~�_oy�������t�:cw�.�ЋݠG�Z���xi�k��j���=�D?�O>��W�x9�r� �&�Lhk�7a}qĬ��,�Vx����1q��y��5��p�FwMP3 pϧ�=�!Aeד��̪�?m��^��:�<K��X�s�p�b���/�Q�q�s/��kc�]U$Pp]G ~�GP4�v]����q���R��[ܒׁ�q\��7텩ǒi�6�83�%]W�l^�-O,������}�����07�즭ɾ���'��B���쟨u�N�nrT�5��<T{�!��$���w�v����8�q�Q�-G����c/aw=�f{do1 !'~	=��=����H��^��0�5"��B.���o�..����S";���r��}�ɉ�M�p�L������x�G�3�n��SćO��[ӈ��l�[jc�+�4��ڲS�ps�K�[�>���&�q��/ �� ��d�S�~�*��'�-���?UW�;�^��+��e: s��K��5�T�UF�a8\I2���آ�_��Q��G��[/��qr9���;Kt���7� it턿NgV<?���K�"o�7G��+d ],@ݰ/��z?҆��Q_�W���o�
��UP={�?T�&�m�u>ѲO���>{*��<<z����;&_S�|�G�A��JmA�7=m6�ƴ=ݍ
h`���l�����������rO�Ϡ�����4A�nY��s��4Cԣ��}�TixX;��\`'9��	�ʖH���sy�:X'����Q� 4
Q�`/�4����4z��/��Rدs��_�m�Bw�Ui���R���ôv9_�[S��Xl/�U���|K���0{1���ߗHI�%��+��#�w}c_M��� ]q`)���D�[�?˓HƤ�rϏ����oi;��Z={]��>G�t���5�"n,�e�ت@�bQ��~E���@�7��8Z���w��2W�uЧ6�!>P��_GƿW���}���(�����?����O��od���B�1o�'s�a��┻�j�͕�9v(%wW�"�U���tH`�	���r��=�*���˞U搪�H�?��(k��+J�A���7�{���c�j>����.�������{P��(C�����(��F��	8ɿG�D�#��F4��p�,8�6���
�����m��Ј��/��:i�t�[�x�g�py��n�d���\O���		ʤ=�<vJ�N5���+˟�A��\����yO��&�ׇ�o��&�N���e�1�[�!/aʬ����m[t{�x6<?�����El����T��Ѯg��;j��潆����?�CSI�����1��x2�ryM�m~�>�KÁ�1L�T֍�F���@Y�������7 �uc������)������p�w�%?�a�?<0��$��x.
T�]*���g[�қ8G��?E5���m������L?�(Գ��6:�L�z��N�-���=���V�8��?���e}K�j��k��ϝ�o�s���r�{��	؆�C�e�Uhҷ�p�`�'mR<��3͙N`���+��4 U۷�	�����?���3D���I�a�-�[b{呷����AFtN���/n7�A��.j8e3���穨-�V��X��Jd�o��[h��h��*G�ф=F��&���.��� ��7�����g������V1[0��B��=��l��z����%��Gr���l)��]�t�/�4N�3te�
 x���B���(��O��=K�����8�����}q�	>���t��L݉�&'��Ϭbwv�9��:���Y9z\�[�9���_e��&��b��R2T5׶���O�j(�e�mk:V:Ǎ(d'[sG0Y7Gڝt8f�;↽p;\��S1M6X����d��(���]5gJ~&ޏ��vUs)��E ����ɾܹ���X;�#n��'��;-#��2��!}�
'߄��<p������@m���@�1���ZbPۥ����z�Šc�Xw�1�D��a'˔m�)��^���Q�y��i2��$��_�/��ڐ�y�*qwl�3X�yӷi�rX�˳�/GY<�.A�9;����So��0+
��@|��#
N1�}9�o�)�')h���T��Z�����>z���mllR{���D���36�����,\�IϿKA?0��t�]��C��6���� D��e�p��pA�+-́�n�H�[c�Y���l���ʒ�f��SI���@|8�U�)C���;9^�9�G9Я��:Hč��ÃO������o���d-m[k�T�d�y�%��j��?����7T�G᯾�-�.���\�	co�>�)6 *  =����gǙ�^����y��s��r�]��2	&�Iw��r�����%�l����PB��:��Ԇ����ߓ�Ս� ���
vҩu4�|�ps�4";�Q�%Ƿ��i��%�*���Kȧ���$q�*4�B<k�{jC��ߡןP�p��kn�	M�|�&��%�@>�̖���n�,��c���k���d���- u�L��_�W� �%b/��[j}�!�ا���n��p���nYjS�P:i{p��R���G�}�����������|������⣷ݨ� �=����&{#jD�=&qq�7�U�ǝ�0�)sf�	�i?n�$V���|i�|����S�#�7�c#�Z�a�R8�a���c��pv՗e ]k:9�\",���7ϝ�6Oݜ�xi"��~Ԡ�F�x�^Ja[c�x� tP=�v���h�=��3���{���B\��h��d��귇��i�ty�A^-�Ӡ�S"3]Z�Z�/���p���T��nӣ۔4F��A�{�]湿|�x��f�!+��j�_Ms2/�e���E%�ja2[����P� �4E��H���oP�+k�3>����&$�s�߭���0��d���aН�˖9ޒ��&��tv`t6�Wey�00���zg���}�6�e�S/�v�|�Q��Z�ˮ�}~� Q}�	�RzO��~�e$�q^z��w'=q���꒷�3�.E$tOY���,�K�[두H\�m_��8�Oh������_��bP�
�No�����R�|}�bx ���_ׯ>]��m�[���X4�o,O������<F��祉ՙ��d�:���Ju͟�1�U��R�����j�z)����Ւ����<0�y���R����0ƣ�x��O.�_,P=�C)��z_��o`0��y�&�� �/l�;���S�0�^�������z_��j�X�üߢg�}�_�i��֏�_��z_��jz}��~��O�z��=޺-w�]���������"��8�'�z���Bd�!"�z'������/�υ�?M��%�~Km�N5V�����|� z<��ޟ�gjc�� F��Acy��w��j�/�~�ޗ�~sT�97�P����Ӳu�h2?[iΓ�`z�?�v�%FԨ�X�\dN�0  $w����8~nUVw� z�c_R%�n���D�7E�������F}�/Ro��fb�_"u�$�R��Ck��mc�NXw�����Y����<�X�B}f�Bߙ��5�zWѷ�U��|�o�w�y�A1������[o\�c�[��h"�5Y������L�f�(,<Rm���u,������q���d�$T鿢'�Ȋ���`��W�s�� �u�R������(���ۂ�qlQ��x^�a���l�]h�2Ryn�%ua8 ���)����/�D� �b��Ac�b*Y=��/��[j���u���.�������aȨx"Q](k��"O���a��P���Y쟦�R�v�UU�f�G��4����|Km��~G�Cm ��v��kw��ӄ�ro˳�+�u���A/vc�P��d/�H�Ʀлn��g�խxJ�λ��6 �.F;#�f�f���x�h	�a�n$��GL�S/RGc�`��gUJQ���s2�c�X}�J���3�|��"C���[j~@H��V�b�7�'�)�'�I@�揎t����ЦM�v9_�`3L����܋v��ng�/A�+p�7z��ݶ�ﰯ�jw���)l9�Mk�e6YJ��NL���A���`nw(�W���f��r4����G-�l�Ƨ��a�y�����b��׿�b�e�            x�32��22��2��b���� 5��         O   x�3����K)�,�4202�50�54S04�21�2��343�60�26�/�e��[Z���[�i��������1vsPe�b���� ���     