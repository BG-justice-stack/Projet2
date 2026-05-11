<?php
// ============================================================
// FICHIER : php/login.php
// RÔLE    : Reçoit email + mot de passe depuis auth.html
//           Vérifie les identifiants en base de données
//           Crée la SESSION si tout est correct
//           C'est ICI que $_SESSION['user_id'] est créé !
// ============================================================
session_start(); // OBLIGATOIRE en premier pour utiliser $_SESSION
header('Content-Type: application/json');
require_once 'db_connect.php';
// --- Lecture des données JSON envoyées par JavaScript ---
$donnees_brutes = file_get_contents('php://input');
$donnees        = json_decode($donnees_brutes, true);
if (!$donnees) {
    http_response_code(400);
    echo json_encode([
        'succes'  => false,
        'message' => 'Données invalides'
    ]);
    exit;
}
// Récupération email et mot de passe
$email    = trim($donnees['email']    ?? '');
$password = trim($donnees['password'] ?? '');
// Vérification que les champs ne sont pas vides
if (empty($email) || empty($password)) {
    echo json_encode([
        'succes'  => false,
        'message' => 'Email et mot de passe obligatoires'
    ]);
    exit;
}
try {
    // --- Recherche de l'enseignant par son email ---
    // On utilise LIMIT 1 pour optimiser (un seul résultat suffit)
    $stmt = $pdo->prepare("
        SELECT id, nom, prenom, email, mot_de_passe, role
        FROM enseignant
        WHERE email = :email
        LIMIT 1
    ");
    $stmt->execute([':email' => $email]);
    $enseignant = $stmt->fetch(); // Récupère l'enseignant trouvé
    // --- Vérification du mot de passe ---
    // password_verify() compare le mot de passe saisi avec
    // celui chiffré en base. Elle retourne true ou false.
    if ($enseignant && password_verify($password, $enseignant['mot_de_passe'])) {
        // ✅ CONNEXION RÉUSSIE — Création de la session
        // Régénère l'ID de session pour sécuriser
        // (évite les attaques de "session fixation")
        session_regenerate_id(true);
        // ============================================
        // SAUVEGARDE DES INFOS DANS LA SESSION
        // Ces variables seront disponibles sur
        // TOUTES les pages PHP tant que l'enseignant
        // est connecté
        // ============================================
        $_SESSION['user_id']     = $enseignant['id'];     // ID en base
        $_SESSION['user_nom']    = $enseignant['nom'];     // "Martin"
        $_SESSION['user_prenom'] = $enseignant['prenom'];  // "Pierre"
        $_SESSION['user_email']  = $enseignant['email'];   // "p.martin@ecole.com"
        $_SESSION['user_role']   = $enseignant['role'];    // "professeur" ou "admin"
        // Réponse de succès avec les infos à afficher côté JS
        echo json_encode([
            'succes'   => true,
            'message'  => 'Connexion réussie !',
            'redirect' => 'dashboard.html',
            'user'     => [
                'nom'    => $enseignant['nom'],
                'prenom' => $enseignant['prenom'],
                'role'   => $enseignant['role'],
            ]
        ]);
    } else {
        // ❌ Email ou mot de passe incorrect
        // On ne précise pas lequel pour des raisons de sécurité
        http_response_code(401);
        echo json_encode([
            'succes'  => false,
            'message' => 'Email ou mot de passe incorrect'
        ]);
    }
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'succes'  => false,
        'message' => 'Erreur serveur'
    ]);
}
?>