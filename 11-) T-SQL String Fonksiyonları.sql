USE KuzeyRuzgari

-- STRING FONKSÝYONLAR

-- LEFT : Soldan (baþtan) belirtilen sayýda karakteri getirir.
SELECT LEFT(Adi, 2) FROM Personeller

-- RIGHT : Saðdan (sondan) belirtilen sayýda karakteri getirir.
SELECT RIGHT(Adi, 2) FROM Personeller

-- UPPER : Büyük harfe çevirir.
SELECT UPPER(Adi) FROM Personeller

-- LOWER : Küçük harfe çevirir.
SELECT LOWER(Adi) FROM Personeller

-- SUBSTRING : Belirtilen indexten itibaren belirtilen sayýda karakter getirir.
SELECT SUBSTRING(Soyadi, 3, 2) FROM Personeller

-- LTRIM : Soldan boþluklarý keser.
SELECT '   Can'
SELECT LTRIM('   Can')

-- RIGHT : Saðdan boþluklarý keser.
SELECT 'Can   '
SELECT RTRIM('Can   ')

-- REVERSE : Tersine çevirir.
SELECT REVERSE(Adi) FROM Personeller

-- REPLACE : Belirtilen ifadeyi belirtilen ifade ile deðiþtirir.
SELECT REPLACE('Benim adým Can', 'Can', 'Kayra')

-- CHARINDEX : Belirtilen karakterin veri içinde sýra numarasýný verir.
SELECT Adi, CHARINDEX('r', Adi) FROM Personeller
SELECT MusteriAdi, CHARINDEX(' ', MusteriAdi) FROM Musteriler

-- CHARINDEX Örnek
-- Müþteriler tablosunun MusteriAdi kolonundan sadece adlarýný çekelim.
SELECT SUBSTRING(MusteriAdi, 0, CHARINDEX(' ', MusteriAdi)) FROM Musteriler

-- Müþteriler tablosunun MusteriAdi kolonundan sadece soyadlarýný çekelim.
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ', MusteriAdi), LEN(MusteriAdi) - (CHARINDEX(' ', MusteriAdi) - 1 )) FROM Musteriler