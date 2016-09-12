class AddCountToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :count, :integer, default: 0
  end
end
