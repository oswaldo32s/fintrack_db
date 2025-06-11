CREATE TABLE finance.sub_category
(
  id                NUMBER(6) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name              VARCHAR2(20),
  description       VARCHAR2(100),
  category_id       NUMBER(6),
  create_datetime   TIMESTAMP,
  update_datetime   TIMESTAMP,
  CONSTRAINT fk_category FOREIGN KEY (category_id)
    REFERENCES category(id)
    ON DELETE SET NULL
);
