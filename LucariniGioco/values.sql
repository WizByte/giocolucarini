INSERT INTO Videogioco VALUES ('Hollow Knight', '7', 'completato', '2.800.000');
INSERT INTO Videogioco VALUES ('Silksong', '7', 'in sviluppo');
INSERT INTO Videogioco VALUES ('Titanfall 3', '16', 'cancellato');

--(id, nome, urlws)
INSERT INTO Piattaforma VALUES ('Steam', 'https://store.steampowered.com/');
INSERT INTO Piattaforma VALUES ('Riot Games', 'https://www.riotgames.com/');
INSERT INTO Piattaforma VALUES ('Epic Games', 'https://www.epicgames.com/');

--(id, invio, commento, voto, utente)
INSERT INTO Recensione VALUES ('26 NOVEMBRE 2018', 'Sorprendente, una avventura di gioco che lascia a bocca aperta', '9', '@romanistaaccanito');
INSERT INTO Recensione VALUES ('24 AGOSTO 2021', 'sto aspettando da 6 anni sto gioco', '10', '@Sbendols');
INSERT INTO Recensione VALUES ('2 LUGLIO 2023', 'pollice in su', '3', '@kazuyaspammer');

--(id, desc, inizio, fine)
INSERT INTO Team VALUES ('', '', '');
INSERT INTO Team VALUES ('', '', '');
INSERT INTO Team VALUES ('', '', '');

--(id, nome, cognome, indirizzo, username, parola_ordine, esperienza, stipendio, attivo, ultimo_accesso)
INSERT INTO Utente VALUES ('Vincenzo', 'Esposito', 'Via I Napoletani', '', '', '', '', '', '');
INSERT INTO Utente VALUES ('Italo', 'Grimaldi', 'Via Giu', '', '', '', '', '', '');
INSERT INTO Utente VALUES ('Silvio', 'Berlusconi', 'Viale Mafioso', '', '', '', '', '', '');

--(id, denominazione, descrizione)
INSERT INTO Permesso VALUES ('Standard', 'puo visualizzare tutto, ma non modificare nulla');
INSERT INTO Permesso VALUES ('Sviluppatore', 'puo visualizzare e modificare qualsiasi informazione');
INSERT INTO Permesso VALUES ('God', 'puo visualizzare e modificare qualsiasi informazione');