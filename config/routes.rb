Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :pools, only: [:index]
      resources :courts, only: [:index]
      resources :spaces, only: [:index]
      resources :reservations, only: [:index, :create, :destroy]
    end
  end
end
