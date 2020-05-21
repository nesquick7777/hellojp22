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
datumpocetka year not null,
datumkraja year
);

create table album(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
ocjena decimal(18,2),
datumalbuma year not null,
zanr varchar(50) not null,
podzanr varchar(50),
umjetnik int not null,
izdavackakuca varchar(50)
);

create table singl(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
ocjena decimal(18,2),
datumsingla year not null,
zanr varchar(50) not null,
podzanr varchar(50),
umjetnik int not null,
izdavackakuca varchar(50)
);

create table EP(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
ocjena decimal(18,2),
datumEP year not null,
zanr varchar(50) not null,
podzanr varchar(50),
umjetnik int not null,
izdavackakuca varchar(50)
);

create table clan(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
datumr date not null,
mjestor varchar(50) not null,
datump date,
mjestop varchar(50) not null,
umjetnik int not null,
biljeske varchar(250) not null
);

#create table top100


alter table clan add foreign key (umjetnik) references umjetnik(sifra);

alter table album add foreign key (umjetnik) references umjetnik(sifra);

alter table singl add foreign key (umjetnik) references umjetnik(sifra);

alter table EP add foreign key (umjetnik) references umjetnik(sifra);


insert into umjetnik (ime,zanr,podzanr,mjesto,datumpocetka,datumkraja)
values
('David Bowie','Rock','Art Rock','England',1964,2016);

insert into album (ime,ocjena,datumalbuma,zanr,podzanr,umjetnik,izdavackakuca)
values
('Heroes',4.5,1977,'Rock','Art Rock',1,'RCA Records');

insert into singl (ime,ocjena,datumsingla,zanr,podzanr,umjetnik,izdavackakuca)
values
('Life on Mars',4.4,1973,'Rock','Art Rock',1,'RCA Records');

insert into EP (ime,ocjena,datumEP,zanr,podzanr,umjetnik,izdavackakuca)
values
('Starman',4.3,1972,'Rock','Art Rock',1,'RCA Records');

insert into clan (ime, prezime,datumr,mjestor,datump,mjestop,umjetnik,biljeske)
values
('David', 'Bowie','1947-01-08', 'Brixton','2016-01-10','Manhattan',1,'Married to Angela Bowie [1970-80] and Iman [1992-2016], father of Duncan Jones')


#select * from album;
#select * from singl;
#select * from umjetnik;
#select * from ep;
#select * from clan;

