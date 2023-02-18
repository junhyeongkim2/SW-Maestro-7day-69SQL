with o as (
    select PRODUCT_ID, sum(amount) as amount from food_order
    where year(PRODUCE_DATE)=2022 and month(produce_date)=5
    group by product_id
)

select fp.PRODUCT_ID, fp.PRODUCT_NAME, fp.price*o.amount as total
from o left join food_product fp using(product_id)
order by total desc, fp.product_id;