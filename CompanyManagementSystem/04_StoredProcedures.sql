-- Add new employee
CREATE PROCEDURE AddEmployee
    @Fname VARCHAR(50),
    @Lname VARCHAR(50),
    @SSN CHAR(9),
    @Bdate DATE,
    @Address VARCHAR(255),
    @Sex CHAR(1),
    @Salary DECIMAL(10,2),
    @SuperSSN CHAR(9) = NULL,
    @Dno INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Departments WHERE Dnum = @Dno)
    BEGIN
        RAISERROR('Department does not exist.', 16, 1);
        RETURN;
    END

    INSERT INTO Employee (Fname, Lname, SSN, Bdate, Address, Sex, Salary, SuperSSN, Dno)
    VALUES (@Fname, @Lname, @SSN, @Bdate, @Address, @Sex, @Salary, @SuperSSN, @Dno);
END;
