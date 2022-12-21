create table Artikel(
    Artikelnummer number(5) constraint artikel_pk primary key,
    Artikel varchar2(30),
    Anzahl number(5)
);

insert into Artikel values(10000,'Rasenmäher Schafherde',4);

insert into Artikel values(10001,'Rasenmäher Nagelschere',21);

insert into Artikel values(10002,'Rasenmäher Elektro',21);

insert into Artikel values(10003,'Rasenmäher Hand',5);

insert into Artikel values(10100,'Heckenschere Elektro',20);

insert into Artikel values(10101,'Heckenschere Hand klein',38);

insert into Artikel values(10102,'Heckenschere Hand Teleskop',35);

insert into Artikel values(10103,'Heckenschere Benzin',5);

insert into Artikel values(11000,'Pflanze Heckenrose', 2105);

insert into Artikel values(11001,'Pflanze Kletterrose',1805);

insert into Artikel values(11002,'Pflanze Rose rot',3812);

insert into Artikel values(11003,'Pflanze Rose gelb',3152);

insert into Artikel values(11100,'Pflanze Tulpe weiß',1254);

insert into Artikel values(11101,'Pflanze Tulpe gelb',854);

insert into Artikel values(11102,'Pflanze Tulpe rot',1159);

insert into Artikel values(11103,'Pflanze Tulpe dunkelrot',1654);

insert into Artikel values(12000,null,14);

select Artikel from Artikel where Artikelnummer = 11000;

select Artikel from Artikel where Anzahl >= 2000 order by Anzahl;

select Artikel from Artikel where Artikel like '%Hand%';

select Artikel from Artikel where Artikel like '______________e%';

select Artikel from Artikel where Artikel like '%a%a%';

select Artikel from Artikel where Artikel is not null;

select Artikel from Artikel where Artikelnummer in (10000,12000,14000);

select Artikel from Artikel where Anzahl between 10 and 100;

select Artikel from Artikel where Anzahl not between 10000 and 10099;

alter table Artikel add(
    Preisgruppe char
);

update Artikel set Preisgruppe = 'K' where Artikelnummer in (10000,10002);

update Artikel set Preisgruppe = 'A' where Artikelnummer in (10001,11000,11001,11003,11100,11101,11102);

update Artikel set Preisgruppe = 'E' where Artikelnummer in (10003,10102);

update Artikel set Preisgruppe = 'G' where Artikelnummer in (10100);

update Artikel set Preisgruppe = 'D' where Artikelnummer in (10101,12000);

update Artikel set Preisgruppe = 'H' where Artikelnummer in (10103);

update Artikel set Preisgruppe = 'B' where Artikelnummer in (11002,11103);

select Artikel from Artikel where (Preisgruppe between 'B' and 'F') and Artikel is not null;

select Artikel,Preisgruppe from Artikel where Preisgruppe in ('A') or (Preisgruppe in ('D','E','F') and Artikel like '%Hand%');