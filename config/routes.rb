Rails.application.routes.draw do
  resources :produtos
  resources :tipo_produtos
  resources :clientes
  root to: "home#index"
end
