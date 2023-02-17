select ao.ANIMAL_ID, ao.ANIMAL_TYPE, ao.name
from animal_ins ai left join animal_outs ao using(animal_id)
where ai.sex_upon_intake like 'Intact%'
and (ao.sex_upon_outcome like 'Spayed%'
     or ao.sex_upon_outcome like 'Neutered%')
order by ai.animal_id;