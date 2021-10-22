--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2 (Ubuntu 10.2-1.pgdg14.04+1)
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-26 12:58:16

--C:\Program Files (x86)\pgAdmin 4\v4\runtime>psql -f D:\Pramod\repos\rootforms-server\stdsetcosts\src\main\resources\schema.sql -h ec2-34-225-171-194.compute-1.amazonaws.com -d d3p0u2oqv00gn5 -U udfvf9nd57a8ml -W pcb262cc34d80fa71e8818ce421f1d67f0b535d5c964f640af109972e03df7a74

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

CREATE SCHEMA IF NOT EXISTS <SCHEMA_NAME> AUTHORIZATION <DB_USER>;

ALTER TABLE <SCHEMA_NAME>.peitem__c ADD COLUMN pgid character varying(20);
ALTER TABLE <SCHEMA_NAME>.icitem__c ADD COLUMN pgid character varying(20);
ALTER TABLE <SCHEMA_NAME>.pebom__c ADD COLUMN pgid character varying(20);
ALTER TABLE <SCHEMA_NAME>.iccomcod__c ADD COLUMN pgid character varying(20);
ALTER TABLE <SCHEMA_NAME>.pellc__c ADD COLUMN pgid character varying(20);

CREATE TABLE <SCHEMA_NAME>.poitemcst__c (
	isupdated__c boolean,
    poitemcst_poitem__c character varying(18),
    poitemcst_div__c character varying(18),
    poitemcst_stdcostupdind_pl__c character varying(20),
    poitemcst_cumavgprice__c double precision,
    poitemcst_curavgprice__c double precision,
    poitemcst_stdmtlcost__c double precision,
    name character varying(80),
    isdeleted boolean,
    createddate timestamp without time zone,
    sfid character varying(18),
    pgid character varying(20)
);


CREATE INDEX poitemcst_pgid ON <SCHEMA_NAME>.poitemcst__c(pgid);
CREATE INDEX poitemcst_sfid ON <SCHEMA_NAME>.poitemcst__c(sfid);
CREATE INDEX poitemcst_div ON <SCHEMA_NAME>.poitemcst__c(poitemcst_div__c);
CREATE INDEX poitemcst_stdcostupdind ON <SCHEMA_NAME>.poitemcst__c(poitemcst_stdcostupdind_pl__c);
CREATE INDEX poitemcst_createddate ON <SCHEMA_NAME>.poitemcst__c(createddate);
CREATE INDEX poitemcst_isupdated ON <SCHEMA_NAME>.poitemcst__c(isupdated__c);

ALTER TABLE <SCHEMA_NAME>.poitem__c ADD COLUMN pgid character varying(20);
CREATE INDEX poitem_div ON <SCHEMA_NAME>.poitem__c(poitem_div__c);
CREATE INDEX poitem_pgid ON <SCHEMA_NAME>.poitem__c(pgid);
CREATE INDEX poitem_umcf ON <SCHEMA_NAME>.poitem__c(poitem_umcf__c);


CREATE TABLE <SCHEMA_NAME>.pocomcod__c (
    pocomcod_div__c character varying(18),
    pocomcod_scfctrhstprice__c double precision,
    pocomcod_scfctrcurprice__c double precision,
    pocomcod_stdcostmrkupdwn__c double precision,
    name character varying(80),
    isdeleted boolean,
    createddate timestamp without time zone,
    sfid character varying(18),
    pgid character varying(20)
);

--ALTER TABLE pocomcod__c ADD COLUMN pocomcod_div__c character varying(18);
--ALTER TABLE pocomcod__c ADD COLUMN pgid character varying(20);
--ALTER TABLE pocomcod__c ADD COLUMN pocomcod_scfctrhstprice__c double precision;
--ALTER TABLE pocomcod__c ADD COLUMN pocomcod_scfctrcurprice__c double precision;
--ALTER TABLE pocomcod__c ADD COLUMN pocomcod_stdcostmrkupdwn__c double precision;

CREATE INDEX pocomcod_div ON <SCHEMA_NAME>.pocomcod__c(pocomcod_div__c);
CREATE INDEX pocomcod_sfid ON <SCHEMA_NAME>.pocomcod__c(sfid);
CREATE INDEX pocomcod_pgid ON <SCHEMA_NAME>.pocomcod__c(pgid);

CREATE TABLE <SCHEMA_NAME>.csitem__c (
counter__c integer,
div__c character varying(18),
effectivedate__c date,
enginvumcf__c double precision,
intrdivstdcost__c double precision,
invpurumcf__c double precision,
itemno__c character varying(50),
dscllc__c integer,
hascomponents__c boolean,
notes__c character varying(32768),
ohdfrngrate__c double precision,
ohdlabrate__c double precision,
ohdmachrate__c double precision,
ohdmtlrate__c double precision,
peitem__c character varying(18),
refroutitem__c character varying(18),
dterollup__c date,
itemscrapfctr__c double precision,
costsimind__c character varying(30),
src__c character varying(20),
stdcostordqty__c double precision,
stdlabcost__c double precision,
stdpurcost__c double precision,
stdpurlabcost__c double precision,
stdpurohdcost__c double precision,
stdfrghtcost__c double precision,
stdothlndcost__c double precision,
stducstcumfrght__c double precision,
stducstcumlab__c double precision,
stducstcummtl__c double precision,
stducstcumohdfrng__c double precision,
stducstcumohdlab__c double precision,
stducstcumohdmach__c double precision,
stducstcumohdmtl__c double precision,
stducstcumothlnd__c double precision,
stducstcumsublab__c double precision,
stducstcumsubmtl__c double precision,
stducstslfrght__c double precision,
stducstsllab__c double precision,
stducstslmtl__c double precision,
stducstslohdfrng__c double precision,
stducstslohdlab__c double precision,
stducstslohdmach__c double precision,
stducstslohdmtl__c double precision,
stducstslothlnd__c double precision,
stducstslsublab__c double precision,
stducstslsubmtl__c double precision,
sfid character varying(18),
pgid character varying(20)
);

CREATE INDEX csitem_sfid ON <SCHEMA_NAME>.csitem__c(sfid);
CREATE INDEX csitem_pgid ON <SCHEMA_NAME>.csitem__c(pgid);
CREATE INDEX csitem_div ON <SCHEMA_NAME>.csitem__c(div__c);
CREATE INDEX csitem_itemno ON <SCHEMA_NAME>.csitem__c(itemno__c);
CREATE INDEX csitem_effectivedate ON <SCHEMA_NAME>.csitem__c(effectivedate__c);
CREATE INDEX csitem_dscllc ON <SCHEMA_NAME>.csitem__c(dscllc__c);
CREATE INDEX csitem_counter ON <SCHEMA_NAME>.csitem__c(counter__c);
CREATE INDEX csitem_peitem ON <SCHEMA_NAME>.csitem__c(peitem__c);

CREATE TABLE <SCHEMA_NAME>.icitemstd__c (
icitemstd_poitemcstmtlind_pl__c character varying(255),
icitemstd_div__c character varying(18),
icitemstd_costsimind_pl__c character varying(30),
icitemstd_item__c character varying(18),
icitemstd_intrdivstdcostsim__c double precision, 
icitemstd_purprice__c double precision, 
icitemstd_stdcostordqty__c double precision, 
icitemstd_stdlabcost__c double precision,
icitemstd_stducstmtlsim__c double precision,
icitemstd_stducstlabsim__c double precision,
icitemstd_stducstohdmtlsim__c double precision,
icitemstd_stducstohdlabsim__c double precision,
icitemstd_stducstohdfrngsim__c double precision,
icitemstd_stducstohdmachsim__c double precision,
icitemstd_stducstsubmtlsim__c double precision,
icitemstd_stducstsublabsim__c double precision,
icitemstd_stducstfrghtsim__c double precision,
icitemstd_stducstothlndsim__c double precision,
icitemstd_stducstslmtlsim__c double precision,
icitemstd_stducstsllabsim__c double precision,
icitemstd_stducstslohdmtlsim__c double precision,
icitemstd_stducstslohdlabsim__c double precision,
icitemstd_stducstslohdfrngsim__c double precision,
icitemstd_stducstslohdmachsim__c double precision,
icitemstd_stducstslsubmtlsim__c double precision,
icitemstd_stducstslsublabsim__c double precision,
icitemstd_stducstslfrghtsim__c double precision,
icitemstd_stducstslothlndsim__c double precision,
icitemstd_stducsttotsim__c double precision,
icitemstd_effectivedate__c date,
icitemstd_dterollup__c date,
icitemstd_simstdmoveupdind_pl__c character varying(255),
icitemstd_histstdsetdate__c date,
icitemstd_intrdivstdcost__c double precision,	
icitemstd_intrdivstdcosthist__c double precision,	
icitemstd_simstdsetdate__c date,
icitemstd_stducstfrght__c double precision,
icitemstd_stducstlab__c double precision,	
icitemstd_stducstmtl__c double precision,	
icitemstd_stducstohdfrng__c double precision,	
icitemstd_stducstohdlab__c double precision,	
icitemstd_stducstohdmach__c double precision,
icitemstd_stducstohdmtl__c double precision,
icitemstd_stducstothlnd__c double precision,
icitemstd_stducstsllab__c double precision,
icitemstd_stducstslmtl__c double precision,
icitemstd_stducstslohdfrng__c double precision,
icitemstd_stducstslohdlab__c double precision,
icitemstd_stducstslohdmach__c double precision,
icitemstd_stducstslohdmtl__c double precision,
icitemstd_stducstslsublab__c double precision,
icitemstd_stducstslsubmtl__c double precision,
icitemstd_stducstsltot__c double precision,
icitemstd_stducstsltotsim__c double precision,
icitemstd_stducstsublab__c double precision,
icitemstd_stducstsubmtl__c double precision,
icitemstd_stducsttot__c double precision,
icitemstd_stducstmtlhist__c double precision,
icitemstd_stducstlabhist__c double precision,
icitemstd_stducstohdmtlhist__c double precision,
icitemstd_stducstohdlabhist__c double precision,
icitemstd_stducstohdfrnghist__c double precision,
icitemstd_stducstohdmachhist__c double precision,
icitemstd_stducstsubmtlhist__c double precision,
icitemstd_stducstsublabhist__c double precision,
icitemstd_stducstfrghthist__c double precision,
icitemstd_stducstothlndhist__c double precision,
icitemstd_stducsttothist__c double precision,
icitemstd_stducstslmtlhist__c double precision,
icitemstd_stducstslohdmtlhist__c double precision,
icitemstd_stducstsllabhist__c double precision,
icitemstd_stducstslohdlabhist__c double precision,
icitemstd_stducstslohdfrnghst__c double precision,
icitemstd_stducstslohdmachhst__c double precision,
icitemstd_stducstslsubmtlhist__c double precision,
icitemstd_stducstslsublabhist__c double precision,
name character varying(80),
isdeleted boolean,
createddate timestamp without time zone,
lastmodifieddate timestamp without time zone,
sfid character varying(18),
pgid character varying(20)
);

CREATE INDEX icitemstd_sfid ON <SCHEMA_NAME>.icitemstd__c(sfid);
CREATE INDEX icitemstd_pgid ON <SCHEMA_NAME>.icitemstd__c(pgid);
CREATE INDEX icitemstd_div ON <SCHEMA_NAME>.icitemstd__c(icitemstd_div__c);
CREATE INDEX icitemstd_costsimind ON <SCHEMA_NAME>.icitemstd__c(icitemstd_costsimind_pl__c);
CREATE INDEX icitemstd_dterollup ON <SCHEMA_NAME>.icitemstd__c(icitemstd_dterollup__c);
CREATE INDEX icitemstd_effectivedate ON <SCHEMA_NAME>.icitemstd__c(icitemstd_effectivedate__c);
CREATE INDEX icitemstd_item ON <SCHEMA_NAME>.icitemstd__c(icitemstd_item__c);

CREATE INDEX icitemstd_simstdmoveupdind ON <SCHEMA_NAME>.icitemstd__c(icitemstd_simstdmoveupdind_pl__c);
CREATE INDEX icitemstd_poitemcstmtlind ON <SCHEMA_NAME>.icitemstd__c(icitemstd_poitemcstmtlind_pl__c);
CREATE INDEX icitemstd_simstdsetdate ON <SCHEMA_NAME>.icitemstd__c(icitemstd_simstdsetdate__c);

ALTER TABLE <SCHEMA_NAME>.pellc__c ALTER COLUMN pellc_llc__c TYPE integer;

CREATE INDEX pellc_pgid ON <SCHEMA_NAME>.pellc__c(pgid);

CREATE INDEX iccomcod_div ON <SCHEMA_NAME>.iccomcod__c(iccomcod_div__c);

CREATE TABLE <SCHEMA_NAME>.sydiv__c (
sydiv_cmpno__c character varying(18),
sydiv_ohdlabrate__c double precision,
sydiv_ohdfrngrate__c double precision,
sydiv_ohdmachrate__c double precision,
sydiv_div__c character varying(18),
sydiv_dflthomeproj__c character varying(20),
sydiv_mainsite__c character varying(20),
sydiv_costtype_pl__c character varying(40),
sydiv_labclracct__c character varying(20),
sydiv_stdschgvaracct__c character varying(20),
sydiv_projact__c boolean,
sfid character varying(18)	
);


CREATE TABLE <SCHEMA_NAME>.sycmp__c (
sycmp_engdivind__c boolean,
sycmp_engdiv__c character varying(18),
sycmp_homecurr__c character varying(20),
sycmp_utcoffset__c double precision,	
sfid character varying(18)
);

CREATE TABLE <SCHEMA_NAME>.syumcf__c (
syumcf_umcf__c double precision,
syumcf_touom__c character varying(18),
syumcf_fruom__c character varying(18),
syumcf_type_pl__c character varying(50),
sfid character varying(18)
);

CREATE TABLE <SCHEMA_NAME>.rtrouthdr__c (
rtrouthdr_div__c character varying(18),
rtrouthdr_item__c character varying(18),
sfid character varying(18)
);


CREATE TABLE <SCHEMA_NAME>.rtroutoper__c (
rtroutoper_adddate__c date, 
rtroutoper_addsts_pl__c character varying(50), 
rtroutoper_altcode__c character varying(6), 
rtroutoper_deldate__c date, 
rtroutoper_delsts_pl__c character varying(50), 
rtroutoper_machhrsim__c double precision, 
rtroutoper_machtype_pl__c character varying(50), 
rtroutoper_oper__c double precision, 
rtroutoper_runhrsim__c double precision, 
rtroutoper_runtype_pl__c character varying(50), 
rtroutoper_setuphrsim__c double precision, 
rtroutoper_setuptype_pl__c character varying(50), 
rtroutoper_stddivideby__c double precision, 
rtroutoper_runlabgrd__c character varying(18), 
rtroutoper_setuplabgrd__c character varying(18), 
rtroutoper_machno__c character varying(18),
rtroutoper_wctr__c character varying(18),
rtroutoper_setuphrsimind_pl__c character varying(60),
rtroutoper_setuphr__c double precision,
rtroutoper_runhrsimind_pl__c character varying(60),
rtroutoper_runhr__c double precision,
rtroutoper_machhrsimind_pl__c character varying(60),
rtroutoper_machhr__c double precision,
rtroutoper_div__c character varying(18),
rtroutoper_simstdsetdate__c	date,
name character varying(80),
isdeleted boolean,
createddate timestamp without time zone,   
sfid character varying(18),
pgid character varying(20)   
);

CREATE INDEX rtroutoper_div ON <SCHEMA_NAME>.rtroutoper__c(rtroutoper_div__c);
CREATE INDEX rtroutoper_simstdsetdate ON <SCHEMA_NAME>.rtroutoper__c(rtroutoper_simstdsetdate__c);
CREATE INDEX rtroutoper_setuphrsimind ON <SCHEMA_NAME>.rtroutoper__c(rtroutoper_setuphrsimind_pl__c);
CREATE INDEX rtroutoper_runhrsimind ON <SCHEMA_NAME>.rtroutoper__c(rtroutoper_runhrsimind_pl__c);
CREATE INDEX rtroutoper_machhrsimind ON <SCHEMA_NAME>.rtroutoper__c(rtroutoper_machhrsimind_pl__c);


CREATE TABLE <SCHEMA_NAME>.rtwctr__c (
rtwctr_wctr__c character varying(10),
rtwctr_div__c character varying(18),
rtwctr_dept__c character varying(18),
sfid character varying(18)  
);

CREATE TABLE <SCHEMA_NAME>.pebomovr__c (
pebomovr_dmdlne__c double precision, 
pebomovr_ltoffset__c double precision, 
pebomovr_procno__c character varying(18), 
pebomovr_qtyper__c double precision, 
pebomovr_scrappcnt__c double precision, 
pebomovr_setupqty__c double precision, 
pebomovr_wctr__c character varying(18),
pebomovr_parentpebom__c character varying(18),
sfid character varying(18)
);

CREATE TABLE <SCHEMA_NAME>.rtlabgrd__c (
    rtlabgrd_hrratesimind_pl__c character varying(60),
    rtlabgrd_hrratesim__c double precision,
	rtlabgrd_hrrate__c double precision,
	rtlabgrd_div__c character varying(18),
	rtlabgrd_simstdsetdate__c date,	
    name character varying(80),
    isdeleted boolean,   
    createddate timestamp without time zone,     
    sfid character varying(18),
	pgid character varying(20)   
);

CREATE INDEX rtlabgrd_div ON <SCHEMA_NAME>.rtlabgrd__c(rtlabgrd_div__c);
CREATE INDEX rtlabgrd_simstdsetdate ON <SCHEMA_NAME>.rtlabgrd__c(rtlabgrd_simstdsetdate__c);
CREATE INDEX rtlabgrd_hrratesimind ON <SCHEMA_NAME>.rtlabgrd__c(rtlabgrd_hrratesimind_pl__c);

CREATE TABLE <SCHEMA_NAME>.rtmach__c (    
    rtmach_ohdratesimind_pl__c character varying(60),
    rtmach_ohdratesim__c double precision,
	rtmach_ohdrate__c double precision,
	rtmach_div__c character varying(18),
	rtmach_simstdsetdate__c date,	
    name character varying(80),
    isdeleted boolean,    
    createddate timestamp without time zone,   
    sfid character varying(18),
	pgid character varying(20)   
);

CREATE INDEX rtmach_div ON <SCHEMA_NAME>.rtmach__c(rtmach_div__c);
CREATE INDEX rtmach_simstdsetdate ON <SCHEMA_NAME>.rtmach__c(rtmach_simstdsetdate__c);
CREATE INDEX rtmach_ohdratesimind ON <SCHEMA_NAME>.rtmach__c(rtmach_ohdratesimind_pl__c);

CREATE TABLE <SCHEMA_NAME>.rtdept__c (    
    rtdept_ohdlabratesimind_pl__c character varying(60),
    rtdept_ohdlabratesim__c double precision,
	rtdept_ohdlabrate__c double precision,
	rtdept_div__c character varying(18),
	rtdept_ohdfrngratesimind_pl__c character varying(60),
	rtdept_ohdfrngratesim__c double precision,	
	rtdept_ohdfrngrate__c double precision,	
	rtdept_simstdsetdate__c date,	
    name character varying(80),
    isdeleted boolean,    
    createddate timestamp without time zone,   
    sfid character varying(18),
	pgid character varying(20)   
);

CREATE INDEX rtdept_div ON <SCHEMA_NAME>.rtdept__c(rtdept_div__c);
CREATE INDEX rtdept_simstdsetdate ON <SCHEMA_NAME>.rtdept__c(rtdept_simstdsetdate__c);
CREATE INDEX rtdept_ohdlabratesimind ON <SCHEMA_NAME>.rtdept__c(rtdept_ohdlabratesimind_pl__c);
CREATE INDEX rtdept_ohdfrngratesimind ON <SCHEMA_NAME>.rtdept__c(rtdept_ohdfrngratesimind_pl__c);

CREATE TABLE <SCHEMA_NAME>.icitemsite__c (
	icitemsite_div__c character varying(18),
	icitemsite_icitem__c character varying(20),
	icitemsite_qtycons__c double precision,
	icitemsite_qtyoh__c double precision,
	icitemsite_qtyohnn__c double precision,
	icitemsite_qtyvmi__c double precision,
	icitemsite_site__c character varying(18),	
    name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,
    sfid character varying(18),
    pgid character varying(20)
);

CREATE INDEX icitemsite_div ON <SCHEMA_NAME>.icitemsite__c(icitemsite_div__c);
CREATE INDEX icitemsite_createddate ON <SCHEMA_NAME>.icitemsite__c(createddate);

CREATE TABLE <SCHEMA_NAME>.wopcst__c (
	wopcst_div__c character varying(18),	
	wopcst_ordno__c character varying(20),
	wopcst_oper__c character varying(20),
	wopcst_cstohdfrng__c double precision,
	wopcst_cstohdlab__c double precision,
	wopcst_cstohdmach__c double precision,
	wopcst_supdolchgoutfrght__c double precision,
	wopcst_supdolchgoutlab__c double precision,
	wopcst_supdolchgoutmtl__c double precision,
	wopcst_supdolchgoutohdfrng__c double precision,
	wopcst_supdolchgoutohdlab__c double precision,
	wopcst_supdolchgoutohdmach__c double precision,
	wopcst_supdolchgoutohdmtl__c double precision,	
	wopcst_supdolchgoutothlnd__c double precision,
	wopcst_supdolchgoutsublab__c double precision,
	wopcst_supdolchgoutsubmtl__c double precision,
	wopcst_cstlab__c double precision,	
    name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,
	sfid character varying(18),
    pgid character varying(20)
);

CREATE INDEX wopcst_div ON <SCHEMA_NAME>.wopcst__c(wopcst_div__c);
CREATE INDEX wopcst_ordno ON <SCHEMA_NAME>.wopcst__c(wopcst_ordno__c);

CREATE TABLE <SCHEMA_NAME>.woploc__c (
	woploc_div__c character varying(18),	
	woploc_ordno__c character varying(20),
	woploc_supdolchgoutfrght__c double precision,
	woploc_supdolchgoutlab__c double precision,
	woploc_supdolchgoutmtl__c double precision,
	woploc_supdolchgoutohdfrng__c double precision,
	woploc_supdolchgoutohdlab__c double precision,
	woploc_supdolchgoutohdmach__c double precision,
	woploc_supdolchgoutohdmtl__c double precision,
	woploc_supdolchgoutothlnd__c double precision,
	woploc_supdolchgoutsublab__c double precision,
	woploc_supdolchgoutsubmtl__c double precision,	
    name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,
	sfid character varying(18),
    pgid character varying(20)
);

CREATE INDEX woploc_div ON <SCHEMA_NAME>.woploc__c(woploc_div__c); 
CREATE INDEX woploc_ordno ON <SCHEMA_NAME>.woploc__c(woploc_ordno__c);

CREATE TABLE <SCHEMA_NAME>.wopscrp__c (
	wopscrp_div__c character varying(18),	
	wopscrp_ordno__c character varying(20),
	wopscrp_supdolchgoutfrght__c double precision,
	wopscrp_supdolchgoutlab__c double precision,
	wopscrp_supdolchgoutmtl__c double precision,
	wopscrp_supdolchgoutohdfrng__c double precision,
	wopscrp_supdolchgoutohdlab__c double precision,
	wopscrp_supdolchgoutohdmach__c double precision,
	wopscrp_supdolchgoutohdmtl__c double precision,
	wopscrp_supdolchgoutothlnd__c double precision,
	wopscrp_supdolchgoutsublab__c double precision,
	wopscrp_supdolchgoutsubmtl__c double precision,	
    name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,
	sfid character varying(18),
    pgid character varying(20)
);

CREATE INDEX wopscrp_div ON <SCHEMA_NAME>.wopscrp__c(wopscrp_div__c); 
CREATE INDEX wopscrp_ordno ON <SCHEMA_NAME>.wopscrp__c(wopscrp_ordno__c);

CREATE TABLE <SCHEMA_NAME>.gljeh__c (
	gljeh_sydiv__c character varying(18),
	gljeh_cmpno__c character varying(18),
	gljeh_date__c date,
	gljeh_reference__c character varying(80),
	gljeh_desc__c character varying(30),  
	gljeh_posted__c boolean,
	gljeh_vendname__c character varying(80),
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);

CREATE INDEX gljeh_div ON <SCHEMA_NAME>.gljeh__c(gljeh_sydiv__c); 


CREATE TABLE <SCHEMA_NAME>.gljed__c (
    gljed_div__c character varying(18),
	gljed_gljeh__c character varying(20),
	gljed_sytxncst__c character varying(20),
	gljed_linetype__c  character varying(1),
	gljed_mfgacct__c character varying(30),
	gljed_xrefacct__c character varying(18),
	gljed_amount__c double precision,
	gljed_drcr__c character varying(10),
	gljed_desc__c character varying(30),
	gljed_pjproj__c character varying(18),
	gljed_sfproduct__c character varying(20),
	gljed_case__c character varying(20),	
	gljed_dimval1__c character varying(20),
	gljed_dimval2__c character varying(20),
	gljed_dimval3__c character varying(20),
	gljed_dimval4__c character varying(20),
	gljed_dimval5__c character varying(20),
	gljed_dimval6__c character varying(20),
	gljed_dimval7__c character varying(20),
	gljed_dimval8__c character varying(20),	
    name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);

CREATE INDEX gljed_div ON <SCHEMA_NAME>.gljed__c(gljed_div__c); 

CREATE TABLE <SCHEMA_NAME>.csusracctcntl__c (
	csusracctcntl_txnid__c character varying(30),
	csusracctcntl_userid__c character varying(20),
	csusracctcntl_backdate__c date,
	csusracctcntl_todaysdate__c date,	
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);


CREATE TABLE <SCHEMA_NAME>.iccomcodacc__c (	
	iccomcodacc_iccomcod__c character varying(20),
	iccomcodacc_invacct__c character varying(20),
	iccomcodacc_invnnacct__c character varying(20),
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,
	sfid character varying(18),
    pgid character varying(20)
);


CREATE TABLE <SCHEMA_NAME>.csacctcntl__c (
	csacctcntl_backdate__c date,
	csacctcntl_stdchngdays__c double precision,	
	csacctcntl_stdchnguserid__c character varying(20),
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);


CREATE TABLE <SCHEMA_NAME>.sycurr__c (
	sycurr_currency__c character varying(10),
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);


CREATE TABLE <SCHEMA_NAME>.syacc__c (
	syacc_syqbcoa__c character varying(20),
	syacc_glxrefacct__c character varying(18),
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);


CREATE TABLE <SCHEMA_NAME>.syusr__c (		
	name character varying(80),
    isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,	
    sfid character varying(18),
    pgid character varying(20)
);

CREATE TABLE <SCHEMA_NAME>.sytxncst__c (
	sytxncst_div__c character varying(18),	
	sytxncst_dim1__c character varying(20),
	sytxncst_dim2__c character varying(20),
	sytxncst_dim3__c character varying(20),	
	sytxncst_dim4__c character varying(20),	
	sytxncst_dim5__c character varying(20),	
	sytxncst_dim6__c character varying(20),	
	sytxncst_dim7__c character varying(20),	
	sytxncst_dim8__c character varying(20),	
	sytxncst_ordproj__c character varying(20),
	sytxncst_itemcondcd__c 	character varying(10),
	sytxncst_usrno__c character varying(20),	
	sytxncst_fifoind__c boolean,
	sytxncst_ucstlab__c double precision,
	sytxncst_proj__c character varying(20),
	sytxncst_item__c character varying(50),
	sytxncst_fifoseq__c double precision,
	sytxncst_cmpdatetime__c timestamp without time zone,	
	sytxncst_drohdmtlclracct__c character varying(18),
	sytxncst_loctype_pl__c character varying(20),
	sytxncst_acctgdate__c date,
	sytxncst_projacwpind__c character varying(1),
	sytxncst_cstodc__c double precision,
	sytxncst_actlabrate__c double precision,
	sytxncst_tracksrl_pl__c character varying(10),
	sytxncst_stdslucstsubmtl__c double precision,
	sytxncst_ucstohdmach__c double precision,
	sytxncst_machhrs__c double precision,
	sytxncst_srlno__c character varying(30),
	sytxncst_crohdlabclracct__c character varying(18),
	sytxncst_exchangerate__c  double precision,
	sytxncst_cmpno__c character varying(20),
	sytxncst_locqtyupdind__c character varying(1),
	sytxncst_qtycons__c double precision,
	sytxncst_tracklot_pl__c character varying(10),
	sytxncst_ucstothlnd__c double precision,
	sytxncst_dracct__c character varying(18),
	sytxncst_txnsubid__c character varying(15),
	sytxncst_ucstohdlab__c double precision,
	sytxncst_icitem__c character varying(20),
	sytxncst_oper__c double precision,
	sytxncst_locproj__c character varying(20),
	sytxncst_acctind__c boolean,
	sytxncst_loccondcd__c character varying(10),
	sytxncst_poumcf__c double precision,
	sytxncst_invbalance__c double precision,
	sytxncst_locitem__c character varying(50), 
	sytxncst_itemrev__c character varying(20),
	sytxncst_trackcond__c boolean,
	sytxncst_shift__c double precision,
	sytxncst_seqno__c double precision,
	sytxncst_crohdfrngclracct__c character varying(18),
	sytxncst_projcostind__c character varying(1),
	sytxncst_rptcostfctr__c double precision,
	sytxncst_locsec__c character varying(30),
	sytxncst_porcptno__c double precision,
	sytxncst_phyrunno__c double precision,
	sytxncst_gltxnqty__c double precision,
	sytxncst_locqty__c double precision,
	sytxncst_locitemrev__c character varying(20),
	sytxncst_locnum__c character varying(20),
	sytxncst_ohdmachrate__c double precision,
	sytxncst_stdslucstsublab__c double precision,
	sytxncst_emplrate__c double precision,
	sytxncst_site__c character varying(20),
	sytxncst_actucstpoprice__c double precision,
	sytxncst_labhrs__c double precision,
	sytxncst_ucstmtl__c double precision,
	sytxncst_drohdlabclracct__c character varying(18),
	sytxncst_lotno__c character varying(30),
	sytxncst_serialtext__c character varying(32768),
	sytxncst_stdslucstsubohdmtl__c double precision,
	sytxncst_ohdfrngrate__c double precision,
	sytxncst_origtxnseqno__c double precision,
	sytxncst_maintcurr__c character varying(3),
	sytxncst_ucstsubmtl__c double precision,
	sytxncst_ohdlabrate__c double precision,
	sytxncst_invacct__c character varying(18),
	sytxncst_drohdfrngclracct__c character varying(18),
	sytxncst_qtyvmi__c double precision,
	sytxncst_ovrridetxndate__c date,
	sytxncst_wobalance__c double precision,
	sytxncst_locid__c character varying(20),
	sytxncst_totqtyloc__c double precision,
	sytxncst_ucstsublab__c double precision,
	sytxncst_rptcostcatg__c character varying(16),
	sytxncst_ucstohdmtl__c double precision,
	sytxncst_tagno__c double precision,
	sytxncst_ordlne__c double precision,
	sytxncst_datetime__c timestamp without time zone,
	sytxncst_ucstfrght__c double precision,
	sytxncst_qtyoh__c double precision,
	sytxncst_objid__c character varying(10),
	sytxncst_solrelno__c double precision,
	sytxncst_costtype_pl__c character varying(30),
	sytxncst_trackrev__c boolean,
	sytxncst_locdiv__c character varying(20),
	sytxncst_origtxndiv__c character varying(20),
	sytxncst_wbs__c character varying(30),
	sytxncst_ucstohdfrng__c double precision,	
	sytxncst_fyr__c double precision,
	sytxncst_clockno__c double precision,
	sytxncst_txnid__c character varying(15),
	sytxncst_invuom__c character varying(20),
	sytxncst_labgrdrate__c double precision,
	sytxncst_locwbs__c character varying(30),
	sytxncst_actucstpoohdmtl__c double precision,
	sytxncst_ucsttotext__c double precision,
	sytxncst_ohdmtlrate__c double precision,
	sytxncst_crohdmtlclracct__c character varying(18),	
	sytxncst_per__c double precision,
	sytxncst_txnqty__c double precision,
	sytxncst_qtyohnn__c double precision,
	sytxncst_locsite__c character varying(20),	
	sytxncst_ucsttot__c double precision,
	sytxncst_cracct__c character varying(18),	
	sytxncst_serialctr__c double precision,	
	sytxncst_journalentryno__c character varying(50),
	sytxncst_puruom__c character varying(20),	
    	name character varying(80),
    	isdeleted boolean,
	lastmodifieddate timestamp without time zone,
	createddate timestamp without time zone,
	systemmodstamp timestamp without time zone,	
	formula_extid__c character varying(1300),
	formula_searchindex__c character varying(1300),
	searchindex__c character varying(255),
	externalid__c character varying(100),
	triggeroptions__c character varying(40),
    	sfid character varying(18),
    	pgid character varying(20)
);

CREATE INDEX sytxncst_div ON <SCHEMA_NAME>.sytxncst__c(sytxncst_div__c);

ALTER TABLE <SCHEMA_NAME>.icitemstd__c ADD COLUMN icitemstd_stducstslfrghthist__c double precision;
ALTER TABLE <SCHEMA_NAME>.icitemstd__c ADD COLUMN icitemstd_stducstslfrght__c double precision;
ALTER TABLE <SCHEMA_NAME>.icitemstd__c ADD COLUMN icitemstd_stducstslothlndhist__c double precision;
ALTER TABLE <SCHEMA_NAME>.icitemstd__c ADD COLUMN icitemstd_stducstslothlnd__c double precision;
ALTER TABLE <SCHEMA_NAME>.icitemstd__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.wopcst__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.woploc__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.wopscrp__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.wocst__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.sytxncst__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.rtroutoper__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.rtlabgrd__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.rtmach__c ADD COLUMN isupdated__c boolean;
ALTER TABLE <SCHEMA_NAME>.rtdept__c ADD COLUMN isupdated__c boolean;

ALTER TABLE <SCHEMA_NAME>.gljed__c ADD COLUMN sytxncst_externalid__c character varying(100);
ALTER TABLE <SCHEMA_NAME>.gljeh__c ADD COLUMN altextid__c character varying(20);

ALTER TABLE <SCHEMA_NAME>.sytxncst__c ADD COLUMN altextid__c character varying(20);

CREATE TABLE <SCHEMA_NAME>.txnobjs__c (
	txnobjs_obj1name__c character varying(40),
	txnobjs_obj1s__c character varying(32000),
	txnobjs_obj2name__c character varying(40),
	txnobjs_obj2s__c character varying(32000),
	txnobjs_obj3name__c character varying(40),
	txnobjs_obj3s__c character varying(32000),
	txnobjs_obj4name__c character varying(40),
	txnobjs_obj4s__c character varying(32000),
	txnobjs_txntype__c character varying(30),
	name character varying(80),
	isdeleted boolean,
	createddate timestamp without time zone,
	lastmodifieddate timestamp without time zone,
	sfid character varying(18),
	pgid character varying(20)
);

CREATE INDEX txnobjs_pgid ON <SCHEMA_NAME>.txnobjs__c(pgid);
CREATE INDEX txnobjs_sfid ON <SCHEMA_NAME>.txnobjs__c(sfid);
ALTER TABLE <SCHEMA_NAME>.txnobjs__c ADD COLUMN txnobjs_div__c character varying(18);
ALTER TABLE <SCHEMA_NAME>.txnobjs__c ADD COLUMN triggeroptions__c character varying(40);
ALTER TABLE <SCHEMA_NAME>.wocst__c ADD COLUMN pgid character varying(20);
ALTER TABLE <SCHEMA_NAME>.icitemacc__c ADD COLUMN pgid character varying(20);
ALTER TABLE <SCHEMA_NAME>.icitemcst__c ADD COLUMN pgid character varying(20);

--CREATE TABLE pramod.rtlabgrd__c (
--    rtlabgrd_hrratesim__c double precision,
--    sfid character varying(18)  
--);


--CREATE TABLE pramod.rtmach__c (
--    rtmach_ohdratesim__c double precision,
--    sfid character varying(18)  
--);

--CREATE TABLE pramod.rtdept__c (
--    rtdept_ohdlabratesim__c double precision,
--	rtdept_ohdfrngratesim__c double precision,	
--    sfid character varying(18)
--);

--
-- TOC entry 4420 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: ueoqd0cu0bie95
--

REVOKE ALL ON SCHEMA <SCHEMA_NAME> FROM postgres;
REVOKE ALL ON SCHEMA <SCHEMA_NAME> FROM PUBLIC;
GRANT ALL ON SCHEMA <SCHEMA_NAME> TO <DB_USER>;
GRANT ALL ON SCHEMA <SCHEMA_NAME> TO PUBLIC;


-- Completed on 2018-09-26 12:59:45

--
-- PostgreSQL database dump complete
--

