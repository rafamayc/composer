class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :pedido, index: true
      t.references :produto, index: true
      t.decimal :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
