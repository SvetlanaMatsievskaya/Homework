-- 1 Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
-- Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ
CREATE DATABASE IF NOT EXISTS lesson1;
USE lesson1;

CREATE TABLE IF NOT EXISTS phone 
(   id INT PRIMARY KEY AUTO_INCREMENT, 
    product_name VARCHAR(45),
    manufacture VARCHAR(45), 
    product_count INT,
    price INT
    );
    
    INSERT into phone (product_name, manufacture, product_count, price)
    VALUES 
    ("iPhone X","Apple",3,76000),
    ("iPhone 8","Apple",2,51000),
    ("Galaxy S9","Samsung",2,56000),
    ("Galaxy S8","Samsung",1,41000),
    ("P20 Pro","Huawei",5,36000);
    
   -- 2 Выведите название, производителя и цену для товаров, 
   -- количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
   
   SELECT product_name, manufacture, price
   FROM phone
   WHERE product_count > 2;
   
   -- 3 Выведите весь ассортимент товаров марки “Samsung”

SELECT *
FROM phone
WHERE manufacture = "Samsung";

-- 4 Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**

SELECT * 
FROM phone
WHERE product_count*price between 100000 and 145000;

-- 5 4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	-- 4.1. Товары, в которых есть упоминание "Iphone"

SELECT * 
FROM phone
WHERE product_name LIKE "%iPhone%";

	-- 4.2. "Galaxy"

SELECT * 
FROM phone
WHERE product_name LIKE "%Galaxy%";

-- 4.3.  Товары, в которых есть ЦИФРЫ

SELECT * 
FROM phone
WHERE product_name RLIKE "[0-9]";

SELECT * 
FROM phone
WHERE product_name RLIKE "[:digit:]";

-- 4.4.  Товары, в которых есть ЦИФРА "8"  

SELECT * 
FROM phone
WHERE product_name RLIKE "[8]";