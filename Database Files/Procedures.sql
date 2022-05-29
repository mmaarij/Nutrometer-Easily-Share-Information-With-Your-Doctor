use master
go
use nutrometer

---PROCEDURES---
go
create procedure PatientLogIn   

@Pemail varchar(50),
@password varchar(20),
@status int output,   ---0==LOGGED IN,,,,2=PASS DOESNT EXIST ,,,1=username DOESNT EXIST
@ID int output

as
begin
	if exists(select * from Patient where Pemail=@Pemail)
	BEGIN
		if @password = (select Ppassword from Patient where Pemail=@Pemail)
		BEGIN
			select @ID = Pid from Patient where Pemail=@Pemail
			set @status = 0  --logged in!
		END
		else
		BEGIN
			set @status = 2 ---no pasword
			set @ID = 0
		END
	END

	else
	BEGIN
		set @status = 1  ---no uname
		set @ID = 0
	END
end

go
--drop procedure PatientLogIn
go
create procedure NutritionistLogIn   

@Nemail varchar(50),
@password varchar(20),
@status int output,   ---0==LOGGED IN,,,,2=PASS DOESNT EXIST ,,,1=username DOESNT EXIST
@ID int output

as
begin
	if exists(select * from Nutritionist where Nemail=@Nemail)
	BEGIN
		if @password = (select Npassword from Nutritionist where Nemail=@Nemail)
		BEGIN
			select @ID = Nid from Nutritionist where Nemail=@Nemail
			set @status = 0  --logged in!
		END
		else
		BEGIN
			set @status = 2 ---no pasword
			set @ID = 0
		END
	END

	else
	BEGIN
		set @status = 1  ---no uname
		set @ID = 0
	END
end

go
--create procedure PatientProfile ---view patients profile in patient
--@id int,
--@name varchar(30) output,
--@phone char(11) output,
--@age int output,
--@gender char(1) output,
--@weight float output,
--@height float output,
--@calories int output,
--@water_goal int output,
--@weight_goal int output
--as
--begin
--	select @name=PName, @age=Age , @gender=Gender,@weight=PWeight,@height=Height,@calories=Calorie_goal,@water_goal=Water_goal,@weight_goal=Weight_goal 
--	from Patient 
--	where Pid = @ID
--end
--go

--create procedure NutritionistProfile ---view patients profile in patient
--@id int,
--@name varchar(30) output,
--@phone char(11) output,
--@age int output,
--@gender char(1) output,
--@qualification varchar(50) output,
--as
--begin
--	select @name=NName, @age=Age , @gender=Gender, @qualification=Qualification,@phone=Phone 
--	from Nutritionist 
--	where Nid = @ID
--end
--go
