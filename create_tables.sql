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
