select b.BOOK_ID, a.AUTHOR_NAME, date_format(b.PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATe
from book b left join author a using(author_id)
where b.category='경제'
order by b.published_date;