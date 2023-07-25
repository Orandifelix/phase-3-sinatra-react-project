class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.integer :age
      t.string :location
      t.string :gender
      t.string :seeking_gender
      t.string :marital_status
      t.text :bio
      t.string :interest
      t.string :height
      t.string :ethnicity
      t.string :living_with
      t.string :education_level
      t.string :no_of_children
      t.string :drinking_habits
      t.string :smoking_habits
      t.text :passion
      t.string :account_status
      t.integer :user_id
      t.timestamp :created_at
    end
  end
end

