class DropBadTables < ActiveRecord::Migration
  def change
    drop_table :articles
    drop_table :posts
  end
end
