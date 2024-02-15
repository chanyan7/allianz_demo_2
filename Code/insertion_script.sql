--md5(upper(trim('business key')))

--insertion customer satellite

insert into customer_satellite (
    customer_key,
    customer_name,
    birth_date,
    phone_number,
    load_date,
 ) select 
   md5(upper(trim(customer_id)))

 from sales