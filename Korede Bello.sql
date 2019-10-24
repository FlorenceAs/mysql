/*

USE florence_database;
create table buyer(
BuyerName	char(35)	not Null,
Department	char(30)	not Null,
Position	char(10)	Null,
Supervisor	char(35)	Null,
Constraint	Buyer_pk	Primary Key(BuyerName)
);*/


/* USE florence_database; */

CREATE Table Human(
Humanid	Integer	    Not Null,
firstname	char(35)		Not	Null,
Color 	char(35)	Not	Null,
sex 	char (10)	Null,
BloodGroup 	char(35)Null,
CONSTRAINT	Human_PK	Primary Key (HumanId)		
);

create Table Games(
	OrderNumber	Integer	Not Null,
StoreNumber	Integer			Null,
StoreZip 	char(9)			Null,
OrderMonth	char (12)	Not Null,
OrderYear	Integer		Not Null,
OrderTotal	Numeric(9,2)	Null,
humanId		integer		Not Null,
CONSTRAINT	Games_PK	Primary Key (OrderNumber),

CONSTRAINT	Games_fk	foreign key (humanId)
						references human(HumanID)
);
insert  into human values(
345, 'Jennifer', 'Blue', 'female','O.positive'
);
insert into human values(
346, 'jupiter', 'black', 'female', 'O, negative');
select * 
from human;
insert into Games values(
345, null, null, 'july', 2013, 2346751.54, 345
);

Alter table human
Add age Integer Not null;

Alter table human
drop  color;

 Create table Artist_info (
 ArtistId		integer		Not Null,
 Artistname		char(30)	not null,
 rating			integer		not null,
 phonenumber	numeric (10, 0)		not null,
 constraint		Artist_info_PK		primary key(ArtistId)
 );
 
 Create table Album (
 ArtistId		integer		Not Null,
 track		char(30)	not null,
 genre		integer		not null,
 yearReleased	integer		not null,
 constraint		Album_PK		primary key(track),
 constraint		Artist_info_FK	foreign key(ArtistId)
 references		Artist_info(ArtistId)
 );
 
 insert into Artist_info values(
09, 'Korede Bello', 5, 08064658827);
select * 
from artist_info;