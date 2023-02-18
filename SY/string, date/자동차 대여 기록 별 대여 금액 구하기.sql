with tc1 as (
    select ch.history_id, cc.car_type, datediff(date_format(ch.end_date,'%Y-%m-%d'),date_format(ch.start_date,'%Y-%m-%d'))+1 as rent_day, cc.daily_fee
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY ch
    left join CAR_RENTAL_COMPANY_CAR cc using(car_id)
    where cc.car_type='트럭'
), tc2 as (
    select duration_type, discount_rate from CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    where car_type='트럭'
), tc3 as (
    select tc1.history_id, tc1.rent_day*tc1.daily_fee as fee,
    case
        when tc1.rent_day>=90
        then (
            select discount_rate from tc2
            where duration_type like '90%'
        )
        when tc1.rent_day>=30
        then (
            select discount_rate from tc2
            where duration_type like '30%'
        )
        when tc1.rent_day>=7
        then (
            select discount_rate from tc2
            where duration_type like '7%'
        )
        else 0
    end as discount_rate
    from tc1, tc2
)
select distinct history_id, round(fee-(fee*(discount_rate/100)),0) as fee
from tc3
order by fee desc, history_id desc;