<?php
// ============================================================
// FICHIER : php/valider_appel.php
// ============================================================
session_start();
header('Content-Type: application/json');
require_once 'db_connect.php';
$donnees_brutes = file_get_contents('php://input');
$donnees        = json_decode($donnees_brutes, true);
if (!$donnees) {
    echo json_encode(['succes' => false, 'erreur' => 'Données invalides']);
    exit;
}
$enseignant_id = $_SESSION['user_id']          ?? 1;
$classe_id     = $donnees['classe_id']         ?? 0;
$matiere_id    = $donnees['matiere_id']        ?? 0;
$date_appel    = $donnees['date_appel']        ?? '';
$heure_debut   = $donnees['heure_debut']       ?? '';
$heure_fin     = $donnees['heure_fin']         ?? '';
$presences     = $donnees['presences']         ?? [];
if (!$classe_id || !$matiere_id || !$date_appel) {
    echo json_encode([
        'succes' => false,
        'erreur' => 'Informations incomplètes'
    ]);
    exit;
}
try {
    $pdo->beginTransaction();
    // Insertion dans la table appel
    $stmt_appel = $pdo->prepare("
        INSERT INTO appel
            (id_enseignant, id_classe, id_matiere,
             date_appel, heure_debut, heure_fin)
        VALUES
            (:enseignant_id, :classe_id, :matiere_id,
             :date_appel, :heure_debut, :heure_fin)
    ");
    $stmt_appel->execute([
        ':enseignant_id' => $enseignant_id,
        ':classe_id'     => $classe_id,
        ':matiere_id'    => $matiere_id,
        ':date_appel'    => $date_appel,
        ':heure_debut'   => $heure_debut,
        ':heure_fin'     => $heure_fin,
    ]);
    $appel_id    = $pdo->lastInsertId();
    $nb_presents = 0;
    $nb_absents  = 0;
    // Insertion des présences
    $stmt_abs = $pdo->prepare("
        INSERT INTO absense (id_appel, id_eleve, statut)
        VALUES (:appel_id, :eleve_id, :statut)
    ");
    foreach ($presences as $eleve_id => $statut) {
        $statut_clean = ($statut === 'present') ? 'present' : 'absent';
        $stmt_abs->execute([
            ':appel_id' => $appel_id,
            ':eleve_id' => (int)$eleve_id,
            ':statut'   => $statut_clean,
        ]);
        $statut_clean === 'present' ? $nb_presents++ : $nb_absents++;
    }
    $pdo->commit();
    echo json_encode([
        'succes'      => true,
        'message'     => 'Appel enregistré !',
        'nb_presents' => $nb_presents,
        'nb_absents'  => $nb_absents,
    ]);
} catch (PDOException $e) {
    $pdo->rollBack();
    echo json_encode([
        'succes' => false,
        'erreur' => $e->getMessage()
    ]);
}
?>