class Pedido < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipo_pag
  belongs_to :for_pags
end
