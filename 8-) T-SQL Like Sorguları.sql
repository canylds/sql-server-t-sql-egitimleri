USE KuzeyRuzgari

-- Like Sorgular�

-- % (Genel �nemli De�il) Operat�r�

-- �sminin ba� harfi j olan personellerin ad�n� ve soyad�n� yazd�ral�m.
SELECT Adi, SoyAdi FROM Personeller WHERE Adi LIKE 'j%'

-- �sminin son harfi y olan personellerin ad�n� ve soyad�n� yazd�ral�m.
SELECT Adi, SoyAdi FROM Personeller WHERE Adi LIKE '%y'

-- �sminin son �� harfi ert olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '%ert'

-- �sminin ilk harfi r, son harfi t olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'
-- Gereksiz bir kullan�m.
SELECT * FROM Personeller WHERE Adi LIKE 'r%' AND Adi LIKE '%t'

-- �sminde an ge�en personelin ad�n� yazd�ral�m.
SELECT Adi FROM Personeller WHERE Adi LIKE '%an%'

-- �sminin ba� harfi n olan ve i�erisinde an ge�en personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'
-- Gereksiz bir kullan�m.
SELECT * FROM Personeller WHERE Adi LIKE 'n%' AND Adi LIKE '%an%'

-- _ (�zel �nemli De�il) Operat�r�

-- �sminin ilk harfi a, ikinci harfi fark etmez ve ���nc� harfi d olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'

-- �sminin ilk harfi m, ikinci - ���nc� ve d�rd�nc� fark etmez ve be�inci harfi a olan personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'

-- [] (ya da) Operat�r�

-- �sminin ilk harfi n,m ya da r olan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[nmr]%'

-- �sminin i�erisinde a ya da i ge�en personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '%[ai]%'

-- [*_*] (Alfabetik Aras�nda) Operat�r�
-- �sminin ba� harfi a ile k aras�nda alfabetik s�raya g�re herhangi bir harf olan personellerin ad�n� yazd�ral�m.
SELECT Adi FROM Personeller WHERE Adi LIKE '[a-k]%'

-- [^*] (De�il) Operat�r�

-- �sminin ba� harfi a olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'

-- �sminin ba� harfi an olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'

-- Espace (Ka���) Karakterleri
-- Like sorgular�nda kulland���m�z %, _, [] gibi �zel ifadeler e�er ki verilerimiz i�erisinde ge�iyorsa sorgulama esnas�nda hata ile kar��la�abiliriz. B�yle durumlarda bu ifadelerin �zel ifade olmad���n� escape karakterleri ile belirleyebiliriz.

-- [] Operat�r� ile
-- Escape Komutu ile

SELECT * FROM Personeller WHERE Adi LIKE '[_]%'

SELECT * FROM Personeller WHERE Adi LIKE '�_%' ESCAPE '�'