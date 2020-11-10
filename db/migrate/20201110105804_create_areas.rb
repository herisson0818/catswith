class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas, id: false do |t|
      t.string :zip_code, null: false, primary_key: true
      t.string :prefecture
      t.string :city

      t.timestamps
    end
  end
end
