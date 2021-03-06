PGDMP         5                x            thelibrary_book    12.2 (Debian 12.2-1.pgdg100+1)    12.2 (Debian 12.2-1.pgdg100+1) F    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16395    thelibrary_book    DATABASE        CREATE DATABASE thelibrary_book WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE thelibrary_book;
                admin_tl    false                        2615    2200    local    SCHEMA        CREATE SCHEMA local;
    DROP SCHEMA local;
                admin_tl    false            ?           0    0    SCHEMA local    COMMENT     5   COMMENT ON SCHEMA local IS 'standard public schema';
                   admin_tl    false    3            ?           0    0    SCHEMA local    ACL     ?   REVOKE ALL ON SCHEMA local FROM postgres;
REVOKE ALL ON SCHEMA local FROM PUBLIC;
GRANT ALL ON SCHEMA local TO admin_tl;
GRANT ALL ON SCHEMA local TO PUBLIC;
                   admin_tl    false    3            ?            1259    24705 
   author_seq    SEQUENCE     r   CREATE SEQUENCE local.author_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE local.author_seq;
       local          admin_tl    false    3            ?            1259    24576    authors    TABLE     ?   CREATE TABLE local.authors (
    id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    nationality character varying(255)
);
    DROP TABLE local.authors;
       local         heap    admin_tl    false    3            ?            1259    24584    authors_of_books    TABLE     d   CREATE TABLE local.authors_of_books (
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);
 #   DROP TABLE local.authors_of_books;
       local         heap    admin_tl    false    3            ?            1259    24587    book    TABLE     ?   CREATE TABLE local.book (
    id bigint NOT NULL,
    isbn bigint,
    language character varying(255),
    number_of_pages integer,
    publication_date bytea,
    title character varying(255),
    editor_id bigint
);
    DROP TABLE local.book;
       local         heap    admin_tl    false    3            ?            1259    24707    book_seq    SEQUENCE     p   CREATE SEQUENCE local.book_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE local.book_seq;
       local          admin_tl    false    3            ?            1259    24595    books_of_libraries    TABLE     |   CREATE TABLE local.books_of_libraries (
    stock integer,
    book_id integer NOT NULL,
    library_id integer NOT NULL
);
 %   DROP TABLE local.books_of_libraries;
       local         heap    admin_tl    false    3            ?            1259    24600    categories_of_books    TABLE     i   CREATE TABLE local.categories_of_books (
    book_id bigint NOT NULL,
    category_id bigint NOT NULL
);
 &   DROP TABLE local.categories_of_books;
       local         heap    admin_tl    false    3            ?            1259    24603    category    TABLE     ]   CREATE TABLE local.category (
    id bigint NOT NULL,
    category character varying(255)
);
    DROP TABLE local.category;
       local         heap    admin_tl    false    3            ?            1259    24709    category_seq    SEQUENCE     t   CREATE SEQUENCE local.category_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE local.category_seq;
       local          admin_tl    false    3            ?            1259    24608    coordinates    TABLE     8  CREATE TABLE local.coordinates (
    id bigint NOT NULL,
    additional_information character varying(255),
    city character varying(255),
    email character varying(255),
    phone character varying(255),
    postal_code bigint,
    street character varying(255),
    street_number character varying(255)
);
    DROP TABLE local.coordinates;
       local         heap    admin_tl    false    3            ?            1259    24711    coordinates_seq    SEQUENCE     w   CREATE SEQUENCE local.coordinates_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE local.coordinates_seq;
       local          admin_tl    false    3            ?            1259    24616    editor    TABLE     r   CREATE TABLE local.editor (
    id bigint NOT NULL,
    name character varying(255),
    coordinates_id bigint
);
    DROP TABLE local.editor;
       local         heap    admin_tl    false    3            ?            1259    24713 
   editor_seq    SEQUENCE     r   CREATE SEQUENCE local.editor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE local.editor_seq;
       local          admin_tl    false    3            ?            1259    16467    hibernate_sequence    SEQUENCE     z   CREATE SEQUENCE local.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE local.hibernate_sequence;
       local          admin_tl    false    3            ?            1259    24621    library    TABLE     s   CREATE TABLE local.library (
    id bigint NOT NULL,
    name character varying(255),
    coordinates_id bigint
);
    DROP TABLE local.library;
       local         heap    admin_tl    false    3            ?            1259    24715    library_seq    SEQUENCE     s   CREATE SEQUENCE local.library_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE local.library_seq;
       local          admin_tl    false    3            ?            1259    24626    role    TABLE     U   CREATE TABLE local.role (
    id bigint NOT NULL,
    role character varying(255)
);
    DROP TABLE local.role;
       local         heap    admin_tl    false    3            ?            1259    24717    role_seq    SEQUENCE     p   CREATE SEQUENCE local.role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE local.role_seq;
       local          admin_tl    false    3            ?            1259    24631    roles_of_users    TABLE     `   CREATE TABLE local.roles_of_users (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 !   DROP TABLE local.roles_of_users;
       local         heap    admin_tl    false    3            ?            1259    24719    user_seq    SEQUENCE     p   CREATE SEQUENCE local.user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE local.user_seq;
       local          admin_tl    false    3            ?            1259    24634    users    TABLE       CREATE TABLE local.users (
    id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    registration_date bytea,
    user_name character varying(255),
    coordinates_id bigint
);
    DROP TABLE local.users;
       local         heap    admin_tl    false    3            ?          0    24576    authors 
   TABLE DATA           H   COPY local.authors (id, first_name, last_name, nationality) FROM stdin;
    local          admin_tl    false    203   ,N       ?          0    24584    authors_of_books 
   TABLE DATA           =   COPY local.authors_of_books (author_id, book_id) FROM stdin;
    local          admin_tl    false    204   IN       ?          0    24587    book 
   TABLE DATA           f   COPY local.book (id, isbn, language, number_of_pages, publication_date, title, editor_id) FROM stdin;
    local          admin_tl    false    205   fN       ?          0    24595    books_of_libraries 
   TABLE DATA           G   COPY local.books_of_libraries (stock, book_id, library_id) FROM stdin;
    local          admin_tl    false    206   cO       ?          0    24600    categories_of_books 
   TABLE DATA           B   COPY local.categories_of_books (book_id, category_id) FROM stdin;
    local          admin_tl    false    207   ?O       ?          0    24603    category 
   TABLE DATA           /   COPY local.category (id, category) FROM stdin;
    local          admin_tl    false    208   ?O       ?          0    24608    coordinates 
   TABLE DATA           x   COPY local.coordinates (id, additional_information, city, email, phone, postal_code, street, street_number) FROM stdin;
    local          admin_tl    false    209   4P       ?          0    24616    editor 
   TABLE DATA           9   COPY local.editor (id, name, coordinates_id) FROM stdin;
    local          admin_tl    false    210   ~P       ?          0    24621    library 
   TABLE DATA           :   COPY local.library (id, name, coordinates_id) FROM stdin;
    local          admin_tl    false    211   ?P       ?          0    24626    role 
   TABLE DATA           '   COPY local.role (id, role) FROM stdin;
    local          admin_tl    false    212   ?P       ?          0    24631    roles_of_users 
   TABLE DATA           9   COPY local.roles_of_users (user_id, role_id) FROM stdin;
    local          admin_tl    false    213   Q       ?          0    24634    users 
   TABLE DATA           q   COPY local.users (id, first_name, last_name, password, registration_date, user_name, coordinates_id) FROM stdin;
    local          admin_tl    false    214   2Q       ?           0    0 
   author_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('local.author_seq', 1, false);
          local          admin_tl    false    215            ?           0    0    book_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('local.book_seq', 7, true);
          local          admin_tl    false    216            ?           0    0    category_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('local.category_seq', 5, true);
          local          admin_tl    false    217            ?           0    0    coordinates_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('local.coordinates_seq', 3, true);
          local          admin_tl    false    218            ?           0    0 
   editor_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('local.editor_seq', 1, false);
          local          admin_tl    false    219            ?           0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('local.hibernate_sequence', 63, true);
          local          admin_tl    false    202            ?           0    0    library_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('local.library_seq', 2, true);
          local          admin_tl    false    220            ?           0    0    role_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('local.role_seq', 1, true);
          local          admin_tl    false    221            ?           0    0    user_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('local.user_seq', 1, true);
          local          admin_tl    false    222                       2606    24583    authors authors_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY local.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY local.authors DROP CONSTRAINT authors_pkey;
       local            admin_tl    false    203                       2606    24594    book book_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY local.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY local.book DROP CONSTRAINT book_pkey;
       local            admin_tl    false    205                       2606    24599 *   books_of_libraries books_of_libraries_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY local.books_of_libraries
    ADD CONSTRAINT books_of_libraries_pkey PRIMARY KEY (book_id, library_id);
 S   ALTER TABLE ONLY local.books_of_libraries DROP CONSTRAINT books_of_libraries_pkey;
       local            admin_tl    false    206    206                        2606    24607    category category_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY local.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY local.category DROP CONSTRAINT category_pkey;
       local            admin_tl    false    208            "           2606    24615    coordinates coordinates_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY local.coordinates
    ADD CONSTRAINT coordinates_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY local.coordinates DROP CONSTRAINT coordinates_pkey;
       local            admin_tl    false    209            $           2606    24620    editor editor_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY local.editor
    ADD CONSTRAINT editor_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY local.editor DROP CONSTRAINT editor_pkey;
       local            admin_tl    false    210            &           2606    24625    library library_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY local.library
    ADD CONSTRAINT library_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY local.library DROP CONSTRAINT library_pkey;
       local            admin_tl    false    211            (           2606    24630    role role_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY local.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY local.role DROP CONSTRAINT role_pkey;
       local            admin_tl    false    212            *           2606    24641    users users_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY local.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY local.users DROP CONSTRAINT users_pkey;
       local            admin_tl    false    214            5           2606    24692 *   roles_of_users fk250ohij85iq9eqiqyoeeyvlt4    FK CONSTRAINT     ?   ALTER TABLE ONLY local.roles_of_users
    ADD CONSTRAINT fk250ohij85iq9eqiqyoeeyvlt4 FOREIGN KEY (user_id) REFERENCES local.users(id);
 S   ALTER TABLE ONLY local.roles_of_users DROP CONSTRAINT fk250ohij85iq9eqiqyoeeyvlt4;
       local          admin_tl    false    214    213    2858            2           2606    24677 "   editor fk37n19rdatimavm4alfgybq3de    FK CONSTRAINT     ?   ALTER TABLE ONLY local.editor
    ADD CONSTRAINT fk37n19rdatimavm4alfgybq3de FOREIGN KEY (coordinates_id) REFERENCES local.coordinates(id);
 K   ALTER TABLE ONLY local.editor DROP CONSTRAINT fk37n19rdatimavm4alfgybq3de;
       local          admin_tl    false    2850    210    209            .           2606    24657 .   books_of_libraries fk39v06awe92f1o1bpni56ubji7    FK CONSTRAINT     ?   ALTER TABLE ONLY local.books_of_libraries
    ADD CONSTRAINT fk39v06awe92f1o1bpni56ubji7 FOREIGN KEY (book_id) REFERENCES local.book(id);
 W   ALTER TABLE ONLY local.books_of_libraries DROP CONSTRAINT fk39v06awe92f1o1bpni56ubji7;
       local          admin_tl    false    206    2844    205            1           2606    24672 /   categories_of_books fk3a26j798utkueryxn2p120887    FK CONSTRAINT     ?   ALTER TABLE ONLY local.categories_of_books
    ADD CONSTRAINT fk3a26j798utkueryxn2p120887 FOREIGN KEY (book_id) REFERENCES local.book(id);
 X   ALTER TABLE ONLY local.categories_of_books DROP CONSTRAINT fk3a26j798utkueryxn2p120887;
       local          admin_tl    false    205    2844    207            6           2606    24697 !   users fk4vkox8genueg7f8bt5ti3s3gr    FK CONSTRAINT     ?   ALTER TABLE ONLY local.users
    ADD CONSTRAINT fk4vkox8genueg7f8bt5ti3s3gr FOREIGN KEY (coordinates_id) REFERENCES local.coordinates(id);
 J   ALTER TABLE ONLY local.users DROP CONSTRAINT fk4vkox8genueg7f8bt5ti3s3gr;
       local          admin_tl    false    2850    209    214            0           2606    24667 /   categories_of_books fk9kmwilky0md1g3hafjebwow9r    FK CONSTRAINT     ?   ALTER TABLE ONLY local.categories_of_books
    ADD CONSTRAINT fk9kmwilky0md1g3hafjebwow9r FOREIGN KEY (category_id) REFERENCES local.category(id);
 X   ALTER TABLE ONLY local.categories_of_books DROP CONSTRAINT fk9kmwilky0md1g3hafjebwow9r;
       local          admin_tl    false    207    2848    208            3           2606    24682 #   library fkffh82lbqpl4b2i9w13c4muhmb    FK CONSTRAINT     ?   ALTER TABLE ONLY local.library
    ADD CONSTRAINT fkffh82lbqpl4b2i9w13c4muhmb FOREIGN KEY (coordinates_id) REFERENCES local.coordinates(id);
 L   ALTER TABLE ONLY local.library DROP CONSTRAINT fkffh82lbqpl4b2i9w13c4muhmb;
       local          admin_tl    false    211    209    2850            /           2606    24662 .   books_of_libraries fknp2nufkeonirvqe5u02u5vn77    FK CONSTRAINT     ?   ALTER TABLE ONLY local.books_of_libraries
    ADD CONSTRAINT fknp2nufkeonirvqe5u02u5vn77 FOREIGN KEY (library_id) REFERENCES local.library(id);
 W   ALTER TABLE ONLY local.books_of_libraries DROP CONSTRAINT fknp2nufkeonirvqe5u02u5vn77;
       local          admin_tl    false    2854    206    211            4           2606    24687 *   roles_of_users fkoa9yg1yb80f1vff7d2mmcgq5i    FK CONSTRAINT     ?   ALTER TABLE ONLY local.roles_of_users
    ADD CONSTRAINT fkoa9yg1yb80f1vff7d2mmcgq5i FOREIGN KEY (role_id) REFERENCES local.role(id);
 S   ALTER TABLE ONLY local.roles_of_users DROP CONSTRAINT fkoa9yg1yb80f1vff7d2mmcgq5i;
       local          admin_tl    false    213    212    2856            ,           2606    24647 ,   authors_of_books fkoweydgd36pt93avdt20962sta    FK CONSTRAINT     ?   ALTER TABLE ONLY local.authors_of_books
    ADD CONSTRAINT fkoweydgd36pt93avdt20962sta FOREIGN KEY (author_id) REFERENCES local.authors(id);
 U   ALTER TABLE ONLY local.authors_of_books DROP CONSTRAINT fkoweydgd36pt93avdt20962sta;
       local          admin_tl    false    203    204    2842            -           2606    24652     book fkpmv0yeqvng13trnm9so4aaq04    FK CONSTRAINT     ?   ALTER TABLE ONLY local.book
    ADD CONSTRAINT fkpmv0yeqvng13trnm9so4aaq04 FOREIGN KEY (editor_id) REFERENCES local.editor(id);
 I   ALTER TABLE ONLY local.book DROP CONSTRAINT fkpmv0yeqvng13trnm9so4aaq04;
       local          admin_tl    false    205    210    2852            +           2606    24642 ,   authors_of_books fkqiianqutodjs14x7ek8shjyao    FK CONSTRAINT     ?   ALTER TABLE ONLY local.authors_of_books
    ADD CONSTRAINT fkqiianqutodjs14x7ek8shjyao FOREIGN KEY (book_id) REFERENCES local.book(id);
 U   ALTER TABLE ONLY local.authors_of_books DROP CONSTRAINT fkqiianqutodjs14x7ek8shjyao;
       local          admin_tl    false    2844    204    205            ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x???MN?0???)? ?'??? Q????e7?;?G4vp7?s?b?QiW??-??}o4SB?JH?Z?J?g?m???=!?????vq??4?W?@c??p??c??r?2?MX??*P]۶??]革???<???J??w??S{??c?f֔??T?>??J?F?)Ð(??&?1?Qk???dsJ??? ?U?m???˗I?f??B??????߄L]?o?V?q?e?Ml?9??&Kgk      ?   5   x????4?4????4?4Q?0
,h???(#. ?1??0???!<sO??? ?=?      ?   $   x?3?4?2bcN#.Nc.SNC.3 ??c???? E      ?   H   x?3?t???q	r??2?t?		r?2?tu	uv????2?ts?q??2???qr)Qs?tK??qqq BY      ?   :   x?3???????<????????\? qA?9?IE?E?E??8?+4¡0F??? ?}"?      ?   *   x?3?t????????2??IT(IL?IU(??KI???qqq ?	?      ?       x?3???L*J,?4????2???@?=... ?l?      ?      x?3???q?v?????? %??      ?      x?3?4?????? ]      ?   A  x?}?[k?0??????!˖?ZV?n??(}Q??]??F??%?RJ????w?N????棚ls5F;C=}[>?N/??v_???!sܵ??y??ع????Yz???ߵY?n???WSn??8?"Ȃ??v?%p??	s??݈?JS?$?u)5m["@??TΑ??{?p:f?n??B?????A;????dO???y6e?ʶ?m?(??hH????R?^ʩ?|cS@??@M
?V?3B9;?ͦ???I?%1jL????y!??R?ᛜM?87?^???\TI?f??vL??:]F?.Y멫?M?67Z]?F??ўV     