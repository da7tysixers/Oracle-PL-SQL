SELECT 1+1 AS Result
GO
SELECT 1*1 AS result
GO
SELECT 1/0 AS Result
select 1/1 AS result
go -- ends the batch

select 4+9 AS MyAnswer
go
SELECT 15-26 AS Balance
GO

-----------------
SELECT 24*4+3 AS MyResponse
GO
SELECT 48/4 AS Result
GO

-------------------
CREATE TABLE tblSecond 
(
	myNumbers int);

 insert into tblFirst values(234), (456),(888)

 ---How to create variables in T-SQL
 
-- Initialise a variable, give it a data type and initial value
DECLARE @myvar AS smallint = 2000

-- Increase that value by 1
SET @myvar = @myvar * 10

SELECT @myvar AS myVariable

Bigint
Int up to 2,000,000,000
tinyint - 0-255
smallint - -32767 to 32768


--BITS = Bigint Int Tinyint Smallint

DECLARE @var AS tinyint = 32767

SET @var = 20000

SELECT @var AS myvariable