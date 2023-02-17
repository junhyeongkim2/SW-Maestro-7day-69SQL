select CATEGORY, PRICE as 'MAX_PRICE', PRODUCT_NAME from FOOD_PRODUCT
where price in (
    SELECT max(PRICE) from FOOD_PRODUCT
    group by category
)
and category in ('과자','국','김치','식용유')
order by price desc;