-- tạo 1 file SQL đặt tên là Testing_System_1
DROP DATABASE IF EXISTS Testing_System_1;
CREATE DATABASE
 Testing_System_1;
USE Testing_System_1;  

-- Table1: Department
CREATE TABLE Department (
DepartmentID          INT,
DepartmentName        VARCHAR(50)
);

-- Table2: Position 
DROP TABLE IF EXISTS `position`;
CREATE TABLE `Position` (
PositionID     INT,
PositionName    VARCHAR(50)

);

-- Table3: Account 
CREATE TABLE `Account`  ( 
AcountID                 INT,
Email                    VARCHAR(50),
Username                 VARCHAR(50),
FullName                 CHAR(50),
DepartmentID             INT,
PossitionID              INT,
CreateDate               DATE
);

-- Table4: Group
CREATE TABLE `Group` (
GroupID      INT,
GroupName    VARCHAR(50),
CreatorID    INt,
CreateDate   DATE

);

-- Table5: GroupAccount
CREATE TABLE groupAccount (
GroupID                    INT,
AccountID                  VARCHAR(50),
JoinDate                   DATE
);

-- Table6: TypeQuestion 
CREATE TABLE TypeQuestion (
TypeID                     INT,
TypeName                   VARCHAR(50)
);

-- Table7: CategoryQuestion
CREATE TABLE CategoryQuestion( 
CategoryID                    INT,
CategoryName                  VARCHAR(50)
);

-- Table8: Question
CREATE TABLE Question (
QuestionID             INT,
Content                VARCHAR(50),
CategoryID             INT,
TypeID                 INT,
CreatorID              INT,
CreateDate             DATE
);

-- Table9: Answer
CREATE TABLE Answer(
Answers              INT,
Content              VARCHAR(50),
QuestionID           INT,
isCorrect            BIT
);

-- Table10: Exam
CREATE TABLE Exam ( 
ExamID              INT,
`Code`               VARCHAR(10),
Title               VARCHAR(50),
CategoryID          INT,
Duration            INT,
CreatorID           INT,
CreateDate          DATE
);

-- Table11: ExamQuestion
CREATE TABLE ExamQuestion (
ExamID                     INT,
QuestionID                 INT
);

-- Thêm  IF NOT EXISTS cho CREATE TABLE và IF EXISTS cho DROP TABLE cho đủ, ( tạo 1 bản chưa có , xóa 1 bản đã tồn tại ) 
-- AFTER TABLE  Department CHANGE COLUMN TÊN BẢNG = TÊN BẢNG SAU KHI ĐỔI + ĐỊNH DẠNG SAU KHI THAY ĐỔI ( NẾU CÓ)

-- anh có mẹo làm hư người 