Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :invoices do
    collection do
      get :pending
    end
  end
  resources :collections
end
