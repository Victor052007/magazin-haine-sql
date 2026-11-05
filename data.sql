-- Date de test pentru magazin (generate din data/furnizori.csv si data/stocuri.csv)

INSERT INTO furnizori (id, cod_f, nume, adresa) VALUES (1, 101, 'Atelier Moda Nord SRL', 'Str. Fabricii 12 București');
INSERT INTO furnizori (id, cod_f, nume, adresa) VALUES (2, 102, 'EuroTextile Trading', 'Via Industria 45 Prato');
INSERT INTO furnizori (id, cod_f, nume, adresa) VALUES (3, 103, 'Anatolia Apparel Ltd', 'Organize Sanayi Bölgesi');
INSERT INTO furnizori (id, cod_f, nume, adresa) VALUES (4, 104, 'Iberia Garments S.A', 'Pol. Ind. La Peña, Av. 9');
INSERT INTO furnizori (id, cod_f, nume, adresa) VALUES (5, 105, 'PortoPremium Fabrics', 'Rua dos Tecidos 3');

INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (1, 'ami1', 'Ami De Coeur Crewneck Sweater', 8, 10, 'buc', 2500, TO_DATE('04-Sep-2025', 'DD-MON-YYYY'), 1, 105);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (2, 'ami2', 'White Wool Ami De Coeur Polo', 200, 25, 'buc', 2800, TO_DATE('04-Sep-2025', 'DD-MON-YYYY'), 0, 105);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (3, 'ami3', 'White Ami De Coeur Cardigan', 70, 5, 'buc', 3050, TO_DATE('04-Sep-2025', 'DD-MON-YYYY'), 0, 105);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (4, 'ami4', 'White Wool Ami De Coeur V Neck', 300, 50, 'buc', 2950, TO_DATE('04-Sep-2025', 'DD-MON-YYYY'), 0, 105);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (5, 'ami5', 'AMI de Coeur Sweatshirt - Navy', 120, 85, 'buc', 2500, TO_DATE('04-Sep-2025', 'DD-MON-YYYY'), 0, 101);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (6, 'ami6', 'Brown Double-Breasted Coat', 50, 20, 'buc', 9975, TO_DATE('04-Sep-2025', 'DD-MON-YYYY'), 0, 102);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (7, 'ami7', 'Black Zipped Leather Jacket', 70, 30, 'buc', 6525, TO_DATE('01-Oct-2025', 'DD-MON-YYYY'), 0, 104);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (8, 'ami8', 'AMI Wool Scarf - Grey', 60, 30, 'buc', 395, TO_DATE('01-Oct-2025', 'DD-MON-YYYY'), 0, 105);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (9, 'ami9', 'Wool Double-Breasted Coat', 50, 20, 'buc', 6400, TO_DATE('01-Oct-2025', 'DD-MON-YYYY'), 0, 102);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (10, 'ami10', 'AMI Chino Trousers - Khaki', 200, 70, 'buc', 2700, TO_DATE('01-Oct-2025', 'DD-MON-YYYY'), 0, 103);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (11, 'ami11', 'AMI Leather Belt - Brown', 70, 15, 'buc', 700, TO_DATE('01-Oct-2025', 'DD-MON-YYYY'), 0, 104);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (12, 'ami12', 'AMI Quilted Jacket - Olive', 55, 20, 'buc', 2700, TO_DATE('09-Sep-2025', 'DD-MON-YYYY'), 0, 102);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (13, 'ami13', 'AMI Socks Pack 3 - Mixed', 700, 500, 'pck', 250, TO_DATE('09-Sep-2025', 'DD-MON-YYYY'), 0, 103);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (14, 'ami14', 'AMI Cotton Shirt Striped', 160, 20, 'buc', 1900, TO_DATE('09-Sep-2025', 'DD-MON-YYYY'), 0, 103);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (15, 'ami15', 'AMI Slim Fit Jeans - Dark Wash', 130, 70, 'buc', 2900, TO_DATE('12-Sep-2025', 'DD-MON-YYYY'), 0, 103);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (16, 'ami16', 'AMI Cashmere Blend Sweater', 40, 15, 'buc', 1400, TO_DATE('09-Oct-2025', 'DD-MON-YYYY'), 0, 105);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (17, 'ami17', 'AMI Rain Shell Jacket - Black', 90, 60, 'buc', 3900, TO_DATE('11-Sep-2025', 'DD-MON-YYYY'), 0, 101);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (18, 'ami18', 'AMI Corduroy', 95, 50, 'buc', 2000, TO_DATE('03-Oct-2025', 'DD-MON-YYYY'), 0, 103);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (19, 'ami19', 'AMI Suede Chelsea Boots', 15, 3, 'buc', 4000, TO_DATE('07-Oct-2025', 'DD-MON-YYYY'), 0, 104);
INSERT INTO stocuri (id, codp, denumire, cantitate, cant_norm, unit_mas, pret, data_achiz, cond_spec, codf) VALUES (20, 'ami20', 'AMI Linen Summer Shirt - White', 210, 30, 'buc', 2900, TO_DATE('03-Oct-2025', 'DD-MON-YYYY'), 0, 103);

COMMIT;
