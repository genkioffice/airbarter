Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  scope '(:locale)', locale: /en|ja|da/ do
    resources :transactions do
      member do
        patch :change_status
        patch :accept
      end
    end
    resources :entries
    resources :products #, only:[:index, :new, :create, :show]
    root to: 'pages#home'

    devise_for :users, skip: :omniauth_callbacks

    get 'user',   to: 'pages#profile'
  end

  # this is to handle facebook login without language
  devise_for :users, only: :omniauth_callbacks,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
