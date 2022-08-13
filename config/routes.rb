Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/cars" => "cars#index"
  get "/cars/:id" => "cars#show"
  post "/cars" => "cars#create"
  patch "/cars/:id" => "cars#update"
  delete "/cars/:id" => "cars#destroy"

  get "/races" => "races#index"
end
