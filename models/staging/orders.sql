{{ config(materialized='table')}}
with tb1 as(
    select id,user_id,order_date from {{source('shared','stg_orders')}}
)
select * from tb1