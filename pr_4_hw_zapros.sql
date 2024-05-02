use pr_4
go

/*1*/
SELECT 
    T.[Name] AS TeacherFirstName,
    T.[Surname] AS TeacherLastName,
    G.[Name] AS GroupName
FROM 
    [Teachers_HW] AS T,
    [Groups_HW] AS G;

/*2*/
SELECT 
    F.[Name] AS FacultyName
FROM 
    [Faculties_HW] AS F
WHERE 
    EXISTS (
        SELECT 1
        FROM [Departments_HW] AS D
        WHERE D.[FacultyId] = F.[Id]
          AND D.[Financing] > F.[Financing]
    );

/*3*/
SELECT 
    C.[Surname] AS CuratorSurname,
    G.[Name] AS GroupName
FROM 
    [Curators_HW] AS C
JOIN 
    [GroupsCurators_HW] AS GC
ON 
    C.[Id] = GC.[CuratorId]
JOIN 
    [Groups_HW] AS G
ON 
    GC.[GroupId] = G.[Id];

/*4*/
SELECT 
    T.[Name] AS TeacherFirstName,
    T.[Surname] AS TeacherLastName
FROM 
    [Teachers_HW] AS T
JOIN 
    [Lectures_HW] AS L
ON 
    T.[Id] = L.[TeacherId]
JOIN 
    [GroupsLectures_HW] AS GL
ON 
    L.[Id] = GL.[LectureId]
JOIN 
    [Groups_HW] AS G
ON 
    GL.[GroupId] = G.[Id]
WHERE 
    G.[Name] = 'P107';

/*5*/
SELECT 
    T.[Surname] AS TeacherLastName,
    F.[Name] AS FacultyName
FROM 
    [Teachers_HW] AS T
JOIN 
    [Lectures_HW] AS L
ON 
    T.[Id] = L.[TeacherId]
JOIN 
    [GroupsLectures_HW] AS GL
ON 
    L.[Id] = GL.[LectureId]
JOIN 
    [Groups_HW] AS G
ON 
    GL.[GroupId] = G.[Id]
JOIN 
    [Departments_HW] AS D
ON 
    G.[DepartmentId] = D.[Id]
JOIN 
    [Faculties_HW] AS F
ON 
    D.[FacultyId] = F.[Id];

/*6*/
SELECT 
    D.[Name] AS DepartmentName,
    G.[Name] AS GroupName
FROM 
    [Departments_HW] AS D
JOIN 
    [Groups_HW] AS G
ON 
    D.[Id] = G.[DepartmentId];

/*7*/
SELECT 
    S.[Name] AS SubjectName
FROM 
    [Subjects_HW] AS S
JOIN 
    [Lectures_HW] AS L
ON 
    S.[Id] = L.[SubjectId]
JOIN 
    [Teachers_HW] AS T
ON 
    L.[TeacherId] = T.[Id]
WHERE 
    T.[Name] = 'Samantha'
    AND T.[Surname] = 'Adams';

/*8*/
SELECT 
    D.[Name] AS DepartmentName
FROM 
    [Departments_HW] AS D
JOIN 
    [Groups_HW] AS G
ON 
    D.[Id] = G.[DepartmentId]
JOIN 
    [GroupsLectures_HW] AS GL
ON 
    G.[Id] = GL.[GroupId]
JOIN 
    [Lectures_HW] AS L
ON 
    GL.[LectureId] = L.[Id]
JOIN 
    [Subjects_HW] AS S
ON 
    L.[SubjectId] = S.[Id]
WHERE 
    S.[Name] = 'Database Theory';

/*9*/
SELECT 
    G.[Name] AS GroupName
FROM 
    [Groups_HW] AS G
JOIN 
    [Departments_HW] AS D
ON 
    G.[DepartmentId] = D.[Id]
JOIN 
    [Faculties_HW] AS F
ON 
    D.[FacultyId] = F.[Id]
WHERE 
    F.[Name] = 'Computer Science';

/*10*/
SELECT 
    G.[Name] AS GroupName,
    F.[Name] AS FacultyName
FROM 
    [Groups_HW] AS G
JOIN 
    [Departments_HW] AS D
ON 
    G.[DepartmentId] = D.[Id]
JOIN 
    [Faculties_HW] AS F
ON 
    D.[FacultyId] = F.[Id]
WHERE 
    G.[Year] = 5;

/*11*/
SELECT 
    T.[Name] + ' ' + T.[Surname] AS TeacherFullName,
    S.[Name] AS SubjectName,
    G.[Name] AS GroupName
FROM 
    [Lectures_HW] AS L
JOIN 
    [Teachers_HW] AS T
ON 
    L.[TeacherId] = T.[Id]
JOIN 
    [Subjects_HW] AS S
ON 
    L.[SubjectId] = S.[Id]
JOIN 
    [GroupsLectures_HW] AS GL
ON 
    L.[Id] = GL.[LectureId]
JOIN 
    [Groups_HW] AS G
ON 
    GL.[GroupId] = G.[Id]
WHERE 
    L.[LectureRoom] = 'B103';
