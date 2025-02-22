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

-- INSERT [Tablo Adý](Kolonlar) VALUES(Deðerler)
INSERT Personeller(Adi, SoyAdi) VALUES('Can', 'Yoldaþ')
INSERT Personeller VALUES('Yoldaþ', 'Can', 'Yazýlým ve Veritabaný Uzmaný', 'YM', '08.19.2001', GETDATE(), 'Sakarya', 'Sakarya', 'Marmara', '54650', 'Türkiye', '00000000', NULL, NULL, NULL, NULL, NULL)

-- [Dikkat Edilmesi Gerekenler!!!]

-- INTO Komutu Ýle Yazýlabilir
INSERT INTO Personeller(Adi, SoyAdi) VALUES('Yoldas','Can')

-- Kolonun kabul ettiði veri tipi ve karakter uzunluðunda kayýt yapýlmalýdýr.
-- Not Null olan kolonlara boþ býrakýlamayacaklarýndan dolayý mutlaka deðer gönderilmelidir.
INSERT Personeller(Unvan, UnvanEki) VALUES('a', 'b')

-- Otomatik artan(identity) kolonlara deðer gönderilmez.

-- Talodaki seçilen yahut bütün kolonlara deðer gönderileceði belirtilip, gönderilmezse hata verecektir.
INSERT Personeller(Adi, SoyAdi) VALUES('Can')
INSERT Personeller VALUES('Can')

-- [Pratik Kullaným]
INSERT Personeller(Adi, SoyAdi) VALUES('Hilmi','Türk')
INSERT Personeller(Adi, SoyAdi) VALUES('Necati','Koç')
INSERT Personeller(Adi, SoyAdi) VALUES('Rýfký','Kuþ')

INSERT Personeller(Adi, SoyAdi) VALUES('Hilmi','Türk'),('Necati','Koç'),('Rýfký','Kuþ')

-- [INSERT Komutu ile Select Sorgusu Sonucu Gele Verileri Farklý Tabloya Kaydetme]
INSERT OrnekPersoneller SELECT Adi, Soyadi FROM Personeller
-- Burada dikkat etmemiz gereken nokta; Select sorgusunda dönen kolon sayýsý ile Insert iþlemi yapýlacak tablonun kolon sayýsý birbirine eþit olmasý gerekmektedir.

-- [SELECT Sorgusu Sonucu Gelen Verileri Farklý Bir Tablo Oluþturarak Kaydetme]
SELECT Adi, Soyadi, Ulke INTO OrnekPersoneller2 FROM Personeller
-- Bu yöntemle primary key ve foreign keyler oluþturulamazlar


-- UPDATE

-- UPDATE [Tablo Adý] Set [Kolon Adý] = Deðer
UPDATE OrnekPersoneller2 SET Adi = 'Mehmet'

-- [UPDATE Sorgusuna WHERE Þartý Yazmak]
UPDATE OrnekPersoneller2 SET Adi = 'Mehmet' WHERE Adi = 'Nancy'

-- [UPDATE Sorgusunda JOIN Kullanarak Birden Fazla Tabloda Güncelleme Yapmak]
UPDATE Urunler SET UrunAdi = k.KategoriAdi FROM Urunler u INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID

-- [UPDATE Sorgusunda Subquery ile Güncelleme Yapmak]
UPDATE Urunler SET UrunAdi = (SELECT Adi FROM Personeller WHERE PersonelID = 3)

-- [UPDATE Sorgusunda TOP Keywordü ile Güncelleme Yapmak]
UPDATE TOP(30) Urunler SET UrunAdi = 'X'


-- DELETE
-- DELETE FROM [Tablo Adý]
DELETE FROM Urunler

-- [Delete Sorgusuna WHERE Þartý Yazmak]
DELETE FROM Urunler WHERE KategoriID < 3

-- [Dikkat Edilmesi Gerekenler]
-- Delete sorgusuyla tablo içerisindeki tüm verileri silmemiz identity kolonunu sýfýrlamayacaktýr. Silme iþlemiden sonra ilk eklenen veride kalýndýðý yerin id deðeri verilecektir.