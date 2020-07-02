create database DailyShopping

create table Login(
	id int primary key identity, 
	email nvarchar(50),
	password nvarchar(50),
	role nvarchar(50)
)

create table Admin(
	 Aid int primary key identity,
	 name nvarchar(50),
	 email nvarchar(50),
	 password nvarchar(50)
)

create table Users(
	 Uid int primary key identity,
	 FirstName nvarchar(50),
	 lastName nvarchar(50),
	 email nvarchar(50),
	 password nvarchar(50),
	 address nvarchar(MAX),
	 city nvarchar(50),
	 state nvarchar(50),
	 pincode nvarchar(50),
	 mobile nvarchar(50)
)

create table Product(
	 Pid int primary key identity, 
	 name nvarchar(50), 
	 description nvarchar(MAX), 
	 price int, 
	 quantity int,
	 category nvarchar(50),
	 image nvarchar(MAX)
)

create table Orders(
	 Oid int primary key identity,
	 FirstName nvarchar(50),
	 LastName nvarchar(50),
	 email nvarchar(50),
	 address nvarchar(MAX),
	 city nvarchar(50),
	 state nvarchar(50),
	 pincode nvarchar(50),
	 mobile nvarchar(50)
)

create table OrderDetails(
	 Did int primary key identity,
	 Oid int,
	 ProductName nvarchar(50),
	 price int,
	 qty int,
	 image nvarchar(MAX)
)

create table Category(
	 Cid int primary key identity,
	 Category nvarchar(50)
)

create table Comments(	
	 id int primary key identity,
	 name nvarchar(50),
	 comment nvarchar(MAX),
	 timespan datetime
)

create table History(
	 id int primary key identity,
	 name nvarchar(50),
	 email nvarchar(50),
	 Activity nvarchar(50),
	 timespan nvarchar(50)
)

create table Report(
	 id int primary key identity, 
	 Total int,
	 Profit int,
	 TotalCategory int,
	 TotalProducts int,
	 TotalCustomers int,
	 TotalOrders int,
	 timespan dateTime
)

create view loginView As
select * from Login

create view AdminView As
select * from Admin

create view UsersView As
select * from Users

create view CategoryView As
select * from Category

create view CommentsView As
select * from Comments

create view HistoryView As
select * from History

create view ReportView As
select * from Report

create view ProductView As
select * from Product

create view OrdersView As
select * from Orders

create view OrderDetailsView As
select * from OrderDetails

select * from AdminView
select * from loginView
