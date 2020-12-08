CREATE DATABASE nazwisko_firma;

USE nazwisko_firma;

CREATE TABLE stanowiska (
id_stanowiska INT PRIMARY KEY AUTO_INCREMENT,
nazwa VARCHAR(20) UNIQUE NOT NULL,
pensja DECIMAL(7,2) NOT NULL
);

CREATE TABLE pracownicy (
id INT PRIMARY KEY AUTO_INCREMENT,
imie VARCHAR(20) NOT NULL,
nazwisko VARCHAR(20) NOT NULL,
data_ur DATE NOT NULL,
pesel CHAR(11) UNIQUE NOT NULL,
miasto VARCHAR(20) NOT NULL,
stanowisko INT NOT NULL REFERENCES stanowiska(id_stanowiska)
);

INSERT INTO stanowiska(nazwa, pensja)
VALUES ('kierownik', 4000.00);
INSERT INTO stanowiska(nazwa, pensja)
VALUES ('asystent', 3200.00);
INSERT INTO stanowiska(nazwa, pensja)
VALUES ('sekretarka', 2500.00);
INSERT INTO stanowiska(nazwa, pensja)
VALUES ('pracownik', 2800.00);
INSERT INTO stanowiska(nazwa, pensja)
VALUES ('kierowca', 2700.00);

INSERT INTO pracownicy
VALUES (1, 'Anna', 'Nowak', '1985-04-01', '85040112345', 'Sopot', 3);
INSERT INTO pracownicy
VALUES (2, 'Jan', 'Kowalski', '1975-05-01', '75050154321', 'Gdańsk', 1);
INSERT INTO pracownicy
VALUES (3, 'Kaja', 'Borecka', '1980-12-24', '80122454321', 'Gdynia', 2);
INSERT INTO pracownicy
VALUES (4, 'Maria', 'Borek', '1967-11-30', '67113012345', 'Gdynia', 4);
INSERT INTO pracownicy
VALUES (5, 'Marian', 'Marczak', '1965-11-10', '65111098765', 'Sopot', 4);
INSERT INTO pracownicy
VALUES (6, 'Kajetan', 'Grota', '1965-01-31', '65013198765', 'Sopot', 5);