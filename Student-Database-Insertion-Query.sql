USE StudentManagementDb;
--INSERT INTO StudentInfoTable(StudentID, StudentName, StudentDOB, StudentJob)
--VALUES ('1001', 'John Doe', '1995-05-15', 'Student'),
--		('1002', 'Jane Smith', '1994-08-20', 'Student'),
--       ('1003', 'Bob Johnson', '1996-02-10', 'Student');

INSERT INTO ClassInfoTable (ClassID, ClassName)
VALUES ('C001', 'Math 101'),
       ('C002', 'History 101'),
       ('C003', 'Science 101');

INSERT INTO SubjectInfoTable (SubjectID, SubjectName)
VALUES ('S001', 'Mathematics'),
       ('S002', 'History'),
       ('S003', 'Biology');

INSERT INTO StudentClassTable (StudentID, ClassID)
VALUES ('1001', 'C001'),
       ('1002', 'C002'),
       ('1003', 'C003');

INSERT INTO SubjectClassTable (ClassID, SubjectID)
VALUES ('C001', 'S001'),
       ('C002', 'S002'),
       ('C003', 'S003');


INSERT INTO StudentGradeTable (StudentID, SubjectID)
VALUES ('1001', 'S001'),
       ('1002', 'S002'),
       ('1003', 'S003');

