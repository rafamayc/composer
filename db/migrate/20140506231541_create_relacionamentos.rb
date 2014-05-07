class CreateRelacionamentos < ActiveRecord::Migration
  def change
    create_table :relacionamentos do |t|
      t.string :name
      t.string :tipo
      t.references :user, index: true

      t.timestamps
    end
  end
end
