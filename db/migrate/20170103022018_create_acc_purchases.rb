class CreateAccPurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :acc_purchases do |t|
      t.string :delivery
      t.string :address
      t.string :country
      t.integer :accid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
