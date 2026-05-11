// FICHIER : app.js (à la RACINE de Projet2/)
// RÔLE    : Gère la connexion ET l'inscription
//           Compatible avec auth.html et inscription.html
// ============================================================
// Dès que la page HTML est entièrement chargée
document.addEventListener('DOMContentLoaded', function () {
    // On détecte sur quelle page on se trouve
    // en cherchant l'URL actuelle
    const url = window.location.href;
    // -------------------------------------------------------
    // CAS 1 : On est sur auth.html (connexion)
    // -------------------------------------------------------
    if (url.includes('auth.html')) {
        console.log('Page détectée : auth.html');
        gererConnexion();
    }
    // -------------------------------------------------------
    // CAS 2 : On est sur inscription.html
    // -------------------------------------------------------
    if (url.includes('inscription.html')) {
        console.log('Page détectée : inscription.html');
        gererInscription();
    }
    // -------------------------------------------------------
    // CAS 3 : Sur toutes les autres pages
    //         on affiche le nom de l'enseignant connecté
    // -------------------------------------------------------
    if (!url.includes('auth.html') && !url.includes('inscription.html')) {
        afficherNomEnseignant();
    }
});
// ==============================================================
// FONCTION : gererConnexion()
// Gère la soumission du formulaire de auth.html
// ==============================================================
function gererConnexion() {
    // Récupère le formulaire par son id
    const form = document.getElementById('loginForm');
    // Sécurité : si le formulaire n'existe pas, on arrête
    if (!form) {
        console.error('Formulaire loginForm introuvable sur auth.html');
        return;
    }
    // Écoute le clic sur "Se connecter"
    form.addEventListener('submit', async function (e) {
        // Empêche le rechargement de la page
        e.preventDefault();
        // Lecture des champs
        const email    = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value.trim();
        // Vérification que les champs ne sont pas vides
        if (!email || !password) {
            afficherMessage('Veuillez remplir tous les champs.', 'erreur');
            return;
        }
        // Animation du bouton pendant l'envoi
        const btn = form.querySelector('button[type="submit"]');
        btn.textContent = 'Connexion en cours...';
        btn.disabled    = true;
        // Objet avec les données à envoyer
        const donnees = {
            email:    email,
            password: password
        };
        // Affichage debug dans F12 → Console
        console.log('Envoi connexion :', donnees);
        try {
            // Envoi POST vers login.php
            const reponse = await fetch('php/login.php', {
                method:  'POST',
                headers: { 'Content-Type': 'application/json' },
                body:    JSON.stringify(donnees)
            });
            // Lecture de la réponse en texte brut d'abord
            const texte = await reponse.text();
            console.log('Réponse login.php :', texte);
            // Conversion du texte JSON en objet JavaScript
            const resultat = JSON.parse(texte);
            if (resultat.succes) {
                // ✅ Connexion réussie
                afficherMessage('Connexion réussie ! Redirection...', 'succes');
                setTimeout(() => {
                    window.location.href = resultat.redirect || 'dashboard.html';
                }, 1000);
            } else {
                // ❌ Mauvais email ou mot de passe
                afficherMessage(resultat.message, 'erreur');
                btn.textContent = 'Se connecter';
                btn.disabled    = false;
            }
        } catch (err) {
            console.error('Erreur connexion :', err);
            afficherMessage('Erreur serveur. Vérifiez F12 → Console.', 'erreur');
            btn.textContent = 'Se connecter';
            btn.disabled    = false;
        }
    });
}
// ==============================================================
// FONCTION : gererInscription()
// Gère la soumission du formulaire de inscription.html
// ==============================================================
function gererInscription() {
    const form = document.getElementById('loginForm');
    if (!form) {
        console.error('Formulaire loginForm introuvable sur inscription.html');
        return;
    }
    form.addEventListener('submit', async function (e) {
        e.preventDefault();
        // -------------------------------------------------------
        // Lecture des champs
        // Ces IDs correspondent EXACTEMENT à votre inscription.html
        // -------------------------------------------------------
        const nom      = document.getElementById('loginLastName').value.trim();
        const prenom   = document.getElementById('loginFirstName').value.trim();
        const email    = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value.trim();
        // Vérification que tout est rempli
        if (!nom || !prenom || !email || !password) {
            afficherMessage('Veuillez remplir tous les champs.', 'erreur');
            return;
        }
        // Vérification longueur mot de passe
        if (password.length < 6) {
            afficherMessage(
                'Le mot de passe doit contenir au moins 6 caractères.',
                'erreur'
            );
            return;
        }
        // Vérification format email basique
        if (!email.includes('@') || !email.includes('.')) {
            afficherMessage('Adresse email invalide.', 'erreur');
            return;
        }
        // Animation du bouton
        const btn = form.querySelector('button[type="submit"]');
        btn.textContent = 'Inscription en cours...';
        btn.disabled    = true;
        // Objet à envoyer à PHP
        const donnees = {
            nom:      nom,
            prenom:   prenom,
            email:    email,
            password: password
        };
        console.log('Envoi inscription :', donnees);
        try {
            // Envoi POST vers inscription.php
            const reponse = await fetch('php/inscription.php', {
                method:  'POST',
                headers: { 'Content-Type': 'application/json' },
                body:    JSON.stringify(donnees)
            });
            // Lecture texte brut
            const texte = await reponse.text();
            console.log('Réponse inscription.php :', texte);
            // Conversion JSON
            const resultat = JSON.parse(texte);
            if (resultat.succes) {
                // ✅ Inscription réussie
                afficherMessage(resultat.message, 'succes');
                setTimeout(() => {
                    window.location.href = resultat.redirect || 'dashboard.html';
                }, 1500);
            } else {
                // ❌ Erreur (email déjà utilisé, etc.)
                afficherMessage(resultat.message, 'erreur');
                btn.textContent = "S'inscrire";
                btn.disabled    = false;
            }
        } catch (err) {
            console.error('Erreur inscription :', err);
            afficherMessage('Erreur serveur. Vérifiez F12 → Console.', 'erreur');
            btn.textContent = "S'inscrire";
            btn.disabled    = false;
        }
    });
}
// ==============================================================
// FONCTION : afficherNomEnseignant()
// Appelle get_session.php et affiche le nom en bas de sidebar
// Fonctionne sur dashboard, appel_par_heure, etc.
// ==============================================================
// FONCTION : afficherNomEnseignant()
// Récupère la session PHP et met à jour la sidebar
// ==============================================================
async function afficherNomEnseignant() {
    try {
        const reponse = await fetch('php/get_session.php');
        const session = await reponse.json();
        console.log('Session :', session); // Vérification F12
        if (session.connecte) {
            // --- Mise à jour du NOM ---
            // Cible le div avec id="nom-enseignant"
            const elemNom = document.getElementById('nom-enseignant');
            if (elemNom) {
                elemNom.textContent = session.affichage; // "M. DUPONT"
            } else {
                console.warn(' id="nom-enseignant" introuvable !');
            }
            // --- Mise à jour du RÔLE ---
            // Cible le div avec id="role-enseignant"
            const elemRole = document.getElementById('role-enseignant');
            if (elemRole) {
                elemRole.textContent = session.roleTexte; // "Professeur"
            } else {
                console.warn(' id="role-enseignant" introuvable !');
            }
            // --- Mise à jour de l'AVATAR (initiale) ---
            // Cible le div avec id="user-avatar"
            const elemAvatar = document.getElementById('user-avatar');
            if (elemAvatar) {
                elemAvatar.textContent = session.initiale; // "J"
            }
        } else {
            // Non connecté → redirection login
            console.warn('Non connecté, redirection...');
            window.location.href = 'auth.html';
        }
    } catch (err) {
        console.error('Erreur get_session :', err);
    }
}
// ==============================================================
// INITIALISATION AU CHARGEMENT DE LA PAGE
// ==============================================================
document.addEventListener('DOMContentLoaded', function () {
    const url = window.location.href;
    if (url.includes('auth.html')) {
        gererConnexion();
    } else if (url.includes('inscription.html')) {
        gererInscription();
    } else {
        // Toutes les autres pages → affiche le nom
        afficherNomEnseignant();
    }
});
// ==============================================================
// FONCTION : afficherMessage()
// Affiche un message vert (succès) ou rouge (erreur)
// sous le formulaire
// ==============================================================
function afficherMessage(texte, type) {
    // Cherche l'élément div avec id="msg-retour"
    // (doit exister dans votre HTML)
    let div = document.getElementById('msg-retour');
    // Si l'élément n'existe pas, on le crée
    if (!div) {
        div = document.createElement('div');
        div.id = 'msg-retour';
        // Insère avant le formulaire
        const form = document.getElementById('loginForm');
        if (form) form.parentNode.insertBefore(div, form);
    }
    // Contenu et style selon le type
    div.textContent    = texte;
    div.style.display  = 'block';
    div.style.padding  = '12px 16px';
    div.style.borderRadius = '6px';
    div.style.marginBottom = '14px';
    div.style.fontWeight   = '600';
    div.style.fontSize     = '0.9rem';
    div.style.textAlign    = 'center';
    if (type === 'succes') {
        div.style.backgroundColor = '#dcfce7'; // Vert clair
        div.style.color           = '#166534'; // Vert foncé
        div.style.border          = '1px solid #86efac';
    } else {
        div.style.backgroundColor = '#fee2e2'; // Rouge clair
        div.style.color           = '#991b1b'; // Rouge foncé
        div.style.border          = '1px solid #fca5a5';
    }
    // Disparaît automatiquement après 5 secondes
    setTimeout(() => { div.style.display = 'none'; }, 5000);
}