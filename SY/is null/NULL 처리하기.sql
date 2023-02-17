select ANIMAL_TYPE,
case
    when name is null
    then 'No name'
    else name
    end as name
, SEX_UPON_INTAKE from animal_ins;