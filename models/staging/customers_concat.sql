select 
id,
{{ concat_macro('FIRST_NAME','LAST_NAME')}} as full_name
from 
{{ source('shared','stg_customers')}}