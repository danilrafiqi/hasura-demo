SET check_function_bodies = false;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
CREATE TABLE public.article (
    id uuid NOT NULL,
    title text NOT NULL,
    content text NOT NULL,
    author_id uuid NOT NULL
);
CREATE TABLE public.author (
    id uuid NOT NULL,
    name text NOT NULL,
    rating integer NOT NULL
);
ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
