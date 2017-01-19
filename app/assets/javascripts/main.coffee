$(document).on "click", ".btn-submit", ->
  count = $(this).data("p")
  $.getJSON "/api/v1/get/#{count}", (results, textStatus, jqXHR) ->
    $(".ipsum-paragraphs").fadeOut 50, ->
      paragraphs = ($("<p>").text(paragraph) for paragraph in results.paragraphs)
      $(this).html(paragraphs).fadeIn 200
    history.pushState null, null, "/?p=#{count}"
