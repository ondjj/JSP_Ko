use webmarketdb;

create table product(
	p_id varchar(10) not null,
	p_name varchar(10),
	p_unitPrice integer,
	p_description text,
	p_category varchar(20),
	p_manufacturer varchar(20),
	p_unitsInStock long,
	p_condition varchar(20),
	p_filename varchar(20),
	primary key(p_id)
)default charset=utf8;

desc product;

insert into product values('P1234','iPhone 6s',
800000,'1900 retina display, 8mega pixel','Smart phone',
'Apple',1000,'new','P1234.png');

insert into product values('P1235','LG pc gram',
1500000,'3.3inch ips led display','Notebook',
'LG',1000,'new','P1235.png');

insert into product values('P1236','GalaxyTab',
900000,'3.3inch ips panel super amoled','Tablet',
'Samsung',1000,'new','P1236.png');

select * from product;


create table member (
	id varchar(10) not null,        
	password varchar(10) not null,
	name varchar(10) not null,
	gender varchar(4),
	birth varchar(10),
	mail varchar(30),
	phone varchar(20),
	address varchar(90),
	regist_day varchar(50),
	primary key(id)
)default charset=utf8;

desc member;

select * from member;















