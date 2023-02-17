select b.CATEGORY, sum(sales) as TOTAL_SALES
from book_sales bs left join book b using(book_id)
where month(bs.SALES_DATE)=1
group by b.CATEGORY
order by b.CATEGORY;