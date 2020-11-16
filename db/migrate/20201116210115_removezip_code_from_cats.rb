class RemovezipCodeFromCats < ActiveRecord::Migration[6.0]
  def change
    remove_column :cats, :zip_code, :string
  end
end
