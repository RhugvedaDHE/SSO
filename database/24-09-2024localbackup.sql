PGDMP  4    
                |            sso    16.3    16.3 @   *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    352                        2604    41925    AcademicYears id    DEFAULT     x   ALTER TABLE ONLY public."AcademicYears" ALTER COLUMN id SET DEFAULT nextval('public."AcademicYears_id_seq"'::regclass);
 A   ALTER TABLE public."AcademicYears" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    360    359    360            �           2604    41926    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    41927    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    41928    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    41929 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    41930    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225                       2604    41931    CompanyRemarks id    DEFAULT     z   ALTER TABLE ONLY public."CompanyRemarks" ALTER COLUMN id SET DEFAULT nextval('public."CompanyRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."CompanyRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    354    353    354            �           2604    41932 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    41933    Countries id    DEFAULT     p   ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);
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
       public          postgres    false    262    261                       2604    41950    InstituteProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."FeeStuctures_id_seq"'::regclass);
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
       public          postgres    false    309    308            �           2604    41973 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310            �           2604    41974 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312            �           2604    41975 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314            �           2604    41976    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316            �           2604    41977    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318            �           2604    41978    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    41979    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322            �           2604    41980    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    41981    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    41982    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    41983    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    41984    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330            �           2604    41985 
   Talukas id    DEFAULT     k   ALTER TABLE ONLY public."Talukas" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 ;   ALTER TABLE public."Talukas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                       2604    41986    UserBanks id    DEFAULT     l   ALTER TABLE ONLY public."UserBanks" ALTER COLUMN id SET DEFAULT nextval('public."Banks_id_seq"'::regclass);
 =   ALTER TABLE public."UserBanks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    356    355    356                       2604    41987    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332            	           2604    41988    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334            
           2604    41989    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336                       2604    41990    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338                       2604    41991    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340                       2604    41992    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342                       2604    41993    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344                       2604    41994    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346                       2604    41995    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    348                       2604    41996    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351            &          0    33738    AcademicYears 
   TABLE DATA           Y   COPY public."AcademicYears" (id, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    360   ��      �          0    24592    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   X�      �          0    24596    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ��      �          0    24601    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   ~�      �          0    24610    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ��      �          0    24614 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    225   ��                 0    33632    CompanyRemarks 
   TABLE DATA           �   COPY public."CompanyRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    354   �      �          0    24620    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   (�      �          0    24626 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    229   {�      �          0    24632    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   ��      �          0    24638    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   y�      �          0    24642    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   ��      �          0    24646    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   K�      �          0    24650 	   Districts 
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
    public          postgres    false    249   �      �          0    24676    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   ��      �          0    24680 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   ��      �          0    24684    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   A�      �          0    24688    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   ^�      �          0    24693    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    259   ��      �          0    24698     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    261   ,�      $          0    33696    InstituteProgrammeSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeSubjects" (id, programme_id, institute_id, subject_id, userdoc_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    358   I�      �          0    24702    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   ��      �          0    24706    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    265   [�      �          0    24712    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   ��      �          0    24716 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, taluka_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt", mobile) FROM stdin;
    public          postgres    false    269   ��      �          0    24722 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   f�      �          0    24728    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   8�      �          0    24732    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   ��      �          0    24738    OTPs 
   TABLE DATA           s   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    277   u      �          0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   !       �          0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   �       �          0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   �       �          0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �       �          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   T!      '          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   q!      �          0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   �!      �          0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   �!      �          0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   #      �          0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   �#      �          0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   �%      �          0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   �&      �          0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   )      �          0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   �)      �          0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   �*      �          0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   M,      �          0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   �,      �          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312    /      �          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   �/      �          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   0      �          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, board_university, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id) FROM stdin;
    public          postgres    false    318   B2      �          0    24851    StudentGuardians 
   TABLE DATA             COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender) FROM stdin;
    public          postgres    false    320   �>                 0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_year, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   >E      �          0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   �K                0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   �M                0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   �O                0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   �O                0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   �Q      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �R      "          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   �S      
          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    332   BW                0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   Ne                0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   mh                0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   y�                0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   ��                0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec) FROM stdin;
    public          postgres    false    342   u�                0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   u�                0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   ��                0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    348   �                0    24930    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    350   /�                0    24933 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    351   Y�      v           0    0    AcademicYears_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."AcademicYears_id_seq"', 4, true);
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
          public          postgres    false    266            �           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 6, true);
          public          postgres    false    268            �           0    0    Institutes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Institutes_id_seq"', 25, true);
          public          postgres    false    270            �           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    272            �           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    274            �           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 90, true);
          public          postgres    false    276            �           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 115, true);
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
          public          postgres    false    317            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 254, true);
          public          postgres    false    319            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 95, true);
          public          postgres    false    321            �           0    0    StudentMarks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 130, true);
          public          postgres    false    323            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    325            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    327            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    329            �           0    0    Subjects_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Subjects_id_seq"', 7, true);
          public          postgres    false    331            �           0    0    UserContacts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 169, true);
          public          postgres    false    333            �           0    0    UserDesignations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 52, true);
          public          postgres    false    335            �           0    0    UserDocs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 1089, true);
          public          postgres    false    337            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    339            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    341            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 221, true);
          public          postgres    false    343            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    345            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 232, true);
          public          postgres    false    347            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 348, true);
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
       public          postgres    false    221    239    5184            �           2606    25189 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    5216    267    223            �           2606    25194 !   Districts Districts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 O   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_state_id_fkey";
       public          postgres    false    5272    239    312            �           2606    25199 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    251    5196    249            �           2606    25204 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    348    5322    251                        2606    33708 9   InstituteProgrammeSubjects FeeStuctures_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_institute_id_fkey";
       public          postgres    false    358    5218    269                       2606    33703 9   InstituteProgrammeSubjects FeeStuctures_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_programme_id_fkey";
       public          postgres    false    293    5246    358                       2606    33713 7   InstituteProgrammeSubjects FeeStuctures_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_subject_id_fkey";
       public          postgres    false    5294    358    330                       2606    33718 7   InstituteProgrammeSubjects FeeStuctures_userdoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeSubjects"
    ADD CONSTRAINT "FeeStuctures_userdoc_id_fkey" FOREIGN KEY (userdoc_id) REFERENCES public."UserDocs"(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."InstituteProgrammeSubjects" DROP CONSTRAINT "FeeStuctures_userdoc_id_fkey";
       public          postgres    false    336    5300    358            �           2606    25209 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    263    5218    269            �           2606    25214 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    5246    293    263            �           2606    25219 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    310    265    5270            �           2606    25224 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    5218    265    269            �           2606    25229 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    5216    265    267            �           2606    25234 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    265    5252    297            �           2606    25239 "   Institutes Institutes_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_city_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Talukas"(id);
 P   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_city_id_fkey";
       public          postgres    false    5164    221    269            �           2606    25244 %   Institutes Institutes_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 S   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_country_id_fkey";
       public          postgres    false    269    5174    229            �           2606    25249 &   Institutes Institutes_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 T   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_district_id_fkey";
       public          postgres    false    239    269    5184            �           2606    25254 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    267    5216    269            �           2606    25259 #   Institutes Institutes_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 Q   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_state_id_fkey";
       public          postgres    false    269    5272    312                       2606    33751 5   ProgrammeSubjects ProgrammeSubjects_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_programme_id_fkey";
       public          postgres    false    361    5246    293                       2606    33756 3   ProgrammeSubjects ProgrammeSubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_subject_id_fkey" FOREIGN KEY (subject_id) REFERENCES public."Subjects"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_subject_id_fkey";
       public          postgres    false    5294    330    361            �           2606    25264 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    302    297    5252            �           2606    25269 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    302    304    5262            �           2606    25274 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    310    5194    247            �           2606    25279    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    348    5322    310            �           2606    25284    States States_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 K   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_country_id_fkey";
       public          postgres    false    312    5174    229            �           2606    25294 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    318    5322    348            �           2606    25299 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    320    5206    259            �           2606    33723 .   StudentGuardians StudentGuardians_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id) NOT VALID;
 \   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_user_id_fkey";
       public          postgres    false    5322    320    348            �           2606    25309 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    328    5264    306            �           2606    25314 )   UserContacts UserContacts_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 W   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_country_id_fkey";
       public          postgres    false    332    5174    229            �           2606    25319 *   UserContacts UserContacts_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 X   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_district_id_fkey";
       public          postgres    false    332    5184    239            �           2606    25324 '   UserContacts UserContacts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 U   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_state_id_fkey";
       public          postgres    false    332    5272    312            �           2606    25329 (   UserContacts UserContacts_taluka_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_taluka_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Talukas"(id);
 V   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_taluka_id_fkey";
       public          postgres    false    332    5164    221            �           2606    25334 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    332    5322    348            �           2606    25339 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    334    5182    237            �           2606    25344 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    348    5322    334            �           2606    25349 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    5322    348    342            �           2606    25354     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    346    5252    297            �           2606    25359     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    348    346    5322            &   d   x�}�A
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
�=�q�<���p�K�(� � ��%�C�b7(�2 �� �P<��=�d���4R|EA@��*�γm4?Vܣ Ʈ3�	1S뻯�C.�x&�� N ��R<C}UMc�1�B���	���N%��C�ع2os���P�B�z�1��4�;�T[�+!��(����i�����j�*���(�q����ð�#F[a���5���p��	�G ���R7Fz����Y;��y�㛊�� �*���O����u���      �   �   x���1�0����Wt���%giV'����B4�֡�^�
������&���5�R��� vB�j�R��8�Wd���Ѧ���!ư�I�q�[W4�dvL��滢���>�����n�dgDQ%9p]Q�C��r,+Sٜ�������k��__�*D||�_o      �   �  x���]o�0���_����?;Wet�jt�*��%��-	���wBK�`X�i�D9�ut�O��S�>��\�Ù+
37��l\�nY��.,Mag=�����Ř�ѹ�m������̽��~��|�ж�fn�D1eg89#,$qʓ������ߨ�r�H.ĚY��n�+u^�uc�ecB�5�qs����v~�/&�ᅩ�E`f���[,LCBSFR�"��@Q�>������]�ꚲ�t��s�`�Y=�*������\�"[��8<��K�#*L*�L���#0٦��'�Q��?ʶJ�	�bp�/ڮ��&�;K��mG�F���]�Y^���_ ��d�x�������Ɉ2�!�WE�>_7��̕�?=<o�V�&���L�����}�_�vl�q�0�J*�"*�b��>�
`��h\��4ve��\�M�U����tK��R�"�vC�W�X\D"�����ܛ���[^��)�#�v��W_�‬�I��c����~g�3�M:�ko���:���;���m�`BhýX�D�VG�ܬ�n�~Η��m���!N޴`i�Uh��iJ�H���J;�*�p+)x@[��σ5��jt;<��7��ÀR(�S�kS}Jѓ�[���{�mB(�n��f&ۚ��\���=��:j{�*�J0�U3�S~��"T�T0`��FA���w�      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �   �  x��ZMo7=��bz.,H���
h�c�(Ћ㬛\;�n�ߗg��s��8~AޓD>�s�����珷wǗ��T~����O�o����������7���'us�?����|��dpv8T:����^�q�~6A9��`�������xw|~��p�v<|�^���L?}��H�>��lf�FYĖ-LF�6�N+�.d�O��_�*4��5}�;M�����pw>|�~�z8��>>��0�����٧Yg�}����_dB���������旻������4}?>>������_ڷ�gi�zF�RN[��P�/;�̙߽���J�d,��,��*�P0�*���Ę�j���!Ʊ;VN����.	g#�`<+	c�زh�3R�6CDHBQ���ƖUS(�rw6&���gSS͌A�Ц���a�@7T	��hĒ!�F���a�@?VI*^��^��F���k��x]��Va���5
�U�PKǼ����w�C��}�=N������b���s)�M�,h,a�ɼ���ځK\%K-�ZJT�R�(Q@6X;0`W�~Aޕ�iu� ������2Q�т�l�������5iŶ�ds��շJP�X��Q�%"
Ȗ������fUt�	˖��@%�6@T��l2�u�l�`��WB�YZV�YAI��eOs��"�J�_7�[(X�47�ӈ+/-�|��U"�`�.{�K$�\W�-��QI(cZIV�F�����CK��*��#�`��ܰ��( o5��O�-҄�oNg�m�Vu��6픧:*mC�DB�.;��\�h�O��
E%
n��au��\�,�2L�DB�-;l�r�I���QPҡ��c��
�\�)�Vy�E���c���*`�*�7U��F�8Qp�~X|�e�5��dE%
�=��X�J�k�:^D�ޓ{��l��h�=��=�:z�ky2��ԎLSS�)}�CD�����'S���|�UVPҡ��_ð�w���
��:J:Gk�����~�W%"
XOǾ�^�][�)7��!�[R�˭���7���ΦfuADe��t(x�OH����F��=�К�1[Bޢ��~BR�#
��)ġ���xvR���(
iP�qO!���w�A���QH�$�r�4(���,��rj�UD!�����4��Y��G	97B\��ЪoXG,��^b5����m�)ߋ�P�@{�{a
5�2] ���w��:�{DT�:V��]|9_��rg�ӭ��(�����h�Ԏ����6
���4r�"�:��m��(�=����l�sl� ����.�b��Uh��P�{8+^>��H�%	�P����ߌU����ګ��m"���CV�r�cQ^PRҡ-+;d�0c�mV�v�*�+;�3WYuR���E�g%��~����b�#VB!V2x�d._"!`W�$bd%��8����S���%b5X����5�^6�r)��:w6P����,:��)��,h�I�U"��4+�'���-�rh��{��'�UWm�:�vOD{츷?o��_ke!+;���W�T_��Ǝ�QH�fd���E�8h��7PH�8�_��D퇬�A!�Î{�s���"M2.IJ:;쀇.��2cj�B�k"
��I�]j���U"���a�X�_�|!4zY��<����	�����"���`ǽB�\e�4�f�t&"
�v�+�7\�@�y���A!�Ŏ{����2�f#+iP�l��^ ]��j�|��@�o �O�      �      x��{[��ܲ�s�+��z;�&�[=ADED�q�"�(r��{b��%`��W[��="�A�d�̙�����׿��/�W��5.6\sw�:�L���8p��lMT{��f�V�����Y?���/���N�]y��1����7b�)�u�p@������C�$����S�_(�o�PAb8	_Ц-��� ����I����|�K!X�>�������1��4w"-��8���^RIؖ�/��B���7]D�������aK7�>Q�� ��i���.�^���p��?����y����J�ti��Ϸ�$�ӽ�<����!�$M��C�6]����w� ���^-{�|%�Q�E�wi���E�o�%�,
&�t�G�(�w�<P��x݁5���$�>>t�,��nB�0���ն�6���gS�(j��*��q��Y`^5C��`X�|�X��1g^	A�B�R����ۮ������0����X��͊5M$�z?N!�LþJ�N�SV�Y���}p����*��3���Q��֟W����$���/�K���B!K8.�2�w�M4�go���F������b�N�S5c3�d��Em$�?8����L
=$�rd7�W�����9bI1�����������<��d�L˩�������Ԉ4-��E%
iH<?��& �14���.ɼC�_����t+&�b �P[�������`c/������	z2UN7n,%��~�~q4G����]��3�B���1Eb8�v�_���Ɓ��Xي�� �+jP"�jd��t,u\��T4s*���<Yɾ�s��#9E����A��ǰ32P�
�>V�T���;�D{�z�>�˫b���hͪd:����4'�p>����⪙gy<�Ζ#,����޽k��IvPG�4�r�`D;�=Q��X���l{\#�ְ�ũ��f�q�q����il6������pB:��FoJl��Fn�=/����Q@�Ǎ �өO��0v�=��I�m�F�����x��v����:��IL�!�fU�eä��S��i�d�Sz�q��1Hu��펕�#�s|�!S�gWCb[���%'p
NZV���5M����pd�,�\^����L������(�r�,���O�`^SI�2[��N��5rH{*ͪ�����7�|��z�L?$�����x7����pl+�!r���ڿB{�׿x��'��s4r��o�t�B�cw��1��Rs�V�t�SL��Y�^Pl�h>���}��.�8��Y]~��	�	�@��r���|��8�\����� MOw��,7����\#,7���Yg������!�g�+渖�{A�sHE!������zˉ�!�
���K��n[_�1#�98��š�6�#�`z�����܍�KP$���W(�ܨ7C��U�ޏ&C����1Q����b�(N�\#����8��Uj#)��:���8�P�$�
�q����Ӷ��g�zYHIZ�l~�+�dm�׷ڲ��3�6�P���?� �wک���>��4D�����7�	�#�!y�J�E��Ď����}'��̱�8 ��s�un���A�&��d�xѠ�k�f�7̨
���j�#�F���U.�*1�?'	?�������0��.��g�uݪ�ם!z,����jh?/��~I��.b���n����5/��'��,,�C�m���l�B���ّ��/�̹;���R;�Cq!L+�?Q���:�b�,�̯=�����?��k~J�'��8�ێ�&8š����1,�MP�@�!-�6�u(��j�֯�����$��h!�Z-�x�Y�YQ>Q�$�x3���~7a��������1o�Ȉ�!3���.���r��@*n�r0��G�����
����;�>p�j"��~��H�5n+o������'G(^�n0:�,��GO�oǬئ��v���W����&�����X�m�#��$�Ѡ+����5)��Q��$ٝf��B3�93�v75�g����''o$�a�)�B������ԟv8�¶՚}��!�x��_m�s�P�+�K��G���C�O�%��ĺ�!5���x���(ǓɌwQ�H��{pKm$��>�x�� j����58���^m��I����*ְD�����+���Ǆ�Ң�6��!�q��,�g����u���u��~�b�tt3r�P��7�m��6ߗ$y�\��!��rFE���Rf�u��b{�p��ǘP,pHR'���� 	U< _Â~�䨮35[��Ӽ���hT�*�J%����vp.��ģ����2#�4�5�X�E l�9���v�G��_��� �1MH05{�x�k�v�l{��,��q0��:"��&��=[y��W��?�[��>ek��E4C�YY�F1�zW;  �u߉��,F6;�H�5�9�i����3�ԯ�p���զD����*���%t�̣ #�z!�J�.��Y���B���z$=ސ�k�8���^l�{ˆlI�S?�Vsa����~T��Dg[}�sd��+(n�;��M;Â�?���)[ދ
q�����f�ʄ��dW�������F?̞��7W�(
��SqD��8�����	��=�JYRv��QvF��t�?�S�5$1��hOer��E��H�|?-����^�0��(Kš�Nd�y���	�����y���O}�A�\�D��%��˶G6�bp/F%�O��9���I;[�Ɔ؆+o��.2w�/�bU�(qF�=���~ ���"��?H�dWno����q�zP\F΀Z���<���z<�)���~��̧�k.5���r�l�z�MP,M�"5�#U�tI�}�����z>̴��N���7w�}��D���e�杇�~]�R�9c���5���ʺ�"�Yl��5���8@*����N`���W-���+#I�ɋ���mx`S%�GC��y�^_��8��� ��c:;���[�;%z��#�p���^
�خI�%h�뜃�l{Dc8���G�,'�����=P��g�w��ͅl<u�
{uƴs����~�(G�w���5���6���#�Ԫ8�h+����ȋUߝ9�2ޔ*X��R"C��i�I�-21O�`g�~>z4����z*��8Ry\�x{j�ɍzL�@�}}�~;�����燓�2�ơ��>����fx�g-,c��7Z?j1K��5����MNy\�$�X%�����D{D#!��&۟�*���P�����nY|��8.��|+Vzu�I9k8�B}l���M*\�u%d�n��G!��ٰ˶G4�B�0�˵0��c����TGK��vc�n�N�zF�/���\�p8և��9 �R�bZt)�N�_
ֵ�]�e��E9�Y ���چOSi�����Uv3�������)���o�
�AM7��?=���� �����9���}�&��!�ڼN��j�pO��/������3�����4$9���M��E�V���T��ԧ��,�~��`l{J�eۃ��a��O8�D�̮-�%J�E�j+L\}0������<���M�߱fe�������ny��֝�[�a�t<l�Z���L��q�-��g[�Q��#N�S_�7L�!��F���Jõ`<u�ս����k������FQ�|�~�lۃ����U)l.�Ó����v���n銆��p���������Y��K��}�5t��fw3G<�������h6κ��7U���q��brQ��4��"z?��f.={�]�:�7b]|8 ��Zt�������c5~ vۜ=^�!3�7��x�p����S���^�ߋ��7��5�u�Dݭϳi��N����(x�	������:M{����N}!C��M���қ�*#�	�Oɣ�P�W�di�,{�������w��54D`M>N�ے�l��]h6�|ٗ�x�%ٔ9d�?�|��g� �[��U�n �������qB�AkZ�ȓ�F�����h6*�1i��Ȋ�&���	J�yl��ʥ6��ا�r���7 �
  ��$�.7��D���W&d�n�ԣ�P���^����:v0�nM�^l�#�Q��D��i
i|>�	~�^�v��s��z��T��J\KB
F���ݛV������1�u������Q�4\O,0�&�]�C��(�����zx��(5ÓV�6=k�e����3`� xϚ���H������o��v�Q��j����^n؇ᅃ�U��%~8��m�>��Z��Dt;Ti��h���ݨ��i|�d�D+
��Q�⣭�(����OTߒW���r��퀲�P��%�|�^��(�������3]˨�Q���V�������hv�S�%��@����쐍��A���#&��>[GH�[?�}2����f�RJ�c�	Q�tI�G�������Y���p�.�-��F�up������u�Y����{��t��<W��b:F��h��[���	�r'
~�Q�����=��v��Lp��X4��e�;�rƐ��xH�n�B��3�k�@����^��w�=�����U9�q���(�����u���.�`��C�KO��� J�
r貍��$D�>�OPH�t���m�m�m��I6:��t��D��y���$�Jr�,d&f�+�i?.p"
������P�����P�>�"��i���F�׎	�����h��R��
��'<3c�:�с^Z�����=��ƓDQQ�<�����k����g�h�(���O�VT$�|�>"��G6���+�/K%�K���b�OW�����Xb$�i^��`�ڛuf�X�-��t�-[�9���/��8�2񐺬�J��穃}m/_����\B^�m���~����JN7��b��!��=�����QG�f�Yj���5��\Hx�x��N�#��憹eBn�BKJv3�4m�s?	qF5ޥ9��Ŷ预�Jś}ͿB{\cX��%�z�%��HK"F^+m�&f� �q9i�`���P�e�qM�E�E��j��lv�:�%�#�Ƌ

1��O���0h��]v�6�\FO����W�����(聑n�}<�&u)�����t�c?���+ڵ��B{T���&w����B���1��\VVL\,V����J0r�0�Ǳ�t���?o��L��Pt�M|A[�Enn�@����Y1�I)$)[��X�I2`�{B�@1u��@��,���CU���a�V�H�pd�~�o���-Qm���TbS*d'9A�iԃ��N���e?\��\pV��a%�	{A�����Y��(������Qķ� l��C�bS-ZN���C"}_��D�`4̧�֎�6�:����4��dt�Ԩ_��:�C�<u���ըӒ��;\ܫ�NMG�a{<�ٙ\�'�tv�������D~4a��;��l5~�a�R*��ՑW�[_4P��FfӍ8��Ӟ��iih��i��μk�mW�j~V�#D{k�L�����T]9ؖ��GW��E�
�э�ǔٗ�Y�u�5DU�|�,[�LP�@�M&p�|�8�K[U)S���o�;߾o�Ͽ��������:^$Y�tߠ��=���V@�eN~Z���ɗ���/�n��:� O�S�əfc�PH�Qʹ��,A2�VA�wE������W7M��[��%�)[*�˶G42�X���onj�g��w�h��i2I�n��(VJ|��1�Ż��X���NoY� ��ߩG��캧�m�m��*鋥ԤpO��86-Օ#��n7^Y��;W\$�b,nv�����X�%��N�����V?�D	�Z(i�~���x]�؏�1�/��u�n�U��z"O��̬�&6��Chi}g����2Y�b2ΐ��~�.�<�7x����5D|�C;�1?W�;l���Ӎ]9����O��{!��B��*@U��x9��ۜw&ޢ���m����W��nW ��p���cRZ_�C�s��ߣ=�|������̺�W9L���ꊰaϼgO�\t�����sy���ݣ�У|}�t=��:G�d=���~�x��߀|�[w�8�]֛<s��Qi�2���u�J[�S���<E;�~q�EL�4"_xf=�t|��>�]ɭΊX�{�A���X����h���w�OSt����"��&4�����Y�\eEՇ�5�Ir�=���e�قU��n�[����;Y�B�R*���@ļ�"��Zj3�q�5�x� Yٚn����{d������]6����n�1�_��	�a��m��Kº^S,���P���,ہ�l�����6a�K�u�_	�v�c��J�n0?H-�}���"0ޫ`�Dz
�4������ö����?[��3�қ� 
|v��W6�n�3���p�a�mbO��}=���I^U����ٵ}����X�ߐ�+�ר���ո�F��]�5W�CS��yC�V��=���<d���z�\�_?_��a�y(�7^d��c��(6��N[���ȂRRܧ,����Q��X���c�G@ac|�C3�(��=�/�i)֯�N��>޽�=��� o�5�Hk��a4�JzD�����ϝ���=�3jz9D��c���E�.����-limm��,rG����"J��̹�{1�������'E��MC�%���%J�m��e�����٘�^�D��_G� ��R�H����,��	!�u͛��]uW��bw�M�r{�eNbdw���X��a�^�~/��      �   i   x�}̻	�0 ��n
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
��s����J���t$�s�0~��?<�$.c�K������ d�W���1V���B��DA�<���-i��n��ͥ��7��\      �   t   x�3��M�H,J,�()J�4�,�4202�50�52T04�2��21�326�60�26�/�e�鞏�K+S#=CSc즠�r�p�����)8������iL��L9��KK2�hd� VCD      �   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      �     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      �   n  x��[K�%7]��+�=�U~�$�*	���"�4 ��{N�o?lW���b	'��e��o����ز�b���dg[ff��ol��}�� Q����)�������U����]^�Sម��g�Mr��#�����4w$v���l��q�:b���mb�J�e?�Iɫ�=z��Md�Μ����8��L��a>C�{��OD�a��pZ��vr�UT�9��;f
��3;�b���cG0;�9ΞM�a�U��n'0��9U��5ٗ�YE�x|�����̹��g�D�M��0��w���Dl�,>���D�{f�UL`�#3��(���TrǬ���b�Bޙ�K�CZD,q��g��K�8��1�/�(�/�p�;u�nX�İ�?�c��{{�W3�W�#+{,n2E��Go1#{ER��(p�!��z��+��9 P�l��-^��%;��dKO���;$�9����!��7%SǬ��lF֌MS�]N69��x��^���x�T|+����@��w,v���{fdE	W��޽t�3rfnm���K>�}�Q<^�fF��|d^zYf��؛���,F�ʮ�͟p[���)��-����W��tW\����[6#{�&�p��}���lV�[6#�=��E���A�#�u�<s�>n�/��U��Y���N�X:f����_��F��5^�,�I���*z��ˢ���V��!&۞�)z����k���E��\�U��9{Ƣ{�$�5��*D�oM>e��G)8
d��3e)}�>C��^������Җen�Hٔ��/�[����s���bP3%��YEo10��9�vk��/�Ǎ��S��՗Qb�U��gG0��fi[�44w�{����mjEc���3xscqu]�f�)������6��Q�	�!���3�^lG^'�a��XG�0S�����kj�Ȏŷ=�3��f���}�4���$WM�i��a�:V[{l�"���s׺tp��_v&@aՈ�&;�*��,���I$5� ��c�Q���\9���������������Ӟ`�������9�Ic����ms	�L��E_�DAD���`n�]w�����BK��"�h�b��.�v��H��h�S+�`�s٩�Y�]�<C��c�B���"�WI{�mҌá&��h�ٔ.Q��w2$[C�H�j�+s���>ru��57�E�57���JCS��YG��+=�#W75����݉i����(��*���R��Tec��179#����%J� ���a��?��|H��o��Gb�h�}<������A�~о����,G��A���iY?6�9�f�g鰼Dx&�Іfe�d\2�U��%{��P���ݥ�ܪlH_)i�=�3����
�����)=b��k���_?���o��鿿N?|��N����F����Zm�$���a�ҿ���i�,{����o� 7Z����.���G�E��Vy������gN�rÒ��F�Ln8zE��>W"}��J��]T�����)�C��N��awo���!��ޠ���.Ϟ�{�E;}m��ev
\U�CM	���<������QwM��=���k��ЙE7��*z�֟�&�7S��A��n��Qq�~U���p�].'��iHj*��1T��3�|4�n>��W.���h8T���O/U,�eLfga�.c�����(v˷#!m���4e$Ti�KjʖKi� /�Ny�R�����.O1$$�!q]19C��o֓��aZw~mi��pO:q��ڤw�B��V�2��~ڜ*�o���R"�.�I]j��N�ӊH��"<�7=4,k���D?��F�o�3��n��YZ��uLY���]�@��v�<$Mݻ�[����q��6�'�����w.�vg�O�t���i�r�Ec�����`���ݨw�^M'{c�r�}O�̌�Q�GT��z�>(��̹�u�*���Bu��㗬�|��f{ndh�)ڹ�=������ b79��e��e�zO����*�a䲡ηֶ����j2��J>��"�@�7��qaf߭��"Uh���~�9<���׈�H��-WB,�=�&�n�P�����݅���#�|��ݬ�N� ��c�h|�SN\H�e]���]i�����X)-;,�Y�M���	k�
^� ����~�\C$��v�{s��"��V��J�PQ�����"	�HSq�օ�~��]_�u�q�KYjK	�V8��U�s"��z�QG��!��ah����Nd%���>.&ǃ���!��{��Bd�WE�o���K�KQ8B/W������̼:���òQ�-C��Q{,�W�r9Qw���A���3�a�>��"��/}\���F�KA�je��g�`N��P��t�p����x»\	��J�m:��[�._�a3^=��`��Uq�E#&�|G6đ���I'^&����D�U��)��/ht�!V����&�DzN�aۺ��x���4:z5w�]�>W��@Ru|Х�������I2����K�QSG�qqp�-��&]�u���탶�#��;�w�'L�;p��d�4����w����|��+��͂�Ism�jР��3vo����a�7�]:Sw�,��m��u�jo6��Z��I�nA��d�}k ���x)V�� �W�mx��N�����(a�������z^�����%����I~v�B?؉X�8���D�*��h�Mh�dK��&�R���VL"-�l��D�Ҥ�u�T�7��$!qlP��W��B����Ѻ$�Z�ƹ�4еko��XT*u#F�/��u���S��8~��"Z�Ö��Z��K79xiZ��s��8ԟۥ4n�r$�5����(GR?�yJj�L����ǧ���%�KB1��M���e��*�B��i�W�b�SAݔD���/��2�����N�����֮$"8��Z!�YL��������Y6j&s'?�����A��%�䛯���Vz�a���B�}�o��u���~��h�hU�����O3���8:��������)��D]�[E7^�$���&o8�]|��a4i�-5����a��9M2[Ї� �lJa�YB�J�^5��_YWE�0�u�}WIE'��S�S��o˗���DҲ.�"S�&��h�W#)�jp/�(��%]�����Ġȉ�,?�h�ވ�+�?��o�i�}��|t�d�1E�[�2P/凬� c�b7����|||�J=ϴ      �   n  x��X�r�F=����P�/8ي]v*e�e��/#s��E&�����k`  H)N@"��M�{�=T�	��	���e�
�j^��`�Xe�7ֲ�jˬ2�Xnb�ξ�6t���a���Ϸ�=���{�!n�&9�R]q%�T؜����k�7��G��
��k���x��'�1yD�0��5e�� D���{�H�1��w�;�a?/� ��a���Hˣc�
�0r�͕̍ˤ� �B�>=�������_��U_�s�s�2��a9gM^uʜf墜-�l���;���Mg޹�޺��ͤ5��k,+�H����^kӅ�B����'P*�97�V�O��RI���<����D��n�'�5ϥ��I��������"�Ǹa�r���0��fS]�G���,�-�6��+���"�Rq�Z��<'�O�!N��Z5��>��R���uz��Z�N��9o�V��R����I�6Z������
9r�9���9kJ^
�O�8�|�%5PU��a�dԺ�	*R�）��nd.M.]&�qsj%7j�d""g/��T߼Y�و?���;�1֝:��A&�w>�.j��ڹ䤂)8oW����P����s���<�&�:@W����S�}u�y*��D %3��9x=k-�J��F��p������+bA0C�%+4g3T�SjM��)VAo���P�NT�����Kf��|����yIVS�߳�Mpd�Eޠ��O5��H�bWMjQ9�.y���	�KI��$ԀBK�~�6/�q�0�\�е ��r�﷟c4�W�[:��N�!�Qk����v<HО���j��y�f<g\�Қ�[�?��ԍq3����Ba �)z�̅͌���4��8~����]�@�� >�]�/�)mptBGs�D7�J��n�Z�K��i�c�|�x�Kc��h��=;x5<�ц2!���4ŭ������?QP�;==��5�K��@��A�xb���V������*�4�?��a(�qk�]�À֕+���K_�kUD:BgA���T?^��z8�	��_��]�8�x��w�Tq��d����8����'*T��QFI�H9����<��L�B7��j�G/����u�	�B��`�?��t�������8M�~�����p%9
�Kt��gARL#����a�m�̻"�j�k��_�-d���Y��kpe{������߮^s5�|A#5� ��,_L5[��P-~Ӌg��Itu<��Dqy�5̰s�JLd�4�ݮc�� ;���:�e��khW��ks=}�>��čv{'��m,�p2��5eb�"BϬ>z�����1�fҫ�w+Q�S��B�� ����z_�>n��Z{�<qgȝ4�����M"�<̬U��b~Pu�7l�ă-�Kv����R[�m���Ȗ��7��?�1��z��_IGΩ�~aཱུ����f�s��G�j7Ǌ�Ш|F*6���)��E��-	����NU 	1�&�I�%���f��W���qK�(�LF�ElZ(���"��k�Gff��`��z��[�4<���N#��K*�����Cw���C���Vo�7������ݨ�~�l#���qz]|]���fJ��fsRj��]��r��*�Z�q�z���M&� H��X          ~  x���ˊ\7�ק�b�a�T�����@����7&���`���>�t��T�����=�u]TU��&�S�r���L���D�⫯�>��I������?P?��~��텼/�����o/C���Q,6�SWH��'*�H�#$��@sė8/�AlՄ���yR(׽'0��Xf�Nj�I��g����CVF�ʕ�r��_	��K�3��\��@8SW���bh�7 )�Xŗ�P�\�ܻa�V��T��#u��D��G��f*(�{~ �u%�Õ�A3���ƨnnl%x�xs+O���GƉ��lS��-�,�X��K+L���E�1�P��8>�\��Z�	A�o��mȪ�۳RJ�{ʩ
�o����ߚ�� �X�p0>nr�j,[������N�W���RI=�T � ��ূ�-���-[?���.�gA3�6�SMH^
���`.��򱙑ً����B�$� ��lኂ��Q^�Z堀�+�Cl�1MN!U?�u@t���
�	fN�ҍW��
���dTMH��k�	:k.��MD�#�d�Rgb�}����Ah�'�!�0�`�;���.��i�iʧ�#�·�X]���9(Q��a�c?qȵ_��`���{/��!�����6Ɨ�����+Ed���Qd�\�dP���c<�,�uW���}|Ψs��}��j�3������H��j��c#9��B����W��VN��+�֌P3!g�N�_����[#	0�/��o��w�;OH4������V����)$D�RP��>DH��X�	�UpNH���+\�cخ�}	�o���z�Z��:U=���C���v�Q_���sEI��?r��.��5��m�?l�xj�[����w�Va�O�r�Z�R���Z�!��u�ѳ�2>Sa���aG&�^!h�8�f�`������%�c��pa�h�Pũ\��:ܻCC�:.��q����va�Ԗ����V`�.���!�v@L��~}G=N���/�����-�����Qɣ��2@���uzu6�S7Fh����'��{�1����bDt|,��&�W7Fn���������ԍQ��c���gǪW7Fmy�Qt��$V��2�RW�Y��_�jwT7�RW�Y�6�� ���X�<��WY9��^�Q'��v-w{Vm$m�Պը����y&<`$}��+V��5-tw�}��^rJ�ń�Gv����V;R�F��#i��Н�A�����FA;e�x���k2����C-��-?��(#<�X<pI�V�Fu����L;�e��^:S�|U�����>}��G����c�	��.����=ES2�\�Ѧt*(�x��Ǡ��L--:�sp���z}2���rXx�3��R`p�^�ݟץ�`9N{3I�n���Qm�	�B1Q&GFߜ�G��R�ipZW�өN���H�kjF(�,��θ/�c��z^�����3����
�UR��z�2���h�KNn����6�=	*�].zJ�[�PiA�B���]z5V���6~����p�R�Z��z1��O���l����%K �|o}8��,S���+��Pٹ�׾�׾;TVc�\�CA��ί��t�L_yP��!� �n/V;s1�[N��N���P�=�_���d�K؁���4f� Lu@1P��r��WY      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`           x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�            x������ � �         �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����         �   x�}�?�0����S�KC.�?m6GQpu�P�`i��o�X!q~���)���1�v\�B���J*�$WL+��kO$l���x��+2�g��x}�$�5\��5��9����Kʲ��]�C�0�$��?[V��	!�C�BF	-M	ZVtpH�v|3���s�=+Qs�e�	��tˌq����ɏ��x��[[mR      �   F  x�}�=o� ����Wd��8�Ö~LU�t�BU+MCD�?�d��Y�����a��ŧ��@p%/%/-H9MNY�k��Ʊ�]Q��4���U-h^�açUuz��tәU԰R�U �Ԙ��h�ӱ:;�	Í�-<�|:� �o�%�YGyz+���Q����1N�����7��;�=�O)��6_}�R,z�ja�+x��m�i�@_c�d'��:VV$	�1�ч���ش�yE"X�w<@V�(��++����1��X	��XV$�`q�kP���ƺʊ���Ï?_0��.w�7�UV$��ӏ�����ϭ�ʊ�� g�      "   A  x���M��6��ԯ�c����q�,��X&In�"ΦA�h���j�v���E�� �#�}��)N��g\�ņ�����ݖ�KWq���q���<���23�.�.���п0|`7��|"n�yRRJ"�8��S��|��Q)�����9��a��{D�)��2����ѳ��K4/tN�I�E��gQ}��d�4O���u�,j�_��ͩ��2}=����q�{�B��Z\����MQ^hA93�W��.��o���Ӊ�p87T2u-6�uo��m�l�9,�o�J��L8#�v���w_��%
�Q�_�z4z�_A�T#��R�u������o�hIq�-���Mq7OZp\�|�2x�&%����.�Y�vnٔX*-�f9�\�ܚME�-�)���U��)��c�l�J�����	<+�O�`�@g|���5���	���uPհr��E�?>��}=��u=�.l��l���y��bn	:p�o��}���6�=�S��;G\(-���9"�o�|Xl�Y��U�8+�*�*էR����a��9%�!vI�n��j����wn����#��f ���n��2���_ᧅ���_�c0��������gdQ=�Ɛ�Ev�A�Z7�c]w0a�앦�����(��'�.l�
�>4T�˦ȇR��$ĭ��������P���h5�Mh����M��:/$n��܍hHw���wxq�3*�
q!��ع�+�X|i�E��E�a��:��~���߁�#�K���{��df;U��6��}��=�˽���_]�тwK�}�Ė����ξ�ch�il�� C�N�"ؤ�'�$ɿ��4�      
   �  x��[˒ݶ]��b��a��x�]U���"��&�q<�H�<)II~?��K	�bˣ�|�@��h;q��߿�����o����~��������=��������ē௝�9o����d��G�M|`��|sn6�7���@w���s���z�iY���[ʩ�����������O|����8�,�&��6�<��������&I�����_�>>���Z/9=��q�A��2H�̺�17g������R�Xy>~ _�����7gf��c[�r9u{��~#l�l.�6��~��o�&v��ޯ�B��?+��ȸ�	4'��(�6H~�f�q^%ng_�=c���l!ɳi2�P�S�wF*h��O-A�Gk����2{W�cAaH�ʴ	����έ�"x��fk]ͻ��� �*(i����)@��/���3z�,覽	�.�J7�Sݴ&�ǒ)���륬��ֻ���s�vN�>\�c�������
����9�串�U�q޸�4�\kj%�Sr������ �Ӆ�Pb7%���-t���9����qc��[MX����C
��{X��>���oK&��d�\e8y�-z�iӤ<��S|t��8���8M�p�<b��J��1�N��n�S�1G�d��[��5�BI2��Lӣ�EQX%�*�7Qr���rW�%~2|����P�S\����8��7=l3�������"W�U�m�c�l����4~�p� 7Ҿ�#J�b���z=��?�9���[(9�\��e!�7	s�L�%���C[�C��0���O(9\��/t#��`�-�� 9$��O�Vj��+ն��C��,(�|�E>}J%\%������֩�uR"��ʱ$P$��2]�,H�f��m^G��or<�.�|3����@�4_��z��)�fH�x _^��;����W(aw<�3����(���NN�[(YX��3��C)�L���XZ(���Z�:%�F+Mp@M����oW붔'M��wO�����������<~�)��Q�֍�n����y�96!�z�=k�.�	�9��'F�:�hE����ZK:\��"����0�trG-�2+7�G5۰%W�u	~��*��(�NR
M�y��ё^�deʫSش租�?��;$2�Y�bV�W��*q������p�k{��2��[(Y�P�\�y)R��jul��_`��69ⓝ��`~D	>�J�͟x�Đ���|$�~��ȣ���.�Qr`�F�E��T�0ݦ�W(	t��;/�O���V��J�q��Tq!��l�̏(!tp��"Uָ���)��P�`��-H�t��X��Tg:M�<|�I���Q59��G��+=�����~-������I��H��g��AM�;�X��}�ǡ���W;<K[�G�<N�G,U��9�2�Ļ�����K���&���m�G�<���-u#Ϫ�ܙn����*���&�p�l��m�ƚ�1�J�R��O(y�^?�Ewo
 �s��&J`�a$�\ȭ��Pe/(�1Vg�g��$�H��Rk��&+u+�=��=s��O�1PY�$~B	�%s����������~����ӡ������>�
�T��N;�^�|u4���}}���}����{�-�V����r�PB��x��ԇ�����yUf�|���ͮ;��i�
�{�5ȩ��B)���:�J�;b��(_j��PJS,��ݻ�^�"�x��x��>L^����	��C�shc@�v���i(y+kKs�x[3o�����P��������+�"�v���zǨ߼�u��04�A^��X�ޭ�y%�t�7�Xr�ږ[ ��q��Z��{���گ6QJ`����~a^��|eW(�R9��٩�|��[����I���<�7ϛ��4t�R?8}0C�mU�'�pŜ���N�]5�|�y�-����su
F���U�x�R������/���;�����R���~�����������c����(ү���V�.C[�k�!��;��2���t/@B ���\��Fv�:��w%ԠK���D�ᖷۨ�6�s9�� �Qs"WOo�s�n+�%@��%�_����o|�s��15�vD'��wQ�<Pv�4g��],���~��g?����/��-�vt2�j�-��T-w��B��Ol���Z����K�e���5��P�.���z.<0k��*�M���fm����E޲�o��#�n�U�񊁟J��.cc}�\�G�wL�y���c�����.A9�K�k�}���/���H??��d����󗯚l#"V�ҍ� n,tB�P���W�:�%�z�J�$��9}�=��_�X(������/ڣ��gV��\\*���-@A�r�����KP5�7K�A����J�U7bD��#m�Z�)26j���c�I|M��j{�Bo/4�J�w�D������赤Gm�OW�Q�a@��ae����nZ{?��s������[c3Ʒ�Qp���pv�"���f~�)E�w��4#1'�7@����v#/[��N������#�0����N�ٙ��5Q�)�t}�G
�h{��������B_B�1��oN�[(��N{��{�2���#
��ރ��^@o��=J:c{/�Gz����k��;���U�H0�N�(i#������Y�B�����;,5Y�F��[.$sD���{���#�י�xr2-�X�7J{���Z�Y��CN�7L��_��/4�B���{&����Q���;l5�۪:;G���%�в�����J�S��D���ki��s�7<{�
��^��H�R�R�G�t�����;z}��t��3
��^�q�/C-�K[Ȟ�L%F�h{-�^s��,擟i������$وVC�\�L�x}���Q���r���<o6-���+��t&�X��X��+�~��6��6Ǝ߽=��+#&�����/�t�Ӎ�-��4�@)��/�@yc��	w���v,���$�M�8����k*��U����-���_���M)��3HN�`Z �7��ƛ���6xxU�@I�7߼ї[c8Ӫ��@�]��o�}ЇC���~D�݁{��7��X0;�܏(郿�~ ���SG,����R[(�����n����'<��~%�3�z�5�6J:� ����g�2�t���QE���䶤����W(�<"C�^�� iN��BIg!D�>f�w:�em[c*w
�,���E���󌈳����b�Nʴ�m�>��v�(ץ7��ۣF/?˅�W(鰛��G6��⑎7J�J:�%m셾| �RK�J:-"2�k�}�֥���{wD'�5eW��%�
��52j��Z߈uV�DI�Q������D8�ٖŞPҏ�e�y��Ki:���+���*�)�>އ��̖O����~~#��=�Z�������2.�˗�����V[(���t&�?>B�i�ͽBI??"wk֑!$�u"�I?d���3��Q����c�gK�.�|N�7�:.�u
���G�~�Y�/P�yfYz��W�q�`2rچ�K�%H[Z�%��6�7Z�+�~���l�������Jo�m�/~�vhr?���1А[�+p�Sj���1Ў�ȝN	�Ժ�J���K-9�           x�u�I��*��x���"��.�VP�x�W��V��ٱ>�qCz�8����D?�|$�p��"'�/���S��&�T���w��pRFbD����jv9Y׉���M%�P���q:�Ś<Ρk���T�K�MΡ[h�s���e:��;�S�sh�s��{/O%����~R���\$V{��Re��~��'�Au����b1�AK�4�}��8 �[��p ��9��R�L��|k���U܌�V4[�H�J�\ض����ZTW���Zӧ-�6�ԷF־�<���^v�t��m�E�Ӥ�I�+1�oFh��,�������e�*	��i���!4��ey*	�����!{ݯ�$���� W0��F'u��PI�P=\Z�8c��ᒧ�������L�w�>詒 �qZ���<��<@o*!�[�A6Tc��=UR �� ]M��)\�䩤D�^7C�~��v��T�[��URJ\�Z�\cbvP�Jj@�7��n��J�����Ƕ�[~I�(��'	V}����6�@��+wP�������l�����3��cE�^��y*iH�������q��U$�J�|O�%uA�J��X�I���c�I�J����X]ϡU��T	��p����	�5��锡�9s�JpH���tN��"���q���s6���w$�Ι��i^�v��'ܑ����X�y������U	�H>w��^��6������t��5�m�&=@�J�H�� ű-f�7ɥZ��ۿ ��m�jTb���T���ߑ�� tX8            x���K�u�m��ǿ��ŷ R�.{�y0����m�v������ً�/@yc=[ŋ����G�����?��;H�0Ղ�c�~������%����_!\L�o�_1|E��|��� ��'�r)(0dm$�
�&��vD���#~���������!�rLH���~���K�_B�ҋ�+�S~���N��	�;1�\����
�ݙԆ���3S
!c|4��`���Õ�i}�|���u�9�B��<��?Oz�6����Q�4��������]DN���\? ��P��+��� ����������������$��\�� w�mZx4-
��oZN�e��¨��ޣW!S%��R���������������Vi?�_L���v�̪A�(=z�AɁ+E�e�\��Mt}�x1�yջ��K�}	�3���~�>t}q�R�~��:K#��R�׀I�֋��[�^G]�b`�Y!=Sis��e	�8O�����ܑB���� ���EZ� G�O�:�G.�.�zH�Y|���6.Q�q�eAI8����+�YP�|���CZ-/��_�|�gu,oUG�Z��BP$�㠥f[E��h�<W���C�ǯ?�ԉ*��)��������~|�/�f<���!��4=�óo�S�_�[�ju�v��g�����4��	����߆�N�^!]5�d�ډ5tb��\8z�hS��c�U�1�J�a���OY�`��'u��!P�c�mJ`Yt�\�e�B����ug��"H=Vձ�U�0�$�U� �q-��*�16ߘ]G�����>QbIV�篖�"_�z��KR{�G\��V9F'.kcU�_���]�f�ђ�ܧRK)1�@k��Ŏ��p� ,��S�b��>��׈��d�G^�� �ŖS2ڼf���-R��GT�In��1��t�5s�e�j� nC�{����f�(z�Sm�-!J*����v�}�j����b�Üc��4�6��_!��|���
�(�LK����IP.Y��ߊ`y�w�<����X��nShq���\�F;o����Ut�/c~�X����ޤv[Ԕ*=�2���J��������uq�:P�PhPU2㐎^�7���pR������J^�R��ܩ�c�>�2�WG���]�=J���o�|qIGw� �N,Ob����}�Y^��}u$vGR�EJR��l6�m���Of��Y���"/5J�!�#�k�H���0o���葌a	�١�k�R���������}�/��66�_͚�H�6�c_�DGP����c%��bm�qj�bq\F;����J$�B��:?�E� J����������$FILa!��� ���㪃P!YB&�g��h�e��]2O�v ������!� �K#��XT�gR�m�=,ZC�D�5�Wbo�lU�&�!H�(.�[��e��N�P��D�K�#�<,XiJ��|m��z�KJt�xߪqrQw����3��&�z�7�����^5U]�*�z�+bh���!)�D��MdJ�x�Y�ȬI�6Q�3�_q�:P�'�%�R:���J��za�+�Y���B�Ĥ�� ���X�� r'��,�a�>kRI�����߁��u�������,�VRO )EX�!�m��Z�p��>U[�h��Hk�����/?���s(�d�2��l��������w�ر^*o�m�X�3r:��Š�Q�x�6U�m�ȂFM�λ�E��������T�.6��H�/�b��в.�\y�Ugu���P�TBX��ےZT|_t9C&�� ���s'(�mM�~���?���w���_�U�%)Ѭ!�#hT{#9��>�+���>�%8��/	s��X8�%��dC.KKq��T��2!����^$h$pA�)c�]�g[Y+IY�sH�:P�;��ک���L�5ZV�,%NJ*�l��TS��hԩ[�G�Ba�JI����Q^����ڠ�Tk�d�����n�� a�l�$ I�q@�$e?/(�E�UM��8��@�-�Jj��w]Y��g���s3wU�%�Ēĉ�ZH}�1KĚ�ʪ�K>��L%y(�ٔ�S.���({�����w;$q=�\���[�����r��B�:��\=�[�_+��<Ǆ��Ӓ���
.m+$�-|��j����GPZ�~��UO� dEY?�D )�Ҽt�j�<Sh����Z$�'�0}�1�\Z��W\��'@I�҂��u�[�0�1��m,�Mr�ﳵ����2rF�#�Q��]`Q(3D,�0w+�d�L���j�B���(���� J�f]�N�Ytd���쳤��p�2��p~P�E�"�N�B�h#��˪��B-�[�ʍL���>���$/k����ɛO����1
���d�W(^�z�6�KI��|Aƶ���J�Ӄ��PC�Ym���!�̔�n�q���[��/�"PE�^0�����nq�T9�J��I[ҋ��2'7my��Suo����:~�ӫ��go�n�דMd�R�jY�A	�5�~�W�!��H��-Y�� ]��-o��-�d�R�Y��5Fp�#=���Ht�^��G�%�|��:2~�����::��m�SEH�yr����qť��4U���X���"j��ԬT9�*Kbᡘ՗J|vQC�:U�$y��I�e�k�dU>B8�2G��T��)�CAX|���HU[�r��Ȓ^&�n�¶�W�T��oQI�D.JbAH<��'fvI�:P�nm�I$Q��#M�JL>i�yZ���_���p.K�D��wJ�(u�3U�ҿ���� w�0@���JL !G��b�"�-�e΢�j0��2#��k��ʸ�J���Y�{��T�]`�h7��������8k�T;� �~���E����
�N���u�J֕�`AI-��\!{��:��!1Sb[��K;�ǝ��:YE9��,cD%���+_��ց��,� iA�����8�0��Q�M���\T;#ܠ&u����B��Ķ7�w������@ms@E�La����N|�;5��� �z+&z�~�?�ٺ��6TT"�b�����%[uBm�����H���U�n�ZԶ�Q)��^i�KK�����Mg�Y�-����+��t劾���ѫme%�Bə���
�m�` V�HW!�*H��z%�}l�Wv�N�G��L���:~E�4z:��{��;�A�s�%½�}{o��I �����*��;�-wb��*icv4�}Y�'��"Xze�jQ������>Z�5�u�����f�f�-�]������-��Nd��YBB�y4��ì�n����]Ä���Z�"���dm����b�0�Nu@��(K���Z�&a�`vV�U[�c���w�q�0J��shT���l('$��d�m�x��H?��Shܩ��A�M��3)����^t�E����p��/��ZPI�TL�,�~�V�z�✬:!n��OV^��n-.��Wk_�ݬ,:�Ȳhk�Q2��NL���ĭR���wkV�{�\T�B��W����g���]��KT���(E��{^'51��\wsT��9w�k���J��k��]�G	L�阯V�,�0�,*1T�Eի|vjg�n�ѝ.l�&��F՛z��u쪃�ƪӦ�i�,��U�:˛/�\z�'V�xA��!�1Ҫ��UӞ5�5�b'e��¾���s�5����� �p��V���E��u�%�I5�C��r]&�Z�����}k~!U�z��6xxөI,�M�$Ũ�cI�-����s�:MV:��CKa�����26���97�k��%'�����/�~�U�1,_e���[��bh�dN��N�GPIqOZ���vV	_e�k�2�j-���Ʒx��z�a�ˆݬ�e\Ƒ������<V��c;�C�_�6mo4p,��J㬏֜Ш6�(t�Nd��:[Z�hv��`���Q�FX��4ֶ�#zK�ڨU��@��������๧�:u+�U���awj�2.���u#�8^";�����.�V�e\�E���k��uJk�r��wk�S:S�6�͜b)zv�UO��o��8����������-`i!0��h�bF�VQ��y(
�EZ
 -^�Uj{ �	  �GQ1�T�����W^���j�U�^�QG���#�RJ-+�U��ل�O���d�d��T�U)�Ny�JPU?�.�}V�gou�Tޏ�Ξ�5��}����Vmh�W���P���a� �:H��)J�p5��>Q�+�;[F5�����*G���U����Į:P���A� �DZ�ۏ]5[��S� �+նx"��7���
E9����.��j��߷�,��(�No��1Y7i�]u�x�%�nN�˸~/@	K 1*YT�\Q�$K�D���[:$#�=�x�S�N�BO�\v��hҕ��Y�r�*��RBo�4�GQsV��+$����z(j�(.	�QM#����nv�(�f�Q�� 8���;��1��դ��Y����e�OH:�6��N����bY�K`}�Bh�O�+بբh��;Xa��Gk��%쪃����_�g��	F�����B*�z��!ݩ]u����S�L0gѭ1}���ea9��읅�����#��o��=�U;z�(�,p���}��V;F�P�,(��6��Ze@���ժPR�Ke 
��.^1�ux0	}���� "�U\�[Ձ:�E۹���=�����:P�� ��PI��8���vT<Y �W/se�k����������	#ۘ>R����d�,�fLT���I�}©���l��܍�^p��"�h{�B@	�S�f��繩��w����	AjF�O�>���sΪ�1�.�**�G�+*�N�~.�n���@�#��F���p�z��U�(�Kr7�y�6��\���d�k���ɴ|t:��-������!s���O#�gu����!P��ӻ1�q���]��gü��_����N�#����J��(z���eEtBA�8Wܽ����kqoT��p�]Qߩ%^�v��Ů_���+�o�o��XW�A���[�k�ꉕ%6����E	qY9.[1��Y��!�w0@�����΂w��N$8�"��:�֖T��N֪Q�����!�d���oզ�?MT�����¨�r��T��@���݋V��Zo���&���0w7��������>����V��>n����8��0�ǖ���oպ���,�-�V����8 r��j�+�WX�V��Z��0s�SϬ����gkQ����ު��qCfϊ�D��Z��E"���]�譹���tZ\J"/��InY��z���ά�4�ϒ�5��xU+Y���-���cM��:5��Y��E 19�y\�1O�9�4]u�&!�]Z��_����g�fR'�a��b��qa�;�`UY>\���:ܹP�0m���j{�#lX]�����bq.�d���h[���6o�9�������٦���JÅ���C_,�~<��9����[�]�כQ��`�fՆ����+L>Z㩂ܩ�u���f����i�_	k0����J�^����#�8a9t���U�Z$�[ou���eT�X�gc|�V��q	'F��T�<(W-���@�q��e�=[��a��Z�/�{��Zg복��LbT�3���DR:�Oj����e�t�tVm�,���e>���k�:X���eb���t|�V:�K�.�j`A�7J��z�vq�|�.A�%wg�zcճ�U���謴�VZ��6��-�؏ܼœ���_ۉ��>2:�eb�����j�3p���9lP�:P�wP�+S��h�b�^Zět�O7j��K�֖ ��2j<��_���? ־6�E{��A�#)K0�]`�5,�?;��}J3�8@w��+�ػ�ެCNs����͹]�T�X��,(��X�~!�+�ѷ�Y��͵���{(�n��Y�ap|����{ c4G�u��i��ZV���E��i	(�z��/{(���1?0�d�|Zc�ma������q���(������E��"J�+��:���;�ݺY�q|�����ެv������{֚����~����f��������Õ�l�V��^
��+�9��@w2zփh���`�z�Rc�F�C���!�wȜ��N�rg�6�uVZ�UoX��&7\R�?��"�oXC�Y��|�~���aLE~�����(�#� �56��
��g�:��Ċ!׼���f�弤mU�t��-0I8 Ѳ��1��n�.�*���j����HY��*����K��7�;g1'�X��sX� ��Z�՛�ά1�,}�V��FJ\j�N�U�xN*N(S	���h�����Wo4��>a���gsu	��zð�/�	��w�q�0���E��m�a{k��RAR�y�YuDj,g1+K�F��c�.׼$�V���O,�Sr3Z�m7|�V��0�Pj�PE���n�8�d'wSYPEVD��a��K����t�U�<����%K+���'�PC��U�ۖ��I���j�P���z�j�rag�9�?�i��8�H%��aD�P�kx�jk%J���=�,�_�tês�p�6V�^m��њ~��<�8�<����R�� 4����4������.û���&�#�@���-׬��2��O�������/J         r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@         j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$            x��]ms7����|���_�i���l��]�8���ڪ��H��EJGR�)����̐3@��?�%[3�Xx�nt?�h Ή��?��ç�z�Ϟ��'%��w����}܉��u.� ſ>^>OBKm�K���Q�ƺ.�o����t�����]tBY#0?���~+N��ͮ�l��C?��;o�g1��:}��q���.0���4}�sA� >m��
���e>C���?�ޫ�]��7R.~��1���;L��7Zw>��A�nd����1�RE?D��y- ������z5!��~�j��s�1I�0u��H��EBU��^���4a��������V�����t{T�,�Я�_����nt��
y)��d��=���q#�?n^����A��o��� )6��Re�(LBgtZ jIYD&�J���������ɛ:�CQ7&����T.?^�-?�RJ|��m��-����~8v����������|��i��8��ta�$u��,�s�W3�ǐ�P���~ӿL���f mv�to.ʻ���dWX��(]�(Y�:�3�oI%>����q���Wq����S����~#��������rGi�9�*���3"i��z��� _����R*�G��I�2�ϿמT�썵]�&0�3�Ʃ��XL�d�/ʊ_��������0y�ex��k�y|����=��0���hc�&c,͍��+6��i)~:��/�}��yO��|ά6���
!/@����
Ӛn��;�\��F��1�S���Lc�&��(��@`����7���Ic4 ��5!^�D����b�B��"�����ݵ����������o���-`Rm�܂�;�"|�O��A�Usx�����n��N&>v�R����3�h.�H�,B�Amȷc�!<�T/=;��1��L�L�o������18��@��*GĴ�ʳhJ)4As�>��g�s���v�0Jq�]A�vV���i�R��YT�z~Zz
�U%]��H�u�p���$�QZ��|:�Q�)?��8��l�i���ά�|u�Taͬ�w�`8Z�Dp��]��7R��1>S�L,ѰR�r���yO!%[�.���hC�E���c��<+P���,��Y!SUG�H�eD��<JM��\�w�Y����aP3|���5�7ʂ,��y�b	ZX}���3)K�_m֕�� }N��	�Ԛ�K)SN+��e!���!�y�:�*ޢiq�W`��
R�����S�"S~����W�䗙oR��/���+�̩��K%�,U��� g��*#ۏ��H�ʓa餖�8+�e �G!Z�&ӹ���	���l��褈Z�}�!?�y����e����O�NW)�ȋS�����4_�eb��*ӌ#!����*�RΦ�ъ���ݽX�m��7���n���
x�@@���Y)�Ɗdr���+��լ�UJ�&��U�U��Y��~�R����v�x|=T�`+��R�Ū2H����JY�:�\�6��O��i�Q���g�t�a��J���>�ɰ�
J�jV�N��25"�aQb�<�럹��.�z��vZ�eTgcu�{�E��hg�i=�-���@�c���~�d�vg(��s�U�a��*=T)����
n5��s~�[Vfy���x�>PZ�e��Ky8Hxe"3X�h����c���
t�_8��,Jw!pTKYDd�֋^��M���������ϳ�,C�la<����$�R,ʨ�C8��%x�$�â�оK�L�x)OX���P���������yٴ%�3ϓ��c2�HLNA'eu�c)Lς��΅IxR����᥇�����/��,G���a��"'rs�%��XJ�У2�9����I�U0�j(^ZL!�
��ضQ=lw��z��V��N�����l����E��Kpz9u��\;Ƈm#�rKʣ�Y���bUxڦ�b��BvJ�ϼ�G� cRs��Z(�b�ާ�p��:x-�R�,�d�#�Q�L�6���ȀU(˝���:KQR��i[n}���NA�*�bլ��f*1T�Ӎ5��w�>c��/�A/x8�}���?�����ӂ���;e�B�")[�
?�K�)K@��[@�m�N��ǐ�Xx8����i�Rg�,������)��"��< �A���X-%�L+8��	���'��<�(��O��B�������W��j�55�i[(��%�1���cZ���|^����%@��'�%�8D|�eS[*�چX)��ӫ��H���yP�V�4T˞����8�Oy+>l�+{q��]~^�`Ip�@������[X!S�D���V6�w�A�h.���¢]]婾��ҟ�B����1&���֍r��|��b�=Ii+��ءZ���f��������/k�����'��H���CA�0��]S�79���]Q�M�H�p� ���5=�C1��W[ �~�p��]��b*A���p�ķ+�1oE����$)��c1�K��K=S4������6v�3����E�j#�`�s)u���6�\��4�yô�j:Km.HݘL�|+�����f��=��E��,Z!�F��c3(=�������*V?(>�6�?f�%v^s�"m��qļ��p.l��u<����+R~D�e���^S����;z)�L��>,��L�D6�%c`�\J�@�������j�~�@���������~���O64J<Ӹ6�ߩ�_)m�BA�����^�y�ھ���,�s���F�����L��唖�D$�.����\��f����$����8�#�|xi�H��'8��atO�K�g ����c
�'�2��&p�`���]K:�>��Y�<7��R��(�t+W�X`p-����g�5dӾ�!�:�*g�JyL
�I>�ND���ixYj�ä���0��J.�K���?=�/#��e�t��҅��?<!A����6q�g!�UEYv���Ӷ�3��a�ߝ����*��
3o�������Z��i�m�C�H;��'l �3��������ck���7 ��-Ab�,u�K��ɣ�oz�������^���K���ö\��tP�P9+m��?�Hv�չӺ��"_"��L*��B.㆒������r���4:����pN6(+��6�$q��
����3��3~y�_�+�:Zh�FVcJ�o����2�hJyL>����p8L���.>u�;�D�R��Ж���Dє6��I��C���?����q^�Or�h�ʱ�R7\a5[��
�Ì�xBt*E�~_AD�Qb$62�*a<e2������w�<�SI!�<���������x�ds����j���^����N^�~�<�QTq�.��Ji�dr��v�=��vW�ϖ�nsr��=t@Ԫ&��6pP;q���lVwe�u��Mk�h�
|�����5p�	�8��I�nO� �<�C8�|�p��p]��3`jiN.4mF3F�o�`\ڨ��!�|�c��y)�*�5#~>7��Tv<"��p>pЀ~jM�����Jp@ڐOV��:u���ziF�K�J�3�V�r�Z�,�G��UT�z��R��C{ޢ�q5^�:paU-m��6�8եFPT�Z���*H�N)m��&�$><��1�5��˟^�f;�xcj#Jc�Qt�4�DXr`�??SK�вJA��<I�9(�3ns���%)P����"m@J���;�4��F��Is>�V�y�����(���b���^����V�?�����8~cXc�ڞ�ӓ}�	:��%&V�����W���^ܮ����|)8s��e��R�y��o���60a�<�����aTC��NϷڮHf䩇D������+t[�G)�me��f�˧ws�f�H���u%�\�4�q5�ß9g޹��r�Kt��l	W�2���"��4Ro�N�\���~���L�-He\V���@Y&Y�/�9dK���U8@�@f�k_��}l�d��ur嫲3/m�$��P5��v�G���ʎ��v�(�].ͣ������-~W�L0I����N"PY��|��s����L��ASϽ]V9��{� �	  T9��::�R�A��H%Z��ʼ���^���GUH��L�!7�r�Aŕ���F*�Eۘ�B�ptР�������p�d.�����)	v�2�39M��i|�Wp��Q�t>f�5&����y����@iN*�w�\���=7DM^�^̽SS�Z��Y�24�O�n�<��R�+�A�����B�����*n�>�0K:7uV3�鷡u�f1�+E�,Z.SܳT���ҙ��ʹ9*�)�+b�f���$���lc�gʞ$�#��.�o�b�'f�S{E
,�RژUD,�ᄴ�_NKg`q�������y\��C�CUKyT�\*n uxYg��W���Ѓ��]>�� ������6���KS���V����m?�0��JQ��Jc���U��,V����n��5�e+`j��&0�v]g��6�A��
]3`���5�F��MHvS�-�K��l�.����T;�����.ǰ��c�\��:�:���Q��Gj�A��Yc�\��:�8��j`��lU��0��5�d�7��f��F.���R�@5����P��b�TT������z�&;L�,D����+m�BB����˰�9�ıHn���3%������k��	�Ǳ�N�՘Ls���]y�b�3�J���]�6���m��i@x#��!���Kp���GW��/���S�k<��\��r�N������n�U�^]�����?��s����P��*8N߮�[�U�y�g�v�,�/m��߄3��?mf|5�S/�+$:�͔�g�:X��-�Zʣ
�k�?��^�{aW1���ٚ�0�p��Sf!ue欴
>ހ����C��dJΩ�w2�T8�[���&8L�s�,��E�Zb��kbd8p���,�����7��t��ɲ�zġgQ�Sg���7�8\W�#+m���i�D�w��`����\QMW.��6FT�2�����w���ƈ�G���7ߖ�ƈ�F{�6F���A?3tޗ	/m��M����^^kyE�񛺶�Ë5=ㄍ��?`����"{Vo>lʷ���"pX3�h�ePOe2:@�k�h�e��$���S@�&y��s�3ץ<&d:��ٽr5&wS�g�)�F]�'xi|r�[�ö?�����-HC�bѷ4=��w4ɪ��KY8��j��>�����x܊�Y¡z>����#J��m銴1;F���7{���Z|���q]�����J���/�ڪ�<xL��d�D��k*�H�J����X����a��W룸ŷ*��7�F���&!�HK �PD���,?k�t����X٨覱쑯��I%2V�О��,i����|��|[F�&j���t��J]�b��"���L>���?nN�����ř�i_�:&���#���=�ř�&�u�9��>i��k��V��])m ��8>9C�u���)�r'����o6��L�*�\Kڀe������ b�Z�k���BOWy%à��[
�� ��]�_�ׇG�t@���Ȳ2��ս���6� �(�D���>�t�;K����-s�*��+XiCC!^�6�痩��U���˔<�M��5�ͅw�"e.�xER�>��e�n:�k��n�z��u�.}�<|Ω�v򀀯?N�c�KҲ0Jic���`(�={S9k|�{��Ct��
���v�%7C��-P�����Qt�F��e|�l0� �9O�t��������#�j)�"�Z'�q��8�e��룜��I�x��W�i�PM�b�u�貴*VK3�R�u�Y�t_�E��Xڹw����ɞ�������0v�!h'v�A�^�t�6���k~����m��Lu�>G�t�S��Z�@�UyA�����
�T��W��� �?LCI�l����<�P�3���3/�Sbn������YNz�Oa�W��#�ʑQ��R��+m��V�������k�����E�U�@����_]�c�41X��m2����e3������z]s>�����R�7��h88O'�N��.����8}�J�(�2���ed*�	_QlN�P'B�Η���g�1�s�7\*��qQ6"�=)�f�K
�Z��c����!�}��_\�3��JyE�C+�]�3�\��r%����\��� �D��!����?�X8 ���[���<<.B�<\3g&���U���-+m��?C���͑�§ ��⍢8UFX^ڀ�0�36����,z����l�mÕ����t�2-V� ���к��MN3���$�^�x^���e$;9��볣��U�����������9�0�'���iL� *��2'�D�6�'�����/j���t7;)��6 ���esSd�S4h-p��fc�q�iLQ)m �7n������v��T^]g��o��F�᎗6@!�5��8P�-P�:�l�f��6@�W�� �ٹ�o�nQ
��f�X��&�V�E ^mVKJ5^�i�Cʼ	��s��	~۪ҹ]1�w�ï�Le�j�`�6����VUJYX��޽{�ܷF            x������ � �         b  x��[K��6\���D+��:�O�k����IP��K �3��*Y� ������c��?)��K����Wk�ʧ����^Z~F������/������wh�-��۫髬su�=�T�1zF�_E_:��fBP��������Ne�y�(�r��w:.h�j9�fOPj|�uhX�x�|)��ք'���%,��₝|��S�'�PjzLΉ����xWJ�Pj���l�6y�rΩ)�C��c�!)��x�����R�Ǭ���/l)׳� ��6�%�&��W�g/AGJmK=��_���6�2�n�(�u���ٴ���)J���w{�.j���U;��.��:k�f�/4W��DJ]�5ݱ!�)�^�V�LJ]AS�
����US*�R壯[���2��p�镔�T!#�H�D�R��d���@�R��8'�=]'_ R�j=ƕ��X��?�Sz�HJrT��w�D"�EC!�P���/h_ҭR����n��A��4'H�yr���3�z�dLH�j�B���R�j�m�����5��v���][;k_nM)J�5�p�%Wl��,|N�	S@ɔ]�����A#��n �����_H�V}�<�e3sܦ��<�g�C�����%Y��cF.pk	S@	�f��niަ�S��-�z�9!t��h<
���PB���.��s��e���[���E����"�PB�Ō��������j��2�����k�������)禉i�m�m�V�Q2���(M����I����S��LJ��{&��`;g�8��		��TAp��^d��e�J�J\�T�4\�:(r=�*CiB ��;}q�bª2�&�֔�ﶨ������P�t<Q�AT�(-<��*��ZO^U)JhQ�&'�l7p܅ϱU��T��z���~�!������׸�֍�"��yz@	/ר�+y��,aU)Jk7�Yʖ�~�dDJ�y��+���V �*'L%kz�z`��T/���������K�;[]�{@i��M���W��=�d������(Y3ƭgT��xO�٢<H�����,��Ԗ0T&�y�b�D�	�39Lؤ�<S}OoH�2�g�P0a�zI��i9��P��;�L�ap}@���5�Lw��\s�}�P�V�{�LWWb� �yz�%k6�w�ļ�\1� �%k6}]A�lä#���)E�zMޮ�?�i���U|��(Y���+�����S7O?�d�&����
��X�*��u��y�=�P���
���d�&/�wl��r4�.)
&�|\s^`{S5<]���[�{Ų5�	S"���<F�"�dGb�ΧD%k7y�{�A��⯄%k7y���,�*>�S�v�9K���\�Z��(���D��#�3�)C��OqL������J�>�R�v<�3�Y�,�`�<�`�ħ���رm��.E��O_3�q�w��k�P0A��V3�l���%�Gt���	"��J�X+u�p�=;�%Fcb���Z}u��J{��Jg�;۫��81 x�T�JF�|+A���*���ʗ����=�;�4I�J{Z՝��l�[#er(����<�|!ge��TnM�*�˿Z�!d(��l�㛻����������Jq�g�e��Vϔ�dc"&�R���xI�(q��L�������`bD��F�n�p�bZŨs�k�P��S�ȨĆº��+�
(��)�vY}�bWQ��L%�<�������Q�����J6y
�n�w��2Q>�%zɦEa�<�v`#J?��p���	�ׄ�mS��
��)�`�ȹy��e\�ݼ�g�l�	Ӿ����	��xz���wQ�j���d���rL�G/��<�V���(� ,�pŪ��J�å(� p����N�E�>ߺ>�`��e�L�Yg�l5�Q��\dy���43PΡ�3e(�h.v����o��Rt$aQ)J6��]��j������w*EɆs�k/��ww�%����ۘZ��%��.��j�7��o{����b_F%��)�CA����+��Kt��=S��	J�s�w�lk �Z�P2�@*���|ǎ}A6�XN�Jf���nQ���4V��P2�@j��K��:�2�lؗE��o4pٶ�/Cɦ}�QTW��S]�{@��}�QT��᰹}f(ٸ�I$�jvI*�3{>�M�bNiJ�_�q��P��~��jYV�Z1����(ټ/��|O�涯�5��RT�Y�3��a�����/EA��k���v��0���������fbE/Ei[m�L��a�Ǘ�d��4�Yh�No���Kδ��_\R��АO��#V� �|M%�3��g���w�RЯz�%�3�k´���MQ2?C�|fL�ʬ._R��ϐ�����y��NQ2?��_���O��]�����L�(���ȴ?w�M��(�������(���������?1a�Р�%�3��)��J��`��P%�)C�$�L��8����P2��&w4Ԃ%sX�����Ú�(���f�����`z�8�w#��)
�g�_o���w(��#3��+v�.��d(��#3�̯�j���P2�Gf��;�ޒ���!C��:>�g�_�5��{J��%s�d��Q.��>-@g�)C��#Y�W��c����3J�i#�=V쏖�ef(��4e�_�g���P0u0��>6��ƙ23����v���O����dn�������J�[��J�f)g+�#/�k�3C��,�{?��AT�Of4ZrW�
&��L���G����Jf��3k�o�.h�֋�1S��I�L{�����3e(�Ŧ"	�^?vb���t)5g�6�ߦ$3���Gߡ���.�P2�M�k���x�v���%���Q߱�>�����(�ŦZR&��Qo^�)
&�R����ʻޗ�29LХj�T��"�;��`�.5h�����I��Lt�A���1f7�l�JfE�f*��_�ԑ�)�`��5S�坠�e"� x�pu�����>;zF��Q��\��ͪ�.C��Q�A�ˡ(�D5e(	"����b�{aܯ�6e(�ͪ5���Mߞ'��5e(�˪5��zY��6nx��n~��ﱦMn���R�̬��ON�/w����%�j��:p�����-�p)Jf�jϞN���s��.EɜZ��Hy'��^��(����sE���G����KQ2�W�����jc���@�s��c�6            x��}Y��ڲ��W��vc!}3��"6��
6ĉ8AJ�4*��; El�Y��֌�*�J�Lsd7r����;��h^�f��25�a��8������A��A����Z��Ж"���(;D��ގ����p<2�w�׫��,`>a�E����>?E��#l�V�0��c��ؿ�A��I���0�/T ����|�yi�D�t-�uL�X{�!���7�e:&�����e��G��"����>D�^D�~#�� �,�3��{��a�]��o��%&Dʮ��t� �v�8�(60󣵱�|�١��-JY�}�z��|}�g��?0�a F>��Nmd"ʿj�#w��-�Њ�Hc�i���W~��o��6v��t��	E�#���20������1�j& ��dU��;b`�௥b�70�Q#c�aIͦj<=$x�����"�Z?�i�/Ա�+f�0�0����`��A�#������PO��6Z&˿�Q�h�w�bM'0��ʧuBz�Ʈ��r�`��,���� �a$�rT�0�=�-y��:8A�6��2��F�?(��� C^e�Hmd`*�w�'1p�lVq����h�O/ꠊxf�+H��j^����a�n�3%T���������`p�yH� /Ļ(��,h��1@���Ҩ���~&J�}�!+� �`S<-6r�6�C�_���u6� $EU|n<�c����X�f@^�3| �������rC�"�{$AQwd�()�b;�x0'�����5YcTYo�}ߚN0�P���
���ӶZ�� @�����'p`'�H>!6��1I�����e}��".����b��B��Q�X�Un�$w�Y�/(u|%M� tɧd�� H���!�P̕{�3�-�p��/���� "���V�I���d(�ZQ�:��)]y���ΚMr�ϺKx6T�C �t���_������I��x�6rP��$4լ��CR��Q�_��r�S���!M���:�6��ta.+��@�|^��F9D"��;����9"H�]/q�J��]�v&��2��t�4��IWC��D��E$o
FV��esI�t��I���f�PX)���
�7������ )ʫ�=�=l��m�ʧi���Ex�����' ����1�8'"����#����	cU���X�C4�|�e��;t����D7����lً�9%�+��I��J�b�����f7�O��D���d�=����A�H�?HkB������'Z���XBx"�U��.�%5�"����b�K����,�?Y�{�vr$:�C �] �����0�- |�6Pm	��8�(�y���j�+�w�-�>(�e�..�>�x�K�>dO'ڑ�γ�C��od J;���E�����Z h�rm?'���'D�;ϻkG����RM'b�tv�}G��*=Yh9�y���1�C(��>R�$i���Қ3��!�������ݩ��*��q��c<��k��s�M��Ό(�U �����H?��BmD�+*�ǽtю�\����Y�s�R/�[�j�;��O�� �`.rSJ��ֱ�(]����
�K�	��d�����۸��'��yx��h09{�l�+�@Li��T�����5�+c,�8������@����~�^�v�	{�}�[R�6P�Ω�%��|`�.u59tS�J^Y�N��}&@��u�i����)��R��'��NmГ���w�Ɗ�oNB(|�A+ъ����.��r������5�t(����z��+�((� ����wj����Ȟ�!�3����@��s�ZW%� W����ȅV��c	}��e�-�y��/T �(c��*ߩl���8A��(=�ԙ+$Y�w��~Zݣ3�yL�tuϽ`6ϸ-��-�w�H�
�D�?�~�6���]��"��L�X�
r���f�����QwO���J^��C��.gs���C30��8��Q�F�*V�R�6�V*~��E ,�]�-��h��:�#|�jG�[�0F=C��4ƙ��;�v��g�WE�@62�p���7e:L}�8��F�!�.��eɏ�Iⷼ����*̱m��-�\b6b��y�?Ѭ`�E�"�J �LA�'g�Fl�W��'�;t��m���!��{S3睁��tWM��mrcv��R���Ёc����'Ԡ
��!>%���;n~�٦4A�M�S_!��5g&rz3�I$o3�q��cN\D�zه7K6��������Y������iq�T)����Gj�m!���j\���f�`ǩu��x�-w��!��.�����K�[lY��z@��п53[�0��K���;��ި}�6h����FIg�L�ЛP�ý��]z�e�֖�,��NXb��v���Wz?4����'b��S��|7zr��@Q1Oţ�{H6���i'�S�^!iCzu�z&k�JI�7��6�[OH���Ny���Ɵ\���7R�@� �ث}h����4�?H�AP�/����g#p�l�`سϣ�A�
Hn1����5�p�_�����GH�½6�I�S=+-E�J9[�g{�YOUk(I5�6���tLZR<�6��
c3raZ$�l}#bD�
ɡE���)����/VH��V����B4���/UW5yAq�3w;\)}���^�.ѲX��V��ώ ��
�@хSas��@cI��"��t��5��x�Y�tOxJ��d�[,����E?��J�"�?0/N�'���N��s�kAO	Ȝ�Nb��nJ�[�������^�=\��~��2��b4�[�h�V�A� �Vo�?tskXd�� &>�~�>@WYi��X3/�p�)��+�b�iʕ1�0cb͍ط�+�_$7��2^�]�(B���aH����σ�w��!`0j� /�F �j��������ܛ���>�^���*&ۑ����I�Zd�f�'�W=j��$k��C��X�ML����4��0S6�	T�ȫӠ�f��i"�7�Y�����qB�87� e�K�Ӆئ���l�B��P��r�G 2�������e�,�` �dB��zZA���e:��ϒ��+��Ȳڡ��l���l!S�t��!�G��ޝ8]M���DZ,���T ��� ��{�ph�[�P<�=�����*�#͇�`'�V�n\%���%�n\�(�t��3�XHusTi?�E���{� 7���H�$�1��[��#D��1��������Ȳǋ��� ӧ+G�kg/lwC�ORL�ۋi�5Ǔ4��X��D��W��-�Ƕ�]舮���o���W-Y��2�4�j3�ͪ��]$/o��sp�\�"3���p�7���0W�Ɯ4�/��Z+���*r����Z���o0cep%߂�g�s�D/�W��Y��,D�ib�in,<?��̔Q���N�G�Ď�Jf*��6_�����8H	�?��'���8���,*_��HӀ���t�h��ߟġ+n��� x@�՘�Yf�������}%��u���r���sg��ʩ*�E0b�g�B��UV�"e�G����Wi]l��tI��ujx�?cSo��'����To�m�l�\��0=C~�$�sX�-+�^�AW�^�j�f)�c�e]K��0Qx�ɫ �]Cvܬ�y	��x���>���b��x��|����?/��w�5{:V�����y��~��~1��ezH����ԇ����vn8|�1�g'��Ѐ;����p6�E�/�Ճ��Sm�����n����ˎ=��#���0���<�������v�RO��\6�p�
�(j�,�`X��v�u-�K/ece(t(�q��a�0-��)�n*x5����/����� <�֍��0����cŔ� �����t�5UQ��욂 ����Z
MZ�y
?�n�)2ݪdL�0��}��(a��!��y�e���VN�l 6�:C�Q7�'Jȓ�s��n��f(�!�-�<�!���݌�6�"���Z�"��de�B2�d'qc��~�LT{
ti8���    3
�dY���ss�ĊKK��F<&��}.�	Y�e��D��/�BѪ�%+i2����G�����ء(G��;�����P5	1��BC@���u�d�[�_�{ �����^�hAZ-O�%d�]S[zCN��!>�y�.��z�&:�X3\�u�j  5��!y[��M�2sA^u��*��BS5%��C��@2�뼲 ��f�β1uچ��.�rp�-$G���1|/�a)�|W|n<�긧�SY/J��
,�7����Px]������p�
6l����.ۧ�:qT�qS<��#!��x�u!\����0x�M07��E�o}�xбr����� }�i�
~����:>O7�dD�\�]i5W{P?A����;���dfr
-�q�#��;��D8��#���a�I
�T4��\�	�r��X�z��L�
��^�ѵ�Ɠa�'n*Қ��Y�`K��P�L��T��@4)��c.��\�`hYP8(wG������)P��S9����4��#�W=�r�tE���Z�*y���D�$�3~9<4�ۢ3�/
�D.�����������Y���w�����2�z�5c�wWS�C�fd~����K-�IG~@�G#S�!�[vgv�]�wh���`�7��'�4�w�C�h����`$J �]h��V�-ѥ�z��m`(���#����݌43�0}ßH4�EȂUFz2Cs����
Pve���|��K�氾����\�2�פ;���o�-B�@2�t��D��y����O.|����ge�H�&C9�I����sS�'e1��FR��;�:h�B"ʄ���8^��ۃ����Nm��>��P�[���Z�Q���;A�JX].�o��'��42�G�1G���]uP��	�2N���Q�@�|NU���Xy /#�:�輍����ғ�#���(��D�a/>���y�M}����oWH�Kg�r��!��F�����˼���ԇw$�IA�cX�ݏ�m��瑚q�$��pP?���
7���B�6�B:G�DuR j����� �f��r��>�Z�7'J��S"�v��J���i�ٓx����AVn�G<0vQ_$��t&�a��
�����ݙ�'ժC���쾇R�VԃD��JJ�rL����P�ԣ�7���0U��Mƛj��b���:d9��c�34�So��<a��]�Cx��,�TVq�r���ڟ$� �r��63W��h�y��ܙ�+�^:�2#@�v6V�x=H�%��
Z|l6tN�Ξ����4�5GwX�����üʠZ��������	��yC��˦:���x�%�{����%���r&���ԇg��A�zL��5aUG��n$��v�a�
B#���+�'�zSe
����rzv�b8��u8���m�����t�w�����F�r��(4`+ߞ�V@�|��	�ʎ�MX�0'{\B�b��X7�+�����[�(�7	�������7�u�>7�|p�z)6u­���Ywt^Y�ea��h��+^]�R:�pbb&k��c�<E5V��^ॖ�w�*�!A�O}���
LL�)�=m��s�v��2ߛ�A�C�ɼg��Fpv����(Bt��Z,��`7>n]���h9-JU�W�%뷨JW�/��(I_�f���E*w
2`y
N�~�N���e(�|:9I[�C{�BQq�2�E��<D
��Yv��g��@|~h$���cXk���M*_zB޼h�ɗ�a������v>E3�s��QX�I�E�B�a2]m�g��o������|7���j��j������ϵ`�{A�=P������t�~ʈ˘��7��2�n?C`ӤX£�io���箘�&f����f8��e1�'��N���9*-�t>`��8~	]t���-#�Vm�9u;Y3�KX�R�c�{��UkDw�|l;�`;^����GZ�L�XHFE��n6Γ3��-G��V�⭺y30��F�j��j���ŗ�
/����|�J�;\��r�3%��m���1���5-�7ZK����=��3��sa�'��7O��W�l��W�����P�)�b�?Q[N�2ٝ��(�i�9���v>A'� ��=q?��L���~+�.3e>�*�����?�E P<M$�dǿ��l�� ��^]NP�~0
���)��p��P��̷����t��{�b����%�@{�����&+r��.qitA����N�U���H�㦫ʵjOs�_6�~�>t^���U���*��:���� ^J��;�/3�p��~���z ��7�{�����N97P��Ly����Ȑj������_��uZ����X�l��/�6��_�'Z؆��A��;\���aC���Bet_��W���1*P�R=�
���{��B�#d0�o��Dl)�i@?#���R��p`��ue�E�r�D��o��I�6�
�+I�Ys᭴
ui  F�Q;O� ���$�i/�� ^�T�YȽ�F�K:��]LVer:�m�p�L��˸{G`�Y�"~9�:^�V<��8�.t�������l��M.�����n�O�l�	�å�/�7�M��1p2蜚���·�~D��p���qqņ����Wk��ZƷ�L+�$~D�-���f�q�I����0�L�(MC��	!�J�B�W� =�#㸿Jd<<��D|�g�_�y��)��&޲����z�V�A-o����3y(���z�x!F�e�f�2�N�`��T���_w�d����w��L�_��s��@�G����m���m8d�iY�nbSl6���]��4S��.+��.�-�L�kX��+�7=���"T��IP���Z5'��̏��»���ƫF$�>���Rz�^K]��ƓH��y6A�h�l|�YM�Je������9�+���!	��
�}佋wg�]��-)$@Y�n��-��m��	�ix�1'
�Ovƻx�o2��CX��d�,Zo���,`ᥛy�ȝ���ˁr`4��+�AN�Ov5;d1	��D?U�
��T^qS(6�G�xP�}�-�b���_�Gd),����(���FC �y���T����f�a �݆�+���C�xyBo��u�R��$�d5Mg�/m��c������I.��5@�Hn������䀌m]ڳ�����o�O�E	�o��'��hh�Vg�v�
Ag}��E�)̤�n��� �a�%QO[��,����4���dM�^'��I�?#G�j5��;��D~�>��U�1���j������*V��y�3D�e�q����LΨ|��&q�Q�f�;�P	������wS����yC�[u��ڂ�ԭ��t��t��m��A��D�-���O+�=K/
Ǽ��1	w���x��ڙi'A�K� ø��t���Q��_�-k��_�$��-ʘΦ�Z���wM`��h!�L��e����"���(d5�v�p�ț=�rN�f�zՙ.��C��c>S[Z�եg/��Z?x}�;���aQNc��b�:��,��}ω\�Ks�j�2|=��Y��@к�b��S�|2���}��������43�ޙ��)��h��L�"�����O8u�K6|�s�&�M�O϶�Ap�����<˿¯v#8�ҟ���
MU*�Z��-�ϼ��S�U2�ZQt)���O��<h}�Нڀ��������b���	���o�8���0��W��}���p콛Q_��h��݁��ӳ��G���L'ev3�u����Α4�(Ѩ�K"�O�CKIƲ��ƣy�|�T�J#��I�ݍr����9�2<����."L?�n���h�{���[n��1��}�x`s��� �iI�ōɝd�`����f��[,a<�\(3�>�O�VBV���dU��~�����<�e�Y��4��2�Z@C��Cng����z$6�ހ-��}kTy�m�:�-g�m���l��)!D�����֛߰��� ?���r��� R�~O�$XNd*��=(@CrFM]�G��uH�����輾 �A�/�V��=j�;�bQ\������%k?b	I�ă'펠2�a�	KC�    ���-%�F��S�^Y1�*�����ګ�.�t_7����
�2FSꝮ� ��S��fڴ{YO�!����A�S���� l��B�bO"�oeU�Khu0[	�Gk(����r}�#q�n�`��
���?���.���^x__�:8�k
+t��2N�jk`Ѽ߻�a���0	PB��3s�wʆb-����7 D9�R�;�e�����N��[�����?�����$X����1�d�+��#��fb���ĳ	9��sW��Ms�f�=�[�Lu2�}��>�%5�ɜ����
��g�Nd�>����xy�^�,���.�N,���³�>���ʨ'�瞵��*%A���M�/
W��%��<�3������z�E%�Ꚛ���څb�abl�� �|�w�}\�F��ފ�AD��Q���Z��(.�q�f�K�^N@��u|���J��(�EH�;��\�ِ���4�a�o��h�>G.N�Ȉ��AW6�w�Ny+]�sg�z=s�VG�P��O~���ףZ��I3�r'��Ä4 �'r==�
��ܥ�;d�\�c.N��E�+�Q�1X���8^34\�����3�jw�����S��_%�=�|*CD~�m�x��#@�E�! )Q�xk����됻"Z�LXwtC%����s�����w������?�� ���ʅ+KO��ɹ��b<��.��i�N
v����l�
��%�@��K� Bfa�O�2�$������T�	��ْ׾XM-�Fӭ#��T���~^���3{W�s�#�95$�B��}�l3��َ����v"-h�'i�Y��(�*(�~���b^�Q*Q�u#[�m�I���Gz��=$LrB`�N�a~��0�-�j
�q#���&�}x@�=m6��..�k�߭��{�p(�'j�/�O��f�9�_Ϫ?
m��9)]̱>�h߆��4Ǌ�aCw!�޻�b7O�&!�,��P�_�?]e+�Gn�@9UXn�bX�j�Ǚi�JAk�*��k�_s�`�c��� �,/hy)�����&-F;>��y�=,P��]���D_��J`��fG$)�Ǐ�V�^/Q�b�O������sʛ.�Ɛ�@����ϽD�O�+B�R��r���4�O�����������
.GM_���T�%�	o2�G#��[J�&p�{b�N�=��y�(�ܘʮ��NP��m���ݫ�b�&����=]0�0S��1��黺�f�`��N}�>b j�}��π�چ~�U�Z�.��UW�v�����"�w��/��#Mzb��<C;LyG�(Q3����X�],'I�7��Hm �ֶ����j�;΢>��_������f]-�}�;���F��{����.�C�^�����Ɣvțy���T��a[����=P��m4�x�`dMS8
�ܤ+ڻ%�_��I���S�s����K�	�P^����w�ou2J�����ڂL7�a�~R�f�]tp�i+�lf������N�k����Ż�x�z+�ꊩ���nSU��츦��Q��-]`yK,�f��-�7��O�(*)�R���2;
'W��F�#�&n�ߦ�H�7�嫽Ax�j�r��YY����A<�Ks���ȉrf> �6���\[�W� g�1�u��	�T7A���bT�Z�dg��e��O'�N\����A�$�0�(��L��6�eo `,O)���o���R�3��{�E��p�9$)t ��8�J������|��Sg�ˉ���!��2��1j@���_Ī��\�Dl�}A��x�z2���Df�6)�S@l�F�@nmA�x��[c�����>��m��w8J�'M�� �~]���-	*�?W&7}��P5��[y
��d��l4�d��8�(���!���e���6�7��x.�#J~�PKh������_����㷼%k]��!zV��&��iF,�UU&�|i�\AED��U�}9�~��$f
9�k�}M�I��A��kL^`�Dmrt�v���n����<t5��_��� u��ZЎb��0�Ð���iS�!mQC�ɷH�D��zy�qy�����D�3�
z�&����\+1��ƨ�80w,w�P
���D��� �r:���47�r�_�2	�-�,�Apc��<:~���6�pB�7���T^��4�+ֹ��t�Њ���Z��,�C����d��K���,��(���ծ�/4�B�%[5��^:��/GP���ʃ���h���h:S�⩋!��INB��Å��L��4�Q��^x���wb�@���	S�fV<���o%��hɴ��2�<VP^sC�mg���H<(д�<�H�����A���~���L|��z:Ѵ�-�o|�:�V��\pt���̶�&A�F�SV�h7TSh�[�� j_TS؍�w�U�N��}]�z�9i{WY��-3�ɴS��]�6?9n�if������I�%I�,]�Kq�P?^D6�ʤ� �S ��{;��d�5:�
�學 M}�����^O�^��+޷-GƝnt^qk�2Rz�lz�����J��f��K���S� i�v+P�컶�GH��2J��wj�F�[=ͯ��a�76�N�y�Z]d_�Y(B|o�3Bx����]��sshm�.�g�Ty��!7�?�25�*Ũ�{��#�Hm!g�Ko--��ۯ�C��T���a�/������������ܵh=��C����ڒ�r�t#�S�W��>q:�>e/V�́7sw)-.��yq�����A}�a�EjO�b���W��`d�o:��!Vݐ𸌹��B�J�C�L�7�~���sl��(i&�A�#�	�O��G?N�A�}A�c��~F��e>#x�>ԣ��'ԑfJE�������x(v�x>4D��}Gb�
�ğ��"Z�)�!�t���*�)��T�\�����~���UM�hŧf�S?��VυL��������`2Z_�~C����ڧ�p��w�0<u�cV��YqD�X�e���Fu}�)����vka�0�����E��>����B_���U98����j;ac�쾡g�����-~���|�{ .M�F$G���)'��ޑ:E~�x ���H@��n�<[��6~���L2�x}c�,��M�d�2D6!\�	��C"���ţ���'�G@~k���j�G?�&��m���D3{1X�[��Kes�O���	<:��1��y#�{�1��x}����8*�ܬ��<��?]6�)�,��%ղ`���z�lm(s�]G9���ߛ�0pC'P����Q},0��i��=
�7����#�����z������8E���B�Wg��}"�&9��W9��B3T��,쉋��ж����@�@�˯N�jd��F�W���w��a�!6���$I<��G�.]P��+�HġD�v�|�������c�E� A�1U��� F�C�c��Y� ���W!�j|~���P��ya�w�:��Z������^��|��+H>p�.C���-��p�X`9;ؽ����ly�f5����3׿�P�$$�4��>R[2T=�2�j��Ok�u�h=s>���ǦgKqP�����49elnG]��Bz���j.2+��_
�m�TW홒����P��j?
o�D�&����QU�[�j0@�D�m��	o��j��if"M���h�&D���/�(�0��U_�-9�9�Ә�qk%�0}m�jnء������	ܳ��T�WZ]�\f��.G��O��/�@���r�fQ�-)�g)�A!��������F�]�+5�*��0���B�(���%�"�|nUTE�]��O��o�(�S����GjK
�E
A&5�tsO��?���+�׃��}r�9�\[^���8{�z���C
���o���7�o�#�%�*���.㯈S$+�(IFh�N%�;��M�
E���@�e���4����t������r�;e�-y�I�wjK�Y��i��cn����a�|L��f���:��k�T����9���Y�::�o�� |l#Au{�+>R�G�G� �F���@   �7�Z�tqZpۭ����j�tr%����~���nq)�rH�&[B�6߿�@�j�,�����ڒ}�D��m򢼓b��3c�����{��l��K�,����.N��Xnw7�q$�q�%����U��H��DA^-�3�%C�ʻ�ʌ�q�б\��?ѳ� �^<m���a�p��sy�7���c�4oq�v �y���_�W���+��*͏��*B����w���d����(�9�H��7>BE��Q��Ga�����i�@B[&��u�������3����n�k�����\�	�����bZ���,�ϣ�n��ը[,d�"fA:�����ށ����/�̌:e�Z�:��"���kn��m�j����g�#7����}Y��KG��k�g��N�K{�g�j��.�������c��И
�5�r
@'�����)/�������N��6�\��0��H�9Q�Z�z͊�$��DdcVܬ��;�B2\6�����4�����o�җg)q�_���ԇ������5d$,�cZ��uo�{3��,O���Wi�3J@��:���Te��l#���W2������^y��v������܎� �]��a�K��D�c����x0O�]c��!b�{�#
�>[�*Ŕ�3������L����Wj�_��7�2�P��	�M��>�� ��L���gj��u'�?�Y��:������7׬�[@gYs0$Ƈ҆�i�]���
l�ӽ��uH��a��A��ﺯ/�"�=*�=:}����L=�?��!��[w4/��х���L2EY��<!=�� 0�g����v�� :���$%}����Z�J �K ���3U'��,Ni�?�y{4zA���8F2A ��U]e�Dy���ީ�%G���z<���7O/��!쭌�Lm=�l=���<?�{���3��d?R[O�~�d�qi�S���XQ��P���u��;�� �x HO1��<QN�/P�j��.��� �y 	1��hS ��Yn���|�>@����)�|v����~m�%
"��*z�>�k3�^����/��~m��5F4�C�z�6�� 7;�@c������O��T���?��W��0��%:��N��B�~�|��7�q|Ho��Gj��X��������?^��z@y�K�#�y�R[�̐�D�x��x�/��.�'��m�tU��������xZs��w��S�Ȯ���c����؝�VO�$�34�I�X0���('��!�c�F3��{���x���V�����Mq�M°&]�B#7�[�|c��(�8;��{z0�B}?S\V�|<�v��d���\��N������|�A}0���70�^}��_�����$%�� ��+Qש�������� &Ltҥ�R�E(3�l���d���g�����/8Zn�?3���0Vw���Ez0�V�}���c-�MK%
wtY'��D��+i�ZP����@��ۛp�H�p���Rȃ~��:�$���w�K��!�=�|����ogz��|{ҧ;�6�aq	����b(��ټ�D�W���Hk�l�:(Q�L�7���C�NԀ<�@>��������%��|���픱�.;�$Ԏ�Lw|�D8qCY���:F%c�4_����������)��ă�o��2$�7����W�����~Ԝ6��紏^�=Ⱀ'��|5 �P�$��V�ܪ�n9�Y%� ��y��c���
�(=_y��'����)������9���"�m5iХfd��>{c���~i�1ܓ���n�g�3.�5���|�-5�j&�_����r�͜vZ_iF,H���r���#��yj�v�9tp�/;K�����e����V�ь�0R��?���[đ*�¯U�gjz�n��q/D�(�S�6�.5�=,W��`$�3-F��ȇ�b����\�Pl|�i���[ip�pC?�����o)��o������C�r��ǥe���j�[�u{�.�xQ�"=�K5B��`u �n����ﲊu�K��'꣎��!�-ߏڗ��ў�TO'BQf�TE��L)�������	��ŎT����m'���p��Z���������Q�^���<B�7�ꉖ:h��a�m����b��Ix#�3�S6���X��1��Xי�08�-ß�U�/#�8������^�R���?(���2��3$r|��w4~�1�'+u�kn�K�o��e�=��j�b����z�w�rw�>��;���~��Z�'����E.�$0�t���khy�Ӭ��Ns�:;*�S���0tjУ-��/�_]�L��g�/�~�|���U��:����S�(���2(��^\��eh��w��^�yQ0q�v�=��p'qM�����ë.P�p�3�W�|=R�h�P��+�����6�(v懘�e�� �MX�&�4"�G�ټg{<�q��*�G�_�ǃ�m�X}��g��-*W�{Qh���$͘��0K)?��!'ʃ���"d�zf?��.�����Mr!��|O�u��S��ީ�}�M�wa}R�-��1��
�8��8�B�q�Q��{�/ϗ%ɭq��`{H$g�,0��$�}��E{�7C��h�7��aъ�o��/�x��������V���:���0}k���$~���~H}�R��Ǳ�������4��y- H ���~j�m��'�@�>��� �h���/���d1�E�\�E�fS�%�u�S!�ԙ�\,|�-�P:u��T��������O�հr�y���C���x��yļ�0�v10X�T�N�DUG�6G�}B�Di�&U+�TNL���ʳ0X��+�]�S��ޑ��}�����^���VB}���z�]����dq�>&����P�����(��|�E�W��"�s���@&MUi���j~�|����Zo3�N}�_[�Z�}A�t4�F����zfV����C��5���$X�E>�p���	�>���0�P4\���p�T�n[{_�
R����[��Hm����]𔶭�S-%�Df ��k����@�๺�߰#GF'�p�7e<]u�:��v��W��=T/{��-�xS��Mnѓgۈ2@��k�!C�_f.�0M�5�P�P������r��/7���s�I��[,��,sy���#�����w��@Nֽ-IvFln�Mά��c�`GAĐ���a_@�s99!�-{ 'n�~��.��q�����B��F�vZ3?��Hƺ������T����SL�V���5��,ٱ�LX�\�n�t�~Q��Tu��)z�����7�|�
��{T��,�/(�3�Yon��n�_��:0�2��vq�EZG��~Q7�7d!Ϸ��>pX;�#�M�8�����#���3]n�!��������޵������������F���H��3m"�W�ʟ���������<'�:(��p�r����'����-���I�/ԇ��AӍ��?�������+v���/��Uf��P-�C4�.��.��P��+�x0��1נ�zZ�-ѽAF�{u?\���;պޔ�}_�[�v�p�.v���yg�a���=�w�yo~1zg_�����V��h �_�*�~G[�����~]L��-���rG�u�
� W�Ȁ�I�|�;Z:����a���D�M��v�r���N���ۗ���rEA�*��7-����gj~�%5��N]]8f�,� =0�%�{��9;��֮e��F�<��9)��띌A«F y�W@��n,�q��>S���m�UZ�������W_P^[��>^������������	c�            x�32��22��2�ˊ���� ��)         O   x�3����K)�,�4202�50�54S04�21�2��343�60�26�/�e��[Z���[�i��������1vsPe�b���� ���     