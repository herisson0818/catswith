class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cat, null: false, foreign_key: true
      t.text :caption

      t.timestamps
    end
  end
end
