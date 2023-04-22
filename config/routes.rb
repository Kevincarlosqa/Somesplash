Rails.application.routes.draw do
  resources :categories

  resources :photos, except: %i[index]

  get "/search", to: "photos#search"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
