class AddLikesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :likes, :string
  end
end
