/*
CREATED BY: BAHMAN ASHTARI
COURSE: CSC134
PROFESSOR: DR.XIAOYAN SUN
DATE: NOVEMBER 20/2016
*/
INSERT INTO Course VALUES 
    ('Csc134', 'Database Management Systems', 'Computer Science and Computer Engineering'),
    ('Csc133', 'Object-Oriented Computer Graphics Programming', 'Computer Science and Computer Engineering'),
    ('Csc137', 'Digital Logic Design and Computer Organization', 'Computer Science and Computer Engineering'),
    ('Csc130', 'Data Structures and Algorithms', 'Computer Science and Computer Engineering'),
    ('Math30', 'CalculusI', 'Mathematics and Statistic');

INSERT INTO Section VALUES
    ('Csc133', '01-DIS Regular', 'Pinar Muyan-Ozcelik'),
    ('Csc134', '01-DIS Regular', 'Xiaoyan Sun'),
    ('Csc137', '01-LEC Regular', 'Nikrouz Faroughi'),
    ('Csc137', '02-LEC Regular', 'W Chang'),
    ('Csc137', '03-LEC Regular', 'W Chang'),
    ('Csc130', '01-DIS Regular', 'Yuan Cheng'),
    ('Csc130', '04-DIS Regular', 'Yu Chen'),
    ('Math30', '08-DIS Regular', 'Tamara Prilepina');

INSERT INTO Student VALUES
    (223445676, 'Kaitlin', 'Rothe', '8550 1st Street', 'Folsom', 'CA', 95630),
    (123344567, 'Jeff', 'Scrugg', '131 Farham Drive', 'Folsom', 'CA', 95630),
    (134657890, 'Justin', 'Smith', '234 Jacks Drive', 'Sacramento', 'CA', 95825),
    (657489873, 'Jody', 'Gaboleo', '999 2nd Street', 'Citrus Heights', 'CA', 95621),
    (769451234, 'Bahman', 'Ashtari', '777 Kingwood Court', 'Citrus Heights', 'CA', 95621);

INSERT INTO Exam VALUES
    ('Csc133', '01-DIS Regular', 3013, '2016-12-09', '01:15:00'),
    ('Csc134', '01-DIS Regular', 3014, '2016-12-08', '11:00:00'),
    ('Csc137', '01-LEC Regular', 3017, '2016-12-10', '04:15:00'),
    ('Csc137', '02-LEC Regular', 3027, '2016-12-10', '05:30:00'),
    ('Csc137', '03-LEC Regular', 3037, '2016-12-10', '10:00:00'),
    ('Csc130', '01-DIS Regular', 3010, '2016-12-11', '10:30:00'),
    ('Csc130', '04-DIS Regular', 3040, '2016-12-11', '07:00:00'),
    ('Math30', '08-DIS Regular', 1380, '2016-12-12', '09:00:00');

INSERT INTO ClassRoom VALUES
    (2202, 'RVR', 35),
    (2205, 'RVR', 30),
    (2210, 'RVR', 60),
    (2230, 'Santa Clara', 35),
    (8702, 'Tahoe Hall', 40),
    (2018, 'Amador Hall', 35);

INSERT INTO ConductedIn VALUES
    (2202, 'RVR', 'Csc133', '01-DIS Regular', 3013),
    (2205, 'RVR', 'Csc137', '01-LEC Regular', 3017),
    (2205, 'RVR', 'Csc137', '02-LEC Regular', 3027),
    (2210, 'RVR', 'Csc137', '03-LEC Regular', 3037),
    (2210, 'RVR', 'Csc130', '01-DIS Regular', 3010),
    (2230, 'Santa Clara', 'Csc130', '04-DIS Regular', 3040),
    (2018, 'Amador Hall', 'Csc134', '01-DIS Regular', 3014),
    (8702, 'Tahoe Hall', 'Math30', '08-DIS Regular', 1380);

INSERT INTO Takes VALUES
    (223445676, 'Csc133', '01-DIS Regular', 3013, 'A'),
    (223445676, 'Csc137', '01-LEC Regular', 3017, 'A'),
    (223445676, 'Csc130', '01-DIS Regular', 3010, 'A'),
    (223445676, 'Csc134', '01-DIS Regular', 3014, 'A'),
    (123344567, 'Csc133', '01-DIS Regular', 3013, 'C'),
    (123344567, 'Math30', '08-DIS Regular', 1380, 'A'),
    (123344567, 'Csc134', '01-DIS Regular', 3014, 'A'),
    (123344567, 'Csc137', '02-LEC Regular', 3027, 'A'),
    (134657890, 'Csc133', '01-DIS Regular', 3013, 'C'),
    (134657890, 'Csc134', '01-DIS Regular', 3014, 'C'),
    (657489873, 'Math30', '08-DIS Regular', 1380, 'A'),
    (657489873, 'Csc130', '04-DIS Regular', 3040, 'C'),
    (769451234, 'Csc130', '04-DIS Regular', 3040, 'B'),
    (769451234, 'Csc134', '01-DIS Regular', 3014, 'B'),
    (769451234, 'Csc133', '01-DIS Regular', 3013, 'C');

INSERT INTO Enrolls VALUES
    (223445676, 'Csc133', '01-DIS Regular'),
    (223445676, 'Csc137', '01-LEC Regular'),
    (223445676, 'Csc130', '01-DIS Regular'),
    (223445676, 'Csc134', '01-DIS Regular'),
    (123344567, 'Csc133', '01-DIS Regular'),
    (123344567, 'Math30', '08-DIS Regular'),
    (123344567, 'Csc134', '01-DIS Regular'),
    (123344567, 'Csc137', '02-LEC Regular'),
    (134657890, 'Csc133', '01-DIS Regular'),
    (134657890, 'Csc134', '01-DIS Regular'),
    (657489873, 'Math30', '08-DIS Regular'),
    (657489873, 'Csc130', '04-DIS Regular'),
    (769451234, 'Csc130', '04-DIS Regular'),
    (769451234, 'Csc134', '01-DIS Regular'),
    (769451234, 'Csc133', '01-DIS Regular');