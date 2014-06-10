class Item < ActiveRecord::Base

 validates :produto_id, :quantity, :price, :presence => true
  belongs_to :pedido
  belongs_to :produto
end
