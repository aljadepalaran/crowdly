Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get 'login', to: 'login#new'

  namespace :admin do
    get '/', to: 'dashboard#index'
  end

  root "home#index"
end
