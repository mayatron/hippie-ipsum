success = (results, textStatus, jqXHR) ->
  $("#paragraphs").fadeOut(50, -> $(this).html(results.partial).fadeIn(300))
  history.pushState(null, null, "/?p=#{results.count}")

$(document).on "click", ".btn-submit", (e) ->
  data = { p: $(this).data("p") }

  $.ajax
    type: "POST"
    url: "/"
    data: data
    success: success
    dataType: "json"
