Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: "conversations#index"
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end