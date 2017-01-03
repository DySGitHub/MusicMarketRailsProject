class CreatePianoPurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :piano_purchases do |t|
      t.string :delivery
      t.string :address
      t.string :country
      t.integer :pianoid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
