<?php
// ============================================================
// FICHIER : php/db_connect.php
// RÔLE    : Établit la connexion à la base de données MySQL
//           Ce fichier est inclus dans tous les autres PHP
// ============================================================
// --- Paramètres de connexion ---
define('DB_HOST', 'localhost');       // Adresse du serveur MySQL (WAMP = localhost)
define('DB_USER', 'root');            // Utilisateur MySQL (WAMP par défaut = root)
define('DB_PASS', '');                // Mot de passe (WAMP par défaut = vide)
define('DB_NAME', 'gestion_absences');// Nom de votre base de données

// --- Création de la connexion PDO (plus sécurisé que mysqli) ---
try {
    $pdo = new PDO(
        "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4",
        DB_USER,
        DB_PASS,
        [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, // Affiche les erreurs SQL
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,       // Résultats en tableau associatif
            PDO::ATTR_EMULATE_PREPARES   => false,                  // Requêtes préparées réelles
        ]
    );
} catch (PDOException $e) {
    // En cas d'échec, on retourne une erreur JSON
    http_response_code(500);
    echo json_encode(['erreur' => 'Connexion DB échouée : ' . $e->getMessage()]);
    exit;
}
?>