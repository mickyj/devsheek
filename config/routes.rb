Devsheek::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :only => [:index, :new, :create]
  resources :styles, :only => [:index, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
