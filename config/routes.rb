Rails.application.routes.draw do
  get '/' => 'home#index'
  get 'home/index'
  post 'home/create'
  post 'home/update/:id' => 'home#update'
  get 'home/delete/:id' => 'home#delete'
  get 'home/create_form' => 'home#create_form'
  get 'home/update_form/:id' => 'home#update_form'

  post 'reply/create/:article_id' => 'home#reply_create'

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
