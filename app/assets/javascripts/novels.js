
$(document).ready(function() {
 $("#query").bind("keyup", function(event) {
   var search = $(event.target);
   var query = search.val();
   console.log(query);

   $.ajax({
     type: "GET",
     url: "/search.json?search?utf8=✓&title=" + query,
     contentType: "application/json",
     dataType: "json"})

   .done(function(data) {
     console.log(data);
     // $("#results").html(data[0].title);
     // for(var i =0; i < data.length; i++) {
     //   $("#results").append(data[i].title);
     // }
     var listing = '';
     var imageshow = '';
     $.each(data, function(index, novel){
       listing += '<p>' + novel.title + ', ' + novel.year + '</p>';
       imageshow += '<img class="small-cover" src="' + novel.cover + '"/>';
       $('#results').html(listing);
       $('#imageresult').html(imageshow);
     });
   });
 });
});
