USE Northwind

-- Like Sorgularý

-- % (Genel Önemli Deðil) Operatörü

-- Ýsminin baþ harfi j olan personellerin adýný ve soyadýný yazdýralým.
SELECT Adi, SoyAdi FROM Personeller WHERE Adi LIKE 'j%'

-- Ýsminin son harfi y olan personellerin adýný ve soyadýný yazdýralým.
SELECT Adi, SoyAdi FROM Personeller WHERE Adi LIKE '%y'

-- Ýsminin son üç harfi ert olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '%ert'

-- Ýsminin ilk harfi r, son harfi t olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'
-- Gereksiz bir kullaným.
SELECT * FROM Personeller WHERE Adi LIKE 'r%' AND Adi LIKE '%t'

-- Ýsminde an geçen personelin adýný yazdýralým.
SELECT Adi FROM Personeller WHERE Adi LIKE '%an%'

-- Ýsminin baþ harfi n olan ve içerisinde an geçen personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'
-- Gereksiz bir kullaným.
SELECT * FROM Personeller WHERE Adi LIKE 'n%' AND Adi LIKE '%an%'

-- _ (Özel Önemli Deðil) Operatörü

-- Ýsminin ilk harfi a, ikinci harfi fark etmez ve üçüncü harfi d olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'

-- Ýsminin ilk harfi m, ikinci - üçüncü ve dördüncü fark etmez ve beþinci harfi a olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'

-- [] (ya da) Operatörü

-- Ýsminin ilk harfi n,m ya da r olan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[nmr]%'

-- Ýsminin içerisinde a ya da i geçen personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '%[ai]%'

-- [*_*] (Alfabetik Arasýnda) Operatörü
-- Ýsminin baþ harfi a ile k arasýnda alfabetik sýraya göre herhangi bir harf olan personellerin adýný yazdýralým.
SELECT Adi FROM Personeller WHERE Adi LIKE '[a-k]%'

-- [^*] (Deðil) Operatörü

-- Ýsminin baþ harfi a olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'

-- Ýsminin baþ harfi an olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'