const search = document.getElementById("search");
const cards = [...document.querySelectorAll(".resource-card")];
const filters = [...document.querySelectorAll(".filter")];
const noResult = document.getElementById("no-result");

let currentFilter = "all";

function normalize(text) {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "");
}

function updateCards() {
  const q = normalize(search.value.trim());
  let visible = 0;

  cards.forEach(card => {
    const level = card.dataset.level;
    const haystack = normalize(card.innerText + " " + (card.dataset.search || ""));

    const matchesFilter = currentFilter === "all" || level === currentFilter;
    const matchesSearch = !q || haystack.includes(q);

    const show = matchesFilter && matchesSearch;
    card.style.display = show ? "" : "none";
    if (show) visible++;
  });

  noResult.hidden = visible !== 0;
}

search.addEventListener("input", updateCards);

filters.forEach(btn => {
  btn.addEventListener("click", () => {
    filters.forEach(b => b.classList.remove("active"));
    btn.classList.add("active");
    currentFilter = btn.dataset.filter;
    updateCards();
  });
});
