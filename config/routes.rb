Rails.application.routes.draw do
  resources :clientes
  root to: "home#index"
end
