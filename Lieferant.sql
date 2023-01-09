create table Lieferant(
    Lieferant_id raw(16) constraint lieferant_pk primary key,
    Name varchar2(30),
    strasse varchar2(30),
    hausnummer number(2),
    plz number(5),
    ort varchar2(30)
);

alter table artikel add(
    Lieferant raw(16) constraint artikel_fk1 references Lieferant(lieferant_id)
);

insert into Lieferant values(sys_guid(),'Müller','Müllerweg',17,12345,'Müllerstadt');

insert into Lieferant values(sys_guid(),'Schlosser','Schlossergasse',18,23456,'Schlosserhausen');

insert into Lieferant values(sys_guid(),'Fischer','Fischersteig',19,34567,'Fischerdorf');

update Artikel set Lieferant = (select lieferant_id from Lieferant where name = 'Fischer') where Artikelnummer in (10000,12000);

update Artikel set Lieferant = (select Lieferant_id from Lieferant where name = 'Schlosser') where Artikelnummer between 10001 and 10103;

update Artikel set Lieferant = (select Lieferant_id from Lieferant where name = 'Müller') where Artikelnummer like '11___';

select artikel from Artikel where lieferant in (select lieferant_id from Lieferant where name = 'Fischer' or name = 'Schlosser');

select name, plz from lieferant where lieferant_id in (select lieferant from artikel where Preisgruppe between 'A' and 'D');

select a.Artikelnummer, a.artikel, l.name, l.plz from artikel a, lieferant l where a.lieferant = l.lieferant_id and a.lieferant in (select lieferant_id from lieferant where name not like 'Schlosser');