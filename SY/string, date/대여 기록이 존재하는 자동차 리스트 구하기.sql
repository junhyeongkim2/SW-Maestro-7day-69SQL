select distinct cc.car_id
from CAR_RENTAL_COMPANY_RENTAL_HISTORY ch left join CAR_RENTAL_COMPANY_CAR cc using(car_id)
where cc.car_type='세단'
and month(ch.start_date)=10
order by car_id desc;