--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2 (Ubuntu 10.2-1.pgdg14.04+1)
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-26 12:58:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
--SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;


CREATE SCHEMA IF NOT EXISTS whiting_sb AUTHORIZATION u9tgm7n0rjh5ge;


--
-- TOC entry 380 (class 1259 OID 95378)
-- Name: bulk_req_res; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.bulk_req_res (
    batchid text,
    filename text,
    request bytea,
    response text,
    status integer,
    created_on timestamp without time zone
);


--ALTER TABLE whiting_sb.bulk_req_res OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 352 (class 1259 OID 41686)
-- Name: iccomcod__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.iccomcod__c (
    iccomcod_div__c character varying(18),
    iccomcod_ltvend_po__c double precision,
    iccomcod_disgoodlocnum__c character varying(10),
    iccomcod_disncmlocid__c character varying(18),
    formula_extid__c character varying(1300),
    iccomcod_ltfrmwo__c double precision,
    iccomcod_stdcostmrkupdwn_po__c double precision,
    iccomcod_dflttracksrl_pl__c character varying(255),
    iccomcod_ltshipcomp__c double precision,
    iccomcod_vatclass_po__c character varying(18),
    iccomcod_mrpminqty__c double precision,
    iccomcod_respeng__c character varying(18),
    iccomcod_dfltpuruom_po__c character varying(18),
    iccomcod_labeltemplate__c character varying(18),
    iccomcod_popriceind_po_pl__c character varying(255),
    iccomcod_disncmlocnum__c character varying(10),
    iccomcod_servicetype_po_pl__c character varying(255),
    iccomcod_disgoodlocid__c character varying(18),
    iccomcod_inspcode__c character varying(18),
    iccomcod_dflttracklot_pl__c character varying(255),
    iccomcod_taxbleind_po__c boolean,
    iccomcod_backflushpol_pl__c character varying(255),
    iccomcod_scfctrcurprice_po__c double precision,
    iccomcod_handlcode__c character varying(18),
    iccomcod_storagecode__c character varying(10),
    iccomcod_dfltinvuom__c character varying(18),
    iccomcod_dfltshlflifedays__c double precision,
    iccomcod_ltreqcnvrtpo_po__c double precision,
    iccomcod_engstatus_pl__c character varying(255),
    iccomcod_buydiv__c character varying(18),
    iccomcod_rcptlocid__c character varying(18),
    iccomcod_shelflife__c double precision,
    name character varying(80),
    iccomcod_itemtype_po_pl__c character varying(255),
    iccomcod_ltvendship__c double precision,
    iccomcod_reclass__c boolean,
    iccomcod_sspolqty__c double precision,
    iccomcod_disscraplocnum__c character varying(10),
    iccomcod_dimval_po__c character varying(18),
    iccomcod_worcptlot__c boolean,
    iccomcod_disrcvlocid__c character varying(18),
    iccomcod_overrcptind_po__c boolean,
    iccomcod_qtydecimal_po__c double precision,
    iccomcod_dflttrackcond__c boolean,
    iccomcod_wmslocnum__c character varying(10),
    iccomcod_stdcostupdind_po_pl__c character varying(255),
    iccomcod_refroutitem__c character varying(18),
    iccomcod_mrpplanpol_pl__c character varying(255),
    iccomcod_abc__c character varying(1),
    isdeleted boolean,
    iccomcod_ltinternalrqst__c double precision,
    systemmodstamp timestamp without time zone,
    iccomcod_ltfrmreq__c double precision,
    iccomcod_respinv__c character varying(18),
    iccomcod_disassmind__c boolean,
    iccomcod_descr__c character varying(100),
    formula_searchindex__c character varying(1300),
    iccomcod_engtype_pl__c character varying(255),
    iccomcod_ltrcvinsp__c double precision,
    iccomcod_ltmfgwopick__c double precision,
    iccomcod_orgid__c character varying(18),
    iccomcod_dflthomeprojind_pl__c character varying(255),
    iccomcod_ltintrsitetxfr__c double precision,
    iccomcod_dflttrackrev__c boolean,
    iccomcod_mrpmaxqty__c double precision,
    iccomcod_validatelot__c boolean,
    iccomcod_dfltenguom__c character varying(18),
    iccomcod_udimethod__c character varying(6),
    iccomcod_ltdiswait__c double precision,
    iccomcod_rschmsg__c boolean,
    createddate timestamp without time zone,
    iccomcod_mrpchange__c boolean,
    iccomcod_wmslocid__c character varying(18),
    iccomcod_disrcvlocnum__c character varying(10),
    searchindex__c character varying(255),
    iccomcod_disscraplocid__c character varying(18),
    iccomcod_rcptlocnum__c character varying(10),
    iccomcod_respbuyer_po__c character varying(18),
    iccomcod_qtydecimal__c double precision,
    iccomcod_ltmfgworel__c double precision,
    iccomcod_ltintrdivtxfr__c double precision,
    iccomcod_ohdmtlrate__c double precision,
    iccomcod_disyieldfctr__c double precision,
    iccomcod_dimval__c character varying(18),
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    iccomcod_allocpol__c boolean,
    iccomcod_mrppolqty__c double precision,
    iccomcod_ltmfgwoshopflr__c double precision,
    iccomcod_hazardmtl__c boolean,
    iccomcod_src_pl__c character varying(255),
    iccomcod_fifoind__c boolean,
    iccomcod_scfctrhstprice_po__c double precision,
    iccomcod_comcod__c character varying(20),
    formula_name__c character varying(1300),
    iccomcod_shipsrlno__c boolean,
    sfid character varying(18),
    id integer,
    iccomcod_origmrpchange__c boolean
);


--ALTER TABLE whiting_sb.iccomcod__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 345 (class 1259 OID 41644)
-- Name: icitem__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icitem__c (
    icitem_labeltemplateind__c boolean,
    icitem_abcsegmentnum__c double precision,
    formula_extid__c character varying(1300),
    icitem_iccomcod__c character varying(18),
    icitem_disgoodlocid__c character varying(18),
    icitem_icitemacc__c character varying(18),
    icitem_storetempmaxc__c double precision,
    icitem_srlcontrol__c boolean,
    icitem_mrpminqtyind__c boolean,
    icitem_disncmlocnum__c character varying(10),
    icitem_backflushpol__c character varying(255),
    formula_sspolqty__c double precision,
    formula_ltvendship__c double precision,
    icitem_mrppolqty__c double precision,
    icitem_inspcode__c character varying(18),
    icitem_shiptempmaxc__c double precision,
    icitem_ltfrmwoind__c boolean,
    icitem_drpchange__c boolean,
    icitem_shipsrlno__c boolean,
    icitem_disncmlocidind__c boolean,
    icitem_wmsitemno__c character varying(50),
    icitem_ltfrmwo__c double precision,
    icitem_shipsrlnoind__c boolean,
    icitem_disncmlocid__c character varying(18),
    icitem_disgoodlocnum__c character varying(10),
    icitem_div__c character varying(18),
    formula_disassmind__c boolean,
    formula_ltfrmreq__c double precision,
    icitem_lotcontrol__c boolean,
    icitem_abcdate__c date,
    icitem_mrppolqtyind__c boolean,
    icitem_prevabc__c character varying(1),
    icitem_backflushpolind__c boolean,
    icitem_buydiv__c character varying(18),
    icitem_contpct__c double precision,
    icitem_poconttype__c character varying(18),
    icitem_disgoodlocidind__c boolean,
    icitem_mrpminqty__c double precision,
    icitem_labeltemplate__c character varying(18),
    icitem_altuom__c character varying(18),
    icitem_ltvendship__c double precision,
    icitem_transittype__c character varying(255),
    icitem_disscraplocnum__c character varying(10),
    formula_mrppolqty__c double precision,
    icitem_sspolqty__c double precision,
    formula_ltintrsitetxfr__c double precision,
    icitem_ltintrdivtxfrind__c boolean,
    icitem_scrapfctr__c double precision,
    icitem_ltshipcompind__c boolean,
    icitem_disscraplocidind__c boolean,
    icitem_backflushpol_pl__c character varying(255),
    formula_shipsrlno__c boolean,
    icitem_height__c double precision,
    formula_ltfrmwo__c double precision,
    icitem_daysusage__c double precision,
    icitem_length__c double precision,
    icitem_validatelotfrm__c boolean,
    rollsumm_actucsttot__c double precision,
    formula_disgoodlocnum__c character varying(1300),
    name character varying(100),
    icitem_handlcode__c character varying(18),
    icitem_udimethodfrm__c character varying(1300),
    icitem_storetempminf__c double precision,
    icitem_peitemsave__c character varying(50),
    icitem_ltfrmreq__c double precision,
    icitem_di__c character varying(150),
    icitem_disassmind__c boolean,
    icitem_udimethodind__c boolean,
    icitem_shiptempminf__c double precision,
    formula_respplannertext__c character varying(1300),
    icitem_rschmsgind__c boolean,
    icitem_validatelotind__c boolean,
    formula_mrpminqty__c double precision,
    icitem_ltdiswaitind__c boolean,
    icitem_normplanpol__c character varying(255),
    icitem_allocpolind__c boolean,
    icitem_ltmfgwoshopflrind__c boolean,
    icitem_summicixr__c boolean,
    formula_ltmfgworel__c double precision,
    icitem_rcptlocid__c character varying(18),
    icitem_mrpplanpolind__c boolean,
    icitem_ltintrsitetxfr__c double precision,
    icitem_width__c double precision,
    icitem_shelflife__c double precision,
    icitem_dimvalind__c boolean,
    icitem_invuom__c character varying(18),
    isdeleted boolean,
    icitem_mrpmaxqtyind__c boolean,
    icitem_storetempminc__c double precision,
    formula_qtydecimal__c double precision,
    formula_ohdmtlrate__c double precision,
    systemmodstamp timestamp without time zone,
    icitem_ohdmtlrateind__c boolean,
    icitem_size__c double precision,
    icitem_disyieldfctrind__c boolean,
    icitem_shiptempminc__c double precision,
    icitem_reclass__c boolean,
    icitem_worcptlot__c boolean,
    icitem_ltrcvinspind__c boolean,
    icitem_orgidind__c boolean,
    icitem_ltmfgworelind__c boolean,
    formula_mrpplanpol__c character varying(1300),
    icitem_supreqmult__c double precision,
    icitem_ltmfgwopickind__c boolean,
    icitem_qtydecimalind__c boolean,
    icitem_invstate__c character varying(255),
    rollsumm_totalqty__c double precision,
    icitem_disrcvlocid__c character varying(18),
    formula_searchindex__c character varying(1300),
    formula_allocpol__c boolean,
    icitem_avgtoollifeused__c double precision,
    icitem_wmslocnum__c character varying(10),
    icitem_homeprojind__c character varying(255),
    formula_ltmfgwoshopflr__c double precision,
    icitem_respinvind__c boolean,
    icitem_disrcvlocnumind__c boolean,
    icitem_abc__c character varying(1),
    icitem_wmslocid__c character varying(18),
    icitem_worcptlotfrm__c boolean,
    icitem_descr__c character varying(100),
    icitem_disrcvlocnum__c character varying(10),
    icitem_respinv__c character varying(18),
    icitem_wmslocidind__c boolean,
    formula_lastcountdate__c date,
    icitem_tslitem__c boolean,
    icitem_homeprojindind__c boolean,
    icitem_wmslocnumind__c boolean,
    icitem_rcptlocnum__c character varying(10),
    formula_shelflife__c double precision,
    icitem_qtydecimal__c double precision,
    icitem_ltmfgwopick__c double precision,
    icitem_worcptlotind__c boolean,
    icitem_ltmfgworel__c double precision,
    icitem_orgid__c character varying(18),
    icitem_disrcvlocidind__c boolean,
    icitem_ltrcvinsp__c double precision,
    createddate timestamp without time zone,
    icitem_disyieldfctr__c double precision,
    icitem_relateditem__c character varying(18),
    icitem_ohdmtlrate__c double precision,
    icitem_srcdivovr__c character varying(18),
    formula_ltshipcomp__c double precision,
    icitem_doi__c double precision,
    icitem_rcptlocidind__c boolean,
    icitem_mrpmaxqty__c double precision,
    icitem_dimval__c character varying(18),
    icitem_shelflifeind__c boolean,
    icitem_mrpplanpol__c character varying(255),
    icitem_ltintrsitetxfrind__c boolean,
    searchindex__c character varying(255),
    icitem_weight__c double precision,
    icitem_allocpol__c boolean,
    icitem_stageqty__c double precision,
    icitem_ltmfgwoshopflr__c double precision,
    icitem_usageforecast__c boolean,
    formula_engindicator__c boolean,
    formula_homeprojind__c character varying(1300),
    icitem_src_pl__c character varying(255),
    formula_disgoodlocid__c character varying(1300),
    icitem_udimethod__c character varying(6),
    icitem_ltdiswait__c double precision,
    icitem_toollifeunits__c double precision,
    formula_backflushpol__c character varying(1300),
    icitem_validatelot__c boolean,
    icitem_mrpchange__c boolean,
    icitem_rschmsg__c boolean,
    formula_respinv__c character varying(1300),
    icitem_ltfrmreqind__c boolean,
    icitem_msds__c character varying(30),
    rollsumm_stducsttot__c double precision,
    rollsumm_lastcountdate__c date,
    icitem_povendpoaddr__c character varying(18),
    externalid__c character varying(100),
    formula_ltrcvinsp__c double precision,
    triggeroptions__c character varying(40),
    icitem_engdivovr__c character varying(18),
    icitem_commpeitem__c character varying(18),
    icitem_disscraplocid__c character varying(18),
    formula_ltmfgwopick__c double precision,
    icitem_imageurl__c character varying(255),
    icitem_icitemcst__c character varying(18),
    icitem_ltshipcomp__c double precision,
    icitem_item__c character varying(18),
    icitem_storetempmaxf__c double precision,
    formula_name__c character varying(1300),
    icitem_sspolqtyind__c boolean,
    icitem_icitemstd__c character varying(18),
    icitem_invrev__c character varying(1300),
    icitem_ltvendshipind__c boolean,
    icitem_shiptempmaxf__c double precision,
    icitem_dimvalueind__c boolean,
    rollsumm_totalqtynocons__c double precision,
    icitem_ltintrdivtxfr__c double precision,
    formula_mrpmaxqty__c double precision,
    icitem_wmsunits__c double precision,
    sfid character varying(18),
    id integer,
    icitem_origmrpchange__c boolean
);


--ALTER TABLE whiting_sb.icitem__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 346 (class 1259 OID 41650)
-- Name: icitemacc__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icitemacc__c (
    formula_extid__c character varying(1300),
    icitemacc_comcod__c character varying(18),
    icitemacc_woscrapacct__c character varying(18),
    icitemacc_adjclracct__c character varying(18),
    icitemacc_adjclracctind__c boolean,
    icitemacc_item__c character varying(18),
    icitemacc_woscrapacctind__c boolean,
    icitemacc_posubwipacct__c character varying(18),
    icitemacc_inddmdacct__c character varying(18),
    icitemacc_invnnacct__c character varying(18),
    icitemacc_invacct__c character varying(18),
    icitemacc_wipacctind__c boolean,
    icitemacc_intrdivtxfracctind__c boolean,
    icitemacc_rwkwovaracctind__c boolean,
    icitemacc_invscrpacctind__c boolean,
    icitemacc_intrsitetxfracct__c character varying(18),
    name character varying(80),
    icitemacc_wovaracct__c character varying(18),
    icitemacc_rwkwipacct__c character varying(18),
    icitemacc_mtlohdvaracctind__c boolean,
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    formula_searchindex__c character varying(1300),
    icitemacc_wipdisacctind__c boolean,
    icitemacc_povaracct__c character varying(18),
    icitemacc_invnegvaracct__c character varying(18),
    icitemacc_invnegvaracctind__c boolean,
    icitemacc_povaracctind__c boolean,
    icitemacc_wipdisacct__c character varying(18),
    createddate timestamp without time zone,
    searchindex__c character varying(255),
    icitemacc_mtlohdvarind__c boolean,
    icitemacc_mtlohdvaracct__c character varying(18),
    icitemacc_rwkwipacctind__c boolean,
    icitemacc_wovaracctind__c boolean,
    icitemacc_invscrpacct__c character varying(18),
    icitemacc_rwkwovaracct__c character varying(18),
    icitemacc_intrsitetxfracctind__c boolean,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    icitemacc_wipacct__c character varying(18),
    icitemacc_invacctind__c boolean,
    icitemacc_invnnacctind__c boolean,
    icitemacc_div__c character varying(18),
    icitemacc_intrdivtxfracct__c character varying(18),
    icitemacc_inddmdacctind__c boolean,
    icitemacc_posubwipacctind__c boolean,
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.icitemacc__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 347 (class 1259 OID 41656)
-- Name: icitemcst__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icitemcst__c (
    formula_extid__c character varying(1300),
    icitemcst_nextcountdate__c date,
    icitemcst_lstactucstsubmtl__c double precision,
    icitemcst_actucsttot__c double precision,
    icitemcst_qtycons__c double precision,
    icitemcst_lastcountdate__c date,
    icitemcst_actucstsubmtl__c double precision,
    icitemcst_lstactucstohdlab__c double precision,
    icitemcst_lstactucsttot__c double precision,
    formula_totalqtynocons__c double precision,
    icitemcst_item__c character varying(18),
    icitemcst_lstactucstothlnd__c double precision,
    icitemcst_actucstohdlab__c double precision,
    icitemcst_lasttxndate__c date,
    icitemcst_actucstothlnd__c double precision,
    name character varying(80),
    icitemcst_actucstohdfrng__c double precision,
    icitemcst_curprdcost__c double precision,
    icitemcst_lstactucstohdmtl__c double precision,
    icitemcst_curusagefyr__c double precision,
    icitemcst_actucstlab__c double precision,
    icitemcst_lstactucstohdfrng__c double precision,
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    icitemcst_mrpchange__c boolean,
    icitemcst_actucstohdmtl__c double precision,
    formula_searchindex__c character varying(1300),
    icitemcst_lstactucstlab__c double precision,
    formula_actucsttot__c double precision,
    icitemcst_actucstfrght__c double precision,
    icitemcst_zerocountdate__c date,
    createddate timestamp without time zone,
    icitemcst_actucstmtl__c double precision,
    icitemcst_curprdqty__c double precision,
    formula_lstactucsttot__c double precision,
    formula_totalqty__c double precision,
    icitemcst_lstactucstfrght__c double precision,
    icitemcst_actucstohdmach__c double precision,
    searchindex__c character varying(255),
    icitemcst_curprd__c double precision,
    icitemcst_lstactucstsublab__c double precision,
    icitemcst_div__c character varying(18),
    icitemcst_lstactucstmtl__c double precision,
    icitemcst_lstactucstohdmach__c double precision,
    icitemcst_lasttxnid__c character varying(15),
    icitemcst_qtyohnn__c double precision,
    icitemcst_qtyoh__c double precision,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    icitemcst_actucstsublab__c double precision,
    icitemcst_lastcountqty__c double precision,
    icitemcst_qtyvmi__c double precision,
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.icitemcst__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 349 (class 1259 OID 41668)
-- Name: icitemproj__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icitemproj__c (
    formula_extid__c character varying(1300),
    icitemproj_nnqty__c double precision,
    icitemproj_actucstlab__c double precision,
    icitemproj_unitcostitemproject__c double precision,
    icitemproj_cngamount__c double precision,
    icitemproj_invscrpacct__c character varying(18),
    icitemproj_div__c character varying(18),
    icitemproj_actucstfrght__c double precision,
    icitemproj_qtyohnn__c double precision,
    icitemproj_qtyoh__c double precision,
    icitemproj_actucstsublab__c double precision,
    icitemproj_actucstmtl__c double precision,
    formula_totalcost__c double precision,
    name character varying(80),
    icitemproj_actucstohdmach__c double precision,
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    icitemproj_proj__c character varying(18),
    icitemproj_qtycons__c double precision,
    formula_searchindex__c character varying(1300),
    icitemproj_actucstsubmtl__c double precision,
    formula_defaultproject__c character varying(1300),
    formula_actucsttot__c double precision,
    icitemproj_qtyvmi__c double precision,
    icitemproj_cngqty__c double precision,
    icitemproj_invacct__c character varying(18),
    icitemproj_invnnacct__c character varying(18),
    icitemproj_actucstohdlab__c double precision,
    icitemproj_actucsttot__c double precision,
    createddate timestamp without time zone,
    icitemproj_nnamount__c double precision,
    icitemproj_actucstothlnd__c double precision,
    searchindex__c character varying(255),
    formula_unitcost__c double precision,
    icitemproj_adjclracct__c character varying(18),
    icitemproj_item__c character varying(18),
    icitemproj_ohqty__c double precision,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    icitemproj_mrpchange__c boolean,
    icitemproj_ohamount__c double precision,
    icitemproj_invnegvaracct__c character varying(18),
    icitemproj_actucstohdmtl__c double precision,
    formula_name__c character varying(1300),
    icitemproj_actucstohdfrng__c double precision,
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.icitemproj__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 344 (class 1259 OID 41638)
-- Name: icixr__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icixr__c (
    formula_extid__c character varying(1300),
    icixr_icitem__c character varying(18),
    icixr_fcststrtdte__c date,
    icixr_fcstdmdnetopt_pl__c character varying(255),
    icixr_qtyreq__c double precision,
    icixr_site__c character varying(18),
    icixr_sts__c character varying(1),
    formula_derivepodmd__c boolean,
    icixr_itemrev__c character varying(18),
    icixr_tempdmdqtyreq__c double precision,
    name character varying(80),
    icixr_invuom__c character varying(18),
    formula_deriveicreqdmd__c boolean,
    formula_derivesoorddmd__c boolean,
    icixr_wocst__c character varying(18),
    isdeleted boolean,
    icixr_parentitem__c character varying(50),
    systemmodstamp timestamp without time zone,
    icixr_proj__c character varying(18),
    icixr_ordsite__c character varying(18),
    icixr_qtyoutstdg__c double precision,
    icixr_wbs__c character varying(30),
    formula_derivewoorddmd__c boolean,
    formula_searchindex__c character varying(1300),
    icixr_fcstenddte__c date,
    icixr_icreq__c character varying(18),
    icixr_lne__c double precision,
    icixr_parenticitem__c character varying(18),
    icixr_icfcstdmd__c character varying(18),
    icixr_icreqdmd__c character varying(18),
    createddate timestamp without time zone,
    icixr_ordno__c character varying(80),
    icixr_lnerel__c double precision,
    icixr_soorddmd__c character varying(18),
    searchindex__c character varying(255),
    formula_dmdqtyreq__c double precision,
    icixr_icdreq__c character varying(18),
    icixr_item__c character varying(50),
    icixr_poline__c character varying(18),
    icixr_receiptsite__c character varying(18),
    icixr_woorddmd__c character varying(18),
    externalid__c character varying(140),
    triggeroptions__c character varying(40),
    icixr_podmd__c character varying(18),
    icixr_resp__c character varying(18),
    icixr_soline__c character varying(18),
    icixr_ordtype__c character varying(1),
    icixr_mrpchange__c boolean,
    icixr_dtereqd__c date,
    sfid character varying(18),
    id integer,
    poline_pjprojwbs__c character varying(20),
    woorddmd_pjprojwbs__c character varying(20),
    soline_wbs__c character varying(20),
    icixr_wocst_externalid__c character varying(100),
    icixr_woorddmd_externalid__c character varying(100),
    icixr_icreq_externalid__c character varying(100),
    icixr_icreqdmd_externalid__c character varying(100),
    icixr_icreq_ordsts__c character varying(20),
    icixr_icreq_div__c character varying(20),
	icixr_div__c character varying(20),
    icixr_icreq_proj__c character varying(20),
    icixr_icreq_item__c character varying(20),
    icixr_wocst_ordsts__c character varying(20),
    icixr_wocst_div__c character varying(20),
    icixr_wocst_proj__c character varying(20),
    icixr_wocst_item__c character varying(20),
    icixr_wocst_createddate__c timestamp without time zone,
    icixr_icreq_createddate__c timestamp without time zone,
    icixr_poline_pjprojwbs__c character varying(20),
    icixr_woorddmd_pjprojwbs__c character varying(20),
    icixr_soline_wbs__c character varying(20),
    lastmodifieddate timestamp without time zone,
    icixr_mrplaunch__c character varying(20)
);


--ALTER TABLE whiting_sb.icixr__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 350 (class 1259 OID 41674)
-- Name: icixrs__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icixrs__c (
    icixrs_fcststrtdte__c date,
    icixrs_fcstdmdnetopt_pl__c character varying(255),
    icixrs_qtyreq__c double precision,
    icixrs_sts__c character varying(1),
    name character varying(80),
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    icixrs_proj__c character varying(18),
    icixrs_qtyoutstdg__c double precision,
    icixrs_dmdqtyreq__c double precision,
    icixrs_fcstenddte__c date,
    createddate timestamp without time zone,
    icixrs_item__c character varying(18),
    icixrs_ordtype__c character varying(1),
    icixrs_dtereqd__c date,
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.icixrs__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 354 (class 1259 OID 41705)
-- Name: icmrprsch__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icmrprsch__c (
    icmrprsch_datetime__c character varying(30),
    formula_extid__c character varying(1300),
    icmrprsch_amt__c double precision,
    icmrprsch_lnerel__c double precision,
    icmrprsch_dmddiv__c character varying(18),
    icmrprsch_icdreq__c character varying(18),
    icmrprsch_icreq__c character varying(18),
    icmrprsch_poline__c character varying(18),
    icmrprsch_lne__c double precision,
    icmrprsch_llc__c double precision,
    icmrprsch_dmdsite__c character varying(18),
    icmrprsch_ordno__c character varying(20),
    icmrprsch_resp__c character varying(18),
    icmrprsch_mrprunseqno__c double precision,
    name character varying(80),
    icmrprsch_seqno__c double precision,
    isdeleted boolean,
    icmrprsch_ordtype__c character varying(1),
    systemmodstamp timestamp without time zone,
    formula_msgtypedesc__c character varying(1300),
    formula_ordtypedesc__c character varying(1300),
    icmrprsch_msgtype__c character varying(1),
    formula_searchindex__c character varying(1300),
    icmrprsch_dmdlne__c double precision,
    icmrprsch_dmdordno__c character varying(20),
    icmrprsch_site__c character varying(18),
    createddate timestamp without time zone,
    searchindex__c character varying(255),
    icmrprsch_dmdlnerel__c double precision,
    icmrprsch_div__c character varying(18),
    icmrprsch_dmddtereqd__c date,
    icmrprsch_dmdordtype__c character varying(1),
    icmrprsch_dmditemno__c character varying(50),
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    icmrprsch_dmditem__c character varying(18),
    icmrprsch_proj__c character varying(18),
    icmrprsch_wocst__c character varying(18),
    sfid character varying(18),
    id integer,
    icmrprsch_mrplaunch__c character varying(20),
    unique_id character varying(10)
);


--ALTER TABLE whiting_sb.icmrprsch__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 351 (class 1259 OID 41680)
-- Name: icreq__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icreq__c (
    icreq_qtyreq__c double precision,
    icreq_actfirmdate__c date,
    formula_extid__c character varying(1300),
    icreq_site__c character varying(18),
    icreq_puruom__c character varying(18),
    icreq_povend__c character varying(18),
    icreq_homeprojqty__c double precision,
    icreq_shipdte__c date,
    icreq_stsdte__c date,
    icreq_invuom__c character varying(18),
    icreq_origduedte__c date,
    icreq_qtytoconvert__c double precision,
    icreq_duedte__c date,
    icreq_popriceovr__c double precision,
    icreq_poqty__c double precision,
    icreq_schedfirmdte__c date,
    icreq_effrev__c character varying(18),
    icreq_proj__c character varying(18),
    name character varying(80),
    icreq_umcf__c double precision,
    icreq_div__c character varying(18),
    icreq_pjprojwbs__c character varying(18),
    icreq_qtydecimal__c double precision,
    icreq_itemrev__c character varying(18),
    isdeleted boolean,
    altextid__c character varying(20),
    systemmodstamp timestamp without time zone,
    icreq_itemtype_pl__c character varying(255),
    icreq_tempmsg__c character varying(50),
    icreq_transittype__c character varying(255),
    formula_searchindex__c character varying(1300),
    formula_defaultproject__c character varying(1300),
    icreq_qtycnvrted__c double precision,
    icreq_ordsts_pl__c character varying(255),
    icreq_item__c character varying(18),
    createddate timestamp without time zone,
    icreq_wbs__c character varying(30),
    icreq_ordsts__c character varying(1),
    icreq_temp_select__c boolean,
    icreq_primarypovend__c character varying(18),
    icreq_effdte__c date,
    searchindex__c character varying(255),
    icreq_projdesc_ui__c character varying(50),
    icreq_unitprice__c double precision,
    icreq_actconvertdate__c date,
    formula_qtyremain__c double precision,
    icreq_respbuyer__c character varying(18),
    icreq_poplacedte__c date,
    icreq_ordno__c character varying(16),
    icreq_respinv__c character varying(18),
    externalid__c character varying(28),
    triggeroptions__c character varying(40),
    icreq_effind_pl__c character varying(255),
    icreq_qtyord__c double precision,
    icreq_buydiv__c character varying(18),
    formula_orgid__c character varying(1300),
    icreq_nonhomeqty__c double precision,
    icreq_dckdte__c date,
    icreq_actapprovedate__c date,
    icreq_orgid__c character varying(18),
    icreq_poreq__c character varying(18),
    icreq_receiptsite__c character varying(18),
    sfid character varying(18),
    id integer,
    icreq_mrplaunch__c character varying(20)
);


--ALTER TABLE whiting_sb.icreq__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 355 (class 1259 OID 41711)
-- Name: icreqdmd__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.icreqdmd__c (
    formula_extid__c character varying(1300),
    icreqdmd_wbs__c character varying(30),
    icreqdmd_homeprojind_pl__c character varying(255),
    icreqdmd_dmdsts__c character varying(1),
    icreqdmd_issproj__c character varying(18),
    icreqdmd_icreq__c character varying(18),
    icreqdmd_setqty__c double precision,
    icreqdmd_ordno__c character varying(16),
    name character varying(100),
    icreqdmd_enginvumcf__c double precision,
    icreqdmd_fixqtyflag__c boolean,
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    icreqdmd_dtereqd__c date,
    formula_searchindex__c character varying(1300),
    formula_defaultproject__c character varying(1300),
    icreqdmd_qtyreq__c double precision,
    icreqdmd_site__c character varying(18),
    icreqdmd_qtyper__c double precision,
    createddate timestamp without time zone,
    searchindex__c character varying(255),
    icreqdmd_invuom__c character varying(18),
    icreqdmd_compitem__c character varying(18),
    icreqdmd_div__c character varying(18),
    icreqdmd_scppct__c double precision,
    icreqdmd_itemrev__c character varying(18),
    icreqdmd_isswbs__c character varying(30),
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    icreqdmd_proj__c character varying(18),
    icreqdmd_qtyoutstdg__c double precision,
    sfid character varying(18),
    id integer,
    icreq_externalid__c character varying,
    icreqdmd_mrplaunch__c character varying(20)
);


--ALTER TABLE whiting_sb.icreqdmd__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 376 (class 1259 OID 64765)
-- Name: master_config; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.master_config (
    serialno integer NOT NULL,
    clientid character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    sfurl character varying(200) NOT NULL,
    module character varying(50),
    schema character varying(30),
    postgreurl character varying(500),
    wsendpoint character varying(200),
    ongoingjob character varying(30),
    clientstatus character varying(20),
    notes character varying(500),
    accessedby character varying(100),
    modifiedtime timestamp without time zone
);


--ALTER TABLE whiting_sb.master_config OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 375 (class 1259 OID 64763)
-- Name: master_config_serialno_seq; Type: SEQUENCE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE SEQUENCE whiting_sb.master_config_serialno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE whiting_sb.master_config_serialno_seq OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 4421 (class 0 OID 0)
-- Dependencies: 375
-- Name: master_config_serialno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ueoqd0cu0bie95
--

ALTER SEQUENCE whiting_sb.master_config_serialno_seq OWNED BY whiting_sb.master_config.serialno;


--
-- TOC entry 373 (class 1259 OID 63889)
-- Name: mrpdmd__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.mrpdmd__c (
    mrpdmd_index__c double precision,
    mrpdmd_div__c character varying(20),
    mrpdmd_site__c character varying(20),
    mrpdmd_item__c character varying(20),
    mrpdmd_proj__c character varying(20),
    mrpdmd_pjprojwbs__c character varying(20),
    mrpdmd_amtunappl__c double precision,
    mrpdmd_wbs__c character varying(30),
    name character varying(80),
    isdeleted boolean,
    mrpdmd_lne__c double precision,
    systemmodstamp timestamp without time zone,
    mrpdmd_ordno__c character varying(16),
    createddate timestamp without time zone,
    mrpdmd_dtereqd__c date,
    mrpdmd_ordtype__c character varying(1),
    mrpdmd_qtyoutstdg__c double precision,
    mrpdmd_lnerel__c double precision,
    mrpdmd_amtappl__c double precision,
    sfid character varying(18),
    id integer DEFAULT 1 NOT NULL
);


--ALTER TABLE whiting_sb.mrpdmd__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 340 (class 1259 OID 41614)
-- Name: mrplaunch__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.mrplaunch__c (
    formula_extid__c character varying(1300),
    wocstscreated__c double precision,
    mrplaunch_running__c boolean,
    mrplaunch_mrprunseq__c character varying(30),
    mrplaunch_proj__c character varying(18),
    icixrscreated__c double precision,
    mrplaunch_mrpplanopt_pl__c character varying(255),
    mrplaunch_allprojects__c boolean,
    mrplaunch_errormsg__c text,
    mrplaunch_proj__r__externalid__c character varying(100),
    icreqscreated__c double precision,
    name character varying(80),
    mrplaunch_jobid__c character varying(18),
    mrplaunch_mrpstats__c text,
    mrplaunch_projact__c boolean,
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    mrplaunch_status__c character varying(200),
    formula_searchindex__c character varying(1300),
    icmrprschcreated__c double precision,
    mrplaunch_dflthomeproj__r__externalid__c character varying(100),
    mrplaunch_div__c character varying(18),
    createddate timestamp without time zone,
    mrplaunch_netchange__c boolean,
    mrplaunch_runforicitem__r__externalid__c character varying(100),
    mrplaunch_runforicitem__c character varying(18),
    icreqdmdscreated__c double precision,
    mrplaunch_createmrpplannotes__c boolean,
    searchindex__c character varying(255),
    mrplaunch_completed__c boolean,
    mrplaunch_div__r__externalid__c character varying(100),
    mrplaunch_error__c boolean,
    woorddmdscreated__c double precision,
    mrplaunch_processingitem__c character varying(100),
    mrplaunch_dflthomeproj__c character varying(18),
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    sfid character varying(18),
    id integer,
    mrplaunch_cachetime__c character varying(20),
    mrplaunch_bulkapitime__c character varying(20),
    mrplaunch_rollbacktime__c character varying(20),
    mrplaunch_actualprocessingtime__c character varying(20),
    mrplaunch_platformopertime__c character varying(20),
    mrplaunch_deleteplannedrecordsjobdone__c character varying(20),
    mrplaunch_planningrollbackjobdone__c character varying(20),
    mrplaunch_isheroku__c boolean,
    mrplaunch_seqno__c character varying(20),
    sqltime integer,
    dmltime integer,
    peitemquerytime character varying(20),
    icitemquerytime character varying(20),
    icixrquerytime character varying(20),
    firstbulktime character varying(20),
    secondbulktime character varying(20),
    icixrbulktime character varying(20),
    wocstdmltime character varying(20),
    woorddmltime character varying(20),
    icreqdmltime character varying(20),
    icreqdmddmltime character varying(20),
    icixrdmltime character varying(20),
    mrplaunch_hkstatus__c character varying(255),
    mrplaunch_sftohkdataloadtime__c integer,
    mrplaunch_hkplanningtime__c integer,
    mrplaunch_hkdeleteplannedrecordstime__c integer,
    mrplaunch_hkcopynotestosftime__c integer,
    mrplaunch_hkcopyorderstosftime__c integer,
    mrplaunch_hkcopycompstosftime__c integer,
    mrplaunch_hkcopyicixrstosftime__c integer
);


--ALTER TABLE whiting_sb.mrplaunch__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 356 (class 1259 OID 41717)
-- Name: mrpplannotes__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.mrpplannotes__c (
    mrpplannotes_mrpthread__c character varying(18),
    queriesbegin__c double precision,
    cpubegin__c double precision,
    mrpplannotes_plannedwocstsdeleted__c double precision,
    heapaftersupactionmessages__c double precision,
    heapaftericixrload__c double precision,
    mrpplannotes_icixrsscreatedcount__c double precision,
    mrpplannotes_suparraysize__c double precision,
    heapbegin__c double precision,
    mrpplannotes_plannedicixrsdeleted__c double precision,
    mrpplannotes_icreqcount__c double precision,
    heapaftersuparray__c double precision,
    dmlsbegin__c double precision,
    mrpplannotes_plannedicreqsdeleted__c double precision,
    name character varying(80),
    mrpplannotes_icixrcount__c double precision,
    mrpplannotes_itempolicy__c text,
    mrpplannotes_error__c boolean,
    mrpplannotes_message__c character varying(255),
    queriesend__c double precision,
    mrpplannotes_wocstcount__c double precision,
    mrpplannotes_newicixrcount__c double precision,
    isdeleted boolean,
    cpuend__c double precision,
    systemmodstamp timestamp without time zone,
    mrpplannotes_processingtime__c double precision,
    mrpplannotes_dmdarraysize__c double precision,
    heapend__c double precision,
    mrpplannotes_notes__c text,
    mrpplannotes_proj__c character varying(18),
    heapafterdmdarray__c double precision,
    mrpplannotes_seqno__c double precision,
    formula_itemno__c character varying(1300),
    createddate timestamp without time zone,
    mrpplannotes_rsmsgarraysize__c double precision,
    mrpplannotes_plannedicmrprschsdeleted__c double precision,
    dmlsend__c double precision,
    mrpplannotes_woorddmdcount__c double precision,
    mrpplannotes_projid__c character varying(18),
    heapaftercreateplannedsupply__c double precision,
    mrpplannotes_multiplethreads__c boolean,
    mrpplannotes_newthreadcomment__c character varying(255),
    triggeroptions__c character varying(40),
    heapafterprocessingplannedsups__c double precision,
    mrpplannotes_pjprojcount__c double precision,
    mrpplannotes_icreqdmdcount__c double precision,
    mrpplannotes_item__c character varying(18),
    sfid character varying(18),
    id integer,
    mrpplannotes_div__c character varying(50),
    mrpplannotes_llc__c double precision,
    process_loaditempolicy__c character varying,
    plannedrecords_deleted__c boolean,
    mrpplannotes_plannedrecordsdeleted__c boolean,
    mrpplannotes_isheroku__c boolean DEFAULT true,
    mrpplannotes_copydeletefailurecause__c character varying,
    mrpplannotes_mrplaunch__c character varying(20),
    mrpplannotes_notes2__c character varying
);


--ALTER TABLE whiting_sb.mrpplannotes__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 374 (class 1259 OID 63904)
-- Name: mrpsup__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.mrpsup__c (
    mrpsup_div__c character varying(20),
    mrpsup_site__c character varying(20),
    mrpsup_proj__c character varying(20),
    mrpsup_icdreq__c character varying(20),
    mrpsup_wocst__c character varying(20),
    mrpsup_poline__c character varying(20),
    mrpsup_icreq__c character varying(20),
    mrpsup_item__c character varying(20),
    mrpsup_pjprojwbs__c character varying(20),
    mrpsup_dtereqd__c date,
    mrpsup_ordtype__c character varying(1),
    mrpsup_ordlne__c double precision,
    mrpsup_ordlnerel__c double precision,
    mrpsup_dtepick__c date,
    name character varying(80),
    mrpsup_qtyoutstdg__c double precision,
    mrpsup_amtappl__c double precision,
    mrpsup_index__c double precision,
    mrpsup_sts__c character varying(1),
    isdeleted boolean,
    mrpsup_src_pl__c character varying(255),
    systemmodstamp timestamp without time zone,
    mrpsup_lnerel__c double precision,
    mrpsup_amtunappl__c double precision,
    createddate timestamp without time zone,
    mrpsup_wbs__c character varying(30),
    mrpsup_lne__c double precision,
    mrpsup_ordno__c character varying(16),
    sfid character varying(18),
    id integer DEFAULT 1 NOT NULL
);


--ALTER TABLE whiting_sb.mrpsup__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 342 (class 1259 OID 41626)
-- Name: pebom__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.pebom__c (
    formula_extid__c character varying(1300),
    pebom_fixqtyflag__c boolean,
    pebom_delsts_pl__c character varying(255),
    pebom_div__c character varying(18),
    custpage_custom_addrevslct__c character varying(18),
    pebom_qtyper__c double precision,
    pebom_adddate__c date,
    name character varying(80),
    pebom_compitem__c character varying(18),
    pebom_addrev__c character varying(18),
    pebom_addsts_pl__c character varying(255),
    isdeleted boolean,
    custpage_custom_delrevslct__c character varying(18),
    systemmodstamp timestamp without time zone,
    pebom_refdes__c character varying(5000),
    formula_searchindex__c character varying(1300),
    pebom_lne__c double precision,
    pebom_setupqty__c double precision,
    createddate timestamp without time zone,
    pebom_delrev__c character varying(18),
    searchindex__c character varying(255),
    pebom_phantomovr_pl__c character varying(255),
    pebom_item__c character varying(18),
    externalid__c character varying(120),
    triggeroptions__c character varying(40),
    pebom_deldate__c date,
    formula_name__c character varying(1300),
    pebom_scrappct__c double precision,
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.pebom__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 341 (class 1259 OID 41620)
-- Name: peitem__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.peitem__c (
    peitem_activestsdate__c date,
    formula_extid__c character varying(1300),
    peitem_tracksrl_pl__c character varying(255),
    peitem_invpeitemrev__c character varying(18),
    peitem_invrevprod__c boolean,
    index_item__c character varying(50),
    formula_longname__c character varying(1300),
    peitem_tracklot_pl__c character varying(255),
    peitem_hazardmtl__c boolean,
    peitem_fifoind__c boolean,
    peitem_disassmind__c boolean,
    peitem_invrevitem__c boolean,
    peitem_div__c character varying(18),
    name character varying(100),
    peitem_invdiv__c character varying(18),
    peitem_respeng__c character varying(18),
    peitem_trackcond__c boolean,
    peitem_lockid_ui__c character varying(5000),
    formula_respeng__c character varying(1300),
    peitem_lockdescr_ui__c character varying(5000),
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    peitem_trackinvunits__c boolean,
    peitem_status_pl__c character varying(255),
    formula_searchindex__c character varying(1300),
    peitem_storagecode__c character varying(10),
    peitem_inactivests__c character varying(255),
    peitem_trackrev__c boolean,
    peitem_src_pl__c character varying(255),
    createddate timestamp without time zone,
    formula_item__c character varying(1300),
    peitem_enguom__c character varying(18),
    peitem_invrevmaster__c boolean,
    searchindex__c character varying(255),
    peitem_descr__c character varying(100),
    formula_centralizedenggind__c boolean,
    peitem_type_pl__c character varying(255),
    peitem_item__c character varying(50),
    peitem_unituomdescr__c character varying(50),
    peitem_invrev__c character varying(6),
    peitem_iccomcod__c character varying(18),
    peitem_respengind__c boolean,
    peitem_srcdivovr__c character varying(18),
    externalid__c character varying(56),
    triggeroptions__c character varying(40),
    inv_attributes__c character varying(255),
    formula_name__c character varying(1300),
    peitem_itemtype__c character varying(255),
    formula_company__c character varying(1300),
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.peitem__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 378 (class 1259 OID 66194)
-- Name: pellc__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.pellc__c (
    formula_extid__c character varying(1300),
    pellc_icitem__c character varying(18),
    pellc_reordermrpplanpolicy__c boolean,
    pellc_peitem__c character varying(18),
    name character varying(80),
    pellc_hasbom__c boolean,
    pellc_peitemid__c character varying(18),
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    pellc_llc__c double precision,
    formula_searchindex__c character varying(1300),
    pellc_comppeitemids__c text,
    createddate timestamp without time zone,
    searchindex__c character varying(255),
    pellc_haschildren__c boolean,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    pellc_item__c character varying(50) COLLATE pg_catalog."C",
    sfid character varying(18),
    id integer,
    pellc_div__c character varying(50),
    unique_id integer NOT NULL
);


--ALTER TABLE whiting_sb.pellc__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 377 (class 1259 OID 66192)
-- Name: pellc__c_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE SEQUENCE whiting_sb.pellc__c_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE whiting_sb.pellc__c_unique_id_seq OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 4422 (class 0 OID 0)
-- Dependencies: 377
-- Name: pellc__c_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ueoqd0cu0bie95
--

ALTER SEQUENCE whiting_sb.pellc__c_unique_id_seq OWNED BY whiting_sb.pellc__c.unique_id;


--
-- TOC entry 343 (class 1259 OID 41632)
-- Name: pjproj__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.pjproj__c (
    pjproj_completed__c boolean,
    formula_extid__c character varying(1300),
    pjproj_ohdmtlrate__c double precision,
    pjproj_dimval__c character varying(18),
    pjproj_sogateway__c character varying(18),
    pjproj_pjproj__c character varying(18),
    pjproj_adjclracct__c character varying(18),
    pjproj_cosclracct__c character varying(18),
    pjproj_itemno__c character varying(50),
    pjproj_custno__c character varying(18),
    pjproj_invacct__c character varying(18),
    pjproj_invnnacct__c character varying(18),
    pjproj_lne__c double precision,
    pjproj_wovaracct__c character varying(18),
    pjproj_ohdmtlclracct__c character varying(18),
    pjproj_ordno__c character varying(16),
    pjproj_descr__c character varying(50),
    pjproj_posubwipacct__c character varying(18),
    name character varying(80),
    pjproj_inddmdacct__c character varying(18),
    pjproj_pochrgallowind__c boolean,
    pjproj_socontract__c character varying(18),
    pjproj_soshipallowind__c boolean,
    pjproj_intrsitetxfracct__c character varying(18),
    pjproj_pjstatus__c character varying(18),
    isdeleted boolean,
    pjproj_sochrgallowind__c boolean,
    pjproj_povaracct__c character varying(18),
    systemmodstamp timestamp without time zone,
    pjproj_invnegvaracct__c character varying(18),
    pjproj_cosacct__c character varying(18),
    pjproj_wbsact__c boolean,
    formula_searchindex__c character varying(1300),
    pjproj_jobcodeact__c boolean,
    pjproj_wochrgallowind__c boolean,
    createddate timestamp without time zone,
    pjproj_projindex__c character varying(20),
    pjproj_priority__c double precision,
    pjproj_mrpbypass__c boolean,
    custpage_pjproj_orig_adjclracct_ui__c character varying(50),
    searchindex__c character varying(255),
    pjproj_invscrpacct__c character varying(18),
    pjproj_wipacct__c character varying(18),
    pjproj_div__c character varying(18),
    pjproj_ordtype_pl__c character varying(255),
    externalid__c character varying(100),
    triggeroptions__c character varying(100),
    pjproj_proj__c character varying(20),
    pjproj_lstwoordno__c double precision,
    pjproj_woscrapacct__c character varying(18),
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.pjproj__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 348 (class 1259 OID 41662)
-- Name: poitem__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.poitem__c (
    formula_extid__c character varying(1300),
    poitem_vatclassind__c boolean,
    poitem_ltreqcnvrtpo__c double precision,
    poitem_servicetype__c character varying(255),
    poitem_itemno__c character varying(50),
    poitem_soprod__c character varying(18),
    poitem_isdirect__c boolean,
    poitem_item__c character varying(18),
    poitem_invrev__c character varying(1300),
    poitem_poprint_puritemnotes__c boolean,
    poitem_intersystem__c boolean,
    poitem_expenseacct__c character varying(18),
    poitem_desc__c character varying(100),
    formula_overrcptind__c boolean,
    poitem_sellfromcmp__c character varying(18),
    poitem_ltreqcnvrtpoind__c boolean,
    poitem_socust__c character varying(18),
    poitem_odcid__c character varying(18),
    poitem_vatclass__c character varying(18),
    poitem_dfltpoinvqty__c double precision,
    formula_invuom__c character varying(1300),
    formula_buyer__c character varying(1300),
    poitem_ltvend__c double precision,
    poitem_dimvalind__c boolean,
    name character varying(80),
    poitem_varumcfitemind__c boolean,
    poitem_qtydecimalind__c boolean,
    poitem_insptemplind__c boolean,
    poitem_overrcptindind__c boolean,
    poitem_respbuyer__c character varying(18),
    isdeleted boolean,
    formula_qtydecimal__c double precision,
    poitem_subdmdlocid__c character varying(18),
    poitem_dfltpoprice__c double precision,
    systemmodstamp timestamp without time zone,
    poitem_puruom__c character varying(18),
    formula_dimval__c character varying(1300),
    poitem_orgid__c character varying(18),
    formula_searchindex__c character varying(1300),
    poitem_poprint_engitemrevnotes__c boolean,
    poitem_trvlr__c character varying(18),
    poitem_subdmdsiteind__c boolean,
    poitem_subdmdsite__c character varying(18),
    formula_ltreqcnvrtpo__c double precision,
    poitem_poprint_engitemnotes__c boolean,
    poitem_trvlrind__c boolean,
    poitem_orgidind__c boolean,
    createddate timestamp without time zone,
    formula_ltrequiscnvrtpo__c double precision,
    searchindex__c character varying(255),
    formula_qtydecimalprecision__c double precision,
    formula_respbuyer__c character varying(1300),
    poitem_insptempl__c character varying(18),
    formula_ltvendor__c double precision,
    poitem_respbuyerind__c boolean,
    poitem_dimvalueind__c boolean,
    poitem_overrcptind__c boolean,
    formula_vatclass__c character varying(1300),
    poitem_sellfromdiv__c character varying(18),
    poitem_qtydecimal__c double precision,
    poitem_umcf__c double precision,
    poitem_varumcfitem__c boolean,
    poitem_taxableind__c boolean,
    poitem_type__c character varying(255),
    formula_buyertext__c character varying(1300),
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    poitem_dimval__c character varying(18),
    formula_ltvend__c double precision,
    formula_orgid__c character varying(1300),
    poitem_ltvendind__c boolean,
    poitem_dfltpoinvqtyind__c boolean,
    poitem_div__c character varying(18),
    poitem_comcod__c character varying(18),
    sfid character varying(18),
    id integer
);


--ALTER TABLE whiting_sb.poitem__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 358 (class 1259 OID 41742)
-- Name: symrpordassign__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.symrpordassign__c (
    formula_extid__c character varying(1300),
    symrpordassign_lstsiteordno__c character varying(16),
    symrpordassign_lmpgm__c double precision,
    symrpordassign_lmusr__c double precision,
    syordnumassign_lstsoordno__c character varying(16),
    symrpordassign_lstreqordno__c character varying(16),
    id__c character varying(30),
    symrpordassign_clientid__c double precision,
    name character varying(80),
    isdeleted boolean,
    systemmodstamp timestamp without time zone,
    formula_searchindex__c character varying(1300),
    symrpordassign_lstwoordno__c character varying(16),
    symrpordassign_lmdatetime__c timestamp without time zone,
    symrpordassign_lstdreqordno__c character varying(16),
    symrpordassign_lstinddmdordno__c character varying(16),
    createddate timestamp without time zone,
    searchindex__c character varying(255),
    symrpordassign_lstdivordno__c character varying(16),
    syordnumassign_lstsoagreeno__c character varying(16),
    symrpordassign_addpgm__c double precision,
    symrpordassign_addusr__c double precision,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    sfid character varying(18),
    id integer,
    symrpordassign_div__c character varying(20)
);


--ALTER TABLE whiting_sb.symrpordassign__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 379 (class 1259 OID 95372)
-- Name: test; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.test (
    filename character(10),
    uploaded text
);


--ALTER TABLE whiting_sb.test OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 353 (class 1259 OID 41692)
-- Name: wocst__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.wocst__c (
    wocst_resp__c character varying(18),
    wocst_soline__c character varying(18),
    wocst_effdte__c date,
    formula_extid__c character varying(1300),
    wocst_numbops__c double precision,
    wocst_finvarohdlab_calc__c double precision,
    wocst_altcode__c character varying(6),
    wocst_dmddolchgoutfrght__c double precision,
    wocst_ordcostlab_calc__c double precision,
    wocst_totsetuphrstd__c double precision,
    wocst_totlabhrs__c double precision,
    wocst_closvarohdmtl__c double precision,
    wocst_ordvarohdmtl_calc__c double precision,
    wocst_costschanged__c boolean,
    wocst_suptotcstfrght__c double precision,
    wocst_dmdtotcstsublab__c double precision,
    wocst_itemtype__c character varying(1),
    wocst_ordcost_total__c double precision,
    wocst_suptotcstohdmtl__c double precision,
    wocst_dmddolchgoutmtl__c double precision,
    wocst_finvarsubmtl_calc__c double precision,
    wocst_priorityind_usrcntl__c boolean,
    wocst_issue_all_sts_pl__c character varying(255),
    wocst_totalcostbasis__c double precision,
    wocst_disitemsrlno__c character varying(30),
    wocst_closvarfrght__c double precision,
    wocst_ordvarlab_calc__c double precision,
    wocst_wosonumind__c boolean,
    wocst_lotno__c character varying(30),
    wocst_dmddolchgoutohdmach__c double precision,
    wocst_ordcostohdfrng_calc__c double precision,
    wocst_lstbookdtetime__c timestamp without time zone,
    wocst_ordcostohdmtl_calc__c double precision,
    wocst_closed__c boolean,
    wocst_dmddolchgoutohdmtl__c double precision,
    wocst_qtyship__c double precision,
    wocst_finvarohdmach_calc__c double precision,
    wocst_suptotcstmtl__c double precision,
    wocst_supdolchgoutsublab__c double precision,
    wocst_fullyalloc__c boolean,
    wocst_ordvar_total__c double precision,
    wocst_closvarmtl__c double precision,
    wocst_pjprojwbs__c character varying(18),
    wocst_finvarmtl_calc__c double precision,
    wocst_div__c character varying(18),
    wocst_qtyacc__c double precision,
    wocst_suptotcstohdmach__c double precision,
    wocst_supdolchgoutohdfrng__c double precision,
    wocst_wipacct__c character varying(18),
    wocst_dmdtotcstohdfrng__c double precision,
    wocst_batchschallwd__c boolean,
    wocst_closvarohdmach__c double precision,
    wocst_orddedohdlab_calc__c double precision,
    wocst_ordvarohdfrng_calc__c double precision,
    wocst_itemrev__c character varying(18),
    wocst_ref_proj__c character varying(18),
    wocst_orddedlab_calc__c double precision,
    wocst_schdayserlylate__c double precision,
    wocst_lstschddtetime__c timestamp without time zone,
    wocst_schdcompdate__c date,
    wocst_pending_op__c character varying(100),
    formula_altname__c character varying(1300),
    wocst_supdolchgoutlab__c double precision,
    wocst_qtyreq__c double precision,
    wocst_dmdtotcstlab__c double precision,
    wocst_orddedsubmtl_calc__c double precision,
    wocst_soorddmdlne__c double precision,
    wocst_site__c character varying(18),
    wocst_ordded_total__c double precision,
    wocst_refurbind__c boolean,
    wocst_woscrapacct__c character varying(18),
    wocst_orddedohdfrng_calc__c double precision,
    wocst_ordvarohdlab_calc__c double precision,
    wocst_disassmind__c boolean,
    name character varying(80),
    wocst_dmdtotcst_total__c double precision,
    wocst_finvarsublab_calc__c double precision,
    wocst_dmdtotcstsubmtl__c double precision,
    wocst_ordsts_pl__c character varying(255),
    wocst_ordcostohdlab_calc__c double precision,
    wocst_priority__c double precision,
    wocst_supdolchgout_total__c double precision,
    wocst_supdolchgoutsubmtl__c double precision,
    temp_msg__c character varying(50),
    wocst_ordvarsubmtl_calc__c double precision,
    wocst_condcd__c character varying(10),
    wocst_qtyinwip__c double precision,
    wocst_stsdte__c date,
    wocst_finvarlab_calc__c double precision,
    wocst_dmdtotcstohdlab__c double precision,
    wocst_supdolchgoutfrght__c double precision,
    wocst_operaltcode__c character varying(1),
    wocst_wbs__c character varying(30),
    wocst_duedte__c date,
    wocst_totrunhrstd__c double precision,
    wocst_supdolchgoutohdlab__c double precision,
    wocst_ordcostsubmtl_calc__c double precision,
    wocst_closvarsublab__c double precision,
    wocst_dmdtotcstfrght__c double precision,
    isdeleted boolean,
    wocst_consignind__c boolean,
    systemmodstamp timestamp without time zone,
    wocst_opsrmng__c double precision,
    wocst_tothrstd__c double precision,
    wocst_finvarohdfrng_calc__c double precision,
    wocst_schedfirmdte__c date,
    wocst_firstacceptdate__c date,
    wocst_suptotcstsublab__c double precision,
    wocst_supdolchgoutmtl__c double precision,
    wocst_supdolchgoutohdmach__c double precision,
    wocst_dmddolchgoutsublab__c double precision,
    wocst_dmdtotcstothlnd__c double precision,
    wocst_dmdtotcstmtl__c double precision,
    wocst_orddedsublab_calc__c double precision,
    formula_searchindex__c character varying(1300),
    wocst_lotnodteassgned__c date,
    wocst_supdolchgoutothlnd__c double precision,
    wocst_effrev__c character varying(18),
    wocst_disrcvlocid__c character varying(18),
    formula_defaultproject__c character varying(1300),
    wocst_dmdtotcstohdmach__c double precision,
    wocst_disrcvlocnum__c character varying(10),
    wocst_schedpickdte__c date,
    wocst_proj__c character varying(18),
    wocst_ordcost_label__c character varying(20),
    wocst_reldte__c date,
    wocst_wovaracct__c character varying(18),
    wocst_bypassfiniteloadind__c boolean,
    tempid__c character varying(20),
    wocst_ordno__c character varying(16),
    wocst_qtyscrap__c double precision,
    wocst_actpickdate__c date,
    wocst_ordvarsublab_calc__c double precision,
    wocst_effind_pl__c character varying(255),
    wocst_totsethrs__c double precision,
    createddate timestamp without time zone,
    wocst_dmdtotcstohdmtl__c double precision,
    wocst_ordcostsublab_calc__c double precision,
    wocst_estind__c boolean,
    wocst_closvar_total__c double precision,
    wocst_supdolchgoutohdmtl__c double precision,
    wocst_closvarsubmtl__c double precision,
    wocst_orgid__c character varying(18),
    wocst_lotexpiredate__c date,
    wocst_finvarohdmtl_calc__c double precision,
    wocst_suptotcst_total__c double precision,
    wocst_suptotcstsubmtl__c double precision,
    wocst_targetsite__c character varying(18),
    wocst_actfirmdate__c date,
    wocst_dmddolchgoutohdfrng__c double precision,
    wocst_ordcostohdmach_calc__c double precision,
    wocst_dmddolchgoutsubmtl__c double precision,
    searchindex__c character varying(255),
    wocst_totmachhrs__c double precision,
    wocst_suptotcstohdfrng__c double precision,
    wocst_lastop__c character varying(4),
    wocst_dmddolchgout_total__c double precision,
    wocst_ordcostmtl_calc__c double precision,
    wocst_dmdvarcst_total__c double precision,
    wocst_ordvarohdmach_calc__c double precision,
    wocst_closvarohdfrng__c double precision,
    wocst_closvarohdlab__c double precision,
    wocst_icixrind__c boolean,
    wocst_ordvarmtl_calc__c double precision,
    wocst_reworkind__c boolean,
    wocst_suptotcstohdlab__c double precision,
    wocst_actreldate__c date,
    wocst_dmddolchgoutlab__c double precision,
    wocst_dmddolchgoutohdlab__c double precision,
    wocst_actclosedate__c date,
    wocst_suptotcstlab__c double precision,
    wocst_numbdmds__c double precision,
    wocst_dimvals__c character varying(18),
    temp_select__c boolean,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    wocst_closvarlab__c double precision,
    wocst_item__c character varying(18),
    formula_orgid__c character varying(1300),
    wocst_closvarothlnd__c double precision,
    wocst_suptotcstothlnd__c double precision,
    wocst_orddedohdmach_calc__c double precision,
    wocst_orddedohdmtl_calc__c double precision,
    formula_name__c character varying(1300),
    wocst_totrunhrs__c double precision,
    wocst_dmddolchgoutothlnd__c double precision,
    wocst_ordsts__c character varying(1),
    wocst_orddedmtl_calc__c double precision,
    sfid character varying(18),
    id integer,
    wocst_mrplaunch__c character varying(20)
);


--ALTER TABLE whiting_sb.wocst__c OWNER TO u9tgm7n0rjh5ge;

--
-- TOC entry 357 (class 1259 OID 41736)
-- Name: woorddmd__c; Type: TABLE; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE TABLE whiting_sb.woorddmd__c (
    woorddmd_itemrev__c character varying(18),
    woorddmd_icixrind__c boolean,
    formula_extid__c character varying(1300),
    woorddmd_dolchgoutohdlab__c double precision,
    woorddmd_setqty__c double precision,
    woorddmd_comments__c character varying(100),
    woorddmd_ucstsubmtl__c double precision,
    woorddmd_qtyiss__c double precision,
    formula_qtyshort__c double precision,
    woorddmd_dolchgoutothlnd__c double precision,
    woorddmd_desc__c character varying(1300),
    woorddmd_backflushpol_pl__c character varying(255),
    woorddmd_ucstohdlab__c double precision,
    woorddmd_icixr__c boolean,
    woorddmd_issue_sts_pl__c character varying(255),
    woorddmd_ucstothlnd__c double precision,
    woorddmd_enginvumcf__c double precision,
    woorddmd_wbs__c character varying(30),
    woorddmd_oper__c double precision,
    woorddmd_dolchgoutohdmtl__c double precision,
    woorddmd_fixqtyflag__c boolean,
    woorddmd_issproj__c character varying(18),
    woorddmd_compqty_ordqty_ui__c double precision,
    woorddmd_fullyalloc__c boolean,
    name character varying(100),
    woorddmd_dmdsts_pl__c character varying(255),
    woorddmd_qtyscp__c double precision,
    woorddmd_wctr__c character varying(18),
    formula_stampdimensions__c boolean,
    woorddmd_lne__c double precision,
    woorddmd_ucstohdmtl__c double precision,
    woorddmd_qtyreq__c double precision,
    woorddmd_fromwocst__c character varying(50),
    woorddmd_qtytype_fixedqty_ui__c boolean,
    woorddmd_ordno__c character varying(18),
    woorddmd_ucstohdfrng__c double precision,
    isdeleted boolean,
    woorddmd_qtyper__c double precision,
    woorddmd_site__c character varying(18),
    woorddmd_ishomeproj__c boolean,
    systemmodstamp timestamp without time zone,
    woorddmd_qtytype_qtyreqd_ui__c boolean,
    formula_searchindex__c character varying(1300),
    woorddmd_ucstlab__c double precision,
    formula_defaultproject__c character varying(1300),
    woorddmd_qtytype_qtyper_ui__c boolean,
    woorddmd_dolchgoutohdfrng__c double precision,
    woorddmd_invuom__c character varying(18),
    woorddmd_compitem__c character varying(18),
    woorddmd_dtereqd__c date,
    formula_wocharges__c double precision,
    woorddmd_scppct__c double precision,
    createddate timestamp without time zone,
    woorddmd_dolchgoutsublab__c double precision,
    woorddmd_dolchgoutlab__c double precision,
    woorddmd_dimvals__c character varying(18),
    woorddmd_qtyalloc__c double precision,
    woorddmd_refdes__c text,
    woorddmd_isswbs__c character varying(30),
    woorddmd_ucstfrght__c double precision,
    woorddmd_proj__c character varying(18),
    searchindex__c character varying(255),
    woorddmd_qtyoutstdg__c double precision,
    woorddmd_ucstsublab__c double precision,
    woorddmd_ucstmtl__c double precision,
    woorddmd_ucstohdmach__c double precision,
    woorddmd_qtyreq_pseudo__c double precision,
    woorddmd_compqty_qtyper_ui__c double precision,
    woorddmd_dolchgoutfrght__c double precision,
    externalid__c character varying(100),
    triggeroptions__c character varying(40),
    woorddmd_compqty_qtyreq_ui__c double precision,
    woorddmd_dolchgoutsubmtl__c double precision,
    woorddmd_dolchgoutmtl__c double precision,
    woorddmd_homeprojind_pl__c character varying(255),
    woorddmd_dolchgoutohdmach__c double precision,
    formula_name__c character varying(1300),
    woorddmd_procno__c character varying(18),
    woorddmd_dmdsts__c character varying(1),
    woorddmd_pjprojwbs__c character varying(18),
    woorddmd_div__c character varying(18),
    sfid character varying(18),
    id integer,
    wocst_externalid__c character varying,
    woorddmd_mrplaunch__c character varying(20)
);


--ALTER TABLE whiting_sb.woorddmd__c OWNER TO u9tgm7n0rjh5ge;


--
-- TOC entry 4252 (class 2604 OID 64768)
-- Name: master_config serialno; Type: DEFAULT; Schema: public; Owner: ueoqd0cu0bie95
--

ALTER TABLE ONLY whiting_sb.master_config ALTER COLUMN serialno SET DEFAULT nextval('whiting_sb.master_config_serialno_seq'::regclass);


--
-- TOC entry 4253 (class 2604 OID 66197)
-- Name: pellc__c unique_id; Type: DEFAULT; Schema: public; Owner: ueoqd0cu0bie95
--

ALTER TABLE ONLY whiting_sb.pellc__c ALTER COLUMN unique_id SET DEFAULT nextval('whiting_sb.pellc__c_unique_id_seq'::regclass);


--
-- TOC entry 4283 (class 2606 OID 63894)
-- Name: mrpdmd__c mrpdmd__c_pkey; Type: CONSTRAINT; Schema: public; Owner: ueoqd0cu0bie95
--

ALTER TABLE ONLY whiting_sb.mrpdmd__c
    ADD CONSTRAINT mrpdmd__c_pkey PRIMARY KEY (id);


--
-- TOC entry 4285 (class 2606 OID 63912)
-- Name: mrpsup__c mrpsup__c_pkey; Type: CONSTRAINT; Schema: public; Owner: ueoqd0cu0bie95
--

ALTER TABLE ONLY whiting_sb.mrpsup__c
    ADD CONSTRAINT mrpsup__c_pkey PRIMARY KEY (id);


--
-- TOC entry 4256 (class 1259 OID 116507)
-- Name: addsts_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX addsts_1 ON whiting_sb.pebom__c(pebom_addsts_pl__c);


--
-- TOC entry 4257 (class 1259 OID 116508)
-- Name: compitem_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX compitem_1 ON whiting_sb.pebom__c(pebom_compitem__c);

CREATE INDEX pebom_div_1 ON whiting_sb.pebom__c(pebom_div__c);
--
-- TOC entry 4264 (class 1259 OID 116503)
-- Name: createddate_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX createddate_1 ON whiting_sb.icixr__c(createddate);


--
-- TOC entry 4265 (class 1259 OID 116496)
-- Name: dtereqd_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX dtereqd_1 ON whiting_sb.icixr__c(icixr_dtereqd__c);


--
-- TOC entry 4281 (class 1259 OID 135445)
-- Name: extid_wocst; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX extid_wocst ON whiting_sb.wocst__c(externalid__c);


--
-- TOC entry 4266 (class 1259 OID 113799)
-- Name: icitem_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX icitem_1 ON whiting_sb.icixr__c(icixr_icitem__c);


--
-- TOC entry 4274 (class 1259 OID 120533)
-- Name: icitem_div_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX icitem_div_1 ON whiting_sb.icitem__c(icitem_div__c);


--
-- TOC entry 4275 (class 1259 OID 120532)
-- Name: icitem_item_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX icitem_item_1 ON whiting_sb.icitem__c(icitem_item__c);


--
-- TOC entry 4277 (class 1259 OID 117518)
-- Name: icitemacc_item_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX icitemacc_item_1 ON whiting_sb.icitemacc__c(icitemacc_item__c);


--
-- TOC entry 4278 (class 1259 OID 117517)
-- Name: icitemcst_item_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX icitemcst_item_1 ON whiting_sb.icitemcst__c(icitemcst_item__c);


--
-- TOC entry 4280 (class 1259 OID 117516)
-- Name: icitemproj_item_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX icitemproj_item_1 ON whiting_sb.icitemproj__c(icitemproj_item__c);


--
-- TOC entry 4258 (class 1259 OID 116506)
-- Name: item_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX item_1 ON whiting_sb.pebom__c(pebom_item__c);


--
-- TOC entry 4279 (class 1259 OID 116605)
-- Name: item_po; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX item_po ON whiting_sb.poitem__c(poitem_item__c);


--
-- TOC entry 4267 (class 1259 OID 116504)
-- Name: lastmodifieddate_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX lastmodifieddate_1 ON whiting_sb.icixr__c(lastmodifieddate);


--
-- TOC entry 4268 (class 1259 OID 116500)
-- Name: lne_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX lne_1 ON whiting_sb.icixr__c(icixr_lne__c);


--
-- TOC entry 4261 (class 1259 OID 116505)
-- Name: mrpbypass_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX mrpbypass_1 ON whiting_sb.pjproj__c(pjproj_mrpbypass__c);


--
-- TOC entry 4269 (class 1259 OID 116499)
-- Name: ordno_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX ordno_1 ON whiting_sb.icixr__c(icixr_ordno__c);


--
-- TOC entry 4270 (class 1259 OID 116497)
-- Name: ordtype_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX ordtype_1 ON whiting_sb.icixr__c(icixr_ordtype__c);


--
-- TOC entry 4286 (class 1259 OID 117521)
-- Name: pellc_div_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX pellc_div_1 ON whiting_sb.pellc__c(pellc_div__c);


--
-- TOC entry 4287 (class 1259 OID 117520)
-- Name: pellc_icitem_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX pellc_icitem_1 ON whiting_sb.pellc__c(pellc_icitem__c);


--
-- TOC entry 4288 (class 1259 OID 117523)
-- Name: pellc_item_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX pellc_item_1 ON whiting_sb.pellc__c(pellc_item__c);


--
-- TOC entry 4289 (class 1259 OID 117522)
-- Name: pellc_llc_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX pellc_llc_1 ON whiting_sb.pellc__c(pellc_llc__c);


--
-- TOC entry 4290 (class 1259 OID 120534)
-- Name: pellc_peitem_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX pellc_peitem_1 ON whiting_sb.pellc__c(pellc_peitem__c);


--
-- TOC entry 4262 (class 1259 OID 117519)
-- Name: pjproj_div_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX pjproj_div_1 ON whiting_sb.pjproj__c(pjproj_div__c);


--
-- TOC entry 4271 (class 1259 OID 116501)
-- Name: proj_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX proj_1 ON whiting_sb.icixr__c(icixr_proj__c);


--
-- TOC entry 4272 (class 1259 OID 116502)
-- Name: qtyoutstdg_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX qtyoutstdg_1 ON whiting_sb.icixr__c(icixr_qtyoutstdg__c);

CREATE INDEX icixr_div_1 ON whiting_sb.icixr__c(icixr_div__c);
--
-- TOC entry 4259 (class 1259 OID 116509)
-- Name: qtyper_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX qtyper_1 ON whiting_sb.pebom__c(pebom_qtyper__c);


--
-- TOC entry 4276 (class 1259 OID 116602)
-- Name: sfid_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX sfid_1 ON whiting_sb.icitem__c(sfid);


--
-- TOC entry 4260 (class 1259 OID 116603)
-- Name: sfid_bom; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX sfid_bom ON whiting_sb.pebom__c(sfid);


--
-- TOC entry 4254 (class 1259 OID 116604)
-- Name: sfid_item; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX sfid_item ON whiting_sb.peitem__c(sfid);


--
-- TOC entry 4256 (class 1259 OID 116507)
-- Name: addsts_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX peitem_div_1 ON whiting_sb.peitem__c(peitem_div__c);

--
-- TOC entry 4263 (class 1259 OID 117653)
-- Name: sfid_proj; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX sfid_proj ON whiting_sb.pjproj__c(sfid);


--
-- TOC entry 4273 (class 1259 OID 116498)
-- Name: site_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX site_1 ON whiting_sb.icixr__c(icixr_site__c);


--
-- TOC entry 4255 (class 1259 OID 116510)
-- Name: type_pl_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX type_pl_1 ON whiting_sb.peitem__c(peitem_type_pl__c);


--
-- TOC entry 4291 (class 1259 OID 120776)
-- Name: unique_id_1; Type: INDEX; Schema: public; Owner: ueoqd0cu0bie95
--

CREATE INDEX unique_id_1 ON whiting_sb.pellc__c(unique_id);




CREATE INDEX wocst_div_1 ON whiting_sb.wocst__c(wocst_div__c);

CREATE INDEX woorddmd_div_1 ON whiting_sb.woorddmd__c(woorddmd_div__c);

CREATE INDEX icreq_div_1 ON whiting_sb.icreq__c(icreq_div__c);

CREATE INDEX icreqdmd_div_1 ON whiting_sb.icreqdmd__c(icreqdmd_div__c);

CREATE INDEX mrpplannotes_div_1 ON whiting_sb.mrpplannotes__c(mrpplannotes_div__c);

CREATE INDEX icmrprsch_div_1 ON whiting_sb.icmrprsch__c(icmrprsch_div__c);

--
-- TOC entry 4420 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: ueoqd0cu0bie95
--

REVOKE ALL ON SCHEMA whiting_sb FROM postgres;
REVOKE ALL ON SCHEMA whiting_sb FROM PUBLIC;
GRANT ALL ON SCHEMA whiting_sb TO u9tgm7n0rjh5ge;
GRANT ALL ON SCHEMA whiting_sb TO PUBLIC;


-- Completed on 2018-09-26 12:59:45

--
-- PostgreSQL database dump complete
--

