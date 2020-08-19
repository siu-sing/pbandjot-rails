Rails.application.routes.draw do
  #   resources :workouts

  resources :workouts do
    resources :records
  end
  devise_for :users
  resources :users do
    resources :workouts
  end
  #   resources :records

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
end
