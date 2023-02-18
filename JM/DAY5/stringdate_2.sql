-- 루시와 엘라 찾기
SELECT ANIMAL_ID,NAME,SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy','ella','pickle','rogan','sabrina','mitty')
order by animal_id