Rails.application.routes.draw do
  scope '(:locale)', locale: /en|gr/ do
    devise_for :users, :controllers => { registrations: 'registrations' }
    resources :waiters do
      collection do
        post :validate, defaults: { format: :json }
      end
    end
    resources :tables
    resources :categories do
      get :products, on: :collection, defaults: { format: :json }
    end
    resources :products do
      get :product_infos, on: :collection, defaults: { format: :json }
    end
    resources :product_infos
    resources :sizes
    resources :translations

    resources :languages, only: [:index], defaults: { format: :json }
    resources :product_sizes, only: [:index], defaults: { format: :json }
    resources :orders do
      get '/by_table/:table_id', to: 'orders#by_table', as: :by_table, on: :collection, defaults: { format: :json}
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'visitors#index'
  end
end
