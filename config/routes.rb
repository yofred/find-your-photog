Findyourweddingphotographer::Application.routes.draw do
  # restful routes established
  resources :users
  resources :preferences
  resources :photographers
  resources :styles
  resources :comments
  resources :galleries
  resources :photos
  
  # set root page
  root :to => 'pages#index'
  
  get "/login" => 'pages#login'
  post "/login" => 'pages#create', :as => :login
  post "/pages" => 'pages#create_photographer', :as => :photologin
  delete "/login" => 'pages#logout', :as => :logout
  
end
