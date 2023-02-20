WITH TRUCK AS (
    SELECT A.HISTORY_ID AS HISTORY_ID, 
    A.CAR_ID, 
    B.CAR_TYPE,
    B.DAILY_FEE, 
    DATEDIFF(END_DATE, START_DATE) + 1 AS DAYDIFF
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS A
    LEFT JOIN CAR_RENTAL_COMPANY_CAR B 
    ON A.CAR_ID = B.CAR_ID    
)


SELECT HISTORY_ID
    , ROUND(CASE WHEN daydiff < 7 THEN daily_fee*daydiff
                 WHEN daydiff < 30 THEN (daily_fee-(daily_fee*0.05))*daydiff
                 WHEN daydiff < 90 THEN (daily_fee-(daily_fee*0.08))*daydiff 
                 ELSE (daily_fee-(daily_fee*0.15))*daydiff END,0)  AS FEE 
FROM truck
WHERE car_type ='트럭'
ORDER BY FEE DESC , HISTORY_ID DESC