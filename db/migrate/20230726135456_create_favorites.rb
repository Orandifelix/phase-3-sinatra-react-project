class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :profile_id
      t.integer :user_id
      t.integer :age
      t.string :location
      t.string :username
      t.string :avatar_url
      t.timestamp :created_at
    end
  end
end