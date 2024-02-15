
drop table customer_satellite;
CREATE TABLE IF NOT EXISTS customer_satellite (
    customer_key INT,
    customer_name VARCHAR(50),
    birth_date DATE,
    phone_number varchar(30),
    cretion_date TIMESTAMP NOT NULL,
    delete_date TIMESTAMP NOT NULL,
    FOREIGN KEY (customer_key) REFERENCES customer_hub(customer_key)
);

CREATE TABLE IF NOT EXISTS product_satellite (
    product_key INT,
    product_category VARCHAR(50),
    product_description varchar(100),
    cretion_date TIMESTAMP NOT NULL,
    delete_date TIMESTAMP NOT NULL,
    FOREIGN KEY (product_key) REFERENCES product_hub(product_key)
);

CREATE TABLE IF NOT EXISTS sales_satellite (
    sales_key INT,
    sales_amount DECIMAL(18, 2) NOT NULL,
    discount DECIMAL(18,2),
    creation_date TIMESTAMP NOT NULL,
    FOREIGN KEY (sales_key) REFERENCES sales_hub(sales_key)
);
