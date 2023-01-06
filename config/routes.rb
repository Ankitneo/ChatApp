Rails.application.routes.draw do
  resources :users
  resources :rooms do
  resources :messages
end
  post 'room_joins/add', to: 'room_joins#add'
  # get 'rooms/join'
  root 'rooms#index'
  get 'rooms/index'
  get 'rooms/index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
