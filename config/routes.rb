Rails.application.routes.draw do
  devise_for :users

  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'

  # static high voltage pages
  # this has to be at the bottom of routes file
  # or else it will block all other routes
  # get "/*id" => 'pages#show', as: :page, format: false
  # root to: 'pages#show', id: 'blog'

end
