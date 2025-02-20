USE KuzeyRuzgari

-- Inner Join

-- Genel Mantýk
-- SELECT * FROM Tablo1 INNER JOIN Tablo2 ON Tablo1.IliskiliKolon = Tablo2.IliskiliKolon

-- Tablolara alias tanýmlanabilir.
-- SELECT * FROM Tablo1 t1 INNER JOIN Tablo2 t2 ON t1.IliskiliKolon = t2.IliskiliKolon 

-- Hangi personel hangi satýþlarý yapmýþtýr? (Personeller, Satislar)
SELECT * FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID

-- Hangi ürün hangi kategoride? (Urunler, Kategoriler)
SELECT u.UrunAdi, k.KategoriAdi FROM Urunler u INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID

-- Where Komutunun Kullanýmý


-- Beverages kategorisindeki ürünlerim. (Urunler, Kategoriler)
SELECT u.UrunAdi FROM Kategoriler k INNER JOIN Urunler u ON k.KategoriId = u.KategoriID WHERE k.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki ürünlerimin sayýsý kaçtýr? (Urunler, Kategoriler)
SELECT COUNT(u.UrunAdi) FROM Kategoriler k INNER JOIN Urunler u ON k.KategoriID = u.KategoriID WHERE k.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki ürünlerin listesi (Urunler, Kategoriler)
SELECT u.UrunAdi from Kategoriler k INNER JOIN Urunler u ON k.KategoriId = u.KategoriID WHERE k.KategoriAdi = 'Seafood'

-- Hangi satýþý hangi çalýþaným yapmýþ? (Satislar, Personeller)
SELECT s.SatisID, p.Adi + ' ' + p.Soyadi FROM Satislar s INNER JOIN Personeller p ON s.PersonelID = p.PersonelID

-- Faks numarasý "null" olmayan tedarikçilerden alýnmýþ ürünler nelerdir? (Urunler, Tedarikciler)
SELECT u.UrunAdi FROM Urunler u INNER JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID WHERE t.Faks <> 'Null'
SELECT u.UrunAdi FROM Urunler u INNER JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID WHERE t.Faks IS NOT NULL


-- =======================================================================
-- Ýkiden Fazla Tabloyu Ýliþkisel Birleþtirme
-- 1997 yýlýndan sonra Nancy nin satýþ yaptýðý firmalarýn isimleri. (Musteriler, Satislar, Personeller)
SELECT * FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID WHERE p.Adi = 'Nancy' AND YEAR(s.SatisTarihi) > 1997

-- Limited olan tedarikçilerden alýnmýþ Seafood kategorisindeki ürünlerin toplam satýþ tutarý. (Urunler, Kategoriler, Tedarikciler)
SELECT SUM(u.HedefStokDuzeyi * u.BirimFiyati) FROM Urunler u INNER JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID Where t.SirketAdi LIKE '%Ltd.%' AND k.KategoriAdi = 'Seafood';


-- ***************************************************
-- Ayný Tabloyu Ýliþkisel Olarak Birleþtirme

-- Personellerimin baðlý olarak çalýþtýðý kiþileri listele? (Personeller, Personeller)
SELECT p1.Adi, p2.Adi FROM Personeller p1 INNER JOIN Personeller p2 ON p1.BagliCalistigiKisi = p2.PersonelID