class ArticlesController < ApplicationController
  inherit_resources
  before_action :authenticate_user!, except: [:index, :show]
  before_action lambda{ resource.user = current_user }

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments
    show!
  end
end
