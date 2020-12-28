class AddTokenToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :token, :string
    add_column :users, :nickname, :string
  end
end
