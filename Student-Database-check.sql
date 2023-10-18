use StudentManagementDb;
SELECT SI.StudentName, SC.ClassID, CI.ClassName, S.SubjectName, SG.Grade
FROM StudentInfoTable AS SI
JOIN StudentClassTable AS SC ON SI.StudentID = SC.StudentID
JOIN ClassInfoTable AS CI ON CI.ClassID = SC.ClassID 
JOIN StudentGradeTable AS SG ON SI.StudentID = SG.StudentID
JOIN SubjectInfoTable AS S ON SG.SubjectID = S.SubjectID;
SELECT CI.ClassName, SI.SubjectName 
FROM SubjectInfoTable AS SI
JOIN SubjectClassTable AS SC ON SI.SubjectID = SC.SubjectID
JOIN ClassInfoTable AS CI ON SC.ClassID = CI.ClassID
