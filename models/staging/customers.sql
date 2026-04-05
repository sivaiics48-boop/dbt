{{ config(materialized='table')}}
with tb1 as(
    select id,first_name,last_name from {{source('shared','stg_customers')}}
)
select * from tb1