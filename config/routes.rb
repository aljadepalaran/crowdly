Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get 'login', to: 'login#new'
  root "home#index"
end
