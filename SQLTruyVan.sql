use StudentManagement

select * from StudentInfo
select * from ClassInfo
select * from SubjectInfo
select * from MarkReport
select * from StudentClassRelation
select * from ClassSubjectRelation

select * from StudentInfo A left join MarkReport B on A.StudentID=B.StudentID

--Hiển thị bảng gồm Tên và Tổng Điểm của tất cả sinh viên
select A.Fullname AS N'Họ và Tên', sum(B.Mark) AS N'Tổng điểm' from StudentInfo A join MarkReport B on A.StudentID=B.StudentID group by Fullname

--Hiển thị bảng gồm Tên và Tổng Điểm của tất cả sinh viên, sắp xếp từ cao xuống thấp
select A.Fullname AS N'Họ và Tên', sum(B.Mark) AS N'Tổng điểm' from StudentInfo A join MarkReport B on A.StudentID=B.StudentID group by Fullname order by sum(B.Mark) desc

--Hiển thị bảng gồm Tên và Tổng Điểm, Điểm trung bình của tất cả sinh viên
select A.Fullname AS N'Họ và Tên', sum(B.Mark) AS N'Tổng điểm', AVG(B.Mark) AS N'Điểm trung bình' from StudentInfo A join MarkReport B on A.StudentID=B.StudentID group by Fullname

--Hiển thị bảng gồm Tên và Điểm của sinh viên có tên Hoàng Tùng
select A.Fullname AS N'Họ và Tên', sum(B.Mark) AS N'Điểm' from StudentInfo A join MarkReport B on A.StudentID=B.StudentID where A.Fullname='Hoàng Tùng' group by Fullname

--Hiển thị bảng sinh viên học trong lớp CL1001
select B.Fullname AS N'Họ và Tên', C.ClassID AS 'Mã lớp', C.ClassName AS 'Lớp' from StudentClassRelation A 
join StudentInfo B on A.StudentID=B.StudentID
join ClassInfo C on A.ClassID=C.ClassID where C.ClassID='CL1001'

--Hiển thị bảng sinh viên học trong lớp CL1002
select B.Fullname AS N'Họ và Tên', C.ClassID AS 'Mã lớp', C.ClassName AS 'Lớp' from StudentClassRelation A 
join StudentInfo B on A.StudentID=B.StudentID
join ClassInfo C on A.ClassID=C.ClassID where C.ClassID='CL1002'

--Hiển thị bảng sinh viên học trong lớp CL1003
select B.Fullname AS N'Họ và Tên', C.ClassID AS 'Mã lớp', C.ClassName AS 'Lớp' from StudentClassRelation A 
join StudentInfo B on A.StudentID=B.StudentID
join ClassInfo C on A.ClassID=C.ClassID where C.ClassID='CL1003'

--Hiển thị điểm từng môn của sinh viên có tên Hoàng Tùng
select B.Fullname AS N'Họ và tên', C.SubjectName AS 'Môn học', A.Mark from MarkReport A
join StudentInfo B on A.StudentID=B.StudentID
join SubjectInfo C on A.SubjectID=C.SubjectID where B.Fullname='Hoàng Tùng'

--Hiển thị điểm từng môn của sinh viên có tên Hoàng Tùng
select B.Fullname AS N'Họ và tên', C.SubjectName AS 'Môn học', A.Mark from MarkReport A
join StudentInfo B on A.StudentID=B.StudentID
join SubjectInfo C on A.SubjectID=C.SubjectID where B.Fullname='Hoàng Tùng'