create table if not exists member(
	id varchar(20) not null,
	passwd varchar(20) not null,
	name varchar(30) not null,
	gender varchar(4),
	birth varchar(10),
	mail varchar(30),
	phone varchar(20),
	address varchar(90),
	regist_day varchar(50),
	grade int not null,
	primary key (id)
) default CHARSET=utf8;

desc member;

select * from member;

