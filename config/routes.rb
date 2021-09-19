Rails.application.routes.draw do
  resources :recitas
  resources :despesas
  resources :fornecedores
  resources :produtos
  resources :tipo_produtos
  resources :clientes
  root to: "home#index"
end
