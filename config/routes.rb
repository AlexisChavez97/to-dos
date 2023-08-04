Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "to_dos#index"
  resources :to_dos, only: [:index, :create, :destroy, :update, :edit, :new]
end
