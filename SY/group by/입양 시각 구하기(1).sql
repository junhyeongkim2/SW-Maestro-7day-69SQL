SELECT hour(DATETIME) as HOUR, count(*) as COUNT from ANIMAL_OUTS
where 8<hour(DATETIME) and hour(DATETIME)<20
group by HOUR
order by HOUR;