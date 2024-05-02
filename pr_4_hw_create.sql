CREATE TABLE [Faculties_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Financing] MONEY NOT NULL CHECK ([Financing] >= 0) DEFAULT 0,
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE [Departments_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Financing] MONEY NOT NULL CHECK (Financing >= 0) DEFAULT 0,
    [Name] NVARCHAR(100) NOT NULL UNIQUE,
    [FacultyId] INT NOT NULL,
    FOREIGN KEY ([FacultyId]) REFERENCES [Faculties_HW](Id)
);

CREATE TABLE [Curators_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(MAX) NOT NULL,
    [Surname] NVARCHAR(MAX) NOT NULL
);

CREATE TABLE [Groups_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(10) NOT NULL UNIQUE,
    [Year] INT NOT NULL CHECK ([Year] BETWEEN 1 AND 5),
    [DepartmentId] INT NOT NULL,
    FOREIGN KEY ([DepartmentId]) REFERENCES [Departments_HW](Id)
);

CREATE TABLE [Teachers_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(MAX) NOT NULL,
    [Surname] NVARCHAR(MAX) NOT NULL,
    [Salary] MONEY NOT NULL CHECK ([Salary] > 0)
);

CREATE TABLE [Subjects_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE [Lectures_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    LectureRoom NVARCHAR(MAX) NOT NULL,
    [SubjectId] INT NOT NULL,
    [TeacherId] INT NOT NULL,
    FOREIGN KEY ([SubjectId]) REFERENCES [Subjects_HW](Id),
    FOREIGN KEY ([TeacherId]) REFERENCES [Teachers_HW](Id)
);

CREATE TABLE [GroupsCurators_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [CuratorId] INT NOT NULL,
    [GroupId] INT NOT NULL,
    FOREIGN KEY ([CuratorId]) REFERENCES [Curators_HW](Id),
    FOREIGN KEY ([GroupId]) REFERENCES [Groups_HW](Id)
);

CREATE TABLE [GroupsLectures_HW] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [GroupId] INT NOT NULL,
    [LectureId] INT NOT NULL,
    FOREIGN KEY ([GroupId]) REFERENCES [Groups_HW](Id),
    FOREIGN KEY ([LectureId]) REFERENCES [Lectures_HW](Id)
);
