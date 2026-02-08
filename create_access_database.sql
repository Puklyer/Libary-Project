REM MS Access Database Creation Script
REM Bu script'i MS Access'te adım adım çalıştırın

REM Carti tablosu
CREATE TABLE Carti (
    IdCarte AUTOINCREMENT PRIMARY KEY,
    Titlu TEXT(255) NOT NULL,
    Autor TEXT(255) NOT NULL,
    NrInventar TEXT(50) NOT NULL,
    TarifZi CURRENCY NOT NULL,
    SpImagine TEXT(255)
);

REM Persoane tablosu
CREATE TABLE Persoane (
    IdPersoana AUTOINCREMENT PRIMARY KEY,
    Nume TEXT(255) NOT NULL,
    Adresa TEXT(255) NOT NULL,
    NrTelefon TEXT(20) NOT NULL,
    SpImagine TEXT(255)
);

REM Imprumuturi tablosu
CREATE TABLE Imprumuturi (
    IdImprumut AUTOINCREMENT PRIMARY KEY,
    DataImprumut DATETIME NOT NULL,
    IdPersoana LONG NOT NULL
);

REM ImprumuturiContinut tablosu
CREATE TABLE ImprumuturiContinut (
    IdImprumut LONG NOT NULL,
    Nrc INTEGER NOT NULL,
    IdCarte LONG NOT NULL,
    TarifZi CURRENCY NOT NULL,
    NrZile INTEGER NOT NULL
);

REM Seed Data - Carti
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Miorița', 'Anonim', 'ROM001', 2.5);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Luceafărul', 'Mihai Eminescu', 'ROM002', 3.0);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Baltagul', 'Mihail Sadoveanu', 'ROM003', 2.8);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Ion', 'Liviu Rebreanu', 'ROM004', 3.2);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Enigma Otiliei', 'George Călinescu', 'ROM005', 2.9);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Moromeții', 'Marin Preda', 'ROM006', 3.1);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Pădurea spânzuraților', 'Liviu Rebreanu', 'ROM007', 2.7);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Ultima noapte de dragoste, întâia noapte de război', 'Camil Petrescu', 'ROM008', 2.6);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Amintiri din copilărie', 'Ion Creangă', 'ROM009', 2.4);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Scrisori de la moara', 'Ion Slavici', 'ROM010', 2.3);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Hanu Ancuței', 'Mihail Sadoveanu', 'ROM011', 2.5);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Craii de Curtea-Veche', 'Mateiu Caragiale', 'ROM012', 2.8);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Patul lui Procust', 'Camil Petrescu', 'ROM013', 2.7);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Groapa', 'Eugen Barbu', 'ROM014', 2.9);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Bietul Ioanide', 'George Călinescu', 'ROM015', 2.6);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Neamul Șoimăreștilor', 'Mihail Sadoveanu', 'ROM016', 3.0);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Mara', 'Ioan Slavici', 'ROM017', 2.4);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Ciuleandra', 'Liviu Rebreanu', 'ROM018', 2.5);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Domnișoara Christina', 'Mircea Eliade', 'ROM019', 2.8);
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi) VALUES ('Viața românească', 'Constantin Dobrogeanu-Gherea', 'ROM020', 2.7);

REM Seed Data - Persoane
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Popescu Ion', 'Str. Mihai Viteazu nr. 15, București', '0721234567');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Ionescu Maria', 'Bd. Unirii nr. 23, Cluj-Napoca', '0732345678');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Georgescu Andrei', 'Str. Republicii nr. 8, Timișoara', '0743456789');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Dumitrescu Elena', 'Calea Victoriei nr. 45, București', '0754567890');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Stoica Mihai', 'Str. Libertății nr. 12, Iași', '0765678901');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Radu Ana', 'Bd. Independenței nr. 67, Constanța', '0776789012');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Marin Cristian', 'Str. Păcii nr. 34, Brașov', '0787890123');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Popa Daniela', 'Calea Dorobanților nr. 89, Cluj-Napoca', '0798901234');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Constantinescu Florin', 'Str. Primăverii nr. 56, Galați', '0709012345');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Stanciu Ioana', 'Bd. Carol I nr. 78, Craiova', '0710123456');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Vasile Gheorghe', 'Str. Rozelor nr. 23, Ploiești', '0721234568');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Diaconu Simona', 'Calea Națională nr. 45, Pitești', '0732345679');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Moldovan Radu', 'Str. Florilor nr. 67, Oradea', '0743456780');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Cristea Alina', 'Bd. Magheru nr. 12, București', '0754567891');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Niculescu Bogdan', 'Str. Cuza Vodă nr. 34, Bacău', '0765678902');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Petrescu Roxana', 'Calea Aradului nr. 56, Timișoara', '0776789013');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Marinescu Vlad', 'Str. Eroilor nr. 78, Sibiu', '0787890124');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Tudorescu Carmen', 'Bd. Decebal nr. 90, Deva', '0798901235');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Alexandrescu Marius', 'Str. Victoriei nr. 123, Târgu Mureș', '0709012346');
INSERT INTO Persoane (Nume, Adresa, NrTelefon) VALUES ('Nicolescu Andreea', 'Calea Moldovei nr. 145, Suceava', '0710123457');