

CREATE DATABASE schooldb

CREATE TABLE #student
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    total_score INT NOT NULL,
    
 )

DECLARE @cnt INT = 1;

	WHILE @cnt <= 15000

	BEGIN

		INSERT INTO #student 
		VALUES (@cnt, 'Jolly', 'Female', @cnt+20, @cnt+500);
	    SET @cnt = @cnt + 1;

	END;
	





UPDATE #student

	set #student.name = 'Matt', #student.gender = 'Male', #student.total_score = 1000
	Where #student.id BETWEEN 6000 AND 15000;


Delete from #student

	Where #student.id BETWEEN 5001 AND 15000;
	
Select * from #student;



DROP TABLE #student


