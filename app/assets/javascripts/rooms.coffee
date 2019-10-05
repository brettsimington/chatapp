received: (data) ->
  $('#messages').append data['message']
  $messages.scrollTop $messages.prop('scrollHeight')
  $('#message_input').focus()

  $(document).keypress '#message_input', (e) ->
  if e.keyCode == 13 and e.target.value
    App.room.speak(e.target.value)
    e.target.value = ''
    e.preventDefault()