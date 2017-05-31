USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id           INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist       VARCHAR(50)  NOT NULL,
  name         VARCHAR(50)  NOT NULL,
  release_date YEAR,
  sales        FLOAT,
  genre        VARCHAR(15)  NOT NULL
);