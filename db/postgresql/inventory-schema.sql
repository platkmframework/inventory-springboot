--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2025-03-03 14:54:27

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

--
-- TOC entry 6 (class 2615 OID 56425)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 56461)
-- Name: batch_alerts_alert_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batch_alerts_alert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batch_alerts_alert_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 239 (class 1259 OID 56637)
-- Name: batch_alerts; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.batch_alerts (
    alert_id integer DEFAULT nextval('inventory.batch_alerts_alert_id_seq'::regclass) NOT NULL,
    batch_id integer NOT NULL,
    alert_type character varying(100) NOT NULL,
    alert_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    alert_status character varying(50) DEFAULT 'pending'::character varying,
    notes text
);


ALTER TABLE inventory.batch_alerts OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 56454)
-- Name: batch_entries_entry_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batch_entries_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batch_entries_entry_id_seq OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 56562)
-- Name: batch_entries; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.batch_entries (
    entry_id bigint DEFAULT nextval('inventory.batch_entries_entry_id_seq'::regclass) NOT NULL,
    batch_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity double precision NOT NULL,
    entry_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    supplier_id integer,
    user_id integer
);


ALTER TABLE inventory.batch_entries OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 56820)
-- Name: batch_entries_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batch_entries_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batch_entries_seq OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 56455)
-- Name: batch_exits_exit_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batch_exits_exit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batch_exits_exit_id_seq OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 56589)
-- Name: batch_exits; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.batch_exits (
    exit_id integer DEFAULT nextval('inventory.batch_exits_exit_id_seq'::regclass) NOT NULL,
    batch_id integer,
    product_id integer NOT NULL,
    quantity numeric(10,2) NOT NULL,
    exit_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    reason text,
    client_id integer,
    user_id integer
);


ALTER TABLE inventory.batch_exits OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 56460)
-- Name: batch_movements_movement_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batch_movements_movement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batch_movements_movement_id_seq OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 56618)
-- Name: batch_movements; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.batch_movements (
    movement_id bigint DEFAULT nextval('inventory.batch_movements_movement_id_seq'::regclass) NOT NULL,
    batch_id integer,
    movement_type character varying(255) NOT NULL,
    quantity double precision NOT NULL,
    movement_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_id integer,
    notes text
);


ALTER TABLE inventory.batch_movements OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 56792)
-- Name: batch_movements_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batch_movements_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batch_movements_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 56452)
-- Name: batches_batch_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.batches_batch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.batches_batch_id_seq OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 56550)
-- Name: batches; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.batches (
    batch_id integer DEFAULT nextval('inventory.batches_batch_id_seq'::regclass) NOT NULL,
    product_id integer NOT NULL,
    batch_number character varying(100) NOT NULL,
    manufacture_date date NOT NULL,
    expiry_date date NOT NULL,
    initial_quantity numeric(10,2) NOT NULL,
    available_quantity numeric(10,2) NOT NULL,
    status boolean DEFAULT true
);


ALTER TABLE inventory.batches OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 56451)
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 56474)
-- Name: categories; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.categories (
    category_id bigint DEFAULT nextval('inventory.categories_category_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE inventory.categories OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 56721)
-- Name: categories_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.categories_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.categories_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 56457)
-- Name: clients_client_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.clients_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.clients_client_id_seq OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 56507)
-- Name: clients; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.clients (
    client_id bigint DEFAULT nextval('inventory.clients_client_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    address text,
    phone character varying(255),
    email character varying(255)
);


ALTER TABLE inventory.clients OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 56660)
-- Name: clients_products_request_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.clients_products_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.clients_products_request_id_seq OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 56661)
-- Name: clients_products_request; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.clients_products_request (
    id integer DEFAULT nextval('inventory.clients_products_request_id_seq'::regclass) NOT NULL,
    clients_id integer,
    products_id integer,
    request_count double precision,
    status character varying(100)
);


ALTER TABLE inventory.clients_products_request OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 56835)
-- Name: clients_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.clients_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.clients_seq OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 56453)
-- Name: inventory_inventory_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.inventory_inventory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.inventory_inventory_id_seq OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 56534)
-- Name: inventory; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.inventory (
    inventory_id integer DEFAULT nextval('inventory.inventory_inventory_id_seq'::regclass) NOT NULL,
    product_id integer NOT NULL,
    current_quantity numeric(10,2) NOT NULL,
    location_id integer
);


ALTER TABLE inventory.inventory OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 56459)
-- Name: locations_location_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.locations_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.locations_location_id_seq OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 56526)
-- Name: locations; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.locations (
    location_id integer DEFAULT nextval('inventory.locations_location_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    address text,
    capacity numeric(10,2)
);


ALTER TABLE inventory.locations OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 56450)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 56482)
-- Name: products; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.products (
    product_id bigint DEFAULT nextval('inventory.products_product_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    category_id integer,
    purchase_price double precision NOT NULL,
    sale_price double precision NOT NULL,
    unit character varying(255) NOT NULL,
    min_quantity double precision DEFAULT 0,
    batch_managed boolean DEFAULT false,
    perishable boolean DEFAULT false,
    updated_date date,
    status boolean
);


ALTER TABLE inventory.products OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 56775)
-- Name: products_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.products_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.products_seq OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 56653)
-- Name: products_suppliers_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.products_suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.products_suppliers_id_seq OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 56654)
-- Name: products_suppliers; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.products_suppliers (
    id integer DEFAULT nextval('inventory.products_suppliers_id_seq'::regclass) NOT NULL,
    products_id integer,
    suppliers_id integer
);


ALTER TABLE inventory.products_suppliers OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 56456)
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.suppliers_supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.suppliers_supplier_id_seq OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 56499)
-- Name: suppliers; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.suppliers (
    supplier_id integer DEFAULT nextval('inventory.suppliers_supplier_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    contact character varying(255),
    address text,
    phone character varying(20),
    email character varying(100)
);


ALTER TABLE inventory.suppliers OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 56458)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 56515)
-- Name: users; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.users (
    user_id integer DEFAULT nextval('inventory.users_user_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password text NOT NULL,
    role character varying(50) NOT NULL,
    registration_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE inventory.users OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 56677)
-- Name: valtab_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.valtab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.valtab_id_seq OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 56678)
-- Name: valtab; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.valtab (
    valtab_id bigint DEFAULT nextval('inventory.valtab_id_seq'::regclass) NOT NULL,
    "values" character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description text,
    default_value character varying(255)
);


ALTER TABLE inventory.valtab OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 56808)
-- Name: valtab_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.valtab_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.valtab_seq OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 56698)
-- Name: warehouses_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.warehouses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE inventory.warehouses_id_seq OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 56699)
-- Name: warehouses; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.warehouses (
    warehouses_id integer DEFAULT nextval('inventory.warehouses_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    address text,
    capacity numeric(10,2),
    company_id_fk integer
);


ALTER TABLE inventory.warehouses OWNER TO postgres;

--
-- TOC entry 4821 (class 2606 OID 56646)
-- Name: batch_alerts batch_alerts_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_alerts
    ADD CONSTRAINT batch_alerts_pkey PRIMARY KEY (alert_id);


--
-- TOC entry 4815 (class 2606 OID 56811)
-- Name: batch_entries batch_entries_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_entries
    ADD CONSTRAINT batch_entries_pkey PRIMARY KEY (entry_id);


--
-- TOC entry 4817 (class 2606 OID 56597)
-- Name: batch_exits batch_exits_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_exits
    ADD CONSTRAINT batch_exits_pkey PRIMARY KEY (exit_id);


--
-- TOC entry 4819 (class 2606 OID 56779)
-- Name: batch_movements batch_movements_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_movements
    ADD CONSTRAINT batch_movements_pkey PRIMARY KEY (movement_id);


--
-- TOC entry 4813 (class 2606 OID 56556)
-- Name: batches batches_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batches
    ADD CONSTRAINT batches_pkey PRIMARY KEY (batch_id);


--
-- TOC entry 4797 (class 2606 OID 56709)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4803 (class 2606 OID 56823)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);


--
-- TOC entry 4825 (class 2606 OID 56666)
-- Name: clients_products_request clients_products_request_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.clients_products_request
    ADD CONSTRAINT clients_products_request_pkey PRIMARY KEY (id);


--
-- TOC entry 4811 (class 2606 OID 56539)
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id);


--
-- TOC entry 4809 (class 2606 OID 56533)
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);


--
-- TOC entry 4799 (class 2606 OID 56724)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4823 (class 2606 OID 56659)
-- Name: products_suppliers products_suppliers_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products_suppliers
    ADD CONSTRAINT products_suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 4801 (class 2606 OID 56506)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);


--
-- TOC entry 4805 (class 2606 OID 56525)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4807 (class 2606 OID 56523)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4827 (class 2606 OID 56795)
-- Name: valtab valtab_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.valtab
    ADD CONSTRAINT valtab_pkey PRIMARY KEY (valtab_id);


--
-- TOC entry 4829 (class 2606 OID 56706)
-- Name: warehouses warehouses_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (warehouses_id);


--
-- TOC entry 4844 (class 2606 OID 56647)
-- Name: batch_alerts batch_alerts_batch_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_alerts
    ADD CONSTRAINT batch_alerts_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES inventory.batches(batch_id);


--
-- TOC entry 4834 (class 2606 OID 56569)
-- Name: batch_entries batch_entries_batch_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_entries
    ADD CONSTRAINT batch_entries_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES inventory.batches(batch_id);


--
-- TOC entry 4835 (class 2606 OID 56735)
-- Name: batch_entries batch_entries_product_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_entries
    ADD CONSTRAINT batch_entries_product_id_fkey FOREIGN KEY (product_id) REFERENCES inventory.products(product_id);


--
-- TOC entry 4836 (class 2606 OID 56579)
-- Name: batch_entries batch_entries_supplier_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_entries
    ADD CONSTRAINT batch_entries_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES inventory.suppliers(supplier_id);


--
-- TOC entry 4837 (class 2606 OID 56584)
-- Name: batch_entries batch_entries_user_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_entries
    ADD CONSTRAINT batch_entries_user_id_fkey FOREIGN KEY (user_id) REFERENCES inventory.users(user_id);


--
-- TOC entry 4838 (class 2606 OID 56598)
-- Name: batch_exits batch_exits_batch_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_exits
    ADD CONSTRAINT batch_exits_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES inventory.batches(batch_id);


--
-- TOC entry 4839 (class 2606 OID 56824)
-- Name: batch_exits batch_exits_client_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_exits
    ADD CONSTRAINT batch_exits_client_id_fkey FOREIGN KEY (client_id) REFERENCES inventory.clients(client_id);


--
-- TOC entry 4840 (class 2606 OID 56740)
-- Name: batch_exits batch_exits_product_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_exits
    ADD CONSTRAINT batch_exits_product_id_fkey FOREIGN KEY (product_id) REFERENCES inventory.products(product_id);


--
-- TOC entry 4841 (class 2606 OID 56613)
-- Name: batch_exits batch_exits_user_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_exits
    ADD CONSTRAINT batch_exits_user_id_fkey FOREIGN KEY (user_id) REFERENCES inventory.users(user_id);


--
-- TOC entry 4842 (class 2606 OID 56627)
-- Name: batch_movements batch_movements_batch_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_movements
    ADD CONSTRAINT batch_movements_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES inventory.batches(batch_id);


--
-- TOC entry 4843 (class 2606 OID 56632)
-- Name: batch_movements batch_movements_user_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batch_movements
    ADD CONSTRAINT batch_movements_user_id_fkey FOREIGN KEY (user_id) REFERENCES inventory.users(user_id);


--
-- TOC entry 4833 (class 2606 OID 56730)
-- Name: batches batches_product_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.batches
    ADD CONSTRAINT batches_product_id_fkey FOREIGN KEY (product_id) REFERENCES inventory.products(product_id);


--
-- TOC entry 4845 (class 2606 OID 56745)
-- Name: products_suppliers fk_products_suppliers_products_id; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products_suppliers
    ADD CONSTRAINT fk_products_suppliers_products_id FOREIGN KEY (products_id) REFERENCES inventory.products(product_id);


--
-- TOC entry 4846 (class 2606 OID 56672)
-- Name: products_suppliers fk_products_suppliers_suppliers_id; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products_suppliers
    ADD CONSTRAINT fk_products_suppliers_suppliers_id FOREIGN KEY (suppliers_id) REFERENCES inventory.suppliers(supplier_id);


--
-- TOC entry 4831 (class 2606 OID 56545)
-- Name: inventory inventory_location_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.inventory
    ADD CONSTRAINT inventory_location_id_fkey FOREIGN KEY (location_id) REFERENCES inventory.locations(location_id);


--
-- TOC entry 4832 (class 2606 OID 56725)
-- Name: inventory inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES inventory.products(product_id);


--
-- TOC entry 4830 (class 2606 OID 56710)
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES inventory.categories(category_id);


-- Completed on 2025-03-03 14:54:28

--
-- PostgreSQL database dump complete
--

