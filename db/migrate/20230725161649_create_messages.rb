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
    end
  end
end
