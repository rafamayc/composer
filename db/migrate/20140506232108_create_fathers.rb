class CreateFathers < ActiveRecord::Migration
  def change
    create_table :fathers do |t|
      t.string :name
      t.string :old

      t.timestamps
    end
  end
end
