# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\hello\music.sql
drop database if exists music;
create database music;
use music;

create table dopuštenje(
    sifra int not null primary key auto_increment,
    uloga int not null,
    module varchar(50) not null
);

create table uloga(
    sifra int not null primary key auto_increment,
    korisnik int not null,
    ime varchar(50) not null,
    opis varchar(50) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    username varchar(50) not null,
    lozinka varchar(50) not null
    
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(100) not null
);



alter table korisnik add foreign key (osoba) references osoba(sifra);

alter table uloga add foreign key (korisnik) references korisnik(sifra);

alter table dopuštenje add foreign key (uloga) references uloga(sifra);



#select * from osoba;
#select * from korisnik;
#select * from uloga;
#select * from dopuštenje;