Rails.application.routes.draw do
  root 'items#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'items', to: 'items#index'
      get 'items/:id', to: 'items#show'
      delete 'items/:id', to: 'items#destroy'
    end
  end
  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
  get '/search', to: 'search#index'
end
