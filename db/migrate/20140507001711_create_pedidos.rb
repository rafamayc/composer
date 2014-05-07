class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :dataaprovacao
      t.date :datapedido
      t.references :cliente, index: true
      t.references :tipo_pag, index: true
      t.references :for_pags, index: true
      t.float :valortotal
      t.string :statuspedido

      t.timestamps
    end
  end
end
