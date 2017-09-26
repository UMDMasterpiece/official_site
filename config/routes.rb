Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users
  resources :contacts, only: [:new, :create]
  resources :posts

  root 'landing#index'

  match '/myposts', to: 'posts#myposts', via: :get
end
