kurut_taxi=# CREATE TABLE cars (
kurut_taxi(# id bigint PRIMARY KEY,
kurut_taxi(# brand varchar(225),
kurut_taxi(# model varchar(225),
kurut_taxi(# fuel_type varchar(225),
kurut_taxi(# en_vol bigint,
kurut_taxi(# korobka varchar(225),
kurut_taxi(# year date,
kurut_taxi(# color varchar(225));
CREATE TABLE
kurut_taxi=# CREATE TABLE drivers ( 
id bigint PRIMARY KEY,
name varchar(225),
surname varchar(225),
birthday date,
drive_exp bigint,
id_car bigint REFERENCES cars (id));
CREATE TABLE
kurut_taxi=# CREATE TABLE operators (
kurut_taxi(# name varchar(225),
kurut_taxi(# surname varchar(225),
kurut_taxi(# birthday date,
kurut_taxi(# gender varchar(225));
CREATE TABLE
kurut_taxi=# INSERT INTO cars (id, brand, model, fuel_type, en_vol, korobka, year, color) VALUES (1, 'TESLA', 'MODEL X', 'ELECT.', 1000, 'AUTO', '2020-12-12', 'GREY'),(2, 'TOYOTA', 'CAMRY', 'PETR.', 1000, 'AUTO', '2004-07-25', 'GREY'), (3, 'TESLA', 'MODEL Z', 'PETR.', 1000, 'AUTO', '2017-01-13', 'GREEN'),(4, 'TOYOTA', 'RANGE ROVER', 'PETR.', 1200, 'AUTO', '2017-08-26', 'RED'), (5, 'BMK', 'SUB_0-32', 'ELECT.', 10000, 'HAND', '2045-10-10','WHITE'), (6, 'TESLA', 'MODEL W', 'ELECT.', 1000, 'AUTO', '2010-10-10', 'GREY'),(7, 'TOYOTA', 'CAMRY-32', 'PETR.', 1000, 'AUTO', '2004-04-26', 'GREY'), (8, 'TESLA', 'MODEL E', 'PETR.', 10000, 'AUTO', '2017-11-11', 'GREEN'),(9, 'TOYOTA', 'RANGE', 'PETR.', 1200, 'AUTO', '2012-12-29', 'RED'), (10, 'BMK', 'SUB_0-45', 'ELECT.', 1000, 'AUTO', '2015-07-25','WHITE');  
INSERT 0 10
kurut_taxi=# INSERT INTO drivers (id, name, surname, birthday, drive_exp, id_car) VALUES (1, 'Shaun', 'George', '2004-11-05', 12, 1), (2, 'Shees', 'Gee', '2005-12-15', 2, 2),(3, 'Han', 'Jorge', '2005-11-15', 21, 3), (4, 'Shiza', 'Gezee', '2007-12-25', 16, 4),(5, 'Jonathan', 'Joestar', '1886-01-17', 1, 5), (6, 'Ceaser', 'Zeppely', '2000-12-25', 16, 6), (7, 'Agahan', 'Corge', '2005-12-11', 22, 7), (8, 'Shinzou', 'Gera', '2007-02-24', 16, 8),(9, 'Jonh', 'Joestar', '1999-02-12', 2, 9), (10, 'Ceer', 'Zely', '1212-12-12', 96, 10);
INSERT 0 10
kurut_taxi=# INSERT INTO operators (name, surname, birthday, gender) VALUES ('Vika', 'Solovyeva', '2000-09-13', 'female'), ('Viktoria', 'Sokolova', '1999-08-12', 'female'), ('Vika', 'Solovyeva', '2000-09-13', 'female'), ('Viktor', 'Sokolov', '1998-07-11', 'male'),('Vitalyi', 'Solovyev', '2000-10-11', 'male'), ('Violeta', 'Smolova', '1997-12-12', 'female'), ('Vina', 'Sol', '2000-09-03', 'female'), ('Viola', 'Sova', '1999-11-18', 'female'), ('Clara', 'Solovey', '2000-09-14', 'female'), ('Borsch', 'Volkova', '1998-07-11', 'female');
kurut_taxi=# SELECT *  FROM cars WHERE brand = 'TOYOTA' AND model = 'CAMRY' ORDER BY year DESC;
kurut_taxi=# SELECT * FROM operators ORDER BY name DESC LIMIT 10;
kurut_taxi=# UPDATE cars SET brand = 'MBK' WHERE brand = 'BMK';
kurut_taxi=# SELECT * FROM cars WHERE brand = 'MBK';
kurut_taxi=# DELETE FROM drivers WHERE name = 'Han' AND surname = 'Jorge';
kurut_taxi=# SELECT * FROM drivers WHERE name = 'Han';
kurut_taxi=# SELECT * FROM drivers WHERE drive_exp > 10;
kurut_taxi=# SELECT AVG(drive_exp) FROM drivers WHERE birthday > '2000-12-12'; 
