SELECT R.FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO R, 
(
    SELECT FOOD_TYPE, MAX(FAVORITES) AS MFAVORITES
    FROM REST_INFO
    GROUP BY FOOD_TYPE
) AS M
WHERE R.FOOD_TYPE = M.FOOD_TYPE AND R.FAVORITES = M.MFAVORITES
GROUP BY 1
ORDER BY 1 DESC