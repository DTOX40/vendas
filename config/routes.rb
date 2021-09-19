Rails.application.routes.draw do
  resources :fornecedores
  resources :produtos
  resources :tipo_produtos
  resources :clientes
  root to: "home#index"
end
