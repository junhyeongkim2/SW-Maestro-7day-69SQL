select ao.ANIMAL_ID, ao.name
from animal_outs ao left join animal_ins ai using(animal_id)
where ao.datetime<ai.datetime
order by ai.datetime;
