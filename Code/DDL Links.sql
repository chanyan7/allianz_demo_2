
--Links represent relationships between business entities, 
--such as sales transactions involving customers and products.

DROP TABLE customer_product_sales_link;

CREATE TABLE IF NOT EXISTS sales_link (
    sales_link_key INT PRIMARY KEY,
    customer_key INT,
    product_key INT,
    FOREIGN KEY (customer_key) REFERENCES customer_hub(customer_key),
    FOREIGN KEY (product_key) REFERENCES product_hub(product_key)
);
