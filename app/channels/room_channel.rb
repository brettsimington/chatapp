class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ##ActionCable.server.broadcast 'room_channel', data['message'] I use this to test in console
    # now i want to be able to creat messge and save to database
    Message.create content: data['message']
  end

  
  
end
