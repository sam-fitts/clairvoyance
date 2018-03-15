Rails.application.routes.draw do
  # For '/' to also redirect to home
  get '/', to: "pages#home"
  get '/profile', to: "pages#profile"
  get '/contact', to: "pages#contact"
  get '/thank_you', to: "pages#thank_you"
  # get 'users/current_user'
  # To have Proposals nested in Projects

  resources :projects do
    resources :proposals, only: [:new, :create, :index, :show, :edit, :update] do
      resources :contracts
    end
  end

  resources :proposals, only: [:destroy]


  devise_for :users
  # resources :users do
  #   resources :projects, only: [:new, :create, :delete]
  # end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
