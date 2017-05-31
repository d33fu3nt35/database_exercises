-- Tables Lesson --

USE codeup_test_db;

DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS airports;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS users;

CREATE TABLE quotes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  author_first_name VARCHAR(50),
  author_last_name  VARCHAR(100) NOT NULL,
  content           TEXT         NOT NULL,
  created_at        DATETIME,
  updated_at        DATETIME
);

CREATE TABLE airports (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  airport_code CHAR(3),
  location     VARCHAR(255),
  description  TEXT
);

CREATE TABLE people (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  name   VARCHAR(255) NOT NULL,
  age    INT          NOT NULL,
  salary DOUBLE
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  username VARCHAR(255),
  password VARCHAR(255),
  is_admin TINYINT NOT NULL
);

