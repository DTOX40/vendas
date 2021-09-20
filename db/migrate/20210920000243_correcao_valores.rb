class CorrecaoValores < ActiveRecord::Migration[5.2]
  def change
    remove_column :despesas, :valor
    remove_column :recitas, :valor
  end
end
