--CREATE DATABASE SNAKES_DATABASE;

--USE SNAKES_DATABASE;

--CREATE TABLE SPECIES(
--SpeciesID INT PRIMARY KEY,
--CommonName VARCHAR(200) NOT NULL,
--ScientificName VARCHAR(200) NOT NULL,
--Habitat CHAR(200),
--Venomous BIT
--);
--SELECT * FROM SPECIES;

--CREATE TABLE SNAKES(
--SnakeID INT PRIMARY KEY,
--SpeciesID INT FOREIGN KEY REFERENCES SPECIES(SpeciesID),
--Length DECIMAL(10,2),
--Age INT,
--Color CHAR(40)
--);

--SELECT * FROM SNAKES;

--CREATE TABLE SIGHTINGS(
--SightingID INT PRIMARY KEY,
--SnakeID INT FOREIGN KEY REFERENCES SNAKES(SnakeID),
--Location VARCHAR(200),
--SightingDate DATETIME,
--Observer CHAR(200)
--);

--SELECT * FROM SIGHTINGS;

--CREATE TABLE CONSERVATIONSTATUS(
--StatusID INT PRIMARY KEY,
--SpeciesID INT FOREIGN KEY REFERENCES SPECIES(SpeciesID),
--Status VARCHAR(200),
--LastUpdated DATETIME
--);

--SELECT * FROM CONSERVATIONSTATUS;

--INSERT INTO SPECIES (SpeciesID, CommonName, ScientificName, Habitat, Venomous)
--VALUES 
--(1, 'King Cobra', 'Ophiophagus hannah', 'Tropical forests of South and Southeast Asia', 1),
--(2, 'Indian Python', 'Python molurus', 'Grasslands and forests of the Indian subcontinent', 0),
--(3, 'Ball Python', 'Python regius', 'Sub-Saharan Africa', 0),
--(4, 'Eastern Diamondback Rattlesnake', 'Crotalus adamanteus', 'Southeastern United States', 1),
--(5, 'Garter Snake', 'Thamnophis sirtalis', 'North America, typically near water', 0);

--INSERT INTO SPECIES (SpeciesID, CommonName, ScientificName, Habitat, Venomous)
--VALUES 
--(6, 'Reticulated Python', 'Malayopython reticulatus', 'Southeast Asia', 0),
--(7, 'Green Anaconda', 'Eunectes murinus', 'Rainforests and swamps of South America', 0),
--(8, 'Black Mamba', 'Dendroaspis polylepis', 'Sub-Saharan Africa', 1),
--(9, 'Copperhead', 'Agkistrodon contortrix', 'Eastern United States, wooded areas', 1),
--(10, 'King Brown Snake', 'Pseudechis australis', 'Australia, arid and semi-arid regions', 1),
--(11, 'Timber Rattlesnake', 'Crotalus-horridus', 'Eastern United States, deciduous forests', 1),
--(12, 'Boa Constrictor', 'Boa constrictor', 'Tropical rainforests and savannas of Central and South America', 0),
--(13, 'Cobra', 'Naja naja', 'India, Southeast Asia', 1),
--(14, 'Sidewinder Rattlesnake', 'Crotalus cerastes', 'Deserts of the southwestern United States', 1),
--(15, 'Bushmaster', 'Lachesis muta', 'Tropical forests of Central and South America', 1);

--INSERT INTO SNAKES (SnakeID, SpeciesID, Length, Age, Color)
--VALUES
--(1, 1, 4.5, 10, 'Olive green with yellowish stripes'),
--(2, 2, 6.3, 15, 'Brown with lighter underbelly'),
--(3, 3, 1.2, 7, 'Dark brown with yellow patterns'),
--(4, 4, 2.5, 5, 'Brownish-grey with diamond patterns'),
--(5, 5, 1.0, 3, 'Green with black stripes');

-- Inserting more records into the SNAKES table
--INSERT INTO SNAKES (SnakeID, SpeciesID, Length, Age, Color)
--VALUES
--    (6, 1, 3.2, 8, 'Green with brown patterns'),
--    (7, 2, 5.0, 12, 'Yellowish-brown with black spots'),
--    (8, 3, 4.7, 9, 'Dark grey with light grey patterns'),
--    (9, 4, 6.8, 20, 'Light brown with dark diamond patterns'),
--    (10, 5, 2.9, 6, 'Olive green with darker green stripes'),
--    (11, 1, 3.0, 4, 'Pale green with faint black markings'),
--    (12, 2, 4.2, 10, 'Golden yellow with black edges'),
--    (13, 3, 1.8, 5, 'Light brown with faint dark streaks'),
--    (14, 4, 7.2, 25, 'Dark brown with golden diamond shapes'),
--    (15, 5, 3.6, 11, 'Lime green with blackish stripes');

--INSERT INTO SIGHTINGS (SightingID, SnakeID, Location, SightingDate, Observer)
--VALUES
--(1, 1, 'Tropical forest near Kerala, India', '2023-05-15', 'Dr. Jane Doe'),
--(2, 2, 'Near the banks of the Ganges River, India', '2023-06-10', 'John Smith'),
--(3, 3, 'Sub-Saharan African savanna', '2023-07-22', 'Alice Johnson'),
--(4, 4, 'Everglades National Park, Florida', '2023-08-05', 'Michael Brown'),
--(5, 5, 'Lake Tahoe, California', '2023-08-20', 'Emily Davis');
--INSERT INTO SIGHTINGS (SightingID, SnakeID, Location, SightingDate, Observer)
--VALUES 
--(6, 6, 'Rainforests of Borneo, Malaysia', '2023-09-14', 'Dr. Jane Doe'),
--(7, 7, 'Swamps of the Amazon River, Brazil', '2023-10-03', 'John Smith'),
--(8, 8, 'Savannas of Kenya', '2023-11-01', 'Alice Johnson'),
--(9, 9, 'Woodlands near Atlanta, Georgia', '2023-11-12', 'Michael Brown'),
--(10, 10, 'Outback of Northern Territory, Australia', '2023-12-02', 'Emily Davis'),
--(11, 11, 'Appalachian Mountains, Tennessee', '2023-12-15', 'Dr. Jane Doe'),
--(12, 12, 'Tropical forests of Colombia', '2024-01-07', 'John Smith'),
--(13, 13, 'Jungles of India', '2024-02-04', 'Alice Johnson'),
--(14, 14, 'Sonoran Desert, Arizona', '2024-02-09', 'Michael Brown'),
--(15, 15, 'Rainforests of Costa Rica', '2024-02-18', 'Emily Davis');
--INSERT INTO CONSERVATIONSTATUS (StatusID, SpeciesID, Status, LastUpdated)
--VALUES
--(1, 1, 'Endangered - Population declining due to habitat loss and poaching', '2023-06-01'),
--(2, 2, 'Not Threatened - Stable population', '2023-04-15'),
--(3, 3, 'Least Concern - Population stable, no major threats', '2023-07-10'),
--(4, 4, 'Vulnerable - Declining due to habitat destruction and hunting', '2023-05-20'),
--(5, 5, 'Least Concern - Common and widespread', '2023-08-01');

--HERE I HAVE SOME MORE DATA TO CONSERVATION STATUS 

--INSERT INTO CONSERVATIONSTATUS (StatusID,SpeciesID, Status, LastUpdated)
--VALUES
--    (6,1, 'Endangered', '2024-05-01'),
--    (7,1, 'Vulnerable', '2023-09-15'),
--    (8,2, 'Critically Endangered', '2022-11-10'),
--    (9,2, 'Endangered', '2021-03-15'),
--    (10,2, 'Vulnerable', '2020-06-30'),
--    (11,3, 'Least Concern', '2022-01-01'),
--    (12,3, 'Vulnerable', '2021-08-22'),
--    (13,3, 'Endangered', '2021-12-10'),
--    (14,4, 'Endangered', '2023-07-20'),
--    (15,4, 'Vulnerable', '2022-12-15'),
--    (16,4, 'Critically Endangered', '2021-05-18');


--QUESTION 1

SELECT S.SightingDate FROM SIGHTINGS S LEFT JOIN SNAKES SN ON SN.SnakeID=S.SnakeID LEFT JOIN 
SPECIES SP ON SP.SpeciesID=SN.SpeciesID WHERE SP.CommonName='Garter Snake';


--QUESTION 2

SELECT SN.SpeciesID,SP.CommonName,AVG(SN.Length) AS AVERAGE_LENGTH FROM SNAKES SN JOIN 
SPECIES SP ON SP.SpeciesID=SN.SpeciesID GROUP BY SN.SpeciesID,SP.CommonName;

-- QUESTION 3;

-- CREATING ANOTHER VIEW FOR THE SNAKES AND SPECIES

--CREATE VIEW MYVIEW2
--AS 
--SELECT SN.SpeciesID,SN.SnakeID,SN.Length FROM SNAKES SN;

-- here by using the common table expression i have fetched the snakes rank wise

with mycte as (
SELECT *,DENSE_Rank() OVER (PARTITION BY SpeciesID ORDER BY Length desc) AS snake_rank FROM MYVIEW2
)

select * from mycte where snake_rank<=5;


--QUESTION 4

SELECT TOP 5 S.Observer,COUNT(DISTINCT(SN.SpeciesID)) AS DISTINCT_COUNT FROM SIGHTINGS S LEFT JOIN SNAKES SN ON 
SN.SnakeID=S.SnakeID GROUP BY S.Observer ORDER BY DISTINCT_COUNT DESC;
 
--QUESTION 5

SELECT  *,ROW_NUMBER() OVER (PARTITION BY SpeciesID ORDER BY LastUpdated) AS LASTUPDATED  FROM CONSERVATIONSTATUS;


--QUESTION 6

--HERE WE WILL USE THE VIEW TO STORE THE TABEL DATA

--CREATE VIEW MYVIEW
--AS
--SELECT SP.SpeciesID,S.SightingDate FROM SIGHTINGS S LEFT JOIN SNAKES SN ON SN.SnakeID=S.SnakeID LEFT JOIN Species SP ON 
--SP.SpeciesID=SN.SpeciesID;

SELECT V.SpeciesID FROM MYVIEW V JOIN CONSERVATIONSTATUS C ON C.SpeciesID=V.SpeciesID WHERE C.STATUS = 
'Endangered' GROUP BY V.SpeciesID HAVING COUNT(V.SpeciesID)>=10;
