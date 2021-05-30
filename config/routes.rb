Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  #get 'articles/new', to: 'articles#new'
  #post 'articles', :to 'articles#create'
  resources :articles
  get "articles/user/:user_id", to: "articles#from_author"
end
