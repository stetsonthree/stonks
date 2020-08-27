Rails.application.routes.draw do
  devise_for :users
  resources :stocks
  resources :portfolios do
    resources :positions
  end

  root to: "portfolios#index"
end
