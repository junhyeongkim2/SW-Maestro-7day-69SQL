SELECT ao.ANIMAL_ID, ao.NAME
FROM ANIMAL_INS as ai
         JOIN ANIMAL_OUTS as ao
              ON ai.ANIMAL_ID=ao.ANIMAL_ID
ORDER BY DATEDIFF(ao.DATETIME, ai.DATETIME) DESC
LIMIT 2;