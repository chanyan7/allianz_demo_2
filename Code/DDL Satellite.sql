
drop table customer_satellite;
CREATE TABLE IF NOT EXISTS customer_satellite (
    customer_key INT,
    customer_diff INT PRIMARY key,
    customer_name VARCHAR(50),
    birth_date DATE,
    phone_number varchar(30),
    load_date TIMESTAMP NOT NULL,
    source varchar(50),
    FOREIGN KEY (customer_key) REFERENCES customer_hub(customer_key)
);

drop table product_satellite;
CREATE TABLE IF NOT EXISTS product_satellite (
    product_key INT,
    product_diff INT PRIMARY key,
    product_category VARCHAR(50),
    product_description varchar(100),
    load_date TIMESTAMP NOT NULL,
    source varchar,
    FOREIGN KEY (product_key) REFERENCES product_hub(product_key)
);

