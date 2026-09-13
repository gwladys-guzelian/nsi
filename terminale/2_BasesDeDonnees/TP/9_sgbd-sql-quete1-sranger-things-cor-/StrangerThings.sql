-- Table acteurs

DROP TABLE IF EXISTS Acteur;

CREATE TABLE Acteur (
    id_acteur INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    date_naissance DATE
);

-- Peuplemenent Table Acteurs

INSERT INTO Acteur (id_acteur, nom, prenom, date_naissance) VALUES
(1, 'Brown', 'Millie Bobby', '2004-02-19'),
(2, 'Wolfhard', 'Finn', '2002-12-23'),
(3, 'Sink', 'Sadie', '2002-04-16'),
(4, 'Matarazzo', 'Gaten', '2002-09-08'),
(5, 'McLaughlin', 'Caleb', '2001-10-13'),
(6, 'Ryder', 'Winona', '1971-10-29'),
(7, 'Harbour', 'David', '1975-04-10'),
(8, 'Dyer', 'Natalia', '1995-01-13'),
(9, 'Heaton', 'Charlie', '1994-02-06'),
(10, 'Keery', 'Joe', '1992-04-24'),
(11, 'Ferguson', 'Maya', '1997-05-28'),
(12, 'Hawke', 'Maya', '1998-07-08'),
(13, 'Montgomery', 'Dacre', '1994-11-22'),
(14, 'Bower', 'Jamie Campbell', '1988-11-22'),
(15, 'Schnapp', 'Noah', '2004-10-03'),
(16, 'McClain', 'Priah', '2007-08-04'),
(17, 'Modine', 'Matthew', '1959-03-22'),
(18, 'Buell', 'Eduardo Franco', '1995-01-29');

-- Table Personnages

DROP TABLE IF EXISTS Personnage;

CREATE TABLE Personnage (
    id_personnage INTEGER PRIMARY KEY,
    nom_personnage TEXT NOT NULL,
    age INTEGER,
    pouvoir TEXT,
    id_acteur INTEGER,
    FOREIGN KEY (id_acteur) REFERENCES Acteur(id_acteur)
);

-- Peuplement Table Personnages

INSERT INTO Personnage (id_personnage, nom_personnage, age, pouvoir, id_acteur) VALUES
(1, 'Eleven', 14, 'Télékinésie', 1),
(2, 'Mike Wheeler', 14, NULL, 2),
(3, 'Max Mayfield', 14, NULL, 3),
(4, 'Dustin Henderson', 14, NULL, 4),
(5, 'Lucas Sinclair', 14, NULL, 5),
(6, 'Joyce Byers', 45, NULL, 6),
(7, 'Jim Hopper', 45, NULL, 7),
(8, 'Nancy Wheeler', 17, NULL, 8),
(9, 'Jonathan Byers', 18, NULL, 9),
(10, 'Steve Harrington', 18, NULL, 10),
(11, 'Robin Buckley', 18, NULL, 11),
(12, 'Eddie Munson', 20, NULL, 12),
(13, 'Billy Hargrove', 18, NULL, 13),
(14, 'Vecna', NULL, 'Pouvoirs psychiques', 14),
(15, 'Will Byers', 14, "Connexion à l'Upside Down", 15),
(16, 'Erica Sinclair', 10, NULL, 16),
(17, 'Dr Martin Brenner', 60, NULL, 17),
(18, 'Argyle', 18, NULL, 18);

-- Table Saisons

DROP TABLE IF EXISTS Saison;

CREATE TABLE Saison (
    id_saison INTEGER PRIMARY KEY,
    numero INTEGER NOT NULL,
    annee_diffusion INTEGER,
    annee_reelle INTEGER
);

-- Peuplement Table Saisons

INSERT INTO Saison (id_saison, numero, annee_diffusion, annee_reelle) VALUES
(1, 1, 2016, 1983),
(2, 2, 2017, 1984),
(3, 3, 2019, 1985),
(4, 4, 2022, 1986),
(5, 5, 2025, 1987);

-- Table Episodes

DROP TABLE IF EXISTS Episode;

CREATE TABLE Episode (
    id_episode INTEGER PRIMARY KEY,
    titre TEXT NOT NULL,
    numero_episode INTEGER,
    id_saison INTEGER,
    FOREIGN KEY (id_saison) REFERENCES Saison(id_saison)
);

-- Peuplement Table Episodes

-- Saison 1
INSERT INTO Episode (id_episode, titre, numero_episode, id_saison) VALUES
(1, 'La disparition de Will Byers', 1, 1),
(2, 'La folle du laboratoire', 2, 1),
(3, 'Chère Holly', 3, 1),
(4, 'Le corps', 4, 1),
(5, 'La puce et l’acrobate', 5, 1),
(6, 'Le monstre', 6, 1),
(7, 'La baignoire', 7, 1),
(8, 'Le Monde à l’envers', 8, 1);

-- Saison 2
INSERT INTO Episode (id_episode, titre, numero_episode, id_saison) VALUES
(9, 'MADMAX', 1, 2),
(10, 'Des bonbons ou un sort, espèce de taré', 2, 2),
(11, 'Le Batracien', 3, 2),
(12, 'Will le sage', 4, 2),
(13, 'Dig Dug', 5, 2),
(14, 'L’Espion', 6, 2),
(15, 'Le Sœur disparue', 7, 2),
(16, 'Le Flagelleur mental', 8, 2),
(17, 'Le Portail', 9, 2);

-- Saison 3
INSERT INTO Episode (id_episode, titre, numero_episode, id_saison) VALUES
(18, 'Suzie, tu me reçois ?', 1, 3),
(19, 'Les Rats du centre commercial', 2, 3),
(20, 'Le Cas de Madame Driscoll', 3, 3),
(21, 'Le Sauna Test', 4, 3),
(22, 'L’Armée des ombres', 5, 3),
(23, 'E Pluribus Unum', 6, 3),
(24, 'La Morsure', 7, 3),
(25, 'La Bataille de Starcourt', 8, 3);

-- Saison 4
INSERT INTO Episode (id_episode, titre, numero_episode, id_saison) VALUES
(26, 'Le Club de l’Enfer', 1, 4),
(27, 'La Malédiction de Vecna', 2, 4),
(28, 'Le Monstre et la super-héroïne', 3, 4),
(29, 'Cher Billy', 4, 4),
(30, 'Le Projet Nina', 5, 4),
(31, 'Plongée dans l’inconnu', 6, 4),
(32, 'Le Massacre du laboratoire Hawkins', 7, 4),
(33, 'Papa', 8, 4),
(34, 'Le Monde à l’envers', 9, 4),

-- Saison 5
(35, 'Mission de secours', 1, 5),
(36, 'La disparition de...', 2, 5),
(37, 'Le piège de Turnbow', 3, 5),
(38, 'Le sorcier', 4, 5),
(39, 'La rumeur', 5, 5),
(40, "L'échappée de Hawkins", 6, 5),
(41, 'Le pont', 7, 5),
(42, "Le monde à l'endroit", 8, 5);

-- Table Lieu

DROP TABLE IF EXISTS Lieu;

CREATE TABLE Lieu (
    id_lieu INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    type_lieu TEXT
);

-- Peuplement de la Table Lieux

INSERT INTO Lieu (id_lieu, nom, type_lieu) VALUES
(1, 'Hawkins', 'Ville'),
(2, 'Laboratoire de Hawkins', 'Laboratoire'),
(3, 'Maison des Byers', 'Maison'),
(4, 'Maison des Wheeler', 'Maison'),
(5, 'Collège de Hawkins', 'École'),
(6, 'Starcourt Mall', 'Centre commercial'),
(7, 'Forêt de Hawkins', 'Forêt'),
(8, 'Upside Down', 'Monde parallèle'),
(9, 'Poste de police de Hawkins', 'Bâtiment public'),
(10, 'Cimetière de Hawkins', 'Cimetière'),
(11, 'Patinoire de Hawkins', 'Lieu sportif'),
(12, 'Maison Creel', 'Maison'),
(13, 'Russie (camp soviétique)', 'Base militaire'),
(14, 'Salle d’arcade Palace', 'Salle de jeux'),
(15, 'Lycée de Hawkins', 'Établissement scolaire');

-- Table Apparition

DROP TABLE IF EXISTS Apparition;

CREATE TABLE Apparition (
    id_personnage INTEGER,
    id_episode INTEGER,
    id_lieu INTEGER,
    PRIMARY KEY (id_personnage, id_episode),
    FOREIGN KEY (id_personnage) REFERENCES Personnage(id_personnage),
    FOREIGN KEY (id_episode) REFERENCES Episode(id_episode),
    FOREIGN KEY (id_lieu) REFERENCES Lieu(id_lieu)
);

-- Peuplement Table Apparitions

-- Saison 1
INSERT INTO Apparition VALUES
(15, 1, 3),   -- Will / Maison des Byers
(1, 2, 2),    -- Eleven / Laboratoire
(2, 3, 4),    -- Mike / Maison Wheeler
(7, 4, 9),    -- Hopper / Poste de police
(4, 5, 5),    -- Dustin / Collège
(1, 6, 7),    -- Eleven / Forêt
(3, 7, 8),    -- Max / Upside Down
(7, 8, 8),    -- Hopper / Upside Down
(2, 1, 4),   -- Mike / Maison Wheeler
(6, 1, 3),   -- Joyce / Maison Byers
(7, 2, 2),   -- Hopper / Laboratoire
(4, 3, 5),   -- Dustin / Collège
(5, 4, 7),   -- Lucas / Forêt
(8, 5, 4),   -- Nancy / Maison Wheeler
(9, 6, 7),   -- Jonathan / Forêt
(10, 7, 8),  -- Steve / Upside Down
(6, 8, 3),   -- Joyce / Maison Byers
(1, 8, 8);   -- Eleven / Upside Down

-- Saison 2
INSERT INTO Apparition VALUES
(3, 9, 14),   -- Max / Salle d’arcade
(15, 10, 3),  -- Will / Maison Byers
(4, 11, 7),   -- Dustin / Forêt
(15, 12, 3),  -- Will / Maison Byers
(2, 13, 5),   -- Mike / Collège
(7, 14, 9),   -- Hopper / Poste de police
(1, 15, 1),   -- Eleven / Hawkins
(14, 16, 8),  -- Vecna / Upside Down
(7, 17, 2),   -- Hopper / Laboratoire
(2, 9, 5),    -- Mike / Collège
(4, 10, 5),   -- Dustin / Collège
(7, 11, 9),   -- Hopper / Poste de police
(6, 12, 3),   -- Joyce / Maison Byers
(5, 13, 7),   -- Lucas / Forêt
(8, 14, 4),   -- Nancy / Maison Wheeler
(9, 15, 1),   -- Jonathan / Hawkins
(10, 16, 5),  -- Steve / Collège
(6, 16, 3),   -- Joyce / Maison Byers
(1, 17, 8);   -- Eleven / Upside Down

-- Saison 3
INSERT INTO Apparition VALUES
(4, 18, 1),   -- Dustin / Hawkins
(10, 19, 6),  -- Steve / Starcourt
(6, 20, 3),   -- Joyce / Maison Byers
(7, 21, 6),   -- Hopper / Starcourt
(13, 22, 6),  -- Billy / Starcourt
(14, 23, 8),  -- Vecna / Upside Down
(3, 24, 6),   -- Max / Starcourt
(7, 25, 6),   -- Hopper / Starcourt
(2, 18, 1),   -- Mike / Hawkins
(8, 19, 6),   -- Nancy / Starcourt
(9, 20, 3),   -- Jonathan / Maison Byers
(1, 21, 6),   -- Eleven / Starcourt
(10, 22, 6),  -- Steve / Starcourt
(11, 23, 6),  -- Robin / Starcourt
(5, 24, 6),   -- Lucas / Starcourt
(6, 25, 3),   -- Joyce / Maison Byers
(4, 25, 6),   -- Dustin / Starcourt
(2, 23, 1);   -- Mike / Hawkins

-- Saison 4
INSERT INTO Apparition VALUES
(12, 26, 15), -- Eddie / Lycée
(14, 27, 12), -- Vecna / Maison Creel
(1, 28, 2),   -- Eleven / Laboratoire
(3, 29, 4),   -- Max / Maison Wheeler
(1, 30, 2),   -- Eleven / Projet Nina (labo)
(7, 31, 13),  -- Hopper / Russie
(14, 32, 2),  -- Vecna / Laboratoire
(6, 33, 3),   -- Joyce / Maison Byers
(14, 34, 8),  -- Vecna / Upside Down
(2, 26, 15),  -- Mike / Lycée
(4, 26, 15),  -- Dustin / Lycée
(3, 27, 12),  -- Max / Maison Creel
(15, 28, 4),  -- Will / Maison Wheeler
(7, 29, 9),   -- Hopper / Poste de police
(17, 30, 2),  -- Dr Brenner / Laboratoire
(6, 31, 13),  -- Joyce / Russie
(1, 32, 8),   -- Eleven / Upside Down
(3, 33, 3),   -- Max / Maison Byers
(2, 34, 8),   -- Mike / Upside Down

-- Saison 5
(1, 35, 1),   -- Eleven / Hawkins
(2, 35, 1),   -- Mike / Hawkins
(15, 35, 1),  -- Will / Hawkins
(7, 35, 1),   -- Hopper / Hawkins
(6, 35, 1),   -- Joyce / Hawkins
(4, 36, 1),   -- Dustin / Hawkins
(10, 36, 1),  -- Steve / Hawkins
(14, 42, 8),  -- Vecna / Upside Down
(5, 35, 1),   -- Lucas Sinclair dans Hawkins
(3, 35, 10),  -- Max Mayfield au Cimetière de Hawkins
(8, 35, 4),   -- Nancy Wheeler dans la Maison des Wheeler
(9, 36, 3),   -- Jonathan Byers dans la Maison des Byers
(11, 36, 15), -- Robin Buckley au Lycée de Hawkins
(12, 37, 8),  -- Eddie Munson (flashback/vision) dans l'Upside Down
(17, 38, 2),  -- Dr Martin Brenner (flashback) au Laboratoire
(16, 39, 14), -- Erica Sinclair à la Salle d’arcade Palace
(18, 40, 1),  -- Argyle dans Hawkins
(1, 42, 12);  -- Eleven dans la Maison Creel pour la confrontation finale
