Rails.application.routes.draw do

  get '/' => 'root#index'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post 'users' => 'users#create'

  namespace :api do
    resources :todos
  end

end
