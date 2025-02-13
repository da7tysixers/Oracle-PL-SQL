CREATE TABLE ExportColumnDemo (
	ProductID int,
	ProductName nvarchar(50),
	Description nvarchar(50),
	FilePath nvarchar(255)

	)

insert into ExportColumnDemo values(1,'Printer','Complete Printer Description','H:\Output\ProductDescriptions\Printer.txt')
insert into ExportColumnDemo values(2,'Router','Complete Router Description','H:\Output\ProductDescriptions\Router.txt')
insert into ExportColumnDemo values(3,'Switch','Complete Switch Description','H:\Output\ProductDescriptions\Switch.txt')
insert into ExportColumnDemo values(4,'Notebook Fan','Complete Notebook Fan Description','H:\Output\ProductDescriptions\NotebookFan.txt')
insert into ExportColumnDemo values(Null,NULL,NULL,NULL)

update ExportColumnDemo
set FilePath = 'C:\Users\da7ty\Study 2024\Oracle Course\MS SQL SSIS\SSISDemos\Outputs\ProductDescriptions\NotebookFan.txt'
where ProductID = 4;

select * from ExportColumnDemo
