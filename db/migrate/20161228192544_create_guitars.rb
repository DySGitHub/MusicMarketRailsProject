class CreateGuitars < ActiveRecord::Migration[5.0]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :guitartype
      t.string :colour
      t.integer :price
      t.string :finish

      t.timestamps
    end
  end
end
