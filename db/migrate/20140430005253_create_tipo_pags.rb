class CreateTipoPags < ActiveRecord::Migration
  def change
    create_table :tipo_pags do |t|
      t.string :description
      t.string :active

      t.timestamps
    end
  end
end
