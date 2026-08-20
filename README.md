# Site NSI simple

Ce site ne nécessite ni MkDocs, ni workflow, ni Python.

## Publication sur GitHub Pages

1. Déposez `index.html`, `style.css` et `script.js` à la racine du dépôt GitHub `nsi`.
2. Ouvrez `Settings` → `Pages`.
3. Dans `Build and deployment`, choisissez :
   - Source : `Deploy from a branch`
   - Branch : `main`
   - Folder : `/ (root)`
4. Cliquez sur `Save`.

Le site sera accessible à :
https://gwladys-guzelian.github.io/nsi/

## Modifier un lien

Dans `index.html`, remplacez simplement :

```html
<a href="#">📖 Cours</a>
```

par exemple par :

```html
<a href="documents/recursivite-cours.pdf">📖 Cours</a>
```

ou par un lien externe :

```html
<a href="https://...">🔗 Capytale</a>
```

## Ajouter un chapitre

Copiez un bloc `<article class="card resource-card"> ... </article>` puis modifiez le titre, la description et les liens.
