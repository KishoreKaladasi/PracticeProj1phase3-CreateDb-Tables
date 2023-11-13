---*********CREATING DATABASE****************

create database School;
go


---*********CREATING TABLE SUBJECTS****************
create table Subjects(
subjectId int identity (101,1) primary key,
subjectName varchar(50),
TeacherName varchar(50));
---*********INSERTING DATA TO SUBJECTS TABLE********
INSERT INTO Subjects (subjectName, TeacherName)
VALUES
    ('Math', 'Mr. Smith'),
    ('English', 'Ms. Johnson'),
    ('Science', 'Dr. Brown'),
    ('History', 'Mrs. Davis'),
    ('Computer Science', 'Mr. Anderson'),
    ('Physics', 'Mrs. White'),
    ('Chemistry', 'Mr. Taylor'),
    ('Biology', 'Ms. Robinson');
---*********EXECUTING SUBJECTS TABLE****************
select * from Subjects;



---*********CREATING TABLE CLASSES****************
create table Classes(
classId int identity (101,1) primary key,
className varchar(50),
classFloor varchar(50));
---*********INSERTING DATA TO CLASSES TABLE**********
INSERT INTO Classes (className, classFloor)
VALUES
    ('Class A', '1st floor'),
    ('Class B', '2nd floor'),
    ('Class C', '3rd floor'),
    ('Class D', '1st floor'),
    ('Class E', '2nd floor'),
    ('Class F', '3rd floor'),
    ('Class G', '1st floor'),
    ('Class H', '2nd floor');
---*********EXECUTING CLASSES TABLE****************
select * from Classes;



---*********CREATING TABLE STUDENTS****************
create table Students(
RollNo int identity (101,1) primary key,
studentName varchar(50),
classId int FOREIGN key references Classes ,
subjectId int FOREIGN  key references Subjects );
---*********INSERTING DATA TO STUDENTS TABLE********
INSERT INTO Students (studentName, classId, subjectId)
VALUES
    ('John Doe', 101, 101),
    ('Jane Smith', 102, 102),
    ('Robert Johnson', 103, 103),
    ('Emily Davis', 104, 104),
    ('Michael Anderson', 105, 105),
    ('Sarah White', 106, 106),
    ('Daniel Taylor', 107, 107),
    ('Olivia Robinson', 108, 108);
---*********EXECUTING STUDENTS TABLE****************
select * from Students;