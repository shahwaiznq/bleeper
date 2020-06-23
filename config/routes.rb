Rails.application.routes.draw do
  
  get 'session/new'
  root :to => 'bleeps#index'
  
  resources :bleeptags
  resources :bleeps

  resources :users, :only => [:index, :new, :create, :edit, :update]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
