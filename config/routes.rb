Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  root to: "home#index"
  devise_for :users
end
