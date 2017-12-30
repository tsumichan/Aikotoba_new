class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_name, :string, null: false, default: ""
    add_index :users, :user_name, unique: true
  end
end
