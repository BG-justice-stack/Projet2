# Projet2 :
projet scolaire de gestion d'absence et présence  des élèves dans un établissement scolaire
 Description
PSAbsences est une application web de gestion scolaire
développée dans le cadre d'un projet académique.
Elle permet aux enseignants de gérer les présences et
absences des élèves de manière simple et efficace.
---
 # Fonctionnalités
-  Authentification sécurisée des enseignants
-  Tableau de bord avec statistiques en temps réel
-  Appel par heure (sélection classe, matière, période)
-  Gestion et suivi des absences par période
-  Requêtes et rapports d'absences
-  Messagerie aux parents
-  Ajout et gestion des élèves
-  Administration de la plateforme
---
# Technologies Utilisées
| Technologie | Rôle |
|---|---|
| HTML5 | Structure des pages |
| CSS3 | Mise en forme et interface |
| JavaScript | Interactions et appels API |
| PHP 8 | Logique serveur et sessions |
| MySQL | Base de données |
| WAMP | Serveur local de développement |
---
# Structure du Projet
PSAbsences/
│
├── index.html
├── auth.html              ← Connexion
├── inscription.html       ← Inscription enseignant
├── dashboard.html         ← Tableau de bord
├── appel_par_heure.html   ← Faire l'appel
├── absences.html          ← Gestion absences
├── rapports.html          ← Rapports
├── messages.html          ← Messagerie parents
│
├── style.css              ← Style global
│
├── CSS/
│   └── appel.css          ← Style page appel
│
├── js/
│   └── appel.js           ← Logique page appel
│
├── app.js                 ← Logique globale
│
└── php/
├── db_connect.php     ← Connexion base de données
├── login.php          ← Authentification
├── inscription.php    ← Enregistrement enseignant
├── logout.php         ← Déconnexion
├── get_session.php    ← Gestion session
├── get_classes.php    ← Récupération classes
├── get_matieres.php   ← Récupération matières
├── get_eleves.php     ← Récupération élèves
└── valider_appel.php  ← Enregistrement appel
---
## ⚙️ Installation
# Prérequis
- WAMP Server (Windows) ou LAMP (Linux)
- PHP 8.0 ou supérieur
- MySQL 5.7 ou supérieur
- Navigateur moderne (Chrome, Firefox, Edge)
- 
# Étapes
1. Cloner le projet**
```bash
git clone https://github.com/votre-nom/PSAbsences.git
2. Placer le projet dans WAMP
Copier le dossier dans : C:/wamp64/www/
3. Créer la base de données
- Ouvrir phpMyAdmin
- Créer une base : gestion_absences
- Importer le fichier : database/gestion_absences.sql
4. Configurer la connexion
Ouvrir php/db_connect.php et modifier si nécessaire :
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'gestion_absences');
5. Lancer l'application
http://localhost/PSAbsences/auth.html

# Équipe de Développement
Rôle
Responsabilité
Chef de projet
Architecture, coordination
Développeur Frontend
HTML, CSS, JavaScript
Développeur Backend
PHP, MySQL
Testeur

 État du Projet
[x] Authentification et inscription
[ ] Tableau de bord
[ ] Appel par heure
[ ] Gestion des absences
[ ] Messagerie parents (en cours)
[ ] Export PDF des rapports
[ ] Application mobile

# Contact
Pour toute question ou contribution,
ouvrez une Issue sur GitHub.
