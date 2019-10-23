Rails.application.routes.draw do
  devise_for :users, skip: [:session]
  as :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    get 'logout', to: 'devise/sessions#destroy'
    post 'users', to: 'devise/sessions#create'
  end

  root to: 'welcome#index'
  get "/profile", to: "users/dashboard#index"
end
