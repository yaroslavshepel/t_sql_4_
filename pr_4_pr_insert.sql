insert into [Specializations_PR] ([Name])
values 
    ('Cardiology'),
    ('Neurology'),
    ('Oncology'),
    ('Orthopedics'),
    ('Dermatology'),
    ('Gastroenterology'),
    ('Endocrinology'),
    ('Pulmonology'),
    ('Hematology'),
    ('Urology'),
    ('Rheumatology');

insert into [Departments_PR] ([Name])
values 
    ('Intensive Treatment'),
    ('Surgery'),
    ('Pediatrics'),
    ('Emergency'),
    ('Oncology'),
    ('Radiology'),
    ('Dermatology'),
    ('Neurology'),
    ('Orthopedics'),
    ('Gastroenterology'),
    ('Endocrinology');

insert into [Doctors_PR] ([Name], [Premium], [Salary], [Surname])
values 
    ('John', 500, 5000, 'Doe'),
    ('Jane', 600, 5500, 'Smith'),
    ('Michael', 400, 4800, 'Johnson'),
    ('Emily', 550, 6000, 'Williams'),
    ('David', 480, 5200, 'Brown'),
    ('Sarah', 650, 5800, 'Miller'),
    ('Robert', 420, 4900, 'Davis'),
    ('Jessica', 700, 6200, 'Wilson'),
    ('William', 530, 5700, 'Moore'),
    ('Jennifer', 480, 5100, 'Taylor'),
    ('Christopher', 580, 6300, 'Anderson');

insert into [DoctorsSpecializations_PR] ([Doctor_Id], [SpecializationId])
values 
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
    (1, 5),
    (2, 6),
    (3, 7),
    (4, 8),
    (5, 9),
    (6, 10),
    (7, 11),
    (8, 1),
    (9, 2),
    (10, 3),
    (11, 4);*/

insert into [Sponsor_PR] ([Name])
values 
    ('Umbrella Corporation'),
    ('Wayne Enterprises'),
    ('Stark Industries'),
    ('LexCorp'),
    ('Oscorp'),
    ('Queen Industries'),
    ('Rand Enterprises'),
    ('Benthic Petroleum'),
    ('Palmer Technologies'),
    ('Merlyn Global Group'),
    ('Kord Industries');

insert into [Donations_PR] ([Amount], [Date])
values 
    (120000, '2024-07-15'),
    (90000, '2024-09-10'),
    (150000, '2024-08-25'),
    (180000, '2024-05-01'),
    (85000, '2024-05-05'),
    (135000, '2024-05-10'),
    (125000, '2024-05-15'),
    (95000, '2024-06-20'),
    (140000, '2024-07-25'),
    (160000, '2024-05-01'),
    (110000, '2024-05-05');

insert into [Vacations_PR] ([Start_Date], [End_Date])
values 
    ('2024-04-01', '2024-04-10'),
    ('2024-04-05', '2024-04-15'),
    ('2024-04-08', '2024-04-17'),
    ('2024-04-11', '2024-04-20'),
    ('2024-04-15', '2024-04-24'),
    ('2024-04-20', '2024-04-29'),
    ('2024-04-25', '2024-05-04'),
    ('2024-05-01', '2024-05-10'),
    ('2024-05-05', '2024-05-14'),
    ('2024-05-10', '2024-05-19'),
    ('2024-05-15', '2024-05-24');

insert into [Wards] ([Name])
values 
    ('Ward A'),
    ('Ward B'),
    ('Ward C'),
    ('Ward D'),
    ('Ward E'),
    ('Ward F'),
    ('Ward G'),
    ('Ward H'),
    ('Ward I'),
    ('Ward J'),
    ('Ward K');
