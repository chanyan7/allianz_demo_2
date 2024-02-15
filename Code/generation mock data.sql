
--create sales table
create table sales.t_sales_raw as
select  transaction_id, 
        concat(left(customer_id,1),concat(left(product_id::varchar,3),left(customer_id,1))) ::int as customer_id, 
        product_id, 
        quantity*3.13 :: decimal as sales_amout, 
        sale_date
	FROM sales.t_sales 
	order by transaction_id asc 
	limit 1000;


--Create products table
create table sales.t_product_raw as
select   product_id, 
         concat(left(customer_id,3),' category')as product_category, concat((customer_id,3), 'description') as product_description,  
         (sale_date - interval '35 days') :: timestamp as creation_date,
         null ::timestamp as delete_date
	FROM sales.t_sales 
	order by transaction_id asc 
	limit 1007;


--creation customer table base on sales
create table sales.t_customer_raw as
select  concat(left(customer_id,1),concat(left(product_id::varchar,3),left(customer_id,1))) ::int as customer_id, 
        concat('name ', right(customer_id,4)) as customer_name,
		case when transaction_id%2=0 then (sale_date + interval '365 days')
		else null
		end as birth_date,
		case when transaction_id%2=0 then null
		else concat(transaction_id::varchar, product_id::varchar)
		end as phone_number,
        (sale_date - interval '66 days') :: timestamp as creation_date,
        null :: timestamp as delete_date
	FROM sales.t_sales 
	order by transaction_id asc 
	limit 1009;

