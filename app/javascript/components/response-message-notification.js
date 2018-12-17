const responseMessageNotification = () => {
  const responseMessageNotification = document.getElementById('response-message-notification');
  // const test = () => { console.log("hello from RMN");};
  // responseMessageNotification.classList.remove("hidden");
  // const timeoutID = window.setTimeout(console.log("hello from RMN"), 200000);
  // const timeoutID = window.setTimeout(console.log("hello from RMN"), 5000
  window.setTimeout(() => {responseMessageNotification.classList.remove("hidden")}, 4000);  // test();
}

export { responseMessageNotification };
