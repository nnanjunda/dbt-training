select 
    productid,
    productname,
    category,
    subcategory,
    sum(orderprofit) as Profit
from {{ ref('stg_orders') }}
group by productid,
productname,
category,
subcategory
