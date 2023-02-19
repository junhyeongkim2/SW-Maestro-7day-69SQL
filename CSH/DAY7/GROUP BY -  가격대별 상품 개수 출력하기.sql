SELECT (
           CASE
               WHEN PRICE < 10000
                   THEN 0
               ELSE (PRICE DIV 10000) * 10000
               END) as PRICE_GROUP, count(*) as PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;