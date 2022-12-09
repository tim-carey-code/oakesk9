Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end

  get "/users", to: "users#index"
  devise_for :users
  get "/contact", to: "contact_us#index"
  post "/contact", to: "contact_us#create"
  resources :home, only: %i[index create]
  root to: "home#index"

  devise_scope :user do
    match '/confirm/:confirmation_token', :to => "devise/confirmations#show", :as => "user_confirm", :only_path => false
  end
end
