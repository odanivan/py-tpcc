CREATE TABLE WAREHOUSE (
  W_ID INT NOT NULL,
  W_NAME VARCHAR(16),
  W_STREET_1 VARCHAR(32),
  W_STREET_2 VARCHAR(32),
  W_CITY VARCHAR(32),
  W_STATE VARCHAR(2),
  W_ZIP VARCHAR(9),
  W_TAX FLOAT,
  W_YTD FLOAT
);

CREATE TABLE DISTRICT (
  D_ID INT NOT NULL,
  D_W_ID INT NOT NULL,
  D_NAME VARCHAR(16),
  D_STREET_1 VARCHAR(32),
  D_STREET_2 VARCHAR(32),
  D_CITY VARCHAR(32),
  D_STATE VARCHAR(2),
  D_ZIP VARCHAR(9),
  D_TAX FLOAT,
  D_YTD FLOAT,
  D_NEXT_O_ID INT
);

CREATE TABLE ITEM (
  I_ID INTEGER NOT NULL,
  I_IM_ID INTEGER,
  I_NAME VARCHAR(32),
  I_PRICE FLOAT,
  I_DATA VARCHAR(64)
);

CREATE TABLE CUSTOMER (
  C_ID INTEGER NOT NULL,
  C_D_ID INT NOT NULL,
  C_W_ID INT NOT NULL,
  C_FIRST VARCHAR(32),
  C_MIDDLE VARCHAR(2),
  C_LAST VARCHAR(32),
  C_STREET_1 VARCHAR(32),
  C_STREET_2 VARCHAR(32),
  C_CITY VARCHAR(32),
  C_STATE VARCHAR(2),
  C_ZIP VARCHAR(9),
  C_PHONE VARCHAR(32),
  C_SINCE VARCHAR(64) NOT NULL,
  C_CREDIT VARCHAR(2),
  C_CREDIT_LIM FLOAT,
  C_DISCOUNT FLOAT,
  C_BALANCE FLOAT,
  C_YTD_PAYMENT FLOAT,
  C_PAYMENT_CNT INTEGER,
  C_DELIVERY_CNT INTEGER,
  C_DATA VARCHAR(500)
);

CREATE TABLE HISTORY (
  H_C_ID INTEGER,
  H_C_D_ID INT,
  H_C_W_ID INT,
  H_D_ID INT,
  H_W_ID INT NOT NULL,
  H_DATE VARCHAR(64) NOT NULL,
  H_AMOUNT FLOAT,
  H_DATA VARCHAR(32)
);

CREATE TABLE STOCK (
  S_I_ID INTEGER NOT NULL,
  S_W_ID INT NOT NULL,
  S_QUANTITY INTEGER NOT NULL,
  S_DIST_01 VARCHAR(32),
  S_DIST_02 VARCHAR(32),
  S_DIST_03 VARCHAR(32),
  S_DIST_04 VARCHAR(32),
  S_DIST_05 VARCHAR(32),
  S_DIST_06 VARCHAR(32),
  S_DIST_07 VARCHAR(32),
  S_DIST_08 VARCHAR(32),
  S_DIST_09 VARCHAR(32),
  S_DIST_10 VARCHAR(32),
  S_YTD INTEGER,
  S_ORDER_CNT INTEGER,
  S_REMOTE_CNT INTEGER,
  S_DATA VARCHAR(64)
);

CREATE TABLE ORDERS (
  O_ID INTEGER NOT NULL,
  O_C_ID INTEGER,
  O_D_ID INT NOT NULL,
  O_W_ID INT NOT NULL,
  O_ENTRY_D VARCHAR(64) NOT NULL,
  O_CARRIER_ID INTEGER,
  O_OL_CNT INTEGER,
  O_ALL_LOCAL INTEGER
);

CREATE TABLE NEW_ORDER (
  NO_O_ID INTEGER NOT NULL,
  NO_D_ID INT NOT NULL,
  NO_W_ID INT NOT NULL
);

CREATE TABLE ORDER_LINE (
  OL_O_ID INTEGER NOT NULL,
  OL_D_ID INT NOT NULL,
  OL_W_ID INT NOT NULL,
  OL_NUMBER INTEGER NOT NULL,
  OL_I_ID INTEGER,
  OL_SUPPLY_W_ID INT,
  OL_DELIVERY_D VARCHAR(64),
  OL_QUANTITY INTEGER,
  OL_AMOUNT FLOAT,
  OL_DIST_INFO VARCHAR(32)
);
--CREATE INDEX IDX_ORDER_LINE_3COL ON ORDER_LINE (OL_W_ID,OL_D_ID,OL_O_ID);
--CREATE INDEX IDX_ORDER_LINE_2COL ON ORDER_LINE (OL_W_ID,OL_D_ID);
