Rails.application.routes.draw do
  root 'yarns#index'
  get 'yarns/index'

  get "/yarns", to: 'yarns#index'
  get "/yarns/new", to: 'yarns#new'
  get "/yarns/:id", to: "articles#yarns"
  post "/yarns", to: 'yarns#create'
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
