Rails.application.routes.draw do
  
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/index', to: "static_pages#index"
  get 'message/:user_entry', to: 'message#show'

  resources :gossips, only: [:new, :create, :index, :show]
  resources :users, only: [:new, :create, :index, :show]
  
end
