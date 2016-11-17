class AddEmailToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :Users, :email, :string
	add_column :Users, :crypted_password, :string
	add_column :Users, :password_salt, :string
	add_column :Users, :persistence_token, :string
	add_index :users, :email, unique: true
  end
end
