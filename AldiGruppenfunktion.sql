create table discounter
(
  ort         varchar2(30),
  standort    varchar2(30),
  unternehmen varchar2(20),
  tag         varchar2(10),
  umsatz      number(10, 2)
);
 
insert into discounter values ('Würzburg', 'Eichhornstraße', 'Aldi Süd', ‘Montag’, 1234567.89);
insert into discounter values ('Würzburg', 'Rottendorfer Straße', 'Aldi Süd', ‘Montag’, 1765432.76);
insert into discounter values ('Schweinfurt', 'Heckenweg', 'Aldi Süd', ‘Montag’, 1345678.15);
insert into discounter values ('Schweinfurt', 'Oskar-von-Miller-Straße', 'Aldi Süd', ‘Montag’, 1876543.07);
insert into discounter values ('Wien', 'Aignerstraße', 'Hofer', ‘Montag’, 3213213.21);
insert into discounter values ('Hamburg', 'Zirkusweg', 'Aldi Nord', ‘Montag’, 2030405.09);
insert into discounter values ('Hamburg', 'Grindelberg', 'Aldi Nord', ‘Montag’, 1876543.82);
insert into discounter values ('Essen', 'Natorpstraße', 'Aldi Nord', ‘Montag’, 1020304.76);
insert into discounter values ('Essen', 'Steeler Straße', 'Aldi Nord', ‘Montag’, 1987123.14);
insert into discounter values ('Würzburg', 'Eichhornstraße', 'Aldi Süd', ‘Dienstag’, 987654.65);
insert into discounter values ('Würzburg', 'Rottendorfer Straße', 'Aldi Süd', ‘Dienstag’, 1765432.81);
insert into discounter values ('Schweinfurt', 'Heckenweg', 'Aldi Süd', ‘Dienstag’, 1444333.22);
insert into discounter values ('Schweinfurt', 'Oskar-von-Miller-Straße', 'Aldi Süd', ‘Dienstag’, 1776655);
insert into discounter values ('Wien', 'Aignerstraße', 'Hofer', ‘Dienstag’, 3223223.22);
insert into discounter values ('Hamburg', 'Zirkusweg', 'Aldi Nord', ‘Dienstag’, 2009988.77);
insert into discounter values ('Hamburg', 'Grindelberg', 'Aldi Nord', ‘Dienstag’, 1887766.55);
insert into discounter values ('Essen', 'Natorpstraße', 'Aldi Nord', ‘Dienstag’, 1357900.12);
insert into discounter values ('Essen', 'Steeler Straße', 'Aldi Nord', ‘Dienstag’, 1987123.39);
 
select tag, unternehmen, sum(umsatz) "Gesamtumsatz", count(unternehmen) "Anzahl"
 from discounter
 group by unternehmen, tag
 order by tag desc, unternehmen;

select unternehmen, ort, avg(umsatz) "Durchschnittumsatz"
from discounter
group by unternehmen, ort;