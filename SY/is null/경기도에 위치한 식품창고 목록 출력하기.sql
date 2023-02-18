select WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS,
case 
    when FREEZER_YN is null 
    then 'N'
    else FREEZER_YN
    end as FREEZER_YN
from FOOD_WAREHOUSE
where ADDRESS like '경기도%'
order by WAREHOUSE_ID;