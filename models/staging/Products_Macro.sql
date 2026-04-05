select 
id,
product_name,
price,
discount,
 {{ calculate_discount_price('price','discount')}} as discounted_price
 from 
 {{ source('shared','stg_products')}}