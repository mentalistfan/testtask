PGDMP     ,                     s            testtask_development    9.3.3    9.3.3 *    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    32854    testtask_development    DATABASE     �   CREATE DATABASE testtask_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
 $   DROP DATABASE testtask_development;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11750    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    179            �            1259    32894    comments    TABLE     �   CREATE TABLE comments (
    id integer NOT NULL,
    author character varying(255),
    body text,
    rating character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    news_id integer
);
    DROP TABLE public.comments;
       public         postgres    false    5            �            1259    32892    comments_id_seq    SEQUENCE     q   CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public       postgres    false    5    178            �           0    0    comments_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE comments_id_seq OWNED BY comments.id;
            public       postgres    false    177            �            1259    32882    news    TABLE       CREATE TABLE news (
    id integer NOT NULL,
    title character varying(255),
    pending character varying(255),
    published character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer
);
    DROP TABLE public.news;
       public         postgres    false    5            �            1259    32880    news_id_seq    SEQUENCE     m   CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.news_id_seq;
       public       postgres    false    5    176            �           0    0    news_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE news_id_seq OWNED BY news.id;
            public       postgres    false    175            �            1259    32873    roles    TABLE     �   CREATE TABLE roles (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    5            �            1259    32871    roles_id_seq    SEQUENCE     n   CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    5    174            �           0    0    roles_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE roles_id_seq OWNED BY roles.id;
            public       postgres    false    173            �            1259    32856    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         postgres    false    5            �            1259    32862    users    TABLE     �   CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255),
    password_digest character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    role_id integer
);
    DROP TABLE public.users;
       public         postgres    false    5            �            1259    32860    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    5    172            �           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       postgres    false    171            ;           2604    32897    id    DEFAULT     \   ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    178    178            :           2604    32885    id    DEFAULT     T   ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);
 6   ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    176    175    176            9           2604    32876    id    DEFAULT     V   ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    173    174    174            8           2604    32865    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    171    172    172            �          0    32894    comments 
   TABLE DATA               V   COPY comments (id, author, body, rating, created_at, updated_at, news_id) FROM stdin;
    public       postgres    false    178   3)       �           0    0    comments_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('comments_id_seq', 3, true);
            public       postgres    false    177            �          0    32882    news 
   TABLE DATA               W   COPY news (id, title, pending, published, created_at, updated_at, user_id) FROM stdin;
    public       postgres    false    176   �)       �           0    0    news_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('news_id_seq', 3, true);
            public       postgres    false    175            �          0    32873    roles 
   TABLE DATA               :   COPY roles (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    174   �)       �           0    0    roles_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('roles_id_seq', 3, true);
            public       postgres    false    173            �          0    32856    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       postgres    false    170   =*       �          0    32862    users 
   TABLE DATA               T   COPY users (id, name, password_digest, created_at, updated_at, role_id) FROM stdin;
    public       postgres    false    172   �*       �           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 2, true);
            public       postgres    false    171            F           2606    32902    comments_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public         postgres    false    178    178            D           2606    32890 	   news_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public         postgres    false    176    176            A           2606    32878 
   roles_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    174    174            ?           2606    32870 
   users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    172    172            G           1259    32903    index_comments_on_news_id    INDEX     J   CREATE INDEX index_comments_on_news_id ON comments USING btree (news_id);
 -   DROP INDEX public.index_comments_on_news_id;
       public         postgres    false    178            B           1259    32891    index_news_on_user_id    INDEX     B   CREATE INDEX index_news_on_user_id ON news USING btree (user_id);
 )   DROP INDEX public.index_news_on_user_id;
       public         postgres    false    176            =           1259    32879    index_users_on_role_id    INDEX     D   CREATE INDEX index_users_on_role_id ON users USING btree (role_id);
 *   DROP INDEX public.index_users_on_role_id;
       public         postgres    false    172            <           1259    32859    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         postgres    false    170            �   S   x�3��JͫL��K-.�4�4204�54�54W04�26�25�344145�'e�e�2 L�+5��2��32��47�'e����� ���      �   1   x�3�I-.�4B#CS]C#]CsC+#3+Ss=CsSs<\1z\\\ ��      �   V   x�}ʻ�  ��n
��P�ņ4&Bat ��r��{= �ް�'Z����.A�P����rw�J��XP!�z��`r*?��E��&�      �   8   x�Uǹ  ���p������AǣN�J��g·%~M=�Q>���A}Ut�`��M      �   �   x�}ͻ�0 Й~�����(l"����Kc
	��C�z''�3�Jټ������j��6�㎇�OC;�]sv\�b�����&�U0$��l��h� kd��p=�<�b�Pf�)D�Z4����oNΥ�m�ج�+��i�&�b}���|���7�H�>j�jp�3�X�`x<0�kF�$�+F}#kA�     