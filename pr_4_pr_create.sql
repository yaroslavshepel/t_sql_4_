create table [Specializations_PR](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(100) unique not null
);

create table [Departments_PR](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(100) unique not null
);

create table [Doctors_PR](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(max) check(len([Name])>0) not null,
	[Premium] money check([Premium]>=0) default 0 not null,
	[Salary] money check([Salary]>=0) not null,
	[Surname] nvarchar(max) check(len([Surname])>0) not null
);

create table [DoctorsSpecializations_PR](
	Id int primary key identity(1,1) not null,
	[Doctor_Id] int foreign key references [Doctors_PR]([Id]),
	[SpecializationId] int foreign key references [Specializations_PR]([Id])
);

create table [Sponsor_PR](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(100) unique not null
);

create table [Donations_PR](
	Id int primary key identity(1,1) not null,
	[Amount] money check([Amount]>0) not null,
	[Date] date default getdate() check([Date]>=getdate()) not null,
	[Depatment_Id] int foreign key references [Departments_PR]([Id]),
	[Sponsor_Id] int foreign key references [Sponsor_PR]([Id])
);

create table [Vacations_PR](
	Id int primary key identity(1,1) not null,
	[Start_Date] date not null,
	[End_Date] date not null,
	
	[Doctor_Id] int foreign key references [Doctors_PR]([Id]),
	constraint CK_DATE_CHECK check([End_Date]>[Start_Date]) 
);

create table [Wards](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(20) unique check(len([Name])>0) not null,
	[Department_Id] int foreign key references [Departments_PR]([Id])
);