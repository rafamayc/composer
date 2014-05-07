class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :type
      t.references :user, index: true

      t.timestamps
    end
  end
end
