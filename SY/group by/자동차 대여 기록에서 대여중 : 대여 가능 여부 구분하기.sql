select car_id, if(max(end_date)>='2022-10-16','대여중','대여 가능') as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where start_date<='2022-10-16'
group by car_id
order by car_id desc;