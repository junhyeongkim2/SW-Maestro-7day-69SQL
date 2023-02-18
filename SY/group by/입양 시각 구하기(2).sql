with recursive hour as(
    select 0 as hour
    union all
    select hour+1 from hour
    where hour<23
)

select hour.hour, count(ao.animal_id) as count
from hour left join animal_outs ao on hour.hour=hour(ao.datetime)
group by hour.hour;
