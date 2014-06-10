class Pedido < ActiveRecord::Base
  
  belongs_to :cliente
  belongs_to :tipo_pag
  belongs_to :for_pags
  has_many :items
  #accepts_nested_attributes_for :items
  
  def totalquantity
    iTotal = 0
    self.items.each do |i|
      iTotal = iTotal + i.quantity
    end
    totalquantity = iTotal
  end

  def totalprice
    iTotal = 0;
    self.items.each do |i|
      iTotal = iTotal + (i.price * i.quantity)
    end
    totalitem = iTotal
  end 
  
end
