USE KuzeyRuzgari

-- Cross Join

SELECT COUNT(*) FROM Personeller
SELECT COUNT(*) FROM Bolge

SELECT p.Adi, b.BolgeID from Personeller p CROSS JOIN Bolge b