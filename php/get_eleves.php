<?php
// ============================================================
// FICHIER : php/get_eleves.php
// Colonnes réelles de votre base :
//   eleve    : id_eleve, nom, prenom, matricule, id_classe
//   classe   : id_classe, nom
// ============================================================
session_start();
header('Content-Type: application/json');
require_once 'db_connect.php';
// Vérification du paramètre classe_id
if (!isset($_GET['classe_id']) || empty($_GET['classe_id'])) {
    http_response_code(400);
    echo json_encode(['erreur' => 'classe_id manquant']);
    exit;
}
// Récupération de l'ID de classe
$classe_id = $_GET['classe_id'];
// Debug : affiche ce qu'on reçoit
error_log('get_eleves.php - classe_id reçu : ' . $classe_id);
try {
    $stmt = $pdo->prepare("
        SELECT
            e.id_eleve  AS id,
            e.nom,
            e.prenom,
            e.matricule,
            c.nom       AS classe_nom
        FROM eleve e
        INNER JOIN classe c ON e.id_classe = c.id_classe
        WHERE e.id_classe = :classe_id
        ORDER BY e.nom ASC, e.prenom ASC
    ");
    $stmt->bindValue(':classe_id', $classe_id);
    $stmt->execute();
    $eleves = $stmt->fetchAll();
    // Debug : combien d'élèves trouvés
    error_log('Élèves trouvés : ' . count($eleves));
    echo json_encode($eleves);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'erreur'  => true,
        'message' => 'Erreur SQL : ' . $e->getMessage()
    ]);
}
?>