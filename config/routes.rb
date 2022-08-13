Rails.application.routes.draw do
  root 'posts#index'
  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create', as: 'sessions'
  get 'signup' => 'users#new', as: 'signup'
  post 'signup' => 'users#create', as: 'users'
  get 'users' => 'users#index', as: 'users_list'
  get 'mypage' => 'users#mypage', as: 'mypage'
  get 'users/:id' => 'users#show', as: 'user'
  get 'posts' => 'posts#index', as: 'posts_list'
  get 'posts/new' => 'posts#new', as: 'new_post'
  post 'posts' => 'posts#create', as: 'posts'
  get 'posts/:id' => 'posts#show', as: 'post'
  delete 'logout' => 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
