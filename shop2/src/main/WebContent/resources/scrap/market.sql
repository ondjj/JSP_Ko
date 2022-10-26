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
	primary key (p_id)
)default charset=utf8;

desc product;

alter table product change column p_name p_name varchar(30); 

insert into product values('P1234','iPhone 6s','800000','1900 retina display, 8mega pixel', 'Smart phone', 'Apple', '1000', 'new', 'P1234.png');
insert into product values('P1235','LG PC Gram','1500000','3.3inch ips led display', 'NoteBook', 'LG', '1000', 'new', 'P1235.png');
insert into product values('P1236','Galaxy Tab S','900000','3.3inch ips panel super amoled', 'Tablet', 'Samsung', '1000', 'new', 'P1236.png');