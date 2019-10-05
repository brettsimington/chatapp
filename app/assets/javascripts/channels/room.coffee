App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready #for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server



  speak: (message) ->
    @perform 'speak', message: message

  received: (data) ->
    # Called when theres incoming data on the websocket #for #this channel
    $('#messages').append data
