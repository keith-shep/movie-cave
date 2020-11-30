Rails.application.routes.draw do
  get 'cinemas/index'
  get 'cinemas/show'
  get 'cinemas/new'
  get 'cinemas/create'
  get 'cinemas/edit'
  get 'cinemas/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cinema
end
