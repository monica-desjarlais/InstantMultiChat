class MessagesController < ApplicationController
  before_action :require_user

  def create
  message = current_user.messages.build(message_params) #.build associates the logged in user with the message
  if message.save
    #what is broadcast here will be received by data in chatroom.coffee
    ActionCable.server.broadcast "chatroom_channel",
                                mod_message: message_render(message) # a hash (key-value: mod_message: message-render)
                                #we pass the obj 'message' above through the message_render method


  end
end

  private
  def message_params
    params.require(:message).permit(:body)

 end

 def message_render(message)
   #render the 'message' partial, for the message obj in partial, use the message obj in def create (above)
   render(partial: 'message', locals: {message: message})
 end

end
