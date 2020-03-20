Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'chatroom#index'
  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
