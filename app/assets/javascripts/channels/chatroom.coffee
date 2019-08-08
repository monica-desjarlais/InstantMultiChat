App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) -> #receives the data broadcast in messages_controller
    # Called when there's incoming data on the websocket for this channel
    $('#msg-container').append data.mod_message
    scroll_bottom();
    
