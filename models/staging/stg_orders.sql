select 
o.orderid ,
o.orderdate,
o.shipdate,
o.shipmode, 
o.ordersellingprice - o.ordercostprice as orderprofit ,
---from raw customer
c.customername,
c.segment,
c,country
--- raw product
p.category,
p.productname,
p.subcategory
from 
{{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
left join {{ ref('raw_product') }} as p