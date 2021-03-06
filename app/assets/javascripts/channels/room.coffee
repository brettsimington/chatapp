App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready #for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when theres incoming data on the websocket #for #this channel
    $messages = $('#messages')
    $messages.append data
    $messages.scrollTop $messages.prop('scrollheight')

  speak: (message) ->
    @perform 'speak', message: message
