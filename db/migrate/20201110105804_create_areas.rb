class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :zip_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
