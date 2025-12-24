Rails.application.routes.draw do
  get "login", to: "login#index", as: :login
  root "landing#index"

  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check
end
