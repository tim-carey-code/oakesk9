Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  get '/users', to: 'users#index'
  devise_for :users
  get '/contact', to: 'contact_us#index'
  post '/contact', to: 'contact_us#create'
  resources :home, only: [:index, :create]
  root to: 'home#index'

end
