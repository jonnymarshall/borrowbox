window.onload = getLocation();
var x = document.getElementById("coordinates");
var y = document.getElementById("demo");
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
  // console.log("from getlocation");
}
function showPosition(position) {
  x.value = [position.coords.latitude, position.coords.longitude];
  y.innerHTML = [position.coords.latitude, position.coords.longitude];
};
