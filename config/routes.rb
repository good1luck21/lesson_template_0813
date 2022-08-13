Rails.application.routes.draw do
  root 'posts#index'
  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create', as: 'sessions'
  get 'signup' => 'users#new', as: 'signup'
  post 'signup' => 'users#create', as: 'users'
  delete 'logout' => 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
