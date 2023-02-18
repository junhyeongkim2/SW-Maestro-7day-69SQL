with tc1 as(
    select os.ONLINE_SALE_ID, ui.user_id, os.sales_date
    from online_sale os left join user_info ui using(user_id)
    where year(ui.joined)=2021
), usercnt as(
    select count(user_id) as alluser from user_info where year(joined)=2021
)

select year(tc1.sales_date) as year, month(tc1.sales_date) as month, count(distinct tc1.user_id) as PUCHASED_USERS, round((count(distinct tc1.user_id)/usercnt.alluser),1) as PUCHASED_RATIO
from tc1,usercnt
group by year,month
order by year,month;
