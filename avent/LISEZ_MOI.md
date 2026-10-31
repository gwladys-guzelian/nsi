# Calendrier de l’Avent — Première NSI (GitHub Pages)

Cette version fonctionne sur **GitHub Pages** sans serveur personnel.

## 1. Modifier les 24 énigmes

Ouvrir `enigmes.js` et modifier le tableau `ENIGMES`. Chaque élément contient :

```js
["Titre", "Énoncé de l’énigme"]
```

La première entrée correspond au 1er décembre, la 24e au 24 décembre. Les retours à la ligne se notent `\n`.

La correction ne se trouve pas dans le code public : elle se fera séparément dans Excel (ou manuellement), ce qui évite de publier les bonnes réponses.

## 2. Créer le formulaire Microsoft Forms

1. Se connecter à https://forms.office.com avec son compte Microsoft.
2. Créer un nouveau formulaire intitulé « Calendrier de l’Avent Première NSI — Réponses ».
3. Ajouter **trois champs obligatoires** :
   - **Identifiant élève ou pseudonyme** (réponse courte) ;
   - **Numéro de l’énigme** (choix 1 à 24, ou réponse courte) ;
   - **Ma réponse** (réponse longue).
4. Dans « Collecter les réponses », choisir les autorisations adaptées aux élèves. S’ils n’ont pas de compte Microsoft de l’établissement, choisir « Toute personne peut répondre » si l’établissement l’autorise.
5. Copier le **lien des répondants** (ne jamais copier le lien d’administration).
6. Dans `enigmes.js`, remplacer `const FORM_URL = "";` par le lien réel entre guillemets.

**Important :** n’activer ni une limite de réponse unique pour l’ensemble du formulaire, ni une fermeture au premier envoi. Chaque élève doit pouvoir répondre à 24 énigmes différentes. Le formulaire doit donc accepter des soumissions multiples.

Le numéro de jour est indiqué par l’élève. Un même lien sert pour tous les jours. La vérification du jour et du nombre de réponses par élève n’est pas automatique dans cette version.

## 3. Recueillir les réponses dans Excel

Dans Microsoft Forms, ouvrir l’onglet « Réponses » puis « Ouvrir dans Excel ». Selon le compte et le type de formulaire, le classeur peut être lié à OneDrive/SharePoint et se mettre à jour avec les nouvelles participations.

Vérifier que le classeur est bien synchronisé dans votre configuration ; un simple fichier Excel téléchargé peut ne pas se mettre à jour automatiquement.

Partager **le classeur Excel** avec la collègue avec l’autorisation « Peut afficher » si elle doit seulement consulter les réponses. Ne pas partager le lien d’édition du formulaire avec les élèves.

## 4. Mettre sur GitHub Pages

1. Créer un dépôt GitHub (par exemple `avent-nsi`).
2. Déposer `index.html`, `enigmes.js`, `script.js`, `style.css` et ce fichier à la racine du dépôt.
3. Dans le dépôt, ouvrir **Settings → Pages**.
4. Choisir le déploiement depuis une branche : **main**, dossier **/(root)**.
5. Attendre la publication et vérifier le lien fourni par GitHub.
6. Générer un **nouveau QR code** avec cette nouvelle adresse (l’ancien QR code mène à l’ancien site).

Le site est entièrement statique ; il n’a pas besoin de `npm` ou d’installer de dépendances.

## 5. Limites à connaître

- Le déblocage par date se fait dans le navigateur : les élèves qui modifient l’horloge ou inspectent le fichier `enigmes.js` peuvent voir les énigmes futures. **Il ne s’agit pas d’un verrouillage sécurisé.**
- Les réponses passent par Microsoft Forms. Il n’y a pas d’enregistrement dans le site GitHub Pages lui-même.
- La correction automatique et le classement ne sont pas fournis dans cette version. Ils peuvent être ajoutés dans Excel à partir d’un tableau de bonnes réponses conservé séparément.
- Les liens Forms et le partage Excel doivent être configurés avec vos vrais comptes. Le code téléchargé ne contient aucun identifiant ou donnée d’élève.
- Le code est fixé à **décembre 2026** ; modifier `ANNEE` dans `enigmes.js` pour une année ultérieure.

## 6. Confidentialité

Utiliser des pseudonymes ou identifiants distincts et respecter les consignes de l’établissement pour les données d’élèves. Éviter de demander des informations personnelles inutiles. Ne pas publier le fichier Excel des réponses dans GitHub.
