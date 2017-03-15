Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/login')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resources :posts do
    resources :comments, only: [:create]
  end
  root to: "posts#index"
  get "/login", to: "home#show"
end
