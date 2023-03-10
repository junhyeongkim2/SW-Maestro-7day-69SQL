SELECT bi.CATEGORY as CATEGORY, sum(bs.SALES) as TOTAL_SALES
FROM BOOK as bi
         JOIN BOOK_SALES as bs
              on bi.BOOK_ID=bs.BOOK_ID
WHERE DATE_FORMAT(bs.SALES_DATE, "%Y-%m")="2022-01"
GROUP BY CATEGORY
ORDER BY CATEGORY;