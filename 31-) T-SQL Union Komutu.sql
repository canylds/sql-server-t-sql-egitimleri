USE KuzeyRuzgari

-- Union | Union All

-- Union
-- Birden fazla SELECT sorgusu sonucunu tek seferde alt alta g�stermemizi sa�lar

SELECT Adi, Soyadi FROM Personeller
SELECT MusteriAdi, MusteriUnvani FROM Musteriler

SELECT Adi, Soyadi FROM Personeller UNION SELECT MusteriAdi, MusteriUnvani FROM Musteriler

-- 2'den fazla
SELECT Adi, Soyadi FROM Personeller UNION SELECT MusteriAdi, MusteriUnvani FROM Musteriler UNION SELECT SevkAdi, SevkAdresi FROM Satislar

-- Joinler yan yana, Union alt alta tablolar� birle�tirir. Joinlerde belirli (ili�kisel) bir kolon �zerinden birle�tirme yap�l�rken, Union da b�yle bir durum yoktur.

-- Dikkat etmemiz gereken ko�ullae;
-- Union sorgusunun sonucunda olu�an tablonun kolon isimleri, �stteki sorgunun kolon isimlerinden olu�turulur.
-- �stteki sorgudan ka� kolon �ekilmi�se alttaki sorgudan da o kadar kolon �ekilmek zorundad�r.
-- �stteki sorgudan �ekilen kolonlar�n tipleriyle, alttaki sorgudan �ekilen kolonlar�n tipleri uyumlu olmal�d�r.
-- Union tekrarl� kay�tlar� getirmez.

-- Union'da kullan�lan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukar�daki kurallar �er�evesinde a�a��ya da yukar�ya da ayn� say�da kolonlar�n eklenmesi gerekmektedir.
SELECT Adi, Soyadi, 'Personel' FROM Personeller UNION SELECT MusteriAdi, MusteriUnvani, 'M��teri' FROM Musteriler

-- Union All
-- Union tekrarl� kay�tlar� getirmez. Tekrarl� kay�tlar� getirmek i�in Union All Komutu kullan�lmal�d�r.
SELECT Adi, Soyadi FROM Personeller UNION SELECT Adi, Soyadi FROM Personeller

SELECT Adi, Soyadi FROM Personeller UNION ALL SELECT Adi, Soyadi FROM Personeller