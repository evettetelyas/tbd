Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  as :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    get 'logout', to: 'devise/sessions#destroy'
    post 'users', to: 'devise/sessions#create'
  end

  get '/users/:username', to: 'users#show', as: :user_show
  post '/users/:username/reviews', to: 'users/reviews#create', as: :new_review

  root to: 'welcome#index'
  get "/profile", to: "users/dashboard#index"

  get '/search', to: 'users/search#index'
  
  resources :room_messages
  resources :rooms
end
