Rails.application.routes.draw do
  resources :users
  
  root :to => 'static_pages#home'

  get '/home' => 'static_pages#home' 
  get '/contact' => 'static_pages#contact'   
end