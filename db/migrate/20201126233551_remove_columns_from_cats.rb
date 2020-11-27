class RemoveColumnsFromCats < ActiveRecord::Migration[6.0]
  def change
    remove_column :cats, :zip_code, :string
    remove_column :cats, :prefecture, :string
    remove_column :cats, :city, :string
  end
end
