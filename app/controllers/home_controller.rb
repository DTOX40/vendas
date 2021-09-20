class HomeController < ApplicationController
  def index
    @receitas = Recita.sum(:valor)
    @despesas = Despesa.sum(:valor)
    @pedidos = Pedido.sum(:valor_total)
  end
end
