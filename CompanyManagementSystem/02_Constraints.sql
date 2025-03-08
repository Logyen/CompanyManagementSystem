-- Add Foreign Keys
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_Department FOREIGN KEY (Dno) REFERENCES Departments(Dnum);
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_Supervisor FOREIGN KEY (SuperSSN) REFERENCES Employee(SSN);
ALTER TABLE Departments ADD CONSTRAINT FK_Department_Manager FOREIGN KEY (MGRSSN) REFERENCES Employee(SSN);
ALTER TABLE Dependent ADD CONSTRAINT FK_Dependent_Employee FOREIGN KEY (ESSN) REFERENCES Employee(SSN);
ALTER TABLE Works_for ADD CONSTRAINT FK_WorksFor_Employee FOREIGN KEY (ESSN) REFERENCES Employee(SSN);
ALTER TABLE Works_for ADD CONSTRAINT FK_WorksFor_Project FOREIGN KEY (Pno) REFERENCES Project(Pnumber);
ALTER TABLE Project ADD CONSTRAINT FK_Project_Department FOREIGN KEY (Dnum) REFERENCES Departments(Dnum);
