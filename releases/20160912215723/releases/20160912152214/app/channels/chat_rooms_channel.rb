class ChatRoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_rooms_#{params['chat_room_id']}_channel"
    chat = ChatRoom.find(params['chat_room_id'])
    chat.count +=1
    chat.save
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    chat = ChatRoom.find(params['chat_room_id'])
    chat.count -=1
    chat.save
  end

  def send_message(data)
    current_user.messages.create!(body: data['message'], chat_room_id: data['chat_room_id'])
  end
end
