CREATE DATABASE Indian_Census;
-- Create Census table
CREATE TABLE Census (
  CensusYear DATE,
  Notes VARCHAR(50),
  INPopulation INT
);

-- Create State table
CREATE TABLE State (
  StateName VARCHAR(50),
  Area DECIMAL
);

-- Create StateParticipate table
CREATE TABLE StateParticipate (
  StateName VARCHAR(25),
  CensusYear DATE,
  StatePopulation INT
);

-- Create Person table
CREATE TABLE Person (
  SSN INT,
  Name VARCHAR(25),
  Birthday DATE,
  AddressID INT
);

-- Create PersonParticipate table
CREATE TABLE PersonParticipate (
  SSN INT,
  CensusYear DATE,
  PersonAge INT
);

-- Create Address table
CREATE TABLE Address (
  AddressID INT,
  Street VARCHAR(25),
  City VARCHAR(25),
  State VARCHAR(25),
  ZipCode VARCHAR(25)
);

-- Set primary key for Census table
Alter table Census add column CensusID int primary key auto_increment ;

-- Set primary key for State table
Alter table State add column StateID int primary key auto_increment;

-- Set primary key for StateParticipate table
Alter table StateParticipate add column StateParticipateID int primary key auto_increment;

-- Set primary key for Person table
Alter table Person add column PersonID int primary key auto_increment;

-- Set primary key for PersonParticipate table
Alter table PersonParticipate add column PersonParticipateID int primary key auto_increment;

-- Set primary key for Address table
ALTER TABLE Address ADD PRIMARY KEY (AddressID);

-- Insert values into Census table
INSERT INTO Census (CensusYear, Notes, INPopulation)
VALUES ('2022-01-01', 'Note 1', 100000),
       ('2023-01-01', 'Note 2', 150000);

-- Insert values into State table
INSERT INTO State (StateName, Area)
VALUES ('California', 163696.32),
       ('Texas', 695662.17);

-- Insert values into StateParticipate table
INSERT INTO StateParticipate (StateName, CensusYear, StatePopulation)
VALUES ('California', '2022-01-01', 40000000),
       ('Texas', '2023-01-01', 29000000);

-- Insert values into Person table
INSERT INTO Person (SSN, Name, Birthday, AddressID)
VALUES (123456789, 'John Doe', '1990-05-15', 1),
       (987654321, 'Jane Smith', '1985-09-20', 2);

-- Insert values into PersonParticipate table
INSERT INTO PersonParticipate (SSN, CensusYear, PersonAge)
VALUES (123456789, '2022-01-01', 32),
       (987654321, '2023-01-01', 37);

-- Insert values into Address table
INSERT INTO Address (AddressID, Street, City, State, ZipCode)
VALUES (1, '123 Main St', 'Los Angeles', 'California', '90001'),
       (2, '456 Elm St', 'Houston', 'Texas', '77001');

