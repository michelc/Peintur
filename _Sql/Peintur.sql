/* ---------- Vidage des tables
*/

DELETE FROM [Techniques];
GO
DELETE FROM [Tailles];
GO
DELETE FROM [Tableaux];
GO
DELETE FROM [Supports];
GO
DELETE FROM [Sujets];
GO
DELETE FROM [Stockages];
GO
DELETE FROM [Cotes];
GO
DELETE FROM [Cadres];
GO

/* ---------- Cadres
*/

BEGIN
GO
SET IDENTITY_INSERT [Cadres] ON;
GO
INSERT INTO [Cadres] ([ID], [Nom], [Valeur]) VALUES (1, 'Aucun', NULL);
GO
INSERT INTO [Cadres] ([ID], [Nom], [Valeur]) VALUES (2, 'Américain', NULL);
GO
INSERT INTO [Cadres] ([ID], [Nom], [Valeur]) VALUES (3, 'Encadré', NULL);
GO
INSERT INTO [Cadres] ([ID], [Nom], [Valeur]) VALUES (4, 'Sous-verre', NULL);
GO
SET IDENTITY_INSERT [Cadres] OFF;
GO
END;
GO

/* ---------- Cotes
*/

BEGIN
GO
SET IDENTITY_INSERT [Cotes] ON;
GO
INSERT INTO [Cotes] ([ID], [Nom], [Valeur]) VALUES (1, 'Officielle', 20);
GO
INSERT INTO [Cotes] ([ID], [Nom], [Valeur]) VALUES (2, 'Expo', 20);
GO
INSERT INTO [Cotes] ([ID], [Nom], [Valeur]) VALUES (3, 'Amis', 15);
GO
SET IDENTITY_INSERT [Cotes] OFF;
GO
END;
GO

/* ---------- Stockages
*/

BEGIN
GO
SET IDENTITY_INSERT [Stockages] ON;
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (0, 'Atelier', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (1, 'Atelier carton', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (2, 'Carton Ch. Bas', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (3, 'Cheminée', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (4, 'Couloir', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (5, 'Cuisine', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (6, 'Atelier devant carré', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (7, 'Atelier mur', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (8, 'Mur bureau', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (9, 'Atelier mur fond', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (10, 'Mur salon', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (11, 'Atelier sur armoire ', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (12, 'Atelier pendu', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (13, 'Salon', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (14, 'Atelier sur carré', NULL);
GO
INSERT INTO [Stockages] ([ID], [Nom], [Valeur]) VALUES (15, 'Vendu', NULL);
GO
SET IDENTITY_INSERT [Stockages] OFF;
GO
END;
GO

/* ---------- Sujets
*/

BEGIN
GO
SET IDENTITY_INSERT [Sujets] ON;
GO
INSERT INTO [Sujets] ([ID], [Nom], [Valeur]) VALUES (1, 'Abstrait', NULL);
GO
INSERT INTO [Sujets] ([ID], [Nom], [Valeur]) VALUES (2, 'Fleur', NULL);
GO
INSERT INTO [Sujets] ([ID], [Nom], [Valeur]) VALUES (3, 'Nature morte', NULL);
GO
INSERT INTO [Sujets] ([ID], [Nom], [Valeur]) VALUES (4, 'Paysage', NULL);
GO
INSERT INTO [Sujets] ([ID], [Nom], [Valeur]) VALUES (5, 'Portrait', NULL);
GO
SET IDENTITY_INSERT [Sujets] OFF;
GO
END;
GO

/* ---------- Supports
*/

BEGIN
GO
SET IDENTITY_INSERT [Supports] ON;
GO
INSERT INTO [Supports] ([ID], [Nom], [Valeur]) VALUES (1, 'Carton', NULL);
GO
INSERT INTO [Supports] ([ID], [Nom], [Valeur]) VALUES (2, 'Contreplaqué', NULL);
GO
INSERT INTO [Supports] ([ID], [Nom], [Valeur]) VALUES (3, 'Papier', NULL);
GO
INSERT INTO [Supports] ([ID], [Nom], [Valeur]) VALUES (4, 'Toile', NULL);
GO
SET IDENTITY_INSERT [Supports] OFF;
GO
END;
GO

/* ---------- Tableaux
*/

BEGIN
GO
SET IDENTITY_INSERT [Tableaux] ON;
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (1, 'Mignonne allons voir si la rose…', '2019', 'Huile au couteau', '(autre)', 'Toile', 'Aucun', 'Mur salon', '80 x 60', 25, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (2, 'Abstrait automne, les aléas de la vie', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '43 x 20', 5, -1.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (3, 'Abstrait fond noir, carrés multicolores', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '37 x 32', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (4, 'Abstrait vert et bleu', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '60 x 60', 15, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (5, 'Abstrait, fond beige-bleu, coulures blanches et bleues', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '50 x 50', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (6, 'Adèle déguisée', '2016', 'Huile', 'Portrait', 'Toile', 'Caisse américaine', 'Couloir', '54 x 46', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (7, 'Anthurium avec pochon vert', '2016', 'Mixte', 'Fleur', 'Carton entoilé', 'Aucun', 'Carton Ch. Bas', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (8, 'Arôme Arums', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '65 x 54', 15, 0.00, 'Copie');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (9, 'Automne en Ardèche au milieu des châtaigniers', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '65 x 54', 15, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (10, 'Bananes et mandarines', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (11, 'Barquette de mandarines', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (12, 'Betty Boop on the beach', '2017', 'Huile', '(autre)', 'Toile', 'Aucun', 'Carton Ch. Bas', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (13, 'Bouillonnement rouge, noir et orangé', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '100');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (14, 'Bouquet orangé au vase blanc', '2016', 'Mixte', 'Fleur', 'Contreplaqué', 'Aucun', 'Carton Ch. Bas', '50 x 32,5', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (15, 'Bouquet tulipes blanches', '2019', 'Huile au couteau', 'Fleur', 'Toile', 'Aucun', 'Atelier mur fond', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (16, 'Bourgeon de Rhododendron', '2017', 'Mixte', 'Fleur', 'Carton entoilé', 'Aucun', 'Carton Ch. Bas', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (17, 'Brassage abstrait, vert, rose, rouge, gris, noir', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '40');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (18, 'Brigitte Bardot', '2017', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier pendu', '61 x 50', 12, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (19, 'Calanques', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '65 x 54', 15, 0.00, 'Copie B. Buffet');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (20, 'Catherine Allégret', '2017', 'Huile', 'Portrait', 'Toile', 'Caisse américaine', 'Atelier carton', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (21, 'Chouette maîtresse', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '30 x 30', 5, 0.00, 'Avec lunettes');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (22, 'Cinq roses et un pot blanc', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '35');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (23, 'Cuisinier et sa casserole', '2016', 'Huile', '(autre)', 'Contreplaqué', 'Encadré', 'Cuisine', '37 x 20', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (24, 'Emmanuel', '2017', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (25, 'Evocation d’un village ardéchois, Loubaresse', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '200');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (26, 'Eze', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '46 x 38', 8, 0.00, 'Signé B. Buffet');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (27, 'Fermes', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '200, A la manière de Van Goigh');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (28, 'Fillette réfugiée', '2016', 'Huile', '(autre)', 'Toile', 'Aucun', 'Atelier pendu', '61 x 50', 12, 0.00, '(Le Puy 2019)');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (30, 'Fleurs en grappe et vase, fond vert', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (31, 'Fleurs sur billot de bois', '2016', 'Huile', 'Fleur', 'Toile', 'Aucun', 'Atelier devant carré', '61 x 50', 12, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (32, 'Fraises et cerises', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (33, 'Halloween vegetables', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (34, 'Homme à la peau brûlée par le soleil', '2017', 'Huile', '(autre)', 'Toile', 'Aucun', 'Carton Ch. Bas', '50 x 50', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (35, 'Iris de Cogolin', '2012', 'Mixte', 'Fleur', 'Toile', 'Aucun', 'Atelier sur carré', '54 x 38', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (36, 'Jeune fille à la perle', '2018', 'Huile', 'Portrait', 'Contreplaqué', 'Encadré', 'Atelier mur', '44 x 32,5', 8, 0.00, 'Copie Vermeer');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (37, 'Kay au bouquet de tulipes', '2017', 'Huile', '(autre)', 'Toile', 'Aucun', 'Atelier pendu', '30 x 30', 5, 0.00, 'Pas signée');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (38, 'L’adolescent', '2016', 'Huile', 'Portrait', 'Toile', 'Caisse américaine', 'Atelier sur armoire ', '61 x 46', 12, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (39, 'L’agave au pot bleu et chat', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', 'Vendu', '40 x 40', 8, 0.00, '35€ Pascale St-Laurent');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (40, 'La girafe s’amuse', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', 'Vendu', '30 x 30', 5, 0.00, 'Donné à Théo et Hugo');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (41, 'La grange rouge', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '50 x 40', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (42, 'La tour de St-Laurent, paysage automne', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (43, 'Lacs et sommets', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '36 x 26', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (44, 'Laura', '2016', 'Huile', '(autre)', 'Toile', 'Aucun', 'Atelier pendu', '50 x 50', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (45, 'Le jeune chien', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (46, 'Le Koala', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '30 x 30', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (47, 'Le mont Gerbier de Jonc', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '28 x 20', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (48, 'Le papillon noir sur les fleurs', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '27 x 22', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (49, 'Le Roi de coeur', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '70 x 50', 20, 0.00, 'Copie F. Léger');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (50, 'Le Semeur', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '30 x 24', 4, 0.00, 'Copie V. Van Gogh');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (51, 'Les Champignons', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '60 x 60', 15, 0.00, 'Hommage à Yayoï Kusama');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (52, 'Les deux poires', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (53, 'Les Fuchsias macro', '2019', 'Huile au couteau', 'Fleur', 'Toile', 'Aucun', 'Cheminée', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (54, 'Les pensées bleues', '2019', 'Huile au couteau', 'Fleur', 'Toile', 'Aucun', 'Mur bureau', '50 x 40', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (55, 'Les Perroquets', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '50');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (56, 'Madame de Birmanie fume le cigare', '2017', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier pendu', '60 x 60', 15, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (57, 'Madame Matisse à la raie verte', '1900', 'Huile', 'Portrait', 'Toile', 'Aucun', '(autre)', '40 x 30', 6, 0.00, 'Copie H. Matisse');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (58, 'Madame Monique', '2017', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier carton', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (59, 'Mademoiselle Claire', '1900', 'Huile', 'Portrait', 'Toile', 'Aucun', '(autre)', '41 x 33', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (60, 'Madone au foulard bleu', '2011', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Carton Ch. Bas', '50 x 50', 10, 0.00, 'Non signée');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (61, 'Marlène', '2016', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier carton', '70 x 50', 20, 0.00, 'Elodie Frenck, Petits meurtres Agatha Christie');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (62, 'Monsieur Jean', '2016', 'Huile', 'Portrait', 'Toile', 'Caisse américaine', 'Atelier carton', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (63, 'Monsieur Michel', '2016', 'Huile', 'Portrait', 'Toile', 'Caisse américaine', 'Atelier carton', '70 x 50', 20, 0.00, 'Galabru');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (64, 'Mosaïque de géraniums', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '30 x 21', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (65, 'Orchidée', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '37 x 32', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (66, 'Orchidées sauvages', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '30 x 21', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (67, 'Paysage matinal au bateau', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (68, 'Pervenche dans le mur', '2012', 'Mixte', 'Fleur', 'Toile', 'Aucun', 'Atelier sur carré', '54 x 38', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (69, 'Petite fille au chien', '2019', 'Huile', '(autre)', 'Toile', 'Aucun', 'Salon', '80 x 60', 25, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (70, 'Pomme golden', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '10 x 10', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (71, 'Pommes et prunes', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '24 x 18', 2, 0.00, 'Méthode flamande');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (72, 'Quatre pommes et la main', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '27 x 22', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (73, 'Rameau de Fuchsias', '2017', 'Mixte', 'Fleur', 'Toile', 'Aucun', 'Carton Ch. Bas', '50 x 40', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (74, 'Route à la croix en Ardèche', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (75, 'Sidney reflets', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '19 x 19', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (76, 'Succulente au pot de terre', '2011', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '39 x 28', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (77, 'Tableau Chats', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '70 x 50', 20, 0.00, 'Copie');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (78, 'Tableau Poules', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '61 x 50', 12, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (79, 'Tentation d’abstrait S18 E1(ou ma palette)', '1900', 'Huile', 'Abstrait', 'Toile', 'Aucun', '(autre)', '27 x 19', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (80, 'Thérèse à la robe bleue', '2016', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier pendu', '60 x 60', 15, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (81, 'Trois grenades', '1900', 'Huile', 'Nature morte', 'Toile', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (82, 'Un géranium', '1900', 'Huile', 'Fleur', 'Toile', 'Aucun', '(autre)', '30 x 21', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (83, 'Un peu fleur bleu', '2019', 'Huile', 'Fleur', 'Toile', 'Aucun', 'Atelier pendu', '80 x 60', 25, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (84, 'Vachement chaud !', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, '60');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (85, 'Vers chez Corinne', '1900', 'Huile', '(autre)', 'Toile', 'Aucun', '(autre)', '30 x 24', 4, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (86, 'Wangari Maathai', '2017', 'Huile', 'Portrait', 'Toile', 'Aucun', 'Atelier devant carré', '54 x 46', 10, 0.00, 'Prix Nobel Paix 2004');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (87, 'Bord de la rivière', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '30 x 24', 4, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (88, 'Le pont de Croston', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (89, 'Les fleurs bleues', '1900', 'Aquarelle', 'Fleur', '(autre)', 'Aucun', '(autre)', '30 x 24', 4, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (90, 'Maison sous Mézilhac', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (91, 'Paysage d’automne avec ferme', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '18 x 13', 1, 0.00, 'Copie de R. Mazat');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (92, 'Paysage bleuté avec ferme', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '18 x 13', 1, 0.00, 'Copie de R. Mazat');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (93, 'Bébé fille et son joli nœud noir et jaune', '1900', 'Dessin', '(autre)', '(autre)', 'Aucun', 'Aucun', '32 x 24', 4, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (94, 'La baigneuse', '1900', 'Aquarelle', '(autre)', '(autre)', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (95, 'Pin parasol', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '20 x 14', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (96, 'Les oignons de mon jardin', '1900', 'Aquarelle', 'Nature morte', '(autre)', 'Aucun', '(autre)', '24 x 18', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (97, 'Tresse d’ail', '1900', 'Aquarelle', 'Nature morte', '(autre)', 'Encadré', '(autre)', '24 x 18', 2, 0.00, 'Pas à pas');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (98, 'Les groseilles, pas à pas', '1900', 'Aquarelle', 'Nature morte', '(autre)', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (99, 'Vers chez Corinne', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '32 x 24', 4, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (100, 'La Basse-Croix', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (101, 'Quelques jonquilles, passe-partout de couleur noire', '1900', 'Aquarelle', 'Fleur', '(autre)', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (102, 'Hiver', '1900', 'Mixte', '(autre)', '(autre)', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (103, 'Bubbles', '1900', 'Aquarelle', '(autre)', '(autre)', 'Aucun', '(autre)', '24 x 18', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (104, 'Nature morte dans la cuisine', '1900', 'Aquarelle', 'Nature morte', '(autre)', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (105, 'Les citrons de mon citronnier', '1900', 'Aquarelle', 'Nature morte', '(autre)', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (106, 'Au bord de l’étang givré', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', 'Vendu', '40 x 30', 6, 0.00, 'Vendu au Salon 2019 ST J le Centenier Ferradou Mériem');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (107, 'Fleurs de Lyas', '1900', 'Aquarelle', 'Fleur', '(autre)', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (108, 'Le Gerbier d’Ardèche source de la Loire', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (109, 'Succulentes dans un pot en terre', '1900', 'Aquarelle', 'Fleur', '(autre)', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (110, 'Antraigues bleu', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (111, 'Roses trémières', '1900', 'Aquarelle', 'Fleur', '(autre)', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (112, 'Le pont de Garnier à Mariac', '1900', 'Aquarelle', 'Paysage', '(autre)', 'Aucun', 'Vendu', '40 x 30', 6, 0.00, 'Vendu à l’atelier 50 euros   Germaine Lévèque');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (113, 'Les trois pandas', '1900', 'Dessin', '(autre)', '(autre)', 'Aucun', 'Aucun', '30 x 21', 3, 0.00, 'Encre de Chine');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (114, 'Sur la plage musiciens et baigneuses', '1900', 'Dessin', '(autre)', '(autre)', 'Aucun', 'Aucun', '50 x 40', 8, 0.00, 'Pastels gras');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (115, 'Mademoiselle', '1900', 'Dessin', '(autre)', '(autre)', 'Aucun', 'Aucun', '30 x 24', 4, 0.00, 'Pastels secs. Copie');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (116, 'Femme nue couchée', '1900', 'Dessin', '(autre)', '(autre)', 'Aucun', 'Aucun', '(autre)', 0, 0.00, 'Pastels secs');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (117, 'Jean Ferrat', '1900', 'Dessin', 'Portrait', '(autre)', 'Aucun', '(autre)', '30 x 21', 3, 0.00, 'Crayon à papier');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (118, 'La petite fille et les poules', '1900', 'Dessin', '(autre)', '(autre)', 'Aucun', '(autre)', '32 x 24', 4, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (119, 'Femme nue', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, 'Copie de Amedeo Modigliani');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (120, 'Le cheval', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, 'Copie de Picasso');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (121, 'La peur, abstrait fond gris foncé et tour gris clair, coulures rouges, jaune orangé et noires', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (122, 'Flirt Géranium / Papillon', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (123, 'Fillette à la barrette orange', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (124, 'L’ours marche', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '18 x 13', 1, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (125, 'Portrait de Sborowski', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '30 x 18', 0, 0.00, 'Copie de Amedeo Modigliani');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (126, 'Abstrait métallisé, fond anthracite', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '30 x 30', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (127, 'La mer verte', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '27 x 19', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (128, 'Fleurs bleues stylisées', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '27 x 27', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (129, 'Nature morte au citron et à la corbeille', '1900', 'Acrylique', 'Nature morte', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (130, 'Abstrait orange', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '19 x 19', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (131, 'Abstrait chambre d’enfant', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '40 x 30', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (132, 'Le chat attend', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '45 x 16', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (133, 'J’ai un peu peur de l’avenir', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '27 x 19', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (134, 'Pirate mange', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (135, 'Système solaire', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '50 x 21', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (136, 'Ferme sous un ciel gris', '1900', 'Acrylique', 'Paysage', 'Toile', 'Aucun', '(autre)', '36 x 26', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (137, 'Deux fleurs blanches, rideaux rouges', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '35 x 11', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (138, 'Abstrait bleu et blanc, l’abîme', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (139, 'Anthurium, fond orange', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (140, 'La Basse-Croix', '1900', 'Acrylique', 'Paysage', 'Toile', 'Aucun', '(autre)', '24 x 18', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (141, 'Fillette brune', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (142, 'Abstrait carré coulures rouges et blanches', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (143, 'Gérard Jugnot', '1900', 'Acrylique', 'Portrait', 'Toile', 'Aucun', '(autre)', '20 x 20', 2, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (144, 'Abstrait fond anthracite tour bleu', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '60 x 60', 15, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (145, 'Fleur qui a eu soif', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '54 x 38', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (146, 'Pervenches dans le mur', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '54 x 38', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (147, 'Les iris sur la route de Cogolin', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '54 x 38', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (148, 'Tournesols vers Saint-Symphorien', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '54 x 46', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (149, 'Paysage arbre et maison reflets', '1900', 'Acrylique', 'Paysage', 'Toile', 'Aucun', '(autre)', '50 x 50', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (150, 'Abstrait cuivré', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', 'Vendu', '50 x 50', 10, 0.00, 'Donné');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (151, 'Douille d’obus', '1900', 'Acrylique', 'Nature morte', 'Toile', 'Aucun', '(autre)', '50 x 50', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (152, 'Calligraphie fond orangé', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '50 x 40', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (153, 'Par la fenêtre l’hiver', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '50 x 40', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (154, 'Anthurium et pochon', '1900', 'Acrylique', 'Fleur', 'Toile', 'Aucun', '(autre)', '46 x 38', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (155, 'Porche provencal', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '36 x 26', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (156, 'Abstrait multicolore, la vie n’est pas un long fleuve tranquille', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '60 x 15', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (157, 'Flirt d’automne, papillon et géranium', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '40 x 40', 8, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (158, 'Nature morte aux 3 poires', '1900', 'Acrylique', 'Nature morte', 'Toile', 'Aucun', '(autre)', '30 x 30', 5, 0.00, 'Pas à pas de Jacqueline Vassaille');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (159, 'Vase de tulipes', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '39 x 28', 6, 0.00, 'D’après Cézanne');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (160, 'Abstrait les carrées, fond gris clair', '1900', 'Acrylique', 'Abstrait', 'Toile', 'Aucun', '(autre)', '37 x 32', 6, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (161, 'Paysage au bord de l’eau', '1900', 'Acrylique', 'Paysage', 'Toile', 'Aucun', '(autre)', '36 x 26', 5, 0.00, 'D’après Cézanne');
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (162, 'Légumes du soleil', '1900', 'Acrylique', 'Nature morte', 'Toile', 'Aucun', '(autre)', '27 x 19', 3, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (163, 'Dans le coeur du coquelicot blanc', '1900', 'Acrylique', '(autre)', 'Toile', 'Aucun', '(autre)', '(autre)', 0, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (164, 'Kay à la casquette rose', '1900', 'Acrylique', 'Portrait', 'Toile', 'Aucun', '(autre)', '30 x 30', 5, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (165, 'Hommage à Monet : Equation au fil de l’eau', '1900', 'Mixte', 'Abstrait', 'Toile', 'Aucun', '(autre)', '65 x 54', 15, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (166, 'Tango', '1900', 'Mixte', 'Abstrait', 'Toile', 'Aucun', '(autre)', '54 x 38', 10, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (167, 'Rhapsodie', '1900', 'Mixte', 'Abstrait', 'Toile', 'Aucun', '(autre)', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (168, 'Percée, jeu d’ombres et lumières, alentours de Mariac', '1900', 'Mixte', '(autre)', 'Toile', 'Aucun', '(autre)', '70 x 50', 20, 0.00, NULL);
GO
INSERT INTO [Tableaux] ([Tableau_ID], [Nom], [Annee], [Technique], [Sujet], [Support], [Cadre], [Stockage], [Taille], [Points], [Poids], [Commentaires]) VALUES (169, 'Avec le temps…', '1900', 'Mixte', '(autre)', 'Toile', 'Aucun', '(autre)', '50 x 40', 8, 0.00, NULL);
GO
SET IDENTITY_INSERT [Tableaux] OFF;
GO
END;
GO

/* ---------- Tailles
*/

BEGIN
GO
SET IDENTITY_INSERT [Tailles] ON;
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (1, '10 x 10', 1);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (2, '18 x 13', 1);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (3, '19 x 19', 2);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (4, '20 x 14', 1);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (5, '20 x 20', 2);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (6, '24 x 18', 2);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (7, '27 x 19', 3);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (8, '27 x 22', 3);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (9, '28 x 20', 3);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (10, '30 x 21', 3);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (11, '30 x 24', 4);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (12, '30 x 30', 5);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (13, '32 x 24', 4);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (14, '36 x 26', 5);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (15, '37 x 20', 5);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (16, '37 x 32', 6);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (17, '39 x 28', 6);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (18, '40 x 30', 6);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (19, '40 x 40', 8);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (20, '41 x 33', 6);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (21, '43 x 20', 5);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (22, '44 x 32,5', 8);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (23, '46 x 38', 8);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (24, '50 x 32,5', 8);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (25, '50 x 40', 8);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (26, '50 x 50', 10);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (27, '54 x 38', 10);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (28, '54 x 46', 10);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (29, '60 x 60', 15);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (30, '61 x 46', 12);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (31, '61 x 50', 12);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (32, '65 x 54', 15);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (33, '70 x 50', 20);
GO
INSERT INTO [Tailles] ([ID], [Nom], [Valeur]) VALUES (34, '80 x 60', 25);
GO
SET IDENTITY_INSERT [Tailles] OFF;
GO
END;
GO

/* ---------- Techniques
*/

BEGIN
GO
SET IDENTITY_INSERT [Techniques] ON;
GO
INSERT INTO [Techniques] ([ID], [Nom], [Valeur]) VALUES (1, 'Acrylique', NULL);
GO
INSERT INTO [Techniques] ([ID], [Nom], [Valeur]) VALUES (2, 'Aquarelle', NULL);
GO
INSERT INTO [Techniques] ([ID], [Nom], [Valeur]) VALUES (3, 'Dessin', NULL);
GO
INSERT INTO [Techniques] ([ID], [Nom], [Valeur]) VALUES (4, 'Huile', NULL);
GO
INSERT INTO [Techniques] ([ID], [Nom], [Valeur]) VALUES (5, 'Huile au couteau', NULL);
GO
INSERT INTO [Techniques] ([ID], [Nom], [Valeur]) VALUES (6, 'Mixte', NULL);
GO
SET IDENTITY_INSERT [Techniques] OFF;
GO
END;
GO

/* ---------- Màj des IDs automatiques
*/

RESET_IDENTITY [Cadres].[ID];
GO
RESET_IDENTITY [Cotes].[ID];
GO
RESET_IDENTITY [Stockages].[ID];
GO
RESET_IDENTITY [Sujets].[ID];
GO
RESET_IDENTITY [Supports].[ID];
GO
RESET_IDENTITY [Tableaux].[Tableau_ID];
GO
RESET_IDENTITY [Tailles].[ID];
GO
RESET_IDENTITY [Techniques].[ID];
GO

