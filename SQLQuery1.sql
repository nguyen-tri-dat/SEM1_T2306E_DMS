create database StudentManagement
use StudentManagement
create table StudentInfo (StudentID varchar(10) primary key, FirstName nvarchar(10), MiddleName nvarchar(10),LastName nvarchar(10),Phone int,Email varchar(20),Addr nvarchar(50))
insert into StudentInfo(StudentID,FirstName	,MiddleName,LastName,Phone,Email,Addr) values ('A100','Nguyen','Van','An','912345678','an123@gmail.com','Cau Giay, Ha Noi') 
insert into StudentInfo(StudentID,FirstName	,MiddleName,LastName,Phone,Email,Addr) values ('A101','Nguyen','Van','Binh','912345677','binh123@gmail.com','Hoa La, Ha Noi') 
insert into StudentInfo(StudentID,FirstName	,MiddleName,LastName,Phone,Email,Addr) values ('A102','Nguyen','Van','Minh','912345679','minh123@gmail.com','Nong Cong, Thanh Hoa') 
insert into StudentInfo(StudentID,FirstName	,MiddleName,LastName,Phone,Email,Addr) values ('A103','Tran','Van','Sinh','0912345676','sinh123@gmail.com','Cua Lo, Nghe An') 
create table CourseInfo (CourseID varchar(10) primary key, CourseName varchar(20),CourseCredit int, InstructionName nvarchar(30))
insert into CourseInfo (CourseID,CourseName,CourseCredit,InstructionName) values ('SEM01','Basic Programing',3,'Nguen Cuong')
insert into CourseInfo (CourseID,CourseName,CourseCredit,InstructionName) values ('SEM02','BMW',4,'Nguen Tuan')
insert into CourseInfo (CourseID,CourseName,CourseCredit,InstructionName) values ('SEM03','FWDR',4,'Nguen Nam')
insert into CourseInfo (CourseID,CourseName,CourseCredit,InstructionName) values ('SEM04','DBMS',5,'Nguen Thang')
create table TakeResult (ResultID varchar(10) primary key, StudentID varchar(10),CourseID varchar(10),Grade int)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('100','A001','SEM01',10)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('101','A001','SEM01',7)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('102','A001','SEM01',8)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('103','A001','SEM01',8)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('104','A001','SEM01',9)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('105','A002','SEM01',8)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('106','A002','SEM01',7)
insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('107','A003','SEM01',7)
create table Career (CareerID varchar(10) primary key, CareerName nvarchar(30), StudentID varchar(10))
insert into Career(CareerID,CareerName,StudentID) values('IT01','Dev Code','A000')
insert into Career(CareerID,CareerName,StudentID) values('IT02','Big Data','A001')
insert into Career(CareerID,CareerName,StudentID) values('IT03','IoT','A002')
insert into Career(CareerID,CareerName,StudentID) values('IT04','Cloud','A003')
select StudentID,sum(A.Grade*B.CourseCredit)/sum(B.CourseCredit) as GPA from TakeResult A join CourseInfo B on A.CourseID=B.CourseID group by StudentID order by GPA DESC
select * from TakeResult
alter table TakeResult alter column Grade float
begin transaction
	select * from TakeResult where StudentID='A001' and CourseID='SEM01'
	delete TakeResult where StudentID='A001' and CourseID='SEM01'
	select * from TakeResult where StudentID='A001' and CourseID='SEM01'
	rollback;
	select * from TakeResult where StudentID='A101' and CourseID='SEM01'
begin transaction
	select * from TakeResult where StudentID='A101' and CourseID='SEM01'
	update TakeResult set Grade=9 where StudentID='A101' and CourseID='SEM01'
	select * from TakeResult where StudentID='A101' and CourseID='SEM01'
	rollback;
	select * from TakeResult where StudentID='A101' and CourseID='SEM01'
begin transaction
	insert into TakeResult (ResultID,StudentID,CourseID,Grade) values('108','A003','SEM02',8)
	select * from TakeResult where StudentID='A103' and CourseID='SEM02'
	rollback;
	select * from TakeResult where StudentID='A103' and CourseID='SEM02'
select	@@connections, @@trancount
use StudentManagement
select StudentInfo.StudentID,StudentInfo.LastName,CourseInfo.CourseName,TakeResult.Grade from StudentInfo, CourseInfo,TakeResult where StudentInfo.StudentID=TakeResult.StudentID and TakeResult.CourseID=CourseInfo.CourseID