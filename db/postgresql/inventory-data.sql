--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2025-03-03 14:57:49

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
-- TOC entry 5013 (class 0 OID 56637)
-- Dependencies: 239
-- Data for Name: batch_alerts; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5010 (class 0 OID 56562)
-- Dependencies: 236
-- Data for Name: batch_entries; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5011 (class 0 OID 56589)
-- Dependencies: 237
-- Data for Name: batch_exits; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5012 (class 0 OID 56618)
-- Dependencies: 238
-- Data for Name: batch_movements; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5009 (class 0 OID 56550)
-- Dependencies: 235
-- Data for Name: batches; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5002 (class 0 OID 56474)
-- Dependencies: 228
-- Data for Name: categories; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.categories (category_id, name, description) VALUES (24, 'Arinas', '');
INSERT INTO inventory.categories (category_id, name, description) VALUES (19, 'Aguas', '');
INSERT INTO inventory.categories (category_id, name, description) VALUES (20, 'Aceites', '');
INSERT INTO inventory.categories (category_id, name, description) VALUES (18, 'Granos', '');
INSERT INTO inventory.categories (category_id, name, description) VALUES (9, 'Embutidos', '');
INSERT INTO inventory.categories (category_id, name, description) VALUES (16, 'Carne blanca', '');
INSERT INTO inventory.categories (category_id, name, description) VALUES (2, 'bbbbbbbbbbb', 'erererer');
INSERT INTO inventory.categories (category_id, name, description) VALUES (52, 'www', 'wwww');
INSERT INTO inventory.categories (category_id, name, description) VALUES (22, 'Cereales', '');


--
-- TOC entry 5005 (class 0 OID 56507)
-- Dependencies: 231
-- Data for Name: clients; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.clients (client_id, name, address, phone, email) VALUES (1, 'Pedro', '', '', '');


--
-- TOC entry 5017 (class 0 OID 56661)
-- Dependencies: 243
-- Data for Name: clients_products_request; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5008 (class 0 OID 56534)
-- Dependencies: 234
-- Data for Name: inventory; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5007 (class 0 OID 56526)
-- Dependencies: 233
-- Data for Name: locations; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5003 (class 0 OID 56482)
-- Dependencies: 229
-- Data for Name: products; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5015 (class 0 OID 56654)
-- Dependencies: 241
-- Data for Name: products_suppliers; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5004 (class 0 OID 56499)
-- Dependencies: 230
-- Data for Name: suppliers; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5006 (class 0 OID 56515)
-- Dependencies: 232
-- Data for Name: users; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5019 (class 0 OID 56678)
-- Dependencies: 245
-- Data for Name: valtab; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.valtab (valtab_id, "values", code, description, default_value) VALUES (3, 'g,oz,lb,kg,ton', 'WEIGHT', '', 'kg');
INSERT INTO inventory.valtab (valtab_id, "values", code, description, default_value) VALUES (4, 'a,ha', 'SURFACE', '', '');
INSERT INTO inventory.valtab (valtab_id, "values", code, description, default_value) VALUES (1, 'mm,cm,dm,meters,km2', 'DISTANCE', '', 'meters1');


--
-- TOC entry 5021 (class 0 OID 56699)
-- Dependencies: 247
-- Data for Name: warehouses; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 227
-- Name: batch_alerts_alert_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batch_alerts_alert_id_seq', 1, false);


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 220
-- Name: batch_entries_entry_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batch_entries_entry_id_seq', 1, false);


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 252
-- Name: batch_entries_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batch_entries_seq', 1, false);


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 221
-- Name: batch_exits_exit_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batch_exits_exit_id_seq', 1, false);


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 226
-- Name: batch_movements_movement_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batch_movements_movement_id_seq', 1, false);


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 250
-- Name: batch_movements_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batch_movements_seq', 1, false);


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 218
-- Name: batches_batch_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.batches_batch_id_seq', 1, false);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 217
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.categories_category_id_seq', 24, true);


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 248
-- Name: categories_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.categories_seq', 101, true);


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 223
-- Name: clients_client_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.clients_client_id_seq', 1, false);


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 242
-- Name: clients_products_request_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.clients_products_request_id_seq', 1, false);


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 253
-- Name: clients_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.clients_seq', 1, true);


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 219
-- Name: inventory_inventory_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.inventory_inventory_id_seq', 1, false);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 225
-- Name: locations_location_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.locations_location_id_seq', 1, false);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.products_product_id_seq', 1, false);


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 249
-- Name: products_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.products_seq', 1, false);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 240
-- Name: products_suppliers_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.products_suppliers_id_seq', 1, false);


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 222
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.suppliers_supplier_id_seq', 1, false);


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 224
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.users_user_id_seq', 1, false);


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 244
-- Name: valtab_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.valtab_id_seq', 6, true);


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 251
-- Name: valtab_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.valtab_seq', 101, true);


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 246
-- Name: warehouses_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.warehouses_id_seq', 1, false);


-- Completed on 2025-03-03 14:57:49

--
-- PostgreSQL database dump complete
--

