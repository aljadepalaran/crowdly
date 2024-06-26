Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "health", to: "health#show"

  get 'login', to: 'login#new'
  get 'register', to: 'registration#new'
  post 'register', to: 'registration#create'

  namespace :api do
    namespace :v1 do
      get 'validate_username', to: 'username#index'
    end
  end

  namespace :admin do
    get '/', to: 'dashboard#index'
  end

  root "home#index"
end
