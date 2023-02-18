select order_id, product_id, date_format(out_date,'%Y-%m-%d') as out_date,
case
    when date_format(out_date,'%Y-%m-%d')<='2022-05-01'
    then '출고완료'
    when date_format(out_date,'%Y-%m-%d')>'2022-05-01'
    then '출고대기'
    else '출고미정'
end as 출고여부
from food_order
order by order_id;