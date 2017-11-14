/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.1 		*/
/*  Created On : 13-Nov.-2017 11:39:38 p. m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */

DROP SEQUENCE IF EXISTS cncuentacte_pk_cuentacte_seq
;

/* Drop Tables */

DROP TABLE IF EXISTS cnCuentaCte CASCADE
;

/* Create Tables */

CREATE TABLE cnCuentaCte
(
	pk_CuentaCte integer NOT NULL   DEFAULT NEXTVAL(('"cncuentacte_pk_cuentacte_seq"'::text)::regclass),
	cnCodigo char(4),
	cnNombre varchar(50),
	cnDireccion varchar(50),
	cnTelefono varchar(15),
	cnTeleFax varchar(15),
	cnNit varchar(15),
	cnContacto varchar(50),
	cnEstado char(1) NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE cnCuentaCte ADD CONSTRAINT PK_cnCuentaCte
	PRIMARY KEY (pk_CuentaCte)
;

ALTER TABLE cnCuentaCte ADD CONSTRAINT UQ_cnCuentaCte_cnCodigo UNIQUE (cnCodigo)
;

/* Create Table Comments, Sequences for Autonumber Columns */

CREATE SEQUENCE cncuentacte_pk_cuentacte_seq INCREMENT 1 START 1
;