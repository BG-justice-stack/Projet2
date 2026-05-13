<?php
//connexion.php
$host = "localhost";
$user = "root";
$password = "";
$dbname = "gestion_absences";

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error){
    die("connexion échouée: " . $conn->connect_error);
}
?>