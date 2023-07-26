class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :inbox_id
      t.integer :sender_id
      t.integer :receiver_id
      t.text :message_content
      t.timestamp :created_at
      t.string :read_status
      t.timestamp :read_at
      t.string :sender_username
      t.string :sender_avatar
      t.string :receiver_username
      t.string :receiver_avatar
    end
  end
end
