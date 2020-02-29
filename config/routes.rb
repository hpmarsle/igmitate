Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get '/posts/hashtag_stats'
  
  root to: 'posts#index'
  resources :users do 
    resources :posts
  end 
  resources :posts
end
