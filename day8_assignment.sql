show databases;
use hospitalmanagementsystem;
desc table admindetails;
drop database federal_medical_centre;
create database Medical_Centre_Management_System;
use Medical_Centre_Management_System;
create table Admin_records(ID int not null primary key, Admin_Names varchar(70) not null, DOB varchar(20) not null, Gender varchar(10) not null, Contact Varchar(50) not null, Home_Address Varchar(50) not null, Marrital_Status varchar(15) not null, Qualification Varchar(50) not null, Position Varchar(50) not null, Date_of_Employment varchar (30) not null);
create table Patients_records(ID int not null primary key, Patient_Names varchar(70) not null, Gender varchar(10) not null, Contact Varchar(50) not null, Address Varchar(50) not null, Marrital_Status varchar(15) not null, Position Varchar(50) not null, Date_of_Birth varchar (30) not null);
create table Doctor_records(ID int not null primary key, Admin_Names varchar(70) not null, DOB varchar(20) not null, Gender varchar(10) not null, Contact Varchar(50) not null, Home_Address Varchar(50) not null, Marrital_Status varchar(15) not null, Qualification Varchar(50) not null, Position Varchar(50) not null, Date_of_Employment varchar (30) not null);
create table Nurses_records(ID int not null primary key, Nurses_Names varchar(70) not null, DOB varchar(20) not null, Gender varchar(10) not null, Contact Varchar(50) not null, Home_Address Varchar(50) not null, Marrital_Status varchar(15) not null, Qualification Varchar(50) not null, Position Varchar(50) not null, Date_of_Employment varchar (30) not null);
create table Non_Medical_Staff_records(ID int not null primary key, Non_Staff_Names varchar(70) not null, DOB varchar(20) not null, Gender varchar(10) not null, Contact Varchar(50) not null, Home_Address Varchar(50) not null, Marrital_Status varchar(15) not null, Qualification Varchar(50) not null, Position Varchar(50) not null, Date_of_Employment varchar (30) not null);

insert into Admin_records(ID,Admin_Names,DOB,Gender,Contact,Home_Address,Marrital_Status,Qualification,Position,Date_of_Employment)values
(1, 'Hamsat Lawal', '1975-06-25','Male','08034567812','No 25 Highway Street','Married','MSC Public Management','Senior Officer1','2000-02-27'),
(2, 'Helen Paul Okeke','1996-07-14','Female','07032567812','N0 50 Gimbya Street','Single', 'BSC Public Administration','Junior Officer','2017-05-15'),
(3, 'Godswill Akpabio Akpan','1974-01-21','Male','08030067812','No 45 Abacha Way','Married','MSC OTM','Senior Offier2','2002-02-27'),
(4, 'Ogundare Ania','1982-07-14','Male','08134567802','No 20 Esther Street','Married','BSC OTM','Junior Officer3','2015-10-24'),
(5,'Janet Olwaremilekun','1965-10-25','Female','08034560002','No 50 old arab road','Married','PHD OTM','Director and Supervisor','1995-07-22'),
(6,'Hope Ogba','1995-09-09','Female','08012367812','No 265 Oliver Street','Married','HND OTM','Junior Officer4','2016-02-27'),
(7,'Mary Yinusa','1995-09-10','Female','09034560812','No 35 Obde Street','Single','HND OTM','junior Officer1','2013-12-05'),
(8,'Mary Yinusa','1995-09-10','Female','09031110812','No 35 Obde Street','Single','HND OTM','junior Officer1','2013-11-23');

select * from Admin_records;
update admin_records set Qualification = 'BSC Business Administration' where ID = 2;

delete from admin_records where ID = 8;

create index secondaryindex on admin_records(Qualification);

show indexes from admin_records;

show databases;
use medical_centre_management_system;
select * from medical_centre_management_system.doctor_records;
insert into doctor_records(ID,Admin_Names,DOB,Gender,Contact,Home_Address,Marrital_Status,Qualification,Position,Date_of_Employment)values
(1,'William Venantius', '1960-06-25','Male','08134567810','No 25 Wuse zone 3','Married','BMBS','Chief Medical Officer','2000-02-27'),
(2,'Jude Abah','1996-07-14','male','09032567812','N0 50 Galadima Street','Married', 'MBBS','Surgeon','2017-05-15'),
(3,'Godwin Emli','1974-01-21','Male','08030067812','No 45 Abacha Way','Married','BMid','Paediarics','2002-02-27'),
(4,'Monday Ikade','1982-07-14','Male','08134567802','No 20 Esther Street','Married','BMBS','Psychiatrist','2015-10-24'),
(5,'Caroline Ikade','1965-10-25','Female','08034599002','No 50 old arab road','Married','BM','Trauma and Orthopaedics','2000-07-22'),
(6,'Ruth Mazi','1995-09-09','Female','08012517812','No 265 Oliver Street','Married','BM','General Medicine','2010-02-27'),
(7,'Racheal Venantius','1995-09-10','Female','09084560812','No 35 Obde Street','Single','MBBS','Emergency Medicine','2010-12-05'),
(8,'Rebecca Venantius','1995-09-10','Female','09031200812','No 3 Goda Nasco Street','Single','MBBS','General Medicine','2013-01-23'),
(9, 'Willy James', '1960-06-25','Male','08134567810','No 25 Wuse zone 3','Married','BMBS','Chief Medical Officer2','2000-02-27'),
(10, 'Emmanuel Abah','1996-07-14','male','09032567812','N0 50 Galadima Street','Married', 'MBBS','Surgeon','2017-05-15'),
(11, 'Desmond Richard','1974-01-21','Male','08030067812','No 45 Abacha Way','Married','BMid','Paediarics','2002-02-27'),
(12, 'ThankGod Iliya','1982-07-14','Male','08134567802','No 20 Esther Street','Married','BMBS','Psychiatrist','2015-10-24'),
(13,'Zainab Hassan','1965-10-25','Female','08034599002','No 50 old arab road','Married','BM','Trauma and Orthopaedics','2000-07-22'),
(14,'Anna Eze','1995-09-09','Female','08012517812','No 265 Oliver Street','Married','BM','General Medicine','2010-02-27'),
(15,'Bola Idris','1995-09-10','Female','09084560812','No 35 Obde Street','Single','MBBS','Emergency Medicine','2010-12-05'),
(16,'Kadijah Husseini','1995-09-10','Female','09031200812','No 3 Goda Nasco Street','Single','MBBS','General Medicine','2013-01-23'),
(17,'Maria Onoja','1965-10-25','Female','07034599002','No 50 old arab road','Married','BM','Trauma and Orthopaedics','2000-07-22'),
(18,'Gloria Atiluku','1995-09-09','Female','08012517812','No 265 Oliver Street','Married','BM','General Medicine','2010-02-27'),
(19,'David Benjamin','1995-09-10','Male','09084560812','No 35 Obde Street','Single','MBBS','Emergency Medicine','2010-12-05'),
(20,'Ciara Mike','1995-09-10','Female','09031200812','No 3 Goda Nasco Street','Single','MBBS','General Medicine','2013-01-23');
desc table doctor_records;
select * from doctor_records;

 show databases;
 use medical_centre_management_system;
select * from medical_centre_management_system.non_medical_staff_records;
insert into non_medical_staff_records(ID,Non_Staff_Names,DOB,Gender,Contact,Home_Address,Marrital_Status,Qualification,Position,Date_of_Employment)values
(1,'Thomas Gideon', '1989-06-25','Male','0813456311','No 67 Wuse zone 5','Married','SSCE','Gardener','2013-02-07'),
(2,'Sarah Samson','2000-02-14','Female','09023145812','N0 11 Jonathan reet','Single', 'ND','Cleaner','2019-04-23'),
(3,'Emmanuella James','1998-10-21','female','07068847812','No 45 Jigo Way','Single','ND','Store keeper','2021-10-11'),
(4,'Manza Bali','1996-07-14','Male','08134567211','No 80 uppet Street','Married','HND','Chief Security','2019-12-22'),
(5,'Janet Paul','2000-10-25','Female','08134592032','No 10 new close road','Married','SSCE','Cleaner','2019-07-22'),
(6,'Helene Kenneth','1999-02-09','Female','082517812','No 65 Denis Street','Single','SSCE','Security','2020-02-02'),
(7,'Doris Donald','1991-12-10','Female','09084564812','No 35 Yola Street','Single','NCE','Driver','2018-04-05'),
(8,'Edward Oxlade','1998-09-10','Male','09031200855','No 3 Goda Street','Single','FSLC','Cleaner','2011-01-02'),
(9, 'Kelvin Gambo', '1995-01-11','Male','08014567810','No 25 Wuse zone 7','Single','SSCE','Driver2','2020-04-27'),
(10, 'Sunday Samuel','1992-09-14','Male','09032567832','N0 50 Galadima Street','Married', 'BSC','Record2','2014-03-22'),
(11, 'Desmond G Richard','1990-11-29','Male','08034447812','No 409 Abacha HighWay','Married','ND','Store Keeper','2011-12-27'),
(12, 'Godwill Iliya','1997-11-15','Male','08134567832','No 11 clam Street','Single','NCE','Store Keeper Assistant','2022-01-31'),
(13,'Zainab B Hassan','1988-10-25','Female','08034599992','No 50 arab road extension','Married','SSCE','Cleaner','2000-07-22'),
(14,'Flora Eze','1995-09-09','Female','08012510812','No 001 Shaw Street','Married','SSCE','Cleaner','2011-02-09'),
(15,'Gift Praise','1999-06-10','Female','09089760812','No 39 Obde Street','Single','HND','Supervisor','2010-09-05'),
(16,'Favour King','1993-09-10','Female','09031207812','No 3 Goda Gad Street','Single','MSC','HR','2019-01-23'),
(17,'Maria Adams','1999-10-25','Female','07134599002','No 19 old arab road','Married','BSC','HR Assistant','2018-07-22'),
(18,'Blessing Atiluku','1990-09-09','Female','09112587812','No 26 Oliver Street','Married','SSCE','Cleaner','2010-02-27'),
(19,'David O Benjamin','1995-09-10','Male','09084560112','No 3 Obde Street','Single','BSC','Chief Maintainance Officer','2015-12-05'),
(20,'Kem Mike','2000-09-10','Female','09031200816','No 3 Goda Street','Single','HND','Maintainance Officer','2018-01-11');
select * from non_medical_staff_records;

use medical_centre_management_system;
select * from medical_centre_management_system.nurses_records;
insert into nurses_records(ID,Nurses_Names,DOB,Gender,Contact,Home_Address,Marrital_Status,Qualification,Position,Date_of_Employment)values
(1,'Simon Simeon', '1960-06-25','Male','08134567810','No 25 Wuse zone 3','Married','BSC','NIUC Nurse','2010-02-27'),
(2,'Abah Jude Abah','1996-07-14','male','09032567812','N0 50 Galadima Street','Married', 'BSC','Labour and delivery;','2017-05-15'),
(3,'Godwin O Emli','1974-01-21','Male','08030067812','No 45 Abacha Way','Married','ND','Travel Nurse','2002-02-27'),
(4,'Monday Ikade','1982-07-14','Male','08134567802','No 20 Esther Street','Married','ND','Wardmaid Assistant','2015-10-24'),
(5,'Caroline Michael','1965-10-25','Female','08034599002','No 50 old arab road','Married','BSC','Wardmaid Attendant','2000-07-22'),
(6,'Ruth Shittu','1995-09-09','Female','08012517812','No 265 Oliver Street','Married','ND','Wardmaid Assistant','2010-02-27'),
(7,'Rita Rodrigaz','1995-09-10','Female','09084560812','No 35 Obde Street','Single','BSC','Pediatric Nurse','2010-12-05'),
(8,'Tina Linus','1995-09-10','Female','09031200812','No 3 Goda Nasco Street','Single','BSC','Ambulatory Nurse','2013-01-23'),
(9, 'Awari James', '1960-06-25','Male','08134567810','No 25 Wuse zone 3','Married','BSC','Ambulatory Nurse2','2000-02-27'),
(10, 'Emmanuel Badmus','1996-07-14','male','09032567812','N0 50 Galadima Street','Married', 'BSC','Clinical nurse ','2017-05-15'),
(11, 'Desmond Abel','1974-01-21','Male','08030067812','No 45 Abacha Way','Married','BSC','Neonatal nurse','2002-02-27'),
(12, 'ThankGod Hossana','1982-07-14','Male','08134567802','No 20 Esther Street','Married','ND','Labor and Delivery Nurse Assistant','2015-10-24'),
(13,'Zainab Idris','1965-10-25','Female','08034599002','No 50 old arab road','Married','ND','Travel nurse2','2000-07-22'),
(14,'Gloria Shimite','1995-09-09','Female','08012517812','No 265 Oliver Street','Married','ND','Pediatric nurse2','2010-02-27'),
(15,'Osinachi Demian','1995-09-10','Female','09084560812','No 35 Obde Street','Single','BSC','NICU Nurse2','2010-12-05'),
(16,'Adamu Shamsia','1995-09-10','Female','09031200812','No 3 Goda Nasco Street','Single','BSC','Clinical nurse2','2013-01-23'),
(17,'Maria Jacob','1965-10-25','Female','07034599002','No 50 old arab road','Married','ND','Wardmaid2','2000-07-22'),
(18,'Gloria Atiluku','1995-09-09','Female','08012517812','No 265 Oliver Street','Married','ND','Wardmaid3','2010-02-27'),
(19,'David Benjamin','1995-09-10','Male','09084560812','No 35 Obde Street','Single','ND','wardmaid assistant3','2010-12-05'),
(20,'Ciara Mike','1995-09-10','Female','09031200812','No 3 Goda Nasco Street','Single','ND','Pediatric nurse assistant3','2013-01-23');
select * from nurses_records;

use medical_centre_management_system;

insert into patients_records(ID,Patient_Names,Gender,Contact,Address,Marrital_Status,Date_of_Birth)values
(1,'Simon Simeon','Male','08134567810','No 25 Wuse zone 3','single','2010-03-27'),
(2,'Abah Jude Abah','male','09032567812','N0 50 Galadima Street','single','2017-05-31'),
(3,'Godwin O Emli','Male','08030067812','No 45 Abacha Way','Married','1992-02-27'),
(4,'Monday Ikade','Male','08134567802','No 20 Esther Street','Married','1995-10-24'),
(5,'Caroline Michael','Female','08034599002','No 50 old arab road','single','2007-07-22'),
(6,'Ruth Shittu','Female','08012517812','No 265 Oliver Street','single','2010-02-27'),
(7,'Rita Rodah','Female','09084560812','No 35 Obde Street','Single','2013-12-05'),
(8,'Tina Linus','Female','09031200812','No 3 Goda Nasco Street','Single','2011-01-23'),
(9, 'Awari James','Male','08134567810','No 25 Wuse zone 3','Married','1990-02-27'),
(10, 'Emmanuel Badmus','male','09032567812','N0 50 Galadima Street','single','2017-05-15'),
(11, 'Desmond Abel','Male','08030067812','No 45 Abacha Way','Single','2002-02-27'),
(12, 'ThankGod Hossana','Male','08134567802','No 20 Esther Street','Married','1988-10-24'),
(13,'Zainab Idris','Female','08034599002','No 50 old arab road','Married','2000-07-22'),
(14,'Gloria Shimite','Female','08012517812','No 265 Oliver Street','Married','1990-02-27'),
(15,'Osinachi Demian','Female','09084560812','No 35 Obde Street','Single','2010-12-05'),
(16,'Adamu Shamsia','Female','09031200812','No 3 Goda Nasco Street','Single','2013-01-23'),
(17,'Maria Jacob','Female','07034599002','No 50 old arab road','Married','2000-07-22'),
(18,'Gloria Atiluku','Female','08012517812','No 265 Oliver Street','Married','1992-02-27'),
(19,'David Benjamin','Male','09084560812','No 35 Obde Street','Single','2010-12-05'),
(20,'Ciara Mike','Female','09031200812','No 3 Goda Nasco Street','Single','2013-01-23');
select * from patients_records;