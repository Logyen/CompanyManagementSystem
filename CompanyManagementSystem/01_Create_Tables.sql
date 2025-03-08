-- Create Employee Table
CREATE TABLE Employee (
    SSN CHAR(9) PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Bdate DATE,
    Address VARCHAR(255),
    Sex CHAR(1),
    Salary DECIMAL(10,2),
    SuperSSN CHAR(9) NULL,
    Dno INT
);

-- Create Departments Table
CREATE TABLE Departments (
    Dnum INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL,
    MGRSSN CHAR(9) UNIQUE,
    MGRStartDate DATE
);

-- Create Dependent Table
CREATE TABLE Dependent (
    ESSN CHAR(9),
    Dependent_name VARCHAR(50),
    Sex CHAR(1),
    Bdate DATE,
    PRIMARY KEY (ESSN, Dependent_name)
);

-- Create Works_for Table (Many-to-Many Relationship)
CREATE TABLE Works_for (
    ESSN CHAR(9),
    Pno INT,
    Hours DECIMAL(5,2),
    PRIMARY KEY (ESSN, Pno)
);

-- Create Project Table
CREATE TABLE Project (
    Pnumber INT PRIMARY KEY,
    Pname VARCHAR(100) NOT NULL,
    Plocation VARCHAR(100),
    Dnum INT
);
