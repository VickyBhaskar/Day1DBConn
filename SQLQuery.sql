CREATE DATABASE [OurExcercises ]  
ON PRIMARY
(NAME = 'MyExcercise_Db', FILENAME = 'C:\Mphasis\Phase2\Day1\OurExcercise_db.mdf' ,size=24MB, filegrowth=8MB)
LOG ON
(NAME='OurExcercise_Db',FILENAME = 'C:\Mphasis\Phase2\Day1\OurExcercise_db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS
use OurExcercises
create table Product
(PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice float check (PPrice>=50 and PPrice <=1000000),
PCompany nvarchar(50),
PQty int default 1 check (PQty>=1))

insert into Product values('Vicky','45000','Samsung','25')
insert into Product values('Raju','75600','Apple','35')
insert into Product values('Salman','63500','Redmi','98')
insert into Product values('Ragni','67600','HTC','55')
insert into Product values('Rehana','89070','Apple','75')
select * from Product