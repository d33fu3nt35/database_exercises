USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' as '';
SELECT  artist, NAME FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as '';
SELECT release_date, name from albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' as '';
SELECT genre, name from albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' as '';
SELECT name, release_date FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT  'Which albums had less than 20 million certified sales' as '';
SELECT name, sales FROM albums where sales < 20;

SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?' as '';
SELECT name, genre FROM albums where genre like '%Rock%';