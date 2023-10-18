CREATE DATABASE StudentManage
GO
USE StudentManage 
GO
-- tao bang
CREATE TABLE InforStudent (
	StudentID nchar(10) PRIMARY KEY,
	StudentName nvarchar(40) NOT NULL,
	StudentAge date DEFAULT '1970-01-01'
	
)
 
CREATE TABLE SubjectTable (
	SubjectID nchar(10) PRIMARY KEY ,
	SubjectName nvarchar(40)
	
)

CREATE TABLE TestCore (
	ID int IDENTITY PRIMARY KEY,
	StudentID nchar(10) NOT NULL ,
	SubjectID nchar(10) NOT NULL,
	Point INT 

)

CREATE TABLE ClassTable (
	ClassID nchar(10) PRIMARY KEY,
	ClassName nvarchar (40)
)

CREATE TABLE StudentClass (
	ID int IDENTITY PRIMARY KEY,
	StudentID nchar(10) NOT NULL ,
	ClassID nchar (10) NOT NULL 
)

CREATE TABLE SubjectClass (
	ID int IDENTITY PRIMARY KEY,
	SubjectID nchar(10) NOT NULL,
	ClassID nchar(10) NOT NULL
)

-- tạo khóa ngoại
ALTER TABLE TestCore 
ADD CONSTRAINT TesCore_InforStd_fk FOREIGN KEY (StudentID) REFERENCES InforStudent (StudentID),
CONSTRAINT TesCore_Subje_fk FOREIGN KEY (SubjectID) REFERENCES SubjectTable (SubjectID)

ALTER TABLE StudentClass
ADD CONSTRAINT StdClas_clas_fk FOREIGN KEY (ClassID) REFERENCES ClassTable (ClassID),
CONSTRAINT StdClss_InforStd_fk FOREIGN KEY (StudentID) REFERENCES InforStudent (StudentID);

ALTER TABLE SubjectClass
ADD CONSTRAINT Sbj_subjTB_fk FOREIGN KEY (SubjectID) REFERENCES SubjectTable (SujectID),
CONSTRAINT Sbj_Clss_fk FOREIGN KEY (ClassID) REFERENCES ClassTable (ClassID);
GO

--Insert vao bang 
INSERT INTO InforStudent (StudentID,StudentName,StudentAge)
VALUES ('20D200001',N'Lê Chung Dũng', '1998-07-03'),
		('20D200002',N'Nguyễn Tri Đạt', '2000-10-09'),
		('20D200003',N'Lê Vĩnh Phúc', '1998-11-05')

INSERT INTO SubjectTable (SubjectID,SubjectName)
VALUES	('LBEF',N'Lập Trình C'),
		('BMW',N'HTML,CSS,JAVARSCRIP'),
		('URWD',N'Thiết kế giao diện người dùng'),
		('FWDR',N'ReactJs'),
		('DMS','Database Management SQL Server'),
		('PHPL',N'Ngôn ngữ PHP')

INSERT INTO TestCore (StudentID, SubjectID, Point)
VALUES	('20D200001','LBEF',8 ),
		('20D200001','BMW',9 ),
		('20D200001','URWD',6 ),
		('20D200001','FWD',10 ),
		('20D200002','LBEF',7 ),
		('20D200002','BMW',6 ),
		('20D200002','URWD',6 ),
		('20D200002','FWD',10 ),
		('20D200002','DMS',7 ),
		('20D200003','PHPL',9 ),
		('20D200003','LBEF',8 ),
		('20D200003','BMW',9 ),
		('20D200003','FWD',9),
		('20D200003','DMS',8 )

INSERT INTO ClassTable (ClassID, ClassName)
VALUES	('T2306E','Aptech t7'),
		('T2308E','Aptech T9')

INSERT INTO StudentClass (StudentID, ClassID)
VALUES	('20D200001','T2306E'),
		('20D200002','T2306E'),
		('20D200001','T2308E'),
		('20D200003','T2308E')

INSERT INTO SubjectClass (SubjectID, ClassID)
VALUES	('LBEF','T2306E'),
		('BMW','T2306E'),
		('URWD','T2306E'),
		('FWD','T2306E'),
		('DMS','T2306E'),
		('LBEF','T2308E'),
		('BMW','T2308E'),
		('FWD','T2306E'),
		('PHPL','T2308E'),
		('DMS','T2308E')

--SELECT thong tin
SELECT A.StudentID, A.StudentName, B.SubjectID, B.Point 
FROM InforStudent A LEFT JOIN TestCore B ON A.StudentID = B.StudentID
GO

SELECT A.StudentName ,B.SubjectID , AVG (Point) 
FROM InforStudent A LEFT JOIN TestCore B ON A.StudentID = B.StudentID GROUP BY B.StudentID
GO

