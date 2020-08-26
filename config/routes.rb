Rails.application.routes.draw do
  resources :portfolios
  root to: "home#index"
  devise_for :users
end
