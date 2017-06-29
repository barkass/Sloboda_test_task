Rails.application.routes.draw do
  
  resources :books

  devise_for :users

  get 'persons/profile'

  get 'persons/profile', as: 'user_root'

  root 'books#index'

end
