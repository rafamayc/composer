class CreateItemPedidos < ActiveRecord::Migration
  def change
    create_table :item_pedidos do |t|
      t.decimal :quantidade
      t.references :produto, index: true
      t.references :pedido, index: true
      t.decimal :valor_unitario
      t.decimal :valor_total

      t.timestamps
    end
  end
end
