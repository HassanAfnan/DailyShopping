-- Login Procedure
Alter PROCEDURE LoginProcedure
@em nvarchar(50),
@pa nvarchar(50)
AS
BEGIN
Select * from loginView where email = @em and password = @pa
END

select * from loginView
insert into loginView values ('Ali@gmail.com','123456','Admin')

exec LoginProcedure 'Ali@gmail.com' , '123456'

Create PROCEDURE AdminSignUpProcedure
(
@name nvarchar(50),
@email nvarchar(50),
@pass nvarchar(50),
@role nvarchar(50)
)
AS
BEGIN
insert into AdminView(name,email,password) values (@name,@email,@pass)
END
BEGIN
insert into loginView(email,password,role) values (@email,@pass,@role)
END
-- User Sign up
Create PROCEDURE UserSignUpProcedure
(
@fname nvarchar(50),
@lname nvarchar(50),
@email nvarchar(50),
@pass nvarchar(50),
@address nvarchar(MAX),
@city nvarchar(50),
@state nvarchar(50),
@pincode nvarchar(50),
@mobile nvarchar(50),
@role nvarchar(50)
)
AS
BEGIN
insert into UsersView(FirstName,lastName,email,password,address,city,state,pincode,mobile) values (@fname,@lname,@email,@pass,@address,@city,@state,@pincode,@mobile)
END
BEGIN
insert into loginView(email,password,role) values (@email,@pass,@role)
END

exec UserSignUpProcedure 'Ali','Shah','Ali@gmail.com','123456','abc','karachi','Gulshan','123','02345566778','User'
select * from Login
select * from UsersView
select * from loginView
insert into loginView values ('Ali@gmail.com','123456','Admin')
exec AdminSignUpProcedure 'Faraz','Faraz@gmail,com','123456','Admin'
truncate table Login
truncate table Admin
truncate table Users