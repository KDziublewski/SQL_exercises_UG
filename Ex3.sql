-- 14.1-14.3
update pracownik set dodatek = 50 where dodatek is NULL
update klient set imie='Jerzy', nazwisko = 'Nowak' where id_klient = 10
update pracownik set dodatek = dodatek + 100 where pensja < 1500

-- 15.1-15.2
delete from klient where id_klient = 17
delete from faktura where id_klient = 3

-- 16.1-16.2
insert into adres (id_adres, ulica, numer, kod, miejscowosc) values(126, 'ul. Korzenna', 12, 00-950, 'Warszawa')
insert into klient (id_klient, id_adres, imie, nazwisko, telefon, pesel, email, haslo, rabat, data_dodania) values (121, 126, 'Adam', 'Cichy', '123-454-321', 56121201234, 'Acichy@oo.pl', 'haslo', 0, getdate())
insert into adres (id_adres, ulica, numer, kod, miejscowosc) values(127, 'ul. Lewartowskiego', 12, 00-950, 'Warszawa')
insert into pracownik (id_pracownik, id_adres, imie, nazwisko, data_zatrudnienia, pensja, dodatek, stanowisko) values (127, 127, 'Alojzy', 'Mikos', '2010-08-11', 3000, 50, 'sprzedawca')
