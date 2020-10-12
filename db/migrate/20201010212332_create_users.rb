class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nick_name, null: false
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.integer :gender, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :zip_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :house_number, null: false
      t.string :tel
      t.string :building_name, null: false

      t.timestamps
    end
  end
end


