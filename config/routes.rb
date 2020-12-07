Rails.application.routes.draw do
  get 'search/search'
  get 'home/about'
  root to: "home#top"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member 
    get :followers, on: :member 
  end
  resources :books do
    resource :favorites, only: [:create, :destroy]    
    resources :book_comments, only: [:create, :destroy]
  end
    get '/search' => 'search#search'

end

