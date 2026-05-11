4. PHP — Déconnexion (logout.php)
<?php
// ============================================================
// FICHIER : php/logout.php
// RÔLE    : Détruit complètement la session
//           Appelé quand l'enseignant clique "Déconnexion"
// ============================================================
session_start(); // Nécessaire pour accéder à la session à détruire
// Étape 1 : Vider toutes les variables de session
$_SESSION = [];
// Étape 2 : Supprimer le cookie de session dans le navigateur
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(), // Nom du cookie (PHPSESSID par défaut)
        '',             // Valeur vide
        time() - 42000, // Date d'expiration dans le passé = suppression
        $params["path"],
        $params["domain"],
        $params["secure"],
        $params["httponly"]
    );
}
// Étape 3 : Détruire la session côté serveur
session_destroy();
// Redirection vers la page de connexion
header('Location: ../auth.html');
exit;
?>