Rails.application.routes.draw do

  get 'sessions/new'

  resources :user
  root :to => "welcome#index"
  get '/about', to: 'user#about'
  
  get 'user/:id/profile', to: 'user#profile'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
