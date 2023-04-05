Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/sports" => "sports#index"
  get "/scores" => "scores#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
