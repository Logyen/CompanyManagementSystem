-- View to show all employees with their department names
CREATE VIEW EmployeeDepartmentView AS
SELECT E.SSN, E.Fname, E.Lname, D.Dname
FROM Employee E
JOIN Departments D ON E.Dno = D.Dnum;

-- View to display projects along with their department names and managers
CREATE VIEW ProjectDetailsView AS
SELECT P.Pnumber, P.Pname, D.Dname, E.Fname AS ManagerName
FROM Project P
JOIN Departments D ON P.Dnum = D.Dnum
JOIN Employee E ON D.MGRSSN = E.SSN;

-- View to list employees working on each project with their hours
CREATE VIEW EmployeeProjectHoursView AS
SELECT E.Fname, E.Lname, P.Pname, W.Hours
FROM Employee E
JOIN Works_for W ON E.SSN = W.ESSN
JOIN Project P ON W.Pno = P.Pnumber;
