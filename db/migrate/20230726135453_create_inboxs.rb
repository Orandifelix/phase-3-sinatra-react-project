class CreateInboxs < ActiveRecord::Migration[6.1]
  def change
    create_table :inboxs do |t|
      t.integer :user_id
      t.string :avatar_url
      t.integer :no_of_unread_messages
      t.timestamp :created_at
    end

    add_index :inboxs, :user_id, unique: true
  end
end
