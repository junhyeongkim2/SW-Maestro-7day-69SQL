SELECT count(USER_ID) as USERS from USER_INFO
where year(JOINED)='2021'
and 20<=AGE
and AGE<=29