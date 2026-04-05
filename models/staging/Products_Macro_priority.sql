select 
id,
product_name,
price,
{{ high_value_flag('price')}} as priority
from 
{{ source('shared','stg_products')}}