SELECT ROUND(AVG(daily_fee),0) AS average_fee
       FROM car_rental_company_car
       WHERE car_type = 'SUV';
