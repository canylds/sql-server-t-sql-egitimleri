USE KuzeyRuzgari

-- Case - When - Else - End

-- Personellerimizin isim ve soyisimlerinin yanýnda; UnvanEki 'Mr.' ise 'Erkek', 'Ms.' ise 'Kadýn' yazsýn.
SELECT Adi, Soyadi FROM Personeller

SELECT Adi, Soyadi, 
CASE 
WHEN UnvanEki = 'Mrs.' OR UnvanEki = 'Ms.' THEN 'Kadýn' 
WHEN UnvanEki = 'Mr.' THEN 'Erkek' 
ELSE UnvanEKi 
END 
FROM Personeller

-- Eðer ürünün birim fiyatý 0 - 50 arasý ise 'Çin Malý', 50 - 100 arasý ise 'Ucuz', 100 - 200 arasý ise 'Normal' ve 200'den fazla ise 'Pahalý' yazsýn.
SELECT UrunAdi, BirimFiyati FROM Urunler

SELECT UrunAdi, BirimFiyati, 
CASE 
WHEN BirimFiyati BETWEEN 0 AND 50 THEN 'Çin Malý'
WHEN BirimFiyati BETWEEN 50 AND 100 THEN 'Ucuz'
WHEN BirimFiyati BETWEEN 100 AND 200 THEN 'Normal'
WHEN BirimFiyati > 200 THEN 'Pahalý'
END
FROM Urunler