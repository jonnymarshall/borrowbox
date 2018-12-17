console.log("hello from map toggle");

const mapToggle = () => {
  const showMapButton = document.getElementById('show-map-button');
  const showListButton = document.getElementById('show-list-button');
  const mapArea = document.getElementById('map-area');
  const itemsList = document.getElementById('items-list');

  // showListButton.classList.add("hidden");
  showMapButton.classList.add("hidden");
  // mapArea.classList.add("hidden");
  itemsList.classList.add("hidden");

  showMapButton.addEventListener("click", (event) => {
    event.preventDefault();
    showMapButton.classList.add("hidden");
    itemsList.classList.add("hidden");
    mapArea.classList.remove("hidden");
    showListButton.classList.remove("hidden");
  });

  showListButton.addEventListener("click", (event) => {
    event.preventDefault();
    showListButton.classList.add("hidden");
    mapArea.classList.add("hidden");
    showMapButton.classList.remove("hidden");
    itemsList.classList.remove("hidden");
  });
}

export { mapToggle };
