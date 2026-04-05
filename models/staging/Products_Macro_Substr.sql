select 
id,
{{ substring_macro('product_name',3)}} as Extract_characters
from {{source('shared','stg_products')}}