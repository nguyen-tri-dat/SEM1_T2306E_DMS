use StudentManagementDb
CREATE TABLE StudentInfoTable
(
	StudentID NVARCHAR(20) NOT NULL,
	StudentName NVARCHAR(60) NOT NULL,
	StudentDOB DATE NOT NULL,
	StudentJob NVARCHAR(40) NULL
	PRIMARY KEY(StudentID)
);

CREATE TABLE ClassInfoTable
(
	ClassID NVARCHAR(20) NOT NULL PRIMARY KEY,
	ClassName NVARCHAR(40) NOT NULL,
);

CREATE TABLE SubjectInfoTable
(
	SubjectID NVARCHAR(20) NOT NULL PRIMARY KEY,
	SubjectName NVARCHAR(40) NOT NULL
);

CREATE TABLE StudentClassTable
(
    StudentID NVARCHAR(20) NOT NULL,
    ClassID NVARCHAR(20) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES StudentInfoTable(StudentID),
    FOREIGN KEY (ClassID) REFERENCES ClassInfoTable(ClassID)
);

CREATE TABLE SubjectClassTable
(
	ClassID NVARCHAR(20) NOT NULL,
	SubjectID NVARCHAR(20) NOT NULL,
	FOREIGN KEY (ClassID) REFERENCES ClassInfoTable(ClassID),
	FOREIGN KEY (SubjectID) REFERENCES SubjectInfoTable(SubjectID)
);

CREATE TABLE StudentGradeTable
(
	StudentID NVARCHAR(20) NOT NULL,
	SubjectID NVARCHAR(20) NOT NULL,
	FOREIGN KEY (StudentID) REFERENCES StudentInfoTable(StudentID),
	FOREIGN KEY (SubjectID) REFERENCES SubjectInfoTable(SubjectID)
);

SELECT * FROM StudentGradeTable;
