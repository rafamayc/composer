class CreateForPags < ActiveRecord::Migration
  def change
    create_table :for_pags do |t|
      t.string :description
      t.integer :days
      t.string :active

      t.timestamps
    end
  end
end
