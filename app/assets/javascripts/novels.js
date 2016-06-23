$(document).ready(function() {
  $("#search").bind("keyup", function(event) {
    var search = $(event.target);
    var query = search.val();
    console.log(query);

    $.ajax({
      type: "GET",
      url: "/search.json?search=" + query,
      contentType: "application/json",
      dataType: "json"})

    .done(function(data) {
      console.log(data);
    });
  });
});
