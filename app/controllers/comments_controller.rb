class CommentsController < ApplicationController
  inherit_resources
  respond_to :html
  respond_to :js, only: :create
  belongs_to :post, :article, :polymorphic => true

  private
  def comment_params 
    params.require(:comment).permit(:body, :user)
  end
end
