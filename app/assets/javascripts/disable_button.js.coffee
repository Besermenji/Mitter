$('.meets.index').ready ->
  $('#commit').attr 'disabled', true
  $('#meet_content').keyup ->
    if $(this).val().length != 0
      $('#commit').attr 'disabled', false
    else
      $('#commit').attr 'disabled', true
    return
  return
