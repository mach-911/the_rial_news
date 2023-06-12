Rails.application.routes.draw do
  resources :publications do
  	resources :comments, only: [:create, :destroy]
  end
  devise_for :users
  root "publications#index"
end
