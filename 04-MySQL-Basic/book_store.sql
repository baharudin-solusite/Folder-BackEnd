-- SHOW database untuk melihat list database yang ada pada mysql
show DATABASES;
-- CREATE database bernama bookstore
create database bookstore;
-- USE database bookstore
use bookstore;
-- SHOW seluruh table yang ada pada database bookstore
show tables;
-- Buatlah table bernama books dengan attribute/column yang berisi
create table books (
	id int auto_increment PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
	author2 VARCHAR(100),
   author3 VARCHAR(100),
    title VARCHAR(100),
    description VARCHAR(256),
    place_sell CHAR(3),
    stock INT DEFAULT 0,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL
);
-- Pada suatu waktu, kamu harus mengupdate column dari table books yang sudah ada. Berikut update yang harus dilakukan:
SELECT * FROM books;
ALTER TABLE books
	ADD price INT DEFAULT 0,
	ADD `status` ENUM('available', 'out of stock', 'limited'),
	DROP place_sell;

-- INSERT 3 data untuk semua column yang ada pada table books
SELECT * FROM books;
INSERT INTO books(author1, author2, author3, title, description, stock, creation_date, price, status)
    values  ('Baharudin','Julio','Oky','Solusite','3 Teman Gabut',5,'2021-08-01  ',30000,'limited'),
            ('Krisna','Arjuna','Yudistira','Mahabarata','Kisah pandawa 5',100,'2020-12-12  ',40000,'limited'),
            ('Ashadi','Abrian','Arrie','Perjalanan Progremer','Buku ini berisi tutorial mengoding',50,'2013-9-3',19000,'limited');
-- SELECT semua row pada table books
SELECT * FROM books;
-- SELECT menggunakan ALIAS. Column id digantikan ID, author1 digantikan A1, author2 digantikan A2, author3 digantikan A3.
SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3
FROM books;

-- SELECT data menggunakan WHERE untuk id tertentu
-- id 1
SELECT * FROM books WHERE ID = 1;
-- id 2
SELECT * FROM books WHERE ID = 2;
-- id 3
SELECT * FROM books WHERE ID = 3;

-- SELECT data menggunakan WHERE untuk dengan operator logical AND
SELECT * FROM books WHERE ID = 1 AND A1 = 'Baharudin' ;

-- SELECT data menggunakan WHERE untuk dengan operator logical OR
SELECT * FROM books WHERE ID = 1 OR A2 = 'Julio';

-- SELECT data menggunakan WHERE untuk dengan operator logical NOT
SELECT * FROM books WHERE NOT ID = 1; 
-- SELECT seluruh column dari table bookstore dan diurutkan secara ASC berdasarkan id
SELECT * FROM books ORDER BY ID ASC;

-- SELECT seluruh column dan berikan LIMIT untuk 2 row saja
SELECT * FROM books
    LIMIT 2;

-- Pilih 1 row untuk dilakukan UPDATE pada column author1 dan price.
UPDATE books
    SET A1 = 'Fahrul', price = 25000
    WHERE ID = 1;

-- Pilih 1 row untuk dilakukan DELETE
DELETE FROM books
    WHERE ID = 1;