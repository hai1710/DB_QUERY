USE QuanLySinhVien;

SELECT * FROM student WHERE StudentName LIKE 'h%';

SELECT * FROM Class WHERE StartDate LIKE '%-12-%';

SELECT * FROM Subject WHERE Credit BETWEEN 3 AND 5;

UPDATE Student SET ClassId = 2 WHERE StudentName = 'Hung';

SELECT S.StudentName,Sub.SubName,M.Mark
FROM Student AS S Join Mark AS M ON S.StudentId = M.StudentId 
				  Join Subject AS Sub ON Sub.SubId = M.SubID
ORDER BY M.Mark DESC, Sub.SubName DESC , S.StudentName ASC;