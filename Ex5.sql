--17.1-17.3
--select id_faktura, imie, nazwisko from faktura inner join klient on faktura.id_klient=klient.id_klient
--select * from klient inner join faktura on faktura.id_klient=klient.id_klient where faktura.czy_oplacona = 0
--select * from produkt inner join koszyk on koszyk.id_produkt = produkt.id_produkt = koszyk.ilosc_sztuk > 100

--18.1-18.3
--select klient.imie, klient.nazwisko, zamowienie.data_zamowienia, produkt.nazwa
--from klient
--inner join zamowienie on klient.id_klient = zamowienie.id_klient
--inner join koszyk on koszyk.id_zamowienie = zamowienie.id_zamowienie
--inner join produkt on produkt.id_produkt = koszyk.id_produkt
--order by nazwisko, imie asc

--select distinct kategoria.nazwa, produkt.nazwa
--from zamowienie
--inner join koszyk on koszyk.id_zamowienie = zamowienie.id_zamowienie
--inner join produkt on produkt.id_produkt = koszyk.id_produkt
--inner join podkategoria on podkategoria.id_podkategoria = produkt.id_podkategoria
--inner join kategoria on kategoria.id_kategoria = podkategoria.id_kategoria
--order by kategoria.nazwa asc

--select produkt.id_produkt, produkt.nazwa, klient.imie, klient.nazwisko
--from klient
--inner join zamowienie on klient.id_klient = zamowienie.id_klient
--inner join koszyk on zamowienie.id_zamowienie = koszyk.id_zamowienie
--inner join produkt on produkt.id_produkt = koszyk.id_produkt
--order by produkt.id_produkt, nazwisko, imie asc

--19.1-19.3
--select imie, nazwisko, count(faktura.id_faktura) as ilosc_faktur
--from klient
--left join faktura on klient.id_klient = faktura.id_klient
--order by ilosc_faktur asc
--group by klient.imie, klient.nazwisko

