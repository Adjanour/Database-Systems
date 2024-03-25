Use indian_census;
-- Insert statements for Census table
INSERT INTO Census (CensusYear, Notes, INPopulation)
VALUES
    ('2022-01-01', 'National Census', 1400000000),
    ('2010-01-01', 'Previous Census', 1200000000),
    ('2000-01-01', 'Previous Census', 1000000000),
    ('1990-01-01', 'Previous Census', 870000000),
    ('1980-01-01', 'Previous Census', 700000000),
    ('1970-01-01', 'Previous Census', 550000000),
    ('1960-01-01', 'Previous Census', 450000000),
    ('1950-01-01', 'Previous Census', 360000000),
    ('1940-01-01', 'Previous Census', 280000000),
    ('1930-01-01', 'Previous Census', 230000000);

-- Insert statements for State table
INSERT INTO State (StateName, Area)
VALUES
    ('California', 163695.57),
    ('Texas', 268596.46),
    ('Florida', 65757.70),
    ('New York', 54554.98),
    ('Illinois', 57913.55),
    ('Arizona', 113990.30),
    ('Colorado', 104093.67),
    ('Nevada', 110571.82),
    ('Oregon', 98378.54),
    ('Washington', 184665.11);

-- Insert statements for StateParticipate table
INSERT INTO StateParticipate (StateName, CensusYear, StatePopulation)
VALUES
    ('California', '2022-01-01', 40000000),
    ('Texas', '2022-01-01', 32000000),
    ('Florida', '2022-01-01', 21000000),
    ('New York', '2022-01-01', 19000000),
    ('Illinois', '2022-01-01', 13000000),
    ('Arizona', '2022-01-01', 9000000),
    ('Colorado', '2022-01-01', 8000000),
    ('Nevada', '2022-01-01', 6000000),
    ('Oregon', '2022-01-01', 5000000),
    ('Washington', '2022-01-01', 7000000);

-- Insert statements for Person table
INSERT INTO Person (SSN, Name, Birthday, AddressID)
VALUES
    (1234567890, 'John Doe', '1985-05-10', 1),
    (9876543210, 'Jane Smith', '1990-09-20', 2),
    (4567890123, 'Michael Johnson', '1978-11-30', 3),
    (7890123456, 'Emily Brown', '2000-03-15', 4),
    (2345678901, 'Daniel Lee', '1995-07-25', 5),
    (6789012345, 'Olivia Wilson', '1980-01-05', 6),
    (3456789012, 'William Davis', '1988-09-18', 7),
    (8901234567, 'Sophia Anderson', '2005-12-08', 8),
    (5678901234, 'James Rodriguez', '1970-06-12', 9),
    (9012345678, 'Ava Martinez', '1965-04-22', 10);

-- Insert statements for PersonParticipate table
INSERT INTO PersonParticipate (SSN, CensusYear, PersonAge)
VALUES
    (1234567890, '2022-01-01', 37),
    (9876543210, '2022-01-01', 32),
    (4567890123, '2022-01-01', 43),
    (7890123456, '2022-01-01', 22),
    (2345678901, '2022-01-01', 27),
    (6789012345, '2022-01-01', 42),
    (3456789012, '2022-01-01', 34),
    (8901234567, '2022-01-01', 17),=                                          
    (5678901234, '2022-01-01', 52),
    (9012345678, '2022-01-01', 57);

-- Insert statements for Address table
INSERT INTO Address (AddressID, Street, City, State, ZipCode)
VALUES
    (1, '123 Main St', 'Cityville', 'California', '12345'),
    (2, '456 Elm St', 'Townsville', 'Texas', '67890'),
    (3, '789 Oak St', 'Villageland', 'Florida', '45678'),
    (4, '567 Pine St', 'Hamletown', 'New York', '56789'),
    (5, '987 Maple St', 'Suburbia', 'Illinois', '34567'),
    (6, '654 Cherry St', 'Desert City', 'Arizona', '23456'),
    (7, '321 Walnut St', 'Mountain Town', 'Colorado', '78901'),
    (8, '890 Spruce St', 'Oasisville', 'Nevada', '90123'),
    (9, '432 Birch St', 'Forestburg', 'Oregon', '67890'),
    (10, '876 Cedar St', 'Beachside', 'Washington', '34567');
