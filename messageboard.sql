use master

--- �������ݿ�  ---
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
--- ������ ---
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

--- ������Լ�� ---
Alter table message Add constraint PK_id primary key(id)
Alter table message Add constraint DK_ Default(getdate()) for createtime


--- ������������ ---
insert into message values('��ӭ��','����','��ӭ��ѧϰ��������γ�','192.168.0.1',default)
insert into message values('Ŭ��ѧϰ','�Դ䷼','��ֲ���ʤ��','127.0.0.1',default)
insert into message values('2008���˿�Ļʽ','����','��Ļʽ�ǳ����ʣ��������磬��������','204.34.156.23',default)


select * from message







