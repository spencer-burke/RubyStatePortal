Rails.application.routes.draw do
  get "manager-dashboard", to: "manager_dashboard#index", as: :manager_dashboard
  get "resident-dashboard", to: "resident_dashboard#index", as: :resident_dashboard
  get "login", to: "sessions#new", as: :login
  get "reset-password", to: "passwords#new", as: :new_password_reset
  root "landing#index"

  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check
end
