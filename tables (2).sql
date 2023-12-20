DROP TABLE IF EXISTS 'shop';
DROP TABLE IF EXISTS 'product';
DROP TABLE IF EXISTS 'warehouse';
DROP TABLE IF EXISTS 'worker';
CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);
INSERT INTO 'shop' VALUES(1,'пятерочка',31);
INSERT INTO 'shop' VALUES(2,'перекресток',133);
INSERT INTO 'shop' VALUES(3,'ашан',231);
INSERT INTO 'shop' VALUES(4,'OBI',175);
INSERT INTO 'shop' VALUES(5,'Ikea',231);
INSERT INTO 'shop' VALUES(6,'FixPrice',139);
CREATE TABLE product (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'product' VALUES(1,'молоко',100);
INSERT INTO 'product' VALUES(2,'хлеб',25);
INSERT INTO 'product' VALUES(3,'яица',30);
INSERT INTO 'product' VALUES(4,'йогурт',50);
INSERT INTO 'product' VALUES(5,'Стол',1250);
INSERT INTO 'product' VALUES(6,'Стул',450);
INSERT INTO 'product' VALUES(7,'Лампа',50);
CREATE TABLE warehouse (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));
INSERT INTO 'warehouse' VALUES(1,1,20);
INSERT INTO 'warehouse' VALUES(1,2,10);
INSERT INTO 'warehouse' VALUES(2,1,30);
INSERT INTO 'warehouse' VALUES(3,1,48);
INSERT INTO 'warehouse' VALUES(3,2,77);
INSERT INTO 'warehouse' VALUES(3,3,52);
INSERT INTO 'warehouse' VALUES(4,5,66);
INSERT INTO 'warehouse' VALUES(4,6,52);
INSERT INTO 'warehouse' VALUES(4,7,47);
INSERT INTO 'warehouse' VALUES(5,5,22);
INSERT INTO 'warehouse' VALUES(5,6,39);
INSERT INTO 'warehouse' VALUES(5,7,73);
INSERT INTO 'warehouse' VALUES(6,3,47);
INSERT INTO 'warehouse' VALUES(6,4,72);
CREATE TABLE worker (
worker_id INTEGER PRIMARY KEY,
shop_id INTEGER REFERENCES product (id),
name VARCHAR(255),
salary INTEGER NOT NULL,
position VARCHAR(255));
INSERT INTO 'worker' VALUES(1,1,'Аркадий',90000,'Менеджер');
INSERT INTO 'worker' VALUES(2,1,'Арсений',60000,'Старший сотрудник');
INSERT INTO 'worker' VALUES(3,2,'Вячеслав',90000,'Менеджер');
INSERT INTO 'worker' VALUES(4,3,'Барни',50000,'Конусльтант');
INSERT INTO 'worker' VALUES(5,4,'Валерьян',110000,'Менеджер');
INSERT INTO 'worker' VALUES(6,5,'Василий',55000,'Сотрудник');
INSERT INTO 'worker' VALUES(7,6,'Герман',85000,'Менеджер');
INSERT INTO 'worker' VALUES(8,6,'Валерьян',100000,'Менеджер');
