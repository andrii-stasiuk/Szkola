CREATE DATABASE LigaKreglarskaPrzyklad CHARACTER SET utf8 COLLATE utf8_general_ci;

use LigaKreglarskaPrzyklad;

CREATE TABLE Wyniki_kreglarzy (
	IDMeczu int NOT NULL DEFAULT 0 ,
	NumerGry smallint NOT NULL DEFAULT 0 ,
	IDKreglarza int NOT NULL DEFAULT 0 ,
	WynikCzysty smallint NULL DEFAULT 0 ,
	WynikHandicap smallint NULL DEFAULT 0 ,
	GraWygrana bit NOT NULL DEFAULT 0 
) ;

CREATE TABLE Kreglarze (
	IDKreglarza int NOT NULL DEFAULT 0 ,
	NazwiskoKreglarza nvarchar (50) NULL ,
	ImieKreglarza nvarchar (50) NULL ,
	SrodkowyInicjalKreglarza nvarchar (1) NULL ,
	AdresKreglarza nvarchar (50) NULL ,
	MiastoKreglarza nvarchar (50) NULL ,
	StanZamKreglarza nvarchar (2) NULL ,
	KodPocztowyKreglarza nvarchar (10) NULL ,
	TelefonKreglarza nvarchar (14) NULL ,
	IDDruzyny int NULL 
) ;

CREATE TABLE Gry_meczowe (
	IDMeczu int NOT NULL DEFAULT 0 ,
	NumerGry smallint NOT NULL DEFAULT 0 ,
	IDWygranejDruzyny int NULL DEFAULT 0 
) ;

CREATE TABLE Druzyny (
	IDDruzyny int NOT NULL DEFAULT 0 ,
	NazwaDruzyny nvarchar (50) NOT NULL ,
	IDKapitana int NULL 
) ;

CREATE TABLE Turnieje (
	IDTurnieju int NOT NULL DEFAULT 0 ,
	DataTurnieju date NULL ,
	LokalizacjaTurnieju nvarchar (50) NULL 
) ;

CREATE TABLE Mecze_turniejowe (
	IDMeczu int NOT NULL DEFAULT 0 ,
	IDTurnieju int NULL DEFAULT 0 ,
	Tory nvarchar (5) NULL ,
	IDDruzynyTorNieparzysty int NULL DEFAULT 0 ,
	IDDruzynyTorParzysty int NULL DEFAULT 0 
) ;

CREATE TABLE ztblPoziomKreglarza (
        PoziomKreglarza nvarchar (15) NOT NULL , 
        SredniaNiskaKreglarza smallint NULL ,
        SredniaWysokaKreglarza smallint NULL ) ;

CREATE TABLE ztblPomijanieEtykiet ( 
        LicznikEtykiet int NOT NULL ) ;

CREATE TABLE ztblTygodnie (
        PoczatekTygodnia date NOT NULL ,
        KoniecTygodnia date NULL ) ;

ALTER TABLE Wyniki_kreglarzy ADD
	CONSTRAINT Wyniki_kreglarzy_PK PRIMARY KEY
	(
		IDMeczu,
		NumerGry,
		IDKreglarza
	) ;

CREATE  INDEX IDKreglarza ON Wyniki_kreglarzy(IDKreglarza) ;

CREATE  INDEX GryMeczoweWynikiKreglarzy ON Wyniki_kreglarzy(IDMeczu, NumerGry) ;

ALTER TABLE Kreglarze ADD
	CONSTRAINT Kreglarze_PK PRIMARY KEY
	(
		IDKreglarza
	) ;

CREATE  INDEX NazwiskoKreglarza ON Kreglarze(NazwiskoKreglarza) ;

CREATE  INDEX KreglarzeIDDruzyny ON Kreglarze(IDDruzyny) ;

ALTER TABLE Gry_meczowe ADD
	CONSTRAINT Gry_meczowe_PK PRIMARY KEY
	(
		IDMeczu,
		NumerGry
	) ;

CREATE  INDEX IDDruzyny1 ON Gry_meczowe(IDWygranejDruzyny) ;

CREATE  INDEX MeczeTurniejoweGryMeczowe ON Gry_meczowe(IDMeczu) ;

ALTER TABLE Druzyny ADD 
	CONSTRAINT Druzyny_PK PRIMARY KEY
	(
		IDDruzyny
	) ;

CREATE  UNIQUE  INDEX IDDruzyny ON Druzyny(IDDruzyny) ;

ALTER TABLE Turnieje ADD
	CONSTRAINT Turnieje_PK PRIMARY KEY
	(
		IDTurnieju
	) ;

ALTER TABLE Mecze_turniejowe ADD
	CONSTRAINT Mecze_turniejowe_PK PRIMARY KEY
	(
		IDMeczu
	) ;

CREATE  INDEX MeczeTurniejoweParzysty ON Mecze_turniejowe(IDDruzynyTorParzysty) ;

CREATE  INDEX MeczeTurniejoweNieparzysty ON Mecze_turniejowe(IDDruzynyTorNieparzysty) ;

CREATE  INDEX MeczeTurniejoweIDTurnieju ON Mecze_turniejowe(IDTurnieju) ;

ALTER TABLE ztblPoziomKreglarza ADD 
        CONSTRAINT ztblPoziomKreglarza_PK PRIMARY KEY 
        ( 
                PoziomKreglarza 
        ) ;

ALTER TABLE ztblPomijanieEtykiet ADD 
        CONSTRAINT ztblPomijanieEtykiet_PK PRIMARY KEY 
        ( 
                LicznikEtykiet 
        ) ;

ALTER TABLE ztblTygodnie ADD
        CONSTRAINT ztblTygodnie_PK PRIMARY KEY 
        ( 
                PoczatekTygodnia 
        ) ;

ALTER TABLE Wyniki_kreglarzy ADD
	CONSTRAINT Wyniki_kreglarzy_FK00 FOREIGN KEY
	(
		IDKreglarza
	) REFERENCES Kreglarze (
		IDKreglarza
	),

	ADD CONSTRAINT Wyniki_kreglarzy_FK01 FOREIGN KEY
	(
		IDMeczu,
		NumerGry
	) REFERENCES Gry_meczowe (
		IDMeczu,
		NumerGry
	);

ALTER TABLE Kreglarze ADD
	CONSTRAINT Kreglarze_FK00 FOREIGN KEY
	(
		IDDruzyny
	) REFERENCES Druzyny (
		IDDruzyny
	);

ALTER TABLE Gry_meczowe ADD
	CONSTRAINT Gry_meczowe_FK00 FOREIGN KEY
	(
		IDMeczu
	) REFERENCES Mecze_turniejowe (
		IDMeczu
	);

ALTER TABLE Mecze_turniejowe ADD
	CONSTRAINT Mecze_turniejowe_FK00 FOREIGN KEY
	(
		IDDruzynyTorParzysty
	) REFERENCES Druzyny (
		IDDruzyny
	),

	ADD CONSTRAINT Mecze_turniejowe_FK01 FOREIGN KEY
	(
		IDDruzynyTorNieparzysty
	) REFERENCES Druzyny (
		IDDruzyny
	),
	ADD CONSTRAINT Mecze_turniejowe_FK02 FOREIGN KEY
	(
		IDTurnieju
	) REFERENCES Turnieje (
		IDTurnieju
	);