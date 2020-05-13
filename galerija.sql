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

select * from osoba;

insert into galerija (naziv, opis, cijena)
values
