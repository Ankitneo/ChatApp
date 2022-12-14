Rails.application.routes.draw do
  resources :users
  resources :rooms do
  resources :messages
end

  root 'rooms#index'
  get 'rooms/index'
  Rails.application.routes.draw do
  get 'rooms/index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
