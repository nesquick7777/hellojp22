# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\hello\music.sql
drop database if exists music;
create database music;
use music;

# Kasnije implemetirati članove
create table umjetnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
žanr int not null,
diskografija int,
mjesto varchar(50) not null,
datumpocetka int,
datumkraja int
);

create table žanr(
sifra int not null primary key auto_increment,
naziv varchar(50)
);

create table diskografija(
sifra int not null primary key auto_increment,
umjetnik int not null,
singl int,
album int
);

#Implementirati kasnije izdavačku kuću
create table album(
sifra int not null primary key auto_increment,
ime varchar(50),
srednjaocjena decimal(18,2),
datumalbuma int,
žanr int not null,
diskografija int
);

#Implementirati kasnije izdavačku kuću
create table singl(
sifra int not null primary key auto_increment,
ime varchar(50),
srednjaocjena decimal(18,2),
datumsingla int,
žanr int not null,
diskografija int
);




#create table top100


alter table umjetnik add foreign key (žanr) references žanr(sifra);
alter table umjetnik add foreign key (diskografija) references diskografija(sifra);

alter table diskografija add foreign key (album) references album(sifra);
alter table diskografija add foreign key (singl) references singl(sifra);
alter table diskografija add foreign key (umjetnik) references umjetnik(sifra);

alter table album add foreign key (žanr) references žanr(sifra);
alter table album add foreign key (diskografija ) references diskografija(sifra);

alter table singl add foreign key (žanr) references žanr(sifra);
alter table singl add foreign key (diskografija ) references diskografija(sifra);


insert into uloga (ime, opis)
values
('Admin','Upravlja infrastrukturom web stranice'),
('Moderator','Odobrava promjene, banuje ljude'),
('Korisnik','Ocjenjuje, predlaže promjene');


insert into žanr(ime) 
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


insert into umjetnik (ime,žanr,diskografija,mjesto,datumpocetka,datumkraja)
values
('David Bowie',1,null,'England',1964,2016);

insert into album (ime,srednjaocjena,datumalbuma,žanr,diskografija)
values
('Heroes',4.5,1977,1,null),
('Heroes',4.5,1977,1,null),
('Heroes',4.5,1977,1,null);

insert into singl (ime,srednjaocjena,datumsingla,žanr,diskografija)
values
('Life on Mars',4.4,1972,1,null),
('Life on Mars',4.4,1972,1,null),
('Life on Mars',4.4,1972,1,null);

insert into diskografija (umjetnik,singl)
select 1,sifra from singl;
update diskografija set album =sifra where umjetnik =1;

#select * from osoba;
#select * from korisnik;
#select * from uloga;
#select * from dopuštenje;
#select * from album;
#select * from singl;
#select * from umjetnik;
#select * from diskografija;
#select * from žanr;

