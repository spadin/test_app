Rails.application.routes.draw do
  root to: "galleries#index"

  resources :galleries, only: [:create, :show, :index]
end
