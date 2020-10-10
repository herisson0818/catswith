class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nick_name
      t.string :last_name
      t.string :first_name
      t.integer :gender
      t.string :email
      t.string :password_digest
      t.string :zip_code
      t.string :prefecture
      t.string :city
      t.string :house_number
      t.string :tel
      t.string :building_name

      t.timestamps
    end
  end
end
