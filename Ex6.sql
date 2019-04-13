-- 20.1 - 20.3
select max(pensja) as najwieksza_pensja from pracownik

select avg(rabat) as srednia_rabat from klient

select min(data_wystawienia) as najwczesniejsza_data_wystawienia from faktura

-- 21.1 - 21.2
select imie, nazwisko, count(zamowienie.id_zamowienie) as ilosc_zamowien
from klient
left join zamowienie on zamowienie.id_klient = klient.id_klient
group by klient.imie, klient.nazwisko
order by ilosc_zamowien desc

select produkt.id_produkt, produkt.nazwa, count(koszyk.id_produkt) as ilosc_zamowien
from produkt
left join koszyk on produkt.id_produkt = koszyk.id_produkt
group by produkt.id_produkt, produkt.nazwa
order by ilosc_zamowien asc

-- 22.1 - 22.2
select imie, nazwisko, pensja
from pracownik
where pensja in (select max(pensja) from pracownik)

select imie, nazwisko, pensja
from pracownik
where pensja > (select avg(pensja) from pracownik)

-- 23.1 - 23.2

select nazwa
from produkt
where produkt.id_produkt not in 
(select produkt.id_produkt 
from koszyk 
inner join produkt on produkt.id_produkt = koszyk.id_produkt)

select imie, nazwisko
from klient
where klient.id_klient not in
(select klient.id_klient
from zamowienie
inner join klient on klient.id_klient = zamowienie.id_klient)
order by nazwisko, imie asc