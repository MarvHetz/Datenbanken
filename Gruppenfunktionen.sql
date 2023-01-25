select sum(niederschlag) from temperatur;

select avg(mittagstemperatur) from temperatur;

select min(nachttemperatur) from temperatur;

select count(distinct niederschlag) from temperatur;

select count(*) from temperatur;

select max(mittagstemperatur - nachttemperatur) from temperatur;

select nachttemperatur from temperatur where nachttemperatur < (select avg(nachttemperatur) from temperatur);

alter table temperatur add
(
    bewoelkung varchar(15)
);

update temperatur set bewoelkung = 'leicht bewoelkt' where datum = '15.06.22';

update temperatur set bewoelkung = 'sonnig' where datum in ('16.06.22','17.06.22');

update temperatur set bewoelkung = 'stark bewoelkt' where datum in ('18.06.22','21.06.22');

update temperatur set bewoelkung = 'Regen' where datum in ('19.06.22','20.06.22');

select datum, bewoelkung from temperatur;

commit;

select avg(mittagstemperatur) from temperatur where bewoelkung like '%bewoelkt' group by bewoelkung;

select sum(niederschlag) from temperatur group by bewoelkung having avg(nachttemperatur) > 14.7;

select bewoelkung, count(bewoelkung) from temperatur group by bewoelkung;

select bewoelkung from temperatur group by bewoelkung having count(mittagstemperatur) >= 2;