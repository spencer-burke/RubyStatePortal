Rails.application.routes.draw do
  get "login", to: "sessions#new", as: :login
  get "reset-password", to: "passwords#new", as: :new_password_reset
  root "landing#index"

  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check
end
