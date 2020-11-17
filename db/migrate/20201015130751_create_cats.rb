class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :gender
      t.date :birthday
      t.string :zip_code
      t.string :prefecture
      t.string :city
      t.string :favorite_thing
      t.string :is_trn
      t.references :area, nul: false
      t.timestamps
    end
    add_foreign_key :cats, :areas, column: :zip_code
  end
end
