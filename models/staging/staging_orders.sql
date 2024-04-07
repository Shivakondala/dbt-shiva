select
o.orderid,o.orderdate,o.shipdate,o.shipmode,o.selling_price,o.COST_PRICE,o.SELLING_PRICE-o.COST_PRICE AS PROFIT,
c.customername,c.segment,c.country,c.customerid,
p.productname,p.category,p.subcategory,p.productid,
{{markup('selling_price','COST_PRICE')}} as markup
FROM {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_products') }} as p
on o.productid = p.productid


