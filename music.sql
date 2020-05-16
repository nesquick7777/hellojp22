# c:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\hello\music.sql
drop database if exists music;
create database music;
use music;

#IMPLEMENTIRATI modul kasnije
create table dopuštenje(
    sifra int not null primary key auto_increment,
    uloga int not null
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

# Kasnije implemetirati članove
create table band(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
žanr int not null,
diskografija int not null,
datumpocetka datetime,
datumkraja datetime
);

create table žanr(
sifra int not null primary key auto_increment,
ime varchar(50)
);

create table diskografija(
sifra int not null primary key auto_increment,
band int not null,
singl int not null,
album int not null
);

create table album(
sifra int not null primary key auto_increment,
ime varchar(50),
ocjena decimal(18,2),
datumalbuma datetime,
žanr int not null
);

create table singl(
sifra int not null primary key auto_increment,
ime varchar(50),
ocjena decimal(18,2),
datumsingla datetime,
žanr int not null
);




#create table top100


alter table korisnik add foreign key (osoba) references osoba(sifra);

alter table uloga add foreign key (korisnik) references korisnik(sifra);

alter table dopuštenje add foreign key (uloga) references uloga(sifra);

alter table band add foreign key (žanr) references žanr(sifra);
alter table band add foreign key (diskografija) references diskografija(sifra);

alter table diskografija add foreign key (album) references album(sifra);
alter table diskografija add foreign key (singl) references singl(sifra);

alter table album add foreign key (žanr) references žanr(sifra);

alter table singl add foreign key (žanr) references žanr(sifra);


#select * from osoba;
#select * from korisnik;
#select * from uloga;
#select * from dopuštenje;
#select * from album;
#select * from singl;
#select * from band;
#select * from diskografija;
#select * from žanr;