select * from Hyd_data
select * from northwind.dbo.customers


CREATE TABLE ExamResult
(StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks       INT
);
INSERT INTO ExamResult
VALUES
('Lily', 
 'Maths', 
 65
);
INSERT INTO ExamResult
VALUES
('Lily', 
 'Science', 
 80
);
INSERT INTO ExamResult
VALUES
('Lily', 
 'english', 
 70
);
INSERT INTO ExamResult
VALUES
('Isabella', 
 'Maths', 
 50
);
INSERT INTO ExamResult
VALUES
('Isabella', 
 'Science', 
 70
);
INSERT INTO ExamResult
VALUES
('Isabella', 
 'english', 
 90
);
INSERT INTO ExamResult
VALUES
('Olivia', 
 'Maths', 
 55
);
INSERT INTO ExamResult
VALUES
('Olivia', 
 'Science', 
 60
);
INSERT INTO ExamResult
VALUES
('Olivia', 
 'english', 
 89
);


select * from ExamResult




SELECT Studentname, 
       Subject, 
       Marks, 
       ROW_NUMBER() OVER(ORDER BY Marks) RowNumber
FROM ExamResult;



SELECT Studentname, 
       Subject, 
       Marks, 
RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) Ranking
FROM ExamResult
ORDER BY Studentname,Ranking


SELECT Studentname, 
       Subject, 
       Marks, 
RANK() OVER(ORDER BY Marks) Ranking
FROM ExamResult
ORDER BY Ranking


select * from examresult

update examresult
set Marks=91
where StudentName='Isabella' and Subject='Science'





         