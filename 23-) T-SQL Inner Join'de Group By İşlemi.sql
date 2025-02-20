USE KuzeyRuzgari

-- Inner Join

-- Inner Joinde Group By

SELECT KategoriID, COUNT(*) FROM Urunler GROUP BY KategoriID

-- Hangi personelim toplam kaç adetlik satýþ yapmýþ.
SELECT p.Adi, COUNT(s.SatisID) FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID GROUP BY p.Adi

-- Hangi personelim (adý ve soyadi ile birlikte), toplam kaç adetlik satýþ yapmýþ. Satýþ adedi 100'den fazla olanlar ve personelin adýnýn baþ harfi M olan kayýtlar gelsin. (Personeller, Satislar)
SELECT p.Adi + ' ' + p.Soyadi, COUNT(s.SatisID) FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID WHERE p.Adi LIKE 'M%' GROUP BY p.Adi + ' ' + p.Soyadi HAVING COUNT(s.SatisID) > 100

-- Seafood kategorisindeki ürünlerin sayýsý? (Urunler, Kategoriler)
SELECT k.KategoriAdi, COUNT(u.UrunAdi) FROM Urunler u INNER JOIN Kategoriler k ON u.KategoriID = k.KategoriID WHERE k.KategoriAdi = 'Seafood' GROUP BY k.KategoriAdi

-- En çok satýþ yapan personelim. (Personeller, Satislar)
SELECT TOP 1 p.Adi, COUNT(s.SatisID) FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID GROUP BY p.Adi ORDER BY COUNT(s.SatisID) DESC

-- Adýnda "a" harfi olan personellerin satýþ id'si 10500'den büyük olan satýþlarýnýn toplam tutarýný (miktar * birimFiyat) ve bu satýþlarýnýn hangi tarihte gerçekleþtiðini listele. (Personeller, Satislar, [Satis Detaylari])
SELECT SUM(sd.Miktar * sd.BirimFiyati), s.SatisTarihi FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID INNER JOIN [Satis Detaylari] sd ON s.SatisID = sd.SatisID WHERE p.Adi LIKE '%a%' AND s.SatisID > 10500 GROUP BY s.SatisTarihi;