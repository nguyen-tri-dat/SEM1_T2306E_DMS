if not exists (select name from master.sys.databases where name=N'StudentManagement')
begin
create database StudentManagement
end
go

use StudentManagement
--Create Student Information Table
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='StudentInfo')
begin
create table StudentInfo
(
	StudentID nvarchar(10),
	Fullname nvarchar(20),
	BirthDate date,
	PhoneNumber nvarchar(10),
	Primary Key (StudentID)
)
end
go

--Create Class Information Table
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='ClassInfo')
begin
create table ClassInfo
(
	ClassID nvarchar(10),
	ClassName nvarchar(50),
	Primary Key (ClassID)
)
end
go

--Create Subject Information Table
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='SubjectInfo')
begin
create table SubjectInfo
(
	SubjectID nvarchar(10),
	SubjectName nvarchar(50),
	Primary Key (SubjectID)
)
end
go

--Create Mark Report Table
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='MarkReport')
begin
create table MarkReport
(
	StudentID nvarchar(10),
	SubjectID nvarchar(10),
	Mark decimal (3,2),
	Foreign key (StudentID) references StudentInfo(StudentID),
	Foreign key (SubjectID) references SubjectInfo(SubjectID)
)
end
go

--Create Relationship Table of Student and Class
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='StudentClassRelation')
begin
create table StudentClassRelation
(
	StudentID nvarchar(10),
	ClassID nvarchar(10),
	Foreign key (StudentID) references StudentInfo(StudentID),
	Foreign key (ClassID) references ClassInfo(ClassID)
)
end
go

--Create Relationship Table of Class and Subject
if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='ClassSubjectRelation')
begin
create table ClassSubjectRelation
(
	ClassID nvarchar(10),
	SubjectID nvarchar(10),
	Foreign key (ClassID) references ClassInfo(ClassID),
	Foreign key (SubjectID) references SubjectInfo(SubjectID),
)
end
go