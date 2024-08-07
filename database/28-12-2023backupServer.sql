PGDMP         $    
            {            test %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1) %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1) $              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    55334    test    DATABASE     U   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';
    DROP DATABASE test;
                postgres    false            �            1259    55335    AdditionalSkills    TABLE     �   CREATE TABLE public."AdditionalSkills" (
    id integer NOT NULL,
    name character varying(255),
    doc_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."AdditionalSkills";
       public         heap    postgres    false            �            1259    55338    AdditionalSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AdditionalSkills_id_seq";
       public          postgres    false    209            
           0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
          public          postgres    false    210            �            1259    55339    BloodGroups    TABLE     �   CREATE TABLE public."BloodGroups" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."BloodGroups";
       public         heap    postgres    false            �            1259    55343    BloodGroups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodGroups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."BloodGroups_id_seq";
       public          postgres    false    211                       0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
          public          postgres    false    212            �            1259    55344    CasteCategories    TABLE     �   CREATE TABLE public."CasteCategories" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."CasteCategories";
       public         heap    postgres    false            �            1259    55348    CasteCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CasteCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."CasteCategories_id_seq";
       public          postgres    false    213                       0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
          public          postgres    false    214            �            1259    55349    Cities    TABLE     �   CREATE TABLE public."Cities" (
    id integer NOT NULL,
    name character varying(255),
    district_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Cities";
       public         heap    postgres    false            �            1259    55352    Cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Cities_id_seq";
       public          postgres    false    215                       0    0    Cities_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Cities".id;
          public          postgres    false    216            �            1259    55353    Classes    TABLE     �   CREATE TABLE public."Classes" (
    id integer NOT NULL,
    name character varying(255),
    institute_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Classes";
       public         heap    postgres    false            �            1259    55356    Classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Classes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Classes_id_seq";
       public          postgres    false    217                       0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
          public          postgres    false    218            �            1259    55357 	   Companies    TABLE     \  CREATE TABLE public."Companies" (
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
       public         heap    postgres    false            �            1259    55362    Companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Companies_id_seq";
       public          postgres    false    219                       0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
          public          postgres    false    220            �            1259    55363    Configs    TABLE     �   CREATE TABLE public."Configs" (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Configs";
       public         heap    postgres    false            �            1259    55368    Configs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Configs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Configs_id_seq";
       public          postgres    false    221                       0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
          public          postgres    false    222            �            1259    55369 	   Countries    TABLE     �   CREATE TABLE public."Countries" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    nationality character varying
);
    DROP TABLE public."Countries";
       public         heap    postgres    false            �            1259    55374    Countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Countries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Countries_id_seq";
       public          postgres    false    223                       0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
          public          postgres    false    224            �            1259    55375    Courses    TABLE     $  CREATE TABLE public."Courses" (
    id integer NOT NULL,
    name character varying(255),
    course_code character varying(255),
    credit character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Courses";
       public         heap    postgres    false            �            1259    55380    Courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Courses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Courses_id_seq";
       public          postgres    false    225                       0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
          public          postgres    false    226            �            1259    55381    Degrees    TABLE     �   CREATE TABLE public."Degrees" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Degrees";
       public         heap    postgres    false            �            1259    55384    Degrees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Degrees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Degrees_id_seq";
       public          postgres    false    227                       0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
          public          postgres    false    228            �            1259    55385    Departments    TABLE     �   CREATE TABLE public."Departments" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Departments";
       public         heap    postgres    false            �            1259    55388    Departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Departments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Departments_id_seq";
       public          postgres    false    229                       0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
          public          postgres    false    230            �            1259    55389    Designations    TABLE     �   CREATE TABLE public."Designations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Designations";
       public         heap    postgres    false            �            1259    55392    Designations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Designations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Designations_id_seq";
       public          postgres    false    231                       0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
          public          postgres    false    232            �            1259    55393 	   Districts    TABLE     �   CREATE TABLE public."Districts" (
    id integer NOT NULL,
    name character varying(255),
    state_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Districts";
       public         heap    postgres    false            �            1259    55396    Districts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Districts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Districts_id_seq";
       public          postgres    false    233                       0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
          public          postgres    false    234            �            1259    55397    DocumentTypes    TABLE       CREATE TABLE public."DocumentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ParentId" integer
);
 #   DROP TABLE public."DocumentTypes";
       public         heap    postgres    false            �            1259    55401    DocumentTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DocumentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."DocumentTypes_id_seq";
       public          postgres    false    235                       0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
          public          postgres    false    236            �            1259    55402    Dummies    TABLE     �   CREATE TABLE public."Dummies" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value integer DEFAULT 0
);
    DROP TABLE public."Dummies";
       public         heap    postgres    false            �            1259    55406    Dummies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Dummies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Dummies_id_seq";
       public          postgres    false    237                       0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
          public          postgres    false    238            �            1259    55407 	   Durations    TABLE     �   CREATE TABLE public."Durations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Durations";
       public         heap    postgres    false            �            1259    55410    Durations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Durations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Durations_id_seq";
       public          postgres    false    239                       0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
          public          postgres    false    240            �            1259    55411    EmploymentTypes    TABLE     �   CREATE TABLE public."EmploymentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."EmploymentTypes";
       public         heap    postgres    false            �            1259    55414    EmploymentTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EmploymentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."EmploymentTypes_id_seq";
       public          postgres    false    241                       0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
          public          postgres    false    242            �            1259    55415    EntityTypes    TABLE     �   CREATE TABLE public."EntityTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."EntityTypes";
       public         heap    postgres    false            �            1259    55418    EntityTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EntityTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EntityTypes_id_seq";
       public          postgres    false    243                       0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
          public          postgres    false    244            �            1259    55419    EntityUsers    TABLE       CREATE TABLE public."EntityUsers" (
    id integer NOT NULL,
    user_id integer,
    entity_type_id integer,
    cio_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."EntityUsers";
       public         heap    postgres    false            �            1259    55422    EntityUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EntityUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EntityUsers_id_seq";
       public          postgres    false    245                       0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
          public          postgres    false    246            �            1259    55423 	   EvalTypes    TABLE     �   CREATE TABLE public."EvalTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."EvalTypes";
       public         heap    postgres    false            �            1259    55426    EvalTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EvalTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."EvalTypes_id_seq";
       public          postgres    false    247                       0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
          public          postgres    false    248            �            1259    55427    Experiences    TABLE       CREATE TABLE public."Experiences" (
    id integer NOT NULL,
    "case" character varying(255),
    "from" integer,
    "to" integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Experiences";
       public         heap    postgres    false            �            1259    55430    Experiences_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Experiences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Experiences_id_seq";
       public          postgres    false    249                       0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
          public          postgres    false    250            �            1259    55431    Genders    TABLE     �   CREATE TABLE public."Genders" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Genders";
       public         heap    postgres    false            �            1259    55435    Genders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Genders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Genders_id_seq";
       public          postgres    false    251                       0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
          public          postgres    false    252            �            1259    55436    GuardianTypes    TABLE     �   CREATE TABLE public."GuardianTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."GuardianTypes";
       public         heap    postgres    false            �            1259    55440    GuardianTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GuardianTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."GuardianTypes_id_seq";
       public          postgres    false    253                        0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
          public          postgres    false    254            �            1259    55441     InstituteProgrammeCourseSubjects    TABLE     h  CREATE TABLE public."InstituteProgrammeCourseSubjects" (
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
       public         heap    postgres    false                        1259    55444 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq";
       public          postgres    false    255            !           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
          public          postgres    false    256                       1259    55445    InstituteProgrammes    TABLE     �   CREATE TABLE public."InstituteProgrammes" (
    id integer NOT NULL,
    institute_id integer,
    programme_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."InstituteProgrammes";
       public         heap    postgres    false                       1259    55448    InstituteProgrammes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteProgrammes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."InstituteProgrammes_id_seq";
       public          postgres    false    257            "           0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
          public          postgres    false    258                       1259    55449    InstituteStaffs    TABLE     �  CREATE TABLE public."InstituteStaffs" (
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
       public         heap    postgres    false                       1259    55454    InstituteStaffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteStaffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."InstituteStaffs_id_seq";
       public          postgres    false    259            #           0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
          public          postgres    false    260                       1259    55455    InstituteTypes    TABLE     �   CREATE TABLE public."InstituteTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."InstituteTypes";
       public         heap    postgres    false                       1259    55458    InstituteTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."InstituteTypes_id_seq";
       public          postgres    false    261            $           0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
          public          postgres    false    262                       1259    55459 
   Institutes    TABLE     V  CREATE TABLE public."Institutes" (
    id integer NOT NULL,
    institute_type_id integer,
    code character varying(255),
    name character varying(255),
    type character varying(255),
    address character varying(255),
    city_id integer,
    district_id integer,
    state_id integer,
    country_id integer,
    pincode character varying(255),
    hoi_id integer,
    contact_person_name character varying(255),
    contact_person_email character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Institutes";
       public         heap    postgres    false                       1259    55464    Institutes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Institutes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Institutes_id_seq";
       public          postgres    false    263            %           0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
          public          postgres    false    264            	           1259    55465 	   MenuItems    TABLE     �   CREATE TABLE public."MenuItems" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."MenuItems";
       public         heap    postgres    false            
           1259    55470    MenuItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MenuItems_id_seq";
       public          postgres    false    265            &           0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
          public          postgres    false    266                       1259    55471    Modes    TABLE     �   CREATE TABLE public."Modes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Modes";
       public         heap    postgres    false                       1259    55474    Modes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Modes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Modes_id_seq";
       public          postgres    false    267            '           0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
          public          postgres    false    268                       1259    55475    Notifications    TABLE     O  CREATE TABLE public."Notifications" (
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
       public         heap    postgres    false                       1259    55480    Notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Notifications_id_seq";
       public          postgres    false    269            (           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
          public          postgres    false    270                       1259    55481    OTPs    TABLE     b  CREATE TABLE public."OTPs" (
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
       public         heap    postgres    false                       1259    55486    OTPs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OTPs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."OTPs_id_seq";
       public          postgres    false    271            )           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
          public          postgres    false    272                       1259    55487    OrganisationTypes    TABLE     �   CREATE TABLE public."OrganisationTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."OrganisationTypes";
       public         heap    postgres    false                       1259    55490    OrganisationTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrganisationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."OrganisationTypes_id_seq";
       public          postgres    false    273            *           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
          public          postgres    false    274                       1259    55491    StudentOtherSkills    TABLE     �   CREATE TABLE public."StudentOtherSkills" (
    id integer NOT NULL,
    name character varying(255),
    user_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."StudentOtherSkills";
       public         heap    postgres    false                       1259    55494    OtherSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OtherSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."OtherSkills_id_seq";
       public          postgres    false    275            +           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
          public          postgres    false    276                       1259    55495 
   OwnerTypes    TABLE     �   CREATE TABLE public."OwnerTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."OwnerTypes";
       public         heap    postgres    false                       1259    55498    OwnerTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OwnerTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."OwnerTypes_id_seq";
       public          postgres    false    277            ,           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
          public          postgres    false    278                       1259    55499    Percentages    TABLE       CREATE TABLE public."Percentages" (
    id integer NOT NULL,
    "case" character varying(255),
    from_percentage integer,
    to_percentage integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Percentages";
       public         heap    postgres    false                       1259    55502    Percentages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Percentages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Percentages_id_seq";
       public          postgres    false    279            -           0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
          public          postgres    false    280                       1259    55503    Permissions    TABLE     �   CREATE TABLE public."Permissions" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Permissions";
       public         heap    postgres    false                       1259    55506    Permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Permissions_id_seq";
       public          postgres    false    281            .           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
          public          postgres    false    282                       1259    55507    ProgrammeSemesters    TABLE     	  CREATE TABLE public."ProgrammeSemesters" (
    id integer NOT NULL,
    program_id integer,
    semester_id integer,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
 (   DROP TABLE public."ProgrammeSemesters";
       public         heap    postgres    false                       1259    55510    ProgrammeSemesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProgrammeSemesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ProgrammeSemesters_id_seq";
       public          postgres    false    283            /           0    0    ProgrammeSemesters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;
          public          postgres    false    284                       1259    55511    ProgrammeSubjects    TABLE     �   CREATE TABLE public."ProgrammeSubjects" (
    id integer NOT NULL,
    programme_id integer,
    subject_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."ProgrammeSubjects";
       public         heap    postgres    false                       1259    55514    ProgrammeSubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProgrammeSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ProgrammeSubjects_id_seq";
       public          postgres    false    285            0           0    0    ProgrammeSubjects_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects".id;
          public          postgres    false    286                       1259    55515 
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
       public         heap    postgres    false                        1259    55520    Programmes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Programmes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Programmes_id_seq";
       public          postgres    false    287            1           0    0    Programmes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;
          public          postgres    false    288            !           1259    55521    QualificationTypes    TABLE     �   CREATE TABLE public."QualificationTypes" (
    id integer NOT NULL,
    title character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."QualificationTypes";
       public         heap    postgres    false            "           1259    55524    QualificationTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QualificationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."QualificationTypes_id_seq";
       public          postgres    false    289            2           0    0    QualificationTypes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."QualificationTypes_id_seq" OWNED BY public."QualificationTypes".id;
          public          postgres    false    290            #           1259    55525    Qualification_types    TABLE     %  CREATE TABLE public."Qualification_types" (
    id integer NOT NULL,
    qual_type character varying(255),
    qual_desc character varying(255),
    max_sem integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."Qualification_types";
       public         heap    postgres    false            $           1259    55530    Qualification_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Qualification_types_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Qualification_types_id_seq";
       public          postgres    false    291            3           0    0    Qualification_types_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Qualification_types_id_seq" OWNED BY public."Qualification_types".id;
          public          postgres    false    292            %           1259    55531    Roles    TABLE     :  CREATE TABLE public."Roles" (
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
       public         heap    postgres    false            &           1259    55538    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    293            4           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    294            '           1259    55539 	   Semesters    TABLE     �   CREATE TABLE public."Semesters" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Semesters";
       public         heap    postgres    false            (           1259    55542    Semesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Semesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Semesters_id_seq";
       public          postgres    false    295            5           0    0    Semesters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Semesters_id_seq" OWNED BY public."Semesters".id;
          public          postgres    false    296            )           1259    55543    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            *           1259    55546    ServiceRoles    TABLE     �   CREATE TABLE public."ServiceRoles" (
    id integer NOT NULL,
    role_id integer,
    service_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ServiceRoles";
       public         heap    postgres    false            +           1259    55549    ServiceRoles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ServiceRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ServiceRoles_id_seq";
       public          postgres    false    298            6           0    0    ServiceRoles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ServiceRoles_id_seq" OWNED BY public."ServiceRoles".id;
          public          postgres    false    299            ,           1259    55550    Services    TABLE       CREATE TABLE public."Services" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    image_url character varying
);
    DROP TABLE public."Services";
       public         heap    postgres    false            -           1259    55555    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public          postgres    false    300            7           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
          public          postgres    false    301            .           1259    55556    Skills    TABLE     �   CREATE TABLE public."Skills" (
    id integer NOT NULL,
    name character varying(255),
    active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying(255)
);
    DROP TABLE public."Skills";
       public         heap    postgres    false            /           1259    55561    Skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Skills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Skills_id_seq";
       public          postgres    false    302            8           0    0    Skills_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Skills_id_seq" OWNED BY public."Skills".id;
          public          postgres    false    303            0           1259    55562    StaffRemarks    TABLE     8  CREATE TABLE public."StaffRemarks" (
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
       public         heap    postgres    false            1           1259    55566    StaffRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StaffRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StaffRemarks_id_seq";
       public          postgres    false    304            9           0    0    StaffRemarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StaffRemarks_id_seq" OWNED BY public."StaffRemarks".id;
          public          postgres    false    305            2           1259    55567    Staffs    TABLE     �  CREATE TABLE public."Staffs" (
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
       public         heap    postgres    false            3           1259    55572    Staffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Staffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Staffs_id_seq";
       public          postgres    false    306            :           0    0    Staffs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Staffs_id_seq" OWNED BY public."Staffs".id;
          public          postgres    false    307            4           1259    55573    States    TABLE     �   CREATE TABLE public."States" (
    id integer NOT NULL,
    name character varying(255),
    country_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."States";
       public         heap    postgres    false            5           1259    55576    States_id_seq    SEQUENCE     �   CREATE SEQUENCE public."States_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."States_id_seq";
       public          postgres    false    308            ;           0    0    States_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."States_id_seq" OWNED BY public."States".id;
          public          postgres    false    309            6           1259    55577    Streams    TABLE     �   CREATE TABLE public."Streams" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Streams";
       public         heap    postgres    false            7           1259    55581    Streams_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Streams_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Streams_id_seq";
       public          postgres    false    310            <           0    0    Streams_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Streams_id_seq" OWNED BY public."Streams".id;
          public          postgres    false    311            8           1259    55582    StudentAdditionalSkills    TABLE     �  CREATE TABLE public."StudentAdditionalSkills" (
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
       public         heap    postgres    false            9           1259    55587    StudentAdditionalSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentAdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."StudentAdditionalSkills_id_seq";
       public          postgres    false    312            =           0    0    StudentAdditionalSkills_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNED BY public."StudentAdditionalSkills".id;
          public          postgres    false    313            :           1259    55588    StudentEnrollments    TABLE     �  CREATE TABLE public."StudentEnrollments" (
    id integer NOT NULL,
    user_id integer,
    institute_programme_id integer,
    academic_year character varying(255),
    current_semester character varying(255),
    section character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    subject_id integer,
    current_class integer
);
 (   DROP TABLE public."StudentEnrollments";
       public         heap    postgres    false            ;           1259    55593    StudentEnrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentEnrollments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."StudentEnrollments_id_seq";
       public          postgres    false    314            >           0    0    StudentEnrollments_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNED BY public."StudentEnrollments".id;
          public          postgres    false    315            <           1259    55594    StudentGuardians    TABLE       CREATE TABLE public."StudentGuardians" (
    id integer NOT NULL,
    guardian_type_id integer NOT NULL,
    relation_with_user character varying(255),
    student_enrollment_id integer NOT NULL,
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
       public         heap    postgres    false            =           1259    55601    StudentGuardians_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentGuardians_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."StudentGuardians_id_seq";
       public          postgres    false    316            ?           0    0    StudentGuardians_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."StudentGuardians_id_seq" OWNED BY public."StudentGuardians".id;
          public          postgres    false    317            >           1259    55602    StudentMarks    TABLE     �  CREATE TABLE public."StudentMarks" (
    id integer NOT NULL,
    student_enrollment_id integer,
    institute_programme_course_subject_id integer,
    eval_type_id integer,
    total_marks integer,
    marks_obtained integer,
    grade_obtained character varying(255),
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    program_id integer,
    board_university character varying(255),
    institute_name character varying(255),
    course character varying(255),
    subject character varying(255),
    year_of_passing character varying(50),
    programme_semester character varying(100)
);
 "   DROP TABLE public."StudentMarks";
       public         heap    postgres    false            ?           1259    55607    StudentMarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentMarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StudentMarks_id_seq";
       public          postgres    false    318            @           0    0    StudentMarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StudentMarks_id_seq" OWNED BY public."StudentMarks".id;
          public          postgres    false    319            @           1259    55608    StudentRemarks    TABLE     p  CREATE TABLE public."StudentRemarks" (
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
       public         heap    postgres    false            A           1259    55612    StudentRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."StudentRemarks_id_seq";
       public          postgres    false    320            A           0    0    StudentRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentRemarks_id_seq" OWNED BY public."StudentRemarks".id;
          public          postgres    false    321            B           1259    55613    StudentResults    TABLE     �  CREATE TABLE public."StudentResults" (
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
       public         heap    postgres    false            C           1259    55616    StudentResults_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentResults_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."StudentResults_id_seq";
       public          postgres    false    322            B           0    0    StudentResults_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentResults_id_seq" OWNED BY public."StudentResults".id;
          public          postgres    false    323            D           1259    55617    StudentSkills    TABLE     �   CREATE TABLE public."StudentSkills" (
    id integer NOT NULL,
    user_id integer,
    skill_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."StudentSkills";
       public         heap    postgres    false            E           1259    55620    StudentSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."StudentSkills_id_seq";
       public          postgres    false    324            C           0    0    StudentSkills_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."StudentSkills_id_seq" OWNED BY public."StudentSkills".id;
          public          postgres    false    325            F           1259    55621    Subjects    TABLE     �   CREATE TABLE public."Subjects" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Subjects";
       public         heap    postgres    false            G           1259    55624    Subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Subjects_id_seq";
       public          postgres    false    326            D           0    0    Subjects_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Subjects_id_seq" OWNED BY public."Subjects".id;
          public          postgres    false    327            H           1259    55625    UserContacts    TABLE     �  CREATE TABLE public."UserContacts" (
    id integer NOT NULL,
    user_id integer,
    type character varying(255),
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
       public         heap    postgres    false            I           1259    55630    UserContacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserContacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."UserContacts_id_seq";
       public          postgres    false    328            E           0    0    UserContacts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."UserContacts_id_seq" OWNED BY public."UserContacts".id;
          public          postgres    false    329            J           1259    55631    UserDesignations    TABLE       CREATE TABLE public."UserDesignations" (
    id integer NOT NULL,
    user_id integer,
    designation_id integer,
    employementtype_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."UserDesignations";
       public         heap    postgres    false            K           1259    55634    UserDesignations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDesignations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."UserDesignations_id_seq";
       public          postgres    false    330            F           0    0    UserDesignations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."UserDesignations_id_seq" OWNED BY public."UserDesignations".id;
          public          postgres    false    331            L           1259    55635    UserDocs    TABLE       CREATE TABLE public."UserDocs" (
    id integer NOT NULL,
    user_id integer,
    doc_type_id integer,
    filename character varying(255),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
    DROP TABLE public."UserDocs";
       public         heap    postgres    false            M           1259    55638    UserDocs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDocs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."UserDocs_id_seq";
       public          postgres    false    332            G           0    0    UserDocs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."UserDocs_id_seq" OWNED BY public."UserDocs".id;
          public          postgres    false    333            N           1259    55639    UserMenuItems    TABLE     �   CREATE TABLE public."UserMenuItems" (
    id integer NOT NULL,
    role_id integer,
    menuitem_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."UserMenuItems";
       public         heap    postgres    false            O           1259    55642    UserMenuItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserMenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."UserMenuItems_id_seq";
       public          postgres    false    334            H           0    0    UserMenuItems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."UserMenuItems_id_seq" OWNED BY public."UserMenuItems".id;
          public          postgres    false    335            P           1259    55643    UserPermissions    TABLE     �   CREATE TABLE public."UserPermissions" (
    id integer NOT NULL,
    role_id integer,
    permission_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."UserPermissions";
       public         heap    postgres    false            Q           1259    55646    UserPermissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserPermissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."UserPermissions_id_seq";
       public          postgres    false    336            I           0    0    UserPermissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserPermissions_id_seq" OWNED BY public."UserPermissions".id;
          public          postgres    false    337            R           1259    55647    UserPersonalDetails    TABLE     l  CREATE TABLE public."UserPersonalDetails" (
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
    castcategory_id integer,
    religion_id integer,
    gender integer,
    blood_group integer,
    nationality integer
);
 )   DROP TABLE public."UserPersonalDetails";
       public         heap    postgres    false            S           1259    55652    UserPersonalDetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserPersonalDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."UserPersonalDetails_id_seq";
       public          postgres    false    338            J           0    0    UserPersonalDetails_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."UserPersonalDetails_id_seq" OWNED BY public."UserPersonalDetails".id;
          public          postgres    false    339            T           1259    55653    UserQualifications    TABLE       CREATE TABLE public."UserQualifications" (
    id integer NOT NULL,
    user_id integer,
    qualification_type_id integer,
    year integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
 (   DROP TABLE public."UserQualifications";
       public         heap    postgres    false            U           1259    55656    UserQualifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserQualifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."UserQualifications_id_seq";
       public          postgres    false    340            K           0    0    UserQualifications_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserQualifications_id_seq" OWNED BY public."UserQualifications".id;
          public          postgres    false    341            V           1259    55657 	   UserRoles    TABLE       CREATE TABLE public."UserRoles" (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    preferred_role boolean DEFAULT false,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."UserRoles";
       public         heap    postgres    false            W           1259    55662    UserRoles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."UserRoles_id_seq";
       public          postgres    false    342            L           0    0    UserRoles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."UserRoles_id_seq" OWNED BY public."UserRoles".id;
          public          postgres    false    343            X           1259    55663    Users    TABLE     v  CREATE TABLE public."Users" (
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
       public         heap    postgres    false            Y           1259    55672    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    344            M           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    345            Z           1259    55673    dummy_table    TABLE     E   CREATE TABLE public.dummy_table (
    age bigint,
    name "char"
);
    DROP TABLE public.dummy_table;
       public         heap    postgres    false            [           1259    55676 	   religions    TABLE     �   CREATE TABLE public.religions (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.religions;
       public         heap    postgres    false            \           1259    55679    religions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.religions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.religions_id_seq;
       public          postgres    false    347            N           0    0    religions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.religions_id_seq OWNED BY public.religions.id;
          public          postgres    false    348            �           2604    55680    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    55681    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    55682    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    55683 	   Cities id    DEFAULT     j   ALTER TABLE ONLY public."Cities" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 :   ALTER TABLE public."Cities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    55684 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    55685    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    55686 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    55687    Countries id    DEFAULT     p   ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);
 =   ALTER TABLE public."Countries" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    55688 
   Courses id    DEFAULT     l   ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);
 ;   ALTER TABLE public."Courses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    55689 
   Degrees id    DEFAULT     l   ALTER TABLE ONLY public."Degrees" ALTER COLUMN id SET DEFAULT nextval('public."Degrees_id_seq"'::regclass);
 ;   ALTER TABLE public."Degrees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    55690    Departments id    DEFAULT     t   ALTER TABLE ONLY public."Departments" ALTER COLUMN id SET DEFAULT nextval('public."Departments_id_seq"'::regclass);
 ?   ALTER TABLE public."Departments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    55691    Designations id    DEFAULT     v   ALTER TABLE ONLY public."Designations" ALTER COLUMN id SET DEFAULT nextval('public."Designations_id_seq"'::regclass);
 @   ALTER TABLE public."Designations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    55692    Districts id    DEFAULT     p   ALTER TABLE ONLY public."Districts" ALTER COLUMN id SET DEFAULT nextval('public."Districts_id_seq"'::regclass);
 =   ALTER TABLE public."Districts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    55693    DocumentTypes id    DEFAULT     x   ALTER TABLE ONLY public."DocumentTypes" ALTER COLUMN id SET DEFAULT nextval('public."DocumentTypes_id_seq"'::regclass);
 A   ALTER TABLE public."DocumentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    55694 
   Dummies id    DEFAULT     l   ALTER TABLE ONLY public."Dummies" ALTER COLUMN id SET DEFAULT nextval('public."Dummies_id_seq"'::regclass);
 ;   ALTER TABLE public."Dummies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    55695    Durations id    DEFAULT     p   ALTER TABLE ONLY public."Durations" ALTER COLUMN id SET DEFAULT nextval('public."Durations_id_seq"'::regclass);
 =   ALTER TABLE public."Durations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    55696    EmploymentTypes id    DEFAULT     |   ALTER TABLE ONLY public."EmploymentTypes" ALTER COLUMN id SET DEFAULT nextval('public."EmploymentTypes_id_seq"'::regclass);
 C   ALTER TABLE public."EmploymentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    55697    EntityTypes id    DEFAULT     t   ALTER TABLE ONLY public."EntityTypes" ALTER COLUMN id SET DEFAULT nextval('public."EntityTypes_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    55698    EntityUsers id    DEFAULT     t   ALTER TABLE ONLY public."EntityUsers" ALTER COLUMN id SET DEFAULT nextval('public."EntityUsers_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    55699    EvalTypes id    DEFAULT     p   ALTER TABLE ONLY public."EvalTypes" ALTER COLUMN id SET DEFAULT nextval('public."EvalTypes_id_seq"'::regclass);
 =   ALTER TABLE public."EvalTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    55700    Experiences id    DEFAULT     t   ALTER TABLE ONLY public."Experiences" ALTER COLUMN id SET DEFAULT nextval('public."Experiences_id_seq"'::regclass);
 ?   ALTER TABLE public."Experiences" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    55701 
   Genders id    DEFAULT     l   ALTER TABLE ONLY public."Genders" ALTER COLUMN id SET DEFAULT nextval('public."Genders_id_seq"'::regclass);
 ;   ALTER TABLE public."Genders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    55702    GuardianTypes id    DEFAULT     x   ALTER TABLE ONLY public."GuardianTypes" ALTER COLUMN id SET DEFAULT nextval('public."GuardianTypes_id_seq"'::regclass);
 A   ALTER TABLE public."GuardianTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    55703 #   InstituteProgrammeCourseSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammeCourseSubjects_id_seq"'::regclass);
 T   ALTER TABLE public."InstituteProgrammeCourseSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    55704    InstituteProgrammes id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammes_id_seq"'::regclass);
 G   ALTER TABLE public."InstituteProgrammes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            �           2604    55705    InstituteStaffs id    DEFAULT     |   ALTER TABLE ONLY public."InstituteStaffs" ALTER COLUMN id SET DEFAULT nextval('public."InstituteStaffs_id_seq"'::regclass);
 C   ALTER TABLE public."InstituteStaffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            �           2604    55706    InstituteTypes id    DEFAULT     z   ALTER TABLE ONLY public."InstituteTypes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteTypes_id_seq"'::regclass);
 B   ALTER TABLE public."InstituteTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            �           2604    55707    Institutes id    DEFAULT     r   ALTER TABLE ONLY public."Institutes" ALTER COLUMN id SET DEFAULT nextval('public."Institutes_id_seq"'::regclass);
 >   ALTER TABLE public."Institutes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            �           2604    55708    MenuItems id    DEFAULT     p   ALTER TABLE ONLY public."MenuItems" ALTER COLUMN id SET DEFAULT nextval('public."MenuItems_id_seq"'::regclass);
 =   ALTER TABLE public."MenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            �           2604    55709    Modes id    DEFAULT     h   ALTER TABLE ONLY public."Modes" ALTER COLUMN id SET DEFAULT nextval('public."Modes_id_seq"'::regclass);
 9   ALTER TABLE public."Modes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            �           2604    55710    Notifications id    DEFAULT     x   ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);
 A   ALTER TABLE public."Notifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    55711    OTPs id    DEFAULT     f   ALTER TABLE ONLY public."OTPs" ALTER COLUMN id SET DEFAULT nextval('public."OTPs_id_seq"'::regclass);
 8   ALTER TABLE public."OTPs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �           2604    55712    OrganisationTypes id    DEFAULT     �   ALTER TABLE ONLY public."OrganisationTypes" ALTER COLUMN id SET DEFAULT nextval('public."OrganisationTypes_id_seq"'::regclass);
 E   ALTER TABLE public."OrganisationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273            �           2604    55713    OwnerTypes id    DEFAULT     r   ALTER TABLE ONLY public."OwnerTypes" ALTER COLUMN id SET DEFAULT nextval('public."OwnerTypes_id_seq"'::regclass);
 >   ALTER TABLE public."OwnerTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277            �           2604    55714    Percentages id    DEFAULT     t   ALTER TABLE ONLY public."Percentages" ALTER COLUMN id SET DEFAULT nextval('public."Percentages_id_seq"'::regclass);
 ?   ALTER TABLE public."Percentages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279            �           2604    55715    Permissions id    DEFAULT     t   ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281            �           2604    55716    ProgrammeSemesters id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSemesters" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSemesters_id_seq"'::regclass);
 F   ALTER TABLE public."ProgrammeSemesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283            �           2604    55717    ProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSubjects_id_seq"'::regclass);
 E   ALTER TABLE public."ProgrammeSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285            �           2604    55718    Programmes id    DEFAULT     r   ALTER TABLE ONLY public."Programmes" ALTER COLUMN id SET DEFAULT nextval('public."Programmes_id_seq"'::regclass);
 >   ALTER TABLE public."Programmes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287            �           2604    55719    QualificationTypes id    DEFAULT     �   ALTER TABLE ONLY public."QualificationTypes" ALTER COLUMN id SET DEFAULT nextval('public."QualificationTypes_id_seq"'::regclass);
 F   ALTER TABLE public."QualificationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289            �           2604    55720    Qualification_types id    DEFAULT     �   ALTER TABLE ONLY public."Qualification_types" ALTER COLUMN id SET DEFAULT nextval('public."Qualification_types_id_seq"'::regclass);
 G   ALTER TABLE public."Qualification_types" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291            �           2604    55721    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293            �           2604    55722    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295            �           2604    55723    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298            �           2604    55724    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    300            �           2604    55725 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302            �           2604    55726    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304            �           2604    55727 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306            �           2604    55728 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308            �           2604    55729 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310            �           2604    55730    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312            �           2604    55731    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314            �           2604    55732    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316            �           2604    55733    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    318            �           2604    55734    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275                       2604    55735    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320                       2604    55736    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322                       2604    55737    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    324                       2604    55738    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    55739    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    328                       2604    55740    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    330                       2604    55741    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332                       2604    55742    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334            	           2604    55743    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    336            
           2604    55744    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338                       2604    55745    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340                       2604    55746    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342                       2604    55747    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    344                       2604    55748    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    348    347            x          0    55335    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    209   J�      z          0    55339    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   �      |          0    55344    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    213   ��      ~          0    55349    Cities 
   TABLE DATA           ^   COPY public."Cities" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ��      �          0    55353    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   M�      �          0    55357 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    219   B�      �          0    55363    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   {�      �          0    55369 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    223   ��      �          0    55375    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   M�      �          0    55381    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   ��      �          0    55385    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   ��      �          0    55389    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   ~�      �          0    55393 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   ��      �          0    55397    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    235   ��      �          0    55402    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    237   X�      �          0    55407 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   ��      �          0    55411    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    241   9�      �          0    55415    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    243   ��      �          0    55419    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   K�      �          0    55423 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   �      �          0    55427    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   R�      �          0    55431    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   o�      �          0    55436    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   ��      �          0    55441     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    255   0�      �          0    55445    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    257   M�      �          0    55449    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    259   ��      �          0    55455    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    261   �      �          0    55459 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, city_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   ��      �          0    55465 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    265   ��      �          0    55471    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   r�      �          0    55475    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    269   ��      �          0    55481    OTPs 
   TABLE DATA           s   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   '�      �          0    55487    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   x�      �          0    55495 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    277   ��      �          0    55499    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    279   �      �          0    55503    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    281   )�      �          0    55507    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    283   ��      �          0    55511    ProgrammeSubjects 
   TABLE DATA           p   COPY public."ProgrammeSubjects" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    285   ��      �          0    55515 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    287   1�      �          0    55521    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    289   G�      �          0    55525    Qualification_types 
   TABLE DATA           w   COPY public."Qualification_types" (id, qual_type, qual_desc, max_sem, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    291   d�      �          0    55531    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    293   ��      �          0    55539 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   �      �          0    55543    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    297   ��      �          0    55546    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    298   /�      �          0    55550    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    300   ��      �          0    55556    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    302   y�      �          0    55562    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    304   !�      �          0    55567    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    306   ��      �          0    55573    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    308   ��      �          0    55577    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    310   2�      �          0    55582    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    312   ��      �          0    55588    StudentEnrollments 
   TABLE DATA           �   COPY public."StudentEnrollments" (id, user_id, institute_programme_id, academic_year, current_semester, section, is_active, "createdAt", "updatedAt", subject_id, current_class) FROM stdin;
    public          postgres    false    314   ��      �          0    55594    StudentGuardians 
   TABLE DATA             COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, student_enrollment_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender) FROM stdin;
    public          postgres    false    316   �      �          0    55602    StudentMarks 
   TABLE DATA           8  COPY public."StudentMarks" (id, student_enrollment_id, institute_programme_course_subject_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", program_id, board_university, institute_name, course, subject, year_of_passing, programme_semester) FROM stdin;
    public          postgres    false    318   �      �          0    55491    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �      �          0    55608    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    320   �      �          0    55613    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    322         �          0    55617    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    324   $      �          0    55621    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    326         �          0    55625    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   �      �          0    55631    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    330   b      �          0    55635    UserDocs 
   TABLE DATA           o   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    332   V       �          0    55639    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   �)      �          0    55643    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    336   %*      �          0    55647    UserPersonalDetails 
   TABLE DATA           �   COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castcategory_id, religion_id, gender, blood_group, nationality) FROM stdin;
    public          postgres    false    338   �*      �          0    55653    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    340   :      �          0    55657 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    342   :      �          0    55663    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    344   �@                0    55673    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    346   Nj                0    55676 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    347   wj      O           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    210            P           0    0    BloodGroups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);
          public          postgres    false    212            Q           0    0    CasteCategories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CasteCategories_id_seq"', 4, true);
          public          postgres    false    214            R           0    0    Cities_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cities_id_seq"', 15, true);
          public          postgres    false    216            S           0    0    Classes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Classes_id_seq"', 12, true);
          public          postgres    false    218            T           0    0    Companies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Companies_id_seq"', 23, true);
          public          postgres    false    220            U           0    0    Configs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Configs_id_seq"', 1, true);
          public          postgres    false    222            V           0    0    Countries_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Countries_id_seq"', 34, true);
          public          postgres    false    224            W           0    0    Courses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Courses_id_seq"', 2, true);
          public          postgres    false    226            X           0    0    Degrees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Degrees_id_seq"', 1, false);
          public          postgres    false    228            Y           0    0    Departments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Departments_id_seq"', 5, true);
          public          postgres    false    230            Z           0    0    Designations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Designations_id_seq"', 1, true);
          public          postgres    false    232            [           0    0    Districts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Districts_id_seq"', 11, true);
          public          postgres    false    234            \           0    0    DocumentTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DocumentTypes_id_seq"', 23, true);
          public          postgres    false    236            ]           0    0    Dummies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Dummies_id_seq"', 2, true);
          public          postgres    false    238            ^           0    0    Durations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Durations_id_seq"', 6, true);
          public          postgres    false    240            _           0    0    EmploymentTypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."EmploymentTypes_id_seq"', 3, true);
          public          postgres    false    242            `           0    0    EntityTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."EntityTypes_id_seq"', 4, true);
          public          postgres    false    244            a           0    0    EntityUsers_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 45, true);
          public          postgres    false    246            b           0    0    EvalTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 1, true);
          public          postgres    false    248            c           0    0    Experiences_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);
          public          postgres    false    250            d           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    252            e           0    0    GuardianTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);
          public          postgres    false    254            f           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);
          public          postgres    false    256            g           0    0    InstituteProgrammes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 6, true);
          public          postgres    false    258            h           0    0    InstituteStaffs_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 30, true);
          public          postgres    false    260            i           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 5, true);
          public          postgres    false    262            j           0    0    Institutes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Institutes_id_seq"', 3, true);
          public          postgres    false    264            k           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    266            l           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    268            m           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 28, true);
          public          postgres    false    270            n           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 120, true);
          public          postgres    false    272            o           0    0    OrganisationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);
          public          postgres    false    274            p           0    0    OtherSkills_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 79, true);
          public          postgres    false    276            q           0    0    OwnerTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);
          public          postgres    false    278            r           0    0    Percentages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);
          public          postgres    false    280            s           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);
          public          postgres    false    282            t           0    0    ProgrammeSemesters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);
          public          postgres    false    284            u           0    0    ProgrammeSubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);
          public          postgres    false    286            v           0    0    Programmes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Programmes_id_seq"', 9, true);
          public          postgres    false    288            w           0    0    QualificationTypes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 1, false);
          public          postgres    false    290            x           0    0    Qualification_types_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Qualification_types_id_seq"', 1, false);
          public          postgres    false    292            y           0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 15, true);
          public          postgres    false    294            z           0    0    Semesters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Semesters_id_seq"', 6, true);
          public          postgres    false    296            {           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 19, true);
          public          postgres    false    299            |           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 3, true);
          public          postgres    false    301            }           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    303            ~           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    305                       0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 29, true);
          public          postgres    false    307            �           0    0    States_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."States_id_seq"', 5, true);
          public          postgres    false    309            �           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    311            �           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 53, true);
          public          postgres    false    313            �           0    0    StudentEnrollments_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 43, true);
          public          postgres    false    315            �           0    0    StudentGuardians_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 69, true);
          public          postgres    false    317            �           0    0    StudentMarks_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 58, true);
          public          postgres    false    319            �           0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 73, true);
          public          postgres    false    321            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    323            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 151, true);
          public          postgres    false    325            �           0    0    Subjects_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Subjects_id_seq"', 6, true);
          public          postgres    false    327            �           0    0    UserContacts_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 97, true);
          public          postgres    false    329            �           0    0    UserDesignations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 33, true);
          public          postgres    false    331            �           0    0    UserDocs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 549, true);
          public          postgres    false    333            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    335            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    337            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 135, true);
          public          postgres    false    339            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    341            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 145, true);
          public          postgres    false    343            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 209, true);
          public          postgres    false    345            �           0    0    religions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.religions_id_seq', 2, true);
          public          postgres    false    348                       2606    55750 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    209                       2606    55752 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    209                       2606    55754    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    211                       2606    55756 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    213                       2606    55758    Cities Cities_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Cities"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Cities" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    215                        2606    55760    Classes Classes_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_name_key" UNIQUE (name);
 F   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_name_key";
       public            postgres    false    217            "           2606    55762    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    217            $           2606    55764    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    219            &           2606    55766    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    221            (           2606    55768    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    223            *           2606    55770    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    223            ,           2606    55772    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    225            .           2606    55774    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    227            0           2606    55776    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    229            2           2606    55778    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    231            4           2606    55780    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    233            6           2606    55782     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    235            8           2606    55784    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    237            :           2606    55786    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    239            <           2606    55788 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    241            >           2606    55790 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    241            @           2606    55792    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    243            B           2606    55794    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    245            D           2606    55796    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    247            F           2606    55798    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    249            H           2606    55800    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    251            J           2606    55802     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    253            L           2606    55804 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    255            N           2606    55806 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    257            P           2606    55808 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    259            R           2606    55810 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    261            T           2606    55812 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    261            V           2606    55814    Institutes Institutes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public            postgres    false    263            X           2606    55816    MenuItems MenuItems_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MenuItems" DROP CONSTRAINT "MenuItems_pkey";
       public            postgres    false    265            Z           2606    55818    Modes Modes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Modes"
    ADD CONSTRAINT "Modes_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Modes" DROP CONSTRAINT "Modes_pkey";
       public            postgres    false    267            \           2606    55820     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    269            ^           2606    55822    OTPs OTPs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT "OTPs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT "OTPs_pkey";
       public            postgres    false    271            b           2606    55824 (   OrganisationTypes OrganisationTypes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."OrganisationTypes"
    ADD CONSTRAINT "OrganisationTypes_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."OrganisationTypes" DROP CONSTRAINT "OrganisationTypes_pkey";
       public            postgres    false    273            d           2606    55826 #   StudentOtherSkills OtherSkills_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."StudentOtherSkills"
    ADD CONSTRAINT "OtherSkills_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."StudentOtherSkills" DROP CONSTRAINT "OtherSkills_pkey";
       public            postgres    false    275            f           2606    55828    OwnerTypes OwnerTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."OwnerTypes"
    ADD CONSTRAINT "OwnerTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."OwnerTypes" DROP CONSTRAINT "OwnerTypes_pkey";
       public            postgres    false    277            h           2606    55830    Percentages Percentages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Percentages"
    ADD CONSTRAINT "Percentages_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Percentages" DROP CONSTRAINT "Percentages_pkey";
       public            postgres    false    279            j           2606    55832    Permissions Permissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Permissions" DROP CONSTRAINT "Permissions_pkey";
       public            postgres    false    281            l           2606    55834 *   ProgrammeSemesters ProgrammeSemesters_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."ProgrammeSemesters"
    ADD CONSTRAINT "ProgrammeSemesters_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."ProgrammeSemesters" DROP CONSTRAINT "ProgrammeSemesters_pkey";
       public            postgres    false    283            n           2606    55836 (   ProgrammeSubjects ProgrammeSubjects_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_pkey";
       public            postgres    false    285            p           2606    55838    Programmes Programmes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_name_key";
       public            postgres    false    287            r           2606    55840    Programmes Programmes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_pkey";
       public            postgres    false    287            t           2606    55842 *   QualificationTypes QualificationTypes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."QualificationTypes"
    ADD CONSTRAINT "QualificationTypes_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."QualificationTypes" DROP CONSTRAINT "QualificationTypes_pkey";
       public            postgres    false    289            v           2606    55844 ,   Qualification_types Qualification_types_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Qualification_types"
    ADD CONSTRAINT "Qualification_types_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Qualification_types" DROP CONSTRAINT "Qualification_types_pkey";
       public            postgres    false    291            x           2606    55846    Roles Roles_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_name_key" UNIQUE (name);
 B   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_name_key";
       public            postgres    false    293            z           2606    55848    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    293            |           2606    55850    Semesters Semesters_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Semesters"
    ADD CONSTRAINT "Semesters_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Semesters" DROP CONSTRAINT "Semesters_pkey";
       public            postgres    false    295            ~           2606    55852     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    297            �           2606    55854    ServiceRoles ServiceRoles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_pkey";
       public            postgres    false    298            �           2606    55856    Services Services_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_name_key" UNIQUE (name);
 H   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_name_key";
       public            postgres    false    300            �           2606    55858    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public            postgres    false    300            �           2606    55860    Skills Skills_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Skills"
    ADD CONSTRAINT "Skills_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Skills" DROP CONSTRAINT "Skills_pkey";
       public            postgres    false    302            �           2606    55862    StaffRemarks StaffRemarks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT "StaffRemarks_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."StaffRemarks" DROP CONSTRAINT "StaffRemarks_pkey";
       public            postgres    false    304            �           2606    55864    Staffs Staffs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_pkey";
       public            postgres    false    306            �           2606    55866    States States_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_pkey";
       public            postgres    false    308            �           2606    55868    Streams Streams_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Streams"
    ADD CONSTRAINT "Streams_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Streams" DROP CONSTRAINT "Streams_pkey";
       public            postgres    false    310            �           2606    55870 4   StudentAdditionalSkills StudentAdditionalSkills_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."StudentAdditionalSkills"
    ADD CONSTRAINT "StudentAdditionalSkills_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."StudentAdditionalSkills" DROP CONSTRAINT "StudentAdditionalSkills_pkey";
       public            postgres    false    312            �           2606    55872 *   StudentEnrollments StudentEnrollments_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_pkey";
       public            postgres    false    314            �           2606    55874 &   StudentGuardians StudentGuardians_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_pkey";
       public            postgres    false    316            �           2606    55876    StudentMarks StudentMarks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."StudentMarks"
    ADD CONSTRAINT "StudentMarks_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."StudentMarks" DROP CONSTRAINT "StudentMarks_pkey";
       public            postgres    false    318            �           2606    55878 "   StudentRemarks StudentRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT "StudentRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."StudentRemarks" DROP CONSTRAINT "StudentRemarks_pkey";
       public            postgres    false    320            �           2606    55880 "   StudentResults StudentResults_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."StudentResults"
    ADD CONSTRAINT "StudentResults_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."StudentResults" DROP CONSTRAINT "StudentResults_pkey";
       public            postgres    false    322            �           2606    55882     StudentSkills StudentSkills_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_pkey";
       public            postgres    false    324            �           2606    55884    Subjects Subjects_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Subjects"
    ADD CONSTRAINT "Subjects_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Subjects" DROP CONSTRAINT "Subjects_pkey";
       public            postgres    false    326            �           2606    55886    UserContacts UserContacts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_pkey";
       public            postgres    false    328            �           2606    55888 &   UserDesignations UserDesignations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_pkey";
       public            postgres    false    330            �           2606    55890    UserDocs UserDocs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."UserDocs"
    ADD CONSTRAINT "UserDocs_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."UserDocs" DROP CONSTRAINT "UserDocs_pkey";
       public            postgres    false    332            �           2606    55892     UserMenuItems UserMenuItems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserMenuItems"
    ADD CONSTRAINT "UserMenuItems_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."UserMenuItems" DROP CONSTRAINT "UserMenuItems_pkey";
       public            postgres    false    334            �           2606    55894 $   UserPermissions UserPermissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."UserPermissions"
    ADD CONSTRAINT "UserPermissions_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."UserPermissions" DROP CONSTRAINT "UserPermissions_pkey";
       public            postgres    false    336            �           2606    55896 2   UserPersonalDetails UserPersonalDetails_aadhar_key 
   CONSTRAINT     s   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_aadhar_key" UNIQUE (aadhar);
 `   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_aadhar_key";
       public            postgres    false    338            �           2606    55898 1   UserPersonalDetails UserPersonalDetails_email_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_email_key" UNIQUE (email);
 _   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_email_key";
       public            postgres    false    338            �           2606    55900 1   UserPersonalDetails UserPersonalDetails_phone_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_phone_key" UNIQUE (phone);
 _   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_phone_key";
       public            postgres    false    338            �           2606    55902 ,   UserPersonalDetails UserPersonalDetails_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_pkey";
       public            postgres    false    338            �           2606    55904 *   UserQualifications UserQualifications_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserQualifications"
    ADD CONSTRAINT "UserQualifications_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."UserQualifications" DROP CONSTRAINT "UserQualifications_pkey";
       public            postgres    false    340            �           2606    55906    UserRoles UserRoles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_pkey";
       public            postgres    false    342            �           2606    55908    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    344            �           2606    55910    Users Users_phone_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_phone_key" UNIQUE (phone);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_phone_key";
       public            postgres    false    344            �           2606    55912    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    344            �           2606    55914    Users Users_uid_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_uid_key" UNIQUE (uid);
 A   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_uid_key";
       public            postgres    false    344            �           2606    55916    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    344            �           2606    55918     StaffRemarks entity_user_section 
   CONSTRAINT     p   ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT entity_user_section UNIQUE (entity_user_id, section);
 L   ALTER TABLE ONLY public."StaffRemarks" DROP CONSTRAINT entity_user_section;
       public            postgres    false    304    304            �           2606    55920    religions religions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.religions
    ADD CONSTRAINT religions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.religions DROP CONSTRAINT religions_pkey;
       public            postgres    false    347            �           2606    55922 '   StudentRemarks student_enrol_section_id 
   CONSTRAINT     ~   ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT student_enrol_section_id UNIQUE (student_enrollment_id, section);
 S   ALTER TABLE ONLY public."StudentRemarks" DROP CONSTRAINT student_enrol_section_id;
       public            postgres    false    320    320            `           2606    55924    OTPs unique_keys 
   CONSTRAINT     Z   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT unique_keys UNIQUE (otp_type, details);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT unique_keys;
       public            postgres    false    271    271            �           2606    55926 #   StudentGuardians uniquetypeGuardian 
   CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "uniquetypeGuardian" UNIQUE (guardian_type_id, student_enrollment_id);
 Q   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "uniquetypeGuardian";
       public            postgres    false    316    316            �           2606    55928    UserDocs user_doc_type_id 
   CONSTRAINT     f   ALTER TABLE ONLY public."UserDocs"
    ADD CONSTRAINT user_doc_type_id UNIQUE (user_id, doc_type_id);
 E   ALTER TABLE ONLY public."UserDocs" DROP CONSTRAINT user_doc_type_id;
       public            postgres    false    332    332            �           2606    55929    Cities Cities_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cities"
    ADD CONSTRAINT "Cities_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 L   ALTER TABLE ONLY public."Cities" DROP CONSTRAINT "Cities_district_id_fkey";
       public          postgres    false    233    215    3636            �           2606    55934 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    3668    217    261            �           2606    55939 !   Districts Districts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 O   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_state_id_fkey";
       public          postgres    false    3726    308    233            �           2606    55944 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    3648    245    243            �           2606    55949 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    3778    245    344            �           2606    55954 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    3670    257    263            �           2606    55959 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    287    3698    257            �           2606    55964 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    3724    306    259            �           2606    55969 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    3670    263    259            �           2606    55974 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    3668    259    261            �           2606    55979 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    3706    293    259            �           2606    55984 "   Institutes Institutes_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_city_id_fkey" FOREIGN KEY (city_id) REFERENCES public."Cities"(id);
 P   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_city_id_fkey";
       public          postgres    false    215    263    3614            �           2606    55989 %   Institutes Institutes_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 S   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_country_id_fkey";
       public          postgres    false    263    3626    223            �           2606    55994 &   Institutes Institutes_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 T   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_district_id_fkey";
       public          postgres    false    233    263    3636            �           2606    55999 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    263    261    3668            �           2606    56004 #   Institutes Institutes_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 Q   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_state_id_fkey";
       public          postgres    false    3726    263    308            �           2606    56009 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    293    298    3706            �           2606    56014 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    298    3716    300            �           2606    56019 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    241    3646    306            �           2606    56024    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    344    3778    306            �           2606    56029    States States_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 K   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_country_id_fkey";
       public          postgres    false    308    223    3626            �           2606    56034 A   StudentEnrollments StudentEnrollments_institute_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_institute_programme_id_fkey" FOREIGN KEY (institute_programme_id) REFERENCES public."InstituteProgrammes"(id);
 o   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_institute_programme_id_fkey";
       public          postgres    false    3662    257    314            �           2606    56039 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    314    344    3778            �           2606    56044 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    3658    253    316            �           2606    56049 <   StudentGuardians StudentGuardians_student_enrollment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_student_enrollment_id_fkey" FOREIGN KEY (student_enrollment_id) REFERENCES public."StudentEnrollments"(id);
 j   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_student_enrollment_id_fkey";
       public          postgres    false    316    314    3732            �           2606    56054 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    302    324    3718            �           2606    56059 )   UserContacts UserContacts_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 W   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_country_id_fkey";
       public          postgres    false    3626    223    328            �           2606    56064 *   UserContacts UserContacts_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 X   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_district_id_fkey";
       public          postgres    false    3636    328    233            �           2606    56069 '   UserContacts UserContacts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 U   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_state_id_fkey";
       public          postgres    false    308    328    3726            �           2606    56074 (   UserContacts UserContacts_taluka_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_taluka_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Cities"(id);
 V   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_taluka_id_fkey";
       public          postgres    false    215    328    3614            �           2606    56079 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    3778    344    328            �           2606    56084 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    231    330    3634            �           2606    56089 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    3778    344    330            �           2606    56094 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    338    344    3778            �           2606    56099     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    342    3706    293            �           2606    56104     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    342    344    3778            x   �   x��ϱ
1��9y
w��&�������"�bz���Gq:����~|a�Tͽ��������2�8��G��Ό��~$�p��+'�E��qY$8��Q�]�T����
���7�E��Z�jI���߻nߗ�@�      z   �   x�}�1�0���>{�N�$�\���ĈX����d3���-p^�wxA�kH|bݸnIE�?	#t�G����3a��q�&��f�NL���3�Bo������s&)��3a�����rͶ?6�����TI�j̄B�/�rb�      |   h   x�}�!�0��|�+������[�`4�h1�� �l"x�_^G�vl��E
��F}�}�1I��I�4��Gd�����Ğ��$h4�8P�M$�>?�a�[J0�      ~   C  x�}�=o�0����W�WX>��o�c�Zѽ��F����ԟ_34D�`��JON��%�u�@p ��5��t���t����ކn��2�H�ވĘ�a��g#
�Z4V�ZXu%�!�mI3����ݰg�`�XZ�$���XR,ǜ�G��Y�H[��J���H	x���p���:�S� �[�J٤u=�İj�BdƄx��u�e���^2t��e��$$���>&Y�_4�DeLH����&��₱J���IB2��?�E�tC���'&o7W�ʳ��IB�u��'O]2>�S���2IH�g��#��ԇ��4���
� �@�W      �   �   x�}�Mj�0����)�/4��,i�\ Yv�8�pݟ�W���2��҇v���t��N����I�sZ4��):}q�IB���v=n1��L!f�Y%Tx��_�u9�ZH
~0��0��{�l�R��G�x�,�O�%��`�px�a��b-���<�O���`)������{������˟`%d���\�4I4�4ZB��i��@9�I��\���E&�j-�!�/ k�6      �   )  x��X�n��f��W�i��?��	�Mr��=��M��(h���H�*�q|�����I:Cɶl�ƞZ����|�F���v���<�tAr�Y�efN�$����鯟>ӿ-KMk�fD�����(�8JB��_�c��g�^f-�����^j���}.������O&,�����Ͼn�}U�)�K�*חTM��~3��3���]R�PEs�P]��]�ZW�n�2�����M�!cKj�Ҷ��%]-t��5-U��U~��5�+�;��8}j�L6��7�N�ܤ�N_tښ7�ч-t1�uC���'�.`�jYW���.K�j�Z�҅�ozk��t��s3�Y�7Y�V��vu�����|!ac"F`[�e��y/U�{�V*T�J��ֺ%a2"I��~"E�Z�¸ ���l�g�힅W,��M�?�'�`�g�C"!=T�D�ĩV% ٥�)���g=�8��j��[�A-)Ga�+ƩO|�^����P{���-�ȃ��in���aB.>�}���1�L�$�F0��1'��sr��}��v��`�-�L)��Oߞ����3���[���z^� t;9+�Q����A�	O���|<�T�������Hz3ӵ�=�U@`�!mM��ii�^u�)���;�߹��z
Tm�������/����BKs�<jZU7}l�BL���<��3�~�Q�!�o�)7	�6Vr�X�m�n��|��ȅ�tvrS �g�"���I��H��xh˗E����e��$���VE���;/A٧���)g�r��?�)Q<Lԩ�7v�S��B�'��=��no��0͖�������5̸�n��=��M:/��y~x�O�~3�n|?�ϟ���roU=��-�o�(
1Q��X��)����D���=����`��������
���B]�P0�T�-Pb��
!N�n�Ho3�u� �d��)}���TN�ꗛk0���kg9Tt�B�1�/s:3�9�L�/=�LM�e���ޥ+p=��a�3�q{M�������n�ҽ�ĸ3(G���3�ݧ� l/nɕϐ^��{"4$�C`�ޤ�w�����eܴH�^I:_ЕH���LW��K��M��) qb��?Q$ynd����"�}T\O�1���L`�	On�����4��&�M��Y�m�L��WzڀZZԂ�w��y�|�g;��2.�+GGt����B)�;�����#D݂���n�(�}���y������L��}D��Iv�"�]1���b�ݬ�5��N����U[��KF�B�ʛ���8�*������
�k��Z93��6��)�������b7D���("���~�4d� 5)a"٫�}��� �A�I2,��xz@�0�\N��b�'�#CC�C�j�P�shE���xP�fd�����]���Y�U�k�?�j��{�]
���kiWx���7Pn����6�(�@p>p(Vj�V�&�4%�HNJ7�"8d�J��l J�.�SU>ĝ	r��&��Rg�Y6�]�~�n��������Ί����	M�B#�*����
�c+:��n�A�q�K�B��nĴϰN~��q�i�Bй �	5vk�-��y��S��r�%b���C[/�7��=o����HpZE��3U���8$���j0���6D`�96U^��-9ں��v���s#$�p�{U�����:%��೭ל��N1�l�8:u8tP�wp7����78���-0v�&�����������/�����ֶ 
ڬT��vFUK����I/
���2�l��O�j��*�K
��m��w�&�k�A0w����݀s�kΏs��-�{���n�g")�|	����0�(� %�a�����.�q�!_]'���P}~�Q��ڄ��vɽć��	�WOF�1���!�n�!x��[���o�{�rF4����XE�tn��f4cP|7���x��e|�;{����-FV���{��퇶ur��
�QMX�!O�'��4��am�3�:O*��аB�Yߜ��Z5U���K<zlޯ����+pewt��]\\��\ʵ      �   @   x�3�LLNLI��L��LM,�4202�&�%���������������������)�=... �[�      �   r   x�3���K�L�,�4202�50�54U04�2��22Գ06�60�'֝�e��XZ\R����(=ss�F!��& �3��J,H�C2��P��������L����,,R`ݩũ\1z\\\ ��2�      �   e   x�3���+IM/J,�����M,�(����45�,�4202�50�50V00�2��21�344�60�#�e�\4��$3�j H ���@�z�F�F"Kq��qqq ��&�      �      x������ � �      �   �   x�}�1�@��9���\r��mR��v�f�X���]*B!����c��>o�:�L,���P�$&�?�I�������}��oB���jWZ��#����wg�3���ꏄ��3/f��-��c�*(*��D�����,"�D�C�      �   B   x�3�t,.�,.I�+Q(�OK-.�/�,�4202�50�54P0��24�21�366�60�#����� ��      �     x���=k�@��Y��K�>|��v	%P
Y�\{��������zrQ;t~�#����R�s h�fGf�� �P�8��5OD$��ߕ�!�j- ���a�ʷ>���!����6uq�0��P�Ԙe�2�;#%t�R'��)�5a	���3]�Ɋ���NTք�c�B8	q���5a/a���Rä\��m��?/L.^�.�Q��]��EkM��p�t�~tlCVQ�g���m/s��s�!f�Nzn��C!��ܢ      �   e  x���Ao�0����H^[
؛�,�`43�i�U;������m����?������0])c�� a8B�a(9�����;�K� &y�R��ϑ@���AN#$���@(i��� ��P�4M�����x���Vu<!Y,)���ݪq�`�L�*k��V)�'qꋘ�J?Q@"H��L��ëA~ޓ�x�j{�E$���zS;@c�����&�B��m$
ɵ�J1�݊��x��jp����2D�C�r>��������.K���1,��M��o'���X՚�V7.C8��^���	�0_�U���sS��٬��e�6���K�=�1r��Yш�F��d������{�	!��%_/      �   C   x�3����,�4202�50�5�T04�2��24ӳ���60�'e�e��Z�M����!�)C�=... �"      �   ~   x�}�1�0��>Ewd��v�4g�X���_��!�����$m����E0��.	[�fh����Ġ$��Q�U�I҉� �H�j �I'r�E�C�c�t�L!y�x3S/>H��e)�$�H��G|*3 �AU      �   m   x�3�H-�M�K�+�,�4202�50�52T00�22�26�335�60�#�e�霟WR��\���X�Y�i��������%�����9}R�KJ�R�c�gb`���W� ?/i      �   �   x�}�1�0����W�K��.il�NN�.A�d0�6
����.�������\�Vڻ�Ѐ�ŐqG�81[�D2���	>�^�*l	.�#ײ�V��1!Z��l	=\��S��o\��8$
V"�f��l:`      �   �  x���I�1E���w��I:�����!�]%���{�œ��%5L�$�J�,O�O��ʹ�Ŀ+PS#�-\q�e�=|R��&^�p��}����K�S�/� � ������&a���oB����!���%
��i2�Z��IbD	� y`,��ܘf�.I*�	���&�(a���q��+��$�K@��.��@-Ε�7��I@5Y�u�hɚ��Ȗ��a)"�+�6H3��K@nE�N�cg�Z���6�{�e^��K��j��03E���|���u�� I�1L��'kL���͇�߄��=�q��Q�*�!�{���I�ng�g�{�������&��5�I�2bś���*�ng��"���+���Rf�.wg�`���	�������X0�5mO�HY<e�bSEO&�WW�� ��b�_�:3v	ħ�6a��Ebm6�I������s��ї��1K n��s@�U���1I �D���Íȍ��X%�h���+��&\���;n�[�_M�C�#����X%��EK7�Z$��^қ�&5���
���>�d�w%�qtϬ��5=#J|�o]%P�>b/�S�AmD�$��N�(A����7�|�����z{3N����'�1�j(�`�Y�X<�K*�s<�2��1K{c�k_�p-�s����(�� ���G      �   3   x�3�tvp�,�4202�50�54R0��24�26�3�4�60�#����� �-�      �      x������ � �      �   Z   x�3��M�I�,�4202�50�56P00�20�20�313�60�#�e�閚�� 3=3c3�����9�K2R���`h�gln�� �W� ��'Y      �   G   x�3���/�H-�,�4202�50�54U0��22�21�
i���2�tK�� cN��Ģ���<������� �R)1      �      x������ � �      �   c   x���A
�0D�us
�Ґ̴�=�����M]E��������j��b}��W��"(K,]yx��$�^f�N�z&i���]��뙤����V����*"7��B�      �   1  x������@Ek�+�����!U^��g��^ٲ���"��W<$��02�!i���!�7�7�5Kو�� ��x��+������ׯI��b�i"�����^��e�d�L)�\�6]�����9��v�ML��$��tcÐS��kdw50]���I���.��2���y1Z�!�xn$9�8rE�8U��hK�H#+b������P:����e��B[JW��N�
��+�?������mm� �D��>8�G�\��˙c�R�TC��q\�`"��w���s9z�����bQ�5�r/)[L��,����PO����b�l5^#;�(���c�~2t�L�1j5m>ܫdڍ*���R|���|���H���kbG�\�,���p�5[�J�Qr�F|:,/;�gh�;ȵ$FO�'�a���/rk{�NR��H/vJ�ZQ�$ ��1J�P�*�N�	�d������}��>ʽ$hj�vo�#�t���>xf���G;��Q�^��Ҕ�9�4�Z�d�����f�E�Ê��z[�X_rdĐ��1c��ZRWȮ��{�����      �   �   x�}�1�0����Wd���%!4���]]Jm!Hu��)8�������n���&�َ���DG�}8�I�p��}��ڦ��,A��ְ��� ��'	�J���K�jHSy�F�G�	^�ZBǒs��$8�68Qh	�ߘ�J�      �   �   x�}��j�0Eף��>��H�C�jhJ}���f	[X�����>B�0A:3ws�%\?�!�����<�\�`=c�8�p�C�1�FJO�)PW�<;�r�F���~�Uݱ�!vp�Jg�3�%���*_���B$ԯ�����,孳�����S ����|`��OpI�0Z�z5�rN�>��n�m<�Ҟ������~m�ظVn'�Z��3�ˌ�$2�4�H��"�!� Zv      �   �   x�}�A�0����c�릦�Eݢ[��3�p�߿X�������;U�cc������^������t]�� ~3ȫaJ{7EO���T�}H�HT(X�+��D�[>�.
��s��_D���%q2EƉ��sӠ]t>�*�X����7���vF����&�W�-s3���j7�����	ψ�D�����vh      �   <   x�3������K�,�4202�50�54R04�20�22ѳ�0�60�#�e�韖F�	1z\\\ �w�      �   Y  x���K��0��ѯP�%�>$[ҮPh�2��B7�Dii2��������x���|�>W�+�Vv�����Wu�nd��U'��дuwU��9�t�S�.�����`$�)^
l��^��`<Js������z[���j^��*��K#?=?�r��g|�3*&�2�DU���&�f�	�k���J��ޖ�j�S'�mBՅ��~�nC��/����"h���zp
L1��Ui�po_��zW]W_�Sh��c+_��1z�}s�+��s��~FYgg�L����{x��{�21�K�B4��$�{�X�%%h�ɳ�/�a�ԙ��% 	�OVv\��$�d�bYN{5�S�/;���$�yb��+���4ǦTΌ��2,\	N�B:5�c��$0� �w`��u��0�Ks
�yÞKey�#IP�\*g�/���<fJ���y̠=:�4c��$(g$/�UD#�Øt9e����e��l����6x�0����a�gX��ɨ�[J�J�rJ����L�������$A9%5-�@k�~�ƛ��[O�J�rN�3*�2���J��a"	�9���n��j3ģM��Դ}-~+!�?/��0      �      x��{I��J��x�+��;�q���ѧ �����q#n �4�"ͯ���)Z��S�ޓ'V�r��%�/��������XM%2Z�(;6����z8��f�P���*�䚁�8�;��!������iq����ڿ�9i���������������� � �p�b���p�!����J�����O�q�*�b�K!X�>�+�����1��Tw*-��:�� �e�$lk���a!���%�B�� �H�p��,?!�� �����ȒR�|<<�ý��i�MV;O�:Z�㐮"����֐�z�V'ְ.bI�h<�o8�1�}Ir�+�N��G��d|�v;{[E��XAYǢ@`"U�0~��b|uN%��؁��xđ&)�����7@`8ǽ�¾Q ���&�zl�B�~1c�����@,'�~X�Y�e���N(��յsƙT3�L���x����@�7e����+��ǲ�J���D2���!	f`��Y�4"��R̺����l?��zD̛r��ٖ.G��m�E���(�I��䯡K?*�D�.K8.�2�w�E4�'oɌ�F�����bm�D���b��>�)�k��Z����"�=k�+Eb,G��|'��Q�G�(�V��Y�N.�c�*+F^��������Y�F�a�g.���B��y2W�(ch��&K�y	ݤZ����G��1�R�Zk�$�|ÇZ6������"�y���&�Kɪ�f���h�a��vtɾ�d�h�d�l�D)�)��!usOx<��^��m���6 9гJ&!H�ZÅ�*��j�WX���+��Jst���"ݬ��O���)��w��#D�� �Hy����T�/�I�gМ7�l���<]�v��5*3�f>��2�c'�V ��ί�9p��$_0F����|#!Ft��'D�Ks/�/���\�����2���yq�8.��p7��æpK��NI��]�M�Y �l�����Wߢ'�D ]-~C��P����r['��.�'|5^l�]��h�t�7��2$��b�4|��fb"��!�����r(�c�z2�o�� ��w�Ý��:��0$��8Ly/I�A�jQ��Ŋ�EE�����쑉��9���T��
I"F�G�~B�� ������),�U�"����!�4oN�pV
7�r���vf��E��n���H�8��^	�#�l�	��_}�g�M5��|/_��l�Ǯ��a�1�L�:k��2^
sL��y�f� ���4���{�y#�\��?�g?��@���S#�4�<2�K��\�h��� M�v���7���R%L���������E�_��:M�c_�����2W��48��KI��LHd�lX���]q�j�����7��i|�U����D����\�R�� �B�	!���0dA<[7�~4N�/�`�n,��ĩ���G���YGž�m�|�\/U��fpK�I�ő����/�;����9[JI^�bq�k�dm�׶���3�6�P���?����ls�O�OA�{P\}>�O�����K���JCQ��O�tC��a�d���lx"Kl6H}�e�۬�;j�o9~�'~�V�6��d�W�PTEY �
���D��:��.�7�_���G����y�y�NG�eM��	g]�im��nZt��W5��{oGI�G?Q�kl�!(e�z�e'8�h=ca]o�\��`sJfg�N��H��M\5�n����X oo|v��Y$x>���G[�楝	6�f�<��Ul�DW��i��Β3����Ƭ�`(�!	���bQ���QT+3o8�x��?�&�+�c~� u#��٣��^���>��4w?�f�p .;Λ�D���Z�d��6E&�4��`���2/v��j���̓��$��n	�?h�|��Y�!P���%�����B�R���O��~ NSx��y�_Gz|
��Wl�/59?VK�Ru�W���_:��;��!N���7�������T�$-x�����/��bz��Y��p��1f�G-�xry9�6/�����_�٧H�7�s�cٟn�P��`4�^���z�~4�TevL�]:��K�̬�]�h��O�k}���H��j=��	���{��}�h0� {�B�ĝ��T|�j]�|��g�"��\_�ZLX����t
ƃR�G9�N��0��J?@��ɾ��F�N���J���T�������$\���5.�og�X@|�Ky��n�:��&Ø��C������������v�)T Oz�D�����q>��{�I=Z���U,M��ո������cgiѱ~���b�䩩q��đٺߖ怺�Џ�$�#:�[N���BJe0@���z��&�s᪴��h9l����˵���*�����0^!�11i��� �$q�^��G�
E| �Uҭ*	�%�<Va�R��T;yB��$����vp�Ηģ�S,*�3#��u��[��*������?�?�	7�q�Cnۆ�r�@sD��;R=�'�ŋq0��<"��&·=�x���8Q�7#�JnLa"���xK#Cp���}���}"d1�~�s�6��S���m�3>�7n8���zS���-�g'���'t=YDF"k)�HY*��������ɢD�=�����K�&�^�vҳܚ�e�^kף�V)]l5���&8��P��w��v�I(���gz�[rY�qx��� 
��S��-u�&�N�Φc�k{Ҩ8"�XC��P��|
��b��Z�&�xu-(���N�^�o���O�l 12�����ЗT�d9��ڷT��☰���qDE.�Ȟr";ܐ�I\ �`Q ����{�L�B2���>3C��"�#�Ipp�F5�O��1��_I��d}Clõ���S����Wc��e�X8�C�{}��N�*��=�PBIb����T����<������Õ1y�.<k<�)���~��,f�k,����j�l��]NP,M(�<�7t����T��$�k���"��K��N=�[����'��.s2�<$��ʗj�s4�gԬ��
�
g�f�EG�8���жrQ1�4�A�|�	�/*�{��IyF҄'3�)������1]�e���8��� ��c8;��K���<��?P��j+r
�ا�"h�{�?J��N�י���QO%o'1{����w��ͅl<s���i��QG���=|�$��U����m��[�1��~�zDǱ5}w�,�xS+`�O�f�*f�jL�m��yz��������8[�C�#��~������(�Uu:���C�]���XΞN�l�C)q}�%2���Fx'5�cX�Z;�1K(cfG��/��;��"8�Z#A���%�#:m}5��|� �5�
Z}�\��"]�p\o5�R���(�trRqʅ�X�7�|{u�Ic��J�7��;{���N9���F~,�� �L����Xs���שe)����*���c;�m�KA�yb	���s��:�h ���{���P�Kp�������4����,\���lޏEn�m��+��,;�풽�T���a~Eb�jH�!u�Jr��e����5_�i��h������I&��;I��dmu�kR��)��>�5*�I�"t��`,�*��I�`G�b��G�ǘh���A�|I���i[u��+�F�6��K�G�Y�m�aQ�?������-��/�Vw�FnB75�NB��M^(s�g��y��%X8�4?�ez����@-a���4��3�<��rJ���¶�ɧT�!�x���"Ճ����M-l2��IQ���%;��b�rE�V�m����~R��@��y��K첥{�UI��u�D�4Ŷ�����WPv*�p�X�XT=;,����-�R���b�����	v"mo~��K��>����V(���(q,ۅ�z�3j?�G��?����	�i�TE%��7E�~J0�Xy�
;'z�>�7b�8 ��Y�i��L�_B=��.��n�r[���23�pq*��g��Rǟɔ�L�Z�Z5� <  �ؼ�訠om6z]}��(�&)��nI�ږ���Y�;d%�цn�X�n.�dzKm�疶d��-)������̇���%|�t������l�EP��.�H~��=�͞�z��&��Ҿ�.���&�Xe���^�ɧ��v(�B2U]���u�&�W3���V���o3�NF���"}�`'ͩ��C����1�b���w=~�RKp���/�j~���U�g�)�O���3٦f�Kf�`'����s�p�DUWA	��6j�Rg���Vo#�S������jd(b|�[�{M��E�v�Y�/�n�HD��H��@wR��щ�T"7��4�<>�q��T�K�n�p.�q�Ui�P�ȘJ�&~�>0��Ї�l7���DR�������NHZSL��u��P98��~�����g,kU���h��N���K�ê���(~&˵�m$��s��zb���N<V�Y��W��a�qЃ�"bs��0��ڧ1B��=OD�C�'ʅ�?��Ԯ��to; 8Av(�=ԣ:�X]���p��Oߔ׳l����P&�*M��7 ��9Z�|��O��PE�r �yQ�B��P���c4Ow����lI��=��U!9;d���1et���D����R��}>I��o����
�y�7�	ѿC=��Ѵ�Z�&�ȶ�`i[ߞ��q	���ߒ�h���_M�=����Nn;���W��Ͻ�6����zZ�{�zLg���zV��7�Q��
V����*u�-UV(���C�K&�('��8�9r(g�X�{6C�������׬#�c;L7F`Z�N�9�n0��@u�i7	��\M�2����?�լW8�=H��=H�M`(���D�N��I��R=���k�=.UW���$�k��"��S�kr��\�W�,1����OJ0\�ւ9��fi�����Dy"�4W�k��u�-R�����~�;��W�rV쥂�2s�	�'�%����>c*hS�c��a�k{�Bx�C�wP��,f����`�;6HF���KӀ�*����溡3�<ܗ~⌢�tIs4�}fɵ��y�鯡��*ly�<_m	g��*Rs������F]Y�<�V`�g�z��j���,I�H�<�d�fP�y��w6�'� ��>-K]�9j���m!����SE��q-�sQ�=�:�x�N�( ��n�U�mM��r�zZ|�zTǙ��t����R��1r�\Q7SL\.׃���`�x�l&<��fӯ�����v�]�f���'����!�v
G%KRg^�hR
I��ʖio�Cn���sP�\�?P%�E���t˱gw��O�9�i7�z��{1����2���Ӓ��4*���^#��~���y`�*�,��:��a/�}�C����j�NA���4��hv��M6W��l�F���0w�C��롰�H��hF�r�o�n���XW��?�+�[�Duh�S���ҏ�_A=��$o�0v��6s������x���S�pv˥�W�,eg"?�2rF[����ۥ�4�z?�!�Վk���,�tOG���i�T�I'����+H�8M�#D{s��f��S�T���'��[�V&��ѝ"v����޺���S?�U��B���9b�	��9�Ҁ������U޾�|������`�v.�P�R�}�J>^AwR=�����</�2���1���L�tz
]g�	�ƅ\�6v
�d�;U�U��/��k��l�C�|�J$���!�Cmwc ����W%6�u�񛋊J�9c�7�c�U�L�m��z�=��$>7ј��]�s,��M��R������-q(Uz��R=�3x�+EҖ+7�i妺1qlV+kG���n�6O�wj�H��X���e��ı�#CyV)�}�	�^���z�P�J���O+
l��q(�`�X�|����t���66���)V�N6ey�SqP9�6��
d��0�]�w"t[�sO�������OR=��͂��pt�7�b[ְ���{�X��~1��z�qk�r��5�ky��*~]q��N�v��z���o ĵ��$t&�_�0�rB12M�Ci8O�2\Q�3�~�ؚNe��6Ҳ� G!�x�I�����+��x��:��Z�,�H�&�R?�}�4C��$,v�̎D�����:�Rk�(�g!CP�#&|l��� �|��/����]R�J��4�{sVY��h;>ѬGy�m'�V���K�H�Ǟ��3҄���KY�,�S��x���,�� ���s�B\;�P�x���1�=���P.�,�������s{��J��d]]-p���VX�2�C����v�����5��:!�$CX��f1e�5\=�2��*[��eh��HO|���0�����_����ö��)��+�v#��(��;!��Nj8'V�n��;�:��d\ǗK��inw�K6���c[�N�H�j�^^q8���u����A�[H������v�$��n-fΖ�FR������:�Ro���,i{��p�>%�#��p����SW�oe��R��Z�a$�=J!��L����1�ե��pM]���r�����*
�Dz����Q��`S�i�V� ��w�D�!��BKF�i�vTy�d���̮�	� \�hĳ41�7.���""g��n}�ٽ`���9϶J�Qގ��o�ܥ�_A�����o]��2�;�1Zo�������1h��n�~4�f� �����۾���X��3��^�xڥ��_��F}���oG���h�{/�ܙٵ�Sa��z;V�}�<�����+o��K.��J�W��^5�-�C�����;�S��7��(������w�R����z���XI�      �   g   x�}̱
�  ���+�#9����>�E�A(1���I�<{
�e�X��fkȲV���臐a}�O��1���4�J(��3�p��j%���ͤ
?��,J      �      x������ � �      �      x������ � �      �   m   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�#�e���Z�\R���W��=C##������9�R�2�*�dj�gj��=p)�=... Q51
      �      x������ � �      �   ^   x�}�A
�0�ur
�bH����,��c](����`��@;%MX4/�I[/ֵ�Y�'q�4�K{�����t�H��C_���Αΐ��P߉7a���.5      �     x�}��N1E뙯H�֚��k�c���4(���m���9�{� ��~@H�!kDvdY���i�#�����qA����]��s֔%9��U#~p�A BB��~i#�#�=e.����(��#h9L(Э��):c���h�qِ���ՙ�Uق��	X����K3�������P�Vl����y��l�!{�F��o�����c���ze�2'm͵Fc�2��C6Lн]�ol泒�xv��w��gxv��{˂�      �      x������ � �      �      x������ � �      �   �  x�}�=o�0Eg�+�WX��x�ڥKڭ;��&��N��I�JlG>���L)z<�������<,'<|"4-4� �?dQ��A6�h;v����kg!ˁnH�h^`.#ay4,�1����ћ���iZb�DB#����=�����������dER� ����hk���M>t�v�շfvN���qYȕ��,��A^��֝L?8?]i�bT�)��h�D'1�S�@9�����9@��6�0U�w�.�
"�(!�
���L�����t��Pj�0��4�dmSh��&�|;mh@a`21m��>��y�.F�T��ZjƱ�h���_��2l*wv�� ��i�XR+Ȯ��d~��d�L`�E����<��;KYhA0eeR� ?K}���,��|      �   �   x�}�;�@E��^=����g�@(��(�i�"ˇ&����k{v� ,v`7�=p.⋋�=2�I(0�.��x!��:�'�p�k�}��ƥ��ۇL���H����L&&�o	Luսqũ~Ox&D|�N�      �   m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�      �   �   x���A
1е���2A�&��e���3��B��H���F`�zP=�_4���V�ɛ�O�խ��>�����m�M������Ｙ�ۺCK�>�E�^�z�6���������~0��W����| 	ߒ�'�?�5�X�_o�i�      �   �   x�}ͽ
�0��9�
w��ɟЌn."ԱKmK�"64����R;�����qr���L/�R
�0v��й���{�0��@!���;,�V5p���[�>SI��������qKWJ%V�%e�`� ��2�| ]�B���|�z�_RV?~��7g�Jr      �   �  x���Mo�0����O�}������1f��b��.6B��Hq�ۯ���v������)��lB�!�Cp�r�R$q��_i+�\�(Q��ɵ�Q�QH�T�Z��D����Z�CQ���4�	��mz�J�-�`..�a{0�<`��<���8Lվ,��Q"$�lϓ�:��B�k��h��p��ɲ�b��=�I�j#�(��(�����8�t�L��(�qmt&vO�)cc���4).E��m���cw���ΜXq�郈g��XK��g��a��3��ԡBx�;9�z-ߐ��c�V^����\ܾ����m'6')��L�)e�>�����z���q��m75[JF��>�e�>f75o�R({��vl�MCb�oǺ��b��{��>�'5J�\]��ԇ߰�i��o zB_��B'      �   m   x�3�4�4�t�,*.Q�K�MU�,V(/��K�45�,�4202�5��54R04�20�2�Գ03�60�#�e4Ԉ3859?/E�(57�(��FVFV�@�F���Jq��qqq ��'�      �     x���A�!E����
��`�!r�9F���*P&��wOzߍ�i����o������@9�_�ic��� HA䉟�Q��:�G$?�'�E�ʳD���G~n���E�#�D��R,�������I������w��`|6)S�+tk~\�^h-���������Urj���n��nM�_KJ-�X��q��-(�=���0!��֎x[R����"`@@�ؓ���/j��4  	V��_�A�&տ�З~A�r0ݳ�^"V?������t�NO�^e֖k�T/	��qk�>5ڒ4���-�B@��z���S��(E��)����MjF%[_7��)]!`���pNK&S��]&L��Շ�F��XN���'l��OM�+��9ޅN����ilHQx�Xܿ5Go�WI�$/��~�le���n��m�ӷ��ILct%�~�m����7Oĺ�`�˶��^��χ�C�D���N�����S�:$�|D �ȟ:      �   q   x�3��M�H,J,�()J�4�,�4202�50�52T00�2��21�326�60�#�e�鞏U��������1�HR\&���%�Ey
���@��d&r��SN���Ғ����� Hi?4      �   \   x�3�N�L�KN�,�4202�50�54U0��22�21�3�60�)�e�霟��ZD�vcNǢ�b���p��''�d��%�e�)gp�3Y:c���� #@?�      �     x��VM��H=�~E�Kvٮ��#����J{�2Y�t�L ͿǕ��NR=��5Oy�~~v�
+D�^�]�a���n�I���=~n��\9pt�p@�A�Ƒe�/ ��0����K���~��.ІR�V�W�{#G��|��ڹ��uC�����w< �P�l�Љ��r�2=q�ӷn�6���~<^�%vn,1�W9�����������z
�Dd�_L�����ݧ���Iw
B]�+�!㒶�^��q��P���o -��x��!Ε;(T�v;Wk�3J6�J� ���d�&=^����}7��!�$D'����ii�^b���E� ��,�@�Ϣ^�(&CA	��_S{S�뿷�$�}�`%�"�	����<S%~��n���е�0��7���K*��qmP�����e�^�/w��ma�CN74�#�v�A(9Ð������%�S��h�����{��+}�f�#�ϗ����q:BgS���������Ū�������M��	���,"�k �0e���Eʧ\B.�W>��ò����ݧ�����p��Z���kH#�� �Fc	��nf�_��A�c��9$/[�rE����"6m氇5N�&���@��;��og���������C`}�ҷ5�Vd	�O)�$�S�t��:)�Χ$��쓪�}��x���
��������)��&#>\Y��|".C�O��Mv@�<��j�fpI7�x��������_������ݹ""��{k��	�x1�      �     x�}�K�!D��)z�(BB|���8�wQ�����d�k�����ǟ�_���������E�K�*��E����r����b�t�HI�,_:$ԣ���H{��K�mC=shG�Ϩܹ���q��n���&�i�E�j,��M���%���Ee�%��2_i�k,G�?є��X�>i�4���ʑ��r2��Hs����J���z0�%�GG�8�I�pO	V	���[��i=i���;�&��pn%�{lt�IvpWi3�n)�)�z�S�Uۆ{J�Z`�"�KQGkiEw�v��)-\�y��B������J��Uş��:�'�Ţ�n��4�N0��l=E�T*�z�9�M�ݵ�N�q"�ѫ,�Fq��vXÆrfllE�цto�Hca
:.7��@��2[�-��0k*/��PcD��=a��ph^�q�R����J��2��� �t�ݔ�p�;\��	jc�2����V��9�|��Ql��*_q����`Y���2� �k�he6oB�w�X��>r��.e�=�[ʿ���F'l{ĕ��_����u㥒n���p����o�[-���6i�0�]�ߞ�p��*�ۤ�&	Wݧ�� ;66c3��n�-$t\�\
��� �z]���p�����g<rup��p��J�S�,���n�s�U
�D�r�t&~q��
�����4�S�y�c{{<'1�9���A�U����_,��!��G��Ηf�(���-��)�q�il4S�pOi� 
���x�Ь��������'���D�      �   �  x����n�F��WO��BĞwɫ�M`mb���:�,���Vܾ}f�Cry����I�H�og�ZX�ȧ��Y�]�7��v9�J��Қ|�mc�����/����?��x�U�jW������v����p���p��v�ؚ�L�L��J�;�\S�I�I�����?������}[�[�( g�RRY��i�cY=��jW:|�,�������H����d\g�$ܶll%�Ir{�>l�o��֝��r�(f�P̚П�<IR���l���{����5f�OgB?
�e��U7��P׻�.Ua�4�|~!���11�D
%^�a�������__��{<�/�>���2Qz�1�Pp,:}��Oɍ;�wy}�\|���͋���r�뼀@��m���zlPlSS������ѭ{�N�5�>��z��̗�6r�+6�D�Dx��U��ݗ.^�;BS��֌+E���7����W����Cm]Cf�NR����=|��.f�K��.��%˸qt�YS�>Ǫ0��}n~R�9�L�Gj���TRʩk�Q�if\�&,HL��R�dzM��g<�lx��i�ư����w����>7	�v�`d��Jp%�!�<�v�}|����)'m�nu&i�q��A/,����x�tw��H�'x��tl}P�ɨ��az��P�<����;���Oͫ�ӱ�!��O���`�)Y�x�k�KT��>���	OՠY�IB^����L�5רU@N&���罼� �@� { �̀���h�J� ��q��U�/������J7����DFAp4��YRL�6�k��������6?�ϖј�2�"��К^1!���j\Ä��2~K0����@�(��[U�,�N�c��
&��k!�}q��i��Sd�g�m2M�gL'JD�Sm��������h���{��w��w%R�#
lѰ*C��b���5c
\��v���eS?�s��� ���.`Ƈ�?a,��mVݽG0(/8:��h�,EL�ňɨM(l0�GZ��J>�}/����62Qv�F�k�*�[�t ��vT�����i
^��RlZC$�tG,�(F(C�>�p��@���iN�%X���M�T�*���Ao ߌ��#Mk�kl�(��X���%��r�RE]$�p�g�w�ʎL�R�q	��*�)��~��)�k��}����e3Z�+jl
����ԃ��j���~
���r���,�Z�e.1.�ޤ"�il�p�
\���t�;��ו�Rh�#4�4r�Pe�h#�[V@kB6�{���X�D��%"�L���h��pȿA��b��E�r�.�u�t�	��H�H=)��	���� �[ h���+�`��öe;͝w��j"���F�FcW����X9�X�0t�|��s�#E0�>���C^܇'Q���c~;��L%�>c�98o�0�& ��;�ʾ{��,��w�����~=���r,+���;Wl�j�{��$_d����)Y�V��Zj      �   �  x��X�n7]S_�]����]��"nZ U�d+����^�F3�2� C�9��s�HK~�I�N��Ǟ 9�~�-�.h@3����C�6s�y3�>�ٞ�Ϸo;��zZ��b�٬	!��7
�;2R�*v�b ]�=�����=�U-����d�^/��d���/��y�!8�P�A�6v�C�m��f\C�� eQ� 	3(���#�"�$v��&(�3.;�R_�����yE��T���]�#_���}�&����r��nid �Н}R�����t�P}Nw��j����z���k��X5����~Gg�{*FJ�.$1֧5!����ɴ�Մ��i�����t9���Jjt���i1��[-f�
�3�|����������Gv���<��ݪ}t��tY���2��H����n��G�R�HqT�0{�̥�$)ױ\�aƫ^���-~��!*H��2Lk�GEzهG�����x�6����g�B.,�J��3:��۷������J�ux9(&Փٝ��U.���'rJ�I���i�)xM������v����t��L�X*pˬ;[&d������:so���m�^� ]W���G}qz���W_/�q��<�2����*a�5��X1�\Ć�n�Xs��x=9_pУ���I�[:���%)ti�<��v�b�>[]ض��w�UX����;��fҩ��Ḋ6h�TG³��F�=���_��FR#��*qc�X�8߸`z�
��*�1����s�<�{�􈏮��F��/:'�r$q��>��Y�l_��)�I���;��b��EdV{��{Э3K�d�)��"�?X
&�� ���g�=n| \�+��Pf=����r�yyď�󟯻����Qů�9�!��S��R1�uoF%y�iȮ=�!�e�ǿ��w�L�G�֪���k۳~?�-���٭+1+\6�.2w�;ߓbZ\O��-����̔"Ѓ�Im�K�����wWx�C2�z�P���2��NҼewM�������S��Ң�B�!_��J� lAG
}H㈑��ފ����� �͂��&�n��A˖��!�}/i(t,\�'�>��b�("m�'y�T�q���g�MtsX���h�{����P�-=]qQ����j�3IŖ�R�Ɨ�f�q9����L�>~%�-Q�j�2k0N��_I���d5)C7[��<�[�{2�{��
�w��8μ3�Q ��NL4;�6���1��      �   &  x����n�0E��Wpߘ��5��Ȧ���b\!�HJ��}G���&0`�s8�3r�����s���[[���.�U�چ�������6��><���I���x�ƷS+
 W�Jo�߀� �����k�I�w$�8Y�m��T��>v]��{�QA�?�]����w��b�&�H1���Rx.MP�~��b�0��/��)Q�cC�?/��Y豯�j�=�+�cK�� �A�eP,URY'�s��c����Qn�X�ꠝ�eyŸ%1�+5�0��b ����޹c!1��00k�� A� ^�Čb!1T�(��M:�����ˢ���K��^���!Asi�uA�(!;�RbJ��(����a��@�� 3	�-�)󑷝z�8�#֙�{!1��o����v�|��v�Vv�~������.[<�}�V���zQ�GT�&H�o�fQ�I�z��Ð)a��K݊�� 3�8i���׃(�¨ �pfq%��p��Ӏq����)��	��6������C�K2@m���a!I���$�C0��WrUY      �     x���=o�0�g�Wp/L��H�s��C� Y��2�倔�ߗ�KVh�<��9��3h�9b�ч8���|��K�q�Ŗ�[�0UF(C%��}��^��	��@��=qp��L�p^^*��<��к/�~��f%�U�=�F��.я~p���ǻcs:�~�7mxESŲ4)��:!|��:�����ikLk#�@�G�.Ld��=|v\����2�����]�&��`���l�y��읎�4B���_�W�	.3\����˴o�QCY�ԵZ�ץ	?^Nảs8���K�,��д��r�?��r��.�%�Fj�@^����; �	(8�����ÆV[�byL���3�RR�U���w�~l\Y���K_vɕ(��M��c�[��ڀH#���c��m8%V���됟�ϧu��ES��ϕZ�R$R�8�0G��l���w ϝ�7�k��_4i�h���ec�..�E֜$b�t��9�E�Iw�5����lǣ��p�%���:o�+�l6A�n-      �      x������ � �      �   �  x���Qn�  ����_Mdc��C�	z���l�MȤ���_���R���w����
i�*�.9��%���|)X�|��y�!��=��B�d�-d0��� ~!�@~�T�72skb972���1�L�(\Ck�*�HV��Q�����b>v��@?�T)�I}|Z���@��h%�[�ń�!�0�� ~�U�~ Z	�/$&j��?3!��j{	�$\Bk�/�-`+A*�oB�"�AF�	"-2n��!�@�^ ��Kh%YR���|ya�Q�v�ÒzZ)����/=���Q; ����	���w�FZ�h>�� ���t.Q�'\��3񴳯�F#��@P�&�"`�F�
�^�-�~p�O�b����ˉ���F�	"*AB�"fQ�?��OÅ�7�J�r��t���V]�i�?�	��	�T� �@�A 7�����4��J\A���b8GV�w�x���� �4@�@0 � )�/�5?�� �����l\T��oǪ�E8�!F���	��W��A~�@��qZB_���
Y���H�C� #�q�|w��j+1N�!Z��xB$#�}B���~Bd%f��Vf{v���B{�Q�
�Њ*����	4�:�����||N�����`%fZ�_��-���퀌��w�$���d���=�^6���_A~^9oC�@#�����u�!��      �   �   x�}�1�0����Wt��\�����cAp�"GтMĤC��[<�_�>���i��hckmkKQ�۞���i�'��c\�k�^Յ�)��M�{"���@}$�pN�G�m�a��ΊFI�`X���޶ʓ�%a'�!.3'�pNя%��s\C��(��(	G��o�6Wp      �   �  x��YM�$�=�~E߃D����� 	ع�ŗ^�f{vgv��&��y��{��ZW��e� J��G��b�~�q:?������������������������������y��O<����ӇǏ�I����ub����
'Wf��-�����D'r3��e���<Q��_N_�6�N�]���z���u[���?	�4��,.�\�}�E�Ko[6$�AfN6��[�8Ń[Rw�q��@���,yf�9��Mi�n�dCu����Λb�vS?;܇�۞*���u��1LS�7ݶ-!���?9��H��dpc�m��=�DՍ2Ţ�77���!��g)6u>�@L��;b�ܜ�6��S��ŁA�G�6�C&M��&Z4������N�.qfo��ox���͡���}�"?���2X]A�hJ�U�g��h��)�%��N+� k�I�ZbX��w��(�>l�����	Ae3�љb��+$�fv�^�OٍW҇�֕�@�a�97�n��O�t�2y,5;�O�w]A,��VA�lc�V;�P���*i&���j�)�ҹ�k�3��ʻa<Y��>OĮ��GI�t����/˜��#!�7�5��8���coP%�ƒ2�#N��fid�d�P�5dp�r$��R��`SLk�=d��Q?~�|�t!&TPQ��i���O���뜥5Ӻ�/�CZ�Q������b�׵B�g���2��~�`��4�[�a�`v�2���̍ۤƜ����L�#b� c��������i��2�w�}Z�A/�?o�}����C/�ւ�і��[�D�������hs���2��}���jdY��1�(��ڥ--E3@��2])�H[�B �c���d�XD�pA��nMf�kڡ��SU�;H��ᡘR���Ev��1��*���N�A#�%v�[*�BdUc5���cQM�Th}�28��X[�sP�iŏfW�a����Mc�0\uB�V�A� GKwr?���C%�Vh4ޠ�#�5e��R����_�����~8�������25BГ��q�<ޖ�����x͎N#���Ѣ"���ٓ�A(`!��K���_�[(��B~���2JF����yZ�c��	Q]z�kȰ��-��O����-n`�'+=��2Yۀ��4ru�n��ҵ�� ��`vF�w�����|�3�f���n?��k�l��2�A)�4����٧�7¹����_�4f�l�� #0+G@��q��WF��i[�(c�$�W�-Ƞ�"X[�I��f;� �Rڏ�r%'�2������ ���ÁT�?t�y� k��,9�,�k��3�-�d<4U�~}}��ϯ���\.����~����^V��
��L"((��Օ�:���pr���S�#�樊_�	@F�k��7���Z��i�l���������u�20Ia�hm-�Vm�����20���Y-ڮ���2	2�QN��&�!�A�!��Ȩ�6�ίb_ַ ���٠�$ٰ��4͔)I�/ҥ+�7B�x$����uF��ҳȠ7"���O?�t9��;y��z �_��V�A������)�P��ׁ0���Ć!_7|�s�[��鏏?_^��7F0��}�NIiTG� ��tĹ ���� ;�P7�s�8m>����*��͘P�(m�uN}\�!���\�������=�˛��qy�TC�z��Ѧ���{K3�63�R�(�*sS�,�f�����֜�`�/��:W[��@�G�n[�[VRod����U%,����E�(����,��jB/e������<��[�!��-y��O��ajq�D4���xo����Es��-�d2B����6p;��YG�dxYt�}�������e�WD�6�`!��
�jg]��֑;� ��Ԝ44�<����̋SǾ!���s��W������r:0�.��IfQz�kȀ�Tv�\��iv��Y�>HmBD���ok�)9�a��L�����?�Wf���5�c"�f���5��nnu�T�Ȃzn��O�tm���My4����n7��k�d�m����c�+�ߖֆ�+[�Ad�;V�UΉ�G<]��f��T9K�H �������-�{� Z����ڤ�<�����+Ȁ��f!O�^�m��om����C���4'+���O��?�*�v      �   �  x�m�I�$!E���o� s�:A��6���$���mGYP~�����`y?�-��)�?�_Dej�Q�a��
��Ak�4$?VÁ�(h>~˸��Ͱ! Z��&5*^3��v1p��FJ�V�B��P>�s,1-��P�n�Ǟ�8��Š�~�Ke���^�H{ٓ��5Ү�����K�E�Î�犷��#�E�MR�s�NJ�ǰ����4���gN�K#����q"`���V�j}��mbK'�G�<�2j�7{�4���8P	V�,�Ǚj��m
�|��sy��(kS�!՚�?��8�砸+F�ʂQ�,���*�}��i�(&�9��bm�{2�e��0λdE���i�s	�.�§bF���m����|�]�0MN��}�f{�
�(��S�*7�44���^����]�7>bݳ��W��'�#��׆�OP-�ɸ"�tQP_���S��m��o��1-      �   ?	  x��Z��;��_1�b
$EJd��o��<���k�X���%��*�JS3���3}�$�ٝ���/�>�x¬*lJ I��o_.��<�<�]S�,���3�}@���K+��*��@���
xe^@rO=�*un�0R�Eg�tż�򄺇�Z.
�c�"�
��6?R~ �r�,�l�{����8�J*9+//�>�>+9N�9�ޡ;m���8%>6ls^���#�\��X��ƌb�\�ɉ���������~u:��X��J�p�Mh
�%��r�U�P�,��h�����y�[o:S��H�`�c�$}�����������?/{"?�R��
7W��ǼS`7�ک{�,~߉�*wS'��އ��'�<�i��bWH��az���K;;�/�9��f ��.9��nЦ�Ui������m�W��@�BwhM!�)���4���"N!=@����i0C@V��b�� ��X��A��Q��;�:�%�p��J�/�{�$.���.�$W.�'���wP���+�zBu��̧W�ը��<��E"!�̽�)�;ng�Tf���"���Ѡ�a�\��$��%���ۗho�͎�h�]'��B���I2g�z��{���+4����AS�Q���ɍ::��e��AU	�R�v����U�J5��M�z�*QSJ�#+�Vhi�ȋr�)��p5=ϐ}�J�)>�>�H!��T��0(��H�Kl^� �^��^�ި��`����=��E�똅��q�c|�_�-=E���84y��bt���hW�X��K8�YAr�t� �Ь��
�F�@]����TJ*�G<$�D ��7B�J�*A�y�*gA��<���H:��\u�]E{!�4�I�7�m��;�^i��j�v��.&����f��x�&��p�(TYz��U�S���Zh$4��ct�*�U�	�~�ip76��;4WS�
Q�K�rB9O#�.GY���J�)i�T�`�Ym\��E'J=T�Z���	���Λ�jn����$N(����"��ޭ�3�JG�"��|wD"h���S����E*�\c����\Ϗ��!)��O�~��ܯp�nse�����L�k.N��a={�#� Uf��yd.>F�.�w�Ğ��+Ry��o�);��-���K��� Չ��D�yI�Y�̇��+}�,^�v����f��������e,�"�'�~�䵿L�5��q�5�2�k�z�'2����|w�R,\�	)t:���r}I3��FS}%���u��%��1զ�W���jkʰ���*>\�W*Cm���țvi�U��Z�A��_�����ʓ�y��P��0�Jم�kP�� �C�;BUI���l��ExG�읟������_$ZYϬ�?�U�3��W������yl��-'��.=�	�ˮ�Q���_kz���2�u6h�#��~+�]I���&��knҡ��@UB�D׃D��rM��T�Gy���V}��r�?4����Oϟ?�������/���>�O�wo6@�7�a��������4�Uժ� ύ�lp��W	$���lt^���fA��PU!iwI��za9�+�]�	T�rS��K=�O7��5�����*�����w)�,n�����v%mB6yI.|��[������)T�������8w�r�
�N.3@!�����RK*��˥���,{�Z��Q�4
Yt�BF��PU������"<�~ntT7�t0��J�)頔$v]�P�� K9Xi�֥rS�Q�xo��Lt���33�PU��4y��r�r�fK�u&�CQ�/���??R��ޕ�����W�D��K�zWio�/bpO+�Զ!��V������B隼��Cj۠��֔���Ѝ��;�$�?�t�Rݵ�6݄��׭�yx|������Fg#�)��nt��ma��Q�S������(O�7�rS{��ۻ�3�<>�h9�T%R=�(A"�`~������=�f�X7�W�Ô7�����vH_;�
I�y�����jt^�	&�5@U)7����b��)���$�PU*M�F�k�w)��گ��PUr��_Yj��K
g�7^w�����+�=T%�{�>VT�(a�4�@�m�}4��8u�� m�$F����&��gY�fJ7hU�ͪ	ٕ2�|�oteI2Qꡪ�M:t[$󙃙�k�� ,��Œ�D�j� m�f�Ip���@��%�?w�&�}5��W*��� ,.��Yx�{�[���?�Щ���]%G���6	���	����[�$0Nt:��H��:�Z_��W��ݦ�G�;��/�M�%�<-�篕���E'B=Ru���z�d�ތ�'�_�x~S����/4>�r�?�>��H      �   p   x�}�K
�0Eѱ���K�~�l�%����	�������B��	�j;Ǯ�q������b~H(C˿�Y���B%4�`��i�����7��e_�Ff}��el�_'*dU���� D|�Z9�      �   f   x�}�A
�0Dѵt
��xd[���c��$���P���1MB�|��WD�,�#ݍsm����y�Q�'�h���#���zU�4$�u���-i������פS���.      �   V  x��[�n9]�_�� �Zu� �	�� dS�d�I�H�3���sYU�bɽ[����x|��^2ư`����~�ڴ����$8�i�k�m��c!hm��/���3�\��ܾW�w��4N��q~K�����	�X��ө��y��ٵ�n�<�	�Xml�/�;!�/�m��WUQ�_>�ǂc����5�S\����������"�û���M�P�=7�Yp����^\A���Pn�U��#��.�E�Yɀ�����e�!šݿj�u�����f,�B,� mEj��(}q�-,�ٟ��v۱��c���NB�}8|�؆�.TXH�pcS�TD�m�f�8���i�>�6/�����گB����3(�{.����(�(���r̆� �a�|�	,�W�W�vC�4vԡ�!���(���}X���E�C����Ԭ����Uj���E�M���V+�m�L�"�Lɋϊ�����ޮ7���ǸJ��x��a����%� �P�<��"1~�Y,�`����t�t�S�}g�a��:8�!S���v�^�0�Q:�� 
�%/B�F� ��ղ����^�s�GI�2\y��7���2*B�֍%$!�0��ڧ*Rw_�f����ݷP�����˟^���S�d}i�Y
���E��ϼf**��!�H�~;��o햾~�<�C�L��B9B
H�1^�M���'cH8�m�0i�Dr�t#�#����g�y����$`�o��
�;COah��M��PO%9͙�%�ӹ}|��|���-��S4|�P�W/2���Kp_��Cq29}@UH�8K��nV&�:�*�)^�%s���G�S���H�u�HE���cC�!������4�>SČ�-.�D_�אe�yP�T�)l���%	|߾^(����=r>�%}sswum�����<���aul�8ff���0^MP�JQ��������)���jN`�2�_A	K��#��2��H9�J��CF��`ұ���dh�����dk��ƃJ�X�[���	T�	�.�x����H�(M�����J_\,�j�k�r��%�a��{�,�=wq� ������dU�6Mr���1�C��e��,�[\���_\��<l�����l@��p��4o���^�U�A�"�D%#��{ tC�0,�Ql�&%�K���.aC]`�+#J�H��p�'w�h��e\/7�IT{_V,f��x��$C	�2CMEe�w����7@���a5aG��|f!�Lz�m��"�y�V��[��;(�Kb!A�Ẉ��\���:6]��&dh�H�tI�F���E���뉊/��]Zv��Z���}�_�d"P��JL��$ȉ�$�d8���`���G?�,7�4'h���3QΏ�`���Q)]>9��������z[�;��a$�_��k�|�<�7�M��v���@;�"�)�L�#P	��	� �����B��\#x)�����[{b�*��&�hBDfÄF$y_�^4*N����|�]�i-׳���f!_�(Qte���5�fZ�������Tg�U4�s���/��<��SQ��P� ԡ?��s�?�i��������	J�}^
e4l�|�uџ��B�f1�����]�if���0�1�$yv��
}X���ϛ�;
_�V��Ej�HQ�o@@%���x-
����^�*��k�ѻJ��Zi\��C���]�8W*�(����q|�ލ��������Z�1;����o�)lET��o(1%'1�kgYlK�a+q��ʪ/�S%�X-׫����Ѵ��]2̚K�����x���@A�N�2&4M�?�����||i�/�n�ڸH}l�M�f�DGj���F9(�{��P�����!�2�X30� ,M<,� ���d��=d����jYq���t�tJaA�*���J@����K@2W>��� �m��4*톫��4���"�id�fG#}���4���r**Q ��0��Cf! 1���l�Km*�X7�P!*���Е�x@2���;L��(:N�N4�(VDe�w!Ng�����Zv𝂴���d.}�G�A�P�\dr&�(E5^�XM �)X���Е>|=g���䏿�z�;t�tN�Ns�&����K ��b{:,!�C����֮!���dB�#���^v
�Х�**A p���4�A/���������4e���AW!* ��}8oZ�3}�k�z͌�o�v�0fl�E��9HHIUT� /2��#���̓���m�����h����5����hjaM�SQ��̊9�T`�̙/{��P�#��d���u�c��ղ-v�9?�� �|)'E��s�83�Q7]]������v=��#Gai���^�����ƍ�[��t�1�T?1t��u�{�#k_L���OO��h|�_�{:`�3HbI�~�w���:���8��|��C��.�6�����;Y!�d@�iw(9/ݒ���@�n'5��Q��G%�]N�V��=���-m�g���vt��K�K�&.�L{0���e��ڱRj@*��V<�ˎT."��뼸W�f����r3xӑi��,7�r�!��M��/o�-X7�K&*:ca=��Z��,�}ײ-
d/��u>��e�w�yM:�B4�������ju���c��}:�s�	6h7�)�ۉx#H��B
�	Z�ߞ�����nٽ�؁��B"���!�!��Сk���*�@@Ur�F�r�z9��W	
��d��z0le(b�U�h�e�It`/��88�_�SO�g�M���jY���&8P����.[x����J�#H��g7�b�B�QyC4��R��u:��j�a,��ѸX
�4b�#�8rZ*ʴH�눣_䖱p��u~g�ǡ#M` ����?�oCI��<��E��Ya�ywݘ��TOs��yU���𼼴t^��]�$��@�>,�w��4^O��K&jAJ�����g׍�L��H����F\'o�ĝ���o�$�ID�o��^�[=��n����4/g'z���#��N��K�{�����S8(�ƀ��2,Z�ߎt���Ƴ��0e8���٭�'��eS<�O�1�~#T<��d�ҭ���2���z��Pe�/iPp':)D�A�����o�bN����k��g�6�n0e�)Eз�����ܦW��s��_��H��q��}4�����0э��1D\��>Ⱥ����a���ǧ�0ľ���o]	�l��s?	��ݐ���)����X�x�>�����h�U��F��M%X��RT�JKI$�@A�Z]o��s����6
:�Ư�+V�D0Q����d,�m\dE ��H?�uP{�[�[��W`i�!�����D��
Gü�dTexd�zC't��ᮦ�T4�	 /9��|�D�iX�>�g�r[���/���	8KG���s#I���]^����\��d��9��C���Zg9�"�h�nT�q�v`s[��v�v�^p0Z�x)����q$�<��K��u�d{�׀��fO�����^��E0������Q���%�.�`������?/�욄��y8N5o��4g�{/���J�ϋ�f�ht�+2��Q������W(}��IGP&��(x�v�ʪi77�6����DRjD��u���(�2��t���{na�@�P��p�y��F�
�L4�"��I� ��Yq�Y]�������L4�@�W��� n7�]\��&����������x8?54��	뿊b�P̝��M�˨Wh���呥���\�ӸO���$�������Ҁg�ێfK엧��ݾ������g�6����ptZ�8ᡱIB��&H�~I`��v�� ���%J�����T�O�T*7���r��J:QD6Rm�����޽�������zh	      �      x������ � �      �   �  x��YMr�'\�Sx�2�@��;DN�uN��_i1c?@8UIy�j�G��hp����/���g�O֏4���p,���ҿ@$�j���3 ï�ן�����'�'�8*���A$=�z�(�)-�b�HFh-�R��0�'��"M��YK�D{$�Q.�X!Rm���O�O�rEN�"͡'�D�H��'��s�(DZB��><-طqR�����~̸��S�x�"��K�W��p�������%p�qH{Xb��s�i#ߊQ�,�H�)�;D��('EI���k��o���C���X[�+D5�Q�z��Tl��?R�J�0nU�9
��A����Q8�j�[��Y4��p������|#���mU�'Y!ul����T1UQ���@�"���)(|�%m��!Ȃ�HMͩy�"��^��L�d�E �s�'��H �r&�돢ʸP,IM�$�z��ҩ�c뀨Z���V3*:�GVٶ�AT�Ɓn�����!�5��b����!�wA�<���j�:�<<D�&6x����ǘ�;׃��ԙ�>������o�L��\b��b�i��"���}9d�Z�=��Hv�L��o��?��UO�"(����Q�+��c�>�Y�.�@\�|�LL�/�A�¬.����[*'������)�q+8���u��0�W��t�2��e��ɱC��3E﷏��P��J7q�}!}�xذEo�u� ��k�qtSb�ȯ���8Df2�9O!ZO`����!��؜�#Rl\ByD]��Q�ᣞD-�>��g� ���r��w$�T!��,uL�"?����8J�'Y!A��Db&'�|Y�
��Rʸ��9�"��v���ı\vg�����c;��6���3�l�med���@Q��,�4:PT_��"�A��W$Fg�1�x��<�y�_ı�Y���S8�����������>8�������Ө������a��g�9~��eF7�����I11ɺ�D�bp��@2�W�}��lk���1x^]"Bӂ�V�h^ڬW=9v$&����@�vo�p�8P'��/(��e�p8P���
��������)�|�Pk��v���ª:{���Wz׃��,W=9^�<jW��}�p�)�Z�yc˦ƴ�Cd���~�s�1m2�zx�̓�|���8t>)��<�
�y2���,���ƾ�o�'�:N��"yނ�F�Bd��ᙏ��k����y���2n��ށj\8j{�cG��+�±@4��q%�{�$�;�bC�l�v�B�7����b��l7���m�ћ#����2n�ėe�s|A4mYONe>��G'�-;�_�G�빧Գ ��+�|��3��i{�r�|����� ��N,vw�Gui�H���.i���C];��_��bω�}�>�i��?#q�Fo���e���1���h�psq�!��{8�ar��9���^�<�FUK�S�8 �Q|�Z`��������aS����_o8 �qs�Ϟ�u����C��HG]��i���������>�����t�;pؗ��7���FǦQf�9�t����b���%�}�Xd�zH+����8�X�;	$�J,�z�	�U�;p��v�X �kTN� �<_Q8�����q��nQ9ɾ�����X�$+Dv�ʩ��4�����RK�8Dv��i�9�@C]8���D����      �      x��|Y��\��u�����ċlf�q�Tp ��̃��*����q�<��ձ�Z>�\�Y����ŗeg��z�{�-�,�7��#b�¯������3��lm�,��$,�!�1)����6C2�Gf���f=��%*f��E�(��%���� ��~��O��P��7J���?���P�'|�� ��}��:�����Yi�Ӊ����N/�f��ZT�78lU*��x�n�iߛ��a藇��,�GP�ãt$��oO��(��$���_ִ��9��7J؋²�[�P���*c{�b�;��/mZ�8}�~<	��g��g��?�EX�?̓�}���n�(�㾎9E֔M@Js��J�]�E�خ}��Q/��HU 19w܉��"������h��$o>�"�c��
�Z�u�C�p	Sqj9ƫa��Z1���!#8��F����Xicm_͋;T�e����-����� ��@��h?�Z�R�_�S��G?�S� q��#�)�&�|,@�k:�z�{�"�k-Ilx����j��� %��E�����*�=�o�B7�C���'��=�x�g?= AQ�9M�h)K�����J��D�i�
J��5�3I�h��n1W#-\�� =/�������BQ���,�?:�gȇ��h�hf�̬_H�ѹ���	�~ph�U[�����Q[��M1��(�n�|���f��x�]�Mď�;p>��> �Z��4�(�)����&��h�F�h<X����0Ϟl�	�n�Eзg�%�g�v��Sc�����E�$������cc��^��+i�4bQ4���2�(�&%B�p�4Ǫ�V�V��d*i��.����ް(�KZAd(­��
�F!Y�خ�Eې^Z�^}�!�B�%H�e�����Q�I��U���ۧjK��T2�ޞOHj�:��KB�L��Y�/���n� ��?���}�y����=��U?E.�t�G��lv�7�I��2$sN�sx��3�/�e=�
5����W�y
��!x#�Q��7� ����g0
e�O 2��P���+��|]�t�K�KAm;V'e[�z�֤_����$CQ����_�'a|�@?{�	����.�г�p�����.gy�řet�y΄+HӟZ�6ƜN�4�&�'��=�}�|�jR����Q�?8�04��^Dw�xCd�o�.�I���;-DkF�k���q�j�-/$8�{��ӄv��"TL�5��u�/��  �w�O�9�Aޒy?dQ�d�h��[�+z��$r?S�����s������;�{�$��:���v���2�w�O�;��N����*V�/��zn����\�9��e�-/���
EJ�GęM������<�<��d�4>��Z�G��PT���B{{������m\�P=~�n)Z��{	'g�rtu.�	L�i�z1��_�`(�P#���I�&����V+{�:szu}��'��f�r��4_�Xti��و��/Y>ˮ;j���:��
<�1�n�wE-x�����E�gfx��#�ে����P�����)a1�h�{0\�hy�mR�QT������`	�"$�!��HZ�Dq���Ӿ,���"����i09��bkk�g�G\&�ʔ9'a�܈�:�am!���j��l�A�C��$jQ�O�[f	UaE�P��I�G���>��}�.�����:[^Du=���b�l�K���nX������E�⦞q�������dl�i$��ב�d�Nke�[��x{%�b�-��|(����~�+���Dh�şD-��P������p|`����U��S�Î��<d�[RG<cb=a��$������uKo�"j3-��D�S�;凑6��Y=�;�R%Ϊ؋�1b*�4d��g��wt.��u ����:�8�P�wE-b�mR�7&z[��h�
�R�l����N�8�f�۫��>����j�����bEY���u�zT֥(�+x�����K������^xG��=�
��rD�0=V���S�7}������x�'7Gޔ����=<���^�0B��ɋ��N>�c��Q�W��	�T��� �N�W��
�Ie����`�����}�0�Ծ��������F�ϒx��e������~�pG1yO	,}0�#��|o3fzZ�%��}XN| �D�ՠ!c�r��/S�����[*�"�#��ǩl�,0�qvT���Z�%?�Y$�(����ӱ -O�f�G�+>�������w{,�u�� Q[Ş]�]�b�:���@�Wo7v�����o	�(V���p�S�>B=nr��&���L��y�F��jv�� A_��wQ���nM�ؘ��x���hnL�m4E����A�V�i[���.˫�B��Y���������!�1`>��HZ̟��ԻsS#w���r��+��12�'{e`$�	j����������-S�n'xm�w>!o��{�u�ژ���?[��^B�ON����N����[���'���v?��f�	�����`���
!�F�V���ȷ����P��S����͇ⵧaXc�����o[���S���@�hs_&�l9��ہN�ʚ�Zڇ��(��\��Q�ʞ���f����PÇÑ�?x��tE	C�"��5LayJ�����>��5��^�^���u�kcä�:��1M*�Z����D�ej��6t��o����h�ERMϮN*�S�����`�56����%я��0��5u�]��D�	�f��r�#}�E��<�K�#�}y�V3�p0�!]mwܪ�L0����x?tF���
��(��I���Y۩n�~DL[N�����Sp�0g3᭭�w�+�_W�0������p�7�H@ƹ/}�K1d���g�᫓E������NҝԀ�0�J���*.��gH������!Q�M��
�)��B?9����5G����mr@~Hmg��Г�b�.!��.�n�8���!�ٖk��"�x���b��Յs��N�B۳]�Gd�ћ�=ݘ�D�<,�b:��G�? ku���=�LaX��^���Wڢ��DK&rs��Ԝg�J����n&@MK�s�x�|c�:t ]�N9��ZuO<S��3I@̭ƟA7�,�*�,��n�*jASl'���&�ӊƶRU�63ʹ�0:�w59��O��o�CXZ�`y]f� �n�}��.l@�������nET�,%��!�ř����ُ��Ńu�h�(��E9������`�T��d�$�+�����ر�����������sI5E>V�P�!�l�.j�%s���e�I8���2�
���I�H�{F1�yzg��Z#� j ����;��F�o��u�����m�Η�O��۳�<�,sF���Uaɮ$+3l�d���f9��ư��IC����?�ɐ��2Q�n�n ?���T&���`Y9�����a����''��inV��"Ȯ87�%�Pܻ�y�6u{���e������ �����,[�q�K�X����A�,s�zE�
���\۠}B�(�3��j3��˥x^�i%��>9�v�G��e=����)���t�Q5�:+��H���5.@�;`��u49�R��^Y�@8k�����|�JL_
ū���9�f�@,+�b�[�/ hm���G�����X"�{�8�-�Z2�����K���p�av�K�׫]/�k�_�9�����b(����]�FߛV��A68�w�w�tݎE1��`\�aG9����"^��c̲gؼ�I���Ϛ�!0%�A7rd1�#Ұ.�z̀�uM	��Q~ʼ�IO�53ݴ����77Q��$���x�MHY���mګ�H�4���jO�1P ʑ`V��HL����v��՚�+X�җ�z[���2/�?��Z�ii3�o�@�;Z���5�$>�mX�����o��g�H;��r�Q�2PG�^rE�2���9x��'󉗮��)�[Gw"}�4A �4s���?�h��K!,�_��A�^��۷�@w�q��`fp:��q\l#    z��nń�vz�l���;��J��e���ж���W��ޛj�� ��VG  ^�<J���}�٤zd�NbT��bd^Y��!�K�_m�ڼ��.�IR��|)�:b����E��֨����:�t�d�b��=���a�[��W���8�M>uP�竡x<�$�M*�^�2��N<M�цO�z!�:?c_,q�"�o��{:�G�Gs��lx=֣ސ���aO�vz�.�(�q�t2�R*f�;��mv�މ��$=�4�[9�3c��R�±:M&	X�@���x#8������S��`$����#�5�ڜ�v��_������F��C���9+F�\N���GrGǋjm6�!KGc�e	x�i�F�����w�F�D����]�FX��A�;M���)H�E�$]\���4�_Y��!X���TQX��b}���&	Jυ>C�[V����c `��*�,�E�N����7�dS����%l7����1/����g�tl����f�ŭzs���mK�%2�Kz��[Ǎ?]�$����i�2���)���H�+�S;�)����o��Þ-�.� ���ya�Q���PX9?�%���l��T%���9`������0B~��0���ɼ���/���O�-<����wE�9�z\��\�n��5g�H��"�4��K�<煉k�D]�h��5��f���:�:��4����=H�0*~�� �@ne��~�@.N���F��n���+^�O����N����_���#cT�0���V�T�=�@s��3�[0��66Iѯ���mEP��5ߠ���]̢`�TN�c4Cǁ��`"�����|d���X,g�M�� Q��f�R%�17
ceH�d>⃕����,u��-����]�_N�#�dĭ(dy�~yL�N��� Usl�D�@�� �'�H˓F��qov]�zu�����9d�}��	��k��nǶ�,z䵬�
��*�Щ%c�Y�ʝ���k�/����#zs#7�æ������~���wI
M��>D�:%A(�ct_ڴ.�����f9Аx�ϔ�0CRk��AՃ�_*�^��q��,rTZCf�0@�_�L?���l���|�lz�
l��x��Mda��/X2L�C�Ћ�����fҹ��.�<�*�C^�� O����}��_)��B������x��A$��e�B�;������z�C:40�1���q��@�_�cx[s�3�lG�Lq;�Hܽ3�A2+����xU�qBT�XLϹ�xѯ��[��_�(bݎ�O@��s���n�4�F6��nP��A� ���.̃��.ؐN����NSm���9���4e�0��ʞ���h��i둸�f	tp'��e�Pc��?�BlM'� M���]􀍃g[��V"���r��v�;ҝ<@\%��+��Ox䰠�-!cz�Q-�ލMA�6v�Ӥ��)<�O��:��oܷ��ܶ��e���̍v�����ym3���d��!�Em���L&ȉ3�lh/��;l�n}$;�����o��-��꣨����^��񐁺,�0] �ɂ�%{;u��DĽ�YE�V��T���`?�w��X��H7U�_Æ��OA���uֳ��]��K<"�mV��l��-�T�l��;F �hȩJ���jTF���v��8>�%8�C3�߳ ��h�?Y���w��L��A�/�̎ �e
���{�����*�,tv�ED�"��2�n��ֻ�j�;ް�?$m����n�ҿk�F�}���ג�!Vw`�Ȁ'B����)�x�
u���oj���d��/ jY4O�t:㖻��ܓ���� �K��1�B�b�p���	�Z��_jb�'�[�A�i8fxК0س�f��v�"�"���d�q�+wȚ=����;.���u�x=i����I�٨�����2;��i#QX7ǳ��}Y��#\�h�M���1��i�3�p��y[t}�I�'3�z���(�̱�dg�7�ȇ^{^FsK0��0
&΅[H�WÀ0�����'�o�� xׯ?�:�Ҹ����4 ��k�e�[L��6�."'s�(�w
v��2W��z�����
�ƆYY��������$��_g�� ��D13�tR��m�ݦii��9�N?�K��M̋%��9��^�q���C�ȳ5��\W�<��+����N���)<7��3M��t��[ݑ�G��η��As����sT�>U��+�]b}�@��e.Un�
v�7����Fåw���Iy=0g���ȏ�}�E4�e�D��x[��`�W���\�]~�
;b�%�tI
��Y��	A��-S���.��q!*�{2�UX��_F�W�����P��&���o������Zɘ�+=�Ol����d�J�K���7�'�x�5�H�fa涕����;@ο���NN�i�S�kG�U�|[��34���WLv�pES��x����:+���
a`�P�z�r�v:.�d�1s}�ńn�`H��>Z�@���Q��=~����Jhp�Ii;��@?�Ɂ[ �����|1t�����J����9��AnN_9�͟�7-6����� �+��&_`��	.��ߏQV�1�A�!��a�$��!B9���8��T:L�$��������ck�eH�򮨃�v���Θ�'�%"�(m6cՏp2mk>WW��d��F��q�'��?g�F`��_�(d�:ņ��S�tC��xwD�Q� |���e�q1���[�?�[J�І̾�vIO�WX!:^	��!��c��y@��L�Kаz���7��)}�ڻ�����fwo+/����z��ϝ2�e?������]w=+�]̋$,��%W�֤����VaԽ�wW�������u֋_��:�F���^�,J86�a���G��{��2BnX��P���͎�O�S<��
��&��\o3C/`�w�O�G�4��z��?��r�b�\������fɔs��顁�3%���#.�E�`��8���H���{�-'mt�8!�-+�E�N��fצ������o����m�U㥫2L`�uoy5E,+��R�\v&L��2�C��ni%�Rǐ��4��j����+?J�tG����ҙw��C+L�@\��l���p�� �F�8Q��L�5)�hi�	�d�L��~��Y�k4��<�f��_<�ݭ\i.�}�����mk�vȘ��g�8��9_.��KX�A轼��D��TL��.΁�/r��X��@=mU��Eޘ��d�����G��Է�6>�����[�Y��v<���4�؎C��7grj�&rB1IO:�l��A�/��`��cu�V�3�5U�E�\�u �[!����_���+r��!
��I���I}�6�ʵ�$fl&��d�u�q��	� ��	��|��h�n���'�]Q�wex���<�a�&�i�$%OP�R�:8�xV2�<���f�
z=��y�8 ح
��n�ْũ���n�;����ݥ�w��I�&� K,�"q�Z�Im��'��e�B�K�AW��ّ� �����]'T�W�͍^@ �f�Q'�4ɇg�z�w�=��sLkWcZ�r�a+e\̆x��{���CoQ��~��C����m,l��|k��fa��2��8�	2��R���tn/�x4%뚼-��"���5��UaP
�1�$��b��:�&��g��e���G��������نAM����P�e Bv���n�m��6D�����c'��c�[m��X(���ҩ��*$DFVEik	�"�|O����.�LG�/\�7��=�+鄚u\7m�f>q���+��_������Ls: �B�V��E$�mht?M7ZLn܀���]�7y�O3�{���[ }�op�a������}Ө;V��qX&Ѷ�^�+��yP�8G�1	W�����XD���s�&x�)�����;�n}c��u�\�Q�!W��z��`b����`ē�t����amb�ð��,���l��G_L])�Zcu���r?t�g��5Ha2�4�imM5� R	  ������Tև���_D��\��&L��WV	� �����G�Z�� �ab��skW~�e:I2�<��h�o�7o��N|���#�W���t��H��������e�@V�k\���[�'��R�H����	�@�so����C�s.r둲�UG���7N�Aq�֩�,�{�z{M�n=Ջ���0��sQ���?+G<FzKfD���4��"t�F���:����;�6~�(H�7�u�X����k֔��$K��~u�ܤ��m?mHRWmC�ρ��P@�0ퟯ
�9_�}�ī��Hĭ)2t)��.��_�ȱ�"ț�_���[Ϧ_��D��~˱���7"}9hOD��,�&?�S{�IY�˧ٞ`d�a��gNx�(3fR I�����[�����+P��A�~c�����V��+�⮔�MKzZ)E��ݙ։0)w7���t���KF�d��Fr�B!�d��;֣�wҟF�E3��g��5�V�?�bco���)ݱ
��jdK�U������]T䃈Jg6ճݍI1>��Aa(�D�M�� C»�����B-��{/��r����ׅ,4�mݞO��Afz��@J�Α��ܔ$�ѹ�<���鐜���X05�o���_@��A!$�j�Z�5/��+���<��Ō Σ+�U���;qE�qv�\�PC��������uUTãs�f&��.�o�
�)V�M8�}ݼc��{צcg�>����)�Vx�cy�Y��C$���X�O̓+i�Z�g�`i�ȮtIH�˺H����d7�;�`�}K�닥��s�z���K�f��ٖ�bI�6O^Ϥu`�B��YN��Ş3��$�i~$�bJ'.N�=%p�J�����X`R��������(��s@g��c��N��^�����������j��ֶ�Ƈs`�1�r�	��'ΉLt����}���~�'��5��ȫ�C ������y�S�t����ED�EB�~���p"��V\0��m�8�N�|\Ϯ7����iK�o��f`��1�4}[8L����QL��ƍW��v8�"���5�C;���#y|���HML�����@�����f��V�W���b�A�7�~�����&�p��(�6ǲ�M}r��Gt�٤$�G��
�3�N9yY�2+s��X��o��ײ�X��N�}��)G�� �Ε�����q�Ϣ�[�����u�S̈<V��lB�$R:D���)J����n�1�����w��$F6����{�[��X�͙�z�~i����eN���YYe��	3�{�",z����`��jA�{KU�������ezF�nz�5K׍�Z�΁1�!��9��;>�:f�-�a��DΞa��n��}A��`*��+�LF�`��QȖ�d�$�u~T�Y�h�ku�~����������L�p?J:\�+?NO��X�^0�]���h^�_�#d|=�ܜ����X�Aߣ-��NRU%�$�N��
�Q��������v$�#`Mn�B��ؘ��hk��)�rZ/8�'�����M�}����z�� ��r�W� 3���1�۴���PW�؇��+j�n��;b�)ҋ���M,���;�1�`Ӱ�fŀ^Nq�'�ъ"��`�,��$��a\4�:~�Fo
C���N�Q����1Ķ���Ǝ�':����2b'�vǹ�l<�>?�_ϼ˳��2�h�{������}���p�z� ,�)�uE���ە�:NEY���aGR�3�	��8���Q�҅��f�T��`���=rIb͝ƣ�q2E�[$@Q��*�S����qКw�v��Ϣ�؍w`���C�o<��[iP��;�ը\��S/s�v.FfbN�jx��<$v�d,X��Cַ`��6��w�?����~9"�"T��gQ�C�ob����w�����X�,9l}���a�Rtv��W9{ҕ�q��,s<�N��o���~~��0,��^�$�ˏn�ي�7ް�?�R�����W<5�v�4\+!�}�2���&r1;�[G�/*��y�(mn����Ъ��j�Ca�������OvE��x�^�E�'���:����ɰh�:B�h�����W�gh��9%g�h��L�+}r-� �m��:������L���%�]�Ϳ�W+7��KP�;�=?�:Vn~mc;l�t��Z�)�f���ة3d�nqU
sYs�9�KU��(m�wv��@.Fo_���ۛV>`m�`�'�]Qk�k�k5&O�`6w4�հ1P��L�IS!��3IJ�-��L,f8��l�p��F(Z+�i�o���1��̒q��1�z����(:����.�`XoD3O���X2F�즎}��t��b��7{^�$���hu�'��2��$ �k`�)�����nz��� �&h�λ��ETSn��]�N���ȿ�������:            x�32��22��2��b���� 5��         L   x�3����K)�,�4202�50�54S00�24�2��343�60�#�e��[Z���[�i��������1���b���� �ah     