USE codeup_test_db;

SELECT 'All albums in your table.' as '';
SELECT name, sales FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT name, sales FROM albums;

SELECT 'All albums released before 1980' as '';
SELECT name, release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT name, release_date FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' as '';
SELECT  name, artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT  name, artist FROM albums WHERE artist = 'Peter Jackson';

