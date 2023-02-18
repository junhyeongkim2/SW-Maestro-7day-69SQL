select ao.ANIMAL_ID, ao.NAME
from animal_outs ao left join animal_ins ai using(animal_id)
where ai.ANIMAL_ID is null;