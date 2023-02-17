select animal_type, count(*) as COUNT from animal_ins
group by animal_type
order by animal_type;