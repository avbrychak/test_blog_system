class DropTableUsers < ActiveRecord::Migration
  def change
    remove_reference :comments, :user
    remove_reference :posts, :user
    remove_reference :articles, :user
    drop_table :users 
    add_column :comments, :user, :string
  end
end
