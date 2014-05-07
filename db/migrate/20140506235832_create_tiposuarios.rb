class CreateTiposuarios < ActiveRecord::Migration
  def change
    create_table :tiposuarios do |t|
      t.string :name
      t.string :ativo

      t.timestamps
    end
  end
end
