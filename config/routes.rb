Rails.application.routes.draw do

  get 'administrator/admin_log_in'
  delete 'administrator/admin_log_out'
  get 'sessions/new'

  resources :user do
    get :submit
  end

  resources :administrator

  root :to => "welcome#index"
  get '/about', to: 'user#about'
  post '/user/:id/submit', to: 'user#submit'
  get 'user/:id/profile', to: 'user#profile'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/alogin', to: 'sessions#a_log_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
