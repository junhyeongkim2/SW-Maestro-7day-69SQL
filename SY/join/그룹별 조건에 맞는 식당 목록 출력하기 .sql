with top as (
    select member_id from rest_review
    group by member_id
    order by count(*) desc limit 1
)

select mp.MEMBER_NAME, rr.REVIEW_TEXT, date_format(rr.REVIEW_DATE,'%Y-%m-%d') as review_date
from rest_review as rr left join member_profile mp using(member_id), top
where rr.member_id=top.member_id
order by review_date, review_text;