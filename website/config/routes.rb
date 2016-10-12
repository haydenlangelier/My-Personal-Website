Rails.application.routes.draw do
  resources :friendships
  resources :interests
  resources :users

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
