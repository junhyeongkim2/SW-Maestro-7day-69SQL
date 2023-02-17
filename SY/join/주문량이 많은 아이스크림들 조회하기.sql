with fh as (
    select flavor, sum(total_order) as sumord
    from first_half
    group by flavor
),j as (
    select flavor, sum(total_order) as sumord
    from july
    group by flavor
)

select flavor
from j left join fh using(flavor)
order by j.sumord+fh.sumord desc limit 3