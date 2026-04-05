{{ config(
            materialized = 'incremental',
            incremental_strategy = 'insert_overwrite',
            partition_by ={"field":"order_date","data_type":"date"}
)}}
select * 
from {{ source('shared','stg_orders') }}

{% if is_incremental() %}
where order_date > (
    select min(order_date) from {{ this }}
)
{% endif %}