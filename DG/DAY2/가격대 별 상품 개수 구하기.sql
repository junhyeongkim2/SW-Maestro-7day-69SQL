SELECT IF(PRICE<10000, 0, FLOOR(PRICE/10000)*10000) as PRICE_GROUP, COUNT(PRODUCT_ID) as PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP