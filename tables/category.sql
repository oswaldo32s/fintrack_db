CREATE TABLE finance.category
(
  id                    NUMBER(6) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name                  VARCHAR2(50)       NOT NULL,
  description           VARCHAR2(100),     --NULL
  create_datetime       TIMESTAMP          NOT NULL,
  update_datetime       TIMESTAMP          --NULL
);
