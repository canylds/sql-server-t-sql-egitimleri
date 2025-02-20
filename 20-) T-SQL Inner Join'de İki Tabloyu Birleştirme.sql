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