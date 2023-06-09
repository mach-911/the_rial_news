Rails.application.routes.draw do
  resources :publications
  devise_for :users
  root "home#index"
end
