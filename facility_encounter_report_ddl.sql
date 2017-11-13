CREATE DATABASE IF NOT EXISTS path_zambia_etl;

DROP TABLE if exists path_zambia_etl.facility_encounter_report;

CREATE TABLE path_zambia_etl.facility_encounter_report (
  encounter_id int(11) NOT NULL,
  encounter_date datetime DEFAULT NULL,
  person_id int(11) DEFAULT NULL,
  zeir_id varchar(20) DEFAULT NULL,
  gender varchar(10) DEFAULT NULL,
  dob date DEFAULT NULL,
  mother_id varchar(26) DEFAULT NULL,
  child_hiv_expo varchar(20) DEFAULT NULL,
  fac_id int(11) DEFAULT NULL,
  fac_name varchar(100) DEFAULT NULL,
  district_id int(11) DEFAULT NULL,
  district_name varchar(100) DEFAULT NULL,
  province_id int(11) DEFAULT NULL,
  province_name varchar(100) DEFAULT NULL,
  provider_id int(11) DEFAULT NULL,
  provider_name varchar(100) DEFAULT NULL,
  child_weight varchar(45) DEFAULT NULL,
  BCG1 tinyint(4) DEFAULT NULL,
  OPV0 tinyint(4) DEFAULT NULL,
  OPV1 tinyint(4) DEFAULT NULL,
  PCV1 tinyint(4) DEFAULT NULL,
  Penta1 tinyint(4) DEFAULT NULL,
  Rota1 tinyint(4) DEFAULT NULL,
  OPV2 tinyint(4) DEFAULT NULL,
  PCV2 tinyint(4) DEFAULT NULL,
  Penta2 tinyint(4) DEFAULT NULL,
  Rota2 tinyint(4) DEFAULT NULL,
  OPV3 tinyint(4) DEFAULT NULL,
  PCV3 tinyint(4) DEFAULT NULL,
  Penta3 tinyint(4) DEFAULT NULL,
  Measles1 tinyint(4) DEFAULT NULL,
  MR1 tinyint(4) DEFAULT NULL,
  OPV4 tinyint(4) DEFAULT NULL,
  Measles2 tinyint(4) DEFAULT NULL,
  MR2 tinyint(4) DEFAULT NULL,
  BCG2 tinyint(4) DEFAULT NULL,
  vitamin_a tinyint(4) DEFAULT NULL,
  mebendezol tinyint(4) DEFAULT NULL,
  PRIMARY KEY (encounter_id)
)


