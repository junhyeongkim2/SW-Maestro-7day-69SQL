-- 코드를 입력하세요
SELECT B.ANIMAL_ID, B.NAME
FROM ANIMAL_OUTS AS B
WHERE B.ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_INS)
ORDER BY ANIMAL_ID