GO
CREATE TABLE [dbo].[EmployeCereditCardData]
(
	[Id] INT NOT NULL, 
    [CardNumber] NCHAR(10) NOT NULL, 
    [ExpirationDate] DATE NOT NULL, 
    [HolderName] INT NULL, 
	PRIMARY KEY CLUSTERED ([Id] ASC)
 )
GO
ALTER TABLE [EmployeCereditCardData]
	ADD CONSTRAINT [FK_EmployeCereditCardData_Employees] FOREIGN KEY 
	([HolderName])  REFERENCES [dbo].[Employees] ([EmployeeID])
GO