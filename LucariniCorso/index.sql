DROP DATABASE IF EXISTS;
CREATE DATABASE corsi;
USE corsi;

CREATE TABLE Docenti{
    id_docenti INT, PRIMARY KEY,
    nome VARCHAR(25),
    cognome VARCHAR(25),
    email VARCHAR(25)
}

CREATE TABLE Corsi{
    id_corsi INT, PRIMARY KEY,
    titolo VARCHAR(25),
    descrizione TEXT,
    id_docenti INT,
    FOREIGN KEY (id_docenti) REFERENCES Docenti(id_docenti)
}

CREATE TABLE Iscrizioni{
    id_iscrizioni INT, PRIMARY KEY,
    nome_partecipante VARCHAR(25),
    cognome_partecipante VARCHAR(25),
    email_partecipante VARCHAR(25),
    id_corsi INT,
    FOREIGN KEY (id_corsi) REFERENCES Corsi(id_corsi)
}