json.extract! produto, :id, :nome, :descricao, :quantidade, :vencimento, :preco_compra, :preco_venda, :tipo_produto_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
