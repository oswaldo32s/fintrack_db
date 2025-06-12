CREATE TABLE finance.sub_category
(
  id                NUMBER(6) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name              VARCHAR2(20)        NOT NULL,
  description       VARCHAR2(100),      --NULL
  category_id       NUMBER(6),          --NULL          
  create_datetime   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,      
  update_datetime   TIMESTAMP,          --NULL
  CONSTRAINT fk_category FOREIGN KEY (category_id)
    REFERENCES finance.category(id)
    ON DELETE SET NULL
);
