--Creation of HUBs of Data vault for sales

--Custormer HUB
CREATE TABLE IF NOT EXISTS customer_hub (
    customer_key INT PRIMARY KEY,
    customer_ID VARCHAR(50) NOT NULL,
    customer_name VARCHAR(100)
);

--Product HUB
CREATE TABLE IF NOT EXISTS product_hub (
    product_key INT PRIMARY KEY,
    product_ID VARCHAR(50) NOT NULL,
    product_name VARCHAR(100)

);

--Sales HUB
CREATE TABLE IF NOT EXISTS sales_hub (
    sales_key INT PRIMARY KEY,
    sales_ID VARCHAR(50) NOT NULL,
    sales_date DATE
);
