Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # pages
  root to: "pages/landing_page#page"
  page :login
  page :password_reset
  page :invitation_signup
  page :manager_dashboard
  page :resident_dashboard
  page :dev_dashboard
  page :property_page, params: [ :id ]

  # Dashboards
  # get "manager-dashboard", to: "manager_dashboard#index", as: :manager_dashboard
  # get "resident-dashboard", to: "resident_dashboard#index", as: :resident_dashboard

  # Auth
  # get "login", to: "sessions#new", as: :login
  # get "reset-password", to: "passwords#new", as: :new_password_reset
  resource :session
  resources :passwords, param: :token

  # Properties
  resources :properties

  # Invitations
  resources :invitations, only: :create, param: :token do
    member do
      get :show
      post :accept
    end
  end
end
