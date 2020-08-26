--tier3 answer2
CREATE SEQUENCE UpByThree
START WITH 6
INCREMENT BY 3;

--tier3 answer3
CREATE TABLE app_user (
	user_id serial PRIMARY KEY,
	username VARCHAR(50),
	password VARCHAR(50),
	first_name VARCHAR(20),
	last_name VARCHAR(50),
	role_id int
);

CREATE TABLE flashcard (
	question varchar(100),
	answer varchar(100),
	category_id int
);

CREATE TABLE study_set (
	name varchar(100),
	owner_id int
);

--tier3 answer4
CREATE PROCEDURE ThreeInts @IntI int, @IntJ int, @IntK int 
AS 
(
DECLARE @cnt = 0;
WHILE @IntI <= @IntJ 
BEGIN 
	IF @IntI % @IntK = 0
	BEGIN 
		@cnt = @cnt + 1;
	END;
	SET @IntI = @IntI + 1;
END;
RETURN @cnt;
);



