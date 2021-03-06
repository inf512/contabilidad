/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.1 		*/
/*  Created On : 13-Nov.-2017 10:56:46 a. m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */

DROP SEQUENCE IF EXISTS cndocumento_pk_document_seq
;

/* Drop Tables */

DROP TABLE IF EXISTS cnDocumento CASCADE
;

/* Create Tables */

CREATE TABLE cnDocumento
(
	pk_Document integer NOT NULL   DEFAULT NEXTVAL(('"cndocumento_pk_document_seq"'::text)::regclass),
	cnDescripcion varchar(50),
	cnDocNota varchar(50),
	cnDocBreve varchar(15)
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE cnDocumento ADD CONSTRAINT PK_cnDocumento
	PRIMARY KEY (pk_Document)
;

/* Create Table Comments, Sequences for Autonumber Columns */

CREATE SEQUENCE cndocumento_pk_document_seq INCREMENT 1 START 1
;
