<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Absences - Gestion Scolaire</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="sidebar">
        <div class="sidebar-header"><i class="fas fa-school"></i>  PSAbsences</div>
        <div class="nav-links">
            <a href="dashboard.html" class="nav-item"><i class="fas fa-th-large"></i> Tableau de bord</a>
             <a href="appel_par_heure.html" class="nav-item ">
            <i class="fas fa-clipboard-check"></i>
            Appel par heure
        </a>
            <a href="absences.html" class="nav-item"><i class="fas fa-user-slash"></i> Absences</a>
            <a href="rapports.html" class="nav-item"><i class="fas fa-file-alt"></i> Requêtes & Rapports</a>
            <a href="messages.html" class="nav-item"><i class="fas fa-envelope"></i> Messages aux parents</a>
            <a href="ajouter.php" class="nav-item active"><i class="fas fa-plus"></i> Ajouter un eleve</a>
            <a href="#" class="nav-item"><i class="fas fa-cog"></i> Administration</a>
        </div>
        <div class="sidebar-footer">
            <div class="user-profile">
                <div class="user-avatar"></div>
                <div><div style="font-weight: bold; font-size: 0.9rem;">M. Martin</div><div style="font-size: 0.75rem; color: #94a3b8;">Professeur</div></div>
            </div>
            <a href="auth.html" class="nav-item" style="padding: 0; color: #ef4444;"><i class="fas fa-sign-out-alt"></i> Déconnexion</a>
        </div>
    </div>
<div class="main-content">

    <!-- HEADER -->
    <div class="header">
        <div class="header-title">
            <h1>Ajouter un élève</h1>
        </div>
        <div class="header-right">
            <div>
                <div style="font-weight: bold;">Admin École</div>
                <div style="font-size: 0.8rem;">Administrateur</div>
            </div>
            <div class="user-avatar"></div>
        </div>
    </div>

    <!-- FORMULAIRE -->
    <div class="form-zone">
        <div class="form-card">
                <h2>Enregistrer un élève</h2><br>          
                <form id="loginForm" action = "traitement.php" method = "POST">
                    <div class="form-group">
                        <label>Nom</label>
                        <input type="text" id="loginName" name="nom" required>
                    </div>
                    <div class="form-group">
                        <label>Prenom</label>
                        <input type="text" id="loginFirstName" name="prenom" required>
                    </div>
                    <div class="form-group">
                        <label>date de naissance</label>
                        <input type="date" id="loginBirthDate" name="date_de_naissance" required>
                    </div>
                    <div class="form-group">
                        <label>sexe</label>
                        <input type="text" id="loginGender" name="sexe" required>
                    </div>
                    <div class="form-group">
                        <label>classe</label>
                        <select id="loginClass" name="id_classe" required>
                            <option value=""> Choisir une  classe</option>
                            <?php
                            require_once 'connexion.php';
                                $result = $pdo->query("SELECT  id_classe, nom FROM classe");
                                while ($row = $result->fetch(PDO::FETCH_ASSOC)){
                                    echo "<option value='{$row['id_classe']}'>{$row['nom']}</option>";
                                }
                                ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>nom_du_parent</label>
                        <input type="text" id="loginParentName" name="nom_parent" required>
                    </div>
                    <div class="form-group">
                        <label>numero_du_parent</label>
                        <input type="text" id="loginParentPhone" name="numero_parent" required>
                    </div>
                    <button type="submit" class="btn-primary">Ajouter</button>
                </form>
            </div>
            </div>
        </div>
</div> 
</div>
</body>
</html>