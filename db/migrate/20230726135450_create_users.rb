class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password
      t.integer :age  
      t.string :gender  
      t.string :seeking_gender  
      t.timestamps
    end

    add_index :users, :username, unique: true
  end
end


