SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, "%Y-%m-%d") as OUT_DATE,
       CASE
           WHEN OUT_DATE is NULL
               THEN "출고미정"
           WHEN DATE_FORMAT(OUT_DATE, "%Y-%m-%d") <= "2022-05-01"
               THEN "출고완료"
           WHEN DATE_FORMAT(OUT_DATE, "%Y-%m-%d") > "2022-05-01"
               THEN "출고대기"
           END as "출고여부"
FROM FOOD_ORDER
ORDER BY ORDER_ID;