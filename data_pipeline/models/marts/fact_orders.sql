select
    o.*,
    i.gross_item_sales_amount,
    i.item_discount_amount
from
    {{ ref('stg_tpch_orders') }} as o
inner join
    {{ ref('int_order_items_summary') }} as i
    on
        o.order_key = i.order_key
order by order_date