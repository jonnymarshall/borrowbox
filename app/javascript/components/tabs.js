console.log("hello from tabs")

// get element by class (tabs)
tabs = document.querySelectorAll('.tab')
//tabs.forEach(function(tab) is same as tabs.forEach((tab) =>
tabs.forEach((tab) => {
  tab.addEventListener("click", (event) => {
    console.log(event);
    if (tab !== event.target) {
      selectedTab = event.target.parentElement;
    }
    else {selectedTab = event.target};
    console.log(selectedTab);
    tabs.forEach((otherTab) => {
      otherTab.classList.remove("active");
    });
    console.log(tabs);
    selectedTab.classList.add("active");
  });
});

//add event listeners


// button.addEventListener("click", () => {
//   button.classList.add("disabled");
//   button.innerText = "Bingo!";
//   new Audio('sound.mp3').play();
// });
// const button = document.getElementById("clickme");

// button.addEventListener("click", () => {
//   button.classList.add("disabled");
//   button.innerText = "Bingo!";
//   new Audio('sound.mp3').play();
// });
