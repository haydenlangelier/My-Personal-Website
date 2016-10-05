Rails.application.routes.draw do
  resources :users
  resources :events
  get 'homepage/index'
root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
