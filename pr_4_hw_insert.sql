use pr_4
go

INSERT INTO [Faculties_HW] ([Financing], [Name])
VALUES 
(50000, 'Faculty of Engineering'),
(60000, 'Faculty of Medicine'),
(70000, 'Faculty of Arts'),
(55000, 'Faculty of Science'),
(45000, 'Faculty of Business'),
(35000, 'Faculty of Law'),
(40000, 'Faculty of Agriculture'),
(30000, 'Faculty of Social Sciences'),
(25000, 'Faculty of Education'),
(48000, 'Faculty of IT'),
(51000, 'Faculty of Health Sciences'),
(53000, 'Faculty of Architecture'),
(27000, 'Faculty of Design'),
(52000, 'Faculty of Pharmacy'),
(56000, 'Faculty of Humanities');

INSERT INTO [Departments_HW] ([Financing], [Name], [FacultyId])
VALUES 
(20000, 'Department of Computer Science', 1),
(21000, 'Department of Mechanical Engineering', 1),
(22000, 'Department of Civil Engineering', 1),
(23000, 'Department of Electrical Engineering', 1),
(18000, 'Department of Software Engineering', 1),
(20000, 'Department of Medicine', 2),
(21000, 'Department of Nursing', 2),
(17000, 'Department of Fine Arts', 3),
(19000, 'Department of Physics', 4),
(15000, 'Department of Chemistry', 4),
(18000, 'Department of Economics', 5),
(17000, 'Department of Law', 6),
(14000, 'Department of Biology', 4),
(12000, 'Department of Psychology', 8),
(17000, 'Department of Environmental Science', 7);

INSERT INTO [Curators_HW] ([Name], [Surname])
VALUES 
('Alice', 'Johnson'),
('Bob', 'Smith'),
('Charlie', 'Brown'),
('David', 'Williams'),
('Eve', 'Davis'),
('Frank', 'Miller'),
('Grace', 'Wilson'),
('Hannah', 'Moore'),
('Ivy', 'Taylor'),
('Jack', 'Anderson'),
('Kate', 'Thomas'),
('Luke', 'Jackson'),
('Mia', 'White'),
('Noah', 'Harris'),
('Olivia', 'Martin');

INSERT INTO [Groups_HW] ([Name], [Year], [DepartmentId])
VALUES 
('CS101', 1, 1),
('CS201', 2, 1),
('ME301', 3, 2),
('CE401', 4, 3),
('EE501', 5, 4),
('SW101', 1, 5),
('MD201', 2, 6),
('NU301', 3, 7),
('FA401', 4, 8),
('PH501', 5, 9),
('CH101', 1, 10),
('EC201', 2, 11),
('LW301', 3, 12),
('BI401', 4, 13),
('PS501', 5, 14);

INSERT INTO [Teachers_HW] ([Name], [Surname], [Salary])
VALUES 
('Alice', 'Johnson', 3000),
('Bob', 'Smith', 3500),
('Charlie', 'Brown', 3200),
('David', 'Williams', 3400),
('Eve', 'Davis', 3600),
('Frank', 'Miller', 3100),
('Grace', 'Wilson', 3300),
('Hannah', 'Moore', 3700),
('Ivy', 'Taylor', 3800),
('Jack', 'Anderson', 3200),
('Kate', 'Thomas', 3100),
('Luke', 'Jackson', 3300),
('Mia', 'White', 3100),
('Noah', 'Harris', 3400),
('Olivia', 'Martin', 3600);

INSERT INTO [Subjects_HW] ([Name])
VALUES 
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('Computer Science'),
('Software Engineering'),
('Mechanical Engineering'),
('Civil Engineering'),
('Electrical Engineering'),
('Medicine'),
('Nursing'),
('Fine Arts'),
('Economics'),
('Law'),
('Psychology');

INSERT INTO [Lectures_HW] ([LectureRoom], [SubjectId], [TeacherId])
VALUES 
('Room 101', 1, 1),
('Room 102', 2, 2),
('Room 103', 3, 3),
('Room 104', 4, 4),
('Room 105', 5, 5),
('Room 106', 6, 6),
('Room 107', 7, 7),
('Room 108', 8, 8),
('Room 109', 9, 9),
('Room 110', 10, 10),
('Room 201', 11, 11),
('Room 202', 12, 12),
('Room 203', 13, 13),
('Room 204', 14, 14),
('Room 205', 15, 15);

INSERT INTO [GroupsCurators_HW] ([CuratorId], [GroupId])
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO [GroupsLectures_HW] ([GroupId], [LectureId])
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);
