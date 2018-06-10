CREATE DATABASE IF NOT EXISTS sample;

USE sample;

DROP TABLE IF EXISTS test;
DROP TABLE IF EXISTS numbers;

CREATE TABLE test(
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  user_data VARCHAR(255),
  email TEXT,
  dataset JSON,
  PRIMARY KEY(id)
);

CREATE TABLE numbers(
  id INT(5) NOT NULL AUTO_INCREMENT,
  value INT(5) NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);

INSERT INTO numbers(value)
  VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO test(user_data, email, dataset)
  SELECT
    CONCAT('USER', @rownum := @rownum + 1),
    CONCAT('USER', @rownum, '@example.com'),
    JSON_OBJECT(CONCAT('USER', @rownum), 'hoge')
  FROM
    numbers AS n1,
    numbers AS n2,
    numbers AS n3,
    numbers AS n4,
    (SELECT @rownum := 0) AS v

/*
CSVからデータを入れる
LOAD DATA LOCAL INFILE '/tmp/test_data.csv' INTO TABLE test FIELDS TERMINATED BY ',';
*/
