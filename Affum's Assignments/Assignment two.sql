-- Creating the database
Create database indian_census;
use indian_census;
 
 -- Creating the table
Create table Census (CensusYear date , Notes varchar(50),INPopulation int );
Create table StateParticipate( StateName varchar(25), CensusYear date , Statepopulation int);  Create table Person(SSN int , Name varchar(25), Birthday date, AdressID int );
Create table PersonParticipate(SSN int, CensusYear date , PersonAge int);
Create table Adress(AddressID int , Street varchar(25), City varchar(25),State varchar(25) , Zipcode varchar(25) );
Create table Person(SSN int , Name varchar(25), Birthday date, AdressID int );
Create table State (StateName varchar(50), Area decimal);
 
 -- Adding the primary keys
Alter table Census add column CensusID int primary key auto_increment ;
Alter table State add column StateID int primary key auto_increment;
Alter table PersonParticipate add column PersonParticipateID int primary key auto_increment;
Alter table StateParticipate add column StateParticipateID int primary key auto_increment;
Alter table Person add column PersonID int primary key auto_increment;
Alter table Address change AddressID AdressID int primary key auto_increment;

-- Inserting the values
INSERT INTO Census (CensusYear, Notes, INPopulation)
VALUES ('2022-01-01', 'Note 1', 100000),
       ('2023-01-01', 'Note 2', 150000);

INSERT INTO StateParticipate (StateName, CensusYear, Statepopulation)
VALUES ('California', '2022-01-01', 40000000),
       ('Texas', '2023-01-01', 29000000);

INSERT INTO Person (SSN, Name, Birthday, AdressID)
VALUES (123456789, 'John Doe', '1990-05-15', 1),
       (987654321, 'Jane Smith', '1985-09-20', 2);

INSERT INTO PersonParticipate (SSN, CensusYear, PersonAge)
VALUES (123456789, '2022-01-01', 32),
       (987654321, '2023-01-01', 37);
       
INSERT INTO Address (AdressID, Street, City, State, Zipcode)
VALUES (1, '123 Main St', 'Los Angeles', 'California', '90001'),
       (2, '456 Elm St', 'Houston', 'Texas', '77001');
       
INSERT INTO State (StateName, Area)
VALUES ('California', 163696.32),
       ('Texas', 695662.17);


       



