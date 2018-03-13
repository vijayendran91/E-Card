Rails.application.routes.draw do

  get 'administrator/admin_log_in'
  delete 'administrator/admin_log_out'
  get 'sessions/new'
  post 'administrator/:id/verdict', to: 'administrator#verdict'
  resources :user do
    get :submit
  end

  get 'user/:id/property', to: 'user#property', as: 'user_property'
  get 'user/:id/eb', to: 'user#eb', as: 'user_eb'
  get 'user/:id/water', to: 'user#water', as: 'user_water'

  get 'administrator/:id/user_index', to: 'administrator#user_index', as: 'administrator_user'
  resources :administrator

  put 'administrator/:id/reject', to: 'administrator#reject', as: 'reject_user'
  put 'administrator/:id/approve', to: 'administrator#approve', as: 'approve_user'
  root :to => "welcome#index"
  get '/about', to: 'user#about'
  get '/help',to: 'user#help'
  post '/user/:id/submit', to: 'user#submit'
  get 'user/:id/profile', to: 'user#profile', as: 'user_profile'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/alogin', to: 'sessions#a_log_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
