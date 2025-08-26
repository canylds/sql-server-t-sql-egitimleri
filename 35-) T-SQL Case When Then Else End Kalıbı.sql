USE KuzeyRuzgari

-- Case - When - Else - End

-- Personellerimizin isim ve soyisimlerinin yan�nda; UnvanEki 'Mr.' ise 'Erkek', 'Ms.' ise 'Kad�n' yazs�n.
SELECT Adi, Soyadi FROM Personeller

SELECT Adi, Soyadi, 
CASE 
WHEN UnvanEki = 'Mrs.' OR UnvanEki = 'Ms.' THEN 'Kad�n' 
WHEN UnvanEki = 'Mr.' THEN 'Erkek' 
ELSE UnvanEKi 
END 
FROM Personeller

-- E�er �r�n�n birim fiyat� 0 - 50 aras� ise '�in Mal�', 50 - 100 aras� ise 'Ucuz', 100 - 200 aras� ise 'Normal' ve 200'den fazla ise 'Pahal�' yazs�n.
SELECT UrunAdi, BirimFiyati FROM Urunler

SELECT UrunAdi, BirimFiyati, 
CASE 
WHEN BirimFiyati BETWEEN 0 AND 50 THEN '�in Mal�'
WHEN BirimFiyati BETWEEN 50 AND 100 THEN 'Ucuz'
WHEN BirimFiyati BETWEEN 100 AND 200 THEN 'Normal'
WHEN BirimFiyati > 200 THEN 'Pahal�'
END
FROM Urunler

