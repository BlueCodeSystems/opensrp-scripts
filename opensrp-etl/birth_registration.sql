DROP TABLE IF EXISTS birth_registration;
CREATE TABLE birth_registration (
  zeir_id                   VARCHAR(100) DEFAULT NULL,
  gender                    VARCHAR(10)  DEFAULT NULL,
  date_of_birth             DATE		 DEFAULT NULL,
  date_first_seen           DATE	     DEFAULT NULL,
  timestamp_of_registration TIMESTAMP    DEFAULT NULL,
  facility_id               INTEGER      DEFAULT NULL,
  facility_name				VARCHAR(100) DEFAULT NULL,
  facility_tag_id           INTEGER      DEFAULT NULL,
  district                  VARCHAR(100) DEFAULT NULL,
  province                  VARCHAR(100) DEFAULT NULL,
  registration_facility     VARCHAR(100) DEFAULT NULL,
  provider_id               VARCHAR(10)  DEFAULT NULL,
  provider_name             VARCHAR(100) DEFAULT NULL,
  place_of_birth            VARCHAR(100) DEFAULT NULL,
  facility_of_birth         VARCHAR(100) DEFAULT NULL,
  residential_area          VARCHAR(100) DEFAULT NULL
);
