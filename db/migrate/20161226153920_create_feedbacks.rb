class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
          t.timestamps null: false
    end
      add_index :feedbacks, [:user_id, :created_at]

  end
end
