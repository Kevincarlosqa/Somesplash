Rails.application.routes.draw do
  get 'photos/new'
  get 'photos/create'
  get 'photos/edit'
  get 'photos/update'
  get 'photos/destroy'
  get 'photos/show'
  resources :categories

  resources :photos, except: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
