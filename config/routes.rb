Rails.application.routes.draw do
  # For '/' to also redirect to home
  get '/', to: "pages#home"
  get '/profile', to: "pages#profile"
  # To have Proposals nested in Projects
  resources :projects do
    resources :proposals, only: [:new, :create]
  end
  resources :contracts
  resources :proposals, only: [:index, :show, :destroy]


  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
