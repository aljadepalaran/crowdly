class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email, null: false
      t.string :session_token
      t.integer :sign_in_count, default: 0, null: false
      t.string :role
      t.string :password_digest

      t.timestamps
    end
  end
end
