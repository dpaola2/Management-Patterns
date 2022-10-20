Rails.application.routes.draw do
  devise_for :users
  resources :patterns
  root "patterns#index"
end
