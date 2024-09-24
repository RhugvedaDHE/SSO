PGDMP          
            |            sso    16.3    16.3 @   *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    277   /      �          0    24744    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   1      �          0    24752 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    283   �      �          0    24756    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   �      �          0    24760    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �      �          0    24764    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    289   d       '          0    33745    ProgrammeSubjects 
   TABLE DATA           l   COPY public."ProgrammeSubjects" (programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    361   �       �          0    24768    ProgrammeSubjects_delete 
   TABLE DATA           w   COPY public."ProgrammeSubjects_delete" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   �       �          0    24772 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    293   !      �          0    24778    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   &"      �          0    24788    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    297   �"      �          0    24796 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    299   �$      �          0    24800    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    301   �%      �          0    24803    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   (      �          0    24807    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    304   �(      �          0    24813    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    306   �)      �          0    24819    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ]+      �          0    24824    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   �+      �          0    24830    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    312   0.      �          0    24834    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    314   �.      �          0    24839    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    316   $/      �          0    24845    StudentEnrollments 
   TABLE DATA           �  COPY public."StudentEnrollments" (id, user_id, current_semester_id, "createdAt", "updatedAt", subject_id, current_class_id, other_institute_name, other_programme_name, consolidated_total_marks, consolidated_marks_obtained, userdoc_id, other_subject_name, board_university, month_year, is_active, consolidated_grade_obtained, qual_type_id, academic_year_id, institute_id, programme_id, evaltype_id, stream_id) FROM stdin;
    public          postgres    false    318   R1      �          0    24851    StudentGuardians 
   TABLE DATA             COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, user_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender) FROM stdin;
    public          postgres    false    320   �;                 0    24859    StudentMarks 
   TABLE DATA           �   COPY public."StudentMarks" (id, student_enrollment_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", month_year, last_qual_year, userdoc_id, semester_id) FROM stdin;
    public          postgres    false    322   DB      �          0    24748    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   H                0    24865    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    324   �I                0    24870    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    326   �K                0    24874    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   L                0    24878    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   N      �          0    24606    Talukas 
   TABLE DATA           _   COPY public."Talukas" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �N      "          0    33647 	   UserBanks 
   TABLE DATA           �   COPY public."UserBanks" (id, name, account_number, branch, ifsc_code, user_id, is_active, "createdAt", "updatedAt", bank_address) FROM stdin;
    public          postgres    false    356   'P      
          0    24882    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    332   |S                0    24888    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   a                0    24892    UserDocs 
   TABLE DATA           z   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    336   'd                0    24896    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   �|                0    24900    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   m}                0    24904    UserPersonalDetails 
   TABLE DATA             COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castecategory_id, religion_id, gender, blood_group, nationality, reg_no, phone_sec) FROM stdin;
    public          postgres    false    342   �}                0    24910    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    344   ��                0    24914 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   �                0    24920    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    348   �                0    24930    dummy_table 
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
��I�]j���U"���a�X�_�|!4zY��<����	�����"���� B�      �      x��{K�������`�NlL��V��  ����q"N �\E�_�%VY]�~{7Ճ�'V�X��P�;��׿��/�+֏��g-��\n"��Ya��E�$˝Fۓ�Z���ƇI7ߠ�/���I�Mq���!����7�1�u�����H�A�H��?����B�C���@� zA��'ځ䯓L�'��2�Ӎ/�p�?D`0�v#�!;���H���}�G�mb|Neq]ȿ�/�C���o���?$���4���>Q�$ ��)ہ�.���a����;��:�x�G�B��=�)���-Y*�;q~���t)�����&]����;B�'�`��H����Ȧ⛼�8�{���9RL"
D6���$�7�����]t�����2�=.�I���$x���AC�7�}��p5+�v�174=4�0Iv�,�.��0Yпo�|1�ߊ!o]HQ�C��~��.��;[�,��d��		�n7�v8�Uͪ=Nd�r;�!��,ӹȆA�cN��-�L�[��w�S1 'e>�����⪫ƕ����f�"[��%��W5��  QR��v�\%kx�f�'��T�x] ˔<�.S��ϝ������1�2Y��ʤ������ɿ�v zյ��s�ut/w��4'��-#K]Ѭ�;	o2��A(��.|T`�F��j�4	1'�e�V��(�t)�����}��-�؎�ғC}�r�"�Bh��;��Ⱥn.�'�X=^���̋����3<ñ6�v)��P,l3U�r�4E �kG�d�ލ���17���!��
bG|ѩ� E�P@��Ruk,nŹu��]y�PYr����8AD�c�j$�B��*^�����H�r��}�w���gdO�d�7���8��pڟ���ˉgy<!N�+�!����޼K���j���4��r�dӵ=Q�!8���d;|��+δ���\HO�Ò��7��ܯ�m��Mшr�͕Y�����{^���c��Ǎ��U�O�~[�_�$��Hz�M��t��"Kׇe��]�k}2��H��I��-��v�i�f�c��q� ����D�m��vHPc�	���d�Ua�\R�(x������[e�I�������N�l|./A�s�����5��D!G@�-�S��WW�q�Z+���\�˓�d�<��8_�=�\������Ʊ~3���G0��1<װi����Z������/.���o\���+9����F�aR�fo��/�QJH5I�3�l����w��`(2���mu0u�k��KL�S��	ؘ��#��!�ND1�x�T���g�:io��X��i��u�_1�7���݇�Pl���=�&�kN���XL>/9F�Mv]`Fކ���T�4<���r�;	aTٓ�����}I�@d���
Ŝk���x�(����������7( 4Ӛ-\�-��֌`�/V�1��]�:8���Z���9���)�n
4�@ ;�z
�*ہ��Y��gr��i6=u��Lq�+k}^���+�/�Uܝ ���7���ϟ�i�����w����P5Ð=I���������6�1᩻�����a@�S���j>�нnE�Kɀ|kѰJ��f�7�����U�C�5L��2���=S�R�{o#�2�<�d��uA��	p�mYN����4�
��[?�/�i#��(6����P���Ft��b̡"�ފ�-��� ���>�\%�9�<�nM��2�,u�?�qc�6��m���g@d�p�=^��ɹ\�c�}�?��nxo�(��-ש��hb��,e��^����ݾ:�^��J���I
�m�T�2*��q���b;�x�u��*�]��{�H�#����),"3>�l��z/䆒^���|����P��\���'@��	h@��n_O@ �c"��	~�v(��nf�$sza���.�yW�~0�����Cv_���7����<�I��FN
x�{k�8��)K0�ʹ��@��)M��Ƈ$�'��L��);�6W-Z�'�3��&Go ��}1PəJU]��������f�(�>C�I��᯲��ֲ���eK�Ńp��!���1brynCz,��a/W�A�G�	�n��pxrn�5upZ����ʹA\����*C� �Uګ�y�N�p>�6�@�oia���ܣ�>r���@���"�k!P�1Q�d=^ؿ����ڝ�^2�)?�n5�2��O'C"�G�V_�l��_�_�:�H�uG�a~������U��]Z�̔zٰL�����'�:/�U�����}��H�~�P�,�7�l��6�uɶ:��b.-].����3�B�z�e������	A�1�Vjf���~*��j��HUW.S�v�Vl�F-�*��͹��h�/Դ�{�0�_��G��M��)e�e�K.l~6����o���4�"?h���z�J�{ ���7zRm������0Ĭ|�A�����+=Fߩnԝ��H\�%Z٢*Y��.�x�`�z' !�� ��'GP�
��wSU�����}�
����Y�p�۰o�����K*q],	�SCk=I�B�FA���L�H�i��.w��/�ap��$S�T���~�ĵt+]��<[L�����m�G&[K����[ i��H�`9$ݾ|y�t�}�EcNW.���Mc�A�B�U=�e�U���Ԛ k����NG�(ɓ�K9��9�Pdu�o�d�P+�`[/��I��Y#� ���{�8A�-�S�C���i�/����1�x��ee�Է"g�K�
���S@��`�A����k�g���T����'�p�Yt��v�z����b�Ci��7�ɖ��"�����Cj�l��C�,�x�ƞo?�� �����e|����D����l���q����3�&�3hC�p�z�ᐡ�������j:6��LԲ �a�&��=IsC�Ts�t�"�-���j૾6ۨF[e;d�N�,v�n(�a�ȳ-{�n���ܗ��H��8��ۊH,asYM� ��3�} ����3��@�k����gdU��������K���	S��ryGR�N7�T
F��n����o��m�����]U��ϵu�(�|k��!�!kMewr:�V1���L�ܞ>^y?c����>�����rwȸ�>H��Əp�{� 	�m���{3��N��m�S�!k~��n'W���H)���	k\r�Hl,0�m0��s��|�/���ǉ_�+hv�?�я� l�/�o��|��twB����0����oɳ�)}+�Hӓ1ʤ+c��#����q�Ƨ<�NQ���tۀ�/�Ys����u'�k������ܮ�,�ʷkC��Fy{�Q=��"ch���+��*rl���#�Mo�&�!k�,���Rd����P���)$�f����q��Bό�y��V���P��_��h�A��+���v�Q[ ��n�XKu����0	�?��3tC�笈p�]��	v�I7�x�X�����)��&N����9�6�����,�K�I��k���uK���d�=�.�G=#��|mc�gG�qH���z�M��F��S�R�3� ����z\���&�A5�Ka���`#U&�����d�l��!��.(���^�8�����߶fE�N�����ih��V��[�!�T<��U��6Y�ͽ��ثAB���S_aV.J�>���E��>��K�|浗��Mj��7��.2jd��(6��՟e;��]�,��YpJ���r��='�̷����:�EZo����1�ހ��*�7'�₮�ƶs�Ck\U�p�f��vPmF�
4�?1�ɺ��Y�gwQ��� bv#�G���s��%1ϋSw%U��G���<ߠK=�v�Z��_���{H��p�ι���cou� �/��]�о;��۽d����k�B�2����y���i2��8�W]��8�U��j�Y-=�Sv�h��F�&�fƤ��yi�֔"����S~��e�H�|��%���^�( �1����W=I�D���*�A���d�A@���<�u��xR� �	  �F�}Z��Ү�d[7��/og���V|�ok�~Sx�4���W��jIJ�U\�p�&٘�g���+��'Ltzog����}r��]�y$�#Z���@��2,���vP-O1���4U�D��I��@lVz1��Ӎ�4Q�+�z#����s.��`_��1��=���t��E6�P�G{��|�b}��o˩�Q:Q�qFYb��q�t ��f4u��a\m���2D2_"֖q�����\y�Q�Y�U�]�ݤ���qZ[�]���Ȇ#otۄ�����:٭= ����Y����L��I7�=횦�^<&
����j玂lm��F�h7�]���>��`�妳�y�X���P������T��N ��L��0O���_%�c �+�{�C�B��b��?�|[Y�����s�=�f��ݐΉ�[�����aO���'�?4��[�!�n�����Նv�z:D�㦿�Y�#k��A�r��,��\���`	B妊��"8 �ڥ��R���Ͻ;�(��7+�O��R��Ww�FwaȪ1p�E.���LBº�m�)}0���+L���].}�ު�ȗ^P��깸V�J�20yE�h��)��W�)��09$�.代@�F8�Fľ��u�Q��;p��	K�_�h�gY$xLr���	C6Nߏ<�����v��j�У�8.��AY�wt��ts��[�Gm�ˍѢ���D�$%pyb7�c��o[��OB4�"F�D!��6WҐ�p5�mZ8�'��V�dy�~�m�5Wg
s���������S�O[�8ͣY5v��PPMI��Dj�����k!q-gF>��䛻�m�#ȬX���L`6�������p��6��T"�����:�=�m7>�K������A�x>E��-_������VY��j�����!8�|����}YH����Ϊ<�A��3�4�rU7�m�׿D;|m�f��>/�j���S�0��N9g;9���:o�	�'�5��g:9^=�B�J��������=F�Z��*�ߠ���w�C�'@�6\p��XQ���m����)��d31-��'�.������.�3<bi�I;,*�l����k��� S��#�߻Gz��Ȕ�R��%9IGw���~f��,ٶWt1[�Z|5��IԺa��h���CT�t�Q��i2<=9o�u&oY#F�_H�w'�hf�vw�DU��H[]����V[��W�m���v�Z �U�]S.��3����8r�YQ�i6[�TW����ʮT���2��&81f�sC3�"�m�6���srt'�1CɁ(ˑtw��Y�%=6�%���[����%�����U�/�]M�t���\��ڶ��m�o��j�?�fǂ�!7�I���
������ϻ�lX�;ogў���tfԉy8�̨�j[֠A�߿G1ߚ�p�򆈓F��h>:�'.���]�w2Emό��~>6�N����Ֆ7��_�'c*�F�����ć�>3���]�Ӳ�(Y'��ʉA��~}89ىZHG�r7�����!.��#J�`�*g���%�4��Sf�=��=���X�5�f�q�q��(���G�?�7靄��u���ӓ�X0��+w<z����5�L>�:Զ��W`���?�쮸M��6X
%N�v�P�Dmo���b��7.	p����Q������߹o����1X��f߉��Rv�o�W�W˅P�dn~\R���W�w�8K�Ɍ�֝ ��q�d�C�B1YG)�i�^N��,H�.8'�7�!�UMSAÙ}�d��eQ#Km��5O'����VW���޹�hG��i2J�p�`}�J5��ѐ��M����#����j�Ro�����8�l{��l��ͫ7��&��6��}{4-�e�q�-\Y	6���>�ީ�#��އ�j�ȫ�:�C_iQS���hԃO���u���w�O�ۇ�� �,�!�,'=s��Gsb����N�猈\r�x���Sq�zw2�f�?Ȝ��0UÈom�RU;������i���?�4wCoF��]t٥+w�i��(����˛E�a�zם�Ѻj@��M^�,���c3�ˌ�G~F?VD�Z��KT�ct���-��7x@}ƴ)�ʼ0��:`r/�Ah\�*4%�_=A���:ܑ7+�}]��*�'�9%�\�X~��ѯ���,�`��(�^s+S�����fa1��Z���X��gXy IN
����H���d>�+���5�}���k����G��1�j��^X�@�<��ŏPk;�b��%�+�e�Ķ�9�"��]dۓ���(�N(8�f��8m��R�z��o�S��O��vb��8�S�%̫�j��;���S`���";�oǙ��m�����dt]a��" I�߻�߷DU��9@��P��@pׂ6d1�ڄ�q��ʧ�ؾ�.$�޲�P�ײ��M�C!ѳCW a��IB��P8�B�~�}l�!P1b�ƻ������yÔY�{H����pq��&+)�i{�F�a_G�(�ܖ#}.�H�g��.�9��c=�yC�����#:����(�      �   i   x�}̻	�0 ��n
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
��s����J���t$�s�0~��?<�$.c�K������ d�W���1V���B��DA�<���-i��n��ͥ��7��\      �   t   x�3��M�H,J,�()J�4�,�4202�50�52T04�2��21�326�60�26�/�e�鞏�K+S#=CSc즠�r�p�����)8������iL��L9��KK2�hd� VCD      �   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      �     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      �   �
  x��[˪$�]g}��W(B��y�xec���Mc�0�6��{�PV>$EVW%s�{�O�N�
���S���O[v�6~r� ;�23�\~�av�9��������Ƿ2eY}��3��Jۣxܿ�Kv*����IN�wD�xz������~��m�C2.PG��x<�M�S	#��g0)y��G�,1��lڙ�'��s�����3�����Ddf�����N'�YE����c�0[?�3.��YA/%v�S����Df[E/�vsh�SM^�_�}�U�Ƿ���Μ��~v(�$��ze7���mÜ%���9�h}Ϭ�Wv����,5
?�J�u�t�g�<Q�;s��$9�M�K���zF��:N��������k��҅�Q�1�Gu�p��]�jF��vde��M�����%fT�H
3
�0��C/1�zE�3lT�c5��ċ�CûT�"'>�����J�`�Gf"9ĳ�d�u�R̨����Tk����&�XOG�+{05�%'���a��4�蕈�~�=3��lW��>�t�3jfnc���K=�}�Q<^�fF��|d^�,��n�CV�K�ze����-#y�(C��:z)bT���$�K?�:z)fT��T.2��*:�!f�3�WޫY��kp�t]�gN�����P��?2ˮq���c���^�mԯ����sݯ(�$�zf���eP{df+�	�`�u>E/1u�a����=��^Yg�t��D�d�
;ַ!��2��V
	F�2Յ䙲}�>C��\��7��eh��<�E6����*{0s�\�@ga�LI�gV�K�̾g2��:��'��B�	̩a��ӗq"��3��̎`F��ж�4���=q~� �fs�o;8�����k�4{g|VYE�D0����T=�<H&􋬂W�8�z�y�Z�ܯ��^a��v��a�ki����o��g諓M�_��4Aq���!�4S����V�) u�^�֡�N~ٙ ��G�0��ި ����:.'i��8a-���?�c�=5���/?����?��^`�mc��7B>�]r2��;Oз��H03a�*I#�!��_tAҙs/$$��w�I�G��uY�C�F��'�=�E�`��6	<���N%�2t�����c�RHW���^%�ѷI3F�3kG��gS�Bu�^��Tl�BG�T��2$k�w����>�Y�\s3����J��:��^��� \��LʒV��V3J=ڣL&N��m>���RmC���Ԍ�<�QK��A�jZۄ�D��Dh9�����3�}��t�����B��оHS)&�X�赅.Y��2~l0�`[��^���!£H�64#c&�R�]UyY���n��}_]�ɭ���J)���=�	�?�ut�W*��)P�5�����������m���>��y�ond�k���[��<I4;F)�G�Q;�;��?����ҽ�����|�������mC�	��_ފ�9�ϐ�$2%3�a�u�l͹��s?W�5�Q�0vK�1�Sv��N��awo��'�!��ޠ��]�=a�����
ڰ���)p�2ΔP5=�N�ϼ���z��W��-��Yt��U����6i�LE/��ֻ���~U��ԕp�].'j[1�P�T�~�T��+��4 5���+�~yu4N���yN/�X^�1���N]ŔfrZأ�-��S��i�(�"�Kj
�VKi� /^�<j)줣}�ˣ�ܐ��09C�����R#�֙_%Mz�I'��y�6����U�Y��ԏ�S����^�X��A%>�K�,a��t��VD��j���mz,���ZB�*�Q�7�GT'ڍ~���}�)Kմ�ST���nW�C�T�]-���o.D�h!�I^� ���~�r!hw;�:��yZ�G��
{�{~��L���j9��C�9�=q��;F%Qy���'�F��ʜ�X]U���Tg�<�RԔ���ŞcJ�\����·�����w��m�������.��r�P����Ҷ���j���G���:����0����qiUh�zD���v%N84�a��^�Cg\�(:��"#��z������ŭ��.�A�d��zG!� ��xU�ubڈ�I�&#,����g���f�3_��a`�ۢ3���)�v��ټ��椷{�4�]/;U�m#��.�޸6{٦c�h;��L����G�b�m�z)[4b��"Cn�hK�t�E��p$ꈗ.��/�ھ�����C�Ó�=�к�նM�e�P�$�:�~��cJ�&���}Л6=�7-�{M�9k.E��o0��%	mK�ȴ���>h�>�]���|�eR?�#�I˹�?C��gp�D<>C�{ri|Ғ@A����7�m���ʥ�	ڰ�}:���QO�{�a�o���Շ�d2)�rE<n��..�Y�����������߾�tX����N��\
��L��p�spqڡ~g!����f�/���_W�$�����×�3�k	��bUG[��%��G7�����Av��nn,d1�N;�J��6t�c����"�E�3D�;�����`�c�����l����/}S��D>�����6��L��/h�/K6_�x��B���U��}�N�78C��:�P�
�S����-���9}�ޯP��oWzqz���a�U��ϱ���0ݵ"_ڈ&�_HC���Ը����$2�nws���E�h      �   N  x��X�r�6}����sp��)q�I:�8�Ӽ��n�-�!�xܯ�.R$Dʚ��EKXQ�`w�bAa	#_o��o_���$ou�K"�JY�5��X���j���C�m����n���Zl�����#�������7\\Q{�X�tAY�ln����BУUf��R�5����0�拟�쟀P4V)��E�h��eWݓOբ�	�M�v۹�8=<�
�3�G�B�B���C6"2���p�Gv�(~���ZP~��B���2e��2FN�zYϗd����w�9�&sk�$Z��T����c#ί|/U��ɘ,�*$x۝P	V�
�r)�0!t��I'θ���Op�x��x8���O�%-��Չ�[xF!��.z[�!�z]��*�ل��'�u]n�ii.��b��H�X�`i*�Zv�F�8����ȯSs�c/�r��0O����k:}g���^�r�8S��2O�7mऒRv��T�#e���ܙ���E�ؘ�Z��Ѩ�J<�̥ ��e��,� ��/�_��W79�v�Ԋ0b&xLDJ^�k 	��Y����|��?(mN�5� �F��'�e�g��U�AN���!��#��
lF]�LA5d��٨5��7 v�
:z<���T �Z��B�)zk#K7g�^��^�P�G4���
��R�E+hN�ډ!R\� �W�SVkƕ�(��������D�&�s��H�����p͒:���*�V���E䥤鸹+
�8�EtI�=e��L
�:��\��p|2mn�τ;K��a,]$h:��������2�C���d�L�m��pS4�k"���zY-H��(5e�9�|��ߪ�����(�)UZj�K�1���L�J���Bul������WH�c E�/P�૕�!=�a_�a5�Jd�L\7nm���[����w�ix�sm��h;�]켆�����j�[�3�in ��
�1Sޓ�^ǭ�^,(�$z�D����i�);��M���u��u��.�a�֗+�h� K��k("=��IR�,)1��#�i�s?\�}	~z��{��	�p����!Į1��9p�oV24���7R����3�%�_of&.�ƒ ?l�f�熶�Ǝ�C�
g�:$�*A�F��E�eU�o.r΄gd8.�`�S��P�z�#�9�����E�BS־ٟ��8:�aS�ᇮ��C_�х��"y�� a��*n�݃�����z�
/�v���V�ca7�ށ/;�=�V(�N�d��J$�SMpt���ä�n�f{�=��T
	�g�
]ʇ9��}v�ˡzg�7w �2�!��i���u�m�{(79��:q���vq�/�-�9	�`���J8<��v���8J*΀)vܟb$6
�����H�Kl����9�V$1,�*t�2w�g(U�u��0���H�N!s�=�!Z�tC�kPh���>�4�Y}Y��$�Պ�Û� 9(5>�x�?��r��<W�
�p���7���~�%�U��%�m/��?�7�̘3	�XqA�zy�Z��c��j9&����%k�|�Hm�ޔ�F�- �@�O8)���1騄=�Y>�M`�*	��|6������          �  x���MkG�ϳ�B������?��@bLl�t��������V��|���.�0�kճ�]3����������ó��>?QY��(�^���/�__�?��e�]zy��>$�>:ņt�!�B��I�!z"��y�b�&���Im�\���LC98��'�OF�����,�<���r�_���_�]�aG8S��5H���m���He��R���jŪ��0Rǘ�H1���y�º� ~�+��t��.d6Guuce(��ś[yzd�\�3ND�e��@�|G���b���D��Qı��5������r+1Q�6!H���-uK��j�}TJ)yK9Ua�ݿo���X9H<�EG��M�S�e�}��:�$0�f��.��L� �W@m���[�e��1 GuM�:��y���b�Y0���T���*���eSX>432zq�D��*Ih��'k�����|�g�V9(`r�{��Z�#���R����k�*p�̜���z��3��jB�u}X��4'�����%���E���b����î5���<�w!�M3]�/*�!:�1xӐO�Gh�s��7���A	��H?�{M��J�GD!���M�i �$��Q7��x���o^("��o�ǎ"� X�g��Ԁ	�nf鮛�����9��XO�c�&WC<��n�O�ŘG��Vm��D��>!#�YŃǟ\ݵ��vW�m�fB��T�N�����u����5�k��]���El�MN�yb�����T$D�RP��6DX��PȄ��!�	k�ZB�q�y�a.a��f���ޢV�E�U;1��$i�Ph�����ΟYm�T����_j�g����j?��xn�[�Իb�0���W��S�.�;Qk��=#fVW�g*�37;2�m�`,���h�Pi;O�K�{���Å���B�2g?�r˼.p�E����֌�Qj�H��~-0|�d�I' 6���{U��Z[�o��P�WQSŨ�:�2����u$}t#�ѩ+��`p���yo1��������z�&�WWFn���=��ѩ+�4F|��G(��^]�1�1F����Xu��S]�G�~٪ݣ�2��ʏ2p�E>4�������C���QVNj�WWFЍ�q]�͙U��v��j��.��A�z��0����+V��j7�0��E�	��S�&����.��Kl�#en�z�8���ӹ���=R�ۈtR6N�GY�&��}��¡�m���W�A0�xH�VԎ�R�ՙN�;�$}�L�����/�_�{}��G,�%�t��C��.�:��=E�S2�\���t*(���`���[Zt�grq��u~e E����١���I���f�N���q��3�I��ƺ��9��q�PL�A�A��;��`;)�ip�T�(6�Sw�3��95}-�G#��/�c���/p�_^��r�wBv1      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`           x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�            x������ � �         �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����         �   x�}�?�0����S�KC.�?m6GQpu�P�`i��o�X!q~���)���1�v\�B���J*�$WL+��kO$l���x��+2�g��x}�$�5\��5��9����Kʲ��]�C�0�$��?[V��	!�C�BF	-M	ZVtpH�v|3���s�=+Qs�e�	��tˌq����ɏ��x��[[mR      �   F  x�}�=o� ����Wd��8�Ö~LU�t�BU+MCD�?�d��Y�����a��ŧ��@p%/%/-H9MNY�k��Ʊ�]Q��4���U-h^�açUuz��tәU԰R�U �Ԙ��h�ӱ:;�	Í�-<�|:� �o�%�YGyz+���Q����1N�����7��;�=�O)��6_}�R,z�ja�+x��m�i�@_c�d'��:VV$	�1�ч���ش�yE"X�w<@V�(��++����1��X	��XV$�`q�kP���ƺʊ���Ï?_0��.w�7�UV$��ӏ�����ϭ�ʊ�� g�      "   E  x���M��F���_Q�D�����ǭ�=Ћi#l���^��٬"A������� -{@]v�OU��6���J���"Q��a�۲b�K��Xկa���B�X�X@�+�k�Si~�G܈~
���hI+��D����(����Fp%�3����{�6R��J���*Q���ѓ��K4�MƍM�E/�'Qs���@�%8*z=������m3n��L��'ф=>�v�_���hKŰi�h�_�)������nwQ�S��u�N�����r%���h4T��nE]�`�~��]�VP@h U����px��}�~/��u�^�z4z
/�t��U�eت	��A��7x����Y�&���'ɑ*���o�$l��z��9�dK����m
j�Q҈�)4�nMc��~�-i8����*Ǆ��qD6�7
�<��wxV��f��y���_�7�.}�M`�qPo|eK�vT�����i�U(}�qh�M7ڍnY� 1h����l^>L�\�TR�i����W�f-T�U�|���M�zF��rxNL�bѷ���:7T˵9�I�y�@n�i]�-�v�R��҂��u��фi�0�C9Wtp���P��"{h���׷��oϰף�{�o
'z3��I���@8�U� O��3`�k�ub^ݼ�6��y�U��?Z��5�m7����ƕ�}��eo��d��ţ��{��~�����>��hP���������~��$���C�J��ܶ��{ne5����&����<3�%x�ۙ>���A��Y^F��ɛ�'S�:(�\�]'���A��҅~��G�/��	W8�����%�a@�~@�܆)�);�����_�4o      
   |  x��[˒ݶ]��b��A��x�]U���"��ƛq<�H�<)II~?��K	�˖G�L7�F�ьn��������_o!����������<��������ē௛���8���䬓G[mz`��r����;nbw��9�$���(��C�����K�-�����|y����ß_ǻ�7�7�����G8��`��o�$N����y�������^���#�v7�8��a/��Ȭ�[{�Ʉ�������ʳ���rܭ<�g�yk�_��x*���|���<�ճ�l\���f]��M�I�ܯ�b��?��ȸ�	4����Z�0%{�qY$�Lh�1�S��l!)F�t7(�)�;#��ߧ��㣳P_�`1���Q�2��f;�pa�NT�`{�9����<�x�wT�lB�nA�P��k�.o�^-��n�K���;�U7��˱d�v��z)���~{��<�ܜ39��� ~\4AxY L�]�[��h��Nz(�[e��7�M,��vQ�4e�7�T�=�z��J�̭������h��I�q7f��b'v�R@��â7����a]2��%��*����h�3Ϋ&��\���G�[HF<7�预��+�=S���I�u]�p�ӈ9�&;ުߌ����JRpcg�����*q��H����`>�-���-�S�KC˼�R�Ң�{O���9�)�a���L� E�7���znW4X�fS]��m8���	�r+��ܣ�,n��j�s{�C1�D�C�c�rIYf�t�hJcB'(y���L��D���0?��q�2�Е{�y��҂��8}Z��W����	J)��dA���Ș��Pz(�*��>�B\?Ki�:[/�!rjBE�վ �84�Ղ�k6���	���}���w��Td�Y�6��hP_o��V�T�/����|u�\���%�/�� �y>J$��ˁy%+�c�8x���b	�K%x��J~S�ĝ�h�	���x>,1��fq�~My�T�1|����|y���>k�)>�'rj���沈�[`�c�׺�m��؜��zb��s�Vt����Z���8Y�G��E����P�Ȭ�?�ن��rjK�3�Wy�Dit�Zh�͋q{Gz����,Na՞�~��SN�L��4f��YA�A�t��$n�Ow�A���2��C�qp�ɣ�H��oձ�~���۬�O�{�|�|0_(�W�c�b�{�=J�Ʊk%O�O�?a�GɃ�����z̵���v��AI�{<�y�} �&x�IENPB��|Ig򨝏Ȯ�|�B����Re��p[�"k� �~�b�Tk�բ��m��E)���+iԝ<�&�t�|�� q��_?����ա#���{yya�3I��^����1�+}�Kk�S�t�l���N�R�	�K��*j���;����እ��E�TD�>�=J�Ɩ��Ջr�L�Pcc���q�H��X9�E{(����ט%G)]��\o��EZo
 �sl�.J`��J9�;���d/'(�1V��\�n� �H	��.��r�MV�^�{@	{�x�7�j�!#�@eݓ�%��u�k?�O/O�|����O���_��x(�r��{��m�a��������M����֌KX�b�;�=C	�����gPnZ�Vإ�UYS���!��Mw!���*��m�(��r���7�T*��|ie�C)O���w�^>|xa��8l�ͧ�?|�0�s|L�Z'ئ�ϡ�m������K�[�XW�s6��y��T.5��[���6a>C)Ak/���[��[��tQB �Mw�׽!r�wke�E	����+y��_k�=���8_��Z��{���֯vQ�`^���~aA널Lه�3�`�������|��[��������>�7�����|�D�~��`��۫D(ኹ�ϝ\�jZ����{(��+��)X�^ �7��J�J>O�W�d�ǂ.J���цkۃo�V����	JQd\E�ɝ�=|��tx� !B:;vf5d
��?鞀�@���R�{��u�-�J�A��{ډ�=��o�I}m��r~i�A˓�D>-�.���F�2Vj����옟�T"�/o|���ߘy;����o(�\6Ňv����������$xp�3}u˨�c˽����מ�}5W����A�=��Y�x`+}M�����J��t<��Jϵ��fMurý���ۜ����`�[v�m�J���u��b��o���hJj�H}�Ny5O�B7zl�����5(�mi{��{�c<��������/_�L�}}��U�mD�f�T�����(��b����V�F�kꡤM�_������k�9���oXHؤp��%}>sR������j��D��f<?�DUSy�d����-�Zu#Fty�0�6��"c�Vϫ>���EI��nԾ��n�Qc��v�]�a���͆^Kz���t�%taVf�X�K�����J:��F�-��16kC��w��QgC/R�n}�{��R�Aq7�Ϗ)Q3{z$���8�nW�58�\z�(�<��W���ޫ6{�:�.J:e��%]_���&ڞ��c6n4�2��Pfmm���
���{���E�x�}��;�t�����[�}��Nøы��^�o]���(��NG/h=iS�.J�Hs�'�-}ѸC�sߣ�KM��i�G�-'�٣�[=Em���Lt:8�J��1���kf-}�lP�!'7����c�'٠�[=5���c���[M�mU��3IN�GI'�ܨC����R���uQp���Z�[�R�����;lu�v�ӣ�;��%/s���^��4���L��;lu�x���PK��r?�C��;�QK|���6���gz(���s�)I����&W��/A_�M�K��R�~<���ͦe����}����d{�K|���^߆����Q�����P?u�uĄ���v����u�1��P�'�P���s� P���~@����T;�Y�\®zP�	D57�� �9�v%}��m��ȶ�F���F0=�8�IF����E<lb�OP�y�7����δ)�NPpp��J��P����Qp��>6��>#�b��%}�7��^t�e0�.�����ɨ�	9�~"���Q��9����L���o�f�FI�č��z��^&.��>���S݅��T9�>�%��G䒶Wz�5@ڃ��P�Y���Y齎l9�טŝB2��6�����>#���>�ڻ�:-�z&,Ol��,�u�o���+9��%v���ȪwAC<��N)�CIǺ�B{�������R���N��\�5�>L�an��E��I���:�+��ӓ�w��j���Z�HmV�EI�Qd�����F8�ٞ�Pҏ��B�n���t�}�7(i�UFS�3}�ˉ5�����~~#��-�Z������2��������V{(���/�L�|���q�{��~l��A֧ރ3I�5����VZ2|LWgW����!��S���           x�u�I��*��x���"��.�VP�x�W��V��ٱ>�qCz�8����D?�|$�p��"'�/���S��&�T���w��pRFbD����jv9Y׉���M%�P���q:�Ś<Ρk���T�K�MΡ[h�s���e:��;�S�sh�s��{/O%����~R���\$V{��Re��~��'�Au����b1�AK�4�}��8 �[��p ��9��R�L��|k���U܌�V4[�H�J�\ض����ZTW���Zӧ-�6�ԷF־�<���^v�t��m�E�Ӥ�I�+1�oFh��,�������e�*	��i���!4��ey*	�����!{ݯ�$���� W0��F'u��PI�P=\Z�8c��ᒧ�������L�w�>詒 �qZ���<��<@o*!�[�A6Tc��=UR �� ]M��)\�䩤D�^7C�~��v��T�[��URJ\�Z�\cbvP�Jj@�7��n��J�����Ƕ�[~I�(��'	V}����6�@��+wP�������l�����3��cE�^��y*iH�������q��U$�J�|O�%uA�J��X�I���c�I�J����X]ϡU��T	��p����	�5��锡�9s�JpH���tN��"���q���s6���w$�Ι��i^�v��'ܑ����X�y������U	�H>w��^��6������t��5�m�&=@�J�H�� ű-f�7ɥZ��ۿ ��m�jTb���T���ߑ�� tX8            x���M�f'r��ן��DQAQU��f�E�#����L�[~��o�*����Hc�������[�o���?���9r)��@�T�����ҧ�?�>�{��!\��o��S�����x��X�-F�'} *���6��;��'��vDH��#~�����Ǘ_��?�P�!��������B�����)�'���uPGw�w'��$�x݁��W(�wgR��JxLH΄B��h�?�{L���M�h��J��S����y4 �?Oz�6����V�4�P��ˏ�3�/D��El�c�o�e����*��Y ��ï|��w���~��5I�P.�d�;�6-8������i�� �i�k�j�XQf���������_~�����w�J���N����Ѯ�Y5���GO3(9P�D�L��>����!]De^��:��{_��L��S���Ǐ��T.N���P'biD0�BPj���o�\5�|��먡+�AD�9k��b*m�A��,��iR�"]՘;`�X}� �H��}�EZ�bNn�nu"�[.�.�z`�,>�t)r��޸в�$�w��W�fA��	`,/R�x���.�%�ձ�U]�>h����"��m�f���\���o�� ����O��c��k�>���?����5x1|�m��C�b0�Y����A@x�"f��[}�1^\�ӷ[5=KE�-��&bȕ��߆�N�_5�d�ډ5tb��\(z�hS��c�U16�cL�(�,�� ��L�'N� B'&CĈ�Q��)�1ʢCv��:,�M�՝���@�X5T�BWu��L� V%ǵ�����|cvɪ;}B&IV�ǯ��]�z��KR{�G\��V)%�N\�ƪ��P%��$#�%չO��RR�>�;BKT�l���O���3�%'�oYH���&�J-�$�y�N�Y[�n���*�1��:ݚ��번]�\�!��5EHER����ԩ���%��|Xf�sվz5��G�^�e� ��,�M�f�W09_��E冂'
$Ӓ>y{m2�?�,���o�hy�w�<����T��nShq���\�&;o���y��_����HR&�&�ۢ�T�\�2����7M5PCG���ͻ�@ņ���>z��$5�6�I�k:�U�*y�J���N%�z�1�پ::}���H����K:�S1ubysI���G���4�n_	ݑc����z�0��A����'��ˈ���c���$���5�	��Q��8o���葌a	o��'��q���?}��}����������I���fw�ݑ�J{�~J��Z�T��8��)�e�h��F3�ɠ�7���O~�?�ңxI�h	Z�Ʒ�$ $IL�Bh3-A*�e��U�4[B�H�����T/�d���@�c�-$}K)�!�@�K��XT�gR�m�=,ZC�u��ц���![�A�}�$�fLA��ViPY�$��8Y�T>��Ň�#ee�kKUՓ]R�;��R��K��'(0(��P|4���r� �jk�6z�TuI����1�H��c�n�p��hU�Ȕ^��g�#�&�?o�n+f$���2\u�RO6J"�t�۵�4	��+�Y����d���� �w /�p�A�N��Y$,�a�>jRI��������u�������,�VRO )EH�!�m��Z�p��>T[�h�˨5����/?~��*ټeE[=B�y���es��8v���u/�ꌜ�Bi{1�uT��*��M�r۹{�-��Aӥ�.FkQ�x�W���nu�U�ȱH�/�b��в.�\i�Ugu���P�TBP��ےZT|_r9C&�� ���s'(�m����/?���/~�巟[VU��D�^GШ�$Fr
�}�+�֐�>�%8���%��sc�v��ǒ�,-�%��R�TȄ$2�K{q�b#E$�3������␔EJ1����St`���[+�$�Q�e���P⤤"��v�N5���u �:u��C(�R�u�,����/W6X��m�ZsB{�խu#\	س��j� ���*,e?-(�Ec��h�qrՁJ[T��J�ﺲ��g���s3wUْ�@"I��U-��ј%b�SeUk�%�P,S�J~6f�K�E�-��(��+��n�$�'�+z6�-��m���jƺ��κ�=W�Rm��
��sLPH<-J�z��ҶB�mᣄ�dP;�,=�Ғ�%�X�*FYQ�O� �H
)���Q�'�Fy����E�>�	ӷ���bv�:0��Hx� i/�N@�! F�R't��aKk�\���l���岌�Q��i�}mX�!�8���:�(���(��}����� Hu��? R�YW�SoY$e"�,�oBر�:����Y�I^�mH�tY�^V��u�Y��Pb�������e-�(\4y�I��y8FCA��a���
�Q/�Fy)���/�ؖ��X�wz�v�jh6�e�O�0���baэ=
^�x����)BE����U3�#�-N�*'R	�����1�.3�i�K���{��%���ӝ^5�<�x�v��l"G(5�6����Z��|u�N��'oɺ��7oy�6o�'�j@�e����+��)����C�B��?W,Y�#�ԑ���$_(��]�ѩ^n��*@jʓ��Vx��Ǖ�z���T�Jk`�7��6�7�Y�rBU���C�/��좆:u�H,y��I�e�k�dU>B8�2%��T��)�CŰ�
W���H�Tى$�d�n����W��&�ߢ�>)]P �: �p����%��@����'�DE��h�U����i���~���^��,	��=��)UB�(g����G��� w�0@���J�CN&��vEZ�ʜE[�`��3��k��J��J���,��Xg��. T���S�u�'e�:Nƚ� ���s�x�v
����Y|�Q'_��:%%�JIqAI-��\!{��:���"!�-}���O��f��U'�('�2�Pb��B�{���:T��"/��{�z�?�)��vT�&f��c.���!lP�:P�m
E�dySb��;��acgu��9��R�0���@'>�����f�
"��<P���s���� ŨW�<���^�D`�N��~���1a�J���?~�Z-j[�(
�V^����%���l�&�����6���Ry"_���l'u�j[YI�@r�X�U�6M��@�8��B�U�bg�J���P���K��y��u��Vi�t�g��
��PdΉR��
�e�!�&���6�����R�$��IY*+�4��h��e�� �q�Q�E���2�V�#�h����U;˛���[֫|�U3[Z��Ȉ���y4��ì�n����]����Z�B_Y��6�jG��a��� uia�wA�BM���]X5YTmy�Ub(��C7��<�F5K�φr�@�NQe�o��S�G�_�B�N�(�8nz��IŜ�\��E7[$)ʼ���~�ݮ��R�����Z- ��s��4���z>Xyû��_�}1w�r8���B�­�'�ع��#l��[�*q��֬�n��9�K���	Wd�
?T�����^1�I�F���Nhb.)����ֿS�,�%����nQ�"���1_��Y�a�YT�XV��٩�����;]�>|e�F՛z�u쪃��ŪӦ�i�,��U;˛/�\z�&V�x��!�1Ҫ���ɪ�g�{M��IYf���2��\aM.�}F�+(^�D~��^鍢B�:ΒRGI5�C��r]&�Z�����uk~!�R�H�m�ЦS�:X�Y�^I�Q�ǒ[~C���u�,>��CKa�ہӲ��j�{΍�`&�I�(A�Em�˲�i�i�7Y�e��|��=��䧓�TRؓV�몝U�7Y��Z��Z�/#��-^#��sX��Ĳa7�v�q��~a��/�վ�؎�P�ŗ�M@��ʺ�x����fމ�LVYgK+͎^�}��{�#���e,��-���z�6j��2��,q�9dw�n��蹧�:u+�U���awh�2.���u#�8^";�����.�V�e\�E���k��uJk�r��wk�S:S�6��ĩN�]@�Ӿ�[�-N���-(�l;e�{PZL�3^�¨�*��5E����PK����@m/�( �  *��5x(��|�5|�vY���%Q��,<R�*�Բ�]u�HQ�M�����B��5Y�5�q�A��)oQ	��g��C���j��N����C=7��S�Ơ�T�^ݪ��*�?~J���׼bX"��R=u
�V����]��l��:�7���f�W���Z��@���%
�DtH�ż���Q�%<E����Pm�'�?~�:P=��Q���O]P�b������}�lQxD�wz��k�ɺ�5tՁ�m�R���9�.��� %,ĨhQ��� $I�d���7�tHF({V�R�N�\��$��.���+�?~�:P�0UR_1�7~��QԜՁ:�
I�%/�
[0JKcT��H�{Dq��N���4��1�PQ�����jR��,H}aoY���5ԩWi�[,�@x����A��)w�Z�wp+L��h-㲄]u�h�3}���u7���]��ƪ���W�U4�;5��V��~J�1�YtkL߯�kYX�60{g���>���Ho|�w~�nՎ�=*Ja���}��V;F�P�,�(�mX/j��En�Vu�����]*���������Zg��7�(��z""]ŵ�U��Y��[��ڣNm�UO(�-�z���7]����I�z�+��X�����F��NHP�O��������� �NH�m&ޠ�5�� N�@�N}�.e{�n�����8@�{b �����s���w����	��Ԍ^��}�5��U��.�*�����t�O?�]7�]u���z#�Ga�h=CuՁ*G�
������i��	U@2�5����$/�ΪuK��(��*E�\��������Y�x@�����ݘ���TѮ_�3����]����N�#
Yja�o�\�<_�R��B<�b�0Wܽ���kqoT��p�]AߩEZ�v��E�_����շ�7Zk��+� y���5����y�y�xQB\VN�V��v��i��c������F���S�H�HJ��[[R�Gw�Vu����Wd� ��%SN^~�6e��i��J���M$͔s��jV�W�^�����zs�6y gu�����X���˱p�+�y� iUk��F�߯%�����2����Z����ʒ��j�Yo�B7�x�v�8~�%qku�5��7�;u���*`oL���n�q�Z�7d���h�[K���hC� s@�k�5��q�N�KI�e3�1�-˾WOu���jO��,)_��Wu��U �����F�XӨ�N�=k��(����E�m��q�:MW��I�}�֠��.��♿����s�߃���cXX�N�>XU��}u�w.��%L����ڞ�VW�n�n�H�K.9Nwq�-}�A������EN�`B!�٦������y���W��~�*����EmW��fT$�ƭY��?��;��
�Ǉ��h� w�`>t�Y���#k�|�C�̻;u�ҡ�m����,NFX�j({aն����K���u��,�������e\�	Is��7�U�g��:P�8Y²�ܞ���0zV������~����Z^^&1��e{@")��'��y��2�a�C:�6D����2�������U����21rjm��S��������_� ����^�]\%��KPz�ݙ��X��pU��3:������o�N߲����[<��dY�������'��Z&Vٜ+�=�Pmo��5��{%����'6Z�X���&�ӍZ��WkK�t�n5^Я�jH�_ ־6�E{��A�#)K0�]@�5,�?;��}J3�8 w��+�ػ�ެCNs����͹]�T�X��,(��P�~AlW�o��:Xc�k�/�E�9g�����g��9���N�H��r���L�(j��%����:��0�~�������i��z�����V�����wP��s��k��?����ܯv��v�fM���Z^���z����;_7+�Yk�7k���~�cd��7��u�=^�g���d�R ��I�r��t'�'=���� ��7��7z*R��i�C�Ou�1w�k��f�b��z�JD7���Y�gQ�h��̪������8�c,��=/�R�G� Y%B^cs�[������άxb��k^�Jk��r^Ҷ��U����$#�e�vƔR������7�9�;#e�(�WqX�7ί�dm�z���p3��*P�â� i\�e_�Y���˂��]��j���C�K�`U3_��������         r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@         j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$            x��\�rG�}.}��7�Q���3޵cv�pX3ޘ���h � � H/��{������%(͔X��Y�'�.Ή��?��ç�z���=O���ۇ��q'R�ֹ���x�<	-�y/�{#�S�F��`̿Iwc���O2��w�	e����>��8�o7�~�ݯ�S�u������
���N;��Ԓ���������9�_3(`:懹� %�_~!�W��Co�\���cx/�wP��7Zw>��A�nd����1�RE?D��y- �����z5!��~�j��s�1I��:�0��j�0��W�!y��'M���!����}��?����8��64���0!9����F�N:_����&LV(��?����q�����|��ܩH��(��*�DA	��i��%e� |*�vCL~�
��'��EݘtcS�S9�x)7�|J)��j��O_�x�������?>�?����˥�L��%82v!���I��_Y��.�f.�!��/�����!?� ���ޜ�w�I�ɯ0/iR�jR�Ru~��ķ������ي����8�O�� w�)�5�v�7t�q�3���(M�èR+n8#���Wۯ� �%���3ZJ����0�XƷ���ړ������3:�o�꼍�'WxPV���W���"��������~���zC/�=Ѡ�@X�����1���J�Ҵ?������~�<���q�3��%2�BF�м�t�ZӍ��|�+B�(�7�v*���446�D��'T�����L��֐�	�*$r��U�r��A������t����p}$%�O��mls�jK��<x�3 }�%B������]͝�&v2񹳔�~o�����\r m��H���؎Ɇ��S�T��T�� z������W���K`p��@��*GĴ�ʳhJ)�4As>��g�s��#��i!�򐻂�v6���k�R��[T�z~ZzJ�S%]��H�u�p���$�QZQ�|:�Y�)����~����#�u�Y��N�Y!��p����jw���o�6Oc|�ΙX�a�<�c�ć��RJ��]~��цj�蝛�зyV��~#X@ųB���"��ˌ2�1x+5��vs1��fA��C��i�hր��(�\&�Q�)h��M�ȤT,}~�YW�i48E�'DPkR�R�T+��e!��ǡ�y�6�*ޢir�g`��R�zZR6(D�)��~��+X��,6)��B�|���O��Kwѥ\�����f��ID���G�y�|��0�tRKk���2���-X��\
DE�DxOg�UAtRD-�6���ߗu��j�2c}CjC�c�UJ9��@��i�:�k�lBL8Zm�q$$���X�<V����"Zq���������f2�<l�?��A� T�<���h�H&���9N�������JI�d�C�J��
�Q|7����U�vu�������"�ʡle��
��UEs�qX)�@g�������?��:�c~����̝�5̛U����ܧ:QA���
!�wV�F�6L#*��u�3W��EYO��.����l���|ZD̊v�nQ֣�B$9ǀL��L�>�k�@��0͜=�+eM�aJğ7�Wp������ܳ2�Cr��S�Ѣ-�u^��A�+����Gg�^{�f����yLTQ��SP-e��Z/�qx�~79�������>k�نT9��yl}�I�< x�Q̀pTuH�IB�I��}�TY��R��(LI�֫�����q��kK�wg�'�y�Tđ��,�N��7�R��%�1*���������K;mD��	'�Y�zi�ʽE0N��HKl籔���2�9����I�U0�z(^ZL!�
��ضS=lw��z��V��N�����|����`E�4�Kpz�:|8׮������E�ܒ���V`�l�X��)B��2Ā��R,�3/�!������ �\l���	Gӫ�b)�Q�ʲL�<����mK�*�hP����K��0%%��מ��֗L��D�"<Vͺ�o�CG>�X30>~%��3�����׀�+��O���XH�~>-(`�i�*�JI��JW�Q^ʪ,�o��YK8y-�:C�cm��RԄ���YF�	���!S��EnIy@���W��e�ZJ̙Vr�3�hA��NXKy0Q �ߟ6=��!9�����J�i�*k0j�).ҲP*xUK�c�s�Ǵ�m��(�p�C�` �R���<����M�iLm�-�jb�<"PO�Zfc 5���AiYj��=+e!�|�0�V|�"V��H��~��%�]�^J6��,a�L�-Jz[�|^����r	�Vu�����Kn�_�.�X�N?[7ڡws=�Dk��Vޟ�ô:tQ/��jSs����������hD�O �3�J�3��VM�or�G�]ѯM���� ��\5=�C�I�%�M�C:|ٮ�q�J��8����r̋G�BQX�$U�rlFxi��3C�;�?�w���c���&?.�WAS֥���psk#��.�i��t���
���L�|+��_��f������n�Yl��Շ��|���~4�ߗ�����X����#�LK�XA���y��1b���Bk���1^���P�ΗZ�H�%�����zM[�w���Caf�-��|e2�,�0��5s)m@�F�������i���������,N>��h�L�ڼ�NE��Jir�ߟ�������u-��aўӈ~F7ʷ4��44!;S�SZ���w٬6��n��4C�,"&Y����1�����K��D�?#؞c�x�5ċ�tS�1��逗60��[5��zx���i=�BP湡Aw��jG�eX�"m��@h�\�/%X>��!���G�)�iW{V�cR��(�)w"��gL���z.5|^�E/+�/m@BbBD��|迌t��.S�s�.�����9	B��Lv��E��H�Ve�c�>������5X~ujrX��#+lh�<"*�x'��6��:�̦�f�;t����,+q�"��������p�O�c-w���?@�eK�X'K���$D�h�^�q��{臇���%��𲭐�3� T��J��#��~u�i����^"��,*��Bn㆒��������iPO�a�lPV�m�I4�^M�|yif��3~y�_�3�:�h�F�bJ�o���̲�hJyL1����p8L���*>�4w\�����-U9E��)m C��	�}���[\���S���j�ʹ��n0��J[��
�Ì�xBt*E��\AD�Qb$62�*a"e2������w�~�O%���~�ln.w ,~Ɂ��4�����!����u!=���&s��:y����FQ�ݺ��*�P��ɉ���� ��]Q?[�M�đ{耬U)��6p�v�86%3ج��=k���ߴ6�����
�1HJYG��Ј��?�����
 ˣ9����o����1��6��@�g4�4�r	ƥ�JI"�w>����3��F�ޕ;��~8�8h@?mM�����Jp@�POV��:u���z�FӋ��r�ř�Q	3z�����֑�`u��g�T�j�О��a\M�צ\�AUK�h�Y��R#(jK-x���
�҃2��SJph�K��R�֚w��O��O�;�xcj#Jc�Q�~iJ�0��y�-�ÖUJ��Γ���<��6�;m�Q����+��HA|�O�;mD�[�4�cj��>�k!p��5���P,���˶x؊����xY�o�k!Ҷ�zrL6�R�����J�0�A�����ߋ�U{~�/!'�Aa����ZJ5OBaء�-0��&L~�G�c05m7�j�����R�iÍ<�!�ni�����:������Dt3��ӻ�e3e���c]�87.M޸��Ϝ+���Jy�Kt��l�P�2��<#��4Jo�N�\���~P�r���2.�Qgi��
J���Kv�R��r�-P�Y���zi~�.�u�\A����K.	=�&������F�1c�$JX��A�Ck�%����+�&�$�d�r%��yU>H��9/���� LՉ�iϽ]v9�]���r· 	  ut�9�ă*�T�J�P�y���p�#���6P!3�jAnB�"��k��Ǎ�����B�t���������p�d.����+R��e8gr�h���x9�ഥ�0�|̞ۘ|�bj����9�`~\1r�����!j�b��b�r��Pekrfr6��d>�w;x�Y�R޸���χ��X���]Yp#��a0-鼩�Ҩ�?���"�Ŝ��e�rY➥�&O��\VVΛ��NA\��hk�;ژ���>P�m,�v���'�$Ӝ�E�-�f��lx��I���6���5����i�,.P����"�P:�K�r�s�j)���C��/���蝝zp���ǹ�����h̍2=�҆�P��jC��zu��L,�VTCYiܷ� b�+��J���m���lL��Fծ�L⁕�0X�V�kL3��C���h��T.���.�[%�.&�*�N�i��B�c�*±�.�z[t��b�ް#m�A��Yc�\H��:�8��j`��lU��0��5�d��0��f��F.�u�f����w�:x��*$*W]pF�x�a����,D����+m�BB����˰�9�ıHn��3%������k��	�Ǳ�N�՘Ls�6��.�j�+m`B�wU��<nk8�����چP:/m�ApG]�>�Ͼ���U{��t��������8�S�����b�w�<�ϻ�m�$���6P!p�v��r�����:�#e�xi�&����i�0����R.w`�D�����l\C����IWKyT������`�+z.�*�������<URWn�J�3��m�8��A��jF'3����j�+m`B��|3g�Bjz�0�%�[�&Fր�`	^���K8���{��L�K�,+�G�,�a�T��YicD�M#����wd���7���"��
��1�+#"��*$��ƈ�[FT6_������1���i���oKicD�M#�����J#~�젟:����6F���A�\/���"m��M���Ë5=ㄍ��?୍��&{Vo>lʷ���"px3�h�mPOm2:@�k`h>d��$���&S@�&y��s�3ץ<&T:��ٽr5&wS�g�)�F]�'xi|r⧭�a��������E��[�N�;�d���,Z^5ֈ�m���a}<nŎ�.��=���x���r�m銴�#��⯏����q-����q]�����Z�m� v�̗Yk��<��S2o"���5W�{%AM�����,Z��������Q��[��қF�S��	���G�%](">�<�o��F�fw��{�ltt�����Yu֤+mX��z��4��G�Qn�,�i5��[�˻J]�b��"���L>���?nN�����ř�i]�:&����#��a=�ř�&�m�9��>Y��k��V��])m�+@]A�����_�^9(��͢#���:�g�Z�@�0��M���8߃��Pj`��&�
��˚:�R��B�$>[_?NK��v��pP ^�w�y?��C�+bv;�ףd>��t����Ҍ�!�^�$/�+]�G;���m��>������i�eqSY>��%h�e� �ZK�t�.mw���Т�5�|��|	|8m`�>�(����Y 6f��m�4*���_ѯć�i-��d����<�Pu�NI�`������m>}��@�բ��
C���r)��(�rc�/&�*Ҳ���@ZR^|\��������}~�h�(��S��֕;k���Y�+���0>��=��|{�9�>�g���A)��E����A��v��_���:-��R!J�+����L�U_ePN�0'H��wH�fK���}GÝA�]C���.GI���҆A1P���~xx��xxXT���]��/�p4p3+��+�w%ҹQ:��L1]Ѷe�l�*�O���1��4� @�{q�E<~���]�aפD��|�	\Wً�6L�d�� is�_7G
��σE�ĝ-(lKڀ�D��t�l�W�_��Y�R�cy�deÍo�n�s�r-V� �\�c��)��2���(��*n���-#Y�p�q׵��p�X�JyD
��h����k7Cd�H[�11��v��ETJ��m�O��q�	_����t��ּ�� �qcYٹ����lLb7�3��"Dp�F-����v��P^�g�&_��B�鎗6@�v5��8P�-P�6`��i��6@!V�� �Y]�`���*^��,�k��N�E^mVKJ5��g�Cʼ	����	q۪�y7R޾�KMe�j,P�6yc�罪����ս{��� �Py            x������ � �         �  x��[K��8\��~�)��!�^�	��1	���@o1�W�Ȣ��Wr]G�8��)R�J�������K������W-?���x����˃�4��s���mڿ����j�Uֹ:߈P�y���W��:��fBP�u�q����-�����<w�Z9�ܞ�/-�ٓ�c5h��|U�@5�	(59f	꿸��/�s��DJ��s"]�\�J�JM�)�ζi�W)�5%r(�v�zHJT_<��{NtG��c��%2�.e=K2�Pj�X�9�_M_�g/AGJm�z�Z~q5��q�齝��ֱZNdw��>��S�z9V�{{|�j���Ҏ���������)��隞(C�˱��6�b�|��g�P�4�`Ψ���ٮ5�r()}�Rm�I���S�WR��BF8�܉��x���Y�O )J
qNd>]'� R�T�q��GF*���W�)=d�%��?��t"�RC"�P�~��eB�e����-�9(r���4On�/?C�70IƄ�TK"�0�z?�KnN��J-�5���?����[;�/w�%�j��˶[n>'��)�d�.�^�mq���H&l.�D��������lf�nҝ�q?��PE�L�,ɡ =\3b�[K�JP7s}`��mz9�(��b֣}�	�Î�h@�Q8<\��-��tiت�9�O�)J�nqLs'UdzE�D��������t�~U�~���tJhpP��G{Ϫ�T>��41������<���]�}@iZ��4M�����-ϔ�d��g�
�{�%�cJQ�����(�"�l.�P���Z�j�aE�P��TJ�>����w(&�*Ci"�UM��n�:��z��B���j�R%{�������@����Y�WU�ZT���y�]�+Pe(�Ie���2��QC�����҂�5�ݺ�ݱA��5O(��e�����u�%�*Ei�&�?sL�C�O�@�����z/�-\[�h�0������4v��^�)J,�5����K��]]�{@i��M���O��=�d�j��ھp��J֌q���;;�i�P�!�l�٢�m	S@Aer��Ꮽ�H[�L�Ԗg����*S=S��	>�%et��l�G|@�D�3�3�����	2Gk�j��\s?e(Y�ɽy��+�V�<=S��5�ܻcb�c���Ky��5�>��V�¤#�a����d�&��?�i���U|��(Y���+��R����(Y��}�p��u/��ʡd�&c^p���/#���(Y���K�m۬�͇K��	"ל��vjO����V7�^�l3Fȃd�&����-�X��)�C��MA�=� �W�%!E��M+}6�ů����n�䴍���jvu4>�vހ`��c9e(���)����a�P�4�q���[�Y=ӞuPg����
&H|����{���RL���9�7y����$>o9��^��~���:ngzB���[�����k8T���)E�a��$cR˯n���Ҟ9�=ә�v�' O�����Wɨ�b)H{K�
*�|U�|�]gQ�J��)������.��v?�)�C�����;	�8��RLP�5��Ċ�Z�!d(��l�뛻��##(!CA=���6��0�[M<S���y�H�̥6Aw�JQb5�����΀�wT���a�wG�n�Pf1�bԹ�k�P��S�ȨĆB]g�P�l��r+V߶�*r�J��P��S�
�Z������W7O(��)�!�kޝ>0�D����$������G�~����:ք���zAj	S@��s�L�e\,	�v��(�+<�]�����ȃ�<=ώv��Hfڃ�2�l^����V����_\���"^�m�Y ]��.w�?��.����3
&\f�d�u��V�%��E�g�;�f�s��2�l4+��Fu�[m�*:�p�%��
h��/�q?�xO�(�p.V�R*L���{Fɦs���RuS�?P�Q��\��Ts�W��%���
_F%{5й�T�^�x��b[�SW�L
&(]?�o[٫<�j	S@ɖ��o��m;v�lH��0�li ��t�Z�� R�r�g��mD�����v����dþh�z��@�m+\_��M��QT��%����������QT�%�es��P�q�HFլHV>g�|$���6�)�~m�D�����Sղ��Ւѭ�F��}A^�{���`��չ�WU��
�U�L�p�ua|�񗢠B���@eo�t�~G�?`��
Zo����v31�����Wm�L���$�/��|�3Ӿ7�z��%[hH/9�vi)>��(�BC>7���>@"���P�}�t�L�;�n����)C���k´�Ꜿ��(�>C,}fLji�.�R�l�!����m�y��NQ�}����ߟL}o��ާ�f*E���L�s�ۤ����3~`���Lw�l��������3~b�hQ��2�l��ȴlH�-d��Ȅ�(AO
&yd�V�9G~&��mX~`�q��\��d�G��wW��Lw�l��f�����`z�8�w#��)
�g�_o�g�5�P���̐3/���Ĭ��dK�!g��U�� �`���|d���m�-i;{�
&��ii���)��J�=���F�6�i:��%��j>�^���F�Q��Q-�+��c��h�HPf������L���lQ�
�����ư�8Sf��-�j	�l�ó�#% �6�������L�[ȽJ�ͪ��h��Ȯ%f�%[fU��sk/���dF�%w�?�`b0Ϥ�>�d��P��Xu˚��{Z�z�5�cJQ0գ
{�}~��D��2�l�VE�}~xb���t)�3u��wS�-ت[}�N$�S]�=�d+�*^� ^ƫ��7_�(ي��EԷ���n��g�l�VkI�dwG�y]�(���nn�*�|_Z��P0A���Lj�I�x��	��A��}lN*=er(���T���cvc��P�Ud��
������P0A�5S��;A&�D�A�@�5��^����3J����e[������P��hՠ��gCQN�j�PXT7w���¨�!7e(ٚ�j��뛾=Ojg�P�-k�ps��e=������'���K7            x��}Y��ڲ�s�_��ۍ���|ڊ� 
*�'��#�Ҩ��� ,Ħ���j͘�r���4Gv#ǀ�����i�����s�La�?N�{d������� ��p"Ÿ�6>-���-�ʎP���XOz���&c#\pgz�y��SF��������g��y����OF�`��7��!�?8	�8��`���
���B�w"1�"�ԡ��������`<d�=�Z�c��n�G����x�Q��3ػHԓH�o$b���z$��`/�0��3������ص�V�^�ΔFņfq�6�χ���¢Ե= ��<��g����b`�H��V&����7`��uL�	�"-r�H�b�u�]J�+?��%�O=�=C?�>��>�O�����r��"���@�D����X0�k��o��K�I����	V����墖����6�gH��'4��Dە��0�0_ߚ���A���p�C8C=`���j���ZĹ��QO�=���7~Q9�S�C}�&��QC_�Y&��� �Q,��1rT�0&�SB_8A5�.��2��F�?(��� C�exKme`j�w�1p�lWq�GYZ�X�7��*u�$<7c�H��f^���a�n�35����������`p�yH� O�o9P��Y���c����I�QK��A.Ɂ} +� �`S,�e`���
'��cr��� ��j>7��1�Ԉ��r,H7 /�>
�A�c|����
P��z��IPԷ 
}��h���h2���JQך��)��7�?�Dq�)�ٹ��_���V�")P�����	�	0�����-n��jL���o�t	��~��.����r���R��I�Z�Ua���pGy,(m|%M� tŧb�� H���!?Q[̵{Lrǭ�p��/����"���V�iŕ��(�Zq�:�)_y���ΚM	r��%<��C �t���_������I�o�x��rP�ɓ$4ծ��r�@R
�q\��r'��[ň&�sb��`��$_��
� 2��oI*>��#�"�w����B���]/u�J�̷<�Lsu8<��piƻ��r�*{'������Xٔ��4�����b�&ɚO��/d@A`� �z�+���ƪ��(�20�A�nKn�`V!f��ѡ���~N��PZ��ψ�%�4�H�tȜ �;���!�0Vg��e0�18DS��X�L�������ݡQ)�-��7E�����Ú</ǋ���av��D9H\�*�L��;��d��/���A yY
o�-~���u����e�'REC�ޢXRS�';QI�~Ɔ������ڽ��Sb�����࿐ ���4�!/�-����J@|������Go�_�f{��γ�c���l���0��!Or�<�lq�I�<[�E�ވ@�F���zY�o��������9	���$%��y�[;J���0ِ�f;	#��A	��8���M�h�E�_�ǐ?��K({Km�P��̖Kk��3j�(�꺶b�pEk!���qS�*c"�q��3��a���gƭ �, M�J�}$��Ex��"`�U��tя�^����Y�s�r?��[�jD;��OG�0�b.r"%o��D��.T�	�j����}2�Hlq�]�m�����<���s<��=H��H D����1}>��b���	�r�;�?Տ��@��������-v�{�}B�[R�6T��i�#��|b�.s5=�2�J^]�BN�]?�Mp�:�t��G�T�`�Z��|����G��ĊU�oNB$K|�C+Ɋ㕲�.��r������-��l$O���z��+�((� �x��Wj����w�ɾ�#�3����@{�s�ZW5�!W���u�B����>�p�2�����* FT�1��s���6��n� `n�����<�{J��I%/�G��L C�%!����^0�g��{�쿻x�Jp��p?Q[�L�.ym��p���,I9�e3BXkcG�����\e/_���ϖ�9Z^��C30��8��Q���F�*V�R�6�R*��~�@�;Xȫ[�ݣQ�����KT?����F	�{}Mc���q�#�kȁ&�����������a��y��w	�W`d��AM�P�����%&-���4'�yN��z8t�٘����?Ѭ`}�@�E�� ����w����¯m�H�W��i������C�S|S
3睡�'tO�|�6�	�����~ڍ+�����{��jP�����W�7n��ٶ4A�!Mb����Z0S%;O�$����8�s�	'-bm���%��vJ]���.Z�oi]մ8^�F_L�-�E�v���r5��vb3����h78����lt����`�?=`��[Qy2����.�O��:�����-�Ŏw��j��r
m�Q�Y4�O�M$@Ñ� �B���a���%/��������ꎝ�b����!/v���"�)'_��;C'��P\�3��=$�@��S���`
�^)�#zu��\�-���{oyn�w���߯��	��?��?(�o�"�t"�g3z�*�>�����f���_��ӻ�F��hՖ��G�G��"52��bA}S��p��/��M U
�ܜ&�O�h��@�V��J<۳�Fx�^Ci��6��6��Ғ����H|T#�������˄c�V�xD�,:V�\�H�9~�B���hU�\�q�	�����c���Õ: \*��R=O���)���#H.�B4T�©4�9E\����*�{�t��5��x�Yb��m���-V	ǝ�
ݍ��c�U����'��uɍoz'�E�u�gdNY'5�c/��-�q�D�g�w/�>.튠\�Ln�M8�6ب�H+P� q@k�7�o��,���Po@�R��4͏V���Q8ݖ��w1|�r�:̘��Xs#l�JV%�M�G�LV�h70ʈ�&�'}1$C�D������405�^�'j+ AuR���މX�W~�Mݽ�>�^��=���X%�Ǥs=�ms�&�>�b�{���I�&Q���6&����H}r�o����*z��iPx�h����,�K����8!jRV�1����Ħ|�z���M)ՉY9�# I�z����e�,�` {gB��
zVC���e:�1�ӎ���Ȳ����m���Sl�P��-؈ ���M�����ݩ2�XP����/ ���g�á�nAB����z7�Վ�J��d:1�u��r:���q��\^Pq_�l�.a!��ɾ8�K[�aa��H���$�1��[v�#D��1��������Ȫǋ��� ӧkG�g/�vCf@RL�ۋ��5'�,��D�D��W���H&�ō\舮���o�w��W-Y��*�4�l3o�����]$����sx�\�27���h��h嘻�'�<K.�H-���x9QFz�x�p��7��*��/��=���^�������,�2�NLm��&��"��MّdED�t�;��;r*Q��~5�^��W� %�� �{�R[��gQ�bE��t���T���4�\i�f�Cz��&T,(
���G}��3(��MU���o�����OPdc  �~t/�?Xm�(R%z4I�Xy��%�&;J���[g�ǎ36�f�d[�`D��|k�~z���x*G��I�k簮ZV(�<���=���R��F����ia��*ԃW����y�&g�L[�\+Io����j�Ś�^RI)�fk�t6�rCk=ċj����0�`&�-=����|A�w3��o���k��)p��v����!w�HJ��lK�@
���9BE}ȍ}���7q���U�}ّ��z_�ȷ�<������v��NS��\��p�
�(j%,�`X����u-K/cu$|Q0
�����´�צ૩��������Rm���D<[7���[���"�A��0���[��I�����1�=��Ȥ���Ӯ�՛� ӭK�T��8u_wẋ����� �f�jm�!�b��3�7�v�D�x2��.��-w�Er��%���"����xo3)�jN�%(�K^�*$S�A~�nb�����zO����    U]aF���j\�9�`�cN�ZIe�7Ԉ�D?����<%Ke�������E,�1��X������,�I�����J_�����`p=TMB��Pƫ��ߺn3���}���A�xQ�� =�������ܮ�-�!����J�<��*3ǀ�����c�.�ں|6�������I�&S�� Ϻ�}�X鑩G:���q�qe ���� ��f���	u�F��^���0[Ȏ�c�~
�r�J|�]��|��Nm�(	2+�$_��[�]�Mu~��V�Mg�u&ذi ��^qY�>�։��z���0��-�x�&3��z����7�s�9q��瀉��v`ɷ���
�ї������7�㳸&#��z��+QZ��~�p�1
�0�����Y;�zGR�/vx+�p�[�Y�ԓp�h�e�6�'�4��ՙ��w�:�k[K��2!O�(Ѻ��Y���ّ��&gQ�&@49�.��a!}ahUP8(wG����|�S�V��r��?*"�i��{�{j����RU��@5�|'x��i>&g�;<4�m�|"�����/�����k7�����|M=�d -��k�P���.�l�ȃ�����Z�������F���_�fv)\˒vh��p70��'�t�@�x�����H�@��$Я��X�D���ڶ�Q�����N�t3�ܴ��1$�b#V��Z�%ߓ�W耲+c=L6��t\�<��>=�(,গ�&��w�C�i��E�Hfᗂ�-����6���ܵ��e�o76�[���K��$h��3y� ��yn`��.&C8�Ț�wE��[HD�4?ǫ"x{Z�C���чI�Ax2�?�d#',Y����1��z�$x3�RC�F��qa�q���/�r��S����@T�">_�S5�z2F���Hu���:�"��R���N�/)#ϟJ<�%Gi66�i��/D͢��j)�RP�7�5��h�qx�����z���wR���c�1�
�<�rN����A��M冉��"�C=��@M�$�&��}N	�z���F[�]�xs���<$2����Yk�:={2�ע<(*�ј�.���_:��t���O|����l�'պC����>�R�VԃD�^JJ�jL����P�4��7���0U��mƛ���b���:b9�������~{��KŎ/�!:��<�4Vu�j���Ɵ���r��63ה�h�y��ؙ�k�^9�*#@�n6��x3H���يzrl7tN�Ξ����$拋V�;������0�1������dbdg��`^���䠾�Ȏ��Aw�N���VM5
�	�{�ݳ4� _=f���������n,h�v�a�
Bc���+�����:���V[��)��ݠ�cx����}���!�*]���[�<�<�U�q}
-�@ �*��a�������I�����S:����Q�\�&��OOsS|�)k�̛�h��?Q;���&n�ۆ@1��^��N��V89��+��,L:����ז���2NL��tM�>�}����j����2�.Y'4$(��72�R;��i6e��M�bn�.4T���94����dmggNy̍�2B7�'�Qw���E�0��E����*�d�U�ڿ�U� %���S��H�NA�#������<�&���P�ӓ��9$�}�˓�3,�RJ'ϲ?9��##��T�:�,�oR��à��E�L��&@��T��	(r�9�W�b�"`�wH�-��Rq�]����z�`(i�8\���R�Ղ5��3?ׂ��U�@B#��G@~����CF\�,�����lz��M�b	�J��b��=)�M��{��h����M}q'La�WT9�~o?�.���ՖP+������������ש��=��5kLw�bb;�p;Y�|��Ic�Gfv"��2
d7����˱6�U�x�nޗA�x��[�FQ���@�W[I�a>n%�_\��rZ�#����6D�kLx$;mM���!��k�Ǌhfr�BE�Ծ������ ���砿q:T�k�=��OԎө�Dv�a�f�c����Χ�T��/�3j��s7����2S��o0y�_�SU��4AO�r�[^	��R=����U�� �>���p�	ע9	�:�bk;[=�ؠ?5.�48� EvK��_m,4�Y�"w������E5�T}Q��ό�3n��\��40w�iC�'�]��p�>�Q���,iC��i���,Ё����2�J�g�[d��
<���}<Z��U�T�4S��h�2��a'i�-�g�}�6c�&(��(������.������@Y���W xq�Ѕ�_���/x�U��tu�
����>�J��{��BU#d0�/�~G�(�iA�#���R��p`��ue�U�r�Ğ�o��I��6�
��4쁬��Vz��2#�Q:O�"���$�n/�zތTVYȽ��ƗtLz��)�8�m�h��y�c\�QtjHP�N�C�Jƣ�ޅ�U^?2����u��W�?��m��ځ�>�����E�`?�i3���ABC'�Ι����|d�cr�F��4*��+6���U�^�5��2>5eZxXU%��K zK�'�����SL�op�u:Bi�6N�V����>�AG�*����R鎞i���-B��f�x���R;��Z�u�9jc'�䡂����E�9��˂;�áFRe0�N\pݝS�1Ae�0<K����)�j���T��i��'�v3�p�Ӳ��Ħ�l/ �/��d1�F�./���-�\�u��앍s��ٽ�"T��IP���Zu'�<���»�����F$�:���Qz�^�\��ƓH1�FE>E��g6���|�R�,?��dj2�rN��0�""a�[������}���x����{���Ԏ��.������̉����.����r���G��ғ,^o���,`ѥ�{w��7��/�W��(h�-�gj����jw�>�� U�EOTV�%�����G�B)w\(o���pD���
��o��m�(�-��~�L%�h���mH���>�W'D���.U�H"V�v����ч)�1檷�<��h!O/[$��v����J	����>���i9�F�X��Rh�#ލ��nu��wU:��p\��LZ�j	i)�6X����0��oO����k2�p�РA�t��3r�W#^o���x@�G�{S����T[�/���hX����t��o&឵�gB0pF��\>Mb�R6����*�((�0���T?�����V��^����l�iD�����ls���0"Bn��e?�T��}Y:�@-�I�ƧԻ���L�"p��2���@'�~�� ��ڱ��EO3��ݢL�\4�*|���gP�G�B�.s|���D!����E�E���Ws������t�Wb�g�����.={Y���y��G�s�96��,Ae �ø�2���N�*=�#5+S��a�ͪF�6����(��瓱�D�=���n�����0}g�&V���c=��E�K+#�93�rڒ�m��s�.�]�ų-}!8J4�c�<˿¯v#8������	Mu*�Z�e�ϼ�ܘP�u/�{j1Bѥ2����y��7/�!�Ec����6��4(����8~p�M��7`Bc����v
±�nFs�ʽ�Zu�o���=��fP�{Ra7cz/�#s2�9��e�����!qh9�Y��Ѹ�#o���}���A�c"_2ɦ�Q�� �4�T��fغ�E������;m���8��渜p;�����h�q��U^ژ�I���I�Zoa����S͵�2��#xG�$dM��JVȿ��v
5��ge�n0+՜��P�\Kh�p�y��,�xI�֎�f��eՙ�ó:���Ԥ�Uଶ�����=%�h���z;�uw�4v�h�S/���3 l��负�˩Be3��hD�(�e��ƹ�	�|�s���7��?(���)��{���\�׫��Sc�:k���,!K�t���TC&?
sa	a��    �o�6���:�i�US����~ӽΞ����L�yө�;Y��Oc4���z
r�?D�|����zj�h�\�,dмa� ctb��k���]"���@P~t����ׇ���&�q��Gjg��i}N�r^{�م����B_�'eMa�-�����X4���jT"�3JC������_UÃ ��a���7 D5�R�;�U�����N���� �k����dx-/�c�)�WM��&�˥�v	;LfSrE�P���4��9nZ�L}2�u��9�%��霽���
I�g�M�>����xe�����-�1N,������>�s�K�q_I�}k�7UJ�0�0��0�_�h=�K2�y�{jG�Շ��0�J^�55;�{�#�n�$�l�C��R���,����+�������_�Fq���_B��j�u��=��U�wG�-BJ�9��j�FĬ�E�)�c�j�\
�::���>��l��ȯ�V*����G���Z�C�g?��ځތ���&�+��^�RҀX�(��q\Z�.�8�!��I<P3%��N��p��|�x��p�K��(���׻��e<�������:����C� ��n;���R?�!II2�[�Hr�� �^G��fʺ����T�U���tT?�FU'�Q��O�N.\[z�'�%�����0�#mZ�C,������LHw8-��2�]j�12�ҽ(U�$AT�N7?��mЬΖ<��ju4��1�����p��=Ζ�ٿ����T(���R�9�5�7Hg;�>���T^�Z_֫�n�QUP8�6h��<���T�:�Fv���4��u3x��2�	��t���So}�����x)j4������!q�
#���|�w�p5��p�l-����C�?Q;~hʹ����zւqd����b�8OB6D��9V�8�Ű���} v��k����- M���C�u��x��TS��f*�u��f��f��v�R9���5��Jf=Q�̡���V��_ɁbB�b�㋫T;Ƀ����뻾��ÐX���H�$�����Iڛ%�^��!��y~Ny�B��p���9η}��R͟W�,R��q���4-N�W��	@��9{�\��>�&��K �f��FӴ��M��!��l��>��E���������s�.ų{�5,��x���,��4�|����]��3f�7�~����1 ���=�3䯶�?w-q�Ԫ�A;��;�����:H��H��p�؁���/���� Q�h�|p���.V�$�u��v�h; �n�Z5ם���J����7�%hy�����w�0ķ��x�c��`�8���쐺�Ws��o�><�1Ն�b�hm%u����kF�#/�.M��,[bǡ�M{��[��@�F=<e<�:ǻ1*��A���P��U�}��V'������t���'��a��E�'����f�i�������F	yiZ�{I�~�_WW���lu�����kگ�����V��"/����A~s�y�P���*-��]�G����(t���-�m��d�X��F���.��>���
s5�gxY��9Q�}Ww�����9ڜk����l7z�\?�ג�� 4��X+��|��L5��܉�� �������&-��a�~�fz���7 0V�����7��s)����=�$A{���:�#f�_ew}�����|��3�Č�W����H����� ��/b�az��~"v�>��w�x=�\
4pP"7g���� 6AcN �� q�<��[c��\%S@���.��;����&�f A?���Ԏ�_O�+��Ap�Q-��[E�\S6�P>��y<!�'��BH�z%�t�����z<����4�vX	�M����R;��[ޒ���~�}w�Y+C�yCv���AMS�ŲX�.WR�G&f5��ۿ��R3��Ե��&�ʺ�A���kL�`�Dmst�v���n����2ru.����\��� u�ZЏR�CkIQ�'��4J�È����[$Q!G~	����:���l~�6�b�v�a~�d.��T�kc�w���;n$GVvu���^z�X�%���D��[%-.s��S�� ���O?�fn�F8�����R;*���
[ώ����I:�Kh�rA|-�]ê�]	?gm��Rì`�ȣb$�����zW��n!^��q}/j��#� qS~��AF�a4\N4�iG����ۤ'�o�����E�(&�#�_�����I0x'}(^:a��̚����ͭ$T-�� �}����T��P/�hs:�
u=¾�w$��o�
��A���~���L���f:Ѵ�l�:��V���`xt���̷�.A����SW�x7R"$��� �+�ڗ�vc�s�oŁ��!C�A7�^sN�^UV�z�|2���C�G���O�[[̍t�|���/�t���Ż��h �ElC޸J�8�k��c]�ڠ�� ]݊���o���Tk�q���r�����V�0w!�_�īM����(V�+m[�\��Z:}$��n��}���R����~���ڱ���GO��vd�M=�3�H4��l�4�$��F���0�U���rn��m�#������n^C1���Z��V'�Uu��W�o��LwiᝥE��QsH]���1�;�z~30��$��|���w-:O����c7�|�v�G�?�v��꫓+և܀8������s��������Ƽ�4�슐-�X������"�'P1�p��?�+T0	2�����oH�_��ik����!�j��I?~n�96^m��� �� �'j烣�v� �>!�1��>�~u�2�<Q��ш�����3��Iyz�{���x(v�x>4B��}Gb�	�̟��"^k�!'t��{�)�������C3p�1N��;U���њO��~P��!�f��Y5���d������b�t@��(��at�Ǽ%��H<t�,�)ܑ�1� ���M)DT����X��Ѯg��-j����:�_��c�߯�6V��\���\��'o������tb�J�9�r�@��3Q������D��F� �#������ ~��Ϥө70��b���H�/�PbS�u��@�;��$�_<�w*ݙ}����ǰ���w�q�=�Gb?��O�J������L1G�O�=���5F�<odӷ#8O��i�G������;��৫�?Ec�x�v$�:�얼w�Q��­�.�K�#'�<'�i��!7
pU,��g���'s��w�'���/Уpu�	��Y�;�눼O<�zh/N2dp�-�H�:�tQ<- Խ*�T�����`Q_Zl䅾��G��� �tX~t�H]#�H=4�<�L��[��#�7�	�oM]/#I���8�����=�b�T��l'ͷ�,M�y6A]��24�P%��aԱ��a�ZC˪ �|�*Z�����=��/�u��_<s��O`�J,��\YAʁ�v9zUoa��t���1���g���f��5�5����U��%1 餙��ڑ���8�i��|�Xǘ�kU�sQ�v��-�@��N�3Ф��܎�����\̓�^dV��2����p���3%?�K�9[�}�}�0�;L2ʃ�i��k�t�S)��Iz&<q��ck+��T��z-��M����_HQ5a��K�>P;rOrT�1���j�c�����aG�j20sh��s$t�A8�2y_���
keXo9n� |��!�Vo�#��zK�HA>J
���Оl|��[8w=���b�ܓ�,^fWA✚��,���y��4P��RT|��#E��B(����R;RPOR�r7�!�7}j����]��^,@�sй��@sKq,�.���������H��o�#^"�[jG
�Y
�]&X�X
W�QӜЕ��VO��M�	e���P��>e���4�����-F���_�vʪ[�(���Ԏ̣�W�z�$�N�������T��fg�{zo�)S]��7�x���f�ѱ����������Q�k�xK�K��k���m�v Q  
����j����['�+ϴx�j9*(���ny)�rH�6[B�.߿�@�j�*�נ��ڑ}�D��m򒲓��	�o���"_�&��=�8��o{&Vؽ��F���y	�t�~�En/��&Q�gKzO���ƻ��*c��5��.u��Y�ޗN��zg88��\����v���-Nҿ�n��b�W��m.D�
��J�-����n�a���;m;�4>,KuN"� �O�PYj���q�;��+w�,��V�t����P��~�x��f7�9�~O�`nʄ"УNf!��9;�����7���,X�!�&3<f�q�?�rX��Z���W��V�N��H�1���M[��[��s���zύ���z_�$���Qqv� :�T\��}���9�2��?]�8ѱI_�Q�����"~ :Q_�v����hMu9�{���v�iw�5�J�qC#=�D�k�7�Ou+A��22�OXi�*Γ�H�p�pp�쭾(������৖}���:K�C��Խ��% �����#ca!��Ʈ����f��y��K؛��(Qf��(�u�(h�i���l+���W2T�����^{��~������܎� �]��a��wǩ�$�����p6��{��G#�f}�#J�>�Xռ*�T�3w����U�L�x��gj�_��7�2�P��	o�m��9�� ��L���{j���u'��<�y��6�����&�k��/���;��#yCY��ʯann6��~�ҿH��a��A��Ϻo.�"�=*�5:��v��L3ǒ<����[w</{�����LsEY��<!;D�0�o��Tdv�( :���$%}����Z�J �K ���3u'��,N����y�7zA���E��0�����Uu�aՉ�w�{�v��}~��x���<�����2�=��t��t�~:����M��?�@��}K�<�����ǥ��N�{�}Eѿ~@���)������� =Ř�@�;��x@}��� O�����$�`??�K�?��/�f�e��S�z �������?S����V,(�$߫�z��ʹ~���>P����6������>�9���h�}�tV���s��<����a�<So'�(�m1D(�U]p��du/����|�����R.��v��u�ߟߟ��U��T��T;����3����ID��':�'����x���W�~�����N����'q�"u��>���)+;ٗ��{s����x��3y��`�$}\2��E�X��L�d�T�~<��b�^�V������6aX��{�����~��'J�\B����O�4rU���JR���N]�����k=������"��sМ���w��v�O���;�f����h[�(�����I4��U\��t�IN�ܯ�Q)=�;� ���d�dr��K�V[>�g��_���T��HF^ʼ��t��m��D�/��T���8e%o5�\^<eK�z�)��7>�/�2����Mb���2
"^��[j|�v���@8)�����m�p!0����@�}��8�g�R_D����Z}�D52U��V���>Q�\y��R;�o?�����q#�3�Bz�p�R;2��	��ԍA��	t�J�dy�>mg})����)��ĝ�o��2$����v������Aܞ6���t�^qX�Nx��	�@�sGq�\n5b��̬��@�F���]�eV��
��<_u��;��ﰛ)�;����aÜ��c�Ͷ�<�Q3���Ϣ�!�l�/��{�^�s��m��v�a�Ԣ�~����AW"���7?P;����Ϊ�+��3ׄ��P�7֚`�:�,�N����eg��`j�wÍ�2W�RG�V�ь�0R��?���[đ:���U�{jz�n��~/DꨖS�6�.u�=,W��p,��� �u�
��`�M��q.{(6���;l������@��_]���A�w~׷�^dH�q1�h��G�qi��_���s�^�9Y��D��p�EBDX_X��۩��C�_軪�A������z��c�+�#1��pD��D$��LUI
&�ؔ�a���i��&);���6�X�4�!�M�?�%
����s�nOP�?GQ�~����@�f�k&Z��3B@������v���2g�|^л��Kt���3?`p&[�?�/����q���SӨ�~�J�6V�~��Wj�l�x��^ʑ�	�����Y�L��1?Y��\s������\V<���B��Cb�7z��z��Ʃw��J�����z�).A)��'�<󙁿��Gz!�}7�4��
�Û�C�=�A��R����$ɼ��D��g�����_��^���Pj�1����c{H�zk/.��22#��NzK�Wy^L\��e#8����k~�~}ë/P�p�=�g�|3R���P��+݆��Ŕ6�(v�G���� �#���M��DH���y-��x��P�	Զ�����ϻ0����2<;"Ԯ>���
B+M�1W)e�rqT&#NR�kcyE<���A��=f3YDQD�BH���&Sm��Ԡ:����>㦾wa}Ro���1��
�$��$�#�~�Q��{,ϗ%ɭq6�`>$�3gW~tH���J�þ?C��d�7��aњ�o�W/�x���v���1V��˟}M���[�4�� ��m��C���>��̷Զ����]�� @Z �/ T�S�/��?Q� ��A̭")D[����l� �Y?��.6u�)��w�IɄ��f�z��U�0"��s�/��*-V�V�n?~z���U���˧��h.��;%�=�5���u��᪠W�SMK�)��XI�jMjV4j�>���*�(\��+�=��
	�#]���nHW{�/��R;	������vmf���̗|BlK7�'�%�ܧ��	P��H���EB �L��/�ƫW�5�>/�vM�u�f�z�ݼ�(ڵ���0q<�Ʃ���vfV���_�C��5�'�4\�e1�p���	�>���0�P4\���p�L��n[{ _�
R����K�~K�o��]𔮭����ӡQ3&�5Y)PD��V�ܽ2ذcGA��q�?�<[}�M|�	����k{�_
��a�R;��0��ܢ�̶15b�N�bCFP��]za�{�P�=����x��� ���$�ï�T���7��*w����K�R;�o�n�麿�!�ψ�Ͱ�Pi���8�rۇc�=�%t8'�SJ���;r���7��j|G�����ԝl�j���s+�d�K�������,\t�1�Z�^"jd�Y�!UX�\�n�v�~Q��T}��.z�v��w���|K*�I�*o~���Ь?��P��"YR��`��BG\e��Ƒo~������[�?P[����_���
g_            x�32��22��2��b���� 5��         O   x�3����K)�,�4202�50�54S04�21�2��343�60�26�/�e��[Z���[�i��������1vsPe�b���� ���     