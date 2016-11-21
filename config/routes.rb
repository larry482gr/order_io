Rails.application.routes.draw do
  scope '(:locale)', locale: /en|gr/ do
    devise_for :users, :controllers => { registrations: 'registrations' }
    resources :tables
    resources :categories
    resources :products
    resources :product_infos
    resources :sizes
    resources :translations
    # resources :orders
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'visitors#index'
  end
end
