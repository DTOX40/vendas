Rails.application.routes.draw do
  resources :pedidos do
    resources :pedido_produtos
  end  
  resources :recitas
  resources :despesas
  resources :fornecedores
  resources :produtos
  resources :tipo_produtos
  resources :clientes
  root to: "home#index"
end
