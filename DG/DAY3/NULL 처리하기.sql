SELECT ANIMAL_TYPE, IFNULL(NAME, 'No name') as NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID