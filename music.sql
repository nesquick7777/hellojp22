# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\hello\music.sql
drop database if exists music;
create database music;
use music;

create table umjetnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
zanr varchar(50) not null,
podzanr varchar(50),
mjesto varchar(50) not null,
datumpocetka int not null,
datumkraja int
);

create table album(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
srednjaocjena decimal(18,2),
datumalbuma int not null,
zanr varchar(50) not null,
podzanr varchar(50),
umjetnik int not null,
izdavackakuca varchar(50)
);

create table singl(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
srednjaocjena decimal(18,2),
datumsingla int not null,
zanr varchar(50) not null,
podzanr varchar(50),
umjetnik int not null,
izdavackakuca varchar(50)
);

create table EP(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
srednjaocjena decimal(18,2),
datumEP int not null,
zanr varchar(50) not null,
podzanr varchar(50),
umjetnik int not null,
izdavackakuca varchar(50)
);

create table clan(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
datumr decimal(18,2),
mjestor varchar(50) not null,
datump decimal(18,2),
mjestop varchar(50) not null,
umjetnik int not null,
biljeske varchar(50) not null
);

#create table top100


alter table clan add foreign key (umjetnik) references umjetnik(sifra);

alter table album add foreign key (umjetnik) references umjetnik(sifra);

alter table singl add foreign key (umjetnik) references umjetnik(sifra);

alter table EP add foreign key (umjetnik) references umjetnik(sifra);


#select * from album;
#select * from singl;
#select * from umjetnik;
#select * from ep;
#select * from clan;

