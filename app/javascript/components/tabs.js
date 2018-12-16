// console.log("hello from tabs");

const initTabs = () => {

  // get element by class (tabs)
  const tabs = document.querySelectorAll('.tab');
  const requestedBookingCards = document.getElementById('requested-booking-cards');
  const borrowingBookingCards = document.getElementById('borrowing-booking-cards');
  const borrowedBookingCards = document.getElementById('borrowed-booking-cards');
  const myItemsCards = document.getElementById('my-items-cards');

  borrowingBookingCards.classList.add("hidden");
  borrowedBookingCards.classList.add("hidden");
  myItemsCards.classList.add("hidden");

  //tabs.forEach(function(tab) is same as tabs.forEach((tab) =>
  tabs.forEach((tab) => {
    tab.addEventListener("click", (event) => {
      if (tab !== event.target) {
        var selectedTab = event.target.parentElement;
      }
      else {
        var selectedTab = event.target;
      };
      tabs.forEach((otherTab) => {
        otherTab.classList.remove("active");
      });
      selectedTab.classList.add("active");
      if (selectedTab.id === "requested") {
        requestedBookingCards.classList.remove("hidden");
        borrowingBookingCards.classList.add("hidden");
        borrowedBookingCards.classList.add("hidden");
        myItemsCards.classList.add("hidden");
      }
      else if (selectedTab.id === "borrowing") {
        borrowingBookingCards.classList.remove("hidden");
        requestedBookingCards.classList.add("hidden");
        borrowedBookingCards.classList.add("hidden");
        myItemsCards.classList.add("hidden");
      }
      else if (selectedTab.id === "borrowed") {
        borrowedBookingCards.classList.remove("hidden");
        requestedBookingCards.classList.add("hidden");
        borrowingBookingCards.classList.add("hidden");
        myItemsCards.classList.add("hidden");
      }
      else if (selectedTab.id === "my-items") {
        myItemsCards.classList.remove("hidden");
        requestedBookingCards.classList.add("hidden");
        borrowingBookingCards.classList.add("hidden");
        borrowedBookingCards.classList.add("hidden");
      }
    });
  });
}

export { initTabs };
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
