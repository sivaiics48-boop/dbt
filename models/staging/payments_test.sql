{{ config(materialized='table')}}
select * from {{ source('shared1','stg_payments_test')}}