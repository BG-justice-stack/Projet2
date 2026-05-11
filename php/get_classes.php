<?php
session_start();
header('Content-Type: application/json');
require_once 'db_connect.php';
try {
    $stmt = $pdo->prepare("
        SELECT id_classe AS id, nom
        FROM classe
        ORDER BY nom ASC
    ");
    $stmt->execute();
    $classes = $stmt->fetchAll();
    echo json_encode($classes);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'erreur'  => true,
        'message' => 'Erreur SQL : ' . $e->getMessage()
    ]);
}
?>