select
    order_id,
    sum(amount) as total_amount
from {{ ref('payments_test')}}
group by order_id
having total_amount < 0