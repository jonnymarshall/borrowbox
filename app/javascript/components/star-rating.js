document.getElementById('clear-button').addEventListener('click', function () {
  ["min_rating_5", "min_rating_4", "min_rating_3", "min_rating_2", "min_rating_1"].forEach(function(id) {
    document.getElementById(id).checked = false;
  });
  return false;
})
