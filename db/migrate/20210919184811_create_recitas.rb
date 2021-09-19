class CreateRecitas < ActiveRecord::Migration[5.2]
  def change
    create_table :recitas do |t|
      t.string :nome
      t.string :descricao
      t.string :valor

      t.timestamps
    end
  end
end
