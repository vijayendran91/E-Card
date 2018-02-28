Rails.application.routes.draw do

  resources :user
  root :to => "welcome#index"
  get 'user/:id/profile', to: 'user#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
