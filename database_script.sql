-- Access Veritabanı Oluşturma Script'i
-- Bu script'i Access'te çalıştırarak tabloları oluşturun

-- 1. Carti (Kitaplar) Tablosu
CREATE TABLE Carti (
    IdCarte AUTOINCREMENT PRIMARY KEY,
    Titlu TEXT(255) NOT NULL,
    Autor TEXT(255) NOT NULL,
    NrInventar TEXT(50) NOT NULL,
    TarifZi CURRENCY NOT NULL,
    SpImagine TEXT(500)
);

-- 2. Persoane (Kişiler) Tablosu
CREATE TABLE Persoane (
    IdPersoana AUTOINCREMENT PRIMARY KEY,
    Nume TEXT(255) NOT NULL,
    Adresa MEMO NOT NULL,
    NrTelefon TEXT(20) NOT NULL,
    SpImagine TEXT(500)
);

-- 3. Imprumuturi (Ödünç Almalar) Tablosu
CREATE TABLE Imprumuturi (
    IdImprumut AUTOINCREMENT PRIMARY KEY,
    DataImprumut DATETIME NOT NULL,
    IdPersoana LONG NOT NULL,
    CONSTRAINT FK_Imprumuturi_Persoane FOREIGN KEY (IdPersoana) REFERENCES Persoane(IdPersoana)
);

-- 4. ImprumuturiContinut (Ödünç Detayları) Tablosu
CREATE TABLE ImprumuturiContinut (
    IdImprumut LONG NOT NULL,
    Nrc INTEGER NOT NULL,
    IdCarte LONG NOT NULL,
    TarifZi CURRENCY NOT NULL,
    NrZile INTEGER NOT NULL,
    PRIMARY KEY (IdImprumut, Nrc),
    CONSTRAINT FK_ImprumuturiContinut_Imprumuturi FOREIGN KEY (IdImprumut) REFERENCES Imprumuturi(IdImprumut),
    CONSTRAINT FK_ImprumuturiContinut_Carti FOREIGN KEY (IdCarte) REFERENCES Carti(IdCarte)
);

-- Örnek Veri Ekleme

-- Kitaplar
INSERT INTO Carti (Titlu, Autor, NrInventar, TarifZi, SpImagine) VALUES
('Suç ve Ceza', 'Dostoyevski', 'K001', 2.50, ''),
('1984', 'George Orwell', 'K002', 3.00, ''),
('Simyacı', 'Paulo Coelho', 'K003', 2.00, ''),
('Beyaz Diş', 'Jack London', 'K004', 1.50, ''),
('Savaş ve Barış', 'Tolstoy', 'K005', 4.00, '');

-- Kişiler
INSERT INTO Persoane (Nume, Adresa, NrTelefon, SpImagine) VALUES
('Ahmet Yılmaz', 'Ankara Caddesi No:123 Çankaya/ANKARA', '0312-555-0101', ''),
('Ayşe Demir', 'İstanbul Sokak No:45 Kadıköy/İSTANBUL', '0216-555-0202', ''),
('Mehmet Kaya', 'İzmir Bulvarı No:67 Konak/İZMİR', '0232-555-0303', ''),
('Fatma Şahin', 'Bursa Yolu No:89 Nilüfer/BURSA', '0224-555-0404', '');

-- Ödünç İşlemleri (Örnek)
INSERT INTO Imprumuturi (DataImprumut, IdPersoana) VALUES
(#12/20/2024#, 1),
(#12/21/2024#, 2);

-- Ödünç Detayları (Örnek)
INSERT INTO ImprumuturiContinut (IdImprumut, Nrc, IdCarte, TarifZi, NrZile) VALUES
(1, 1, 1, 2.50, 7),
(1, 2, 3, 2.00, 14),
(2, 1, 2, 3.00, 10);