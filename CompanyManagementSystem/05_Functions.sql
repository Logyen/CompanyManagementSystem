-- Get Employee Full Name
CREATE FUNCTION GetEmployeeFullName (@SSN CHAR(9))
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @FullName VARCHAR(100);
    SELECT @FullName = CONCAT(Fname, ' ', Lname) FROM Employee WHERE SSN = @SSN;
    RETURN @FullName;
END;
