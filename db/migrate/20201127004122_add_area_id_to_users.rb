class AddAreaIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :area, null: false, foreign_key: true
  end
end
