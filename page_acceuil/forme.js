/* toast simulation
const toast = document.getElementById("toastMsg");
function showToast(message) {
  toast.textContent = message || "✅ Action simulée (démo)";
  toast.classList.add("toast-show");
  setTimeout(() => {
    toast.classList.remove("toast-show");
  }, 2500);
}

Interactions: boutons majeurs pour démonstration fonctionnelle
const loginBtn = document.getElementById("loginBtn");
const signupBtn = document.getElementById("signupBtn");
const accessBtn = document.getElementById("accessPlatformBtn");
const createHeroBtn = document.getElementById("createAccountHeroBtn");
const demoBtn = document.getElementById("demoBtn");
const freeAccountBtn = document.getElementById("freeAccountBtn");

if (loginBtn)
  loginBtn.addEventListener("click", (e) => {
    e.preventDefault();
    showToast("🔐 Connexion : interface utilisateur (simulation)");
  });
if (signupBtn)
  signupBtn.addEventListener("click", (e) => {
    e.preventDefault();
    showToast("📝 Inscription : création de compte (démo)");
  });
if (accessBtn)
  accessBtn.addEventListener("click", (e) => {
    e.preventDefault();
    showToast("🚀 Accès plateforme : tableau de bord de gestion des absences");
  });
if (createHeroBtn)
  createHeroBtn.addEventListener("click", (e) => {
    e.preventDefault();
    showToast("✨ Créer un compte – Remplissez le formulaire d'inscription");
  });
if (demoBtn)
  demoBtn.addEventListener("click", (e) => {
    e.preventDefault();
    showToast("📅 Demande de démonstration – Un conseiller vous contactera");
  });
if (freeAccountBtn)
  freeAccountBtn.addEventListener("click", (e) => {
    e.preventDefault();
    showToast("🎉 Création compte gratuit – Testez GestAbsences");
  });

// ajout également pour les cartes rôles et autres liens non spécifiques (juste feedback)
const roleCards = document.querySelectorAll(".role-card");
roleCards.forEach((card) => {
  card.style.cursor = "pointer";
  card.addEventListener("click", () => {
    const title = card.querySelector("h3")?.innerText || "fonction";
    showToast(`📌 ${title} : module en construction (démo)`);
  });
});

// pour les liens footer et autres liens sans comportement par défaut
const allFakeLinks = document.querySelectorAll('a[href="#"]');
allFakeLinks.forEach((link) => {
  // éviter les doublons d'event déjà traité mais on ajoute un prevent par défaut simple
  if (
    link.id === "loginBtn" ||
    link.id === "signupBtn" ||
    link.id === "accessPlatformBtn" ||
    link.id === "createAccountHeroBtn" ||
    link.id === "demoBtn" ||
    link.id === "freeAccountBtn"
  )
    return;
  link.addEventListener("click", (e) => {
    e.preventDefault();
    let text = link.innerText.trim();
    if (text.length > 40) text = text.substring(0, 30);
    showToast(`ℹ️ ${text || "Lien"} (démo interactive)`);
  });
});

// statistiques dynamique (effet survol simple)
const statNumbers = document.querySelectorAll(".stat-item h4");
statNumbers.forEach((stat) => {
  stat.addEventListener("mouseenter", () => {
    stat.style.transform = "scale(1.02)";
    stat.style.transition = "0.2s";
  });
  stat.addEventListener("mouseleave", () => {
    stat.style.transform = "scale(1)";
  });
});
        // Fonction pour basculer entre afficher/masquer le mot de passe
        function togglePassword(inputId, icon) {
            const password = document.getElementById(inputId);
            
            if (password.type === 'password') {
                password.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                password.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        }

        // Fonctions pour basculer entre les formulaires
        function showRegisterForm() {
            document.getElementById('loginFormContainer').classList.add('hidden');
            document.getElementById('registerFormContainer').classList.remove('hidden');
        }

        function showLoginForm() {
            document.getElementById('registerFormContainer').classList.add('hidden');
            document.getElementById('loginFormContainer').classList.remove('hidden');
        }

        // Gestion de la soumission des formulaires
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Connexion réussie (simulation)');
            // Ici vous ajouteriez le code pour traiter la connexion
        });

        document.getElementById('registerForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Vérification que les mots de passe correspondent
            const password = document.getElementById('registerPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            
            if (password !== confirmPassword) {
                alert('Les mots de passe ne correspondent pas');
                return;
            }
            
            alert('Inscription réussie (simulation)');
            // Ici vous ajouteriez le code pour traiter l'inscription
            showLoginForm(); // Retour au formulaire de connexion après inscription
        });
    */
