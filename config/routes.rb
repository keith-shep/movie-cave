Rails.application.routes.draw do
  devise_for :users
  root :to => "pages#home"
  get '/user' => "cinemas#index", :as => :user_root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cinemas do
    resources :bookings, only: [ :new, :create ]
  end

  resources :users, only: [ ] do
    resources :bookings, only: [ :index, :show ]
  end
end
