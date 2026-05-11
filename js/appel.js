// FICHIER : js/appel.js
// CORRECTION des chemins et gestion d'erreurs améliorée
// ============================================================
const etatAppel = {
    eleves:    [],
    presences: {},
    classeId:  null,
    matiereId: null,
};
document.addEventListener('DOMContentLoaded', function () {
    afficherDateJour();
    chargerClasses();
    chargerMatieres();
    // Pré-remplit la date avec aujourd'hui
    const inputDate = document.getElementById('input-date');
    if (inputDate) {
        inputDate.value = obtenirDateAujourdhui();
    }
});
function afficherDateJour() {
    const options = {
        weekday: 'long',
        year:    'numeric',
        month:   'long',
        day:     'numeric'
    };
    const date = new Date().toLocaleDateString('fr-FR', options);
    const elem = document.getElementById('date-affichage');
    if (elem) {
        elem.textContent = "Aujourd'hui - " +
            date.charAt(0).toUpperCase() + date.slice(1);
    }
}
function obtenirDateAujourdhui() {
    const d    = new Date();
    const annee = d.getFullYear();
    const mois  = String(d.getMonth() + 1).padStart(2, '0');
    const jour  = String(d.getDate()).padStart(2, '0');
    return `${annee}-${mois}-${jour}`;
}
// ============================================================
// Charger les classes
// ============================================================
async function chargerEleves() {
    const classeId   = document.getElementById('select-classe').value;
    const matiereId  = document.getElementById('select-matiere').value;
    const heureDebut = document.getElementById('input-heure-debut').value;
    const heureFin   = document.getElementById('input-heure-fin').value;
    // Classe obligatoire
    if (!classeId) {
        alert('Veuillez sélectionner une classe.');
        return;
    }
    // Matière obligatoire
    if (!matiereId) {
        alert('Veuillez sélectionner une matière.');
        return;
    }
    // Date : on prend aujourd'hui si vide
    let dateFinale = document.getElementById('input-date').value;
    if (!dateFinale) {
        const d     = new Date();
        const annee = d.getFullYear();
        const mois  = String(d.getMonth() + 1).padStart(2, '0');
        const jour  = String(d.getDate()).padStart(2, '0');
        dateFinale  = `${annee}-${mois}-${jour}`;
        document.getElementById('input-date').value = dateFinale;
    }
    // Réinitialisation
    etatAppel.classeId  = classeId;
    etatAppel.matiereId = matiereId;
    etatAppel.presences = {};
    // Animation bouton
    const btn = document.getElementById('btn-charger');
    if (btn) { btn.textContent = 'Chargement...'; btn.disabled = true; }
    try {
        const url     = `php/get_eleves.php?classe_id=${classeId}`;
        console.log('Appel URL :', url);
        const reponse = await fetch(url);
        const texte   = await reponse.text();
        console.log('Réponse PHP :', texte);
        const eleves  = JSON.parse(texte);
        if (!Array.isArray(eleves) || eleves.length === 0) {
            alert('Aucun élève dans cette classe.');
            return;
        }
        // Sauvegarde et affichage
        etatAppel.eleves = eleves;
        remplirTableauEleves(eleves);
        mettreAJourResume(
            classeId, matiereId, dateFinale, heureDebut, heureFin
        );
        // Afficher la section appel
        const section = document.getElementById('section-appel');
        if (section) {
            section.style.display = 'block';
            section.scrollIntoView({ behavior: 'smooth' });
        } else {
            console.error('❌ section-appel introuvable dans le HTML !');
        }
    } catch (err) {
        console.error('Erreur :', err);
        alert('Erreur lors du chargement des élèves.');
    } finally {
        if (btn) { btn.textContent = 'Voir les élèves'; btn.disabled = false; }
    }
}
// ============================================================
// Remplir le tableau des élèves
// ============================================================
function remplirTableauEleves(eleves) {
    const corps = document.getElementById('corps-tableau');
    if (!corps) return;
    corps.innerHTML = '';
    eleves.forEach(function (eleve, index) {
        etatAppel.presences[eleve.id] = 'present';
        const ligne = document.createElement('tr');
        ligne.id        = `ligne-${eleve.id}`;
        ligne.className = 'ligne-present';
        ligne.innerHTML = `
            <td>${index + 1}</td>
            <td>${eleve.matricule || 'N/A'}</td>
            <td><strong>${eleve.nom}</strong></td>
            <td>${eleve.prenom}</td>
            <td>
                <span id="badge-${eleve.id}" class="badge badge-present">
                    Présent
                </span>
            </td>
            <td style="text-align:center;">
                <input type="radio"
                       name="statut-${eleve.id}"
                       value="present" checked
                       onchange="changerStatut(${eleve.id}, 'present')">
            </td>
            <td style="text-align:center;">
                <input type="radio"
                       name="statut-${eleve.id}"
                       value="absent"
                       onchange="changerStatut(${eleve.id}, 'absent')">
            </td>
        `;
        corps.appendChild(ligne);
    });
    mettreAJourCompteur();
}
function changerStatut(eleveId, statut) {
    etatAppel.presences[eleveId] = statut;
    const ligne = document.getElementById(`ligne-${eleveId}`);
    const badge = document.getElementById(`badge-${eleveId}`);
    if (statut === 'present') {
        ligne.className  = 'ligne-present';
        badge.className  = 'badge badge-present';
        badge.textContent = 'Présent';
    } else {
        ligne.className  = 'ligne-absent';
        badge.className  = 'badge badge-absent';
        badge.textContent = 'Absent';
    }
    mettreAJourCompteur();
}
function marquerTous(statut) {
    etatAppel.eleves.forEach(function (eleve) {
        etatAppel.presences[eleve.id] = statut;
        const radio = document.querySelector(
            `input[name="statut-${eleve.id}"][value="${statut}"]`
        );
        if (radio) radio.checked = true;
        changerStatut(eleve.id, statut);
    });
}
function mettreAJourCompteur() {
    let presents = 0, absents = 0;
    Object.values(etatAppel.presences).forEach(function (s) {
        s === 'present' ? presents++ : absents++;
    });
    const nbP = document.getElementById('nb-presents');
    const nbA = document.getElementById('nb-absents');
    if (nbP) nbP.textContent = presents;
    if (nbA) nbA.textContent = absents;
}
function mettreAJourResume(classeId, matiereId, date, debut, fin) {
    const sc = document.getElementById('select-classe');
    const sm = document.getElementById('select-matiere');
    const cn = sc.options[sc.selectedIndex].text;
    const mn = sm.options[sm.selectedIndex].text;
    const [a, m, j] = date.split('-');
    const elem = document.getElementById('resume-cours');
    if (elem) {
        elem.textContent = `${cn} — ${mn} — ${j}/${m}/${a} — ${debut} à ${fin}`;
    }
}
async function validerAppel() {
    if (etatAppel.eleves.length === 0) {
        afficherErreur('Aucun élève à enregistrer.');
        return;
    }
    const donnees = {
        classe_id:   etatAppel.classeId,
        matiere_id:  etatAppel.matiereId,
        date_appel:  document.getElementById('input-date').value,
        heure_debut: document.getElementById('input-heure-debut').value,
        heure_fin:   document.getElementById('input-heure-fin').value,
        presences:   etatAppel.presences,
    };
    const btn = document.getElementById('btn-valider');
    btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Enregistrement...';
    btn.disabled  = true;
    masquerMessages();
    try {
        const reponse  = await fetch('php/valider_appel.php', {
            method:  'POST',
            headers: { 'Content-Type': 'application/json' },
            body:    JSON.stringify(donnees)
        });
        const resultat = await reponse.json();
        if (resultat.succes) {
            afficherSucces(
                `✅ Appel validé ! ${resultat.nb_presents} présents, ` +
                `${resultat.nb_absents} absents.`
            );
            const radios = document.querySelectorAll(
                '#corps-tableau input[type="radio"]'
            );
            radios.forEach(r => r.disabled = true);
            btn.innerHTML            = '<i class="fas fa-check"></i> Validé';
            btn.style.backgroundColor = '#9E9E9E';
        } else {
            afficherErreur(resultat.erreur || 'Erreur enregistrement.');
            btn.innerHTML = '<i class="fas fa-paper-plane"></i> Valider l\'appel';
            btn.disabled  = false;
        }
    } catch (err) {
        console.error('Erreur valider appel :', err);
        afficherErreur('Erreur réseau.');
        btn.innerHTML = '<i class="fas fa-paper-plane"></i> Valider l\'appel';
        btn.disabled  = false;
    }
}
function afficherSucces(msg) {
    const e = document.getElementById('message-confirmation');
    const t = document.getElementById('texte-confirmation');
    if (e && t) { t.textContent = msg; e.style.display = 'flex'; }
}
function afficherErreur(msg) {
    const e = document.getElementById('message-erreur');
    const t = document.getElementById('texte-erreur');
    if (e && t) {
        t.textContent = msg;
        e.style.display = 'flex';
        setTimeout(() => { e.style.display = 'none'; }, 5000);
    }
}
function masquerMessages() {
    const c = document.getElementById('message-confirmation');
    const e = document.getElementById('message-erreur');
    if (c) c.style.display = 'none';
    if (e) e.style.display = 'none';
}