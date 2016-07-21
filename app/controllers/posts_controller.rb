class PostsController < ApplicationController
  inherit_resources
  before_action :authenticate_user!, except: [:index, :show]
  before_action lambda{ resource.user = current_user }

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    show!
  end
end
