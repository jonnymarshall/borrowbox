window.onload = getLocation();
var x = document.getElementById("coordinates");
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}
function showPosition(position) {
  x.value = [position.coords.latitude, position.coords.longitude];
};
