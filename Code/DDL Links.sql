
--Links represent relationships between business entities, 
--such as sales transactions involving customers and products.

--DROP TABLE customer_product_link

CREATE TABLE IF NOT EXISTS customer_product_link (
    customer_key INT,
    product_key INT,
    sales_key INT,
    FOREIGN KEY (customer_key) REFERENCES customer_hub(customer_key),
    FOREIGN KEY (product_key) REFERENCES product_hub(product_key),
    FOREIGN KEY (sales_key) REFERENCES sales_hub(sales_key)
);
