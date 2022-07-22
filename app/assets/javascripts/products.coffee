ready = ->
  $('#products-search-bar').focus()
  return

$(document).ready ready
$(document).on 'turbolink:load', ready
