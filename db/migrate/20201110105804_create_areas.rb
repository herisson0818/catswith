class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :zip_code, null: false, foreign_key: true
      t.string :prefecture
      t.string :city

      t.timestamps
    end
  end
end
