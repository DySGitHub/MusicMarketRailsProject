class CreateAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :accessories do |t|
      t.string :brand
      t.string :accessorytype
      t.string :colour
      t.integer :price

      t.timestamps
    end
  end
end
