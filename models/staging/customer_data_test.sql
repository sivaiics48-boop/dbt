{{ config(materialized='table')}}
select id,first_name,last_name from {{ source('shared1','stg_customerdata_test')}}