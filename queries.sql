-- =============================================================
-- Gestiunea unui magazin de haine - rapoarte si interogari
-- Compatibil cu Oracle Database (12c+) si PostgreSQL (13+)
-- =============================================================

-- 1. Produsele in ordine alfabetica
SELECT codp, denumire, cantitate, unit_mas, pret
FROM stocuri
ORDER BY denumire;

-- 2. Furnizorii in ordine alfabetica
SELECT cod_f, nume, adresa
FROM furnizori
ORDER BY nume;

-- 3. Produsele care necesita aprovizionare (stocul a scazut sub cantitatea normala)
SELECT codp, denumire, cantitate, cant_norm,
       cant_norm - cantitate AS de_comandat
FROM stocuri
WHERE cantitate < cant_norm
ORDER BY de_comandat DESC;

-- 4. Produsele care necesita conditii speciale de depozitare
SELECT codp, denumire, cantitate
FROM stocuri
WHERE cond_spec = 1;

-- 5. Produsele in ordinea crescatoare a pretului
SELECT codp, denumire, pret
FROM stocuri
ORDER BY pret, denumire;

-- 6. Pretul maxim
SELECT MAX(pret) AS pret_maxim
FROM stocuri;

-- 7. Numarul furnizorilor
SELECT COUNT(*) AS numar_furnizori
FROM furnizori;

-- 8. Produsul (sau produsele) cu pretul maxim
SELECT denumire, pret
FROM stocuri
WHERE pret = (SELECT MAX(pret) FROM stocuri);

-- 9. Date pentru graficul de preturi
SELECT denumire, pret
FROM stocuri
ORDER BY pret DESC;

-- -------------------------------------------------------------
-- Interogari suplimentare (JOIN, agregari)
-- -------------------------------------------------------------

-- 10. Produsele impreuna cu furnizorul lor
SELECT s.codp, s.denumire, f.nume AS furnizor
FROM stocuri s
JOIN furnizori f ON f.cod_f = s.codf
ORDER BY f.nume, s.denumire;

-- 11. Numarul de produse si valoarea stocului pentru fiecare furnizor
SELECT f.nume AS furnizor,
       COUNT(s.id)                       AS numar_produse,
       COALESCE(SUM(s.cantitate * s.pret), 0) AS valoare_stoc
FROM furnizori f
LEFT JOIN stocuri s ON s.codf = f.cod_f
GROUP BY f.nume
ORDER BY valoare_stoc DESC;

-- 12. Valoarea totala a stocului magazinului
SELECT SUM(cantitate * pret) AS valoare_totala_stoc
FROM stocuri;

-- 13. Produsele mai scumpe decat pretul mediu
SELECT denumire, pret
FROM stocuri
WHERE pret > (SELECT AVG(pret) FROM stocuri)
ORDER BY pret DESC;

-- 14. Achizitiile pe luni
SELECT TO_CHAR(data_achiz, 'YYYY-MM') AS luna,
       COUNT(*)                       AS produse_achizitionate,
       SUM(cantitate)                 AS bucati
FROM stocuri
GROUP BY TO_CHAR(data_achiz, 'YYYY-MM')
ORDER BY luna;

-- 15. Furnizorii care livreaza produse ce trebuie reaprovizionate
SELECT DISTINCT f.nume, f.adresa
FROM furnizori f
JOIN stocuri s ON s.codf = f.cod_f
WHERE s.cantitate < s.cant_norm;
