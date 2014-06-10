class ItemsController < ApplicationController
  respond_to :js
  before_filter :load_pedido

  def create
    @item = @pedidos.items.build(params[:item])
    @item.save

    respond_with @item
  end

  def update
    @item = @pedido.items.find(params[:id])
    @item.update_attributes(params[:item])

    respond_with @item
  end

  def destroy
    @item = @pedido.items.find(params[:id])
    @item.destroy

    respond_with @item
  end
  
  def load_pedido
    @pedido = Pedido.find(params[:pedido_id])
  end

end