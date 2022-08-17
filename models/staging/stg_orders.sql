select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderProfit,
o.ordercostprice,
o.ordersellingprice,
c.customerid, c.segment, c.country,
p.category,p.productname,p.subcategory,p.productid
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid=c.customerid
left join {{ ref('raw_product') }} as p
on o.productid=p.productid