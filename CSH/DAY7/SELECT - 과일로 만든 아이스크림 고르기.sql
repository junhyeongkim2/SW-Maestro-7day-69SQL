SELECT ff.FLAVOR as FLAVOR
FROM FIRST_HALF as ff
         JOIN ICECREAM_INFO as ii
              ON ff.FLAVOR=ii.FLAVOR
WHERE ff.TOTAL_ORDER > 3000 AND ii.INGREDIENT_TYPE="fruit_based"
ORDER BY ff.TOTAL_ORDER DESC;