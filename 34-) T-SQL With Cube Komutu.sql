USE KuzeyRuzgari

-- WITH CUBE
-- GROUP BY ile gruplanm�� veri k�mesinde teker teker toplam al�nmas�n� sa�lar.

SELECT SatisID, UrunID, SUM(Miktar) FROM [Satis Detaylari] GROUP BY SatisID, UrunID WITH CUBE

SELECT KategoriID, UrunID, SUM(TedarikciID) FROM Urunler GROUP BY KategoriID, UrunID WITH CUBE

-- [HAVING �art�yla Beraber WITH CUBE]
SELECT SatisID, UrunID, SUM(Miktar) FROM [Satis Detaylari] GROUP BY SatisID, UrunID WITH CUBE HAVING SUM(Miktar) > 100
