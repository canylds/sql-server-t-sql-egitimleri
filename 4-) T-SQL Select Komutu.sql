USE KuzeyRuzgari

-- Select Komutu
SELECT 3

SELECT 'Can'
PRINT 'Can'

SELECT 3, 5, 7

SELECT 'Can', 'Yoldaþ', 23

SELECT * FROM Personeller

SELECT Adi, Soyadi FROM Personeller

-- Alias Atama
SELECT 3 AS Deðer

SELECT 3 Deðer

SELECT 'Can' Adý, 'Yoldaþ' Soyadý

SELECT Adi Ýsimler, Soyadi Soyisimler FROM Personeller

-- Boþluk Karakteri olan Alias Atama
SELECT 1453 Ýstanbulun Fethi

SELECT 1453 [Ýstanbulun Fethi]

-- Boþluk Karakteri Olan Tabloyu Sorgulama
SELECT * FROM Satis Detaylari

SELECT * FROM [Satis Detaylari]

-- Kolonlarý Birleþtirme
SELECT Adi, Soyadi FROM Personeller
SELECT Adi + ' ' + Soyadi [Personel Bilgileri] FROM Personeller

-- Farklý Tipte Kolonlarý Birleþtirme
SELECT Adi + ' ' + IseBaslamaTarihi FROM Personeller

SELECT Adi + ' ' + CONVERT(NVARCHAR, IseBaslamaTarihi) FROM Personeller

SELECT Adi + ' ' + CAST(IseBaslamaTarihi AS NVARCHAR) FROM Personeller