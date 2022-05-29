CREATE DATABASE SEDCACADEMYDB

CREATE TABLE Student (
	ID int IDENTITY(1,1) NOT NULL,
	FirstName nvarchar(100),
	LastName nvarchar(100),
	DateOfBirth date,
	EnrolledDate date,
	Gender nvarchar(10),
	NationalIDNumber int,
	StudentCardNumber int,
	CONSTRAINT PK_Student PRIMARY KEY CLUSTERED (ID ASC)
);

CREATE TABLE Teacher(
	ID int IDENTITY(1,1) NOT NULL,
	FirstName nvarchar(100),
	LastName nvarchar(100),
	DateOfBirth date,
	AcademicRank int,
	HireDate date,
	CONSTRAINT PK_Teacher PRIMARY KEY CLUSTERED (ID ASC)
);

CREATE TABLE Grade(
	ID int IDENTITY(1,1) NOT NULL,
	StudentID int,
	CourseID int,
	TeacherID int,
	Grade nchar,
	Comment nvarchar(100),
	CreatedDate date,
	CONSTRAINT PK_Grade PRIMARY KEY CLUSTERED (ID ASC)
);

CREATE TABLE Course(
	ID int IDENTITY(1,1) NOT NULL,
	Name nvarchar(100),
	Credit int,
	AcademicYear int,
	Semester int,
	CONSTRAINT PK_Course PRIMARY KEY CLUSTERED (ID ASC)
);

CREATE TABLE AchievementType(
	ID int IDENTITY(1,1) NOT NULL,
	Name nvarchar(100),
	Description nvarchar(200),
	ParticipationRate nvarchar(100),
	CONSTRAINT PK_AchievementType PRIMARY KEY CLUSTERED (ID ASC)
);

CREATE TABLE GradeDetails(
	ID int IDENTITY(1,1) NOT NULL,
	GradeID int,
	AchievementTypeID int,
	AchievementPoints int,
	AchievementMaxPoints int,
	AchievementDate date,
	CONSTRAINT PK_GradeDetails PRIMARY KEY CLUSTERED (ID ASC)
);


