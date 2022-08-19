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

-- INSERT 3 data untuk semua column yang ada pada table books

-- SELECT semua row pada table books

-- SELECT menggunakan ALIAS. Column id digantikan ID, author1 digantikan A1, author2 digantikan A2, author3 digantikan A3.

-- SELECT data menggunakan WHERE untuk id tertentu

-- SELECT data menggunakan WHERE untuk dengan operator logical AND

-- SELECT data menggunakan WHERE untuk dengan operator logical OR

-- SELECT data menggunakan WHERE untuk dengan operator logical NOT

-- SELECT seluruh column dari table bookstore dan diurutkan secara ASC berdasarkan id

-- SELECT seluruh column dan berikan LIMIT untuk 2 row saja

-- Pilih 1 row untuk dilakukan UPDATE pada column author1 dan price.

-- Pilih 1 row untuk dilakukan DELETE
