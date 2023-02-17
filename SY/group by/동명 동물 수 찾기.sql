select name, count(*) as COUNT from animal_ins
group by name
having COUNT>1 and name is not NULL
order by name;