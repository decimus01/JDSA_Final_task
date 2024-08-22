CREATE TABLE first_time_reader (
  my_date DATE,
  my_time TIME,
  event_types TEXT,
  country TEXT,
  user_id BIGINT,
  source TEXT,
  topic TEXT);
------------------------------
CREATE TABLE returning_reader(
  my_date DATE,
  my_time TIME,
  event_types TEXT,
  country TEXT,
  user_id BIGINT,
  topic TEXT);
------------------------------  
CREATE TABLE subscriber(
  my_date DATE,
  my_time TIME,
  event_types TEXT,
  user_id BIGINT);
------------------------------
CREATE TABLE purchase (
  my_date DATE,
  my_time TIME,
  event_types TEXT,
  user_id BIGINT,
  price INT);
------------------------------
COPY first_time_reader FROM '/home/hunor/Final_task/data/read_first_visit.csv' WITH CSV HEADER DELIMITER';';
COPY returning_reader FROM '/home/hunor/Final_task/data/read_return.csv' WITH CSV HEADER DELIMITER';';
COPY subscriber FROM '/home/hunor/Final_task/data/subscribe.csv' WITH CSV HEADER DELIMITER';';
COPY purchase FROM '/home/hunor/Final_task/data/buy.csv' WITH CSV HEADER DELIMITER';';
------------------------------
SELECT * FROM first_time_reader LIMIT 10;
SELECT * FROM returning_reader LIMIT 10;
SELECT * FROM subscriber LIMIT 10;
SELECT * FROM purchase LIMIT 10;
------------------------------
