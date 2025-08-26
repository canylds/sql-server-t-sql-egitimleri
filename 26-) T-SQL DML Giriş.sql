USE KuzeyRuzgari

-- DML (Data Manipulation Language)
-- SELECT, INSERT, UPDATE, DELETE
--- SELECT ---
--- INSERT ---
--- UPDATE ---
--- DELETE ---

-- SELECT
SELECT * FROM Personeller


-- INSERT

-- INSERT [Tablo Ad�](Kolonlar) VALUES(De�erler)
INSERT Personeller(Adi, SoyAdi) VALUES('Can', 'Yolda�')
INSERT Personeller VALUES('Yolda�', 'Can', 'Yaz�l�m ve Veritaban� Uzman�', 'YM', '08.19.2001', GETDATE(), 'Sakarya', 'Sakarya', 'Marmara', '54650', 'T�rkiye', '00000000', NULL, NULL, NULL, NULL, NULL)

-- [Dikkat Edilmesi Gerekenler!!!]

-- INTO Komutu �le Yaz�labilir
INSERT INTO Personeller(Adi, SoyAdi) VALUES('Yoldas','Can')

-- Kolonun kabul etti�i veri tipi ve karakter uzunlu�unda kay�t yap�lmal�d�r.
-- Not Null olan kolonlara bo� b�rak�lamayacaklar�ndan dolay� mutlaka de�er g�nderilmelidir.
INSERT Personeller(Unvan, UnvanEki) VALUES('a', 'b')

-- Otomatik artan(identity) kolonlara de�er g�nderilmez.

-- Talodaki se�ilen yahut b�t�n kolonlara de�er g�nderilece�i belirtilip, g�nderilmezse hata verecektir.
INSERT Personeller(Adi, SoyAdi) VALUES('Can')
INSERT Personeller VALUES('Can')

-- [Pratik Kullan�m]
INSERT Personeller(Adi, SoyAdi) VALUES('Hilmi','T�rk')
INSERT Personeller(Adi, SoyAdi) VALUES('Necati','Ko�')
INSERT Personeller(Adi, SoyAdi) VALUES('R�fk�','Ku�')

INSERT Personeller(Adi, SoyAdi) VALUES('Hilmi','T�rk'),('Necati','Ko�'),('R�fk�','Ku�')

-- [INSERT Komutu ile Select Sorgusu Sonucu Gele Verileri Farkl� Tabloya Kaydetme]
INSERT OrnekPersoneller SELECT Adi, Soyadi FROM Personeller
-- Burada dikkat etmemiz gereken nokta; Select sorgusunda d�nen kolon say�s� ile Insert i�lemi yap�lacak tablonun kolon say�s� birbirine e�it olmas� gerekmektedir.

-- [SELECT Sorgusu Sonucu Gelen Verileri Farkl� Bir Tablo Olu�turarak Kaydetme]
SELECT Adi, Soyadi, Ulke INTO OrnekPersoneller2 FROM Personeller
-- Bu y�ntemle primary key ve foreign keyler olu�turulamazlar


-- UPDATE

-- UPDATE [Tablo Ad�] Set [Kolon Ad�] = De�er
UPDATE OrnekPersoneller2 SET Adi = 'Mehmet'

-- [UPDATE Sorgusuna WHERE �art� Yazmak]
UPDATE OrnekPersoneller2 SET Adi = 'Mehmet' WHERE Adi = 'Nancy'

-- [UPDATE Sorgusunda JOIN Kullanarak Birden Fazla Tabloda G�ncelleme Yapmak]
UPDATE Urunler SET UrunAdi = k.KategoriAdi FROM Urunler u INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID

-- [UPDATE Sorgusunda Subquery ile G�ncelleme Yapmak]
UPDATE Urunler SET UrunAdi = (SELECT Adi FROM Personeller WHERE PersonelID = 3)

-- [UPDATE Sorgusunda TOP Keyword� ile G�ncelleme Yapmak]
UPDATE TOP(30) Urunler SET UrunAdi = 'X'


-- DELETE
-- DELETE FROM [Tablo Ad�]
DELETE FROM Urunler

-- [Delete Sorgusuna WHERE �art� Yazmak]
DELETE FROM Urunler WHERE KategoriID < 3

-- [Dikkat Edilmesi Gerekenler]
-- Delete sorgusuyla tablo i�erisindeki t�m verileri silmemiz identity kolonunu s�f�rlamayacakt�r. Silme i�lemiden sonra ilk eklenen veride kal�nd��� yerin id de�eri verilecektir.