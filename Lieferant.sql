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

update Artikel  set Lieferant = (select lieferant_id from Lieferant where name = 'Fischer') where Artikelnummer in (10000,12000);

update Artikel set Lieferant = (select Lieferant_id from Lieferant wherer name = 'Schlosser') where Artikelnummer between 10001 and 10103;

update Artikel set Lieferant = (select Lieferant_id from Lieferant wherer name = 'Müller') where Artikelnummer like '11___';