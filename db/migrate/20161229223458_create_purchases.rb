class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.string :delivery
      t.string :address
      t.string :country
      t.integer :guitarid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
