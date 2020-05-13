# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\hello\gareija.sql
drop database if exists galerija;
create database galerija;
use galerija;

create table galerija(
    sifra       int not null primary key auto_increment,
    naziv       varchar(50) not null,
    opis        text,
    cijena      decimal(18,2)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    galerija int
);

alter table osoba add foreign key (galerija) references galerija(sifra);

select * from galerija;

insert into galerija (naziv, opis, cijena)
values
('Apolon','Skulptura','15'),
('Luka','Namjestaja','20'),
('Divila','Zivotinja','10');

insert into osoba (ime, prezime, galerija)
values
('Bojan','Drezgić','2'),
('Bojan','Bole','3'),
('Drezgić','Drezga','1');

select * from osoba;
