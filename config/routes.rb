Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  # get 'home/index'
  get 'home/about'
  authenticated :user do
    root to: 'contacts#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'home#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
