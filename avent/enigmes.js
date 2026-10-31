// MODIFIE ICI LES ÉNIGMES : une entrée par jour du 1er au 24 décembre.
// \n permet d'insérer un retour à la ligne dans l'énoncé.
const ENIGMES = [
  ["Le nombre mystérieux", "Je suis écrit 1010 en binaire. Quelle est ma valeur en décimal ?"],
  ["La variable surprise", "x = 5\nx = x + 3\nx = x * 2\nprint(x)\n\nQue s’affiche-t-il ?"],
  ["Le piège logique", "a = True\nb = False\nc = False\nprint(a or b and c)\n\nQue s’affiche-t-il ?"],
  ["Le dernier élément", "L = [3, 8, 12, 5]\nprint(L[-1])\n\nQue s’affiche-t-il ?"],
  ["Le nombre caché", "Quel est le plus grand entier naturel représentable sur 8 bits ?"],
  ["Le calcul mystérieux", "print(7 // 2 + 7 % 2)\n\nQuel est le résultat ?"],
  ["La boucle magique", "s = 0\nfor i in range(4):\n    s += i\nprint(s)\n\nQue s’affiche-t-il ?"],
  ["Le mot secret", "mot = 'PYTHON'\nprint(mot[1:4])\n\nQue s’affiche-t-il ?"],
  ["Les deux conditions", "x = 8\nprint(x > 5 and x < 10)\n\nQue s’affiche-t-il ?"],
  ["Trouve l’intrus", "2 – 4 – 8 – 16 – 31\n\nQuel nombre n’est pas une puissance de 2 ?"],
  ["Le dictionnaire mystérieux", "d = {'a': 3, 'b': 7}\nprint(d['b'])\n\nQue s’affiche-t-il ?"],
  ["La fonction mystérieuse", "def mystere(x):\n    return x * x - 1\nprint(mystere(5))\n\nQue s’affiche-t-il ?"],
  ["Le caractère secret", "En ASCII, A correspond au nombre décimal 65. Quel caractère correspond à 66 ?"],
  ["Le tri express", "L = [3, 1, 2]\n\nCombien d’échanges sont nécessaires au minimum pour trier cette liste dans l’ordre croissant ?"],
  ["La liste modifiée", "L = [1, 2, 3]\nL.append(4)\nL[0] = 9\nprint(L)\n\nQue s’affiche-t-il ?"],
  ["Le nombre de possibilités", "Combien de valeurs différentes peut-on représenter sur 5 bits ?"],
  ["Le test caché", "x = 12\nif x % 2 == 0:\n    x = x // 2\nprint(x)\n\nQue s’affiche-t-il ?"],
  ["La boucle trompeuse", "for i in range(2, 10, 3):\n    print(i)\n\nCombien de nombres sont affichés ?"],
  ["Le tuple rebelle", "t = (4, 7, 9)\nt[0] = 5\n\nCe programme fonctionne-t-il ? Pourquoi ?"],
  ["Le défi booléen", "A = False\nB = True\nprint(not (A and B))\n\nQue s’affiche-t-il ?"],
  ["Le réseau mystérieux", "Je relie plusieurs réseaux informatiques et j’achemine les paquets IP. Qui suis-je ?"],
  ["La recherche intelligente", "Je cherche un nombre dans une liste triée. À chaque étape, j’élimine environ la moitié des éléments restants. Quel est mon nom ?"],
  ["Le petit bug", "def double(x):\n    x = x * 2\nprint(double(4))\n\nQue s’affiche-t-il réellement ?"],
  ["Le défi final", "def mystere(n):\n    if n == 0:\n        return 1\n    return 2 * mystere(n - 1)\nprint(mystere(5))\n\nQue s’affiche-t-il ?"]
];

// COLLE ICI LE LIEN « Collecter les réponses » de ton Microsoft Forms.
// Exemple : const FORM_URL = "https://forms.office.com/r/XXXXXXXX";
const FORM_URL = "https://docs.google.com/forms/d/e/1FAIpQLSeGkXTIJFvHOkf0gIDb_8XBzXJf4pvb3cNwmahepnqKIS4cKQ/viewform?usp=publish-editor";

// Décembre 2026, fuseau horaire de Paris.
const ANNEE = 2026;
// pour tester avec novembre --> mettre 12 pour tester avec décembre
const MOIS = 11;
