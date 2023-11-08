Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :stocks
  # Defines the root path route ("/")
  root "home#index"
  get '/', to: "home#index"
  get 'home/about'
  post '/', to: 'home#index'
  get '/stocks/:id/edit', to: 'stocks#edit'
  patch '/stocks:id', to: 'stocks#update'
end
