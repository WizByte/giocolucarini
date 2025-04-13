CREATE TABLE Sviluppo (
    id_videogioco INT,
    id_team INT,
    PRIMARY KEY (id_videogioco, id_team),
    FOREIGN KEY (id_videogioco) REFERENCES Videogioco(id_videogioco),
    FOREIGN KEY (id_team) REFERENCES Team(id_team)
)


CREATE TABLE Pubblicazione (
    id_piattaforma INT,
    id_videogioco INT,
    PRIMARY KEY (id_piattaforma, id_videogioco),
    FOREIGN KEY (id_piattaforma) REFERENCES Piattaforma(id_piattaforma),
    FOREIGN KEY (id_videogioco) REFERENCES Videogioco(id_videogioco)
)


CREATE TABLE Partecipazione (
    id_utente INT,
    id_team INT,
    PRIMARY KEY (id_utente, id_team),
    FOREIGN KEY (id_utente) REFERENCES Utente(id_utente),
    FOREIGN KEY (id_team) REFERENCES Team(id_team)
)
