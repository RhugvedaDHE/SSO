PGDMP         !    
            {            test    14.7    14.7 #   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24621    test    DATABASE     `   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE test;
                postgres    false            V           1259    33814    AdditionalSkills    TABLE     �   CREATE TABLE public."AdditionalSkills" (
    id integer NOT NULL,
    name character varying(255),
    doc_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."AdditionalSkills";
       public         heap    postgres    false            U           1259    33813    AdditionalSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AdditionalSkills_id_seq";
       public          postgres    false    342                       0    0    AdditionalSkills_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdditionalSkills_id_seq" OWNED BY public."AdditionalSkills".id;
          public          postgres    false    341            �            1259    24622    BloodGroups    TABLE     �   CREATE TABLE public."BloodGroups" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."BloodGroups";
       public         heap    postgres    false            �            1259    24626    BloodGroups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodGroups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."BloodGroups_id_seq";
       public          postgres    false    209                       0    0    BloodGroups_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."BloodGroups_id_seq" OWNED BY public."BloodGroups".id;
          public          postgres    false    210            �            1259    24627    CasteCategories    TABLE     �   CREATE TABLE public."CasteCategories" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."CasteCategories";
       public         heap    postgres    false            �            1259    24631    CasteCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CasteCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."CasteCategories_id_seq";
       public          postgres    false    211                       0    0    CasteCategories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CasteCategories_id_seq" OWNED BY public."CasteCategories".id;
          public          postgres    false    212            �            1259    24632    Cities    TABLE     �   CREATE TABLE public."Cities" (
    id integer NOT NULL,
    name character varying(255),
    district_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Cities";
       public         heap    postgres    false            �            1259    24635    Cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Cities_id_seq";
       public          postgres    false    213                       0    0    Cities_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Cities".id;
          public          postgres    false    214            �            1259    24636    Classes    TABLE     �   CREATE TABLE public."Classes" (
    id integer NOT NULL,
    name character varying(255),
    institute_type_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Classes";
       public         heap    postgres    false            �            1259    24639    Classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Classes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Classes_id_seq";
       public          postgres    false    215                       0    0    Classes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Classes_id_seq" OWNED BY public."Classes".id;
          public          postgres    false    216            �            1259    24640 	   Companies    TABLE     \  CREATE TABLE public."Companies" (
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
       public         heap    postgres    false            �            1259    24645    Companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Companies_id_seq";
       public          postgres    false    217                       0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
          public          postgres    false    218            F           1259    33676    Configs    TABLE     �   CREATE TABLE public."Configs" (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Configs";
       public         heap    postgres    false            E           1259    33675    Configs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Configs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Configs_id_seq";
       public          postgres    false    326            	           0    0    Configs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Configs_id_seq" OWNED BY public."Configs".id;
          public          postgres    false    325            �            1259    24646 	   Countries    TABLE     �   CREATE TABLE public."Countries" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    nationality character varying
);
    DROP TABLE public."Countries";
       public         heap    postgres    false            �            1259    24649    Countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Countries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Countries_id_seq";
       public          postgres    false    219            
           0    0    Countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Countries_id_seq" OWNED BY public."Countries".id;
          public          postgres    false    220            �            1259    24650    Courses    TABLE     $  CREATE TABLE public."Courses" (
    id integer NOT NULL,
    name character varying(255),
    course_code character varying(255),
    credit character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Courses";
       public         heap    postgres    false            �            1259    24655    Courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Courses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Courses_id_seq";
       public          postgres    false    221                       0    0    Courses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;
          public          postgres    false    222                       1259    25099    Degrees    TABLE     �   CREATE TABLE public."Degrees" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Degrees";
       public         heap    postgres    false                       1259    25098    Degrees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Degrees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Degrees_id_seq";
       public          postgres    false    282                       0    0    Degrees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Degrees_id_seq" OWNED BY public."Degrees".id;
          public          postgres    false    281            �            1259    24656    Departments    TABLE     �   CREATE TABLE public."Departments" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Departments";
       public         heap    postgres    false            �            1259    24659    Departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Departments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Departments_id_seq";
       public          postgres    false    223                       0    0    Departments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Departments_id_seq" OWNED BY public."Departments".id;
          public          postgres    false    224            �            1259    24660    Designations    TABLE     �   CREATE TABLE public."Designations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Designations";
       public         heap    postgres    false            �            1259    24663    Designations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Designations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Designations_id_seq";
       public          postgres    false    225                       0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
          public          postgres    false    226            �            1259    24664 	   Districts    TABLE     �   CREATE TABLE public."Districts" (
    id integer NOT NULL,
    name character varying(255),
    state_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Districts";
       public         heap    postgres    false            �            1259    24667    Districts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Districts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Districts_id_seq";
       public          postgres    false    227                       0    0    Districts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Districts_id_seq" OWNED BY public."Districts".id;
          public          postgres    false    228                       1259    25106    DocumentTypes    TABLE       CREATE TABLE public."DocumentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ParentId" integer
);
 #   DROP TABLE public."DocumentTypes";
       public         heap    postgres    false                       1259    25105    DocumentTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DocumentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."DocumentTypes_id_seq";
       public          postgres    false    284                       0    0    DocumentTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DocumentTypes_id_seq" OWNED BY public."DocumentTypes".id;
          public          postgres    false    283            �            1259    24668    Dummies    TABLE     �   CREATE TABLE public."Dummies" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value integer DEFAULT 0
);
    DROP TABLE public."Dummies";
       public         heap    postgres    false            �            1259    24671    Dummies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Dummies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Dummies_id_seq";
       public          postgres    false    229                       0    0    Dummies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Dummies_id_seq" OWNED BY public."Dummies".id;
          public          postgres    false    230            L           1259    33733 	   Durations    TABLE     �   CREATE TABLE public."Durations" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Durations";
       public         heap    postgres    false            K           1259    33732    Durations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Durations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Durations_id_seq";
       public          postgres    false    332                       0    0    Durations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Durations_id_seq" OWNED BY public."Durations".id;
          public          postgres    false    331            �            1259    24672    EmploymentTypes    TABLE     �   CREATE TABLE public."EmploymentTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."EmploymentTypes";
       public         heap    postgres    false            �            1259    24675    EmploymentTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EmploymentTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."EmploymentTypes_id_seq";
       public          postgres    false    231                       0    0    EmploymentTypes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EmploymentTypes_id_seq" OWNED BY public."EmploymentTypes".id;
          public          postgres    false    232            �            1259    24676    EntityTypes    TABLE     �   CREATE TABLE public."EntityTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."EntityTypes";
       public         heap    postgres    false            �            1259    24679    EntityTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EntityTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EntityTypes_id_seq";
       public          postgres    false    233                       0    0    EntityTypes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityTypes_id_seq" OWNED BY public."EntityTypes".id;
          public          postgres    false    234            �            1259    24680    EntityUsers    TABLE       CREATE TABLE public."EntityUsers" (
    id integer NOT NULL,
    user_id integer,
    entity_type_id integer,
    cio_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."EntityUsers";
       public         heap    postgres    false            �            1259    24683    EntityUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EntityUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EntityUsers_id_seq";
       public          postgres    false    235                       0    0    EntityUsers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EntityUsers_id_seq" OWNED BY public."EntityUsers".id;
          public          postgres    false    236                       1259    25114 	   EvalTypes    TABLE     �   CREATE TABLE public."EvalTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."EvalTypes";
       public         heap    postgres    false                       1259    25113    EvalTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EvalTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."EvalTypes_id_seq";
       public          postgres    false    286                       0    0    EvalTypes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."EvalTypes_id_seq" OWNED BY public."EvalTypes".id;
          public          postgres    false    285                        1259    25121    Experiences    TABLE       CREATE TABLE public."Experiences" (
    id integer NOT NULL,
    "case" character varying(255),
    "from" integer,
    "to" integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Experiences";
       public         heap    postgres    false                       1259    25120    Experiences_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Experiences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Experiences_id_seq";
       public          postgres    false    288                       0    0    Experiences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Experiences_id_seq" OWNED BY public."Experiences".id;
          public          postgres    false    287            "           1259    25128    Genders    TABLE     �   CREATE TABLE public."Genders" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Genders";
       public         heap    postgres    false            !           1259    25127    Genders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Genders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Genders_id_seq";
       public          postgres    false    290                       0    0    Genders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Genders_id_seq" OWNED BY public."Genders".id;
          public          postgres    false    289            $           1259    25136    GuardianTypes    TABLE     �   CREATE TABLE public."GuardianTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."GuardianTypes";
       public         heap    postgres    false            #           1259    25135    GuardianTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GuardianTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."GuardianTypes_id_seq";
       public          postgres    false    292                       0    0    GuardianTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."GuardianTypes_id_seq" OWNED BY public."GuardianTypes".id;
          public          postgres    false    291            &           1259    25174     InstituteProgrammeCourseSubjects    TABLE     h  CREATE TABLE public."InstituteProgrammeCourseSubjects" (
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
       public         heap    postgres    false            %           1259    25173 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq";
       public          postgres    false    294                       0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."InstituteProgrammeCourseSubjects_id_seq" OWNED BY public."InstituteProgrammeCourseSubjects".id;
          public          postgres    false    293            �            1259    24684    InstituteProgrammes    TABLE     �   CREATE TABLE public."InstituteProgrammes" (
    id integer NOT NULL,
    institute_id integer,
    programme_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."InstituteProgrammes";
       public         heap    postgres    false            �            1259    24687    InstituteProgrammes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteProgrammes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."InstituteProgrammes_id_seq";
       public          postgres    false    237                       0    0    InstituteProgrammes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."InstituteProgrammes_id_seq" OWNED BY public."InstituteProgrammes".id;
          public          postgres    false    238            �            1259    24688    InstituteStaffs    TABLE     �  CREATE TABLE public."InstituteStaffs" (
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
       public         heap    postgres    false            �            1259    24693    InstituteStaffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteStaffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."InstituteStaffs_id_seq";
       public          postgres    false    239                       0    0    InstituteStaffs_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."InstituteStaffs_id_seq" OWNED BY public."InstituteStaffs".id;
          public          postgres    false    240            �            1259    24694    InstituteTypes    TABLE     �   CREATE TABLE public."InstituteTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."InstituteTypes";
       public         heap    postgres    false            �            1259    24697    InstituteTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."InstituteTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."InstituteTypes_id_seq";
       public          postgres    false    241                       0    0    InstituteTypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."InstituteTypes_id_seq" OWNED BY public."InstituteTypes".id;
          public          postgres    false    242            �            1259    24698 
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
       public         heap    postgres    false            �            1259    24703    Institutes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Institutes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Institutes_id_seq";
       public          postgres    false    243                       0    0    Institutes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Institutes_id_seq" OWNED BY public."Institutes".id;
          public          postgres    false    244            T           1259    33798 	   MenuItems    TABLE     �   CREATE TABLE public."MenuItems" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."MenuItems";
       public         heap    postgres    false            S           1259    33797    MenuItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MenuItems_id_seq";
       public          postgres    false    340                       0    0    MenuItems_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MenuItems_id_seq" OWNED BY public."MenuItems".id;
          public          postgres    false    339            (           1259    25181    Modes    TABLE     �   CREATE TABLE public."Modes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Modes";
       public         heap    postgres    false            '           1259    25180    Modes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Modes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Modes_id_seq";
       public          postgres    false    296                        0    0    Modes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Modes_id_seq" OWNED BY public."Modes".id;
          public          postgres    false    295            Z           1259    41951    Notifications    TABLE     O  CREATE TABLE public."Notifications" (
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
       public         heap    postgres    false            Y           1259    41950    Notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Notifications_id_seq";
       public          postgres    false    346            !           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
          public          postgres    false    345            �            1259    24704    OTPs    TABLE     b  CREATE TABLE public."OTPs" (
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
       public         heap    postgres    false            �            1259    24709    OTPs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OTPs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."OTPs_id_seq";
       public          postgres    false    245            "           0    0    OTPs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."OTPs_id_seq" OWNED BY public."OTPs".id;
          public          postgres    false    246            �            1259    24710    OrganisationTypes    TABLE     �   CREATE TABLE public."OrganisationTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."OrganisationTypes";
       public         heap    postgres    false            �            1259    24713    OrganisationTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrganisationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."OrganisationTypes_id_seq";
       public          postgres    false    247            #           0    0    OrganisationTypes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."OrganisationTypes_id_seq" OWNED BY public."OrganisationTypes".id;
          public          postgres    false    248            H           1259    33710    StudentOtherSkills    TABLE     �   CREATE TABLE public."StudentOtherSkills" (
    id integer NOT NULL,
    name character varying(255),
    user_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."StudentOtherSkills";
       public         heap    postgres    false            G           1259    33709    OtherSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OtherSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."OtherSkills_id_seq";
       public          postgres    false    328            $           0    0    OtherSkills_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."OtherSkills_id_seq" OWNED BY public."StudentOtherSkills".id;
          public          postgres    false    327            X           1259    41939 
   OwnerTypes    TABLE     �   CREATE TABLE public."OwnerTypes" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."OwnerTypes";
       public         heap    postgres    false            W           1259    41938    OwnerTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OwnerTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."OwnerTypes_id_seq";
       public          postgres    false    344            %           0    0    OwnerTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."OwnerTypes_id_seq" OWNED BY public."OwnerTypes".id;
          public          postgres    false    343            *           1259    25188    Percentages    TABLE       CREATE TABLE public."Percentages" (
    id integer NOT NULL,
    "case" character varying(255),
    from_percentage integer,
    to_percentage integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Percentages";
       public         heap    postgres    false            )           1259    25187    Percentages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Percentages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Percentages_id_seq";
       public          postgres    false    298            &           0    0    Percentages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Percentages_id_seq" OWNED BY public."Percentages".id;
          public          postgres    false    297            N           1259    33755    Permissions    TABLE     �   CREATE TABLE public."Permissions" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Permissions";
       public         heap    postgres    false            M           1259    33754    Permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Permissions_id_seq";
       public          postgres    false    334            '           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
          public          postgres    false    333            ,           1259    25195    ProgrammeSemesters    TABLE     	  CREATE TABLE public."ProgrammeSemesters" (
    id integer NOT NULL,
    program_id integer,
    semester_id integer,
    active boolean,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
 (   DROP TABLE public."ProgrammeSemesters";
       public         heap    postgres    false            +           1259    25194    ProgrammeSemesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProgrammeSemesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ProgrammeSemesters_id_seq";
       public          postgres    false    300            (           0    0    ProgrammeSemesters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ProgrammeSemesters_id_seq" OWNED BY public."ProgrammeSemesters".id;
          public          postgres    false    299            �            1259    24714    ProgrammeSubjects    TABLE     �   CREATE TABLE public."ProgrammeSubjects" (
    id integer NOT NULL,
    programme_id integer,
    subject_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."ProgrammeSubjects";
       public         heap    postgres    false            �            1259    24717    ProgrammeSubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProgrammeSubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ProgrammeSubjects_id_seq";
       public          postgres    false    249            )           0    0    ProgrammeSubjects_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ProgrammeSubjects_id_seq" OWNED BY public."ProgrammeSubjects".id;
          public          postgres    false    250            �            1259    24718 
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
       public         heap    postgres    false            �            1259    24723    Programmes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Programmes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Programmes_id_seq";
       public          postgres    false    251            *           0    0    Programmes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Programmes_id_seq" OWNED BY public."Programmes".id;
          public          postgres    false    252            .           1259    25202    QualificationTypes    TABLE     �   CREATE TABLE public."QualificationTypes" (
    id integer NOT NULL,
    title character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."QualificationTypes";
       public         heap    postgres    false            -           1259    25201    QualificationTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QualificationTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."QualificationTypes_id_seq";
       public          postgres    false    302            +           0    0    QualificationTypes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."QualificationTypes_id_seq" OWNED BY public."QualificationTypes".id;
          public          postgres    false    301            @           1259    33469    Qualification_types    TABLE     %  CREATE TABLE public."Qualification_types" (
    id integer NOT NULL,
    qual_type character varying(255),
    qual_desc character varying(255),
    max_sem integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."Qualification_types";
       public         heap    postgres    false            ?           1259    33468    Qualification_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Qualification_types_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Qualification_types_id_seq";
       public          postgres    false    320            ,           0    0    Qualification_types_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Qualification_types_id_seq" OWNED BY public."Qualification_types".id;
          public          postgres    false    319            �            1259    24724    Roles    TABLE     :  CREATE TABLE public."Roles" (
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
       public         heap    postgres    false            �            1259    24728    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    253            -           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    254            �            1259    24729 	   Semesters    TABLE     �   CREATE TABLE public."Semesters" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Semesters";
       public         heap    postgres    false                        1259    24732    Semesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Semesters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Semesters_id_seq";
       public          postgres    false    255            .           0    0    Semesters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Semesters_id_seq" OWNED BY public."Semesters".id;
          public          postgres    false    256                       1259    24733    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false                       1259    24736    ServiceRoles    TABLE     �   CREATE TABLE public."ServiceRoles" (
    id integer NOT NULL,
    role_id integer,
    service_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ServiceRoles";
       public         heap    postgres    false                       1259    24739    ServiceRoles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ServiceRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ServiceRoles_id_seq";
       public          postgres    false    258            /           0    0    ServiceRoles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ServiceRoles_id_seq" OWNED BY public."ServiceRoles".id;
          public          postgres    false    259                       1259    24740    Services    TABLE       CREATE TABLE public."Services" (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    image_url character varying
);
    DROP TABLE public."Services";
       public         heap    postgres    false                       1259    24745    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public          postgres    false    260            0           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
          public          postgres    false    261            0           1259    25209    Skills    TABLE     �   CREATE TABLE public."Skills" (
    id integer NOT NULL,
    name character varying(255),
    active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying(255)
);
    DROP TABLE public."Skills";
       public         heap    postgres    false            /           1259    25208    Skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Skills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Skills_id_seq";
       public          postgres    false    304            1           0    0    Skills_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Skills_id_seq" OWNED BY public."Skills".id;
          public          postgres    false    303            \           1259    41965    StaffRemarks    TABLE     8  CREATE TABLE public."StaffRemarks" (
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
       public         heap    postgres    false            [           1259    41964    StaffRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StaffRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StaffRemarks_id_seq";
       public          postgres    false    348            2           0    0    StaffRemarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StaffRemarks_id_seq" OWNED BY public."StaffRemarks".id;
          public          postgres    false    347                       1259    24746    Staffs    TABLE     �  CREATE TABLE public."Staffs" (
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
       public         heap    postgres    false                       1259    24751    Staffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Staffs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Staffs_id_seq";
       public          postgres    false    262            3           0    0    Staffs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Staffs_id_seq" OWNED BY public."Staffs".id;
          public          postgres    false    263                       1259    24752    States    TABLE     �   CREATE TABLE public."States" (
    id integer NOT NULL,
    name character varying(255),
    country_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."States";
       public         heap    postgres    false            	           1259    24755    States_id_seq    SEQUENCE     �   CREATE SEQUENCE public."States_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."States_id_seq";
       public          postgres    false    264            4           0    0    States_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."States_id_seq" OWNED BY public."States".id;
          public          postgres    false    265            2           1259    25216    Streams    TABLE     �   CREATE TABLE public."Streams" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Streams";
       public         heap    postgres    false            1           1259    25215    Streams_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Streams_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Streams_id_seq";
       public          postgres    false    306            5           0    0    Streams_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Streams_id_seq" OWNED BY public."Streams".id;
          public          postgres    false    305            J           1259    33724    StudentAdditionalSkills    TABLE     �  CREATE TABLE public."StudentAdditionalSkills" (
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
       public         heap    postgres    false            I           1259    33723    StudentAdditionalSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentAdditionalSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."StudentAdditionalSkills_id_seq";
       public          postgres    false    330            6           0    0    StudentAdditionalSkills_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."StudentAdditionalSkills_id_seq" OWNED BY public."StudentAdditionalSkills".id;
          public          postgres    false    329            
           1259    24756    StudentEnrollments    TABLE     �  CREATE TABLE public."StudentEnrollments" (
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
       public         heap    postgres    false                       1259    24761    StudentEnrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentEnrollments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."StudentEnrollments_id_seq";
       public          postgres    false    266            7           0    0    StudentEnrollments_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."StudentEnrollments_id_seq" OWNED BY public."StudentEnrollments".id;
          public          postgres    false    267            B           1259    33603    StudentGuardians    TABLE       CREATE TABLE public."StudentGuardians" (
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
       public         heap    postgres    false            A           1259    33602    StudentGuardians_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentGuardians_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."StudentGuardians_id_seq";
       public          postgres    false    322            8           0    0    StudentGuardians_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."StudentGuardians_id_seq" OWNED BY public."StudentGuardians".id;
          public          postgres    false    321            4           1259    25233    StudentMarks    TABLE     �  CREATE TABLE public."StudentMarks" (
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
       public         heap    postgres    false            3           1259    25232    StudentMarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentMarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."StudentMarks_id_seq";
       public          postgres    false    308            9           0    0    StudentMarks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StudentMarks_id_seq" OWNED BY public."StudentMarks".id;
          public          postgres    false    307            6           1259    25240    StudentRemarks    TABLE     p  CREATE TABLE public."StudentRemarks" (
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
       public         heap    postgres    false            5           1259    25239    StudentRemarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentRemarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."StudentRemarks_id_seq";
       public          postgres    false    310            :           0    0    StudentRemarks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentRemarks_id_seq" OWNED BY public."StudentRemarks".id;
          public          postgres    false    309            8           1259    25247    StudentResults    TABLE     �  CREATE TABLE public."StudentResults" (
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
       public         heap    postgres    false            7           1259    25246    StudentResults_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentResults_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."StudentResults_id_seq";
       public          postgres    false    312            ;           0    0    StudentResults_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."StudentResults_id_seq" OWNED BY public."StudentResults".id;
          public          postgres    false    311            D           1259    33664    StudentSkills    TABLE     �   CREATE TABLE public."StudentSkills" (
    id integer NOT NULL,
    user_id integer,
    skill_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."StudentSkills";
       public         heap    postgres    false            C           1259    33663    StudentSkills_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."StudentSkills_id_seq";
       public          postgres    false    324            <           0    0    StudentSkills_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."StudentSkills_id_seq" OWNED BY public."StudentSkills".id;
          public          postgres    false    323                       1259    24762    Subjects    TABLE     �   CREATE TABLE public."Subjects" (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Subjects";
       public         heap    postgres    false                       1259    24765    Subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Subjects_id_seq";
       public          postgres    false    268            =           0    0    Subjects_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Subjects_id_seq" OWNED BY public."Subjects".id;
          public          postgres    false    269                       1259    24766    UserContacts    TABLE     �  CREATE TABLE public."UserContacts" (
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
       public         heap    postgres    false                       1259    24771    UserContacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserContacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."UserContacts_id_seq";
       public          postgres    false    270            >           0    0    UserContacts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."UserContacts_id_seq" OWNED BY public."UserContacts".id;
          public          postgres    false    271                       1259    24772    UserDesignations    TABLE       CREATE TABLE public."UserDesignations" (
    id integer NOT NULL,
    user_id integer,
    designation_id integer,
    employementtype_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."UserDesignations";
       public         heap    postgres    false                       1259    24775    UserDesignations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDesignations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."UserDesignations_id_seq";
       public          postgres    false    272            ?           0    0    UserDesignations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."UserDesignations_id_seq" OWNED BY public."UserDesignations".id;
          public          postgres    false    273            :           1259    25254    UserDocs    TABLE       CREATE TABLE public."UserDocs" (
    id integer NOT NULL,
    user_id integer,
    doc_type_id integer,
    filename character varying(255),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
    DROP TABLE public."UserDocs";
       public         heap    postgres    false            9           1259    25253    UserDocs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDocs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."UserDocs_id_seq";
       public          postgres    false    314            @           0    0    UserDocs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."UserDocs_id_seq" OWNED BY public."UserDocs".id;
          public          postgres    false    313            R           1259    33791    UserMenuItems    TABLE     �   CREATE TABLE public."UserMenuItems" (
    id integer NOT NULL,
    role_id integer,
    menuitem_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."UserMenuItems";
       public         heap    postgres    false            Q           1259    33790    UserMenuItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserMenuItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."UserMenuItems_id_seq";
       public          postgres    false    338            A           0    0    UserMenuItems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."UserMenuItems_id_seq" OWNED BY public."UserMenuItems".id;
          public          postgres    false    337            P           1259    33769    UserPermissions    TABLE     �   CREATE TABLE public."UserPermissions" (
    id integer NOT NULL,
    role_id integer,
    permission_id integer,
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."UserPermissions";
       public         heap    postgres    false            O           1259    33768    UserPermissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserPermissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."UserPermissions_id_seq";
       public          postgres    false    336            B           0    0    UserPermissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserPermissions_id_seq" OWNED BY public."UserPermissions".id;
          public          postgres    false    335                       1259    24776    UserPersonalDetails    TABLE     l  CREATE TABLE public."UserPersonalDetails" (
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
       public         heap    postgres    false                       1259    24781    UserPersonalDetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserPersonalDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."UserPersonalDetails_id_seq";
       public          postgres    false    274            C           0    0    UserPersonalDetails_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."UserPersonalDetails_id_seq" OWNED BY public."UserPersonalDetails".id;
          public          postgres    false    275            <           1259    25261    UserQualifications    TABLE       CREATE TABLE public."UserQualifications" (
    id integer NOT NULL,
    user_id integer,
    qualification_type_id integer,
    year integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone
);
 (   DROP TABLE public."UserQualifications";
       public         heap    postgres    false            ;           1259    25260    UserQualifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserQualifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."UserQualifications_id_seq";
       public          postgres    false    316            D           0    0    UserQualifications_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserQualifications_id_seq" OWNED BY public."UserQualifications".id;
          public          postgres    false    315                       1259    24782 	   UserRoles    TABLE       CREATE TABLE public."UserRoles" (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    preferred_role boolean DEFAULT false,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."UserRoles";
       public         heap    postgres    false                       1259    24785    UserRoles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."UserRoles_id_seq";
       public          postgres    false    276            E           0    0    UserRoles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."UserRoles_id_seq" OWNED BY public."UserRoles".id;
          public          postgres    false    277                       1259    24786    Users    TABLE     v  CREATE TABLE public."Users" (
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
       public         heap    postgres    false                       1259    24791    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    278            F           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    279                       1259    24792    dummy_table    TABLE     E   CREATE TABLE public.dummy_table (
    age bigint,
    name "char"
);
    DROP TABLE public.dummy_table;
       public         heap    postgres    false            >           1259    25269 	   religions    TABLE     �   CREATE TABLE public.religions (
    id integer NOT NULL,
    name character varying(255),
    is_active boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.religions;
       public         heap    postgres    false            =           1259    25268    religions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.religions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.religions_id_seq;
       public          postgres    false    318            G           0    0    religions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.religions_id_seq OWNED BY public.religions.id;
          public          postgres    false    317                       2604    33817    AdditionalSkills id    DEFAULT     ~   ALTER TABLE ONLY public."AdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."AdditionalSkills_id_seq"'::regclass);
 D   ALTER TABLE public."AdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    342    341    342            �           2604    33477    BloodGroups id    DEFAULT     t   ALTER TABLE ONLY public."BloodGroups" ALTER COLUMN id SET DEFAULT nextval('public."BloodGroups_id_seq"'::regclass);
 ?   ALTER TABLE public."BloodGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    33478    CasteCategories id    DEFAULT     |   ALTER TABLE ONLY public."CasteCategories" ALTER COLUMN id SET DEFAULT nextval('public."CasteCategories_id_seq"'::regclass);
 C   ALTER TABLE public."CasteCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    33479 	   Cities id    DEFAULT     j   ALTER TABLE ONLY public."Cities" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 :   ALTER TABLE public."Cities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    33480 
   Classes id    DEFAULT     l   ALTER TABLE ONLY public."Classes" ALTER COLUMN id SET DEFAULT nextval('public."Classes_id_seq"'::regclass);
 ;   ALTER TABLE public."Classes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    33481    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                       2604    33679 
   Configs id    DEFAULT     l   ALTER TABLE ONLY public."Configs" ALTER COLUMN id SET DEFAULT nextval('public."Configs_id_seq"'::regclass);
 ;   ALTER TABLE public."Configs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    326    325    326            �           2604    33482    Countries id    DEFAULT     p   ALTER TABLE ONLY public."Countries" ALTER COLUMN id SET DEFAULT nextval('public."Countries_id_seq"'::regclass);
 =   ALTER TABLE public."Countries" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    33483 
   Courses id    DEFAULT     l   ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);
 ;   ALTER TABLE public."Courses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    33484 
   Degrees id    DEFAULT     l   ALTER TABLE ONLY public."Degrees" ALTER COLUMN id SET DEFAULT nextval('public."Degrees_id_seq"'::regclass);
 ;   ALTER TABLE public."Degrees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281    282            �           2604    33485    Departments id    DEFAULT     t   ALTER TABLE ONLY public."Departments" ALTER COLUMN id SET DEFAULT nextval('public."Departments_id_seq"'::regclass);
 ?   ALTER TABLE public."Departments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    33486    Designations id    DEFAULT     v   ALTER TABLE ONLY public."Designations" ALTER COLUMN id SET DEFAULT nextval('public."Designations_id_seq"'::regclass);
 @   ALTER TABLE public."Designations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    33487    Districts id    DEFAULT     p   ALTER TABLE ONLY public."Districts" ALTER COLUMN id SET DEFAULT nextval('public."Districts_id_seq"'::regclass);
 =   ALTER TABLE public."Districts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    33488    DocumentTypes id    DEFAULT     x   ALTER TABLE ONLY public."DocumentTypes" ALTER COLUMN id SET DEFAULT nextval('public."DocumentTypes_id_seq"'::regclass);
 A   ALTER TABLE public."DocumentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            �           2604    33489 
   Dummies id    DEFAULT     l   ALTER TABLE ONLY public."Dummies" ALTER COLUMN id SET DEFAULT nextval('public."Dummies_id_seq"'::regclass);
 ;   ALTER TABLE public."Dummies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229                       2604    33736    Durations id    DEFAULT     p   ALTER TABLE ONLY public."Durations" ALTER COLUMN id SET DEFAULT nextval('public."Durations_id_seq"'::regclass);
 =   ALTER TABLE public."Durations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    332    331    332            �           2604    33490    EmploymentTypes id    DEFAULT     |   ALTER TABLE ONLY public."EmploymentTypes" ALTER COLUMN id SET DEFAULT nextval('public."EmploymentTypes_id_seq"'::regclass);
 C   ALTER TABLE public."EmploymentTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    33491    EntityTypes id    DEFAULT     t   ALTER TABLE ONLY public."EntityTypes" ALTER COLUMN id SET DEFAULT nextval('public."EntityTypes_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    33492    EntityUsers id    DEFAULT     t   ALTER TABLE ONLY public."EntityUsers" ALTER COLUMN id SET DEFAULT nextval('public."EntityUsers_id_seq"'::regclass);
 ?   ALTER TABLE public."EntityUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    33493    EvalTypes id    DEFAULT     p   ALTER TABLE ONLY public."EvalTypes" ALTER COLUMN id SET DEFAULT nextval('public."EvalTypes_id_seq"'::regclass);
 =   ALTER TABLE public."EvalTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    286    286            �           2604    33494    Experiences id    DEFAULT     t   ALTER TABLE ONLY public."Experiences" ALTER COLUMN id SET DEFAULT nextval('public."Experiences_id_seq"'::regclass);
 ?   ALTER TABLE public."Experiences" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    288    288            �           2604    33495 
   Genders id    DEFAULT     l   ALTER TABLE ONLY public."Genders" ALTER COLUMN id SET DEFAULT nextval('public."Genders_id_seq"'::regclass);
 ;   ALTER TABLE public."Genders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    290    290            �           2604    33496    GuardianTypes id    DEFAULT     x   ALTER TABLE ONLY public."GuardianTypes" ALTER COLUMN id SET DEFAULT nextval('public."GuardianTypes_id_seq"'::regclass);
 A   ALTER TABLE public."GuardianTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291    292            �           2604    33498 #   InstituteProgrammeCourseSubjects id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammeCourseSubjects_id_seq"'::regclass);
 T   ALTER TABLE public."InstituteProgrammeCourseSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    294    294            �           2604    33499    InstituteProgrammes id    DEFAULT     �   ALTER TABLE ONLY public."InstituteProgrammes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteProgrammes_id_seq"'::regclass);
 G   ALTER TABLE public."InstituteProgrammes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    33500    InstituteStaffs id    DEFAULT     |   ALTER TABLE ONLY public."InstituteStaffs" ALTER COLUMN id SET DEFAULT nextval('public."InstituteStaffs_id_seq"'::regclass);
 C   ALTER TABLE public."InstituteStaffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    33501    InstituteTypes id    DEFAULT     z   ALTER TABLE ONLY public."InstituteTypes" ALTER COLUMN id SET DEFAULT nextval('public."InstituteTypes_id_seq"'::regclass);
 B   ALTER TABLE public."InstituteTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    33502    Institutes id    DEFAULT     r   ALTER TABLE ONLY public."Institutes" ALTER COLUMN id SET DEFAULT nextval('public."Institutes_id_seq"'::regclass);
 >   ALTER TABLE public."Institutes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            
           2604    33801    MenuItems id    DEFAULT     p   ALTER TABLE ONLY public."MenuItems" ALTER COLUMN id SET DEFAULT nextval('public."MenuItems_id_seq"'::regclass);
 =   ALTER TABLE public."MenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    340    340            �           2604    33503    Modes id    DEFAULT     h   ALTER TABLE ONLY public."Modes" ALTER COLUMN id SET DEFAULT nextval('public."Modes_id_seq"'::regclass);
 9   ALTER TABLE public."Modes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    296    296                       2604    41954    Notifications id    DEFAULT     x   ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);
 A   ALTER TABLE public."Notifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    346    345    346            �           2604    33504    OTPs id    DEFAULT     f   ALTER TABLE ONLY public."OTPs" ALTER COLUMN id SET DEFAULT nextval('public."OTPs_id_seq"'::regclass);
 8   ALTER TABLE public."OTPs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    33505    OrganisationTypes id    DEFAULT     �   ALTER TABLE ONLY public."OrganisationTypes" ALTER COLUMN id SET DEFAULT nextval('public."OrganisationTypes_id_seq"'::regclass);
 E   ALTER TABLE public."OrganisationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247                       2604    41942    OwnerTypes id    DEFAULT     r   ALTER TABLE ONLY public."OwnerTypes" ALTER COLUMN id SET DEFAULT nextval('public."OwnerTypes_id_seq"'::regclass);
 >   ALTER TABLE public."OwnerTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    344    343    344            �           2604    33506    Percentages id    DEFAULT     t   ALTER TABLE ONLY public."Percentages" ALTER COLUMN id SET DEFAULT nextval('public."Percentages_id_seq"'::regclass);
 ?   ALTER TABLE public."Percentages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297    298                       2604    33758    Permissions id    DEFAULT     t   ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    334    333    334            �           2604    33507    ProgrammeSemesters id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSemesters" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSemesters_id_seq"'::regclass);
 F   ALTER TABLE public."ProgrammeSemesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299    300            �           2604    33508    ProgrammeSubjects id    DEFAULT     �   ALTER TABLE ONLY public."ProgrammeSubjects" ALTER COLUMN id SET DEFAULT nextval('public."ProgrammeSubjects_id_seq"'::regclass);
 E   ALTER TABLE public."ProgrammeSubjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    33509    Programmes id    DEFAULT     r   ALTER TABLE ONLY public."Programmes" ALTER COLUMN id SET DEFAULT nextval('public."Programmes_id_seq"'::regclass);
 >   ALTER TABLE public."Programmes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    33510    QualificationTypes id    DEFAULT     �   ALTER TABLE ONLY public."QualificationTypes" ALTER COLUMN id SET DEFAULT nextval('public."QualificationTypes_id_seq"'::regclass);
 F   ALTER TABLE public."QualificationTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301    302            �           2604    33511    Qualification_types id    DEFAULT     �   ALTER TABLE ONLY public."Qualification_types" ALTER COLUMN id SET DEFAULT nextval('public."Qualification_types_id_seq"'::regclass);
 G   ALTER TABLE public."Qualification_types" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    320    319    320            �           2604    33512    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    33513    Semesters id    DEFAULT     p   ALTER TABLE ONLY public."Semesters" ALTER COLUMN id SET DEFAULT nextval('public."Semesters_id_seq"'::regclass);
 =   ALTER TABLE public."Semesters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    33514    ServiceRoles id    DEFAULT     v   ALTER TABLE ONLY public."ServiceRoles" ALTER COLUMN id SET DEFAULT nextval('public."ServiceRoles_id_seq"'::regclass);
 @   ALTER TABLE public."ServiceRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    33515    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260            �           2604    33516 	   Skills id    DEFAULT     j   ALTER TABLE ONLY public."Skills" ALTER COLUMN id SET DEFAULT nextval('public."Skills_id_seq"'::regclass);
 :   ALTER TABLE public."Skills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    304    304                       2604    41968    StaffRemarks id    DEFAULT     v   ALTER TABLE ONLY public."StaffRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StaffRemarks_id_seq"'::regclass);
 @   ALTER TABLE public."StaffRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    348    348            �           2604    33517 	   Staffs id    DEFAULT     j   ALTER TABLE ONLY public."Staffs" ALTER COLUMN id SET DEFAULT nextval('public."Staffs_id_seq"'::regclass);
 :   ALTER TABLE public."Staffs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262            �           2604    33518 	   States id    DEFAULT     j   ALTER TABLE ONLY public."States" ALTER COLUMN id SET DEFAULT nextval('public."States_id_seq"'::regclass);
 :   ALTER TABLE public."States" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            �           2604    33519 
   Streams id    DEFAULT     l   ALTER TABLE ONLY public."Streams" ALTER COLUMN id SET DEFAULT nextval('public."Streams_id_seq"'::regclass);
 ;   ALTER TABLE public."Streams" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305    306                       2604    33727    StudentAdditionalSkills id    DEFAULT     �   ALTER TABLE ONLY public."StudentAdditionalSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentAdditionalSkills_id_seq"'::regclass);
 K   ALTER TABLE public."StudentAdditionalSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    330    330            �           2604    33520    StudentEnrollments id    DEFAULT     �   ALTER TABLE ONLY public."StudentEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."StudentEnrollments_id_seq"'::regclass);
 F   ALTER TABLE public."StudentEnrollments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            �           2604    33606    StudentGuardians id    DEFAULT     ~   ALTER TABLE ONLY public."StudentGuardians" ALTER COLUMN id SET DEFAULT nextval('public."StudentGuardians_id_seq"'::regclass);
 D   ALTER TABLE public."StudentGuardians" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    322    321    322            �           2604    33522    StudentMarks id    DEFAULT     v   ALTER TABLE ONLY public."StudentMarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentMarks_id_seq"'::regclass);
 @   ALTER TABLE public."StudentMarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    308    308                       2604    33713    StudentOtherSkills id    DEFAULT     {   ALTER TABLE ONLY public."StudentOtherSkills" ALTER COLUMN id SET DEFAULT nextval('public."OtherSkills_id_seq"'::regclass);
 F   ALTER TABLE public."StudentOtherSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    328    328            �           2604    33523    StudentRemarks id    DEFAULT     z   ALTER TABLE ONLY public."StudentRemarks" ALTER COLUMN id SET DEFAULT nextval('public."StudentRemarks_id_seq"'::regclass);
 B   ALTER TABLE public."StudentRemarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309    310            �           2604    33524    StudentResults id    DEFAULT     z   ALTER TABLE ONLY public."StudentResults" ALTER COLUMN id SET DEFAULT nextval('public."StudentResults_id_seq"'::regclass);
 B   ALTER TABLE public."StudentResults" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    312    312                       2604    33667    StudentSkills id    DEFAULT     x   ALTER TABLE ONLY public."StudentSkills" ALTER COLUMN id SET DEFAULT nextval('public."StudentSkills_id_seq"'::regclass);
 A   ALTER TABLE public."StudentSkills" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    324    323    324            �           2604    33526    Subjects id    DEFAULT     n   ALTER TABLE ONLY public."Subjects" ALTER COLUMN id SET DEFAULT nextval('public."Subjects_id_seq"'::regclass);
 <   ALTER TABLE public."Subjects" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    268            �           2604    33527    UserContacts id    DEFAULT     v   ALTER TABLE ONLY public."UserContacts" ALTER COLUMN id SET DEFAULT nextval('public."UserContacts_id_seq"'::regclass);
 @   ALTER TABLE public."UserContacts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270            �           2604    33528    UserDesignations id    DEFAULT     ~   ALTER TABLE ONLY public."UserDesignations" ALTER COLUMN id SET DEFAULT nextval('public."UserDesignations_id_seq"'::regclass);
 D   ALTER TABLE public."UserDesignations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272            �           2604    33529    UserDocs id    DEFAULT     n   ALTER TABLE ONLY public."UserDocs" ALTER COLUMN id SET DEFAULT nextval('public."UserDocs_id_seq"'::regclass);
 <   ALTER TABLE public."UserDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313    314            	           2604    33794    UserMenuItems id    DEFAULT     x   ALTER TABLE ONLY public."UserMenuItems" ALTER COLUMN id SET DEFAULT nextval('public."UserMenuItems_id_seq"'::regclass);
 A   ALTER TABLE public."UserMenuItems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    338    337    338                       2604    33772    UserPermissions id    DEFAULT     |   ALTER TABLE ONLY public."UserPermissions" ALTER COLUMN id SET DEFAULT nextval('public."UserPermissions_id_seq"'::regclass);
 C   ALTER TABLE public."UserPermissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    336    335    336            �           2604    33530    UserPersonalDetails id    DEFAULT     �   ALTER TABLE ONLY public."UserPersonalDetails" ALTER COLUMN id SET DEFAULT nextval('public."UserPersonalDetails_id_seq"'::regclass);
 G   ALTER TABLE public."UserPersonalDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274            �           2604    33531    UserQualifications id    DEFAULT     �   ALTER TABLE ONLY public."UserQualifications" ALTER COLUMN id SET DEFAULT nextval('public."UserQualifications_id_seq"'::regclass);
 F   ALTER TABLE public."UserQualifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    315    316            �           2604    33532    UserRoles id    DEFAULT     p   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN id SET DEFAULT nextval('public."UserRoles_id_seq"'::regclass);
 =   ALTER TABLE public."UserRoles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276            �           2604    33533    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278            �           2604    33534    religions id    DEFAULT     l   ALTER TABLE ONLY public.religions ALTER COLUMN id SET DEFAULT nextval('public.religions_id_seq'::regclass);
 ;   ALTER TABLE public.religions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    318    318            �          0    33814    AdditionalSkills 
   TABLE DATA           h   COPY public."AdditionalSkills" (id, name, doc_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    342   г      q          0    24622    BloodGroups 
   TABLE DATA           V   COPY public."BloodGroups" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    209   i�      s          0    24627    CasteCategories 
   TABLE DATA           Z   COPY public."CasteCategories" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   �      u          0    24632    Cities 
   TABLE DATA           ^   COPY public."Cities" (id, name, district_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    213   ��      w          0    24636    Classes 
   TABLE DATA           e   COPY public."Classes" (id, name, institute_type_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ߶      y          0    24640 	   Companies 
   TABLE DATA           5  COPY public."Companies" (id, organization_type_id, user_id, name, logo, state_id, district_id, taluka_id, country_id, landmark, street, pincode, phone, reg_no, reg_certificate, email, verified, active, "createdAt", "updatedAt", "deletedAt", village, description, website, owner_id, owner_type_id) FROM stdin;
    public          postgres    false    217   շ      �          0    33676    Configs 
   TABLE DATA           Y   COPY public."Configs" (id, name, value, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    326   �      {          0    24646 	   Countries 
   TABLE DATA           a   COPY public."Countries" (id, name, is_active, "createdAt", "updatedAt", nationality) FROM stdin;
    public          postgres    false    219   h�      }          0    24650    Courses 
   TABLE DATA           g   COPY public."Courses" (id, name, course_code, credit, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   ��      �          0    25099    Degrees 
   TABLE DATA           R   COPY public."Degrees" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    282   f�                0    24656    Departments 
   TABLE DATA           V   COPY public."Departments" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ��      �          0    24660    Designations 
   TABLE DATA           W   COPY public."Designations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   "�      �          0    24664 	   Districts 
   TABLE DATA           ^   COPY public."Districts" (id, name, state_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   w�      �          0    25106    DocumentTypes 
   TABLE DATA           d   COPY public."DocumentTypes" (id, name, is_active, "createdAt", "updatedAt", "ParentId") FROM stdin;
    public          postgres    false    284   ��      �          0    24668    Dummies 
   TABLE DATA           Y   COPY public."Dummies" (id, name, is_active, "createdAt", "updatedAt", value) FROM stdin;
    public          postgres    false    229   �      �          0    33733 	   Durations 
   TABLE DATA           T   COPY public."Durations" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    332   Z�      �          0    24672    EmploymentTypes 
   TABLE DATA           Z   COPY public."EmploymentTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   ��      �          0    24676    EntityTypes 
   TABLE DATA           V   COPY public."EntityTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   j�      �          0    24680    EntityUsers 
   TABLE DATA           q   COPY public."EntityUsers" (id, user_id, entity_type_id, cio_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �      �          0    25114 	   EvalTypes 
   TABLE DATA           T   COPY public."EvalTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    286   ��      �          0    25121    Experiences 
   TABLE DATA           f   COPY public."Experiences" (id, "case", "from", "to", is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    288   �      �          0    25128    Genders 
   TABLE DATA           R   COPY public."Genders" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    290   #�      �          0    25136    GuardianTypes 
   TABLE DATA           X   COPY public."GuardianTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    292   ��      �          0    25174     InstituteProgrammeCourseSubjects 
   TABLE DATA           �   COPY public."InstituteProgrammeCourseSubjects" (id, institute_program_id, program_subject_id, program_course_id, program_semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    294   ��      �          0    24684    InstituteProgrammes 
   TABLE DATA           t   COPY public."InstituteProgrammes" (id, institute_id, programme_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   �      �          0    24688    InstituteStaffs 
   TABLE DATA           �   COPY public."InstituteStaffs" (id, institute_id, staff_id, role_id, institute_type_id, current_sem, year, from_date, to_date, is_active, "createdAt", "updatedAt", department_id) FROM stdin;
    public          postgres    false    239   ��      �          0    24694    InstituteTypes 
   TABLE DATA           Y   COPY public."InstituteTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    241   ��      �          0    24698 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (id, institute_type_id, code, name, type, address, city_id, district_id, state_id, country_id, pincode, hoi_id, contact_person_name, contact_person_email, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    243   <�      �          0    33798 	   MenuItems 
   TABLE DATA           Y   COPY public."MenuItems" (id, name, url, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    340   B�      �          0    25181    Modes 
   TABLE DATA           P   COPY public."Modes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    296   �      �          0    41951    Notifications 
   TABLE DATA           �   COPY public."Notifications" (id, from_userrole, to_userrole, subject, message, is_read, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    346   b�      �          0    24704    OTPs 
   TABLE DATA           s   COPY public."OTPs" (id, otp_type, otp, attempts, details, is_active, "time", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    245   k�      �          0    24710    OrganisationTypes 
   TABLE DATA           \   COPY public."OrganisationTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   ��      �          0    41939 
   OwnerTypes 
   TABLE DATA           U   COPY public."OwnerTypes" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    344   +�      �          0    25188    Percentages 
   TABLE DATA           x   COPY public."Percentages" (id, "case", from_percentage, to_percentage, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    298   H�      �          0    33755    Permissions 
   TABLE DATA           V   COPY public."Permissions" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    334   e�      �          0    25195    ProgrammeSemesters 
   TABLE DATA           z   COPY public."ProgrammeSemesters" (id, program_id, semester_id, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    300   ��      �          0    24714    ProgrammeSubjects 
   TABLE DATA           p   COPY public."ProgrammeSubjects" (id, programme_id, subject_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   �      �          0    24718 
   Programmes 
   TABLE DATA           �   COPY public."Programmes" (id, name, is_active, "createdAt", "updatedAt", max_sem, programme_desc, type, stream_id, "order", doc_type_id) FROM stdin;
    public          postgres    false    251   r�      �          0    25202    QualificationTypes 
   TABLE DATA           ^   COPY public."QualificationTypes" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    302   ��      �          0    33469    Qualification_types 
   TABLE DATA           w   COPY public."Qualification_types" (id, qual_type, qual_desc, max_sem, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    320   ��      �          0    24724    Roles 
   TABLE DATA           i   COPY public."Roles" (id, name, is_active, "createdAt", "updatedAt", is_admin, type, display) FROM stdin;
    public          postgres    false    253   ��      �          0    24729 	   Semesters 
   TABLE DATA           T   COPY public."Semesters" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   \�      �          0    24733    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    257   ��      �          0    24736    ServiceRoles 
   TABLE DATA           f   COPY public."ServiceRoles" (id, role_id, service_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    258   v�      �          0    24740    Services 
   TABLE DATA           c   COPY public."Services" (id, name, url, is_active, "createdAt", "updatedAt", image_url) FROM stdin;
    public          postgres    false    260   �      �          0    25209    Skills 
   TABLE DATA           T   COPY public."Skills" (id, name, active, "createdAt", "updatedAt", type) FROM stdin;
    public          postgres    false    304   ��      �          0    41965    StaffRemarks 
   TABLE DATA           �   COPY public."StaffRemarks" (id, entity_user_id, section, remarks, userrole_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    348   }�      �          0    24746    Staffs 
   TABLE DATA           #  COPY public."Staffs" (id, user_id, employment_type_id, pan_number, joining_date, retirement_date, passport_no, emergency_contact_no, google_scholarship_id, father_husband_guardian_name, mother_toungue, office_email, employee_id, is_teaching, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    262   ��      �          0    24752    States 
   TABLE DATA           ]   COPY public."States" (id, name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    264   ��      �          0    25216    Streams 
   TABLE DATA           R   COPY public."Streams" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    306   y�      �          0    33724    StudentAdditionalSkills 
   TABLE DATA           �   COPY public."StudentAdditionalSkills" (id, additional_skill_id, user_id, title, duration_id, location, mode_id, is_active, "createdAt", "updatedAt", user_docs_id) FROM stdin;
    public          postgres    false    330   ��      �          0    24756    StudentEnrollments 
   TABLE DATA           �   COPY public."StudentEnrollments" (id, user_id, institute_programme_id, academic_year, current_semester, section, is_active, "createdAt", "updatedAt", subject_id, current_class) FROM stdin;
    public          postgres    false    266   �      �          0    33603    StudentGuardians 
   TABLE DATA             COPY public."StudentGuardians" (id, guardian_type_id, relation_with_user, student_enrollment_id, first_name, last_name, phone, email, aadhar_card_no, occupation, designation, work_address, annual_income, is_active, "createdAt", "updatedAt", is_deceased, is_employed, gender) FROM stdin;
    public          postgres    false    322   �      �          0    25233    StudentMarks 
   TABLE DATA           8  COPY public."StudentMarks" (id, student_enrollment_id, institute_programme_course_subject_id, eval_type_id, total_marks, marks_obtained, grade_obtained, active, "createdAt", "updatedAt", "deletedAt", program_id, board_university, institute_name, course, subject, year_of_passing, programme_semester) FROM stdin;
    public          postgres    false    308   t      �          0    33710    StudentOtherSkills 
   TABLE DATA           f   COPY public."StudentOtherSkills" (id, name, user_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    328   S      �          0    25240    StudentRemarks 
   TABLE DATA           �   COPY public."StudentRemarks" (id, student_enrollment_id, section, remarks, user_id, role_type_id, "createdAt", "updatedAt", "deletedAt", is_active) FROM stdin;
    public          postgres    false    310   *	      �          0    25247    StudentResults 
   TABLE DATA           �   COPY public."StudentResults" (id, student_enrollment_id, institute_program_id, eval_type_id, total_marks, total_marks_obtained, grade_obtained, month, year, active, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    312   L      �          0    33664    StudentSkills 
   TABLE DATA           e   COPY public."StudentSkills" (id, user_id, skill_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    324   i      �          0    24762    Subjects 
   TABLE DATA           S   COPY public."Subjects" (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    268   Y      �          0    24766    UserContacts 
   TABLE DATA           �   COPY public."UserContacts" (id, user_id, type, address, country_id, state_id, district_id, taluka_id, village, pincode, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    270         �          0    24772    UserDesignations 
   TABLE DATA           �   COPY public."UserDesignations" (id, user_id, designation_id, employementtype_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    272   =      �          0    25254    UserDocs 
   TABLE DATA           o   COPY public."UserDocs" (id, user_id, doc_type_id, filename, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    314         �          0    33791    UserMenuItems 
   TABLE DATA           h   COPY public."UserMenuItems" (id, role_id, menuitem_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    338   �      �          0    33769    UserPermissions 
   TABLE DATA           l   COPY public."UserPermissions" (id, role_id, permission_id, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    336          �          0    24776    UserPersonalDetails 
   TABLE DATA           �   COPY public."UserPersonalDetails" (id, user_id, firstname, lastname, email, phone, dob, aadhar, photo, physically_disabled, is_active, "createdAt", "updatedAt", castcategory_id, religion_id, gender, blood_group, nationality) FROM stdin;
    public          postgres    false    274   �       �          0    25261    UserQualifications 
   TABLE DATA              COPY public."UserQualifications" (id, user_id, qualification_type_id, year, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public          postgres    false    316   /      �          0    24782 	   UserRoles 
   TABLE DATA           p   COPY public."UserRoles" (id, user_id, role_id, preferred_role, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    276   "/      �          0    24786    Users 
   TABLE DATA           �   COPY public."Users" (id, uid, username, password, phone, email, phone_verified, email_verified, is_active, is_verified, is_deleted, "createdAt", "updatedAt", status, is_signed, verified_by) FROM stdin;
    public          postgres    false    278   �5      �          0    24792    dummy_table 
   TABLE DATA           0   COPY public.dummy_table (age, name) FROM stdin;
    public          postgres    false    280   �^      �          0    25269 	   religions 
   TABLE DATA           R   COPY public.religions (id, name, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    318   &_      H           0    0    AdditionalSkills_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdditionalSkills_id_seq"', 4, true);
          public          postgres    false    341            I           0    0    BloodGroups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodGroups_id_seq"', 8, true);
          public          postgres    false    210            J           0    0    CasteCategories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."CasteCategories_id_seq"', 4, true);
          public          postgres    false    212            K           0    0    Cities_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cities_id_seq"', 15, true);
          public          postgres    false    214            L           0    0    Classes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Classes_id_seq"', 12, true);
          public          postgres    false    216            M           0    0    Companies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Companies_id_seq"', 24, true);
          public          postgres    false    218            N           0    0    Configs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Configs_id_seq"', 1, true);
          public          postgres    false    325            O           0    0    Countries_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Countries_id_seq"', 34, true);
          public          postgres    false    220            P           0    0    Courses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Courses_id_seq"', 2, true);
          public          postgres    false    222            Q           0    0    Degrees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Degrees_id_seq"', 1, false);
          public          postgres    false    281            R           0    0    Departments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Departments_id_seq"', 5, true);
          public          postgres    false    224            S           0    0    Designations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Designations_id_seq"', 1, true);
          public          postgres    false    226            T           0    0    Districts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Districts_id_seq"', 11, true);
          public          postgres    false    228            U           0    0    DocumentTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DocumentTypes_id_seq"', 23, true);
          public          postgres    false    283            V           0    0    Dummies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Dummies_id_seq"', 2, true);
          public          postgres    false    230            W           0    0    Durations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Durations_id_seq"', 6, true);
          public          postgres    false    331            X           0    0    EmploymentTypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."EmploymentTypes_id_seq"', 3, true);
          public          postgres    false    232            Y           0    0    EntityTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."EntityTypes_id_seq"', 4, true);
          public          postgres    false    234            Z           0    0    EntityUsers_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."EntityUsers_id_seq"', 44, true);
          public          postgres    false    236            [           0    0    EvalTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."EvalTypes_id_seq"', 1, true);
          public          postgres    false    285            \           0    0    Experiences_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Experiences_id_seq"', 1, false);
          public          postgres    false    287            ]           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    289            ^           0    0    GuardianTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."GuardianTypes_id_seq"', 3, true);
          public          postgres    false    291            _           0    0 '   InstituteProgrammeCourseSubjects_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."InstituteProgrammeCourseSubjects_id_seq"', 1, false);
          public          postgres    false    293            `           0    0    InstituteProgrammes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."InstituteProgrammes_id_seq"', 6, true);
          public          postgres    false    238            a           0    0    InstituteStaffs_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."InstituteStaffs_id_seq"', 28, true);
          public          postgres    false    240            b           0    0    InstituteTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."InstituteTypes_id_seq"', 5, true);
          public          postgres    false    242            c           0    0    Institutes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Institutes_id_seq"', 3, true);
          public          postgres    false    244            d           0    0    MenuItems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MenuItems_id_seq"', 4, true);
          public          postgres    false    339            e           0    0    Modes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Modes_id_seq"', 2, true);
          public          postgres    false    295            f           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 36, true);
          public          postgres    false    345            g           0    0    OTPs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."OTPs_id_seq"', 109, true);
          public          postgres    false    246            h           0    0    OrganisationTypes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."OrganisationTypes_id_seq"', 23, true);
          public          postgres    false    248            i           0    0    OtherSkills_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OtherSkills_id_seq"', 75, true);
          public          postgres    false    327            j           0    0    OwnerTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OwnerTypes_id_seq"', 1, false);
          public          postgres    false    343            k           0    0    Percentages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Percentages_id_seq"', 1, false);
          public          postgres    false    297            l           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 3, true);
          public          postgres    false    333            m           0    0    ProgrammeSemesters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ProgrammeSemesters_id_seq"', 1, false);
          public          postgres    false    299            n           0    0    ProgrammeSubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ProgrammeSubjects_id_seq"', 4, true);
          public          postgres    false    250            o           0    0    Programmes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Programmes_id_seq"', 9, true);
          public          postgres    false    252            p           0    0    QualificationTypes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."QualificationTypes_id_seq"', 1, false);
          public          postgres    false    301            q           0    0    Qualification_types_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Qualification_types_id_seq"', 1, false);
          public          postgres    false    319            r           0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 15, true);
          public          postgres    false    254            s           0    0    Semesters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Semesters_id_seq"', 6, true);
          public          postgres    false    256            t           0    0    ServiceRoles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ServiceRoles_id_seq"', 19, true);
          public          postgres    false    259            u           0    0    Services_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Services_id_seq"', 3, true);
          public          postgres    false    261            v           0    0    Skills_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Skills_id_seq"', 19, true);
          public          postgres    false    303            w           0    0    StaffRemarks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StaffRemarks_id_seq"', 7, true);
          public          postgres    false    347            x           0    0    Staffs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Staffs_id_seq"', 27, true);
          public          postgres    false    263            y           0    0    States_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."States_id_seq"', 5, true);
          public          postgres    false    265            z           0    0    Streams_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Streams_id_seq"', 5, true);
          public          postgres    false    305            {           0    0    StudentAdditionalSkills_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."StudentAdditionalSkills_id_seq"', 43, true);
          public          postgres    false    329            |           0    0    StudentEnrollments_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."StudentEnrollments_id_seq"', 42, true);
          public          postgres    false    267            }           0    0    StudentGuardians_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."StudentGuardians_id_seq"', 58, true);
          public          postgres    false    321            ~           0    0    StudentMarks_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."StudentMarks_id_seq"', 46, true);
          public          postgres    false    307                       0    0    StudentRemarks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentRemarks_id_seq"', 69, true);
          public          postgres    false    309            �           0    0    StudentResults_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentResults_id_seq"', 1, false);
          public          postgres    false    311            �           0    0    StudentSkills_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."StudentSkills_id_seq"', 124, true);
          public          postgres    false    323            �           0    0    Subjects_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Subjects_id_seq"', 6, true);
          public          postgres    false    269            �           0    0    UserContacts_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserContacts_id_seq"', 95, true);
          public          postgres    false    271            �           0    0    UserDesignations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."UserDesignations_id_seq"', 31, true);
          public          postgres    false    273            �           0    0    UserDocs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."UserDocs_id_seq"', 523, true);
          public          postgres    false    313            �           0    0    UserMenuItems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."UserMenuItems_id_seq"', 5, true);
          public          postgres    false    337            �           0    0    UserPermissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."UserPermissions_id_seq"', 4, true);
          public          postgres    false    335            �           0    0    UserPersonalDetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UserPersonalDetails_id_seq"', 134, true);
          public          postgres    false    275            �           0    0    UserQualifications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserQualifications_id_seq"', 1, false);
          public          postgres    false    315            �           0    0    UserRoles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRoles_id_seq"', 144, true);
          public          postgres    false    277            �           0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 209, true);
          public          postgres    false    279            �           0    0    religions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.religions_id_seq', 2, true);
          public          postgres    false    317            �           2606    33821 1   AdditionalSkills AdditionalSkills_doc_type_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_doc_type_id_key" UNIQUE (doc_type_id);
 _   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_doc_type_id_key";
       public            postgres    false    342            �           2606    33819 &   AdditionalSkills AdditionalSkills_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdditionalSkills"
    ADD CONSTRAINT "AdditionalSkills_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdditionalSkills" DROP CONSTRAINT "AdditionalSkills_pkey";
       public            postgres    false    342                       2606    24831    BloodGroups BloodGroups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BloodGroups"
    ADD CONSTRAINT "BloodGroups_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."BloodGroups" DROP CONSTRAINT "BloodGroups_pkey";
       public            postgres    false    209                       2606    24833 $   CasteCategories CasteCategories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CasteCategories"
    ADD CONSTRAINT "CasteCategories_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."CasteCategories" DROP CONSTRAINT "CasteCategories_pkey";
       public            postgres    false    211                       2606    24835    Cities Cities_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Cities"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Cities" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    213                       2606    24837    Classes Classes_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_name_key" UNIQUE (name);
 F   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_name_key";
       public            postgres    false    215                       2606    24839    Classes Classes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_pkey";
       public            postgres    false    215                       2606    24841    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    217            �           2606    33683    Configs Configs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Configs" DROP CONSTRAINT "Configs_pkey";
       public            postgres    false    326                       2606    24843    Countries Countries_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_name_key";
       public            postgres    false    219                       2606    24845    Countries Countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Countries" DROP CONSTRAINT "Countries_pkey";
       public            postgres    false    219            !           2606    24847    Courses Courses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Courses" DROP CONSTRAINT "Courses_pkey";
       public            postgres    false    221            w           2606    25104    Degrees Degrees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Degrees"
    ADD CONSTRAINT "Degrees_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Degrees" DROP CONSTRAINT "Degrees_pkey";
       public            postgres    false    282            #           2606    24849    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    223            %           2606    24851    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    225            '           2606    24853    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    227            y           2606    25112     DocumentTypes DocumentTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."DocumentTypes"
    ADD CONSTRAINT "DocumentTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."DocumentTypes" DROP CONSTRAINT "DocumentTypes_pkey";
       public            postgres    false    284            )           2606    24855    Dummies Dummies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Dummies"
    ADD CONSTRAINT "Dummies_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Dummies" DROP CONSTRAINT "Dummies_pkey";
       public            postgres    false    229            �           2606    33738    Durations Durations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Durations"
    ADD CONSTRAINT "Durations_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Durations" DROP CONSTRAINT "Durations_pkey";
       public            postgres    false    332            +           2606    24857 (   EmploymentTypes EmploymentTypes_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_name_key" UNIQUE (name);
 V   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_name_key";
       public            postgres    false    231            -           2606    24859 $   EmploymentTypes EmploymentTypes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EmploymentTypes"
    ADD CONSTRAINT "EmploymentTypes_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EmploymentTypes" DROP CONSTRAINT "EmploymentTypes_pkey";
       public            postgres    false    231            /           2606    24861    EntityTypes EntityTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityTypes"
    ADD CONSTRAINT "EntityTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityTypes" DROP CONSTRAINT "EntityTypes_pkey";
       public            postgres    false    233            1           2606    24863    EntityUsers EntityUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_pkey";
       public            postgres    false    235            {           2606    25119    EvalTypes EvalTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EvalTypes"
    ADD CONSTRAINT "EvalTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EvalTypes" DROP CONSTRAINT "EvalTypes_pkey";
       public            postgres    false    286            }           2606    25126    Experiences Experiences_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Experiences"
    ADD CONSTRAINT "Experiences_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Experiences" DROP CONSTRAINT "Experiences_pkey";
       public            postgres    false    288                       2606    25134    Genders Genders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Genders_pkey";
       public            postgres    false    290            �           2606    25142     GuardianTypes GuardianTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GuardianTypes"
    ADD CONSTRAINT "GuardianTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."GuardianTypes" DROP CONSTRAINT "GuardianTypes_pkey";
       public            postgres    false    292            �           2606    25179 F   InstituteProgrammeCourseSubjects InstituteProgrammeCourseSubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects"
    ADD CONSTRAINT "InstituteProgrammeCourseSubjects_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."InstituteProgrammeCourseSubjects" DROP CONSTRAINT "InstituteProgrammeCourseSubjects_pkey";
       public            postgres    false    294            3           2606    24865 ,   InstituteProgrammes InstituteProgrammes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_pkey";
       public            postgres    false    237            5           2606    24867 $   InstituteStaffs InstituteStaffs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_pkey";
       public            postgres    false    239            7           2606    24869 &   InstituteTypes InstituteTypes_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_name_key";
       public            postgres    false    241            9           2606    24871 "   InstituteTypes InstituteTypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."InstituteTypes"
    ADD CONSTRAINT "InstituteTypes_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."InstituteTypes" DROP CONSTRAINT "InstituteTypes_pkey";
       public            postgres    false    241            ;           2606    24873    Institutes Institutes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public            postgres    false    243            �           2606    33805    MenuItems MenuItems_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "MenuItems_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MenuItems" DROP CONSTRAINT "MenuItems_pkey";
       public            postgres    false    340            �           2606    25186    Modes Modes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Modes"
    ADD CONSTRAINT "Modes_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Modes" DROP CONSTRAINT "Modes_pkey";
       public            postgres    false    296            �           2606    41958     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    346            =           2606    24875    OTPs OTPs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT "OTPs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT "OTPs_pkey";
       public            postgres    false    245            A           2606    24877 (   OrganisationTypes OrganisationTypes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."OrganisationTypes"
    ADD CONSTRAINT "OrganisationTypes_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."OrganisationTypes" DROP CONSTRAINT "OrganisationTypes_pkey";
       public            postgres    false    247            �           2606    33715 #   StudentOtherSkills OtherSkills_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."StudentOtherSkills"
    ADD CONSTRAINT "OtherSkills_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."StudentOtherSkills" DROP CONSTRAINT "OtherSkills_pkey";
       public            postgres    false    328            �           2606    41944    OwnerTypes OwnerTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."OwnerTypes"
    ADD CONSTRAINT "OwnerTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."OwnerTypes" DROP CONSTRAINT "OwnerTypes_pkey";
       public            postgres    false    344            �           2606    25193    Percentages Percentages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Percentages"
    ADD CONSTRAINT "Percentages_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Percentages" DROP CONSTRAINT "Percentages_pkey";
       public            postgres    false    298            �           2606    33760    Permissions Permissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Permissions" DROP CONSTRAINT "Permissions_pkey";
       public            postgres    false    334            �           2606    25200 *   ProgrammeSemesters ProgrammeSemesters_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."ProgrammeSemesters"
    ADD CONSTRAINT "ProgrammeSemesters_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."ProgrammeSemesters" DROP CONSTRAINT "ProgrammeSemesters_pkey";
       public            postgres    false    300            C           2606    24879 (   ProgrammeSubjects ProgrammeSubjects_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."ProgrammeSubjects"
    ADD CONSTRAINT "ProgrammeSubjects_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."ProgrammeSubjects" DROP CONSTRAINT "ProgrammeSubjects_pkey";
       public            postgres    false    249            E           2606    24881    Programmes Programmes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_name_key";
       public            postgres    false    251            G           2606    24883    Programmes Programmes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Programmes"
    ADD CONSTRAINT "Programmes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Programmes" DROP CONSTRAINT "Programmes_pkey";
       public            postgres    false    251            �           2606    25207 *   QualificationTypes QualificationTypes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."QualificationTypes"
    ADD CONSTRAINT "QualificationTypes_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."QualificationTypes" DROP CONSTRAINT "QualificationTypes_pkey";
       public            postgres    false    302            �           2606    33476 ,   Qualification_types Qualification_types_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Qualification_types"
    ADD CONSTRAINT "Qualification_types_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Qualification_types" DROP CONSTRAINT "Qualification_types_pkey";
       public            postgres    false    320            I           2606    24885    Roles Roles_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_name_key" UNIQUE (name);
 B   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_name_key";
       public            postgres    false    253            K           2606    24887    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    253            M           2606    24889    Semesters Semesters_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Semesters"
    ADD CONSTRAINT "Semesters_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Semesters" DROP CONSTRAINT "Semesters_pkey";
       public            postgres    false    255            O           2606    24891     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    257            Q           2606    24893    ServiceRoles ServiceRoles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_pkey";
       public            postgres    false    258            S           2606    24895    Services Services_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_name_key" UNIQUE (name);
 H   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_name_key";
       public            postgres    false    260            U           2606    24897    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public            postgres    false    260            �           2606    25214    Skills Skills_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Skills"
    ADD CONSTRAINT "Skills_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Skills" DROP CONSTRAINT "Skills_pkey";
       public            postgres    false    304            �           2606    41970    StaffRemarks StaffRemarks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT "StaffRemarks_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."StaffRemarks" DROP CONSTRAINT "StaffRemarks_pkey";
       public            postgres    false    348            W           2606    24899    Staffs Staffs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_pkey";
       public            postgres    false    262            Y           2606    24901    States States_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_pkey";
       public            postgres    false    264            �           2606    25222    Streams Streams_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Streams"
    ADD CONSTRAINT "Streams_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Streams" DROP CONSTRAINT "Streams_pkey";
       public            postgres    false    306            �           2606    33731 4   StudentAdditionalSkills StudentAdditionalSkills_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."StudentAdditionalSkills"
    ADD CONSTRAINT "StudentAdditionalSkills_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."StudentAdditionalSkills" DROP CONSTRAINT "StudentAdditionalSkills_pkey";
       public            postgres    false    330            [           2606    24903 *   StudentEnrollments StudentEnrollments_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_pkey";
       public            postgres    false    266            �           2606    33610 &   StudentGuardians StudentGuardians_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_pkey";
       public            postgres    false    322            �           2606    25238    StudentMarks StudentMarks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."StudentMarks"
    ADD CONSTRAINT "StudentMarks_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."StudentMarks" DROP CONSTRAINT "StudentMarks_pkey";
       public            postgres    false    308            �           2606    25245 "   StudentRemarks StudentRemarks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT "StudentRemarks_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."StudentRemarks" DROP CONSTRAINT "StudentRemarks_pkey";
       public            postgres    false    310            �           2606    25252 "   StudentResults StudentResults_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."StudentResults"
    ADD CONSTRAINT "StudentResults_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."StudentResults" DROP CONSTRAINT "StudentResults_pkey";
       public            postgres    false    312            �           2606    33669     StudentSkills StudentSkills_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_pkey";
       public            postgres    false    324            ]           2606    24905    Subjects Subjects_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Subjects"
    ADD CONSTRAINT "Subjects_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Subjects" DROP CONSTRAINT "Subjects_pkey";
       public            postgres    false    268            _           2606    24907    UserContacts UserContacts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_pkey";
       public            postgres    false    270            a           2606    24909 &   UserDesignations UserDesignations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_pkey";
       public            postgres    false    272            �           2606    25259    UserDocs UserDocs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."UserDocs"
    ADD CONSTRAINT "UserDocs_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."UserDocs" DROP CONSTRAINT "UserDocs_pkey";
       public            postgres    false    314            �           2606    33796     UserMenuItems UserMenuItems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserMenuItems"
    ADD CONSTRAINT "UserMenuItems_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."UserMenuItems" DROP CONSTRAINT "UserMenuItems_pkey";
       public            postgres    false    338            �           2606    33774 $   UserPermissions UserPermissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."UserPermissions"
    ADD CONSTRAINT "UserPermissions_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."UserPermissions" DROP CONSTRAINT "UserPermissions_pkey";
       public            postgres    false    336            c           2606    24911 2   UserPersonalDetails UserPersonalDetails_aadhar_key 
   CONSTRAINT     s   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_aadhar_key" UNIQUE (aadhar);
 `   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_aadhar_key";
       public            postgres    false    274            e           2606    24913 1   UserPersonalDetails UserPersonalDetails_email_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_email_key" UNIQUE (email);
 _   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_email_key";
       public            postgres    false    274            g           2606    24915 1   UserPersonalDetails UserPersonalDetails_phone_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_phone_key" UNIQUE (phone);
 _   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_phone_key";
       public            postgres    false    274            i           2606    24917 ,   UserPersonalDetails UserPersonalDetails_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_pkey";
       public            postgres    false    274            �           2606    25266 *   UserQualifications UserQualifications_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserQualifications"
    ADD CONSTRAINT "UserQualifications_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."UserQualifications" DROP CONSTRAINT "UserQualifications_pkey";
       public            postgres    false    316            k           2606    24919    UserRoles UserRoles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_pkey";
       public            postgres    false    276            m           2606    24921    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    278            o           2606    24923    Users Users_phone_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_phone_key" UNIQUE (phone);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_phone_key";
       public            postgres    false    278            q           2606    24925    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    278            s           2606    24927    Users Users_uid_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_uid_key" UNIQUE (uid);
 A   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_uid_key";
       public            postgres    false    278            u           2606    24929    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    278            �           2606    41972     StaffRemarks entity_user_section 
   CONSTRAINT     p   ALTER TABLE ONLY public."StaffRemarks"
    ADD CONSTRAINT entity_user_section UNIQUE (entity_user_id, section);
 L   ALTER TABLE ONLY public."StaffRemarks" DROP CONSTRAINT entity_user_section;
       public            postgres    false    348    348            �           2606    25274    religions religions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.religions
    ADD CONSTRAINT religions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.religions DROP CONSTRAINT religions_pkey;
       public            postgres    false    318            �           2606    33689 '   StudentRemarks student_enrol_section_id 
   CONSTRAINT     ~   ALTER TABLE ONLY public."StudentRemarks"
    ADD CONSTRAINT student_enrol_section_id UNIQUE (student_enrollment_id, section);
 S   ALTER TABLE ONLY public."StudentRemarks" DROP CONSTRAINT student_enrol_section_id;
       public            postgres    false    310    310            ?           2606    24931    OTPs unique_keys 
   CONSTRAINT     Z   ALTER TABLE ONLY public."OTPs"
    ADD CONSTRAINT unique_keys UNIQUE (otp_type, details);
 <   ALTER TABLE ONLY public."OTPs" DROP CONSTRAINT unique_keys;
       public            postgres    false    245    245            �           2606    33626 #   StudentGuardians uniquetypeGuardian 
   CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "uniquetypeGuardian" UNIQUE (guardian_type_id, student_enrollment_id);
 Q   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "uniquetypeGuardian";
       public            postgres    false    322    322            �           2606    24932    Cities Cities_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cities"
    ADD CONSTRAINT "Cities_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 L   ALTER TABLE ONLY public."Cities" DROP CONSTRAINT "Cities_district_id_fkey";
       public          postgres    false    213    3623    227            �           2606    24937 &   Classes Classes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "Classes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 T   ALTER TABLE ONLY public."Classes" DROP CONSTRAINT "Classes_institute_type_id_fkey";
       public          postgres    false    215    3641    241            �           2606    24942 !   Districts Districts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 O   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_state_id_fkey";
       public          postgres    false    264    3673    227            �           2606    24947 +   EntityUsers EntityUsers_entity_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_entity_type_id_fkey" FOREIGN KEY (entity_type_id) REFERENCES public."EntityTypes"(id);
 Y   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_entity_type_id_fkey";
       public          postgres    false    235    233    3631            �           2606    24952 $   EntityUsers EntityUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EntityUsers"
    ADD CONSTRAINT "EntityUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 R   ALTER TABLE ONLY public."EntityUsers" DROP CONSTRAINT "EntityUsers_user_id_fkey";
       public          postgres    false    235    3697    278            �           2606    24957 9   InstituteProgrammes InstituteProgrammes_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_institute_id_fkey";
       public          postgres    false    243    237    3643            �           2606    24962 9   InstituteProgrammes InstituteProgrammes_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteProgrammes"
    ADD CONSTRAINT "InstituteProgrammes_programme_id_fkey" FOREIGN KEY (programme_id) REFERENCES public."Programmes"(id);
 g   ALTER TABLE ONLY public."InstituteProgrammes" DROP CONSTRAINT "InstituteProgrammes_programme_id_fkey";
       public          postgres    false    3655    237    251            �           2606    24967 /   InstituteStaffs InstituteStaffs_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_faculty_id_fkey" FOREIGN KEY (staff_id) REFERENCES public."Staffs"(id);
 ]   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_faculty_id_fkey";
       public          postgres    false    3671    239    262            �           2606    24972 1   InstituteStaffs InstituteStaffs_institute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_id_fkey" FOREIGN KEY (institute_id) REFERENCES public."Institutes"(id);
 _   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_id_fkey";
       public          postgres    false    243    3643    239            �           2606    24977 6   InstituteStaffs InstituteStaffs_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 d   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_institute_type_id_fkey";
       public          postgres    false    239    3641    241            �           2606    24982 ,   InstituteStaffs InstituteStaffs_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."InstituteStaffs"
    ADD CONSTRAINT "InstituteStaffs_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 Z   ALTER TABLE ONLY public."InstituteStaffs" DROP CONSTRAINT "InstituteStaffs_role_id_fkey";
       public          postgres    false    239    3659    253            �           2606    24987 "   Institutes Institutes_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_city_id_fkey" FOREIGN KEY (city_id) REFERENCES public."Cities"(id);
 P   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_city_id_fkey";
       public          postgres    false    3605    243    213            �           2606    24992 %   Institutes Institutes_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 S   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_country_id_fkey";
       public          postgres    false    219    3615    243            �           2606    24997 &   Institutes Institutes_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 T   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_district_id_fkey";
       public          postgres    false    3623    243    227            �           2606    25002 ,   Institutes Institutes_institute_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_institute_type_id_fkey" FOREIGN KEY (institute_type_id) REFERENCES public."InstituteTypes"(id);
 Z   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_institute_type_id_fkey";
       public          postgres    false    241    3641    243            �           2606    25007 #   Institutes Institutes_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 Q   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_state_id_fkey";
       public          postgres    false    264    3673    243            �           2606    25012 &   ServiceRoles ServiceRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 T   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_role_id_fkey";
       public          postgres    false    3659    258    253            �           2606    25017 )   ServiceRoles ServiceRoles_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceRoles"
    ADD CONSTRAINT "ServiceRoles_service_id_fkey" FOREIGN KEY (service_id) REFERENCES public."Services"(id);
 W   ALTER TABLE ONLY public."ServiceRoles" DROP CONSTRAINT "ServiceRoles_service_id_fkey";
       public          postgres    false    3669    258    260            �           2606    25022 %   Staffs Staffs_employment_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_employment_type_id_fkey" FOREIGN KEY (employment_type_id) REFERENCES public."EmploymentTypes"(id);
 S   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_employment_type_id_fkey";
       public          postgres    false    262    3629    231            �           2606    25027    Staffs Staffs_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Staffs"
    ADD CONSTRAINT "Staffs_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 H   ALTER TABLE ONLY public."Staffs" DROP CONSTRAINT "Staffs_user_id_fkey";
       public          postgres    false    278    3697    262            �           2606    25032    States States_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."States"
    ADD CONSTRAINT "States_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 K   ALTER TABLE ONLY public."States" DROP CONSTRAINT "States_country_id_fkey";
       public          postgres    false    264    219    3615            �           2606    25037 A   StudentEnrollments StudentEnrollments_institute_programme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_institute_programme_id_fkey" FOREIGN KEY (institute_programme_id) REFERENCES public."InstituteProgrammes"(id);
 o   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_institute_programme_id_fkey";
       public          postgres    false    3635    266    237            �           2606    25042 2   StudentEnrollments StudentEnrollments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentEnrollments"
    ADD CONSTRAINT "StudentEnrollments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 `   ALTER TABLE ONLY public."StudentEnrollments" DROP CONSTRAINT "StudentEnrollments_user_id_fkey";
       public          postgres    false    3697    266    278            �           2606    33611 7   StudentGuardians StudentGuardians_guardian_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_guardian_type_id_fkey" FOREIGN KEY (guardian_type_id) REFERENCES public."GuardianTypes"(id);
 e   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_guardian_type_id_fkey";
       public          postgres    false    3713    322    292            �           2606    33616 <   StudentGuardians StudentGuardians_student_enrollment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentGuardians"
    ADD CONSTRAINT "StudentGuardians_student_enrollment_id_fkey" FOREIGN KEY (student_enrollment_id) REFERENCES public."StudentEnrollments"(id);
 j   ALTER TABLE ONLY public."StudentGuardians" DROP CONSTRAINT "StudentGuardians_student_enrollment_id_fkey";
       public          postgres    false    3675    322    266            �           2606    33670 )   StudentSkills StudentSkills_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."StudentSkills"
    ADD CONSTRAINT "StudentSkills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES public."Skills"(id);
 W   ALTER TABLE ONLY public."StudentSkills" DROP CONSTRAINT "StudentSkills_skill_id_fkey";
       public          postgres    false    304    3725    324            �           2606    25047 )   UserContacts UserContacts_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);
 W   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_country_id_fkey";
       public          postgres    false    3615    219    270            �           2606    25052 *   UserContacts UserContacts_district_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_district_id_fkey" FOREIGN KEY (district_id) REFERENCES public."Districts"(id);
 X   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_district_id_fkey";
       public          postgres    false    227    270    3623            �           2606    25057 '   UserContacts UserContacts_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_state_id_fkey" FOREIGN KEY (state_id) REFERENCES public."States"(id);
 U   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_state_id_fkey";
       public          postgres    false    3673    264    270            �           2606    25062 (   UserContacts UserContacts_taluka_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_taluka_id_fkey" FOREIGN KEY (taluka_id) REFERENCES public."Cities"(id);
 V   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_taluka_id_fkey";
       public          postgres    false    3605    270    213            �           2606    25067 &   UserContacts UserContacts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserContacts"
    ADD CONSTRAINT "UserContacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 T   ALTER TABLE ONLY public."UserContacts" DROP CONSTRAINT "UserContacts_user_id_fkey";
       public          postgres    false    3697    270    278            �           2606    25072 5   UserDesignations UserDesignations_designation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_designation_id_fkey" FOREIGN KEY (designation_id) REFERENCES public."Designations"(id);
 c   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_designation_id_fkey";
       public          postgres    false    225    3621    272            �           2606    25077 .   UserDesignations UserDesignations_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDesignations"
    ADD CONSTRAINT "UserDesignations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 \   ALTER TABLE ONLY public."UserDesignations" DROP CONSTRAINT "UserDesignations_user_id_fkey";
       public          postgres    false    278    3697    272            �           2606    25082 4   UserPersonalDetails UserPersonalDetails_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserPersonalDetails"
    ADD CONSTRAINT "UserPersonalDetails_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 b   ALTER TABLE ONLY public."UserPersonalDetails" DROP CONSTRAINT "UserPersonalDetails_user_id_fkey";
       public          postgres    false    3697    278    274            �           2606    25087     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    276    253    3659            �           2606    25092     UserRoles UserRoles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."Users"(id);
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_user_id_fkey";
       public          postgres    false    278    276    3697            �   �   x���1�0���>;j�؄��`AQaH�����j���[��.Us��4�#(0��;+�8�3��{rQ�wE�>�rR�aMQd1���eE�s�Z%ݵLu����ILp~[\V<������������f��7E�      q   �   x�}�1�0���>{Uˎ�$��^���ĈX�������{F��}�%M>k̮'��[���4���ʉV�$�����ӆ��f��#gZ��*�ᐱr�:�Ij��#� ��X��+���,�k��P���|ܮ�#&B�,�+_�����l�      s   m   x�}Ρ�0EQ=�x��u�ih%$$�#+6��YK�E���:�����O��B}�ةo\�Hْ�ַ���^YiƇ�ESٸU��		j5�Z9в� ��ŵ�&����6&      u   F  x�}�=o� ����Wd��8�Ö~LU�t�BU+MCD�?�d��Y�����a��ŧ��@p%/%/-H9MNY�k��Ʊ�]Q��4���U-h^�açUuz��tәU԰R�U �Ԙ��h�ӱ:;�	Í�-<�|:� �o�%�YGyz+���Q����1N�����7��;�=�O)��6_}�R,z�ja�+x��m�i�@_c�d'��:VV$	�1�ч���ش�yE"X�w<@V�(��++����1��X	��XV$�`q�kP���ƺʊ���Ï?_0��.w�7�UV$��ӏ�����ϭ�ʊ�� g�      w   �   x�}��j�0�����K�������nkJ��4���t0gD=����q���~>��	$��A[цCa+&�B|	V4<�(��oף��"�,�ml]1��e����eJ&�G�_�Ņ2��u�"��T`0�?�J�)�~�YW�~gچ8RT�+*���dn]V0�ZW��zSnY�"�����"��>�e�MI{�ޓ����'�F9��y���S�у�o��?M���      y   0  x��X[O�~6��O�e!ĉ��"���0+��hAZ�4�ʝ�C��B���T9}'L��&�T��WU�B��\ҫ�7��Iir�<59�w	�ߤ�uV���t}�TO�@�ß8
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
5&̆�	����>�Jw�.ӷ��3	K��}a�rے\U�B- �v��|�3$0�u��C������@����z8U�$-"1���'���gi-�hcr]H�\�;0��E�>�-wa3��jp$�j�!��mi�i�1�3O ]�_����G�=�q"D���3�`� ��~8'''�q(�      �   C   x�3�LLNLI��L��LM,�4202�&�%������������������������~Y�=... ��      {   t   x���;
�@ �z��e���$q:K=�͂[a��?�BT�<�s��3L $H[í�хc�| s�?�N�8=��>v�n����&��G��p��\�hd?㶮G^#".d6�      }   j   x�}̱
�0@�9�
wiI���]\]D��`���স���^m����m�f�vu��@H���(,�*��3ǒ���(��if[�|�Wx�A�T*��{�{����)      �      x������ � �         �   x�}ν
�0@��ާ�^�'IM6�Rw;v�RkA������P=��ߦu[XAH� W��D1��݉|R�_Q�n�C#�҅����P�V��}E׮m.G����9e_�C�x���~��W;�sҐT-��O��w���I�      �   E   x�3�t,.�,.I�+Q(�OK-.�/�,�4202�50�54P04�21�21�366�60�26�/����� �S      �     x���MK�0���̯�]2�ls�K���%��[��e��=��xr{�'��Ӻ\�.y����B�\ւ*N6N[f�|��I�wE/i*[�㚵"O"J�����c��G)��>�8�y��Z����۸mX�����<#h���h����i���%k�.Y��C|"��[FƔ�}������g$��aڈ���b'?^6,U���ǐ�ږҖ�}E�p�7?.7z�ߚr\1�ؼv�H�~�5����9"F���c�7��ߡM�3      �   f  x���=o�0���+�WDwv�o$UU*j�.Q0��S���R?���̯��|��LW���~��\�0��+J��<�C�^I�0ɳ��L~N�?���:I�IH��8gBE�/b��|����mK�g�4��0�}��JƊ���w��T0�e�UYW�Z�>O�/c���� m�6�Oo`he��o�{�/�]oqȈ�?d�lgn�t>��y��B2��G�\��a ��mA�W�01�{ӖM��SRw%��9]#�p"X�,��bXt͛�]�M�1Lk��z�5�;��n�_knw�`�^��+���<���s����޸�_qX������Q��=
Qq�Ky,^J�'~�c��r{�      �   G   x�3����,�4202�50�5�T04�2��24ӳ���60�26  k�e��Z��K=Cܦ��r��qqq ��      �   �   x�}�1�0F��>Ewd����i��� ��@b	R���I���/����I0��*���ؑ�Z��7l~䂟�����6���A��P�4�#������bň�/J)C*v3�����JE�J�|Lu�e���]	      �   o   x�3�H-�M�K�+�,�4202�50�52T04�25�26�335�60���rq:��%&�($%gcgne`�gbh��8TY.cN���ҢT<�Y��4I�+F��� ��3/      �   �   x�}�11��9��Ғ&�U�:99��9��=����^�<������`_����P��Őq+�Q82[����>�E��p���\r|�[�-g^Q�0^R�S�y(K�K���yE�~|��w�7.|>U#���?N���"���?�      �   �  x���K��0D��)z����g�1r��dlY=@����YrI��&K���ړ�S�C�d����.��[�jj�� ��Fv�B�"���r�(?�N�x�V�V���HQ�	c�9��9+��SI8�����Ct�&�Z�V#�$�[zW͵n)W�D�	k�	#��g�YJn*g��X*y�œH����Cd�M���JR rL��iqTk�Fc�T��F]��?�ji4P�[��:��X����Ye�lU����6$�:��	Ű���	ܪ��j{;&T��]�M�&n�	cI4Vs����zD
�K�O/�*)��F��I%���w[I;��Q�ș���Č�"��Jک�X�k]HH:C���*�b!<T��1��:ŌXY@[���T��7�z��'-*)��#ƾ���d	>p�q���J8 ���z"��B:���=���Uɰ�˾�#��E���0�P�PLk� �s��x[F߂��}<��)Yꭵ�J��z<b�n��ah���J���ބ?�x�$�r�R�0ݽ�AX)�|5�J�j�1 �L:O/x?�[[I;��å��b3�z.\7��J�v�ϣH�2�r��TrL��/�I=v�;�o%�Tr8=�&��c-���;�"�8�D��<;a��_��~I�W*E�q���B�1���!�T�|�;?�F\sxZ����v*��D�EG�      �   5   x�3�tvp�,�4202�50�54R04�21�26�3�4�6 ���r��qqq ��      �      x������ � �      �   d   x�}̫�  �|�W��> 7>�f1[l�R�{�A�g;c^T���aJ�����;
I�_Q`([��.jl6/E�)ץ�f?����ձ8��սg��\�-�      �   J   x�3���/�H-�,�4202�50�54U04�25�21�
i�Z���2�tK��1ƜE)��y���� �,�      �      x������ � �      �   g   x���A
�0D�us
�bHfў�cx̲�V��G���7�.n-j��q�h��((�t��3����W04���U�iphJԩ�U��}c/�p��<k�Jy      �     x�����1Ek�+�_X�CԫR�6A:F�!�����\��%)r��w�z^�ҍ�@i�`@���p��/����������A��B9������H�!-J�$��ȝ��jz��������q(�H4��!�������=�.=�ɨxA��p�R�vV�#[�7Y���� w�z���v��DK�kꋦ^�1�d����no�&mګQb�҈B�:D�J��@��&��H�	,[���l&(7)A
�&��#�Y����b.������W� 6�!=~���`��:=>e{x�(�؉N�8�ת�����E�mz�&=�2bi���xM�ޠXzڂ���s�	l4�+��]���-D�kU�#����l��-9�K��}��v����|M��j`d�o��h�EOP�u�UGs�_g������X/k�Q�hq�xTl�:�o�����$�;x�88�J���u\8���j`��߁�O��S90��T|���s��      �   �   x�}ϱ
�0����)�KC�.GhV'����B4��зw��8���Op��5�������25�A)8kX��j��"í,ϡl�:�9�#N;#�5n_Q��0�Lg+�oE�e�ci�8��c8�� j�k�WT8����F��9��w��_��P�      �   �   x�}��j�0Eף����H�C�jhK}���f	[X�����>B	8A:����Tp�x���6|4��l����U܇!�!Np�c�!_JG�)Q�(<[�ٵ���{B�M�M�����$J��ʥ�����bY�Xi��S!��$ln��j�X�0��R R%Rz<�O��u0&�S*ӿ�Z��B
��-&x�kl��[����^[7�����؎G�Ō�"�dR�r�K*��=O��B|R'y�      �   �   x�}�K�@���+܇3���좂�vѮ�蘂i8���L	����8�s����`�=j�ntg��mcu��u�T �S#����m�.<�<�~�d�N��߁��W¿�Ӣ��2j�>��PB�8���J�H��n�lj�d$M�d�_I�:�?=�O�>U͊�ٌ��R��\_��\���t%J� #d{R      �   >   x�3������K�,�4202�50�54R04�26�22ѳ�0�6 r��rq���Q��=... +�<      �   �  x���Mk1��֯P�%B3�֭Ph�1��B/��n\;x7	����i,�'+�b��g43�h:,@�ŷ���z��������l��n?��A��;z2v�{��Ս7�p��1
��Gi��'���D�B�Ye �Qv�~ݯ��n�����vO{���qC�������h����E-��~���n�?�0���Jan���#���]�m�j�-��Z��aX?m6��Ds0��(���,�W-��1Y8�|�m���a�e��>��K��_�w��ƇZ�2�>�K!��'�9f�:��[�AQ�)= S��Tj"�ҷ$HYӱ(Ce(@j"�9T[�@M�����TU&�ض$*%�&"��/'��2BH$ظ6*eM� R���TD.s4��4�� [�jUe�MuS�)i�4�낤�2Ȯ��-�O^�4F8[vIUe�]����ET�������B���1����0g�!QGc���cq0�+6�- �V�J-�dV]j�y���6,�JS�h�ҠҔ����2��6l��'� ��J�s�a6WհY�H�����Q�����[��0S7Rƪ쐪�0����Wߒ�L�jh4� ����p2W��N�BM�)��a��em�*�쭺��{��6j'�>;���T�VI`��ѽ�F��O����T�V��I�F��ժBr�2��U7��Ƣ���fN� .�Les�-͕b��.F��+(Ij*S�]�$L�a�r���wIeʼ#�M���:ɩ�T�Xپ:�2��|vj*�-c� 6�$�      �      x��{[�����s�+���vb!L&�z:
���'��EPQ��뿉UV���w��a�����#sf��Ë����/`������@	����(��CVn5��D�W(Kw��?�_@|���^>ȏ��ڻ��c����9����p@��s�����'�~ ������o�� �@�'�N��iK�=@|��S�=����A��|)��1�G���j�H3Ou�҂��C1
���%��m)}����?t!��'>�Q,ݤ�D	�[�w� �t)咎���p�F��)�&˝�yX��qH�J��|kJb9��3k�o�K��?4h��8�1�}Gr��ղ�W�Yd|�v;{[D��\B���@`"U�0~��b|w�%��؁�X�,MR��C��r���p��&�~R ���o_m{l#��~6c�����@,'�~��U5d:��N�W��s�T+�,���&�o���3��S���h�;L�s�ǲ�n�X�D2������4쫤iD<c��u1z.��������W���l͛�Ї�?��'�?)�I���_�=�~u��B�p\e����h��ނ�\ͅ����r��Jg����ً�Hp4"@�!�ә:$�rd7�W�����8bI1�����������<�Ve�L˙������jԈ4-��E%
iH<?��& �14���.ɼC�߹���t+&�b �P]�����j�I��>^f}'9��d69ݸ��,���|p4G����]��3�B���1Eb8�v�߶��Ɓ��Xي�� �+jP"��d��t,5\�̜��Lp��y��}u� _Gr�����A��c��K`	�U*^��7�D{�z�>�˫b����$2.�ҫd6�ҋ~��v8�u��J��Y���r�%@���ӻw\? ���M3�*�F�S�%h��[i�˶�5_�ak�8����HZ����a��9��N
��S�n���� �l�����߸:n �N}���؉��F&ɷe2�bP�F����e�n����&1S�D�U���j��\�J,��>���O��OĹO� �+O�;Vh�����N�Lqק��m)O�����)8�Y��kV��T4�K��Ñ=�й���͙���ӟ�Q���'
Xpo��m{�yM%�l�*;����!홤WgS��	nf����ʙ%~Hf�-�����n<��W���VLC�&#�����?���R�j��QI}/߈��B�cw��0�Rs�U�l�SL�H=a/(6P4No|��-��1Nb�nV�����{�Ayr���|��8�\�h��� M�v��,7���\%,7���Yg��#��C���+渖�{A�sHE!�����~����΄D��yO�e���/����}�����PT��K0�VO��O�F�%(���+qnԛ!�٪Z�G������1Q����b�L�2�F2n���q����FR�[�u:��p��I�;(��(a7%T�mp�g�zYHIZ�l~�+�dm�׶���3�6�P���?� �w�)ڣ�~��4D���w��	�#�!y�B*E��Ď����&�Ng�3�c�q@s�(k�f9�Q�~M���8�6�A-��f�7̨O
���j�#�F���U.�*1�?'	?�������0��.��g�uݪ�ם!:��mmt5�_�~�_�8���_�(�id@)c�Ko;�IG���x澪���3;�|v�Db��T�Us��t�Yj�(.����i��?B�]�_l��k<zn_�9]n&y�.wA��]Y`b��~�O��|����`_���������T5��HӨ8|�T�������C-��b�d�|�V8���پ^�S�>y_�� �v�7ŉ(��=WɌa)l��
iq��P�Ca��P-�~"Ƚg;)I�;�	���$^W�mֿ/�:���w�D��?-�o��qz��٘7�Ud��x����\���a��y 7c9K��������(#`3����� �����H�5�+o�����̧G(^�n0:�,��EO�oǬئ��v���W��U�ZsGv�s,���"=��Ѡ� �%��kȟ�Qf�$ٝ�K���e��m���iri���7��X�&�b�u�5Ʃ?��L���*�B��ڢ���V�c�L���ś���KZ��u1vCj&��� ��Q��S�wQ�H���{pKm$�ߦ�Nŀ�h�+y�u���'�����ɼ'�p9�v�@8��I��`�!�o�Y����ʇ[>�c:"�v��~�xg�'�DP��rqç�?��	�q�5����k���X��2X��?���=&�x����/q����diܠ8s�eկ'�z��_�g�w�CY���'�E��� �}��5����$���Ҳ#���a^Ψ���\�� �.Ӡ_lo�����pHR'w.�=�C�@��\�~퐩�2������sC�T��PNҾh��zK<
1ټ0�)3RM�X�a`q�%_¶����_��mh�OH|R��3M�]����zLBs�	Z�m�~���x>F1#]GD����g+�V�'���V$�O�n,a"��謬xK�q�����?	�'���y�w�&ke����4}�
�����Wn8���jS�����NBs�'t9�GF��B�'��P~UԜw�;�4h�q!���$]����z�����0]��<[ͅ����Qq��m��ϑUpޯ����D�7���P:O��8|/)���>S(����]=�/�g�C6��in긹�GQ@�g��#�U�Y	���N�P�V��d/�eg4�h0A���+I0uXC�akX�DQ�[�w�ɼ�痢�V]ۋc����Ue�84#{ʉ�pC�'q�t�y��/C�E��{�S_$Q-�?Q�7Q�g������>���0G\z'�l-b��}�2����-��U)�t��\�q�" �O,lE���$ɮ�޲�y����h�P�<\����[��4����/7��Lsͅ�d_��-V_0K��H��H�)=�h_�}�8\=�gZ�s�m�ht���>܏y"�hi�2g��CR�.}�T�1G�酚�}\a]�
��,6k�����8@�N���'N`��҅-���Y#i���������1C��z}��p�w�T����P��oٯ���x����-P�v�'<P�Ƹ�ۆ�m�h���|��r*y;���u�q~�x绡�\��3�:a�Θv�uُ����Aܺ�@_Ϧ7H�*�+�
�.�G4�b�wugQƛRK*W��P1sVbRj�L��7���e������8�^F��=��W�+ޞ�q�sL����m�ȉ�����izG�PJ\�s����C3����1���՘%��^��q�&�<�N�u�T�u�_�=��Ww���z��Y
�����-�o�}
��V�o�J��� 9M�*N�P��
�&�?���L���q�l�e�#�7r��Ze�1��|2��6�b�����X��k%�8_Fqe���p�����V�� Ŵ�RT�28���k`��M˶R�r�z |�wmç�4���`�*��G�_�~,rm��7C砦���N�W�f1�wE�O��o6�m��I�q�6��q����)t�e4����Wv��"��>I��dmy�kQ��U��$U�~�������۞�w��`��b��F��1�D��A�|I��}Ѷ�
�D��m���<(��~f��Wl�Y�����G>�[��ug�|�>�#�4S�5�ϼ�7�lk3J�p�i~���Ɓ�?ҁZ�H;3i�������7���l�3o�R�?(
���՟m{�Q��*�ͅwxRT'���zv�[��a��6�G�`?�q{`D�޿���y���E]}w�����u�öF��ڃ���+��@�3}ԷU@L/J��jz�QD�� Sͥg/�kb\V��F�� �s\�.�X1�B��B{L����n�b����5df������Ý&S�3�k�{Q1C�f�c�F�����y6���)T2Z{�q=��S���e�i6X3Jz9D��c 2  ���E�]�-4��-limm��,rG����"J��̹�9J~�7� XS��㲚k����$E`��[�i67f������0Ľq�$�u^z3�2� ��<��}�I�jȲwX�/�gZ�þkT�C����/���h6DJٗ�x�%ٌ9d�?�|��u�Z���-��*� ���-#�r�R|К���d���w��s�:Ř���Qd�]U]j%h<�ۨ�R��wV�SX�M��L5�r��R��A���=jR7{�Q�z-�h��P��f�I��\/�?�Ө�T"W��4�4>��?Q/e��ܹ�q�t*�u%���%!�5�[�ݛA�WV��z�I��^_��i� {T�|�SL��}��P98}��p���g.J���H�fgU��[�¢|L�YS�� 	0�9x��v�n�=�Q;uV�����0�pЃ�"b:_���f��!��=OD�C�&ʍ����ȿ[�ǶN������(��j�B���~�����]���go��(�B/�囐P�-G�@�_�'�?��[F%�j����Fօ��f:F�i7<Lɖ���ZdB��C6ޫL�%����|�w}!Uo��������-A�h��7�O��R���L�Z�Imd۫Xk[��C̼�+e�oIu4R���χ��^�C�r'�}͗YP׽�sͮ.������Z�l�=ظO�ᤜ��?��DT�|ⱉN�;�m&��,�β��b�3�� �խ��q�C~Nh�u�~�Q�k�ζ�4!��*g9��~U�u\�����U��q���%j7����咉'ʁ�I �q� 9��F|�P�
�'
(���RI˶�6�a��4�ik6�`���<�nnJ%��,d&f�+�Y?.p"
;���vd�̣�6žQ��$��i���F�׎	���i�h��R��
��'<3c�:�сVZ�����=����d��y�J�~v�{����.棹�����Z���i�Է\cg��z�����,']r�C�x�*�h̕xUg��ħyyV��jo֙�c��4K�m�l=���׿D{\����C�^N�E?O��{��������n�O�[$�/Tr�y�SA-����ߟ�K
�Z����ߠ=��Dx�Bz������t0�`n�[&�)��d����z���$��xx��h2ۦ�*ovz�
�q�Qϖ���ݖpf8("5u8h�y�����i&�����CE���5]��}�냏�Iع��h����2!A_�i9[�Q�ego3�e���*Z|%�{��EA�t��c]�֥�J[`ӽ�:
t4��h�l�Q�Bȳ��ݒ����ƨrsYYM1q�X&��W�)��	���86�M:���`�tn(��侠]�?-��Q�Krr�bF�R HR$�L{#�r�d�����A1s��@��,���CU���a�V�H�pd��/���-Qm���Tb3*d�9A�i�A��F���e?\�y.8+���΄� �����dF֟�e
b$l��{�m$���;+�L����Aw�C��ˡ��Hҽ��������&WGY�Q�&>�LF�I�j�%�׉y����B{T�NKުb�pq�t������x��3�O���9-�&���-��h���W��|�
��P�m�^�n}�@���M3�<cO{j8�g��N+�jN28�ѷ]A
��y�� �[g6^�~������L<�:ص��W`�n�?f̾������U��U�l-T3A9X!6����C�H/m�mT��cx���η���_Q�c��Tg�s'��r�dQ�}����؆ZYϜ��&GǓ/�]D͠��u�P�8�3��Ρ�l��s�J��dP���4G����n��1����J�_�Tj�m�hd:�*�;���TԂ댵w�h��i2M�n��(V��ZEcʋw�ϱ��_�{˚�7H ����z�P I̮�Բ�����ݰP$m�t����0'��Je�Hr�ۍWֹ��Ƀ����*�w�8~ˢ����7�V?�D	�Z�i���}��>�/xJ<3�J��0]bn�M�{�={��ćM��˓8(����M��r��B�#�s�J��$��Z)�˶���^����b�      �   i   x�}̻	�0 ��n
{1�'A�b� 6�)Ab淵P��a:cYr�B�ن�b논��Xkr^�_Q`8J8�R~�T������
cZc��lo��k�z*�o�/�      �      x������ � �      �      x������ � �      �   p   x�3�tO-QH-��,.����,�4202�50�52U04�2��26�34��60�26�/�e���Z�\R���W��0=C##\�!�rs��e�U�3��L���ېe�b���� ��4�      �      x������ � �      �   `   x�}ϻ�0E�ڞ�Ų�����/BD��ґ���$WGҜ��p-`����Nޕ��&�������Q����P9��<32d���+���3      �     x�}�?O1�g�StG�v�\�q�(K���Kń*�_�N��'(�^��{~�p>��س4^����v�����.OD��1�i�|����R�pvB3bE=��-d$��'�4,��]��WSc|=��!�ݟ���:%�F.�I�N�H��jș:�&�@�
��j,�*׺��C9ǺLp����}]`6/E�S��f������U��B�q���(b�%����}��`o�[����R�?gċC�_�X��      �      x������ � �      �      x������ � �      �   �  x���=o�0Eg�+�WX~���P�tI�uA`'��)��N��lUb;��� �q���\nF��%����gD�Js���DhF���W���8�C��\?iYIaBS��\�������Co��;?zSf�LC�A��~F=r7_�s�d���w��y=�qͪ�>�uf��,��N�5�q0���]��
@��d%��$�\��
}��dG��3��3�ŔT��h�M}���M�8�J���)���}�a�v��M�."�,i�.�ww��D/M;~��"fQk�0[HS0v*��cBX���0e2=���V�{}^�kS%�߭ךq,h��䨿�6~j���NL��N�i*�6���� d�}l�]`K.r]�h�7S�J���9uD����.����+w      �   �   x�}�=!@�z��f'�����ki�O��M���k��_��˳BgOF&�+I5I� |4�����`�]�ǵǨ#�vĴN[.}e��ǡ�TX�R�_�'�d�����s(�l��JS�Ú_}�
'#��x&D|��V5      �   m  x�u�뎛0���d5�[�]*E.8�wS_Z��;�_ �'D����cÀq�(AJu��ќ�������C|!�o)3 �J�gy�!z;Ė�BB�`㽭�^�g�.!ژ�_���>��3�:��l�x��E�w����<�3�y�I�Ж��0R�t�C�DR0��"C���zZ�n��i4Q�i�d��v��笿���\��2��逰m���4�� �=�����Т��Ka9��
r�H��Ʒv�U�燩r$��-(x�TL[���I4������(iw��t�ni���NRL���	��y#zE��ҋ�"퐗ق�-��;H�b�=)��	ڤ��Cz�ŵ�LU��zm�e���D���sŻf��-Q���QȇwL�\� �
���{3�[��m=d�~'=٫�q�M����_�/=��1��[��Mi�{��#��ݐ����6�*_��%�G����|о�d��Su����,7�w��\?S?�W.�"��T��ym��f�e�m�.�Wo�*�_���Ǒ�'���ن�2�rT}?�w�<�g�Gh@�7�l4sˑy9z/�\�Nf���cǶ W���P��ОN����oq1G�P�GP�"́����>��������B8�      �   �   x���M
1�ur
�2����,��c��U(�|$��@9O��rt9�nd�m��0�w���oQR�o#�R*k�s����0n���EK����!E#��w��<��Q��z"�C���JY�eG�Z�uO1�`ʊ_��%�@ZWXy4D|�4��      �   �   x���1�0��9���k��ftD�:v�mIR�	M*��-J��p���� ;Lc��'�)��������_�� 7�,1$3!3�*M�
q+���O��\���|��X��h]���B���5cQ�y��Į�/�\ m�@�Nk
!��ZSu�>y�!�W�9�BO�      �   �  x���Mo�0���Wp���Iߪ
-��
�{��E"����.�~î�P��D��536��b(�l�Ŕ�%%���,�',$�ߤ]զ�T�(�.��&r�唤�/�2x��Cw�q�5��i�s�,åH�_���S�sxU�Ä�Lb��"b�xRs�k�s�y3Ɋk	)X�7ev��i4��z:�S�6)��g�w��9}B9lT�^&z�Ue;��C<w�Vj둹$Xr�q�H��4M�JXl�o	J��2��8һ�u�#�q��G�]�ʅ ���X�^�ހ~ڭ~��y�I4�Ko��u1N7�}j�z���)�����^�B�J�3�������=��
{)�t�m2�������'�a�L};C���J�$v�K���{�8�c��`�������S$I4�K����~e��<�Z{      �   o   x�}�A
�0@���)f_�Ʉ�f��u#5)FH�~�W\���๕�(/{��ҷ�ꠁ���c�\0/Ʊ�<X��}����:�J%�K����hz���_ŹG���*`      �   �  x���[��0E��U�`�/=��2f�(�)��3���I�sP	��~x����r��®�3ƌ�S����;��:ը�����M��c���cy����[�b��^�(��%u��S�-3��޲�k���j(�c��r������V�Y�<�$[�c��Z<
��l5�ߠ$�0rfW�P 
e�˞A�X�Rcַ3�(��[�|^=>���4�P���+H��-������LM]���ϲ�ih9�[ʁ2r�v���$�!P
��9҈�ڙc!^%�m�O��SF��jLTW�G�l+��f�$騝4�2�/(P5�V���{�l�HD^�ͥ@-Pޚ���d�6f���/(0*��9ۉ�ޏ����(0�g�>��2:�%�=3f�l��g��e�^���,��9�l�HQٵ�XͲ�k� [.E��kf
�՝��ݤ�,�}M�vE�mԝo�I�ź��)�͂��_0�d�vN㫂K^=�� �G�4{      �   t   x�3��M�H,J,�()J�4�,�4202�50�52T04�2��21�326�60�26�/�e�鞏�K+S#=CSc즠�r�p�����)8������iL��L9��KK2�hd� VCD      �   `   x�3�N�L�KN�,�4202�50�54U04�25�21�3�60�26�'�e�霟��ZD�!Ɯ�E%�`����X�����C�1���������� .E�      �     x���Kk�0��֯�\�y����B �n�Q}��i��:NB�}%���"����O3g�`h Ts���4�j��~N/�x=��ҠB�)�nA�I2�JR�`Y�[!������ㆹm��q��6�4���@ 5������n�Ǯo�D�'�����Q ���aS�D���DX�n������C�18���\g�*�@����a�����Mj�4d�ΥJ$Ь�7�	�K�s?]=s��� .H��©���Ԑ�9�46�0��JHźt��Z	�\�J�b(�ҪSW�8Azm�?�^��u�-�V�j���^�6��RYZ#Ѯ^L�4�Sk��A9I��jl�� �l2����e+3�����_��S&.'��O����{�1tq�1��9�Wq��t�7-�Rɧ���Wֺ�gc�y�n+ٟLH�ҭWS��Q�ʙ]dr�X�Y�G�盾���2��i��2e���&+�WB�tQz�KPUek�Z��:������~�q�OY^m\�BI .Hu��L�d�{������w�sUQ+ߤ�/�t�      �   �  x���Q�!D�����!r�=F�0�Դ{"��l��L�� A[������'p����&yQ"�r~e%�G�@��fQ�\^�#�Q)�R/�G5p�`���/�#�����@OD����kR����S�Fʡ�3���Qkj����"Q��g���2?��T���`�8t�Ɯ���9_]���dnA����5U���L�}R(�j rǎ���XkY�c;��
 G����*#�.�h�Cu�^u���LgL�o�w�}|���A�����	'����* 	�D����E<����v@�ש�^�(���z�>������W]���J�Is=���|�=���7�!~PF���@�a'q^g���ao⫥��ň�c�9)����G��8��s-3*ݛ=:��l�&>�t�5wF@5rE]2Ry�
�+}�"0�^">�P7���D��&n$�n<Q���F��O��n��F�>�h^=�`A ����NM5��l]p�X2;���,?������Ek7���>���a�!~ӆ����n(�iv�˗w��i{_�ǂ$�{���m�<��g����D���}�Z��������������.k�:�~�Ww���C�}���D�|��Uw�H�yƧ��6-��F�#���Gu���L�;>ʦe�(�5)W9�����4u���̖��Z-'�U����:(�<��!3��M�%��g�Y���wz)zB]u}ӊ�x�P�PZ��g/pb�6� �e��'���|dP      �   Q  x��W�n�8}����ކ=��[E�&H����v�Mm���`�~�"%�B�Aw�86t,�Ù93�0��o	3䳫��P��VU�
"A	 J�_Y��뇭+~d��[���aU>����X�?�^�����N�A���5��L��`2#�+
��'T�˙�%d���Є���_sr�QJ�@�1^��R���GrS�*\ ^t��-����GJ���P�sP��7�l&DT(��y6�����m>R]ߖ�@s!2��a�B#�����ZW�5Y���N4g�df��d뢑����H�Z��w	])z�d. �m;�R���2)L� T\�.�q�1,?������������_Ҝ�Fqo��rd�H�	Knݖ|(�M�a(�v[��G�cU;ڰS�X�c&�,\�a)&ѠN�K����n��|J�˭����eZ� ��Dx& _����@���j� ���}}����WR��αop,$�Ya{j��5�،�ާ�ݧ|�\�ր����9�А�Ew��~[�9�з���kkJU��r,�c{ʴ�i4�k,�pn�����a�6Ze]K�Xu�=?����)�:c�$hƨ�3���(ySm��p���-M������ؔ�+t~�5���:8�rN����bw�9���'����fNm:�
G�:+�F��T|������>�2�K:2~#@�LH3%����8�8��5]�S$�t��m��U`a�b"�]Feʊ>S���iϝ�Y%(�ǯ���Q�����#�y�(�����TQo���]�Kc�RѴ����"r������B�6��۽_#n��{��'���̸H`g2���F��X����w�W��^+��.D3=ԖD�6�1��(J��ח��!�MJ㷣�����Oz?�q;?tM�Sܝ�Dߟ�4������]�j��E�(����|p{"$��	���s��Nd��.�u�Y�G�S�U���4R�m����y����wh�[�,��À*�o4���'�~M�Q^l(���h4#��S��z��&�O����8�>�ء]�h,�؇QZ׮H��E.yޮu��N�gE�^��e���_l��7      �   �  x���Mo�8��ԯ�m~S�m�H�n �@��:�-���i�ߑ�胢,h;2<��ÙwFJaɷ��4Q�����B.�_pKA�B㛁���N%�����/3��̎�d}����Zя�vGכ]Y�	!��
�I�����\1!]�!���t��K��ȏU�����mN֛"?l��8�("ܙF;�� R�o͸M<ddDCz�B!�%�A�7yw �
ϸ�O�T�^��g�|(~�Ǫ8���҇�T��]���1��@���IW�^�����n].�v����>os�8<��mV>���rE!Q@���S����ZAM�J�
ɴk�r�J���K��ղŘt�d�툌u���,��`R���*? ��F��6�p,N奏�s-�}Q���NȎ�w��PǷ��4��tJ	o|��\��0?P�f�
�3}���爟�j�T���dR!R���D�<޵����5-�I+"x�h�a��w����_"�1;�޵IU
��T�I�Ɣ9vJ3?���D��Pz��o��0܌[�d���L�]���T�-�n�|��ڪY$�u�"���<~X�E X�umpU�;7p��h��A����|<���#}`��y>���Z�4	Z:�+��>�	1L�[<z[�5ǖ`	���G�f��
�gB�h4�͓V[��}��Bm�!�}�V�G綌�ъ[2���n�XP�$l�'���և�kUl����t�mۆr�5nh]���ltu�5�NE
OHtCw�nΩ���B�B�����2��"��&��-�h:
��![<:_=ݞ����g��T6n���F�F�0:����4D��D��.+��4Q���R�yE�X$~F���ʡQ�ka<�ޡ-]o�=4@]��o	F�-��	|@0�=��O��n����2`@o��|S�'����ʦ�cpuW�<��^�F�zf����t��Ȯ���$I~?�]b      �   �  x���Oo�0���S�ެ��|�R.m�������Bd�F���&�&� !a�y������C��;ѧ���>��41wxf_h��#-=mBw��fxJ���]�p���������U �*��B�;��`<�^��I�	O���c�K�C�bC�m�t-�].�PB����cK�
9�.�?(M����,���k�cʭQ6Db�3�C��"2�B|~m�L�ǒ�2������$�zF"���ڢSb=�M�X��"�_`������s�,`����n0��YܸZzp�r�f�R��X�.�kf��^�f���cS%V�7�E� )��K�jX7���>3�j��/0���K`��\���ͥ�3a��q�gέP�D"ěI�7��)y�׸��@-o������;Lkh`ڨ�ÖJ����&F�2C1"嘒R�}���_ow���[������B�|�`      �     x����n�0�g�)�"xx�8):4�5+�1aY
HA߾�帖L�-�����.5bz�!����}�����; F�hSQ���Dh�B���/�����uF0�4��6�cٗS�ؚ��8�6ٕ�G;�\���?°��D�z�0SOE3B�o��Bw�o��xp�x�Bڰ�(Pe�B�@�C'���w~����A���Xm�gٟ�����u�����/�/�ɞg{��m�z����A.HM�T'���^���.]�W"�+�47m(��d�r�Yr�w�u�>c����HUL�B���t�T5B%�5hr��Mb�8)ˤ�:� ��4�4�TZ41#\T��%R�f���?ZW�!\��{�ZOꅻ@�WN G��v��Vdk#y�C�d�ډ��D�9[ev!5�=��s�3P��yQ���u��֔09?Й��3�'����p�s�����2��p�
 t��v^��mpSn��s6�>�t��#���R�OO�(�T�#�\��T���x%���7�܁�      �      x������ � �      �   �  x���K�� �qXE�  c�+�e��UĨ�2(��ٍ����7�����o# >�Tv��� E��rcxOC�/�������rmTc�tsi�:t:���G�����-sM��z/3Ꭹe�?��49�i�ٜ�e��x1G���MX��f����z)*���H��p���p��A��B��B�1��x@�����n3�;���a�
4;Oi`�J_�K�iGi�� "曲H�S!����N![edY~�_N2NJ/�O�1%9�	�<��>D{�΋�ߙy����!�nǀ�р��|����3:�<�}���+�=�JR7�b�Sƀ�����j䏉!�o�J#�H7g�v��%�o�u�+&�:���Ca>B5j�K�#�m�����b��;3�{Z�}fg����R	b���4X�Q�F<�W_ϓF�;ħ4؝X�F�7N�x8s��4&{g%ư���!�o����      �   �   x�}Ͻ
�0@�9�)�KCn��fq,�]�R�`1�зw��8�� o�'��B�V�Va�֩Ρ�Va��+Hv
�kK��2{���!r�we�b��Sx��^���8���W�l��B%Euܢ�)y��|X�%Ik�����eG���T���Z��W�8 | ��_h      �      x��Yˎ�]w}��C�H�� ����ƛ�H��H�	�
��9��۞f�D��L�z�z��b�~�y��|�������׏���������?��>�\>�^'���0���������Kp���Y��<�\8�"s`S���������,n��8����Q��|�+����z��כ��7��3�_�+�N�����{(�C06�^�0;��ɾ�C�%/��:�{_~�	^��~=�E}!�ٱ����[��	�l��^�|������������v3g<�dI���9$#7א�'/����;yAo��56ܞ�x*������'Xa�oٸZ�f=���;����0Ţt7ձ�,��SL�[��LɎ(.7�;#��#FqJ<�����車�ҔܪhIb?]{���^���Hhͱ�H$�2o�f;%���5�=�g���J�S�������FJGu�)�6 y@v������֝
�ob�7�Bc�_3;���]D��=2;�&�W4h�;o��S�����=/�Чs&��u��E#�oȔ݈g���>,w�z%�a��3����B%NS��y�d
0�!�z(q�2�F�����&ڞ�����7��ybgע�.���(T� ���F�ɲ�2jĂ�8�ER�ʈ3��U ͒��<���RF�c�Vk�I���.J��t�u���ߌ����=�|���:?8W����cc�.J�B�ynA<T>Ư���U�C�L���Z�^.e9�5䑛�O�{�b 㝚\9���-3ֵ�Z%��<�O"ĭ��s�R@���H�QE����d{0y%��쇂eO���4)t����然�/E*�CG�� ��s�n�һg����ӟ7h7i	�Jm��A)��CTjǎ�ܡc?��\ɼr�@]��4%��+!rj˂@�[~�f�4��A���O�=H�����K/�mSe�cf��»��\o�DnY�V�:���B�s.ܽ}�n�]9��$�!�[�Ay%�,�����XG0[�"Қ��X�-��7	�]��,���>��e�pm�Z�<��?]����~w�O�7�7}���ARa�NMl��n�;6#���#�]��w�P&Ơ�{�יQ��t�V��[�[�x4Ѹ|��J�U�Q�6\�S;��C	u�ϛ(�N��������=���ʍ������K/8q3�F�I�T�J��&��nw��=�xZ����*���C��ⲈG�Kт�Іc%��s���Q��)���=J�`�7>�ɤ��l�G	��vm�I���;��((#}��\gf�n7��<b��o^k����kZ�;(��a
�E<�n%��+ߣ����<����e�V(���CI�<�/1`պ��Z����t�(	86��Q�x�H���=J�+�8������������=>>�����s��?klh�Z?8��6�#�8�վ��`���߃$x��d��n1s,c�Aw%A��H���^�TTھ�=J�x��L�ċ�E9�{(A1�yH.��$�F���ⵇk�;�\T3��*?�$�^�"mX����F��s�"q�{���JP��ƕ����)!�Pk���d��u��pg�#�hkrK��;��,~@	�%s�������������׷�n���ǧ���A*��Aw��k��ں��/(���&#D�零�˳��]��C	ś��a�d>|����]�ʚ�w��ݾ���q��x]�F�(�P�p���N��W"F��Y�<�Z�?~|~~d��",���˗���I���sE�9�6s��]��m�OP������.�l�5�J�T��T�k�!ضa��RB�����c�o"m�tQB恥;���PY�n�ͻ(!x`뾉������	��y�N�����A�-�vQ�P^N�uu�� ɔ})��2����!75̧��0_��������MGxc>(�C/��C�Or(��I�\��Vqݪ���7�T�F�+)X�^��7��=�
,|>���<Q��'�~,�T���p]{���h�8�o��TPEΧ�U���#DKGw*���dv��M�����w@B!q��J�uF�:�Vw�_��      �   �  x�u�A�!E����
�ۀ�C�s��_1�ҙ�<R��0ߦF2IH_�ӟ$,zq��_h�?)\~q���)LpV�7%p��"|��uJ��l�'�$����>���sP�$k�Ǐө=G�%h�x��f�"��A	%u9=��UV���j�{<��^%Xv���uUz�"��}^o*���9��^=�q�l��f����M�'/�g�2K ��e��Z��6��[J®k����]�í����f�)�$����P�����83
)�_k�t��W����)���F;3�'����{H���fi��OG�B�>�qAv�c�f9D!%�|�O�������NQDI�ћ�"[9�ZHI<���]���}���@��$��=Rڥ~�?��)E�ć�E>�~���:bѝ����:�ɔ�3��n��(yz�Ee�f�-�)�+��"�KWgQO�����W&����5s      �   v  x��Y�n�]O�����J�l���0�I�!M���ۗ�\�Ҍf Y�G�P�����Z\~�x����L����篟�{(��w�+� ���@W�w�?��MD�ϯU�,�qI�yG0G���b����	K<��aY��|�8?C���vzO���NO+�&���P'�Š?}Q� �x<}�CX�W�T���ؕ>/�cl咳Iz��i���h��4��/K�!x&a�����bI"���CK�f/����"��L
=x�����x~����g�V�[@]ɒ��P�#�%��^ٰ�)e�z�f-���Ur�
lghc�`Þ�2i.������ߧ�����=�zsj*P�<7{��ܼ�o��<�rI���熖��oG�gV@��j���N�+pR��~LіG��!�R-3��y��j)s��sC>k|C7To��=����"U�	�ک�-
��T]}�߸�{j��Ѿ�������6N��K$��Ϻ|�����$,<���r�q��_�,Z\z�t0��p����8��;B�wuwWCр�nCe)����~'V)ɥz�mG�_�r����Ӱ�\�+�~��_�C�Mѐ��/���ӧ��`E�;�?�����l�ؾ3�JBx���Ytk�>/B)��{y�[�r=�O�vY�����Mǚ}(��J���J�r��vM1G����WG�b
�u���X�S��a��|^`����1M��9�m|����'(&�q����I����֕:�Jv�5�g]�r �MuQ�h�=���6�%��s����e*G���I>��=ő����5�:�eo��<у��ܸ^U�	'37B��9�n�˞g ���|�����6\K!���~@�|��}� s��L���g@��k��M�H���� ��Q��u�^v��o���Jn�fx��s���q�R�W��*�\��5�㛀V�٪����M�P����m~sQ
���#jE��#�N�GT{�҈�'"wfJ�j^D@���J��a�g�--��|�0������h'W�)�������h�^UA.����؊�K(Ͽ����{](ٵ�}�= H��I�aPL�F��������jSN8�ۡ�`�R����c�-z�r��g�/�s�%C[�x�&3�������`]������|�Mڅ�{�諞&��]���	i��}���5������s�أ�j��ݕ��nY�g�_��	Q���=S�e��3Xr�L���f�������{���_��To'ְ>����>GC4�v>�ޚ���1]ZZ�1�57U8H� �/AEZ�p�^!$�Y�(D��3/�g��W�>~칸X_����!~��>�J=<4M��Z�<�/��/f]���W�آ�}��p����`������9ڜN���I�v"�0��h7�|'j�}���'����'�@r1y�;�->n�C|7�Y��7Զ����A�S��N�w�ݤ�&_����Am�91A��uxC;��x�t"�����-`5,|BwC��խ%�6;[��#�Մ��%���F��?�m\�/\���%�L�L��M|:S��f}"���������(�7�=��6��<�������I3C2E�n|c!��76e�����ܣM'h�~��=ùN��0t���~��&���n�}��ޝф�ǅ-4[�^�~m	K�%���������k��~/b�qo��i{K�4z�3�=��}�gB�uR����W���У��*�e�w;~}),���I��Z� ���*ۏ�oP$�T:[ɰ��"m����L�Fd����1S�4��.����p�ʎ��fr���V�~	���4���]w���2-<�R���K$��n���0�\��M����:����ӧ�__~>|����AJ���#{b@���#}����� z�      �   r   x�}�K�0Eѱ�
���q�ZX�W��(��:z�B���j+窹�������(���2���ɶ���ňb/q�h�V��
��̶G�T1Ǝ�?~W*dM��sŝ�r�@      �   j   x�}�A
C1Eѱ�"��g4���et�4�B�΄+�g4��IPx�ّͼ�.���}��ʠ�4f�Q�R���n�*�6�m�4�
-�ێ����R�G����U�f~��3$      �   g  x��[[o�F~���&�~�SS,�v�@���-1�.����_���293��csrZͧs�Ι�1,���9<l�u=z:O��W��}��v���8�8������I.�=���j!�B��)�7�oH���aB+���[s<�-;5O�M�n��C=B����-���2|[,����4s��;����8{X��h�q1�
@�a��v�"|�o��|�:w���B�����b����w�*�]/�&�ĝ�ྫྷϫ�f9`�}�}�F�1@8P��1����0��������;�;oa6��<�ꗖ�V�Gvz:
�&8���k�`� r��B����,M4�˾>4�5�x\�6�o��ՏOB����g��{.�>x�d�`��&X�c6�&:�K�����.;3� �:T6��U�NC�z&�`��v;��l���y9V��n�Ҍ����	�����B�9��2�j��Q�ʱS�����}�W��u�C\�����67�yp��1Gg��+J��Xp���iw\��s�~c�~51�up+��S�����t�+�S���@z�"���($��Y����k|S�s�D���-`�^Z2���+�)-�RraDe�O���~	�����z[Cyߡ0��-~�׻]�f����:B!�B#޼Oݪ(M��!EI�~;�ۯ��~\�پ[����B�C6��1��-����#�����^*JW��$S0��5��̕Y.W���[.W���g���V�_C.���S(�3'S(�S��<�>ͻs�pn����D�U:�I�&�rr�.eϡ�)[A�s�H
�]�yH��W<�k^*M<[K�tQK��|�T��F#��%�gʚ��bЈ�qs�F}��2d\xwCq�'��0D+)lG*�;��C�v�#Gz�A�[$C�"�
|Ԩz�S�-K���r�7�����0�z㴿��*��ar��)(��O}����-�P�Z�9��7�X�)�VB$�Z��<Dʜ�-7O�v������Q>�Q��@P;�a��-��%��ᐊؽ�ƌ��m�ׁp���� 飡���D��\������zZO(l@Ŵp�2i~�u��BhP״��R���_���H�=��[�~�^FjR[�4E�h�œ)&W�sGR�+�m�����§1�\7Y�y�R�d�qxR��d@!Tj��4�ˎ���v]S����W�����Q�NDb�9i��<�Ī_�Km���ud*!A����Ʒ��sByl�d�MHaE����,�N�Ӷg�G��0w���%��h���Z�(8Υ*2?��V݇��8Ù��#p/�9�g�ל�"
�>L�բ�R� �е?�o�����a@07���@����Y!-J��c$�^��+�|^?�փ��I��uꂣ�#B��E����:�p.D+��n��k��1���^�{��uL��� -��I)|���Z�r���I������>����(�9���z�:w�2�:�*%ʣ�T�T|4���u��>�oǤւ��s�+�q��
]}Vl��$������{s�ٯ���# �]����Y5�i|Qq7IE��QJ�@U�4Y�*D0���ù4qГ���=q@�T��>#2z4���W?q@g����kbkڬ&d�����@�Z�.ʪXQ���pܱ_��7���p�q1��H^�E��>0����,M��#�G�Ͻ;w�=n�4�e���?Y9WRJ.M����	�~xm?N�xh�[g,�F��N<E��p]y�����
|F��0?�<Э�e�](cS[����4e=�9�2�f�j�/�ㄾF��hF/���c�в{"�<�h!O/���?�3}��;���?�χ��tj_X�j;CC#��cLPh�*Լ�3�&Zr��P�1�����;��0,s,�e�4u$���ݴ�fY��)>y���<İ�C�4�k��?�%��1�k�3�53i��).��k1�I��9����t��b��iA-KS,(*��h?����<z��B���l�T��A�m}��7Y�ßw��:
�DYOg�eiZ3S�Z��tr׼W0�M����'�ht�����a�U���ǌ4(R���U^���<��~�;���ӄ��XD𣨦�����T<57IF,KSr$(�	:wM��C��@��֮$��@�p�4�(e�lb�L�4���26��N�ߜ#��i���cB4\�si
)���i]S���iݭйOxO�F����Ŋ`<�"����IS4�`&��L"i �W�ī �V��(�4��ж���%,��ʰ��40���)�A+�T 33��lGg���Y0�)� aG
{��-��"���H�M|�uq0G>������.IV��J�3��G� h��$����x��c����2���&c���U��\�Ǻ�f���*���;��!������]��q����_�2�+�@'(l{Ea���^��8F�[-Ҋ��qp�7 �"5����U܁Oa���u�A{m�����k�F&�=����CGh�Rףn��M��j�?͊g$¿7:�����꿎�I��=hZ���2���I�ض4~���5=��Hul���H�t.�^�{�;�#�}T�u������9]ȾxH��MSWY�D(���z��i�TibS�-0dGz�2��C���"�T��qC_��˲i��zuh��/��j�Y��f��aG�x	_VN*�� �=�m��Z�_�e�ְ=-&�(Tr��~�!��y���zN�A�s���r�v�Yu���d����f(��M�RY�aA�s��k{:�.���P����q�Cu�������(湆ǜ��͘��)0�H�
 AY�Q�^�f�P��G<�C*�X���Y���Ɇ���MQ���9h�(W���"�n1����t�����S�O+mY��A"%|8�}���iJF׌<�������}{�B?��xV'���-�a���u�Ss<����s���1ǰYw����0�2�G��T'�C�_:v��m��.��� �H�J���$dos�cZ�����w��U3���g������Bei��+䚷��=���/u��{8�ћ���t	ZQaJp��r�G;T//rkzN86џ������K�NY��@>�&�&kO}����$�h'4'j4�$�^]ATY�,K3$H}���PF�kM�H
"�}�>���㙭�Ԕ��JS41��9���x�K��M�e-���M51�e��f��n| �۠X}�/���Z�������X5]>BR�4T�fp���A_;,�����,4�"ޠ}J&̐ ��>�;�.������|��_�Y�F�#��̼#�f8���O�e������@A'�Ōw�P	������Yi/����H/l�n��J��U���L2���{���S,���sz9�.�oG��H�h^��T�!p4���=��7l=���`�X����4��ەT�K3 �M��Yp��;���1����i���)��?(��r#〧�
J��ۖ�>me��ʮ�Z�@���:�,���ju\7Sw^E@"�F�م�өf� :ǣ+CS�����Y֖=��Q�ԡ3-�ɥ�1�yD��5���S�������]���%��o?�������\���Ft �M0+M��U����]���      �      x������ � �      �   �  x��YMr.9
\�Sx?a�@��'x�9��L����Q��	۫$�$��D�+��F��)R�K����z�v)��J�j�g��OO��y������_���-�����UV^�D/(�L�GD�*��#�6�%]i��?2�'x˕%�y��Jsg�\и��U��(5Nc�z,h\u^9Px���Y��/.��%��O��j�����xWH�Pj��g�C�\��9kH�Pj-͚$$���{���(���&.'_H)k.��Q�RiI�$��^���CGJm�U=Q-_\M)m�2}�C��J��Dv6-����KZ����]���U��J��Q�P���5=Q�R���;6�"�bꭜU�3E(�
���#*|��ZC*��r���j�n���D)d�^I!J
aE�$ZV�'#�� B�2��r�2� B�TӸ��GG*ֻ�+5K?:R��B��/�:Q�ԣ�D(iOC���5!�:E9�ԭ��P�0�	�ifn�?B�70IĄ�Tk"0(���KI�wW-�k.�t�X�O#l-k_nM!J�5���%wl��,�'���@ɔ]�����FA�=@2as9V�_(p��}���e3�&�]�3��D���,
��1�����@	�f�/L�ʼM/�%�-fM퇜:l������"�඘۱�[�v��Q|�Q2���`�����+��!�%.f��swӾ*b_-��]�����>���*�jn���sks�A�ϣet�s_P�V��`�&���sm�3E(���L"[�v�8dqL!Jq��`��^d����i-��T�4���~�*BiB ��`�����P��sUC��mQ�}������x�6�T�6x�����^�`��:��B�`QY�\�w�<�A���ꯗ;���3k��R�g�͍n�Ng�^P��e=uu�����XU���&�����ڇ3�A�ϋ�>��;�@�u4�����za���^�!J,͙��]���؝]]�{Ai��&/T���n{/(���B�v.ܨ񂒙1n=��m�{��A���;�Y,��h�T&�����i� 1�C��$���3����T��`B�z	�δ��<�Jf�s�d�8�L�9����pG����S��YM��3ݮĬ �yz�%3�ܻcb�c����!�%3��� V��IG�#��)Dɼ&�W�ߎi���U|��(����y�V�9u��J�5�/_.w��~�r(��d�n{{@|�u^���M^���f�r4_.!
&�|�s��4vR뱻��[�{ǲf��!���&�����QX��!�C��&�C�3��W�WB���M+ܛ���8Di��Y9���UP5:�4>��H�cr�P0A�S�����Bq�����m�g�L{��=��xZyA��O�3?�c?è�]��	��g�q�O��3P/(� ���\�㙽/��㱦7L�|t:�Z�����c�c
QbD0&�����{^Ci����,xW��?,2 O����W��P�b-H{�TP��~�s��N+M��=-u�w�V����29LP�j�i~�����u�`����A%v���!��=�������ވ�8�����Jq����b�V��dc"&K�M�]��B�X-�z�����@�OT�����D�I�f1�b�y>׼�d���Q���r�P(��)�qY��EV�Ub&��M�Rֱ����������7�~e"�m`�      �      x��|Y��J��u�_�^|w'6R̬�W@�8��(�*��S�"���ϲw�ڑ�ҧ���'�������i�����s�L�,�_'нbD���`�� ��)ͺ�6<.���/��0���HO:��FC#X�'f�x�RV��I������� ��
~��7�b��(�/��`H�A!(A�������u���? �[��������i��'c�gq�쎿I-�1�\�u�e!{�C��(���cI�Ӓ�߬��C���_�wa��e=����Ŕ̸����N�j��������n��ZX���{��X��;ޯ��� ��(x��Wi�&����3PpG2R��(��1���λKq{��|�$������c�'�'����20�+-W�+b���D�U�JÿVs�������)8��� F%-�j�t�]�����]<b�C��4���w�4�~�w�f�_�����"K�����e��k�~�b=�w$Nw�S��N)�Q��L\����j�:e��")�A�$hL>�S"_IA�����k@��?����kx+m�����ZߖAPTs�?\H��a��T�&�i;T�C�y��{0�n;�)���2h�Zϓ�_�G+�CQo�$���g���ǀ����`��L{�(��X!��{�F�i��{�1�x����Z��/����Z�M�� 5���r,D7/�>�!�1���$mP�����E��}2KJ�X�N8��Ieo��k���S֛��Y���Rz���d��t���E�$\@���O�N����$lp7WcR4��A3%b˻u&����v4���F����`mo"jc�*�2� �ZB_�P]��1RB��{�O�s���q+� �2���5�2@(v��ydq�79�sVT��bJ�:L�Z�1Im���Dg��bI����|W��u�`x����7�x�6��u$O+a���v��9S�!�3��"�h*v�b���)�N�a�MD:��<T����Tz���f-4r��ѫ�YssD��s�Ե����u�3�ϕ~��e�����r�.;Gᜓ@��e$oJVV���
I�|��d(���V��5`0���_�
��?(^=HQ���ރ�Ö���V1͊�,�}ǵ�ݜ4�	��t����I���X���>s`�<XK5a�f��e(�1����X�,�CǛ��'�awL<̖�h.�S2^i�M�&����L���:�:H����P0����w�%R��i  /G᭴�O��7ο��2�5��,�%=�:"�N�d1�f\��|���o��$U�D', {] �`��Ap� �J�����%���f�-���l���i�t,{�0筶8�{�2(>�{:�cJ?�V�%�o���fde'4�r��J�5� ��B��ڙ[���Ӽ�v�\q�~��h�<�"NNg{����P"0�+O"ǰ/+�|�(�/�쭴!���̖Kk��3zdeuY[W�Sk1U"���&]�h:$�K��
�K�ˎ6����WK ��G |��'i�����y�S=N��rQ��M��������r#T)~>p�p��0�Mii�]'�#u�[N�W'���'B2���wa��h�n�O2�I|T���c�����!��� ��2�vSf���􊵰SF<<�p@�����`�������;�{�}�_��6P.α�!��\pK͜ń�;O�����f���O����m�'��T�`���;��*m�S��7{��&���'����#+ъ����.��r��!f���J6�FR��O��+�L��|�����7;ߧ��Bg(��ў�;���X%�W����e�"��:�)3h�����<��*FVĘ"޹�Wi�i`7�f2��(���;I����.�´���!��&����q�@g�{x�쿻xPQG��O�7۔K^K$�-b8�GR�B>o��6v8�:>3�v����2?�r6��K��bEY�������R`��%�U,��T����Q��k�r�sm'�ŐXbz��+$�g��5��3��J��!4��S�`�z��7+ +:L��8��f�c��PГ�C���`rfa+HK\\��ci�l�l�u�!�'�?2�ĺ/�~,�W���4B�s�/�~m�E��B�+u�tB쳎�z2C��{�z�t���m�qjP�= e�QVСc�����'�0'X�%ߑ�W�7�>�l��`I�aӃB�����i�"G�2��`ƻ�3��"����Yr�$l70�eo?͡��F�*�%�jKQ����J�X9�W��nG6{�@���V�!�<_���>�Q��nw�Ǚ%�/��,O��y@G��?3[�p�����[i��hao�}�6�)��F�f�l7f6��|z���ˤ�-u^\�%�����V�l����0x��w���J9�j����;�G�r�����@>B&�Q���co��^)�f��q�\�-���Gm<�[ߐ՟�JyUӄ�M|Op�1�?�A��P���)���������AP�������*���w�G���$�8B�w�_B������_M���=�)�S5^Y ��7�d%��Y�u�t}��L�mh3�fʒ����� ��f����H���<"�䐲6P�9LV�\	�H>4~�B�_��hU�\a�	�uu�&�{�Õ҃Z*��ޥz��;����f1$�I�Wv�ci�s�<##i7�'@�����t��gM3���p�ERum�"��-t7�~�WVE�P!���O�%?��;u_��D�1礦w2�%=��A��4�s�K�jq(�S6�1�!m{�(��IR����7��+,������o@�J�kV�汕�f��4�4)�i���]��36�܈=[�P�UI��Kl��hUԞQ�<2�<�X�!k=��M�
#�Q��x�6 ��`޴���:�so����I�"��hH�n��C�xa�l:�#�6{��hեW\� xC2�7D�qr���/�X��i �����$3z��4h�9��x���'�,�J�U��n���d����v�Ħ}�r��I��iŉ8�'�@�A��?@�[6dq$�`�;z�Vгz�m-ӱ�C��L_ц1����ܵ����L[�m��d�Ʈ3v:�n�s����`n��� ����د��{	������n^o;hJ��b[1�q��r܏�4�q��\��鮘�S��l'��&��YT*���
��/.��x�J��_�e< +o���#�����SU��`�o6M���A?ya��7�湱=ˑ~Zh2�rFI$�G�q{|�o�E2�-~�"1�F*��}?�Z��5`Uf��f�J�S�\�H^�� >�'en\��`��`�主�G�4K�^�+��8�Fz�x-�h��7��*�R/����>���O��[��,�4�}�I{�ZenJ�(�SlȤ��t��R#��LŁ�}a͟k��t�
R���{�U� �޳�}1��� !����8օE�7NBW�z��#h��Ո�&�̂�6ևNl�`�'w�_���Vz�J?X9]�O�dAc ���^����1P=�b^���u	��֦K��[g��z3.�f`4���7���|k�~z���������~]�� L�X~S�{�ً�@��Uy-����X�U�o^Bf�+d��[��(5Kf��ZIy+����k�'�iI'������dX��"k= ���~��*�`&�B�=��C�{��LP�[?�=1�G�W>��Oe �d0��"���!�q
����>�
{񁛼i��b��t��>&�[�7?r�^n�+�8���r�G�t0�0+��������-��[����F1��I���B_����B�S;�}iL�j���D>[7@k�a������S�Gp~7bY���8S塋ˮ9�`�;]K��ȶ@G���Mi�t�1��,J��.\�P�t�!��y�i��*�-�$�4���w�M�D	*��.�Q�*=�@([�<�� _�	�f���[K���缢*[���R7����o�ɺ��T�@��[]a�    ���r\Ȝ_0�1'O����j�a(���`1O�R�+CG�>OKq�h6����l�&Kk�3����/�& P�f��>Z��CPp�)�%����j!�}�f���yr��/�vc�sdy�.����vMo�56��d_j�~���9�n6�'����峁@��@  ��I������罦k(U��e�w�`�L��c��I����O�wn0��ir�1�����l����Eb�H��+r���t5ł7L��o�z`�9o�hy��衩�:�Qv!4.,���|'(�[n�,��m�_�DQ�����A�*+tS��/
�>���Η�[��FAR��K�y+}�ʵ�{��f��:�بi��e'�j�u"�^�<��V�&�p�%3��z��N�K\?${ӈ8Q��ϱ���^5������.4�`/t���7��7U��t�]���ڕVSq���!�(&ݽɞ�F`��Т�!߉)�8��-�#ph�o��.��C h��苧�_T�Y��9 �MSo$�ֶ��eB�����vf��[F�Ci3NNS���IA������cU.D0S���'y��0ͬ��x�9�m�⃷����h�`Ho���^`u���>G�4R3������g>���;SGc�e	��ޠ��\U��wn�dD^�K�*������39[7�CV�߽�Zth�4�>��F��!�]vf~.\��2�
�����ڛ�t�{�!�h�2g���)��ӓ�W�'V����u�Y�64
{��V�"_�BL��V���/�V�"����.�aU
q|A��2��dsڏ0Hst�3s�����a��g�v���>��4a�<}�E�J[9Fm�z�'��͏�}b���Ϊk��P�g&� c9�I�L:Ns�zGe1��FҤ�;E����EV\��3p��O�@Y�c�鳴�6� �C���G���7�L�����G����V�x"��]����ݰ0�`:����Wt��B�U�g��Z�Q�_��5�z��U��AǛ=o#��R�Jx������E��X�ͽ:v��T�hb��#rO:��
�+yC^+�͎C7�A/�L�K���DK(�4%{�Q�5$�zSy�O���B�Wt?�r��9,]��y��+��1������PON�^O>rv�����V9'��d zs��s����mh�����Gr<��m�WLNC-�%�))dq�^qHT;���(6EB���L ��+��h��3��2��*��2�Fd���7y�4hm)q��ē���^V ?\�CVq�H���/�c��z2�Ctf��8:���9��9.T��
�z
�!p��!^� ]MhQ4�L�uj�����?l��L�o#�\��[��O�ͼ-�;�[�vt&�a�s���8���1�)W��z }���۸�z�U;�U@�7�:.UA�b4 m������{�Bh�q�K;:�=n��q�/�Z��x����稠���u{�y�d#���ٛ(Oi�π렿�Ў��6������u��G�9��������p��(���c�١[7�h�#~���
��	�GN�_ /�ݩ�'���
jz�v�����ju�ӄ+�W�wTt��W�o��8������!ߥ�b�Z���O�Rq�#?J1Nv}�!�9����k��;�}�)�)o�~"���B����O�z���;NM-�蟧^�O�p�j��Vs^�L:�턕�-)�J9���5���wOӍդ/�2������Q���I�
���}�s�v��2�M~?�#��k��f��X���(Cl�qz"�J���⭋}�V��uqë��n�0�!��:� �S[��+	�v����[p�f�h;�ߤ"�����(m��!Qy�r��a�R<z��C�щ�/�Ai'��"8�"���TC^��k&Rr�����gp���Ǹ��p�i�E�"	udHw�NW��	*����6W���]-�[.[�_7�9����tU��I��G@��>�*��W1Co�'��1�N/�i���ɴ��F�SG�fc3D�����y����?U'cT1��U��ZA�4~]L��n�VmY�9}�Ԇ��S[��p���;p�R�:/F������G܎8�;Tf'�tX�A�٨HO��]������[R����#��z]�ƨg��Qu����ų+V�s�����)u9��C��H �qkZHw����7�t|�g&�+&�����\<~վ�I��}��CWk������Nm40�;�ZKH6�s����|���~z��?�w�4w#+�3e>�(�����p��X��CRГ5�Ƌ�����6SϬ�u+�����T�s..����Ylmg���뎍�)��3D�����]��(u}Y��.8ZT�f��r���~��ԙw���N<��~�>��:Wܯ��ԉ~��CE��a9.�~����sr��gb�tLv��/�}�;�u���{�����jr�a��U-������~�>��u�؄Ɏ��"�ֈ|��y�o�vd&�P��,HSY%d]�7L��g:gz�3Q�U˚�n��T���%^�x�v��jz%�e��	[��6���H�X]�Yo�g��ee'��;�D�Al����Vc��Jt k.��^��ƈ;�OW�du+��޵�^���i֊�A�kv|ɤ�Q�5���f[+T�i�wX�w�8T�ţe߷��`>"�wa�-�n~��?�����_D��xjt�$m�ƾ�~���YQ?�Hq��t@/�ɾ�#��T;v6�����l)�xq������f<��OE�^eI���J[��'�M�w�K���b�U��azㄈd�X)
�^��.u##�/���1���Go� d+kf��V��=�uj��昍=S@
A\�G��d X�l�,����E��Qv����k�=T���гT��O��
FxP�^��O���T�>?���p��r�!����B���6`Լ�;���r���W6��ns;�t��)��4�Zu'��%��w�u2����u$歴��5z=s��<�E/����n����*F����ɒ�9��+��B9~�>�^������č�0�{�����ƣm�Mii�쑆������Lvo9E�r��2�,��to|��ṓ{������,?4
�}��Y�B�mzSX*GG�Ϛ���bXZ���4>oȳ��"]�;��r@%�N�:��h�v�4����w�r���t_o�yr�-���p�7�S*%����o�4��+u?�#���ǩ��k*��-a �xh�9@kc&�� a�_m�Q��~M��(�ۆnk�Eߚ&^b����к�f�8k}"'�jB���I������H���U�J��Z�ư��!�Kr�^ڂ��uh��X���7d/��2���H�Ӊ�����+KǼ��ų)�'��z��ڙ�_$AA�H0@�T�:Y��h��OҖ�\���4���e��Ss��{�PtLhr[@���x��d�b`b�G�f��	�����&|�*?C��վ�=���֮�Һ��%�]?��ݠp��I��E9K �{b�ҏ:���D��axJ�2��{ެ� �N�T�f��z��1�-�D�?[i3mb���M�H鎇>v4���W<Njs�7浥 ����]t���OO�������:�ʿ¯��@0�ݼJ[��f��a����7�#Z��&��^0l)��� ��J�����K��#����`t�M�����o?$����m�#������D>��k1��G�J���h��=���w��m��N�h�:����I;Id�}�0R�sܣ �����iu}a��c�P/D�Z�Z6 !�&����uL��DD�Ǖ�� �c��#�����_p=1�s�]��e@����䏲hpM�z3��2-��0�j"���G�N��3� U�c��7t��2=��'��lp+՜�H$�/%2 �p���$k-&7�n�+��s˭k��kse�U଺� }g;uI�ô��]o���v�F�FAq7��ۛ~?��B-�w�`9��lFu� �=u�. 	  ��.�EA?�yh�͞__d����O�V��?��x�(/����Nq֒�9R#q�Ij�	S�d��`��&�o)>�b�4�Z��@wa�����=Y{]�D�g��;Uͨ0OS4վ3���\���>��cs�(�������,�I�l�,��`dӐsh}�0����5NX�+���q��A�~���Q����ϩ\�k�:;;b}^���(�i��a%���V_C��K���pi��;_���⫪�0ֲ���Ŀ����=��R���W=�7�v�o=�aX�C<���.�;dy��9/�^5��\'SDT�����	O�I�n�{@�g"|������.���1t�8��W�s��ꯍ�>�6=�E;����	r���I>�1�Y0C�\�ęE�}�嶗(î����V�6�1
����*�G���"���e�}��省��>��oS��E[ӳ���:( ���e�اs�&v�,��	�+����=�+�_U����U�/��D5���*x/m�J��(�IHI8��\������4���������ZNxe"#�:*1D.\�w���}ZL��]�G��i��,���~��ڙ׋o=�^8	����pY�xXZ4�.�(Q��9�q!N�������i��_?qUh���pw������v�!�M�㽴�&�]����,��n{D�z��؍�}@ѢD�*�%�e�ˀ� =aǜ�
:��u�Z�	�BA���_���;0��O��-=͓o�%����(֙�ڸ��xb�11ͷ�$U	F2q2L5����t7+.I���3W���d4�[1�e�����ʹ.G>�$s�����Ƴ%nv/��1�N
z@b�� ~�n3"��{� �َ��u%���w�ā 
��ҁ덞�i�FJV����x�c�!��<����}ʦG���z�M�"z���Tːa|��D���v2����W����?[{����:�OҖ_$��f�!�w9i�ahs��K�b��xO�z6B��/���܅lػ��ޓ�<��B�<T~z���B�!���|��t��PaՋ��v֚]�����5��J�{X�ڪd�#��� ͭ	Q2�R:
+� ���Bq�B=P����R�Df�*`�흔$$)���-�~=���ʾS&�=�7]�� ؐ�}�'
/��q�"�)-N4~y������� ��٫Nj5i����*J"D���0�^KJu�q�]1[������ύ��Z�tDr}n3���^$u����&f��De��}�����~�͘����������0��W����6v�B�/��'�WQ��z��:�u�OE�P��Ls=I�a_l�vAFQ���+�7`uu�Ġ^�������n �m��uGyԣ����E�9�y�{Zޱ���{s5b;W�K��y=uc������Wk���h}�g�~x1o����k�o�J�I����x���%co�i�F�Ϗ;��.�ޢ������B�"u�MP}��SoRϴU푬�}��'c�����-�L�K��c�^�qr��e�`��e����*?�2߯1RZ�����i7�ȋ+f�r��%UG��5��>�3r�r���m��m�����\`�}�F1I�;D�.�xrv
$6��(�������$���A���s��z�sg�W�h���c3���x����iR��e� �6ȱ덼*@��s�Mc����#q)�N
z�p��t�Y�d���y����G�+��J���#���bI�1��Z�m��Co��E�)N�~2񜊾����xZAs-�R4֗Bv�_$w}􄝄��tFzSg�-�I�����P2��1l �-�~��j �}��}+l�?���Q��xt.�����9�d\W��	�jkOD~�A�;��5�O�E4'�>ӆ���Q�puѤj���}/m��������Ԧw8���\�<E\S2�H>��s3��-P��b��l�<H��V��6��p���GT�>�o6S�X}���3���p��[�����u��2�H0�*Nsra8 �4�\,����%���M�j����J�qR�j���+k� 7��<��I�pt�v���.n�w��<pu� &	?:�����'z,F>�s��B"ώ����`ߢ�
9�%���՝�gg���k赛�}���Wba��a�qP��_��@
���D�����DL�l#inn�8�e
�-�J�!���oşp���A"���o��-���
ώ����)&Jd���R�j���]H?�l ��d���a.K�b L���O���NC���uE\�Q��9���Y��������$U      �      x�32��22��2��b���� 5��      �   O   x�3����K)�,�4202�50�54S04�21�2��343�60�26�/�e��[Z���[�i��������1vsPe�b���� ���     