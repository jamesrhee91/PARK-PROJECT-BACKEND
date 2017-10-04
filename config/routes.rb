Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # resources :users
      post '/locations', to: 'locations#create'
      get '/locations/:coords', to: 'locations#index'
      get '/users/:id', to: 'users#index'
      delete '/locations/:id', to: 'locations#destroy'
      # resources :locations
      # get '/restaurants', to: 'restaurants#index'
      # post '/restaurants', to: 'restaurants#index'
      # post '/login', to: 'auth#create'
      # get '/me', to: 'users#me'
      # get '/todos', to: 'todos#index'
      # post '/login', to: 'auth#create'

      # the route for sign up is the create action for users_controller, included in users resources
      # get '/current-user', to: 'auth#get_user'
    end
  end

end
