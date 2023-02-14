SELECT date_format(SALES_DATE,"%Y-%m-%d") as SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT from ONLINE_SALE
where year(SALES_DATE)='2022' and month(SALES_DATE)='3'
union all
select date_format(SALES_DATE,"%Y-%m-%d") as SALES_DATE, PRODUCT_ID, NULL as USER_ID, SALES_AMOUNT from OFFLINE_SALE
where year(SALES_DATE)='2022' and month(SALES_DATE)='3'
order by SALES_DATE asc, PRODUCT_ID asc, USER_ID asc;