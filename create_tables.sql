CREATE TABLE Ulica (
id_ulica NUMBER CONSTRAINT ulica_pk PRIMARY KEY,
nazwa VARCHAR(45) NOT NULL,
numer NUMBER NOT NULL);

CREATE TABLE Miasto(
id_miasto NUMBER CONSTRAINT miasto_pk PRIMARY KEY,
id_ulica NUMBER CONSTRAINT miasto_ulica_fk REFERENCES Ulica(id_ulica),
nazwa VARCHAR(35)
);

CREATE TABLE Wlasciciel(
id_wlasciciel NUMBER CONSTRAINT wlasciciel_pk PRIMARY KEY,
imie VARCHAR(45) NOT NULL,
nazwisko VARCHAR(45) NOT NULL,
wlasciciel_telefon VARCHAR(12)
);

CREATE TABLE Kategoria_Uslugi
(
id_kat_uslugi NUMBER CONSTRAINT kategoria_uslugi_pk PRIMARY KEY,
opis VARCHAR(200)
);

CREATE TABLE Usluga(
id_uslugi NUMBER CONSTRAINT usluga_pk PRIMARY KEY,
id_kat_uslugi NUMBER CONSTRAINT usluga_kat_uslugi_fk REFERENCES Kategoria_Uslugi(id_kat_uslugi),
opis VARCHAR(200) NOT NULL,
cena NUMBER NOT NULL
)

CREATE TABLE PUNKT_USLUGI(
id_punkt_uslugi NUMBER CONSTRAINT punkt_uslugi_pk PRIMARY KEY,
id_miasto NUMBER CONSTRAINT punkt_uslugi_miasto_fk REFERENCES Miasto(id_miasto),
id_wlasciciel NUMBER CONSTRAINT punkt_uslugi_wlasciciel_fk REFERENCES Wlasciciel(id_wlasciciel),
telefon VARCHAR(12)
);

CREATE TABLE Czas(
id_czas NUMBER CONSTRAINT czas_pk PRIMARY KEY,
data DATE NOT NULL,
dzien NUMBER NOT NULL,
miesiac NUMBER NOT NULL,
rok NUMBER NOT NULL
)

CREATE TABLE FAKT_SPRZEDARZ
(
id_transakcji NUMBER CONSTRAINT sprzedarz_pk PRIMARY KEY,
id_uslugi NUMBER REFERENCES Usluga(id_uslugi),
id_czas NUMBER REFERENCES Czas(id_czas),
id_punkt_uslugi NUMBER REFERENCES PUNKT_USLUGI(id_punkt_uslugi),
kwota NUMBER
)

/*CREATE TABLE Klient(
id_klient NUMBER CONSTRAINT klient_pk PRIMARY KEY,
imie VARCHAR(60) NOT NULL,
naziwsko VARCHAR(60) NOT NULL,
znizka NUMBER NOT NULL DEFAULT 0
);

CREATE TABLE 

CREATE TABLE Adres_klienta
(
    id_adres NUMBER CONSTRAINT adres_klienta_pk PRIAMRY KEY,
    id_klient NUMBER CONSTRAINT klient_adres_klient_fk REFERENCES Klient(id_klient)
    id_miejscowosc 
)*/


