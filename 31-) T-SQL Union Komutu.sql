USE KuzeyRuzgari

-- Union | Union All

-- Union
-- Birden fazla SELECT sorgusu sonucunu tek seferde alt alta göstermemizi saðlar

SELECT Adi, Soyadi FROM Personeller
SELECT MusteriAdi, MusteriUnvani FROM Musteriler

SELECT Adi, Soyadi FROM Personeller UNION SELECT MusteriAdi, MusteriUnvani FROM Musteriler

-- 2'den fazla
SELECT Adi, Soyadi FROM Personeller UNION SELECT MusteriAdi, MusteriUnvani FROM Musteriler UNION SELECT SevkAdi, SevkAdresi FROM Satislar

-- Joinler yan yana, Union alt alta tablolarý birleþtirir. Joinlerde belirli (iliþkisel) bir kolon üzerinden birleþtirme yapýlýrken, Union da böyle bir durum yoktur.

-- Dikkat etmemiz gereken koþullae;
-- Union sorgusunun sonucunda oluþan tablonun kolon isimleri, üstteki sorgunun kolon isimlerinden oluþturulur.
-- Üstteki sorgudan kaç kolon çekilmiþse alttaki sorgudan da o kadar kolon çekilmek zorundadýr.
-- Üstteki sorgudan çekilen kolonlarýn tipleriyle, alttaki sorgudan çekilen kolonlarýn tipleri uyumlu olmalýdýr.
-- Union tekrarlý kayýtlarý getirmez.

-- Union'da kullanýlan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukarýdaki kurallar çerçevesinde aþaðýya da yukarýya da ayný sayýda kolonlarýn eklenmesi gerekmektedir.
SELECT Adi, Soyadi, 'Personel' FROM Personeller UNION SELECT MusteriAdi, MusteriUnvani, 'Müþteri' FROM Musteriler

-- Union All
-- Union tekrarlý kayýtlarý getirmez. Tekrarlý kayýtlarý getirmek için Union All Komutu kullanýlmalýdýr.
SELECT Adi, Soyadi FROM Personeller UNION SELECT Adi, Soyadi FROM Personeller

SELECT Adi, Soyadi FROM Personeller UNION ALL SELECT Adi, Soyadi FROM Personeller