go
USE QLSV
go
CREATE TABLE Student (
	Student_id int IDENTITY(1,1) PRIMARY KEY,
	name Varchar(50),
	age date,
);
INSERT INTO Student(name,age) VALUES('Bao','1999-6-17')
INSERT INTO Student(name,age) VALUES('Tu','2000-6-17')
INSERT INTO Student(name,age) VALUES('Duc','1997-6-17')
INSERT INTO Student(name,age) VALUES('phom','1998-6-17')

CREATE TABLE Class (
	Class_id int  IDENTITY(1,1) PRIMARY KEY,
	classname Varchar(50),
)
INSERT INTO Class(classname) VALUES('toan cao cap')
INSERT INTO Class(classname) VALUES('csdl')
INSERT INTO Class(classname) VALUES('java 101')

CREATE TABLE DayOff (
	DayOff_id int IDENTITY(1,1) PRIMARY KEY,
	Student_id  int,
	Dayoff date,
	FOREIGN KEY(Student_id) REFERENCES Student(Student_id),

);

CREATE TABLE Class_Student (
	Student_id int ,
	Class_id int 
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id),
	FOREIGN KEY (Class_id) REFERENCES Class(Class_id),
);

 SET IDENTITY_INSERT to ON.  
SET IDENTITY_INSERT dbo.Student ON;  
SET IDENTITY_INSERT dbo.Class ON;
SET IDENTITY_INSERT dbo.Class_Student ON;
SET IDENTITY_INSERT dbo.DateOff ON;
GO
