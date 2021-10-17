Rails.application.routes.draw do
  get "areas/create"
  get "areas/show"
  get "areas/index"
  #namespace :api do
  #  namespace :v1 do
  resources :users, only: [:create, :show, :update]
  resources :cats, only: [:create, :show, :update]
  resources :cat_favorites, only: [:create, :destroy]
  resources :feedings, only: [:create, :destroy]
  resources :images, only: [:create, :destroy, :show]
  resources :likes, only: [:create, :destroy]
  resources :areas, only: [:create, :show, :index, :update]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  #    end
  #  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
