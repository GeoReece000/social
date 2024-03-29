class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :first_name, null: false
      t.text :last_name, null: false
      t.string :phone
      t.string :email, null: false, unique: true
      t.string :username, null: false, unique: true
      t.string :bio
      t.string :avatar

      t.timestamps
    end
  end
end
