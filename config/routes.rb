Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :transactions do
    member do
      patch :change_status
      patch :accept
    end
  end
  resources :entries
  resources :products, only:[:index, :new, :create, :show]
  root to: 'pages#home'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'user',   to: 'pages#profile'
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
