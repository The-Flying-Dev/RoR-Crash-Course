Rails.application.routes.draw do
  resources :comments
  resources :image_posts
  resources :text_posts
  resources :posts
  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  post 'follow/:id', to: 'users#follow', as: 'follow_user'
  
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  root 'posts#index'

  namespace :api do 
    resources :posts
    resources :text_posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
