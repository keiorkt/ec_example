Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'controller_name#action_name'
  root to: 'articles#index'
  get '/category/:id', to: 'articles#category', :as => :category

  resources :events, only: [:index] do
    resources :purchases, only: [:new, :create]
  end

  resources :articles, only: [:index, :show]

  get '/purchases', to: 'purchases#index'

  namespace :admin do
    resources :event_categories
    resources :article_categories
    resources :events
    resources :articles
  end
end
