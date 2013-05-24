$(document).on "click", ".btn-submit", (e) ->
  utf8 = $(this).closest("form").find("input[name=utf8]").val()
  auth = $(this).closest("form").find("input[name=authenticity_token]").val()

  data = {
    utf8: utf8
    authenticity_token: auth
    commit: this.value
  }

  success = (results) ->
    $("#paragraphs").fadeOut(50, -> $(this).html(results.partial).fadeIn(300))
    history.pushState(null, null, "/?paragraphs=#{results.count}")

  $.ajax
    type: "POST"
    url: "/"
    data: data
    success: success
    dataType: "json"
