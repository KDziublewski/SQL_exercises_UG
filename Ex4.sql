 --1)
select * from klient where data_dodania >= datefromparts(2010, 01, 01) and data_dodania <= datefromparts(2012, 12, 31) order by nazwisko, imie ASC

 --2)
update koszyk set cena_netto = cena_netto * 0.96 where ilosc_sztuk > 4

 --3)
select * from zamowienie, status where id_status in (select id_status from zamowienie_status)

 --4)
delete from status where id_status not in (select id_status from zamowienie_status)