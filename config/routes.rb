Rails.application.routes.draw do
  root "authors#index"
  # get 'authors/index'
  # get "/authors", to: "authors#index"
  # get "/authors/:id", to: "authors#show"
  resources :authors do
    resources :books
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
