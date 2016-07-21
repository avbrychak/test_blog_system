class ArticlesController < ApplicationController
  include Blogable
  
  protected
  def collection
    super.includes(:comments)
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
