Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :messages, only: [:new, :create]
  get 'soins', to: 'pages#soins', as: :soins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
