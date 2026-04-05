{% snapshot customer_snapshot %}
{{config(
            target_schema= 'snapshots',
            unique_key= 'id',
            strategy= 'timestamp',
            updated_at ='updated_at'
)}}
select * from {{source('shared','stg_customers_snap')}}
{% endsnapshot %}