<?php
session_start();
header('Content-Type: application/json');
require_once 'db_connect.php';
try {
    $stmt = $pdo->prepare("
        SELECT id_matiere AS id, nom
        FROM matiere
        ORDER BY nom ASC
    ");
    $stmt->execute();
    $matieres = $stmt->fetchAll();
    echo json_encode($matieres);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'erreur'  => true,
        'message' => 'Erreur SQL : ' . $e->getMessage()
    ]);
}
?>