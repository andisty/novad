function selectResult(item) {
  console.log(item);
  var url = "/novels/" + item.value;
  window.location.href = url;
}

function createSearch() {
  $('#query').typeahead({
    ajax: {
      type: "GET",
      url: "/search.json",
      contentType: "application/json",
      dataType: "json"
    },
    displayField: "title",
    onSelect: selectResult
  });
}

$(document).ready(createSearch);
$(document).on('page:load', createSearch);
