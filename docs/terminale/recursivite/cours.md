# Récursivité – Cours

Une fonction récursive est une fonction qui s'appelle elle-même.

```python
def somme(n):
    if n == 0:
        return 0
    return n + somme(n - 1)
```

!!! tip "À retenir"
    On empile les appels jusqu'au cas de base, puis on dépile en calculant les résultats.
