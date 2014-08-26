$(document).on "click", ".btn-submit", ->
  data = { p: $(this).data("p") }
  $.getJSON "/", data, (results, textStatus, jqXHR) ->
    $("#paragraphs").fadeOut 50, ->
      $(this).html(results.partial).fadeIn 200
    history.pushState null, null, "/?p=#{results.count}"
