# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\hello\music.sql
drop database if exists music;
create database music;
use music;

# Kasnije implemetirati članove
create table umjetnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
žanr int not null,
mjesto varchar(50) not null,
datumpocetka int not null,
datumkraja int
);

create table žanr(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table album(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
srednjaocjena decimal(18,2),
datumalbuma int not null,
žanr int not null,
umjetnik int not null,
izdavačkakuća int
);

create table singl(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
srednjaocjena decimal(18,2),
datumsingla int not null,
žanr int not null,
umjetnik int not null,
izdavačkakuća int
);

create table EP(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
srednjaocjena decimal(18,2),
datumEP int not null,
žanr int not null,
umjetnik int not null,
izdavačkakuća int
);

create table izdavačkakuća(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table član(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
datumr decimal(18,2),
mjestor varchar(50) not null,
datump decimal(18,2),
mjestop varchar(50) not null,
umjetnik int not null,
bilješke varchar(50) not null
);

#create table top100


alter table umjetnik add foreign key (žanr) references žanr(sifra);

alter table član add foreign key (umjetnik) references umjetnik(sifra);

alter table album add foreign key (žanr) references žanr(sifra);
alter table album add foreign key (umjetnik) references umjetnik(sifra);
alter table album add foreign key (izdavačkakuća) references izdavačkakuća(sifra);

alter table singl add foreign key (žanr) references žanr(sifra);
alter table singl add foreign key (umjetnik) references umjetnik(sifra);
alter table singl add foreign key (izdavačkakuća) references izdavačkakuća(sifra);

alter table EP add foreign key (žanr) references žanr(sifra);
alter table EP add foreign key (umjetnik) references umjetnik(sifra);
alter table EP add foreign key (izdavačkakuća) references izdavačkakuća(sifra);


insert into žanr(naziv) 
values
('Rock'),
('Pop'),
('Jazz'),
('Metal'),
('Hip Hop'),
('Punk'),
('Blues'),
('EDM'),
('Soundtrack');


insert into umjetnik (ime,žanr,mjesto,datumpocetka,datumkraja)
values
('David Bowie',1,'England',1964,2016);

insert into album (ime,srednjaocjena,datumalbuma,žanr,umjetnik)
values
('Heroes',4.5,1977,1,1);

insert into singl (ime,srednjaocjena,datumsingla,žanr,umjetnik)
values
('Life on Mars',4.4,1973,1,1);

insert into EP (ime,srednjaocjena,datumEP,žanr,umjetnik)
values
('Starman',4.3,1972,1,1);


#select * from album;
#select * from singl;
#select * from umjetnik;
#select * from žanr;
#select * from ep;
#select * from izdavačkakuća;
#select * from član;

