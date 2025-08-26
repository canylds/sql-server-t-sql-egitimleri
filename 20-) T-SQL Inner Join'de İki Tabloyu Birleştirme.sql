USE KuzeyRuzgari

-- Inner Join

-- Genel Mant�k
-- SELECT * FROM Tablo1 INNER JOIN Tablo2 ON Tablo1.IliskiliKolon = Tablo2.IliskiliKolon

-- Tablolara alias tan�mlanabilir.
-- SELECT * FROM Tablo1 t1 INNER JOIN Tablo2 t2 ON t1.IliskiliKolon = t2.IliskiliKolon 

-- Hangi personel hangi sat��lar� yapm��t�r? (Personeller, Satislar)
SELECT * FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID

-- Hangi �r�n hangi kategoride? (Urunler, Kategoriler)
SELECT u.UrunAdi, k.KategoriAdi FROM Urunler u INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID

-- Where Komutunun Kullan�m�


-- Beverages kategorisindeki �r�nlerim. (Urunler, Kategoriler)
SELECT u.UrunAdi FROM Kategoriler k INNER JOIN Urunler u ON k.KategoriId = u.KategoriID WHERE k.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki �r�nlerimin say�s� ka�t�r? (Urunler, Kategoriler)
SELECT COUNT(u.UrunAdi) FROM Kategoriler k INNER JOIN Urunler u ON k.KategoriID = u.KategoriID WHERE k.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki �r�nlerin listesi (Urunler, Kategoriler)
SELECT u.UrunAdi from Kategoriler k INNER JOIN Urunler u ON k.KategoriId = u.KategoriID WHERE k.KategoriAdi = 'Seafood'

-- Hangi sat��� hangi �al��an�m yapm��? (Satislar, Personeller)
SELECT s.SatisID, p.Adi + ' ' + p.Soyadi FROM Satislar s INNER JOIN Personeller p ON s.PersonelID = p.PersonelID

-- Faks numaras� "null" olmayan tedarik�ilerden al�nm�� �r�nler nelerdir? (Urunler, Tedarikciler)
SELECT u.UrunAdi FROM Urunler u INNER JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID WHERE t.Faks <> 'Null'
SELECT u.UrunAdi FROM Urunler u INNER JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID WHERE t.Faks IS NOT NULL


-- =======================================================================
-- �kiden Fazla Tabloyu �li�kisel Birle�tirme
-- 1997 y�l�ndan sonra Nancy nin sat�� yapt��� firmalar�n isimleri. (Musteriler, Satislar, Personeller)
SELECT * FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID WHERE p.Adi = 'Nancy' AND YEAR(s.SatisTarihi) > 1997

-- Limited olan tedarik�ilerden al�nm�� Seafood kategorisindeki �r�nlerin toplam sat�� tutar�. (Urunler, Kategoriler, Tedarikciler)
SELECT SUM(u.HedefStokDuzeyi * u.BirimFiyati) FROM Urunler u INNER JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID Where t.SirketAdi LIKE '%Ltd.%' AND k.KategoriAdi = 'Seafood';


-- ***************************************************
-- Ayn� Tabloyu �li�kisel Olarak Birle�tirme

-- Personellerimin ba�l� olarak �al��t��� ki�ileri listele? (Personeller, Personeller)
SELECT p1.Adi, p2.Adi FROM Personeller p1 INNER JOIN Personeller p2 ON p1.BagliCalistigiKisi = p2.PersonelID