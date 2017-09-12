Rails.application.routes.draw do

  resources :licenses
  resources :workhistories

  resources :companies
  mount Ckeditor::Engine => '/ckeditor'
  resources :contractors
  resources :bids

  root 'home#index'
  get '/profile', to: "home#profile"

  devise_for :users

  devise_scope :user do
    get '/sign_in', to: 'devise/sessions#new'
    get '/sign_up', to: 'devise/registrations#new'
  end

  resources :jobs do
    resources :bids, except: [:index]
  end

end
