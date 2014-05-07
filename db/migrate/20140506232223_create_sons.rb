class CreateSons < ActiveRecord::Migration
  def change
    create_table :sons do |t|
      t.string :name
      t.string :old

      t.timestamps
    end
  end
end
