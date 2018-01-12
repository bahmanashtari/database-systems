/*
CREATED BY: BAHMAN ASHTARI
COURSE: CSC134
PROFESSOR: DR.XIAOYAN SUN
DATE: NOVEMBER 20/2016
*/
CREATE TABLE Course (
    CourseNo VARCHAR(10) NOT NULL,
    CourseName VARCHAR(60) NOT NULL,
    Department CHAR(30) NOT NULL,
    PRIMARY KEY (CourseNo)
);

CREATE TABLE Section (
    CourseNo VARCHAR(10) NOT NULL,
    SectionNo VARCHAR(30) NOT NULL,
    Instructor CHAR(30) NOT NULL,
    PRIMARY KEY (CourseNo, SectionNo),
    FOREIGN KEY (CourseNo) REFERENCES Course (CourseNo)
);

CREATE TABLE Student (
    SSN INTEGER NOT NULL,
    FirstName CHAR(30) NOT NULL,
    LastName CHAR(30) NOT NULL,
    Street VARCHAR(30) NOT NULL,
    City CHAR(30) NOT NULL,
    State CHAR(10) NOT NULL,
    Zip INTEGER(10) NOT NULL,
    PRIMARY KEY (SSN)
);

CREATE TABLE Exam (
    CourseNo VARCHAR(10) NOT NULL,
    SectionNo VARCHAR(30) NOT NULL,
    ExamNo INTEGER NOT NULL,
    E_Date DATE NOT NULL,
    E_Time TIME NOT NULL,
    PRIMARY KEY (CourseNo, SectionNo, ExamNo),
    FOREIGN KEY (CourseNo, SectionNo) REFERENCES Section (CourseNo, SectionNo)
);

CREATE TABLE ClassRoom (
    RoomNo INTEGER NOT NULL,
    Building CHAR(30) NOT NULL,
    Capacity INTEGER NOT NULL,
    PRIMARY KEY (RoomNo, Building)
);

CREATE TABLE ConductedIn (
    RoomNo INTEGER NOT NULL,
    Building CHAR(30) NOT NULL,
    CourseNo VARCHAR(10) NOT NULL,
    SectionNo VARCHAR(30) NOT NULL,
    ExamNo INTEGER NOT NULL,
    PRIMARY KEY (RoomNo, Building, CourseNo, SectionNo, ExamNo),
    FOREIGN KEY (RoomNo, Building) REFERENCES ClassRoom (RoomNo, Building),
    FOREIGN KEY (CourseNo, SectionNo, ExamNo) REFERENCES Exam (CourseNo, SectionNo, ExamNo)
);

CREATE TABLE Takes (
    SSN INTEGER NOT NULL,
    CourseNo VARCHAR(10) NOT NULL,
    SectionNo VARCHAR(30) NOT NULL,
    ExamNo INTEGER NOT NULL,
    Result CHAR(5) NOT NULL,
    PRIMARY KEY (SSN, CourseNo, SectionNo, ExamNo),
    FOREIGN KEY (SSN) REFERENCES Student (SSN),
    FOREIGN KEY (CourseNo, SectionNo, ExamNo) REFERENCES Exam (
        CourseNo, SectionNo, ExamNo)
);

CREATE TABLE Enrolls (
    SSN INTEGER NOT NULL,
    CourseNo VARCHAR(10) NOT NULL,
    SectionNo VARCHAR(30) NOT NULL,
    PRIMARY KEY (SSN, CourseNo, SectionNo),
    FOREIGN KEY (SSN) REFERENCES Student (SSN),
    FOREIGN KEY (CourseNo, SectionNo) REFERENCES Section (CourseNo, SectionNo)
);

/*
select TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
from INFORMATION_SCHEMA.KEY_COLUMN_USAGE
where REFERENCED_TABLE_NAME = 'Enrolls';
*/