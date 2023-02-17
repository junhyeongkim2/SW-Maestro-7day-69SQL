SELECT CAR_ID
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = '세단' AND CAR_ID IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    WHERE MONTH(START_DATE) = 10
)
GROUP BY 1
ORDER BY 1 DESC