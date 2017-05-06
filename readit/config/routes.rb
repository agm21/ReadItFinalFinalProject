Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destory', as: 'signout'
  
  resources :sessions, only: [:create, :destory]
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  
  get 'sessions/create'

  get 'sessions/destroy'

  get 'greetings/hello'

  get 'users/new'

  get 'readit/login'

  get 'profile/index'
  
  resources :articles 
  get 'welcome/index'
  
  get 'articles/new'
  
  resources :articles do
    resources :comments
  end
  
  root 'greetings#hello'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
