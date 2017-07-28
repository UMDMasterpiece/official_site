Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: [:new, :create]
  resources :blog_posts

  root 'landing#index'
end
