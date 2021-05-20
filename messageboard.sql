use master

--- 创建数据库  ---
if exists(select * from sysdatabases where name= 'messageboard')
drop database messageboard
create database messageboard
on primary
(
	name='messageboard_data',
	filename = 'E:\MessageBoard\messageboard_data.mdf',
	size = 15MB,
	maxsize = 150MB,
	filegrowth=15%
)
log on
(
	name='_log',
	filename = 'E:\MessageBoard\messageboard_log.ldf',
	size = 5MB,
	maxsize = 50MB,
	filegrowth=10%
)
go

use messageboard
--- 创建表 ---
if exists(select * from sysobjects where name='message')
drop table message
create table message
(
	id int not null IDENTITY(1,1),
	title varchar(50) not null,
	username varchar(20) not null,
	contents varchar(400) not null,
	ip varchar(20) not null,
	createtime datetime not null
)

--- 向表添加约束 ---
Alter table message Add constraint PK_id primary key(id)
Alter table message Add constraint DK_ Default(getdate()) for createtime


--- 向表里插入数据 ---
insert into message values('欢迎您','郭武','欢迎你学习北大青鸟课程','192.168.0.1',default)
insert into message values('努力学习','赵翠芳','坚持才能胜利','127.0.0.1',default)
insert into message values('2008奥运开幕式','刘奇','开幕式非常精彩，大气磅礴，极富创意','204.34.156.23',default)


select * from message







