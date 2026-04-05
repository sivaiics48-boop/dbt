{{ config(
    materialized = 'incremental',
    incremental_strategy = 'append'
) }}

select * 
from {{ source('shared','stg_orders') }}

{% if is_incremental() %}
where order_date > (
    select max(order_date) from {{ this }}
)
{% endif %}