CREATE DATABASE zapytania_nazwisko;

USE zapytania_nazwisko;

CREATE TABLE pracownicy (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  imie          VARCHAR(15) NOT NULL,
  nazwisko      VARCHAR(20) NOT NULL,
  placa         DECIMAL(8,2),
  stanowisko    VARCHAR(20) NOT NULL,
  pesel         BIGINT(11) UNSIGNED
);

INSERT INTO pracownicy
VALUES (1, 'Adam', 'Kowalski', 1624.50, 'magazynier', 85121201234);

INSERT INTO pracownicy
VALUES (2, 'Adam', 'Nowak', 3760.00, 'kierownik', 90010111234);

INSERT INTO pracownicy
VALUES (3, 'Andrzej', 'Kowalski', 4200.00, 'kierownik', 82020209876);

INSERT INTO pracownicy
VALUES (4, 'Arkadiusz', 'Malinowski', 1600.00, 'kierowca', 93110212345);

INSERT INTO pracownicy
VALUES (5, 'Andrzej', 'Malinowski', 1450.00, 'sprzedawca', NULL);

INSERT INTO pracownicy
VALUES (6, 'Krzysztof', 'Nowicki', 1300.00, 'sprzedawca', NULL);

INSERT INTO pracownicy
VALUES (7, 'Kacper', 'Adamczyk', 1610.50, 'serwisant', 92090912468);

INSERT INTO pracownicy
VALUES (8, 'Kamil', 'Andrzejczak', 1200.00, 'asystent', NULL);

INSERT INTO pracownicy
VALUES (9, 'Krzysztof', 'Arkuszewski', 1500.00, 'magazynier', 80123109876);

INSERT INTO pracownicy
VALUES (10, 'Kamil', 'Borowski', 1600.00, 'sprzedawca', 95050515432);

