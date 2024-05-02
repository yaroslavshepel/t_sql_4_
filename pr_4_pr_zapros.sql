use pr_4
go
/*1*/
SELECT 
    CONCAT(d.[Name], ' ', d.[Surname]) AS FullName,
    s.[Name] AS Specialization
FROM 
    [DoctorsSpecializations_PR] ds
JOIN 
    [Doctors_PR] d ON ds.[Doctor_Id] = d.[Id]
JOIN 
    [Specializations_PR] s ON ds.[SpecializationId] = s.[Id];

/*2*/
SELECT 
    d.[Surname],
    d.[Salary] + d.[Premium] AS TotalSalary
FROM 
    [Doctors_PR] d
WHERE 
    d.[Id] NOT IN (
        SELECT 
            v.[Doctor_Id]
        FROM 
            [Vacations_PR] v
        WHERE 
            GETDATE() BETWEEN v.[Start_Date] AND v.[End_Date]
    );

/*3*/
SELECT 
    w.[Name] AS WardName
FROM 
    [Wards] w
JOIN 
    [Departments_PR] dp ON w.[Department_Id] = dp.[Id]
WHERE 
    dp.[Name] = 'Intensive Treatment';

/*4*/
SELECT DISTINCT
    dp.[Name] AS DepartmentName
FROM 
    [Donations_PR] d
JOIN 
    [Departments_PR] dp ON d.[Depatment_Id] = dp.[Id]
JOIN 
    [Sponsor_PR] s ON d.[Sponsor_Id] = s.[Id]
WHERE 
    s.[Name] = 'Umbrella Corporation';

/*5*/
SELECT 
    dp.[Name] AS DepartmentName,
    s.[Name] AS SponsorName,
    d.[Amount] AS DonationAmount,
    d.[Date] AS DonationDate
FROM 
    [Donations_PR] d
JOIN 
    [Departments_PR] dp ON d.[Depatment_Id] = dp.[Id]
JOIN 
    [Sponsor_PR] s ON d.[Sponsor_Id] = s.[Id]
WHERE 
    d.[Date] >= DATEADD(MONTH, -1, GETDATE());

/*8*/
SELECT 
    dp.[Name] AS DepartmentName,
    CONCAT(d.[Name], ' ', d.[Surname]) AS DoctorName
FROM 
    [Donations_PR] dn
JOIN 
    [Departments_PR] dp ON dn.[Depatment_Id] = dp.[Id]
JOIN 
    [Doctors_PR] d ON dp.[Id] = d.[Id]
WHERE 
    dn.[Amount] > 100000;

/*9*/
SELECT DISTINCT 
    dp.[Name] AS DepartmentName
FROM 
    [Doctors_PR] d
JOIN 
    [Departments_PR] dp ON d.[DepartmentId] = dp.[Id]
WHERE 
    d.[Premium] = 0;

/*10*/
SELECT DISTINCT 
	SP.[Name] AS Specialization_Name
FROM 
	Specializations_PR SP
INNER JOIN 
	DoctorsSpecializations_PR DSP ON SP.Id = DSP.SpecializationId
INNER JOIN 
	Doctors_PR DR ON DSP.Doctor_Id = DR.Id
WHERE 
	DR.Severity > 3;

/*11*/
SELECT DISTINCT 
	DP.[Name] AS Department_Name, SP.[Name] AS Specialization_Name
FROM 
	Departments_PR DP
INNER JOIN 
	Wards WD ON DP.Id = WD.Department_Id
INNER JOIN 
	Schedule S ON WD.Id = S.Ward_Id
INNER JOIN 
	DoctorsSpecializations_PR DSP ON S.Doctor_Id = DSP.Doctor_Id
INNER JOIN 
	Specializations_PR SP ON DSP.SpecializationId = SP.Id
WHERE 
	S.[Date] >= DATEADD(MONTH, -6, GETDATE());