use StudentManagement

--Insert Student Information into "StudentInfo" Table
begin
insert into StudentInfo
values
(
	'001',
	N'Hoàng Tùng',
	'1987-9-28',
	'0913566997'
)
insert into StudentInfo
values
(
	'002',
	N'Nguyễn Đình Nam',
	'1997-4-23',
	'0917623497'
)
insert into StudentInfo
values
(
	'003',
	N'Hoàng Anh Dũng',
	'1988-1-11',
	'0945535566'
)
insert into StudentInfo
values
(
	'004',
	N'Trần Ngọc Đắc',
	'1974-1-20',
	'0912918910'
)
insert into StudentInfo
values
(
	'005',
	N'Nguyễn Cao Thắng',
	'1983-4-13',
	'0912624855'
)
insert into StudentInfo
values
(
	'006',
	N'Đào Viết Đức',
	'1976-5-28',
	'0917391789'
)
end
go

--Insert Class Information into "ClassInfo" Table
begin
insert into ClassInfo
values
(
	'CL1001',
	'T2306E'
)
insert into ClassInfo
values
(
	'CL1002',
	'K1508G'
)
insert into ClassInfo
values
(
	'CL1003',
	'P2110D'
)
end
go

--Insert Subject Information into "SubjectInfo" Table
begin
insert into SubjectInfo
values
(
	'LBEP',
	'Logic Building and Elementary Programming'
)
insert into SubjectInfo
values
(
	'BMW',
	'Building Modern Website'
)
insert into SubjectInfo
values
(
	'URWD',
	'UI/UX fot Responsive Web Design'
)
insert into SubjectInfo
values
(
	'FWDR',
	'Frontend Web Development with React'
)
end
go

--Insert Mark into "MarkReport" Table
begin
insert into MarkReport
values
(
	'001',
	'BMW',
	9.0
)
insert into MarkReport
values
(
	'001',
	'FWDR',
	9.5
)
insert into MarkReport
values
(
	'001',
	'LBEP',
	8.0
)
insert into MarkReport
values
(
	'001',
	'URWD',
	9.0
)
insert into MarkReport
values
(
	'002',
	'BMW',
	8.0
)
insert into MarkReport
values
(
	'002',
	'FWDR',
	9.0
)
insert into MarkReport
values
(
	'002',
	'LBEP',
	7.0
)
insert into MarkReport
values
(
	'002',
	'URWD',
	8.5
)
insert into MarkReport
values
(
	'003',
	'BMW',
	8.5
)
insert into MarkReport
values
(
	'003',
	'FWDR',
	7.5
)
insert into MarkReport
values
(
	'003',
	'LBEP',
	9.0
)
insert into MarkReport
values
(
	'003',
	'URWD',
	6.0
)
insert into MarkReport
values
(
	'004',
	'BMW',
	6.5
)
insert into MarkReport
values
(
	'004',
	'FWDR',
	8.0
)
insert into MarkReport
values
(
	'004',
	'LBEP',
	9.5
)
insert into MarkReport
values
(
	'004',
	'URWD',
	8.0
)
insert into MarkReport
values
(
	'005',
	'BMW',
	7.0
)
insert into MarkReport
values
(
	'005',
	'FWDR',
	9.0
)
insert into MarkReport
values
(
	'005',
	'LBEP',
	6.5
)
insert into MarkReport
values
(
	'005',
	'URWD',
	9.0
)
insert into MarkReport
values
(
	'006',
	'BMW',
	6.0
)
insert into MarkReport
values
(
	'006',
	'FWDR',
	9.5
)
insert into MarkReport
values
(
	'006',
	'LBEP',
	7.0
)
insert into MarkReport
values
(
	'006',
	'URWD',
	8.0
)
end
go

--Insert Relationship into "StudentClassRelation" Table
begin
insert into StudentClassRelation
values
(
	'001',
	'CL1001'
)
insert into StudentClassRelation
values
(
	'002',
	'CL1002'
)
insert into StudentClassRelation
values
(
	'003',
	'CL1003'
)
insert into StudentClassRelation
values
(
	'004',
	'CL1001'
)
insert into StudentClassRelation
values
(
	'005',
	'CL1002'
)
insert into StudentClassRelation
values
(
	'006',
	'CL1003'
)
end
go

--Insert Relationship into "ClassSubjectRelation" Table
begin
insert into ClassSubjectRelation
values
(
	'CL1001',
	'BMW'
)
insert into ClassSubjectRelation
values
(
	'CL1001',
	'FWDR'
)
insert into ClassSubjectRelation
values
(
	'CL1001',
	'LBEP'
)
insert into ClassSubjectRelation
values
(
	'CL1001',
	'URWD'
)
insert into ClassSubjectRelation
values
(
	'CL1002',
	'BMW'
)
insert into ClassSubjectRelation
values
(
	'CL1002',
	'FWDR'
)
insert into ClassSubjectRelation
values
(
	'CL1002',
	'LBEP'
)
insert into ClassSubjectRelation
values
(
	'CL1002',
	'URWD'
)
insert into ClassSubjectRelation
values
(
	'CL1003',
	'BMW'
)
insert into ClassSubjectRelation
values
(
	'CL1003',
	'FWDR'
)
insert into ClassSubjectRelation
values
(
	'CL1003',
	'LBEP'
)
insert into ClassSubjectRelation
values
(
	'CL1003',
	'URWD'
)
end
go