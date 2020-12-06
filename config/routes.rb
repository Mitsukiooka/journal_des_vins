Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :wines, only: [:index, :show]
  resources :makers, only: [:index, :show]

  namespace :login do
    resources :wines, except: [:index, :show]
    resources :makers, except: [:index, :show]
    resources :profiles, only: [:create, :edit, :update]
    resources :my_pages, only: [:index]
  end
end
