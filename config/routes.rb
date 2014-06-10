Composer1::Application.routes.draw do
  resources :items

  resources :produtos

  resources :item_pedidos

  resources :pedidos do
   resources :items
  end 

  resources :clientes

  resources :tiposuarios

  resources :dependents

  resources :sons

  resources :fathers

  resources :relacionamentos

  resources :tests

  resources :tipo_pags

  resources :for_pags

  resources :things

  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
