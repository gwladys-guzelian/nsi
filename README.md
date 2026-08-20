# Site NSI avec MkDocs Material

## Tester en local

```bash
python3 -m pip install -r requirements.txt
mkdocs serve
```

Puis ouvrir l'adresse indiquée dans le terminal (souvent http://127.0.0.1:8000).

## Publier sur GitHub

1. Créer un dépôt GitHub nommé `nsi`.
2. Copier tout ce dossier dans le dépôt.
3. Dans `mkdocs.yml`, remplacer `VOTRE_COMPTE` par votre identifiant GitHub.
4. Envoyer les fichiers sur GitHub.
5. Dans GitHub : Settings → Pages → Source → GitHub Actions.
6. Le workflow fourni publiera le site automatiquement.

Adresse finale :

```text
https://VOTRE_COMPTE.github.io/nsi/
```

## Corrigés

Ne mettez pas les corrigés sensibles dans ce dépôt public. Gardez-les dans un dépôt privé séparé.
