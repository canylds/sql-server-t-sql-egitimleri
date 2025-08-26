USE KuzeyRuzgari

-- Group By
SELECT * FROM Urunler

SELECT KategoriID, COUNT(*) FROM Urunler GROUP BY KategoriID

SELECT KategoriID, TedarikciID, COUNT(*) FROM Urunler GROUP BY KategoriID, TedarikciID

SELECT PersonelID, COUNT(*) FROM Satislar GROUP BY PersonelID

SELECT PersonelID, SUM(NakliyeUcreti) FROM Satislar GROUP BY PersonelID

-- Group By ��leminde Where �rt� Kullanma
SELECT KategoriID, COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID

SELECT PersonelID, COUNT(*) FROM Satislar WHERE PersonelID < 4 GROUP BY PersonelID

-- Group By ��leminde Having Komutu Kullanarak �art Olu�turma
SELECT * FROM Urunler

SELECT KategoriID, COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID HAVING COUNT(*) > 6