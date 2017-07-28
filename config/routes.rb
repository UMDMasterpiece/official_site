Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users
  resources :contacts, only: [:new, :create]
  resources :blog_posts

  root 'landing#index'
end
