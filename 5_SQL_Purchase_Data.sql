SELECT first_time_reader.my_date,
       first_time_reader.country,
       first_time_reader.source,
       first_time_reader.topic,
       price,
       SUM(price) AS income
FROM purchase
  JOIN first_time_reader ON first_time_reader.user_id = purchase.user_id
  GROUP BY first_time_reader.my_date,
           first_time_reader.country,
           first_time_reader.source,
           first_time_reader.topic,
           price
  ORDER BY first_time_reader.my_date;
------------------------------

SELECT price, COUNT(*) FROM purchase GROUP BY price;
