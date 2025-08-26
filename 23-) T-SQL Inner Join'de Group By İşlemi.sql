USE KuzeyRuzgari

-- Inner Join

-- Inner Joinde Group By

SELECT KategoriID, COUNT(*) FROM Urunler GROUP BY KategoriID

-- Hangi personelim toplam ka� adetlik sat�� yapm��.
SELECT p.Adi, COUNT(s.SatisID) FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID GROUP BY p.Adi

-- Hangi personelim (ad� ve soyadi ile birlikte), toplam ka� adetlik sat�� yapm��. Sat�� adedi 100'den fazla olanlar ve personelin ad�n�n ba� harfi M olan kay�tlar gelsin. (Personeller, Satislar)
SELECT p.Adi + ' ' + p.Soyadi, COUNT(s.SatisID) FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID WHERE p.Adi LIKE 'M%' GROUP BY p.Adi + ' ' + p.Soyadi HAVING COUNT(s.SatisID) > 100

-- Seafood kategorisindeki �r�nlerin say�s�? (Urunler, Kategoriler)
SELECT k.KategoriAdi, COUNT(u.UrunAdi) FROM Urunler u INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID WHERE k.KategoriAdi = 'Seafood' GROUP BY k.KategoriAdi

-- En �ok sat�� yapan personelim. (Personeller, Satislar)
SELECT TOP 1 p.Adi, COUNT(s.SatisID) FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID GROUP BY p.Adi ORDER BY COUNT(s.SatisID) DESC

-- Ad�nda "a" harfi olan personellerin sat�� id'si 10500'den b�y�k olan sat��lar�n�n toplam tutar�n� (miktar * birimFiyat) ve bu sat��lar�n�n hangi tarihte ger�ekle�ti�ini listele. (Personeller, Satislar, [Satis Detaylari])
SELECT SUM(sd.Miktar * sd.BirimFiyati), s.SatisTarihi FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID INNER JOIN [Satis Detaylari] sd ON s.SatisID = sd.SatisID WHERE p.Adi LIKE '%a%' AND s.SatisID > 10500 GROUP BY s.SatisTarihi;