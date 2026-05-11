<?php
// ============================================================
// FICHIER : php/get_session.php
// ============================================================
session_start();
header('Content-Type: application/json');
if (!isset($_SESSION['user_id'])) {
    echo json_encode(['connecte' => false]);
    exit;
}
// Détermine le préfixe selon le rôle
$prefixe = '';
if ($_SESSION['user_role'] === 'professeur') {
    $prefixe = 'M. ';
} elseif ($_SESSION['user_role'] === 'admin') {
    $prefixe = 'Admin ';
}
// Nom en majuscules : "M. DUPONT"
$nomAffichage = $prefixe . strtoupper($_SESSION['user_nom']);
// Rôle avec majuscule : "Professeur"
$roleAffichage = ucfirst($_SESSION['user_role']);
// Initiale du prénom pour l'avatar : "J" pour "Jean"
$initiale = strtoupper(substr($_SESSION['user_prenom'], 0, 1));
echo json_encode([
    'connecte'  => true,
    'id'        => $_SESSION['user_id'],
    'nom'       => $_SESSION['user_nom'],
    'prenom'    => $_SESSION['user_prenom'],
    'role'      => $_SESSION['user_role'],
    'affichage' => $nomAffichage,   // "M. DUPONT"
    'roleTexte' => $roleAffichage,  // "Professeur"
    'initiale'  => $initiale        // "J"
]);
?>