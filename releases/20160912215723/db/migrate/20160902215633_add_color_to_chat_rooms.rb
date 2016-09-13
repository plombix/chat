class AddColorToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :color, :string
  end
end
