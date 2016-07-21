Rails.application.routes.draw do

  root 'posts#index'
  resources :articles, :posts do
    resources :comments, only: :create
  end
end
