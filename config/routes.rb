Rails.application.routes.draw do
  resources :tenants
  resources :leases, only: [:create, :destroy] #, :index] # :index addeed for debug
  resources :apartments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
