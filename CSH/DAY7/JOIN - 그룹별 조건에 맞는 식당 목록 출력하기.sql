SELECT mp.MEMBER_NAME, rr.REVIEW_TEXT, DATE_FORMAT(rr.REVIEW_DATE, "%Y-%m-%d") as REVIEW_DATE
FROM MEMBER_PROFILE as mp
         JOIN REST_REVIEW as rr
              ON mp.MEMBER_ID=rr.MEMBER_ID
WHERE mp.MEMBER_ID in (
    SELECT mp.MEMBER_ID
    FROM MEMBER_PROFILE as mp
             JOIN REST_REVIEW as rr
                  ON mp.MEMBER_ID=rr.MEMBER_ID
    GROUP BY mp.MEMBER_ID
    HAVING count(*)=(
        SELECT count(*) as REVIEW_COUNT
        FROM MEMBER_PROFILE as mp
                 JOIN REST_REVIEW as rr
                      ON mp.MEMBER_ID=rr.MEMBER_ID
        GROUP BY mp.MEMBER_ID
        ORDER BY count(*) DESC
    LIMIT 1
    ))
ORDER BY REVIEW_DATE, rr.REVIEW_TEXT;



