USE KuzeyRuzgari

-- Select Komutu
SELECT 3

SELECT 'Can'
PRINT 'Can'

SELECT 3, 5, 7

SELECT 'Can', 'Yolda�', 23

SELECT * FROM Personeller

SELECT Adi, Soyadi FROM Personeller

-- Alias Atama
SELECT 3 AS De�er

SELECT 3 De�er

SELECT 'Can' Ad�, 'Yolda�' Soyad�

SELECT Adi �simler, Soyadi Soyisimler FROM Personeller

-- Bo�luk Karakteri olan Alias Atama
SELECT 1453 �stanbulun Fethi

SELECT 1453 [�stanbulun Fethi]

-- Bo�luk Karakteri Olan Tabloyu Sorgulama
SELECT * FROM Satis Detaylari

SELECT * FROM [Satis Detaylari]

-- Kolonlar� Birle�tirme
SELECT Adi, Soyadi FROM Personeller
SELECT Adi + ' ' + Soyadi [Personel Bilgileri] FROM Personeller

-- Farkl� Tipte Kolonlar� Birle�tirme
SELECT Adi + ' ' + IseBaslamaTarihi FROM Personeller

SELECT Adi + ' ' + CONVERT(NVARCHAR, IseBaslamaTarihi) FROM Personeller

SELECT Adi + ' ' + CAST(IseBaslamaTarihi AS NVARCHAR) FROM Personeller