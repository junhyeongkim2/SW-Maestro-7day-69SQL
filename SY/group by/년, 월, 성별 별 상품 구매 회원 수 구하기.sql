select year(os.sales_date) as year, month(os.sales_date) as month, ui.gender, count(distinct user_id) as users
from online_sale os left join user_info ui using(user_id)
where ui.gender is not null
group by year, month, gender
order by year, month, gender;