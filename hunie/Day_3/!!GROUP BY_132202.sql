SELECT MCDP_CD 진료과코드,COUNT(APNT_YMD) 5월예약건수 
FROM APPOINTMENT 
WHERE MONTH(APNT_YMD) = '5'
GROUP BY MCDP_CD
ORDER BY COUNT(MCDP_CD) ASC, MCDP_CD ASC;