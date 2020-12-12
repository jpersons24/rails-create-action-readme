Rails.application.routes.draw do
  # resources :posts, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # draw out routes individually
  # index
  get "/posts", to: "posts#index", as: "posts"

  # show
  get "/posts/:id", to: "posts#show", as: "post"

  #new
  get "/posts/new", to: "posts#new", as: "new_post"

  #create - '/posts' already exists --> no need for 'as:'
  post "/posts", to: "posts#create"
end
