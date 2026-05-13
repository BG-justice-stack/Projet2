<?php
// Affichage des erreurs pour le débogage
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'connexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Note : J'ai ajouté 'matricule' car il est présent sur votre photo de formulaire
    $matricule = $_POST['matricule']; 
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $password = $_POST['password']; 
    $confirm_password = $_POST['confirm_password'];

    if ($password !== $confirm_password) {
        die("Erreur : Les mots de passe ne sont pas identiques.");
    }

    // Hachage (Nécessite VARCHAR(255) dans la base de données)
    $password_hash = password_hash($password, PASSWORD_BCRYPT);

    // 4. Correction du nom de la table : 'enseignant' au singulier
    // Note : Votre table n'a pas de colonne 'matricule' d'après la photo, 
    // donc on ne l'insère pas pour l'instant pour éviter les erreurs.
    $sql = "INSERT INTO enseignant (matricule,nom, prenom, email, mot_de_passe) VALUES (?,?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    
    if ($stmt) {
        $stmt->bind_param("sssss",$matricule, $nom, $prenom, $email, $password_hash);
        
        if ($stmt->execute()) {
            echo "Inscription réussie ! <a href='connexion.html'>Connectez-vous ici</a>";
        } else {
            echo "Erreur SQL : " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Erreur de préparation : " . $conn->error;
    }
}

$conn->close();
?>