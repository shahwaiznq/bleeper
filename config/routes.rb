Rails.application.routes.draw do
  
  root :to => 'users#new'
  
  get 'bleeptags/index'
  get 'bleeptags/new'
  get 'bleeptags/edit'
  get 'bleeptags/show'
  get 'bleeps/index'
  get 'bleeps/new'
  get 'bleeps/edit'
  get 'bleeps/show'

  resources :users, :only => [:index, :new, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
