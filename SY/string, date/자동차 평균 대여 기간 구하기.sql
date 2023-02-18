with total_avg as (
    select car_id, round(sum(datediff(date_format(end_date,'%Y-%m-%d'),date_format(start_date,'%Y-%m-%d'))+1)/count(history_id),1) as average_duration
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    group by car_id
)

select * from total_avg
where average_duration>=7
order by average_duration desc, car_id desc;
