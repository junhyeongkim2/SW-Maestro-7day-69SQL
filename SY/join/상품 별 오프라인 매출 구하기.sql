select p.PRODUCT_CODE, sum(os.sales_amount*p.price) as sales
from offline_sale os left join product p using(product_id)
group by p.product_code
order by sales desc, p.product_code;