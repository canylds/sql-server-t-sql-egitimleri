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