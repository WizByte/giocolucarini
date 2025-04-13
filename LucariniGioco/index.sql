DROP DATABASE IF EXISTS GIOCO;
CREATE DATABASE GIOCO;
USE GIOCO;


CREATE TABLE Videogioco (
    id_videogioco smallint primary key,
    nome varchar(20) not null,
    PEGI tinyint not null default "3",
    stato varchar(10) not null,
    vendite smallint default "0"
)


CREATE TABLE Piattaforma (  
    id_piattaforma smallint primary key,
    nome varchar(30) not null,
    urlws varchar(20) not null
)


CREATE TABLE Recensione (
    id_recensione smallint primary key,
    invio date,
    commento text,
    voto varchar(20) not null,
    utente varchar(20) not null
)


CREATE TABLE Team (
    id_team smallint primary key,
    descrizione text,
    inizio date,
    fine date
)


CREATE TABLE Utente (
    id_utente smallint primary key,
    nome varchar(20) not null,
    cognome varchar(20) not null,
    indirizzo varchar(20) not null,
    username varchar(20) not null,
    --password (parola_ordine)
    parola_ordine varchar(20) not null,
    esperienza varchar(20) not null,
    stipendio real not null,
    attivo boolean,
    ultimo_accesso datetime
)


CREATE TABLE Permesso (
    id_permesso smallint primary key,
    denominazione varchar(100) not null,
    descrizione varchar(200)
)
