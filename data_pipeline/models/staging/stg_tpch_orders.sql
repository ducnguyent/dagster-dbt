select
    o_orderkey as order_key,
    o_custkey as customer_key,
    o_orderdate as order_date,
    o_orderstatus as status_code
from
    {{ source('tpch', 'orders') }}