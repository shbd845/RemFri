Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :friends
  get 'home/index'
  get  'home/about'
  root 'home#index'
end
