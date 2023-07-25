class CreateInboxs < ActiveRecord::Migration[6.1]
  def change
    create_table :inboxs do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :no_of_unread_messages
      t.timestamp :created_at
    end
  end
end

