class Produto < ApplicationRecord
  belongs_to :tipo_produto
  validates :nome, presence: true
  validates :nome, uniqueness: true 
end
