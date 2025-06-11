CREATE TABLE finance.items
(
  id                  NUMBER(6) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name                VARCHAR2(20) NOT NULL,
  description         VARCHAR2(100),
  sub_category_id     NUMBER(6),
  is_necessary        NUMBER(1) DEFAULT 0 CHECK (is_necessary IN (0, 1)),
  create_datetime     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  update_datetime     TIMESTAMP,
  CONSTRAINT fk_sub_category FOREIGN KEY (sub_category_id)
    REFERENCES finance.sub_category(id)
    ON DELETE SET NULL
);
