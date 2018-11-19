Rails.application.routes.draw do
  resources :products
  resources :categories
  get 'admin/index'
  #get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
	controller :sessions do
		get "logout", :to => "sessions#logout"
		get 'login' => :new
		post 'login' => :create
		
	end
  root to: 'categories#index'
  
end
