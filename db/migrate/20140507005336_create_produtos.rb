class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :name
      t.float :valor
      t.string :descricao
      t.string :unidade
      t.float :saldo
      t.string :ativo

      t.timestamps
    end
  end
end
