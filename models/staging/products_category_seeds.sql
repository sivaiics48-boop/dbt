select 
p.id,
p.product_name,
c.category_name,
c.discount_percent
from {{ source('shared','stg_products') }} p 
left join {{ ref('products_category') }} c
on p.id = c.id