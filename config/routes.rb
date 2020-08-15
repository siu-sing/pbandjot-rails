Rails.application.routes.draw do
  resources :workouts
  resources :records
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
end
