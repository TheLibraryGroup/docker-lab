PGDMP     6    :                x            thelibrary_loan    12.2 (Debian 12.2-1.pgdg100+1)    12.2 (Debian 12.2-1.pgdg100+1)     ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    16384    thelibrary_loan    DATABASE        CREATE DATABASE thelibrary_loan WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE thelibrary_loan;
                admin_tl    false                        2615    2200    dev    SCHEMA        CREATE SCHEMA dev;
    DROP SCHEMA dev;
                admin_tl    false            a           0    0 
   SCHEMA dev    COMMENT     3   COMMENT ON SCHEMA dev IS 'standard public schema';
                   admin_tl    false    3            b           0    0 
   SCHEMA dev    ACL     ?   REVOKE ALL ON SCHEMA dev FROM postgres;
REVOKE ALL ON SCHEMA dev FROM PUBLIC;
GRANT ALL ON SCHEMA dev TO admin_tl;
GRANT ALL ON SCHEMA dev TO PUBLIC;
                   admin_tl    false    3            ?            1259    24721    loan    TABLE     ?   CREATE TABLE dev.loan (
    id bigint NOT NULL,
    book_id bigint,
    duration_in_day integer,
    extended boolean,
    returned boolean NOT NULL,
    start_date timestamp without time zone,
    user_id bigint
);
    DROP TABLE dev.loan;
       dev         heap    admin_tl    false    3            ?            1259    24726    loan_seq    SEQUENCE     n   CREATE SEQUENCE dev.loan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE dev.loan_seq;
       dev          admin_tl    false    3            Y          0    24721    loan 
   TABLE DATA           b   COPY dev.loan (id, book_id, duration_in_day, extended, returned, start_date, user_id) FROM stdin;
    dev          admin_tl    false    202           c           0    0    loan_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('dev.loan_seq', 20, true);
          dev          admin_tl    false    203            ?
           2606    24725    loan loan_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY dev.loan
    ADD CONSTRAINT loan_pkey PRIMARY KEY (id);
 5   ALTER TABLE ONLY dev.loan DROP CONSTRAINT loan_pkey;
       dev            admin_tl    false    202            Y   X   x??ʻ?0?ڞ??9?w&H??# :
$????}?%nn?<y?l?#?????B??V?V?V?֤֠?k5̄??????K?     