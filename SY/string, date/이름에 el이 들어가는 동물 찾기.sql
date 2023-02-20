select animal_id, name
from animal_ins
where animal_type='dog'
and name like '%el%'
order by name;