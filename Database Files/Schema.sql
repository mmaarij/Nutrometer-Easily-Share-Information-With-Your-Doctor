use master
go
--drop database nutrometer
--go
--create database nutrometer
go
use nutrometer

UPDATE [food_db] SET Calories= 0 WHERE Calories = 'NULL'
alter table food_db alter column Calories float

UPDATE [food_db] SET Fat= '0' WHERE Fat = 'NULL'
alter table food_db alter column Fat float

UPDATE [food_db] SET Protein= '0' WHERE Protein = 'NULL'
alter table food_db alter column Protein float

UPDATE [food_db] SET Carbohydrate= '0' WHERE Carbohydrate = 'NULL'
alter table food_db alter column Carbohydrate float

UPDATE [food_db] SET Sugars= '0' WHERE Sugars = 'NULL'
alter table food_db alter column Sugars float

UPDATE [food_db] SET Fiber= '0' WHERE Fiber = 'NULL'
alter table food_db alter column Fiber float

UPDATE [food_db] SET [Cholesterol]= 0 WHERE [Cholesterol] = 'NULL'
alter table food_db alter column Cholesterol float

CREATE TABLE Patient
(
	Pid int identity(1,1) primary key,
	Pemail varchar(50) not null unique,
	PName varchar(50), 
	Age int,
	Gender varchar(50),
	PWeight float,
	Height float,
	Ppassword varchar(20),
	Calorie_goal float,
	Water_goal float,
	Weight_goal float


)

CREATE TABLE Nutritionist
(
	Nid int identity(1,1) primary key,
	Nemail varchar(50) not null unique,
	Npassword varchar(20),
	Gender varchar(50),
	NName varchar(50),
	Age int,
	Qualification varchar(50),
	Phone varchar(50)
)

CREATE TABLE DietPlan 
(
	DietID int not null primary key,
	Pid int,
	StartDate date not null,
	EndDate date not null,

	foreign key(Pid) references Patient(Pid)

)

CREATE TABLE Breakfast
(
	DietID int, 
	FoodID int,
	Btime time,

	foreign key(DietID) references DietPlan(DietID),
	foreign key(FoodID) references food_db(ID),
	primary key(DietID,FoodID)

)


CREATE TABLE Lunch
(
	DietID int, 
	FoodID int,
	Ltime time,


	foreign key(DietID) references DietPlan(DietID),
	foreign key(FoodID) references food_db(ID),
	primary key(DietID,FoodID)

)


CREATE TABLE Dinner
(
	DietID int, 
	FoodID int,
	Dtime time,

	foreign key(DietID) references DietPlan(DietID),
	foreign key(FoodID) references food_db(ID),
	primary key(DietID,FoodID)

)

CREATE TABLE Snacks
(
	DietID int, 
	FoodID int,
	Stime time,

	foreign key(DietID) references DietPlan(DietID),
	foreign key(FoodID) references food_db(ID),
	primary key(DietID,FoodID)

)

CREATE TABLE DailyWaterIntake
(
	Wid int not null primary key,
	Pid int,
	Glass int, 
	Wtime date,
	Water_goal float,
	foreign key(Pid) references Patient(Pid),

)

CREATE TABLE DailyCalorieGoal
(
	Cid int not null primary key,
	Pid int,
	intake int,
	Wtime date,
	Calorie_goal float,
	foreign key(Pid) references Patient(Pid),

)


CREATE TABLE WeightGoal
(
	Wid int not null primary key,
	Pid int,
	CurrentWeight Float, 
	Weight_goal float,
	foreign key(Pid) references Patient(Pid),

)

Insert into Nutritionist (Nemail,Npassword,Gender,NName,Age,Qualification,Phone) VALUES ('bilal@gmail.com','bilal111','Male','Bilal',42,'MS Food&Nutrition','0300-123456')


--drop table WeightGoal
--drop table DailyCalorieGoal
--drop table DailyWaterIntake
--drop table Snacks
--drop table Breakfast
--drop table Lunch
--drop table Dinner
--drop table DietPlan

--drop table Patient


 