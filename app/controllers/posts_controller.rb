class PostsController < ApplicationController
  include Blogable

  protected
  def collection
    super.includes(:comments)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
