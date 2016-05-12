Rails.application.routes.draw do
  root 'users#index'
  devise_for :users

  resources :users do
    resources :fencers
  end

  resources :fencers do
    resources :bouts
    resources :performances
  end

  resources :bouts do
    resources :points
  end

end
