class CreateCatFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
