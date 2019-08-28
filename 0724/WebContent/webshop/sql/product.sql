CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitInStock LONG,
	p_condition VARCHAR(20),
	p_fileName VARCHAR(20),
	PRIMARY KEY (p_id)	
)default CHARSET=utf8;

desc product;

INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Retina HD display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', 1000, 'new', 'p1234.PNG');
INSERT INTO product VALUES('P12345', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core Processors', 'Notebook', 'LG', 1000, 'new', 'p12345.PNG');
INSERT INTO product VALUES('P1236', 'Galaxy Tap S', 900000, '3.3-inch, 212.8*125.6*6.6mm, Super AMOLED display, Octa-core processor', 'Tablet', 'Samsung', 1000, 'new', 'p1236.PNG');

select * from product;

update product set p_fileName='p1234.PNG' where p_fileName='P1234.PNG';
update product set p_fileName='p12345.PNG' where p_fileName='P12345.PNG';
update product set p_fileName='p1236.PNG' where p_fileName='P1236.PNG';

drop table product;

delete from product where p_id="P4567";