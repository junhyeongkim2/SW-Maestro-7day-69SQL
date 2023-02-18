with dailyfee as (
    select cc.car_id, cc.car_type, cc.daily_fee*30 as dfee
    from CAR_RENTAL_COMPANY_CAR cc, CAR_RENTAL_COMPANY_DISCOUNT_PLAN cp
    where cc.car_type in ('SUV','세단')
    and cc.car_id not in (
        select car_id from CAR_RENTAL_COMPANY_RENTAL_HISTORY
        where END_DATE >= '2022-11-01'
        and START_DATE < '2022-12-01'
    )
    group by cc.car_id
), discount as (
    select discount_rate as dr, car_type from CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    where duration_type='30일 이상'
    and car_type in ('SUV','세단')
    group by car_type
),finalfee as (
    select df.car_id, df.car_type, round(df.dfee-(df.dfee*(dis.dr/100)),0) as fee
    from dailyfee df left join discount dis using(car_type)
)
select *
from finalfee
where fee>=500000
and fee<2000000
order by fee desc, car_type, car_id desc;