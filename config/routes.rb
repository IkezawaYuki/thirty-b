Rails.application.routes.draw do
  resources :todos
  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"
  resources :publishers
  resource :profile, only: %i{show edit update}
end
