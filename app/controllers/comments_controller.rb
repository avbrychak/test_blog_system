class CommentsController < ApplicationController
  inherit_resources
  belongs_to :post, :article, :polymorphic => true
  before_action authenticate_user!
  before_action lambda{ resource.user = current_user }
end
