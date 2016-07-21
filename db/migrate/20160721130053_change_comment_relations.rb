class ChangeCommentRelations < ActiveRecord::Migration
  def change
    remove_reference :comments, :post
    remove_reference :comments, :article
    add_reference :comments, :blog
  end
end
