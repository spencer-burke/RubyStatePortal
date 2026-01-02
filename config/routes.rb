Rails.application.routes.draw do
  root "landing#index"

  # Dashboards
  get "manager-dashboard", to: "manager_dashboard#index", as: :manager_dashboard
  get "resident-dashboard", to: "resident_dashboard#index", as: :resident_dashboard

  # Auth
  get "login", to: "sessions#new", as: :login
  get "reset-password", to: "passwords#new", as: :new_password_reset
  resource :session
  resources :passwords, param: :token

  # Invitations
  resources :invitations, only: [:create], param: :token do
    member do
      get :show
      post :accept
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
