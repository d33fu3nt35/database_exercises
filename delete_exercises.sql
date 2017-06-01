USE codeup_test_db;

SELECT 'Albums released after 1991' as '';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre ''disco''' as '';
SELECT * FROM albums WHERE genre LIKE '%Disco%';
DELETE FROM albums WHERE genre LIKE '%Disco%';

SELECT 'Albums by ''Whitney Houston'' (...or maybe an artist of your choice)' as '';
SELECT * FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';