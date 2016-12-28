class CreatePianos < ActiveRecord::Migration[5.0]
  def change
    create_table :pianos do |t|
      t.string :brand
      t.string :pianotype
      t.string :colour
      t.integer :price
      t.integer :keys

      t.timestamps
    end
  end
end
