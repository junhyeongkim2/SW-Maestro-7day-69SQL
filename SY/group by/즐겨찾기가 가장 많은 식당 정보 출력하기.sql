select food_type, rest_id, rest_name, favorites
from rest_info
where favorites in (
    select max(favorites)
    from rest_info
    group by food_type
)
group by food_type
order by food_type desc;