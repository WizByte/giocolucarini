<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    </head>
    <body>
    <form action="mywebsite.com" method="POST">
        <input type="button" value="Aggiungi"/>
    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
        <!--<style>
           table {
            border-collapse: collapse;
            width: 50%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>-->
    </head>
    <body>
    <table id="table">
    <thead>
        <tr>
            <th>Professore</th>
            <th>Corsi</th>
            <th>Iscrizioni</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Riga 1, C1</td>
            <td>Riga 1, C2</td>
            <td>Riga 1, C3</td>
        </tr>
    </tbody>
</table>

<button onclick="aggiungiRiga()">Aggiungi Riga</button>

<script>
    let contatoreRighe = 2;

    function aggiungiRiga() {
        const tabella = document.getElementById("miaTabella").getElementsByTagName('tbody')[0];
        const nuovaRiga = tabella.insertRow();

        for (let i = 1; i <= 3; i++) {
            const nuovaCella = nuovaRiga.insertCell();
            nuovaCella.innerHTML = `Riga ${contatoreRighe}, C${i}`;
        }

        contatoreRighe++;
    }
</script>
    </body>
</html>

<?php
$host = "localhost";
$dbname = "corsi";
$username = "root";
$password = "";
try {
 $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
 $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 echo "Connessione riuscita!";
} catch (PDOException $e) {
 die("Errore di connessione: " . $e->getMessage());
}

$sql = "INSERT INTO Docenti(nome, cognome, email) VALUES (:nome, :cognome, :email)";
$stmt = $pdo->prepare($sql);
$stmt->execute([":nome" => "Giovanni", ":cognome" => "Giardinieri", ":email" => "giogiardinieri@google.com"]);
?>