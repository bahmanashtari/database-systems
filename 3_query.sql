/*
CREATED BY: BAHMAN ASHTARI
COURSE: CSC134
PROFESSOR: DR.XIAOYAN SUN
DATE: NOVEMBER 20/2016
*/
/*Query 1
Retrieve information (SSN, first name and last name) about students who take the course ‘Database Management Systems’*/
SELECT S.SSN, FirstName, LastName 
FROM Student S, Enrolls E, Course C 
WHERE CourseName = 'Database Management Systems' 
AND C.CourseNo = E.CourseNo 
AND S.SSN = E.SSN;
/*Query 2
Retrieve the courses (List course name and number of sections) that have more than 2 sections*/
SELECT C.CourseName, COUNT(*) Section_Count
FROM Section S, Course C
WHERE S.CourseNo = C.CourseNo
GROUP BY S.CourseNo
HAVING Section_Count > 2;
/*Query 3
List each course number, course name and section number which have 3 or more students in the section*/
SELECT E.CourseNo, E.SectionNo, C.CourseName
FROM Course C, Enrolls E
WHERE C.CourseNo = E.CourseNo
GROUP BY E.SectionNo, E.CourseNo
HAVING COUNT(*) >= 3;
/*Query 4
Retrieve the information (SSN, first name, and last name) of students who got Grade ‘A’ in at least 3 exams*/
SELECT S.SSN, FirstName, LastName
FROM Student S, Takes T
WHERE S.SSN = T.SSN AND T.Result = 'A'
GROUP BY SSN
HAVING COUNT(*) >= 3;
/*Query 5
Obtain information (exam number, exam date, course number and section number) about exams taking place in building ‘RVR’. Along with that get the room’s capacity and room number*/
SELECT E.ExamNo, E.E_Date, E.CourseNo, E.SectionNo, C.RoomNo, C.Capacity
FROM Exam E, ClassRoom C, ConductedIn I
WHERE I.Building = 'RVR' AND I.CourseNo = E.CourseNo AND I.ExamNo = E.ExamNo AND C.RoomNo = I.RoomNo;
/*Query 6
Retrieve information (SSN, first name and last name) about students who are enrolled in both the course ‘CSC133’ and ‘CSC137’. ‘CSC133’ and ‘CSC137’ are both course numbers*/
SELECT DISTINCT S.SSN, FirstName, LastName
FROM Student S, Enrolls E
WHERE E.CourseNo = 'Csc133' AND S.SSN IN 
    (SELECT S.SSN
     FROM Student S, Enrolls E
     WHERE E.CourseNo = 'Csc137' AND S.SSN = E.SSN);
/*Query 7
Get the information (SSN, first name and last name) about students who take the course ‘Data structure and algorithms’. Also get the section number in which they have enrolled in the course, as well as the instructor of the section*/
SELECT S.SSN, FirstName, LastName, X.SectionNo, X.Instructor 
FROM Student S, Enrolls E, Course C, Section X 
WHERE CourseName = 'Database Management Systems' 
AND C.CourseNo = E.CourseNo 
AND S.SSN = E.SSN
AND C.CourseNo = X.CourseNo;