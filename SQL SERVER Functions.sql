-- SQL SERVER Functions

-- 1) CONCAT(first_char, second_char, ... n_char)
select CONCAT('SQL is essential for',' Data Analytics.');
-- OR
Select 'SQL is essential for' + ' Data Analytics'

-- 2) REPLACE(entry_char, string_searching, string_replace)
Select REPLACE('SQL is good','good','great')

-- 3) CHARINDEX(substring, string, start)
Select CHARINDEX('W','Hello World!')

Select CHARINDEX('o','Hello World!',6)

-- 4) DIFFERENCE(expression, expression)
    -- 0 -> weak or no similarity between the SOUNDEX values. 
    -- 4 -> strong similarity or identically SOUNDEX values.
Select DIFFERENCE('Juice','Jucy')

-- 5) FORMAT(value, format)
Select FORMAT(20210816,'####-##-##') as Format

-- 6) LEFT(str,num) and RIGHT(str,num)
SELECT LEFT('Data Analytics',4)
SELECT RIGHT('Data Analytics',9) 

-- 7) LEN(string)
-- Note: Trailing spaces at the end of the string is not included when calculating the length. 
-- leading spaces at the start of the string is included when calculating the length.
Select LEN('Data Analytics')
-- 14

Select LEN('Data Analytics    ')
-- 14

Select LEN('     Data Analytics')
-- 19

-- 8) LOWER(text) and UPPER(text)
SELECT LOWER('DATA Analytics')
Select UPPER('data analytics')

-- 9) LTRIM(string), RTRIM(string), TRIM(string)
Select LTRIM('              Data Analytics')
Select RTRIM('Data Analytics            ')
Select TRIM('           Data Analytics            ')
Select TRIM('!@#$' FROM '!@#$Data Analytics@#')

-- 10) REPLICATE(string,integer)
Select REPLICATE('Hello',5)

-- 11) SUBSTRING(string, start, length)
Select SUBSTRING('Data Analytics',1,4)
Select SUBSTRING('john.doe@hmail.com',CHARINDEX('@','john.doe@hmail.com')+1,LEN('john.doe@hmail.com'))

----------------------------------------------------- Date Functions -----------------------------------------------------

-- CURRENT_TIMESTAMP
Select CURRENT_TIMESTAMP

-- GETDATE
SELECT GETDATE();

-- GETUTCDATE
SELECT GETUTCDATE();

-- SYSDATETIME
SELECT SYSDATETIME();

-- ISDATE
SELECT ISDATE('2021-08-16')
SELECT ISDATE('20210813')
SELECT ISDATE('2021')
SELECT ISDATE('Hello')
SELECT ISDATE('09')

-- DATEADD(interval, number, date)
Select DATEADD(year,1,'2021-08-16')
Select DATEADD(year,-1,GETDATE())
Select DATEADD(week,1,'2021-08-16')
Select DATEADD(month,3,GETDATE())

-- DATEDIFF(interval, date1, date2)
Select DATEDIFF(year,'1947-08-15','2021-08-16')
Select DATEDIFF(day,'1947-08-15','2021-08-16')
Select DATEDIFF(quarter,'1947-08-15','2021-08-16')

-- DATEFROMPARTS(year, month, day)
SELECT DATEFROMPARTS(2021, 08, 16)

-- DATENAME(interval, date)
SELECT DATENAME(year, '2021-08-16')
SELECT DATENAME(day, '2021-08-16')
SELECT DATENAME(weekday, '2021-08-16')

-- DATEPART(interval, date)
SELECT DATEPART(month, '2017/08/25');

-- Note - difference between DATENAME and DATEPART is DATENAME returns a string value and DATEPART int value.

-- DAY, MONTH, YEAR
SELECT DAY('2021-08-16')
SELECT MONTH('2021-08-16')
SELECT YEAR('2021-08-16')

------------------------------ Advanced Functions ------------------------------
SELECT CAST(12.95 AS int);

SELECT COALESCE(NULL,'hey',NULL)

SELECT IIF(5000>2000, 'True', 'False')

SELECT ISNULL(NULL,'Value to replace')

SELECT ISNUMERIC(2000)
SELECT ISNUMERIC('2000')
SELECT ISNUMERIC('hello')

