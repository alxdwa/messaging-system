Rails.application.routes.draw do
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end