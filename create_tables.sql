CREATE TABLE IF NOT EXISTS sanctions (
  sanction_desc varchar(150),
  start_date date,
  end_date date,
  active boolean NOT NULL,
  cty_code varchar(10) NOT NULL,
  id varchar(25) NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS trade (
  hs_code varchar(20) NOT NULL,
  cty_code varchar(10) NOT NULL,
  val_mo bigint,
  qy_mo bigint,
  val_ytd bigint,
  qy_ytd bigint,
  unit_qy varchar(10),
  direction varchar(25) NOT NULL,
  year integer NOT NULL,
  month integer NOT NULL,
  id varchar(50) NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS countries (
  cty_code varchar(10) NOT NULL PRIMARY KEY,
  cty_name varchar(35) NOT NULL
);

CREATE TABLE IF NOT EXISTS commodities (
  hs_code varchar(20) NOT NULL PRIMARY KEY,
  hs_sdesc varchar(50) NOT NULL,
  hs_ldesc varchar(100) NOT NULL,
  critical boolean,
  commodity_group varchar(20)
);

ALTER TABLE sanctions ADD CONSTRAINT sanctions_cty_code_fk FOREIGN KEY (cty_code) REFERENCES countries (cty_code);
ALTER TABLE trade ADD CONSTRAINT trade_cty_code_fk FOREIGN KEY (cty_code) REFERENCES countries (cty_code);
ALTER TABLE trade ADD CONSTRAINT trade_hs_code_fk FOREIGN KEY (hs_code) REFERENCES commodities (hs_code);
