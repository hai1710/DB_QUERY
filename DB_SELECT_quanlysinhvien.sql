USE QuanLySinhVien;

SELECT * FROM Student;

SELECT * FROM Student
WHERE Status = true;

SELECT * FROM Subject WHERE Credit < 10;

SELECT S.StudentId, S.StudentName, C.ClassID, C.ClassName
FROM Student AS S join Class AS C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';

SELECT S.StudentId, S.StudentName, Sub.SubId, M.Mark
FROM Student AS S JOIN Mark AS M ON S.StudentID = M.StudentID
	 join Subject AS Sub ON Sub.SubId = M.SubId
     WHERE Sub.SubName = 'CF';