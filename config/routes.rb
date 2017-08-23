Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :contractors
  root 'home#index'

  devise_for :users

  devise_scope :user do
    get '/sign_in', to: 'devise/sessions#new'
    get '/sign_up', to: 'devise/registrations#new'

  end

  resources :jobs do
    resources :bids, except: [:index]
  end

end
