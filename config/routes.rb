Rails.application.routes.draw do
  resources :transactions do
    member do
      patch :change_status
    end
  end
  resources :entries
  resources :products
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
