--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2020-11-20 15:39:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 16495)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16509)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no character varying,
    dept_no character varying
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16515)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying,
    emp_no character varying NOT NULL
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16521)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no character varying NOT NULL,
    emp_title_id character varying,
    birth_date date,
    first_name character varying,
    last_name character varying,
    sex "char",
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16527)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no character varying NOT NULL,
    salary money
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16533)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 2875 (class 2606 OID 16540)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 2877 (class 2606 OID 16546)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 2879 (class 2606 OID 16548)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 2881 (class 2606 OID 16550)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 2883 (class 2606 OID 16552)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


-- Completed on 2020-11-20 15:39:01

--
-- PostgreSQL database dump complete
--

