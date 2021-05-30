Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users
  
  resources :categories
  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end
  
end
