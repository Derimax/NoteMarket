drop database if exists NoteMarket;
create database NoteMarket;
use NoteMarket;


CREATE TABLE Account (
    Username VARCHAR(20) PRIMARY KEY NOT NULL,
    email VARCHAR(30) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(20) NOT NULL,
    psw VARCHAR(20) NOT NULL,
    indirizzo VARCHAR(30) NOT NULL,
    dataDiNascita DATE NOT NULL
);


CREATE TABLE Venditore (
    username VARCHAR(20) PRIMARY KEY NOT NULL,
    FOREIGN KEY (username)
        REFERENCES Account (Username) on delete cascade on update cascade
); 


CREATE TABLE Acquirente (
    username VARCHAR(20) PRIMARY KEY NOT NULL,
    FOREIGN KEY (username)
        REFERENCES Account (Username) on delete cascade on update cascade
); 


CREATE TABLE TelefonoAccount (
    Numero INT UNSIGNED PRIMARY KEY NOT NULL,
    username VARCHAR(20) NOT NULL,
    FOREIGN KEY (username)
        REFERENCES Account (Username) 
); 


CREATE TABLE CartaDiCredito (
    numeroCarta CHAR(16) PRIMARY KEY NOT NULL,
    scadenza CHAR(5) NOT NULL,
    intestatario VARCHAR(20) NOT NULL,
    username VARCHAR(20) NOT NULL,
    FOREIGN KEY (username)
        REFERENCES Acquirente(Username) 
);


CREATE TABLE Staff (
    codiceFiscale CHAR(16) PRIMARY KEY NOT NULL,
    nome VARCHAR(10) NOT NULL,
    cognome VARCHAR(10) NOT NULL,
    indirizzo VARCHAR(30) NOT NULL,
    dataNascita DATE NOT NULL
);


CREATE TABLE Moderatore (
    codiceFiscale CHAR(16) PRIMARY KEY NOT NULL,
    FOREIGN KEY (codiceFiscale)
        REFERENCES Staff (codiceFiscale) on delete cascade on update cascade
);


CREATE TABLE Tutor (
    codiceFiscale CHAR(16) PRIMARY KEY NOT NULL,
    FOREIGN KEY (codiceFiscale)
        REFERENCES Staff (codiceFiscale) on delete cascade on update cascade
);


CREATE TABLE Videolezione (
    Id INT UNSIGNED PRIMARY KEY NOT NULL,
    argomento VARCHAR(20) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    durata FLOAT UNSIGNED NOT NULL,
    codFiscTutor CHAR(16) NOT NULL,
    FOREIGN KEY (codFiscTutor)
        REFERENCES Tutor (codiceFiscale) on delete cascade on update cascade
);


CREATE TABLE Appunti (
    codice INT UNSIGNED NOT NULL,
    usernameVenditore VARCHAR(20) NOT NULL,
    PRIMARY KEY (codice , usernameVenditore),
    dataCaricamento DATE NOT NULL,
    categoria ENUM('tesi', 'saggi', 'schema concettuale') NOT NULL,
    prezzo FLOAT UNSIGNED NOT NULL,
    codiceFiscaleModeratore CHAR(16) NOT NULL,
    FOREIGN KEY (usernameVenditore)
        REFERENCES Venditore (username),
	FOREIGN KEY (codiceFiscaleModeratore)
		REFERENCES Moderatore(codiceFiscale)
);


CREATE TABLE Acquisto (
    codice INT UNSIGNED auto_increment PRIMARY KEY NOT NULL,
    codiceAppunti INT UNSIGNED,
    data DATE NOT NULL,
    usernameAcquirente VARCHAR(20) NOT NULL,
    numeroCarta CHAR(16) NOT NULL,
    usernameVenditore VARCHAR(20),
    idVideolezione INT UNSIGNED,
    FOREIGN KEY (usernameAcquirente)
        REFERENCES Acquirente (Username),
    FOREIGN KEY (numeroCarta)
        REFERENCES CartaDiCredito (numeroCarta),
    FOREIGN KEY (codiceAppunti)
        REFERENCES Appunti (codice),
    FOREIGN KEY (usernameVenditore)
        REFERENCES Venditore (username),
    FOREIGN KEY (idVideolezione)
        REFERENCES Videolezione (id)
);


CREATE TABLE Digitale (
    usernameVenditore VARCHAR(20) NOT NULL,
    codice INT UNSIGNED NOT NULL,
    primary key(usernameVenditore, codice),
    dimensione INT UNSIGNED NOT NULL,
    tipoDocumento ENUM("pdf", "jpg", "doc") NOT NULL,
    FOREIGN KEY (usernameVenditore)
        REFERENCES Venditore (username),
    FOREIGN KEY (codice)
        REFERENCES Appunti (codice) on delete cascade on update cascade
);  


CREATE TABLE Cartaceo (
    usernameVenditore VARCHAR(20) NOT NULL,
    codice INT UNSIGNED NOT NULL,
    primary key(usernameVenditore, codice),
    quantitàPagine INT UNSIGNED NOT NULL,
    costiSpedizione FLOAT UNSIGNED,
    FOREIGN KEY (usernameVenditore)
        REFERENCES Venditore (username),
    FOREIGN KEY (codice)
        REFERENCES Appunti (codice) on delete cascade on update cascade
);


CREATE TABLE Specializzazione (
    Materia VARCHAR(20) PRIMARY KEY NOT NULL
);


CREATE TABLE Possiede (
    Materia VARCHAR(20) NOT NULL,
    codiceFiscaleTutor CHAR(16) NOT NULL,
    primary key(Materia, codiceFiscaleTutor),
    FOREIGN KEY (Materia)
        REFERENCES Specializzazione (Materia),
    FOREIGN KEY (codiceFiscaleTutor)
        REFERENCES Tutor (codiceFiscale)
);


CREATE TABLE TelefonoStaff (
    numero INT UNSIGNED PRIMARY KEY NOT NULL,
    codiceFiscaleStaff CHAR(16) NOT NULL,
    FOREIGN KEY (codiceFiscaleStaff)
        REFERENCES Staff (codiceFiscale)
);
    