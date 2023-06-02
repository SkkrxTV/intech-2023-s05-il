INSERT INTO compte_comptable (numero, libelle)
    VALUES (10, 'Matteo'),
           (11, 'Francis'),
           (12, 'Ngannou');

INSERT INTO journal_comptable (code, libelle)
    VALUES ('GL', 'Achat'),
           ('HF', 'Banque');

INSERT INTO ecriture_comptable (id, journal_code, date, reference, libelle)
    VALUES (1, 'GL', '2021-08-11', 'GL-2021/00001', 'Rose'),
           (2, 'HF', '2021-08-11', 'HF-2021/00001', 'Ordinateur'),
           (3, 'HF', '2021-08-11', 'HF-2021/00002', 'Television'),
           (4, 'HF', '2021-08-11', 'HF-2021/00003', 'Journal');

INSERT INTO sequence_ecriture_comptable (journal_code, annee, derniere_valeur)
    VALUES ('GL', 2021, 1),
           ('HF', 2021, 3);

INSERT INTO ligne_ecriture_comptable (ecriture_id, ligne_id, compte_comptable_numero, libelle, debit, credit)
    VALUES (1, 1, 10, 'A', 12.95, 0),
           (1, 2, 10, 'B', 0, 21.05),
           (1, 3, 10, 'C', 8.10, 0),
           (2, 1, 11, 'AA', 0, 10),
           (2, 2, 11, 'BB', 34.67, 0),
           (2, 3, 12, 'CC', 10, 34.67),
           (3, 1, 12, 'AAA', 20, 5),
           (3, 2, 11, 'BBB', 15, 30),
           (4, 1, 10, 'AAAA', 10, 30),
           (4, 2, 11, 'BBBB', 0, 25),
           (4, 3, 11, 'CCCC', 15, 0),
           (4, 4, 12, 'DDDD', 40, 10);
           