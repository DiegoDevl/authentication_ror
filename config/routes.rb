Rails.application.routes.draw do

  #sessions users
  get 'sessions/new'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'


  get 'users/new'
  get 'static_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'

  resources :users

end
