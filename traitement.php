<?php
// Inclusion du fichier de connexion
require_once 'connexion.php';

// Vérification si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Récupération et nettoyage basique des données
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $date_naiss = $_POST['date_de_naissance'];
    $sexe = $_POST['sexe'];
    $id_classe = $_POST['id_classe']; // Note : il faudra convertir ceci en id_classe si nécessaire
    $nom_parent = $_POST['nom_parent'];
    $num_parent = $_POST['numero_parent'];

    // Optionnel : Génération d'un matricule automatique ou récupération
    $matricule = "MAT-" . time(); 

    try {
        // Préparation de la requête SQL d'insertion
        // Assurez-vous que les noms des colonnes correspondent exactement à votre capture d'écran
        $sql = "INSERT INTO eleve (nom, prenom, date_de_naissance, sexe, matricule, nom_parent, numero_parent, id_classe) 
                VALUES (:nom, :prenom, :date_naiss, :sexe, :matricule, :nom_parent, :num_parent, :id_classe)";
        
        $stmt = $pdo->prepare($sql);

        // Liaison des valeurs
        $stmt->execute([
            ':nom' => $nom,
            ':prenom' => $prenom,
            ':date_naiss' => $date_naiss,
            ':sexe' => $sexe,
            ':matricule' => $matricule,
            ':nom_parent' => $nom_parent,
            ':num_parent' => $num_parent,
            ':id_classe' => $id_classe // Attention : votre BDD attend un INT pour id_classe
        ]);

        echo "L'élève a été enregistré avec succès !";
        
    } catch (PDOException $e) {
        echo "Erreur lors de l'insertion : " . $e->getMessage();
    }
} else {
    // Redirection si on tente d'accéder au fichier directement
    header("Location: formulaire.html");
    exit();
}
?>