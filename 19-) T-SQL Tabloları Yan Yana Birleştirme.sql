USE KuzeyRuzgari

-- Tablolarý Yan Yana Birleþtirme

SELECT * FROM Personeller
SELECT * FROM Satislar

SELECT * FROM Personeller, Satislar

SELECT Adi FROM Personeller, Satislar

SELECT Personeller.PersonelID, Satislar.MusteriID FROM Personeller, Satislar

SELECT p.PersonelID, s.MusteriID FROM Personeller p, Satislar s

SELECT * FROM Personeller AS p, Satislar AS s WHERE p.PersonelID = s.PersonelID