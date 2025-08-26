USE KuzeyRuzgari

-- STRING FONKS�YONLAR

-- LEFT : Soldan (ba�tan) belirtilen say�da karakteri getirir.
SELECT LEFT(Adi, 2) FROM Personeller

-- RIGHT : Sa�dan (sondan) belirtilen say�da karakteri getirir.
SELECT RIGHT(Adi, 2) FROM Personeller

-- UPPER : B�y�k harfe �evirir.
SELECT UPPER(Adi) FROM Personeller

-- LOWER : K���k harfe �evirir.
SELECT LOWER(Adi) FROM Personeller

-- SUBSTRING : Belirtilen indexten itibaren belirtilen say�da karakter getirir.
SELECT SUBSTRING(Soyadi, 3, 2) FROM Personeller

-- LTRIM : Soldan bo�luklar� keser.
SELECT '   Can'
SELECT LTRIM('   Can')

-- RIGHT : Sa�dan bo�luklar� keser.
SELECT 'Can   '
SELECT RTRIM('Can   ')

-- REVERSE : Tersine �evirir.
SELECT REVERSE(Adi) FROM Personeller

-- REPLACE : Belirtilen ifadeyi belirtilen ifade ile de�i�tirir.
SELECT REPLACE('Benim ad�m Can', 'Can', 'Kayra')

-- CHARINDEX : Belirtilen karakterin veri i�inde s�ra numaras�n� verir.
SELECT Adi, CHARINDEX('r', Adi) FROM Personeller
SELECT MusteriAdi, CHARINDEX(' ', MusteriAdi) FROM Musteriler

-- CHARINDEX �rnek
-- M��teriler tablosunun MusteriAdi kolonundan sadece adlar�n� �ekelim.
SELECT SUBSTRING(MusteriAdi, 0, CHARINDEX(' ', MusteriAdi)) FROM Musteriler

-- M��teriler tablosunun MusteriAdi kolonundan sadece soyadlar�n� �ekelim.
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ', MusteriAdi), LEN(MusteriAdi) - (CHARINDEX(' ', MusteriAdi) - 1 )) FROM Musteriler