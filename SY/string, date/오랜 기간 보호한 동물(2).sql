select ao.animal_id, ao.name
from animal_outs ao left join animal_ins ai using(animal_id)
order by ao.datetime-ai.datetime desc limit 2;