--FUNNEL ALL
SELECT first_readers.my_date,
       first_readers.country,
       first_readers.source,
       first_readers.first_readers,
       return_readers.return_readers,
       subscriber.subscriber,
       purchase.purchase
FROM
--FUNNEL #1 - FIRST READER
  (SELECT my_date,
         country,
         source,
         COUNT(DISTINCT (user_id)) AS first_readers
  FROM first_time_reader
  GROUP BY my_date,
           country,
           source
  ORDER BY my_date) AS first_readers
LEFT JOIN
--FUNNEL #2 - RETURN READER
  (SELECT first_time_reader.my_date,
          first_time_reader.country,
          first_time_reader.source,
          COUNT(DISTINCT (returning_reader.user_id)) AS return_readers
  FROM returning_reader
    JOIN first_time_reader ON first_time_reader.user_id = returning_reader.user_id
  GROUP BY first_time_reader.my_date,
           first_time_reader.country,
           first_time_reader.source
  ORDER BY first_time_reader.my_date,
           first_time_reader.country,
           first_time_reader.source) AS return_readers
ON return_readers.my_date = first_readers.my_date
   AND return_readers.country = first_readers.country
   AND return_readers.source = first_readers.source
LEFT JOIN
--FUNNEL #3 - SUBSCRIBER
  (SELECT subscriber.my_date,
         first_time_reader.country,
         first_time_reader.source,
         COUNT(DISTINCT subscriber.user_id) AS subscriber
  FROM subscriber
    JOIN first_time_reader ON first_time_reader.user_id = subscriber.user_id
  GROUP BY subscriber.my_date,
           first_time_reader.country,
           first_time_reader.source
  ORDER BY subscriber.my_date,
           first_time_reader.country,
           first_time_reader.source) AS subscriber
ON subscriber.my_date = first_readers.my_date
   AND subscriber.country = first_readers.country
   AND subscriber.source = first_readers.source
LEFT JOIN
--FUNNEL #4 - PURCHASE
  (SELECT purchase.my_date,
         first_time_reader.country,
         first_time_reader.source,
         COUNT(DISTINCT purchase.user_id) AS purchase
  FROM purchase
    JOIN first_time_reader ON first_time_reader.user_id = purchase.user_id
  GROUP BY purchase.my_date,
           first_time_reader.country,
           first_time_reader.source
  ORDER BY purchase.my_date,
           first_time_reader.country,
           first_time_reader.source) AS purchase
ON purchase.my_date = first_readers.my_date
   AND purchase.country = first_readers.country
   AND purchase.source = first_readers.source;
