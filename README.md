# mybatisblog

```mysql
create user 'ssar'@'localhost' identified by 'bitc5600';
grant all privileges on *.* to 'cos'@'%';
create database ssar;

use ssar;

show tables;

select * from user;

describe user;
describe board;

insert into board(title, content, userId, createDate)
values ('제목1', '내용 1', 1, now());

commit;

select * from board;

create user 'love'@'%' identified by 'bitc5600';
grant all privileges on *.* to 'love'@'%';
create database love;
use love;

drop table cus_pro;
drop table customer;
drop table customer_products;
drop table product;
drop table product_customer;

desc customerproduct;

desc userrole;

desc user;

insert into role(role) values('USER');
insert into role(role) values('MANAGER');
insert into role(role) values('ADMIN');
insert into role(role) values('TESTER');

commit;

select * from role order by id asc;



describe user;

select * from role;
select * from user;
select * from userrole;

delete from userrole;
delete from user;

commit;

create user 'blog'@'%' identified by 'bitc5600';
grant all privileges on *.* to 'blog'@'%';
create database blog;
use blog;

create table user (
	id int auto_increment primary key,
    username varchar(100) not null unique,
    password varchar(100) not null,
    createDate timestamp,
    userProfile varchar(500) default 'resources/img/userProfile.png' not null
) engine=InnoDB default charset=utf8;


create table board(
	id int auto_increment primary key,
    userId int,
    title varchar(100) not null,
    content longtext,
    createDate timestamp,
    foreign key(userId) references user(id)
) engine=InnoDB default charset=utf8;

insert into user(username, password, createDate)
values('kim', 1234, now());

select * from user;

insert into board(userId, title, content, createDate)
values(1, '제목입니다.', '내용입니다', now());
use blog;
select * from board order by id desc;
desc board;
select * from user;
select * from board b, user u where b.userId = u.id;

alter table board
modify title varchar(100) default '제목이 없습니다.' not null;

delete from board where title = "";
SELECT * FROM user WHERE username = 'crow' AND password = 1234;
commit;
select * from user;
alter table user
modify userProfile varchar(500) default '/resources/img/userProfile.png' not null;

update user set userProfile='/resources/img/userProfile.png'
