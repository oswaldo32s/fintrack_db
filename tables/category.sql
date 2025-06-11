CREATE TABLE finance.category
(
  id               NUMBER(6) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name             VARCHAR2(20) CONSTRAINT name_nn NOT NULL,
  description      VARCHAR2(100),
  createDatetime   TIMESTAMP CONSTRAINT create_dt_nn NOT NULL,
  updateDatetime   TIMESTAMP
);
