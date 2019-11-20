create table board(
	num int not null auto_increment,
	id varchar(20) not null,
	name varchar(30) not null,
	subject varchar(200) not null,
	content text not null,
	regist_day varchar(30),
	hit int,
	ip varchar(30),
	PRIMARY KEY(num)
)default CHARSET=utf8;

desc board;

select * from board;