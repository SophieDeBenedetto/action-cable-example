Rails.application.routes.draw do
  devise_for :users
  get 'users/:id', to: "users#show", as: "profile"

  root "welcome#about"
  resources :chatrooms, param: :slug
  resources :messages
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
