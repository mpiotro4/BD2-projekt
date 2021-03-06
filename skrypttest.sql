-- Operacje testowe:
-- 1. Wylistować wszystkie czynności dla modułu
-- 2. Pokazać wszystkie czynności danej kategorii
-- 3. Pokazać wszystkie czynności danego pracownika
-- 4. Pokazać kto wykonał czynność i ile to trwało oraz notatkę

set echo on
set linesize 300
set pagesize 500
spool BD2C074_TEST.LIS

-- Pokaż wszystkie podjętę czynności dla wszystkich modułów wraz z informacja o autorze, zatwierdzającym, datą wykonania, czasem wykonania, datą zatwierdzenia
SELECT 
    MODULY.NAZWA AS MODUL,
    KATEGORIE.NAZWA AS KATEGORIA,
    NOTATKA, DATA_ROZPOCZECIA,
    (DATA_WYKONANIA - DATA_ROZPOCZECIA) AS CZAS_WYKONANIA,
    DATA_ZATWIERDZENIA,
    AUTORZY.EMAIL AS WYKONYWANE_PRZEZ,
    ZATWIERDZAJACY.EMAIL AS ZATWIERDZONE_PRZEZ
    FROM CZYNNOSCI
JOIN PRACOWNICY AUTORZY ON AUTORZY.ID_PRACOWNIKA = CZYNNOSCI.ID_PRACOWNIKA
JOIN KATEGORIE ON CZYNNOSCI.ID_KATEGORII = KATEGORIE.ID_KATEGORII
JOIN MODULY ON MODULY.ID_MODULU = CZYNNOSCI.ID_MODULU
LEFT JOIN PRACOWNICY ZATWIERDZAJACY ON MODULY.ID_PRACOWNIKA = ZATWIERDZAJACY.ID_PRACOWNIKA;

-- Pokaż czynności wraz z czynnościami nadrzędnymi
SELECT 
    NADRZEDNE.DATA_ROZPOCZECIA as   DATA_ROZPOCZECIA_NADRZ,
    NADRZEDNE.DATA_WYKONANIA as   DATA_WYKONANIA_NADRZ,
    NADRZEDNE.NOTATKA as   NOTATKA_NADRZ,
    CZYNNOSCI.DATA_ROZPOCZECIA,
    CZYNNOSCI.DATA_WYKONANIA,
    CZYNNOSCI.NOTATKA
FROM CZYNNOSCI
JOIN CZYNNOSCI NADRZEDNE ON NADRZEDNE.ID_CZYNNOSCI = CZYNNOSCI.ID_CZYN_NADRZ
WHERE CZYNNOSCI.ID_CZYN_NADRZ IS NOT NULL

spool off



