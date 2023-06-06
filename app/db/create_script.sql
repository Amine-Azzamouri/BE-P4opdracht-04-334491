-- Step: 01
-- Goal: Create a new database mvc-2209a-P4-Toets
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

-- Check if the database exists
DROP DATABASE IF EXISTS `Mvc-2209a-P4-Toets`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `Mvc-2209a-P4-Toets`;

-- Use database Mvc-2209a-P4
Use `Mvc-2209a-P4-Toets`;


-- Step: 02
-- Goal: Create a new table Examen
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

-- Drop table Instructeur
DROP TABLE IF EXISTS Examen;

CREATE TABLE IF NOT EXISTS Examen
(
    Id              			TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,StudentId       			VARCHAR(50)                     NOT NULL
   ,Rijschool   				VARCHAR(10)                     NOT NULL
   ,Stad      					VARCHAR(50)                     NOT NULL
   ,Rijbewijscategorie          VARCHAR(12)                     NOT NULL
   ,Datum   					DATE                            NOT NULL
   ,Uitslag   					VARCHAR(6)                      NOT NULL
   ,IsActief        			BIT                             NOT NULL    DEFAULT 1
   ,Opmerkingen     			VARCHAR(250)                        NULL    DEFAULT NULL
   ,DatumAangemaakt 			DateTime(6)                     NOT NULL
   ,DatumGewijzigd  			DateTime(6)                     NOT NULL

   ,CONSTRAINT      PK_Instructeur_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;


-- Step: 03
-- Goal: Fill table Instructeur with data
-- **********************************************************************************

-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

INSERT INTO Examen
(
	StudentId       			
   ,Rijschool   				
   ,Stad      					
   ,Rijbewijscategorie          
   ,Datum   					
   ,Uitslag   					
   ,IsActief        			
   ,Opmerkingen     			
   ,DatumAangemaakt 			
   ,DatumGewijzigd  
)
VALUES
     ('100234', 'VolGasVooruit', 'Rotterdam', 'B', '2023-03-04', 'Geslaagd' 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-01-03', 'Geslaagd' 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('103234', 'LinksomRechtsom', 'Dordrecht', 'D', '2023-15-05', 'Geslaagd' 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-08-05', 'Gezakt', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-17-04', 'Gezakt' 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-12-05', 'Geslaagd', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('124444', 'RijlesVoorJou', 'Rotterdam', 'B', '2023-12-04', 'Geslaagd' 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 04
-- Goal: Create a new table ExamenPerExaminator
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

-- Drop table TypeVoertuig
DROP TABLE IF EXISTS ExamenPerExaminator;

CREATE TABLE IF NOT EXISTS ExamenPerExaminator
(
    Id                  TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,ExamenId        	VARCHAR(20)                     NOT NULL
   ,ExaminatorId  		VARCHAR(5)                      NOT NULL
   ,IsActief            BIT                             NOT NULL    DEFAULT 1
   ,Opmerkingen         VARCHAR(250)                        NULL    DEFAULT NULL
   ,DatumAangemaakt     DateTime(6)                     NOT NULL
   ,DatumGewijzigd      DateTime(6)                     NOT NULL

   ,CONSTRAINT      PK_TypeVoertuig_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;


-- Step: 05
-- Goal: Fill table TypeVoertuig with data
-- **********************************************************************************

-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

INSERT INTO ExamenPerExaminator
(
	ExamenId        	
   ,ExaminatorId  		
   ,IsActief           
   ,Opmerkingen         
   ,DatumAangemaakt     
   ,DatumGewijzigd      
)
VALUES
     ('1', '3', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('3', '3', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('2', '2', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('4', '1', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('7', '3', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('6', '2', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('5', '4', 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 06
-- Goal: Create a new table Voertuig
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

-- Drop table Voertuig
DROP TABLE IF EXISTS Examinator;

CREATE TABLE IF NOT EXISTS Examinator
(
    Id                  TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,Voornaam            VARCHAR(12)                     NOT NULL
   ,Tussenvoegsel       VARCHAR(20)                     NOT NULL
   ,Achternaam          DATE                            NOT NULL
   ,Mobiel          	VARCHAR(20)                     NOT NULL  
   ,IsActief            BIT                             NOT NULL    DEFAULT 1
   ,Opmerkingen         VARCHAR(250)                        NULL    DEFAULT NULL
   ,DatumAangemaakt     DateTime(6)                     NOT NULL
   ,DatumGewijzigd      DateTime(6)                     NOT NULL

   ,CONSTRAINT      PK_Voertuig_Id   PRIMARY KEY CLUSTERED(Id)
   ,CONSTRAINT      FK_Voertuig_TypeVoertuigId_TypeVoertuig_Id  FOREIGN KEY (TypeVoertuigId) REFERENCES TypeVoertuig(Id)
) ENGINE=InnoDB;


-- Step: 07
-- Goal: Fill table Voertuig with data
-- **********************************************************************************

-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

INSERT INTO Examinator
(
   Voornaam           
   ,Tussenvoegsel     
   ,Achternaam        
   ,Mobiel          
   ,IsActief           
   ,Opmerkingen        
   ,DatumAangemaakt     
   ,DatumGewijzigd    
)
VALUES
     ('AU-67-IO', 'Golf', '2017-06-12', 'Diesel', 1, 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('TR-24-OP', 'DAF', '2019-05-23', 'Diesel', 2, 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('TH-78-KL', 'Mercedes', '2023-01-01', 'Benzine', 1, 1, NULL, SYSDATE(6), SYSDATE(6))
    ,('45-SD-23', 'Renault', '2023-01-01', 'Diesel', 3, 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 08
-- Goal: Create a new table VoertuigInstructeur
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

-- Drop table VoertuigInstructeur
DROP TABLE IF EXISTS VoertuigInstructeur;

CREATE TABLE IF NOT EXISTS VoertuigInstructeur
(
    Id                  TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,VoertuigId          TINYINT         UNSIGNED        NOT NULL
   ,InstructeurId       TINYINT         UNSIGNED        NOT NULL
   ,DatumToekenning     DATE                            NOT NULL
   ,IsActief            BIT                             NOT NULL    DEFAULT 1
   ,Opmerkingen         VARCHAR(250)                        NULL    DEFAULT NULL
   ,DatumAangemaakt     DateTime(6)                     NOT NULL
   ,DatumGewijzigd      DateTime(6)                     NOT NULL

   ,CONSTRAINT      PK_VoertuigInstructeur_Id   PRIMARY KEY CLUSTERED(Id)
   ,CONSTRAINT      FK_VoertuigInstructeur_VoertuigId_Voertuig_Id  FOREIGN KEY (VoertuigId) REFERENCES Voertuig(Id)
   ,CONSTRAINT      FK_VoertuigInstructeur_InstructeurId_Instructeur_Id  FOREIGN KEY (InstructeurId) REFERENCES Instructeur(Id)
) ENGINE=InnoDB;


-- Step: 09
-- Goal: Fill table VoertuigInstructeur with data
-- **********************************************************************************

-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            30-05-2023      Amine Azzamouri            New
-- **********************************************************************************/

INSERT INTO VoertuigInstructeur
(
     VoertuigId
    ,InstructeurId
    ,DatumToekenning
    ,IsActief
    ,Opmerkingen
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     (1, 5, '2017-06-18', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,(3, 1, '2021-09-26', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,(9, 1, '2021-09-27', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,(3, 4, '2022-08-01', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,(5, 1, '2019-08-30', 1, NULL, SYSDATE(6), SYSDATE(6))
    ,(10, 5, '2020-02-02', 1, NULL, SYSDATE(6), SYSDATE(6));
   
