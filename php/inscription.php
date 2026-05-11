<?php
// ============================================================
// FICHIER : php/inscription.php
// RÔLE    : Reçoit les données du formulaire inscription.html
//           Vérifie les données, chiffre le mot de passe
//           et enregistre l'enseignant dans la base
// ============================================================
session_start(); // Démarre la session (pour rediriger après inscription)
header('Content-Type: application/json'); // Réponse en JSON pour JavaScript
require_once 'db_connect.php'; // Connexion à la base de données
// --- Lecture des données envoyées par le formulaire ---
// Les données arrivent en POST depuis le JavaScript (fetch)
$donnees_brutes = file_get_contents('php://input');
$donnees        = json_decode($donnees_brutes, true);
// Si les données ne sont pas lisibles
if (!$donnees) {
    http_response_code(400);
    echo json_encode([
        'succes'  => false,
        'message' => 'Données reçues invalides'
    ]);
    exit;
}
// --- Récupération et nettoyage de chaque champ ---
// trim() supprime les espaces inutiles en début/fin
$nom      = trim($donnees['nom']      ?? '');
$prenom   = trim($donnees['prenom']   ?? '');
$email    = trim($donnees['email']    ?? '');
$password = trim($donnees['password'] ?? '');
// --- Validation : vérifier que rien n'est vide ---
if (empty($nom) || empty($prenom) || empty($email) || empty($password)) {
    http_response_code(400);
    echo json_encode([
        'succes'  => false,
        'message' => 'Tous les champs sont obligatoires'
    ]);
    exit;
}
// --- Validation du format email ---
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    http_response_code(400);
    echo json_encode([
        'succes'  => false,
        'message' => 'Adresse email invalide'
    ]);
    exit;
}
// --- Validation longueur du mot de passe (min 6 caractères) ---
if (strlen($password) < 6) {
    http_response_code(400);
    echo json_encode([
        'succes'  => false,
        'message' => 'Le mot de passe doit contenir au moins 6 caractères'
    ]);
    exit;
}
try {
    // --- Vérification : cet email existe-t-il déjà ? ---
    $stmt_verif = $pdo->prepare("
        SELECT id FROM enseignant WHERE email = :email LIMIT 1
    ");
    $stmt_verif->execute([':email' => $email]);
    if ($stmt_verif->fetch()) {
        // L'email est déjà utilisé
        http_response_code(409); // Code 409 = Conflit
        echo json_encode([
            'succes'  => false,
            'message' => 'Cet email est déjà utilisé par un autre compte'
        ]);
        exit;
    }
    // --- Chiffrement du mot de passe ---
    // password_hash() chiffre de façon irréversible
    // On ne stocke JAMAIS le mot de passe en clair dans la base !
    // Exemple : "monpass123" devient "$2y$10$xK8J2..."
    $mot_de_passe_chiffre = password_hash($password, PASSWORD_BCRYPT);
    // --- Insertion de l'enseignant dans la base ---
    $stmt_insert = $pdo->prepare("
        INSERT INTO enseignant (nom, prenom, email, mot_de_passe, role)
        VALUES (:nom, :prenom, :email, :mot_de_passe, 'professeur')
    ");
    $stmt_insert->execute([
        ':nom'          => $nom,
        ':prenom'       => $prenom,
        ':email'        => $email,
        ':mot_de_passe' => $mot_de_passe_chiffre,
    ]);
    // Récupère l'ID du nouvel enseignant
    $nouvel_id = $pdo->lastInsertId();
    // --- Création de la session immédiatement après inscription ---
    // L'enseignant est automatiquement connecté après inscription
    $_SESSION['user_id']     = $nouvel_id;
    $_SESSION['user_nom']    = $nom;
    $_SESSION['user_prenom'] = $prenom;
    $_SESSION['user_email']  = $email;
    $_SESSION['user_role']   = 'professeur';
    // Succès !
    echo json_encode([
        'succes'  => true,
        'message' => 'Compte créé avec succès ! Bienvenue ' . $prenom . ' ' . $nom,
        'redirect'=> 'dashboard.html' // Page vers laquelle rediriger
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'succes'  => false,
        'message' => 'Erreur serveur : ' . $e->getMessage()
    ]);
}
?>