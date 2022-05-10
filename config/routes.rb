Rails.application.routes.draw do
  get '/' => 'home#index'
  get 'home/index'
  post 'home/create'
  get 'home/update'
  get 'home/delete'
  get 'home/create_form'
  get 'home/update_form'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
