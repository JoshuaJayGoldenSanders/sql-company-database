CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName TEXT
);

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
Name TEXT NOT NULL,
DepartmentID INT,
Salary INT NOT NULL,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

ALTER TABLE Employees
ADD Age INT;

INSERT INTO Departments VALUES (1,'IT');
INSERT INTO Departments VALUES (2,'HR');

INSERT INTO Employees VALUES (1,'Jay',1,70000,29);
INSERT INTO Employees VALUES (2,'Alex',2,50000,25);

SELECT * FROM Employees;
SELECT * FROM Departments;
