--CREATE DATABASE PotteryFind;
--GO
--USE PotteryFind;

--CREATE TABLE Manufacture (
--	IDManufacture int IDENTITY (1,1) PRIMARY KEY,
--	Method varchar (50));
--GO

--CREATE TABLE Origins (
--	IDOrigins int IDENTITY (1,1) PRIMARY KEY,
--	Origins varchar (20) NOT NULL);
--GO

--CREATE TABLE PotteryClass (
--IDClass int PRIMARY KEY IDENTITY (1,1),
--Class varchar(20) NOT NULL);
--GO

--CREATE TABLE Chronology(
--IDChronology int PRIMARY KEY IDENTITY (1,1),
--Period varchar(50) NOT NULL);
--GO

--CREATE TABLE PartofVessel(
--IDPartofVessel int PRIMARY KEY IDENTITY (1,1),
--Part varchar(25) NOT NULL);
--GO

--CREATE TABLE Firing (
--IDFiring int PRIMARY KEY IDENTITY (1,1),
--Method varchar(25) NOT NULL);
--GO

--CREATE TABLE Inclusions (
--IDInclusions int PRIMARY KEY IDENTITY (1,1),
--Inclusion varchar(20) NOT NULL);
--GO

--CREATE TABLE Colour (
--IDColour int PRIMARY KEY IDENTITY (1,1),
--Colour varchar(20) NOT NULL);
--GO

--CREATE TABLE SurfaceTreatment (
--IDSurface int PRIMARY KEY IDENTITY (1,1),
--Treatment varchar (25) NOT NULL);
--GO

--CREATE TABLE Shape (
--IDShape int PRIMARY KEY IDENTITY (1,1),
--Category varchar (25) NOT NULL);
--GO

--CREATE TABLE Subcategory (
--	IDSubcategory int IDENTITY (1,1),
--	IDShape int,
--	SubName varchar(25) NOT NULL,
--	CONSTRAINT PK_Subcategory PRIMARY KEY (IDSubcategory, IDShape),
--	CONSTRAINT FK_Subcategory FOREIGN KEY (IDShape) REFERENCES Shape);
--GO

--CREATE TABLE PotteryFind (
--	IDFind int PRIMARY KEY,
--	NoShards int,
--	Drawings varchar(25),
--	Photos varchar (25),
--	DescriptionofDesign varchar (200),
--	IDManufacture int FOREIGN KEY REFERENCES Manufacture (IDManufacture),
--	IDClass int FOREIGN KEY REFERENCES PotteryClass (IDClass),
--	IDChronology int FOREIGN KEY REFERENCES Chronology (IDChronology),
--	IDOrigins int FOREIGN KEY REFERENCES Origins (IDOrigins),
--	IDPartofVessel int FOREIGN KEY REFERENCES PartofVessel (IDPartofVessel),
--	IDFiring int FOREIGN KEY REFERENCES Firing (IDFiring),
--	IDInclusions int FOREIGN KEY REFERENCES Inclusions (IDInclusions),
--	IDShape int FOREIGN KEY REFERENCES Shape (IDShape),
--	IDExColour int FOREIGN KEY REFERENCES Colour (IDColour),
--	IDInColour int FOREIGN KEY REFERENCES Colour (IDColour));
--GO

--CREATE TABLE Size (
--	IDFind int,
--	Length int,
--	Breadth int,
--	Thickness int,
--	CONSTRAINT PK_Size PRIMARY KEY (IDFind), 
--	CONSTRAINT FK_Size FOREIGN KEY (IDFind) REFERENCES PotteryFind);
--GO

--CREATE TABLE SizeWithRadius (
--	IDFind int,
--	Radius int,
--	Length int,
--	Breadth int,
--	Thickness int,
--	CONSTRAINT PK_SizeWithRadius PRIMARY KEY (IDFind),
--	CONSTRAINT FK_SizeWithRadius FOREIGN KEY (IDFind) REFERENCES PotteryFind);
--GO

--CREATE TABLE PaintColourAgg (
--	IDFind int,
--	IDSurface int,
--	IDColour int,
--	CONSTRAINT PK_PaintColourAgg PRIMARY KEY (IDFind, IDSurface, IDColour),
--	CONSTRAINT FK_PaintColourAgg1 FOREIGN KEY (IDFind) REFERENCES PotteryFind,
--	CONSTRAINT FK_PaintColourAgg2 FOREIGN KEY (IDSurface) REFERENCES SurfaceTreatment,
--	CONSTRAINT FK_PaintColourAgg3 FOREIGN KEY (IDColour) REFERENCES Colour);
--GO

--CREATE TABLE PotteryFindSubCategoryAgg (
--	IDFind int PRIMARY KEY,
--	IDSubcategory int,
--	IDShape int,
--	CONSTRAINT FK_PotteryFindSubCategoryAgg1 FOREIGN KEY (IDFind) REFERENCES PotteryFind (IDFind),
--	CONSTRAINT FK_PotteryFindSubCategoryAgg2 FOREIGN KEY (IDSubcategory, IDShape) REFERENCES Subcategory (IDSubcategory, IDShape));


--**** Unos predefinisanih vrednosti u tabele****
--***********************************************

--INSERT INTO PotteryClass (Class)
--VALUES 
--	('Amphora'),
--	('Coarse Ware'),
--	('Fine Ware'),
--	('Mortaria'),
--	('Terra Sigillata');
--GO

--INSERT INTO Chronology (Period)
--VALUES 
--	('Prechistoric'),
--	('Neolothic'),
--	('Eneolothic'),
--	('Chalcolothic'),
--	('Bronze Age'),
--	('Early Iron Age'),
--	('Late Iron AGe'),
--	('Roman Imperial 1st-2nd centuries CE'),
--	('Roman Imperial 3rd century CE'),
--	('Late Roman 4th – 5th centuries CE'),
--	('Post Roman'),
--	('Byzantine'),
--	('Early Medieval'),
--	('Ottoman'),
--	('Modern');
--GO

--INSERT INTO Origins (Origins)
--Values
--	('Local'),
--	('Imported');
--GO

--INSERT INTO PartofVessel (Part)
--VALUES 
--	('Base'),
--	('Body'),
--	('Bund hole'),
--	('Carination'),
--	('Foot ring'),
--	('Foot'),
--	('Handle'),
--	('Leg'),
--	('Lid'),
--	('Wall');

--GO

--INSERT INTO Shape (Category)
--VALUES 
--	('Jug'),
--	('Jar'),
--	('Bowl'),
--	('Dish'),
--	('Lamp'),
--	('Mould');
--GO

--INSERT INTO Colour (Colour)
--VALUES
--	('Orange'),
--	('Red'),
--	('Yellow'),
--	('Brown'),
--	('Green'),
--	('White'),
--	('Black');
--GO

--INSERT INTO Inclusions (Inclusion)
--VALUES	
--	('Sand'),
--	('Calcareous'),
--	('Grog'),
--	('Organic'),
--	('Nil');
--GO

--INSERT INTO Manufacture (Method)
--VALUES
--	('Handmade'),
--	('Wheel made'),
--	('Cast/Moulded'),
--	('Secondary forming');
--GO

--INSERT INTO Firing (Method)
--VALUES 
--	('Oxidising'),
--	('Reducing');
--GO

--INSERT INTO SurfaceTreatment (Treatment)
--VALUES 
--	('Glaze'),
--	('Gloss'),
--	('Burnish'),
--	('Slipped'),
--	('Sgraffito');
--GO

--INSERT INTO Subcategory (IDShape, SubName)
--VALUES
--	(1, 'Jug'),
--	(1, 'Flagon'),
--	(1, 'Amphora'),
--	(2, 'Jar'),
--	(2, 'Beaker'),
--	(2, 'Cauldron'),
--	(3, 'Bowl'),
--	(3, 'Cup'),
--	(3, 'Mortar'),
--	(4, 'Dish'),
--	(4, 'Plate');
--GO

--***Unos podataka***
--*******************

--INSERT INTO PotteryFind
--VALUES
--	(1, 2, 'Drawing 1', 'Photo A-1', 'Urezane valovnice', 3, 5, 10, 2, 10, 1, 1, 3, 1, 1);
--GO

--INSERT INTO PotteryFindSubCategoryAgg
--VALUES
--	(1,7, 3);

--GO

--INSERT INTO PaintColourAgg
--VALUES 
--	(1, 3, 4);

--GO

--INSERT INTO Size (IDFind, Length, Thickness)
--VALUES
--	(1, 86, 15);
--GO

--***Pogledi, Izveštaji***
--************************

--CREATE VIEW FindSubCat
--AS
--SELECT a.IDFind, b.Category, c.SubName AS 'Subcategory'
--FROM PotteryFindSubCategoryAgg a
--LEFT JOIN Shape b ON a.IDShape = b.IDShape
--LEFT JOIN Subcategory c ON a.IDSubcategory = c.IDSubcategory;
--GO

--CREATE VIEW FindDescription
--AS
--SELECT a.IDFind, b.Method AS 'Manufacture', c.Class, d.Period, e.Origins, f.Part, g.Method AS 'Firing',
--h.Inclusion, i.Category, j.Subcategory, k.Colour AS 'ExColour', l.Colour AS 'InColour'
--FROM PotteryFind a
--LEFT JOIN Manufacture b ON a.IDManufacture = b.IDManufacture
--LEFT JOIN PotteryClass c ON a.IDClass = c.IDClass
--LEFT JOIN Chronology d ON a.IDChronology = d.IDChronology
--LEFT JOIN Origins e ON a.IDOrigins = e.IDOrigins
--LEFT JOIN PartofVessel f ON a.IDPartofVessel = f.IDPartofVessel
--LEFT JOIN Firing g ON a.IDFiring = g.IDFiring
--LEFT JOIN Inclusions h ON a.IDInclusions = h.IDInclusions
--LEFT JOIN FindSubCat i ON a.IDFind = i.IDFind
--LEFT JOIN FindSubCat j ON a.IDFind = j.IDFind
--LEFT JOIN Colour k ON a.IDEXColour = k.IDColour
--LEFT JOIN Colour l ON a.IDInColour = l.IDColour;
--GO

