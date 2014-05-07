class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.string :name
      t.string :old
      t.references :father, index: true

      t.timestamps
    end
  end
end
