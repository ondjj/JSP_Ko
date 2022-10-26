use test01;

create table member (
	id int not null auto_increment,
	name varchar(100) not null,
	passwd varchar(50) not null,
	primary key (id)
);

desc student;

drop table member2;

alter table member add phone varchar(100);

alter table member drop column phone;

alter table member change column passwd passwd varchar(60);

rename table member2 to student;

insert into student values('1', '장동건', '1234');
insert into student values('2', 'abc', '1234');
insert into student values('3', 'def', '1234');

update student set name='coffe' where id='1';

delete from student where name='zzz';