class CorrecaoValoresAdd < ActiveRecord::Migration[5.2]
  def change
    add_column :despesas, :valor, :float
    add_column :recitas, :valor, :float
  end
end
