const responseMessageNotification = () => {
  // console.log("hello from responseMessageNotification");


  const responseMessageNotificationSound = new Audio('audio/definite-notification-sound.mp3');
  const responseMessageNotification = document.getElementById('response-message-notification');
  const responseMessageNotificationNumber = document.getElementById('response-message-notification-number');
  // const test = () => { console.log("hello from RMN");};
  // responseMessageNotification.classList.remove("hidden");
  // const timeoutID = window.setTimeout(console.log("hello from RMN"), 200000);
  // const timeoutID = window.setTimeout(console.log("hello from RMN"), 5000
  if (responseMessageNotificationNumber) {
    window.setTimeout(() => {
      responseMessageNotificationSound.play();
      responseMessageNotification.classList.remove("hidden");
      responseMessageNotificationNumber.classList.remove("hidden");
    }, 4000);
  }
}

export { responseMessageNotification };
