const grid = document.getElementById("grid");
const challenge = document.getElementById("challenge");
const status = document.getElementById("status");
let selected = null;

function jourDisponible() {
  // return 1; // TEST : débloque juste le 1er décembre
  //return 24; // TEST : débloque les 24 énigmes
  const parts = new Intl.DateTimeFormat("en-GB", { timeZone: "Europe/Paris", year: "numeric", month: "2-digit", day: "2-digit" }).formatToParts(new Date());
  const p = Object.fromEntries(parts.map(x => [x.type, x.value]));
  const year = Number(p.year), month = Number(p.month), day = Number(p.day);
  // pour que les enigmes se débloquent en décembre
  //if (year < ANNEE || (year === ANNEE && month < 12)) return 0;
  //if (year > ANNEE || month > 12) return 24;
  if (year < ANNEE || (year === ANNEE && month < MOIS)) return 0;
  if (year > ANNEE || month > MOIS) return 24;
  return Math.min(day, 24);
}

function openDoor(day) {
  if (day > jourDisponible()) return;
  selected = day;
  render();
}

function render() {
  const maxDay = jourDisponible();
  if (selected > maxDay) selected = null;
  grid.replaceChildren();
  for (let i = 1; i <= 24; i++) {
    const available = i <= maxDay;
    const door = document.createElement("button");
    door.className = "door" + (available ? " available" : "") + (selected === i ? " active" : "");
    door.disabled = !available;
    door.type = "button";
    door.setAttribute("aria-label", available ? "Ouvrir l’énigme du " + i + " décembre" : "Énigme du " + i + " décembre indisponible");
    for (const [className, content] of [["symbol", "✧"], ["number", String(i).padStart(2, "0")], ["foot", available ? "DÉCOUVRIR" : "À VENIR"]]) {
      const span = document.createElement("span");
      span.className = className; span.textContent = content; door.append(span);
    }
    if (available) door.addEventListener("click", () => openDoor(i));
    grid.append(door);
  }
  status.textContent = maxDay === 0 ? "✶ Rendez-vous le 1er décembre ! ✶" : "✶ " + maxDay + " énigme(s) disponible(s) ✶";
  challenge.replaceChildren();
  const star = document.createElement("span"); star.className = "star"; star.textContent = "✦"; challenge.append(star);
  const kicker = document.createElement("p"); kicker.className = "overline";
  const title = document.createElement("h2");
  if (!selected) {
    kicker.textContent = "LE DÉFI DU JOUR"; title.textContent = "Un peu de patience…";
    const message = document.createElement("p"); message.textContent = "La première énigme se dévoilera le 1er décembre !";
    challenge.append(kicker, title, message);
    return;
  }
  const item = ENIGMES[selected - 1];
  kicker.textContent = "LE DÉFI DU " + selected + " DÉCEMBRE";
  title.textContent = item[0];
  const statement = document.createElement("pre"); statement.className = "statement"; statement.textContent = item[1];
  challenge.append(kicker, title, statement);
  if (!FORM_URL) {
    const message = document.createElement("p"); message.className = "missing"; message.textContent = "Le formulaire de réponses sera disponible prochainement.";
    challenge.append(message);
  } else {
    const link = document.createElement("a"); link.className = "answer-link"; link.href = FORM_URL; link.target = "_blank"; link.rel = "noopener noreferrer"; link.textContent = "Répondre à cette énigme ↗";
    const note = document.createElement("p"); note.className = "note"; note.textContent = "Sur le formulaire, indique ton identifiant, le jour " + selected + " et ta réponse.";
    challenge.append(link, note);
  }
}
render();
setInterval(render, 60_000);
