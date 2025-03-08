-- Prevent deleting a department if employees exist
CREATE TRIGGER PreventDepartmentDeletion
ON Departments
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employee WHERE Dno IN (SELECT Dnum FROM deleted))
    BEGIN
        RAISERROR('Cannot delete department with existing employees!', 16, 1);
        RETURN;
    END

    DELETE FROM Departments WHERE Dnum IN (SELECT Dnum FROM deleted);
END;
