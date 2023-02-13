Rails.application.routes.draw do
  resources :users
  root "authors#index"
  # get 'authors/index'
  # get "/authors", to: "authors#index"
  # get "/authors/:id", to: "authors#show"

  get "authors/fetch_author_pdf/:id", to: "authors#download_pdf"

  #get '/authors/:id', to: 'authors#generate_pdf'
  resources :authors do
    resources :books
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
