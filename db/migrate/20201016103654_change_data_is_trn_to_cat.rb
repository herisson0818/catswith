class ChangeDataIsTrnToCat < ActiveRecord::Migration[6.0]
  def change
    change_column :cats, :is_trn, :integerrara
  end
end
