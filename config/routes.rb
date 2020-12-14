Rails.application.routes.draw do
  root to: 'chat#index'
  resources :chat, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
