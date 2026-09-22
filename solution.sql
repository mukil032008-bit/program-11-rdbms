CREATE TABLE student (
   studentID INT PRIMARY KEY,
   studentname VARCHAR(50),
   departmentID INT
);
   

   CREATE TABLE course (
	 courseID INT PRIMARY KEY,
     coursename VARCHAR(50)
);


CREATE TABLE Enrollment (
   EnrollmentID INT PRIMARY KEY,
   studentID INT,
   courseID INT
);
     

INSERT INTO student VALUES
(1001,'Arun',101),
(1002,'divya',102),
(1003,'Karthik',101);

INSERT INTO Enrollment VALUES
(201,'Database systems'),
(202,'Data structures'),
(203,'Mathematics');


INSERT INTO Enrollment VALUES
(1,1001,201),
(2,1002,202),
(3,1003,203);


CREATE VIEW studentdetails AS
SELECT 
   s.studentname,
   c.coursename,
   CASE
      WHEN s.departmentID = 101 THEN 'computer science'
      WHEN s.departmentID = 102 then 'mathematics'
          ELSE 'other deparment'
		END AS departmentname
FROM student s

JOIN Enrollment E ON s.studentID = E.studentID
JOIN course C ON E.CourseID = C.CourseID;

SELECT * FROM studentdetails;

      
