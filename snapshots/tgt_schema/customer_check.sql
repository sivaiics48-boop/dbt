{% snapshot customer_check_snapshot %}
{{config(
            target_schema= 'snapshots',
            unique_key= 'id',
            strategy= 'check',
            check_cols =['name','city'],
            invalidate_hard_deletes=True
)}}
select * from {{source('shared','stg_customers_snap')}}
{% endsnapshot %}