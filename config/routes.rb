Rails.application.routes.draw do
  get "landing/index"
  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check
  root "landing#index"
end
