USE KuzeyRuzgari

-- Tarih Fonksiyonlarý

-- GETDATE : Bu günün tarihini verir.
SELECT GETDATE()

-- DATEADD : Verilen tarihe verildiði kadar gün, ay, yýl ekler.
SELECT DATEADD(DAY, 999, GETDATE())
SELECT DATEADD(MONTH, 999, GETDATE())
SELECT DATEADD(YEAR, 999, GETDATE())

-- DATEDIFF : Ýki tarih arasýnda günü, ayý veya yýlý hesaplar.
SELECT DATEDIFF(DAY, '05.09.1992', GETDATE())
SELECT DATEDIFF(MONTH, '05.09.1992', GETDATE())
SELECT DATEDIFF(YEAR, '05.09.1992', GETDATE())

-- DATEPART : Verilen tarihin haftanýn, ayýn yahut yýlýn kaçýncý günü olduðunu hesaplar.
SELECT DATEPART(DW, GETDATE())
SELECT DATEPART(MONTH, GETDATE())
SELECT DATEPART(DAY, GETDATE())