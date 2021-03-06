insert into PRACOWNICY (ID_PRACOWNIKA, DATA_URODZENIA, EMAIL, NAZWISKO, IMIE, IMIE_2, PESEL) values (1, TO_DATE('1982-12-08','YYYY-MM-DD'), 'ckroll0@ebay.com', 'Kroll', 'Niles', 'Colman', '60357286113');
insert into PRACOWNICY (ID_PRACOWNIKA, DATA_URODZENIA, EMAIL, NAZWISKO, IMIE, IMIE_2, PESEL) values (2, TO_DATE('1996-01-22','YYYY-MM-DD'), 'iandreichik1@wix.com', 'Andreichik', 'Carlie', null, '07625063243');
insert into PRACOWNICY (ID_PRACOWNIKA, DATA_URODZENIA, EMAIL, NAZWISKO, IMIE, IMIE_2, PESEL) values (3, TO_DATE('1965-12-26','YYYY-MM-DD'), 'zroberto2@ow.ly', 'Roberto', 'Jeanette', 'Zebadiah', '68600110442');
insert into PRACOWNICY (ID_PRACOWNIKA, DATA_URODZENIA, EMAIL, NAZWISKO, IMIE, IMIE_2, PESEL) values (4, TO_DATE('1981-12-19','YYYY-MM-DD'), 'nnardoni3@google.ru', 'Nardoni', 'Cullen', null, '80140067612');
insert into PRACOWNICY (ID_PRACOWNIKA, DATA_URODZENIA, EMAIL, NAZWISKO, IMIE, IMIE_2, PESEL) values (5, TO_DATE('1998-01-06','YYYY-MM-DD'), 'mempson4@epa.gov', 'Empson', 'Welsh', 'Mitchael', null);

insert into KATEGORIE (ID_KATEGORII, NAZWA) values (1, 'Implementacja');
insert into KATEGORIE (ID_KATEGORII, NAZWA) values (2, 'Konsultacja');
insert into KATEGORIE (ID_KATEGORII, NAZWA) values (3, 'Sprawdzanie');
insert into KATEGORIE (ID_KATEGORII, NAZWA) values (4, 'Debugowanie');

insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (1, 'Logowanie', 3, TO_DATE('2021-11-30','YYYY-MM-DD'));
insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (2, 'Rejestracja', 5, TO_DATE('2021-06-9','YYYY-MM-DD'));
insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (3, 'Dodawanie produktów', 1, TO_DATE('2021-03-20','YYYY-MM-DD'));
insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (4, 'Usuwanie produktów', 2, TO_DATE('2021-08-09','YYYY-MM-DD'));
insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (5, 'Edytowanie produktów', null, null);
insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (6, 'Chatbot', null, null);
insert into MODULY (ID_MODULU, NAZWA, ID_PRACOWNIKA, DATA_ZATWIERDZENIA) values (7, 'Wyszukiwarka', null, null);

insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (1, TO_DATE('2021-10-10','YYYY-MM-DD'), 1, 1, 1, null, 'Brak napotkanych problemów', TO_DATE('2021-10-15', 'YYYY-MM-DD'));
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (2, TO_DATE('2021-02-05','YYYY-MM-DD'), 2, 2, 1, null, 'Wymagana konsultacja z klientem', TO_DATE('2021-05-15', 'YYYY-MM-DD'));
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (3, TO_DATE('2021-02-06','YYYY-MM-DD'), 2, 1, 1, 2, 'Implementacja wg zaleceń klienta', TO_DATE('2021-05-16', 'YYYY-MM-DD'));
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (4, TO_DATE('2021-02-01','YYYY-MM-DD'), 3, 1, 2, null, 'Nwm czemu ale działa', TO_DATE('2021-02-04', 'YYYY-MM-DD'));
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (5, TO_DATE('2021-07-15','YYYY-MM-DD'), 4, 1, 2, null, 'Coś nie działa', TO_DATE('2021-07-16', 'YYYY-MM-DD'));
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (6, TO_DATE('2021-07-17','YYYY-MM-DD'), 4, 1, 2, 5, 'Znaleziono buga', TO_DATE('2021-07-18', 'YYYY-MM-DD'));
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (7, TO_DATE('2021-08-10','YYYY-MM-DD'), 5, 1, 3, null, null, null);
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (8, TO_DATE('2021-08-10','YYYY-MM-DD'), 6, 1, 3, null, null, null);
insert into CZYNNOSCI (ID_CZYNNOSCI, DATA_ROZPOCZECIA, ID_MODULU, ID_KATEGORII, ID_PRACOWNIKA, ID_CZYN_NADRZ, NOTATKA, DATA_WYKONANIA) values (9, TO_DATE('2021-08-10','YYYY-MM-DD'), 7, 2, 3, null, null, null);


COMMIT;