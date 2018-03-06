Rails.application.routes.draw do
  get 'contracts/new'

  get 'proposals/index'

  get 'projects/new'

  get 'projects/create'

  get 'projects/index'

  get 'projects/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
