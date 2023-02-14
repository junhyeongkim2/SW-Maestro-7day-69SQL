select FH.flavor from FIRST_HALF FH, ICECREAM_INFO IC
where FH.flavor=IC.flavor
and FH.TOTAL_ORDER>3000
and IC.INGREDIENT_TYPE='fruit_based'
order by FH.TOTAL_ORDER desc;