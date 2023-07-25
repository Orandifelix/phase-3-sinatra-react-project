class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :favorited_by
      t.integer :you_favorited
      t.timestamp :created_at
    end
  end
end