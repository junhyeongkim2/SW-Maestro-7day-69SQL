WITH RENT_INFO AS(
    SELECT cr.HISTORY_ID as HISTORY_ID, DATEDIFF(cr.END_DATE, cr.START_DATE) + 1 as RENT_DAY, cc.DAILY_FEE as DAILY_FEE, (
        CASE
            WHEN DATEDIFF(cr.END_DATE, cr.START_DATE) + 1 >= 90
                THEN "90일 이상"
            WHEN DATEDIFF(cr.END_DATE, cr.START_DATE) + 1 >= 30
                THEN "30일 이상"
            WHEN DATEDIFF(cr.END_DATE, cr.START_DATE) + 1 >= 7
                THEN "7일 이상"
            ELSE ""
            END) as DURATION_TYPE
    FROM CAR_RENTAL_COMPANY_CAR as cc
             JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY as cr
                  ON cc.CAR_ID=cr.CAR_ID
    WHERE cc.CAR_TYPE="트럭"
)

SELECT ri.HISTORY_ID as HISTORY_ID, ROUND(ri.RENT_DAY * ri.DAILY_FEE * (100 - IFNULL(ri.DURATION_TYPE, 0)) / 100) as FEE
FROM RENT_INFO as ri
         LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN as cp
                   ON cp.CAR_TYPE="트럭" AND cp.DURATION_TYPE=ri.DURATION_TYPE
ORDER BY FEE DESC, HISTORY_ID DESC;