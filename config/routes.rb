Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :articles, param: :slug
  
  resources :articles, param: :slug

  get "/admin/articles", to: "articles#admin_index"
  get "/admin/articles/:slug", to: "articles#admin_show"
  get "/admin/create/articles/", to: "articles#admin_new"

end
